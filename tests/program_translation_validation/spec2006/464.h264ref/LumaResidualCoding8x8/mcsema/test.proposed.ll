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

declare %struct.Memory* @sub_43fcc0.ChromaPrediction4x4(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_43df10.LumaPrediction4x4(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_406250.dct_luma(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_40bde0.dct_luma_sp(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4aa740.dct_luma8x8(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_40f540.copyblock_sp(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Data Access Globals
%G_0x6cb900_type = type <{ [8 x i8] }>
@G_0x6cb900= global %G_0x6cb900_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x6f6f90_type = type <{ [8 x i8] }>
@G_0x6f6f90= global %G_0x6f6f90_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x70fcf0_type = type <{ [8 x i8] }>
@G_0x70fcf0= global %G_0x70fcf0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x726418_type = type <{ [8 x i8] }>
@G_0x726418= global %G_0x726418_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x6d40f0_type = type <{ [8 x i8] }>
@G__0x6d40f0= global %G__0x6d40f0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x6f6fa0_type = type <{ [8 x i8] }>
@G__0x6f6fa0= global %G__0x6f6fa0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x722ff0_type = type <{ [8 x i8] }>
@G__0x722ff0= global %G__0x722ff0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x723720_type = type <{ [8 x i8] }>
@G__0x723720= global %G__0x723720_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x725610_type = type <{ [8 x i8] }>
@G__0x725610= global %G__0x725610_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>


define %struct.Memory* @LumaResidualCoding8x8(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .LumaResidualCoding8x8:	 RIP: 43eea0	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 43eea0	 Bytes: 1
  %loadMem_43eea0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43eea0 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43eea0)
  store %struct.Memory* %call_43eea0, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 43eea1	 Bytes: 3
  %loadMem_43eea1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43eea1 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43eea1)
  store %struct.Memory* %call_43eea1, %struct.Memory** %MEMORY

  ; Code: pushq %r14	 RIP: 43eea4	 Bytes: 2
  %loadMem_43eea4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43eea4 = call %struct.Memory* @routine_pushq__r14(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43eea4)
  store %struct.Memory* %call_43eea4, %struct.Memory** %MEMORY

  ; Code: pushq %rbx	 RIP: 43eea6	 Bytes: 1
  %loadMem_43eea6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43eea6 = call %struct.Memory* @routine_pushq__rbx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43eea6)
  store %struct.Memory* %call_43eea6, %struct.Memory** %MEMORY

  ; Code: subq $0xb0, %rsp	 RIP: 43eea7	 Bytes: 7
  %loadMem_43eea7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43eea7 = call %struct.Memory* @routine_subq__0xb0___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43eea7)
  store %struct.Memory* %call_43eea7, %struct.Memory** %MEMORY

  ; Code: movw %cx, %ax	 RIP: 43eeae	 Bytes: 3
  %loadMem_43eeae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43eeae = call %struct.Memory* @routine_movw__cx___ax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43eeae)
  store %struct.Memory* %call_43eeae, %struct.Memory** %MEMORY

  ; Code: movw 0x18(%rbp), %r10w	 RIP: 43eeb1	 Bytes: 5
  %loadMem_43eeb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43eeb1 = call %struct.Memory* @routine_movw_0x18__rbp____r10w(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43eeb1)
  store %struct.Memory* %call_43eeb1, %struct.Memory** %MEMORY

  ; Code: movw 0x10(%rbp), %r11w	 RIP: 43eeb6	 Bytes: 5
  %loadMem_43eeb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43eeb6 = call %struct.Memory* @routine_movw_0x10__rbp____r11w(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43eeb6)
  store %struct.Memory* %call_43eeb6, %struct.Memory** %MEMORY

  ; Code: xorl %ecx, %ecx	 RIP: 43eebb	 Bytes: 2
  %loadMem_43eebb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43eebb = call %struct.Memory* @routine_xorl__ecx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43eebb)
  store %struct.Memory* %call_43eebb, %struct.Memory** %MEMORY

  ; Code: movb %cl, %bl	 RIP: 43eebd	 Bytes: 2
  %loadMem_43eebd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43eebd = call %struct.Memory* @routine_movb__cl___bl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43eebd)
  store %struct.Memory* %call_43eebd, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %ecx	 RIP: 43eebf	 Bytes: 5
  %loadMem_43eebf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43eebf = call %struct.Memory* @routine_movl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43eebf)
  store %struct.Memory* %call_43eebf, %struct.Memory** %MEMORY

  ; Code: movl $0x2, %r14d	 RIP: 43eec4	 Bytes: 6
  %loadMem_43eec4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43eec4 = call %struct.Memory* @routine_movl__0x2___r14d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43eec4)
  store %struct.Memory* %call_43eec4, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x18(%rbp)	 RIP: 43eeca	 Bytes: 4
  %loadMem_43eeca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43eeca = call %struct.Memory* @routine_movq__rdi__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43eeca)
  store %struct.Memory* %call_43eeca, %struct.Memory** %MEMORY

  ; Code: movq %rsi, -0x20(%rbp)	 RIP: 43eece	 Bytes: 4
  %loadMem_43eece = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43eece = call %struct.Memory* @routine_movq__rsi__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43eece)
  store %struct.Memory* %call_43eece, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x24(%rbp)	 RIP: 43eed2	 Bytes: 3
  %loadMem_43eed2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43eed2 = call %struct.Memory* @routine_movl__edx__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43eed2)
  store %struct.Memory* %call_43eed2, %struct.Memory** %MEMORY

  ; Code: movw %ax, -0x26(%rbp)	 RIP: 43eed5	 Bytes: 4
  %loadMem_43eed5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43eed5 = call %struct.Memory* @routine_movw__ax__MINUS0x26__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43eed5)
  store %struct.Memory* %call_43eed5, %struct.Memory** %MEMORY

  ; Code: movl %r8d, -0x2c(%rbp)	 RIP: 43eed9	 Bytes: 4
  %loadMem_43eed9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43eed9 = call %struct.Memory* @routine_movl__r8d__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43eed9)
  store %struct.Memory* %call_43eed9, %struct.Memory** %MEMORY

  ; Code: movl %r9d, -0x30(%rbp)	 RIP: 43eedd	 Bytes: 4
  %loadMem_43eedd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43eedd = call %struct.Memory* @routine_movl__r9d__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43eedd)
  store %struct.Memory* %call_43eedd, %struct.Memory** %MEMORY

  ; Code: movw %r11w, -0x32(%rbp)	 RIP: 43eee1	 Bytes: 5
  %loadMem_43eee1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43eee1 = call %struct.Memory* @routine_movw__r11w__MINUS0x32__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43eee1)
  store %struct.Memory* %call_43eee1, %struct.Memory** %MEMORY

  ; Code: movw %r10w, -0x34(%rbp)	 RIP: 43eee6	 Bytes: 5
  %loadMem_43eee6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43eee6 = call %struct.Memory* @routine_movw__r10w__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43eee6)
  store %struct.Memory* %call_43eee6, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x50(%rbp)	 RIP: 43eeeb	 Bytes: 7
  %loadMem_43eeeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43eeeb = call %struct.Memory* @routine_movl__0x0__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43eeeb)
  store %struct.Memory* %call_43eeeb, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x58(%rbp)	 RIP: 43eef2	 Bytes: 7
  %loadMem_43eef2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43eef2 = call %struct.Memory* @routine_movl__0x0__MINUS0x58__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43eef2)
  store %struct.Memory* %call_43eef2, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %eax	 RIP: 43eef9	 Bytes: 3
  %loadMem_43eef9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43eef9 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43eef9)
  store %struct.Memory* %call_43eef9, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 43eefc	 Bytes: 1
  %loadMem_43eefc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43eefc = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43eefc)
  store %struct.Memory* %call_43eefc, %struct.Memory** %MEMORY

  ; Code: idivl %r14d	 RIP: 43eefd	 Bytes: 3
  %loadMem_43eefd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43eefd = call %struct.Memory* @routine_idivl__r14d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43eefd)
  store %struct.Memory* %call_43eefd, %struct.Memory** %MEMORY

  ; Code: shll $0x3, %eax	 RIP: 43ef00	 Bytes: 3
  %loadMem_43ef00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ef00 = call %struct.Memory* @routine_shll__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ef00)
  store %struct.Memory* %call_43ef00, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x5c(%rbp)	 RIP: 43ef03	 Bytes: 3
  %loadMem_43ef03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ef03 = call %struct.Memory* @routine_movl__eax__MINUS0x5c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ef03)
  store %struct.Memory* %call_43ef03, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %eax	 RIP: 43ef06	 Bytes: 3
  %loadMem_43ef06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ef06 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ef06)
  store %struct.Memory* %call_43ef06, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 43ef09	 Bytes: 1
  %loadMem_43ef09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ef09 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ef09)
  store %struct.Memory* %call_43ef09, %struct.Memory** %MEMORY

  ; Code: idivl %r14d	 RIP: 43ef0a	 Bytes: 3
  %loadMem_43ef0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ef0a = call %struct.Memory* @routine_idivl__r14d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ef0a)
  store %struct.Memory* %call_43ef0a, %struct.Memory** %MEMORY

  ; Code: shll $0x3, %edx	 RIP: 43ef0d	 Bytes: 3
  %loadMem_43ef0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ef0d = call %struct.Memory* @routine_shll__0x3___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ef0d)
  store %struct.Memory* %call_43ef0d, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x60(%rbp)	 RIP: 43ef10	 Bytes: 3
  %loadMem_43ef10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ef10 = call %struct.Memory* @routine_movl__edx__MINUS0x60__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ef10)
  store %struct.Memory* %call_43ef10, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %edx	 RIP: 43ef13	 Bytes: 3
  %loadMem_43ef13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ef13 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ef13)
  store %struct.Memory* %call_43ef13, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x98(%rbp)	 RIP: 43ef16	 Bytes: 6
  %loadMem_43ef16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ef16 = call %struct.Memory* @routine_movl__ecx__MINUS0x98__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ef16)
  store %struct.Memory* %call_43ef16, %struct.Memory** %MEMORY

  ; Code: movl %edx, %ecx	 RIP: 43ef1c	 Bytes: 2
  %loadMem_43ef1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ef1c = call %struct.Memory* @routine_movl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ef1c)
  store %struct.Memory* %call_43ef1c, %struct.Memory** %MEMORY

  ; Code: movl -0x98(%rbp), %edx	 RIP: 43ef1e	 Bytes: 6
  %loadMem_43ef1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ef1e = call %struct.Memory* @routine_movl_MINUS0x98__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ef1e)
  store %struct.Memory* %call_43ef1e, %struct.Memory** %MEMORY

  ; Code: shll %cl, %edx	 RIP: 43ef24	 Bytes: 2
  %loadMem_43ef24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ef24 = call %struct.Memory* @routine_shll__cl___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ef24)
  store %struct.Memory* %call_43ef24, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x64(%rbp)	 RIP: 43ef26	 Bytes: 3
  %loadMem_43ef26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ef26 = call %struct.Memory* @routine_movl__edx__MINUS0x64__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ef26)
  store %struct.Memory* %call_43ef26, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x70(%rbp)	 RIP: 43ef29	 Bytes: 7
  %loadMem_43ef29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ef29 = call %struct.Memory* @routine_movl__0x0__MINUS0x70__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ef29)
  store %struct.Memory* %call_43ef29, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0x2c(%rbp)	 RIP: 43ef30	 Bytes: 4
  %loadMem_43ef30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ef30 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ef30)
  store %struct.Memory* %call_43ef30, %struct.Memory** %MEMORY

  ; Code: movb %bl, -0x99(%rbp)	 RIP: 43ef34	 Bytes: 6
  %loadMem_43ef34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ef34 = call %struct.Memory* @routine_movb__bl__MINUS0x99__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ef34)
  store %struct.Memory* %call_43ef34, %struct.Memory** %MEMORY

  ; Code: jne .L_43ef69	 RIP: 43ef3a	 Bytes: 6
  %loadMem_43ef3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ef3a = call %struct.Memory* @routine_jne_.L_43ef69(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ef3a, i8* %BRANCH_TAKEN, i64 47, i64 6, i64 6)
  store %struct.Memory* %call_43ef3a, %struct.Memory** %MEMORY

  %loadBr_43ef3a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43ef3a = icmp eq i8 %loadBr_43ef3a, 1
  br i1 %cmpBr_43ef3a, label %block_.L_43ef69, label %block_43ef40

block_43ef40:
  ; Code: xorl %eax, %eax	 RIP: 43ef40	 Bytes: 2
  %loadMem_43ef40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ef40 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ef40)
  store %struct.Memory* %call_43ef40, %struct.Memory** %MEMORY

  ; Code: movb %al, %cl	 RIP: 43ef42	 Bytes: 2
  %loadMem_43ef42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ef42 = call %struct.Memory* @routine_movb__al___cl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ef42)
  store %struct.Memory* %call_43ef42, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0x30(%rbp)	 RIP: 43ef44	 Bytes: 4
  %loadMem_43ef44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ef44 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ef44)
  store %struct.Memory* %call_43ef44, %struct.Memory** %MEMORY

  ; Code: movb %cl, -0x99(%rbp)	 RIP: 43ef48	 Bytes: 6
  %loadMem_43ef48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ef48 = call %struct.Memory* @routine_movb__cl__MINUS0x99__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ef48)
  store %struct.Memory* %call_43ef48, %struct.Memory** %MEMORY

  ; Code: jne .L_43ef69	 RIP: 43ef4e	 Bytes: 6
  %loadMem_43ef4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ef4e = call %struct.Memory* @routine_jne_.L_43ef69(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ef4e, i8* %BRANCH_TAKEN, i64 27, i64 6, i64 6)
  store %struct.Memory* %call_43ef4e, %struct.Memory** %MEMORY

  %loadBr_43ef4e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43ef4e = icmp eq i8 %loadBr_43ef4e, 1
  br i1 %cmpBr_43ef4e, label %block_.L_43ef69, label %block_43ef54

block_43ef54:
  ; Code: movq 0x6cb900, %rax	 RIP: 43ef54	 Bytes: 8
  %loadMem_43ef54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ef54 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ef54)
  store %struct.Memory* %call_43ef54, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, 0x18(%rax)	 RIP: 43ef5c	 Bytes: 4
  %loadMem_43ef5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ef5c = call %struct.Memory* @routine_cmpl__0x1__0x18__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ef5c)
  store %struct.Memory* %call_43ef5c, %struct.Memory** %MEMORY

  ; Code: setne %cl	 RIP: 43ef60	 Bytes: 3
  %loadMem_43ef60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ef60 = call %struct.Memory* @routine_setne__cl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ef60)
  store %struct.Memory* %call_43ef60, %struct.Memory** %MEMORY

  ; Code: movb %cl, -0x99(%rbp)	 RIP: 43ef63	 Bytes: 6
  %loadMem_43ef63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ef63 = call %struct.Memory* @routine_movb__cl__MINUS0x99__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ef63)
  store %struct.Memory* %call_43ef63, %struct.Memory** %MEMORY

  ; Code: .L_43ef69:	 RIP: 43ef69	 Bytes: 0
  br label %block_.L_43ef69
block_.L_43ef69:

  ; Code: movb -0x99(%rbp), %al	 RIP: 43ef69	 Bytes: 6
  %loadMem_43ef69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ef69 = call %struct.Memory* @routine_movb_MINUS0x99__rbp____al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ef69)
  store %struct.Memory* %call_43ef69, %struct.Memory** %MEMORY

  ; Code: andb $0x1, %al	 RIP: 43ef6f	 Bytes: 2
  %loadMem_43ef6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ef6f = call %struct.Memory* @routine_andb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ef6f)
  store %struct.Memory* %call_43ef6f, %struct.Memory** %MEMORY

  ; Code: movzbl %al, %ecx	 RIP: 43ef71	 Bytes: 3
  %loadMem_43ef71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ef71 = call %struct.Memory* @routine_movzbl__al___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ef71)
  store %struct.Memory* %call_43ef71, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x74(%rbp)	 RIP: 43ef74	 Bytes: 3
  %loadMem_43ef74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ef74 = call %struct.Memory* @routine_movl__ecx__MINUS0x74__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ef74)
  store %struct.Memory* %call_43ef74, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rdx	 RIP: 43ef77	 Bytes: 8
  %loadMem_43ef77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ef77 = call %struct.Memory* @routine_movq_0x6cb900___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ef77)
  store %struct.Memory* %call_43ef77, %struct.Memory** %MEMORY

  ; Code: movq 0x3758(%rdx), %rdx	 RIP: 43ef7f	 Bytes: 7
  %loadMem_43ef7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ef7f = call %struct.Memory* @routine_movq_0x3758__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ef7f)
  store %struct.Memory* %call_43ef7f, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rsi	 RIP: 43ef86	 Bytes: 8
  %loadMem_43ef86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ef86 = call %struct.Memory* @routine_movq_0x6cb900___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ef86)
  store %struct.Memory* %call_43ef86, %struct.Memory** %MEMORY

  ; Code: movslq 0xc(%rsi), %rsi	 RIP: 43ef8e	 Bytes: 4
  %loadMem_43ef8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ef8e = call %struct.Memory* @routine_movslq_0xc__rsi____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ef8e)
  store %struct.Memory* %call_43ef8e, %struct.Memory** %MEMORY

  ; Code: imulq $0x278, %rsi, %rsi	 RIP: 43ef92	 Bytes: 7
  %loadMem_43ef92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ef92 = call %struct.Memory* @routine_imulq__0x278___rsi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ef92)
  store %struct.Memory* %call_43ef92, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rdx	 RIP: 43ef99	 Bytes: 3
  %loadMem_43ef99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ef99 = call %struct.Memory* @routine_addq__rsi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ef99)
  store %struct.Memory* %call_43ef99, %struct.Memory** %MEMORY

  ; Code: movq %rdx, -0x80(%rbp)	 RIP: 43ef9c	 Bytes: 4
  %loadMem_43ef9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43ef9c = call %struct.Memory* @routine_movq__rdx__MINUS0x80__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43ef9c)
  store %struct.Memory* %call_43ef9c, %struct.Memory** %MEMORY

  ; Code: movq -0x80(%rbp), %rdx	 RIP: 43efa0	 Bytes: 4
  %loadMem_43efa0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43efa0 = call %struct.Memory* @routine_movq_MINUS0x80__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43efa0)
  store %struct.Memory* %call_43efa0, %struct.Memory** %MEMORY

  ; Code: movl 0x23c(%rdx), %ecx	 RIP: 43efa4	 Bytes: 6
  %loadMem_43efa4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43efa4 = call %struct.Memory* @routine_movl_0x23c__rdx____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43efa4)
  store %struct.Memory* %call_43efa4, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x84(%rbp)	 RIP: 43efaa	 Bytes: 6
  %loadMem_43efaa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43efaa = call %struct.Memory* @routine_movl__ecx__MINUS0x84__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43efaa)
  store %struct.Memory* %call_43efaa, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rdx	 RIP: 43efb0	 Bytes: 8
  %loadMem_43efb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43efb0 = call %struct.Memory* @routine_movq_0x6cb900___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43efb0)
  store %struct.Memory* %call_43efb0, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, 0x18(%rdx)	 RIP: 43efb8	 Bytes: 4
  %loadMem_43efb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43efb8 = call %struct.Memory* @routine_cmpl__0x1__0x18__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43efb8)
  store %struct.Memory* %call_43efb8, %struct.Memory** %MEMORY

  ; Code: jne .L_43efc9	 RIP: 43efbc	 Bytes: 6
  %loadMem_43efbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43efbc = call %struct.Memory* @routine_jne_.L_43efc9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43efbc, i8* %BRANCH_TAKEN, i64 13, i64 6, i64 6)
  store %struct.Memory* %call_43efbc, %struct.Memory** %MEMORY

  %loadBr_43efbc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43efbc = icmp eq i8 %loadBr_43efbc, 1
  br i1 %cmpBr_43efbc, label %block_.L_43efc9, label %block_43efc2

block_43efc2:
  ; Code: movl $0x1, -0x70(%rbp)	 RIP: 43efc2	 Bytes: 7
  %loadMem_43efc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43efc2 = call %struct.Memory* @routine_movl__0x1__MINUS0x70__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43efc2)
  store %struct.Memory* %call_43efc2, %struct.Memory** %MEMORY

  ; Code: .L_43efc9:	 RIP: 43efc9	 Bytes: 0
  br label %block_.L_43efc9
block_.L_43efc9:

  ; Code: movl $0x0, -0x6c(%rbp)	 RIP: 43efc9	 Bytes: 7
  %loadMem_43efc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43efc9 = call %struct.Memory* @routine_movl__0x0__MINUS0x6c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43efc9)
  store %struct.Memory* %call_43efc9, %struct.Memory** %MEMORY

  ; Code: movl -0x5c(%rbp), %eax	 RIP: 43efd0	 Bytes: 3
  %loadMem_43efd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43efd0 = call %struct.Memory* @routine_movl_MINUS0x5c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43efd0)
  store %struct.Memory* %call_43efd0, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x38(%rbp)	 RIP: 43efd3	 Bytes: 3
  %loadMem_43efd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43efd3 = call %struct.Memory* @routine_movl__eax__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43efd3)
  store %struct.Memory* %call_43efd3, %struct.Memory** %MEMORY

  ; Code: .L_43efd6:	 RIP: 43efd6	 Bytes: 0
  br label %block_.L_43efd6
block_.L_43efd6:

  ; Code: movl -0x38(%rbp), %eax	 RIP: 43efd6	 Bytes: 3
  %loadMem_43efd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43efd6 = call %struct.Memory* @routine_movl_MINUS0x38__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43efd6)
  store %struct.Memory* %call_43efd6, %struct.Memory** %MEMORY

  ; Code: movl -0x5c(%rbp), %ecx	 RIP: 43efd9	 Bytes: 3
  %loadMem_43efd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43efd9 = call %struct.Memory* @routine_movl_MINUS0x5c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43efd9)
  store %struct.Memory* %call_43efd9, %struct.Memory** %MEMORY

  ; Code: addl $0x8, %ecx	 RIP: 43efdc	 Bytes: 3
  %loadMem_43efdc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43efdc = call %struct.Memory* @routine_addl__0x8___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43efdc)
  store %struct.Memory* %call_43efdc, %struct.Memory** %MEMORY

  ; Code: cmpl %ecx, %eax	 RIP: 43efdf	 Bytes: 2
  %loadMem_43efdf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43efdf = call %struct.Memory* @routine_cmpl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43efdf)
  store %struct.Memory* %call_43efdf, %struct.Memory** %MEMORY

  ; Code: jge .L_43f934	 RIP: 43efe1	 Bytes: 6
  %loadMem_43efe1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43efe1 = call %struct.Memory* @routine_jge_.L_43f934(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43efe1, i8* %BRANCH_TAKEN, i64 2387, i64 6, i64 6)
  store %struct.Memory* %call_43efe1, %struct.Memory** %MEMORY

  %loadBr_43efe1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43efe1 = icmp eq i8 %loadBr_43efe1, 1
  br i1 %cmpBr_43efe1, label %block_.L_43f934, label %block_43efe7

block_43efe7:
  ; Code: movq 0x6cb900, %rax	 RIP: 43efe7	 Bytes: 8
  %loadMem_43efe7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43efe7 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43efe7)
  store %struct.Memory* %call_43efe7, %struct.Memory** %MEMORY

  ; Code: movl 0xac(%rax), %ecx	 RIP: 43efef	 Bytes: 6
  %loadMem_43efef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43efef = call %struct.Memory* @routine_movl_0xac__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43efef)
  store %struct.Memory* %call_43efef, %struct.Memory** %MEMORY

  ; Code: addl -0x38(%rbp), %ecx	 RIP: 43eff5	 Bytes: 3
  %loadMem_43eff5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43eff5 = call %struct.Memory* @routine_addl_MINUS0x38__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43eff5)
  store %struct.Memory* %call_43eff5, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x40(%rbp)	 RIP: 43eff8	 Bytes: 3
  %loadMem_43eff8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43eff8 = call %struct.Memory* @routine_movl__ecx__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43eff8)
  store %struct.Memory* %call_43eff8, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x68(%rbp)	 RIP: 43effb	 Bytes: 7
  %loadMem_43effb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43effb = call %struct.Memory* @routine_movl__0x0__MINUS0x68__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43effb)
  store %struct.Memory* %call_43effb, %struct.Memory** %MEMORY

  ; Code: movl -0x60(%rbp), %ecx	 RIP: 43f002	 Bytes: 3
  %loadMem_43f002 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f002 = call %struct.Memory* @routine_movl_MINUS0x60__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f002)
  store %struct.Memory* %call_43f002, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x3c(%rbp)	 RIP: 43f005	 Bytes: 3
  %loadMem_43f005 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f005 = call %struct.Memory* @routine_movl__ecx__MINUS0x3c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f005)
  store %struct.Memory* %call_43f005, %struct.Memory** %MEMORY

  ; Code: .L_43f008:	 RIP: 43f008	 Bytes: 0
  br label %block_.L_43f008
block_.L_43f008:

  ; Code: movl -0x3c(%rbp), %eax	 RIP: 43f008	 Bytes: 3
  %loadMem_43f008 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f008 = call %struct.Memory* @routine_movl_MINUS0x3c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f008)
  store %struct.Memory* %call_43f008, %struct.Memory** %MEMORY

  ; Code: movl -0x60(%rbp), %ecx	 RIP: 43f00b	 Bytes: 3
  %loadMem_43f00b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f00b = call %struct.Memory* @routine_movl_MINUS0x60__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f00b)
  store %struct.Memory* %call_43f00b, %struct.Memory** %MEMORY

  ; Code: addl $0x8, %ecx	 RIP: 43f00e	 Bytes: 3
  %loadMem_43f00e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f00e = call %struct.Memory* @routine_addl__0x8___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f00e)
  store %struct.Memory* %call_43f00e, %struct.Memory** %MEMORY

  ; Code: cmpl %ecx, %eax	 RIP: 43f011	 Bytes: 2
  %loadMem_43f011 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f011 = call %struct.Memory* @routine_cmpl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f011)
  store %struct.Memory* %call_43f011, %struct.Memory** %MEMORY

  ; Code: jge .L_43f918	 RIP: 43f013	 Bytes: 6
  %loadMem_43f013 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f013 = call %struct.Memory* @routine_jge_.L_43f918(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f013, i8* %BRANCH_TAKEN, i64 2309, i64 6, i64 6)
  store %struct.Memory* %call_43f013, %struct.Memory** %MEMORY

  %loadBr_43f013 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f013 = icmp eq i8 %loadBr_43f013, 1
  br i1 %cmpBr_43f013, label %block_.L_43f918, label %block_43f019

block_43f019:
  ; Code: movq 0x6cb900, %rax	 RIP: 43f019	 Bytes: 8
  %loadMem_43f019 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f019 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f019)
  store %struct.Memory* %call_43f019, %struct.Memory** %MEMORY

  ; Code: movl 0xa8(%rax), %ecx	 RIP: 43f021	 Bytes: 6
  %loadMem_43f021 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f021 = call %struct.Memory* @routine_movl_0xa8__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f021)
  store %struct.Memory* %call_43f021, %struct.Memory** %MEMORY

  ; Code: addl -0x3c(%rbp), %ecx	 RIP: 43f027	 Bytes: 3
  %loadMem_43f027 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f027 = call %struct.Memory* @routine_addl_MINUS0x3c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f027)
  store %struct.Memory* %call_43f027, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x44(%rbp)	 RIP: 43f02a	 Bytes: 3
  %loadMem_43f02a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f02a = call %struct.Memory* @routine_movl__ecx__MINUS0x44__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f02a)
  store %struct.Memory* %call_43f02a, %struct.Memory** %MEMORY

  ; Code: movl -0x3c(%rbp), %ecx	 RIP: 43f02d	 Bytes: 3
  %loadMem_43f02d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f02d = call %struct.Memory* @routine_movl_MINUS0x3c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f02d)
  store %struct.Memory* %call_43f02d, %struct.Memory** %MEMORY

  ; Code: sarl $0x2, %ecx	 RIP: 43f030	 Bytes: 3
  %loadMem_43f030 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f030 = call %struct.Memory* @routine_sarl__0x2___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f030)
  store %struct.Memory* %call_43f030, %struct.Memory** %MEMORY

  ; Code: addl -0x38(%rbp), %ecx	 RIP: 43f033	 Bytes: 3
  %loadMem_43f033 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f033 = call %struct.Memory* @routine_addl_MINUS0x38__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f033)
  store %struct.Memory* %call_43f033, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x54(%rbp)	 RIP: 43f036	 Bytes: 3
  %loadMem_43f036 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f036 = call %struct.Memory* @routine_movl__ecx__MINUS0x54__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f036)
  store %struct.Memory* %call_43f036, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 43f039	 Bytes: 8
  %loadMem_43f039 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f039 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f039)
  store %struct.Memory* %call_43f039, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x11c14(%rax)	 RIP: 43f041	 Bytes: 7
  %loadMem_43f041 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f041 = call %struct.Memory* @routine_cmpl__0x0__0x11c14__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f041)
  store %struct.Memory* %call_43f041, %struct.Memory** %MEMORY

  ; Code: je .L_43f1ea	 RIP: 43f048	 Bytes: 6
  %loadMem_43f048 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f048 = call %struct.Memory* @routine_je_.L_43f1ea(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f048, i8* %BRANCH_TAKEN, i64 418, i64 6, i64 6)
  store %struct.Memory* %call_43f048, %struct.Memory** %MEMORY

  %loadBr_43f048 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f048 = icmp eq i8 %loadBr_43f048, 1
  br i1 %cmpBr_43f048, label %block_.L_43f1ea, label %block_43f04e

block_43f04e:
  ; Code: xorl %edi, %edi	 RIP: 43f04e	 Bytes: 2
  %loadMem_43f04e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f04e = call %struct.Memory* @routine_xorl__edi___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f04e)
  store %struct.Memory* %call_43f04e, %struct.Memory** %MEMORY

  ; Code: movl -0x3c(%rbp), %esi	 RIP: 43f050	 Bytes: 3
  %loadMem_43f050 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f050 = call %struct.Memory* @routine_movl_MINUS0x3c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f050)
  store %struct.Memory* %call_43f050, %struct.Memory** %MEMORY

  ; Code: movl -0x38(%rbp), %edx	 RIP: 43f053	 Bytes: 3
  %loadMem_43f053 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f053 = call %struct.Memory* @routine_movl_MINUS0x38__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f053)
  store %struct.Memory* %call_43f053, %struct.Memory** %MEMORY

  ; Code: movswl -0x26(%rbp), %ecx	 RIP: 43f056	 Bytes: 4
  %loadMem_43f056 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f056 = call %struct.Memory* @routine_movswl_MINUS0x26__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f056)
  store %struct.Memory* %call_43f056, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %r8d	 RIP: 43f05a	 Bytes: 4
  %loadMem_43f05a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f05a = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f05a)
  store %struct.Memory* %call_43f05a, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %r9d	 RIP: 43f05e	 Bytes: 4
  %loadMem_43f05e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f05e = call %struct.Memory* @routine_movl_MINUS0x30__rbp____r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f05e)
  store %struct.Memory* %call_43f05e, %struct.Memory** %MEMORY

  ; Code: movw -0x32(%rbp), %ax	 RIP: 43f062	 Bytes: 4
  %loadMem_43f062 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f062 = call %struct.Memory* @routine_movw_MINUS0x32__rbp____ax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f062)
  store %struct.Memory* %call_43f062, %struct.Memory** %MEMORY

  ; Code: movswl %ax, %r10d	 RIP: 43f066	 Bytes: 4
  %loadMem_43f066 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f066 = call %struct.Memory* @routine_movswl__ax___r10d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f066)
  store %struct.Memory* %call_43f066, %struct.Memory** %MEMORY

  ; Code: movl %r10d, (%rsp)	 RIP: 43f06a	 Bytes: 4
  %loadMem_43f06a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f06a = call %struct.Memory* @routine_movl__r10d____rsp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f06a)
  store %struct.Memory* %call_43f06a, %struct.Memory** %MEMORY

  ; Code: movswl -0x34(%rbp), %r10d	 RIP: 43f06e	 Bytes: 5
  %loadMem_43f06e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f06e = call %struct.Memory* @routine_movswl_MINUS0x34__rbp____r10d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f06e)
  store %struct.Memory* %call_43f06e, %struct.Memory** %MEMORY

  ; Code: movl %r10d, 0x8(%rsp)	 RIP: 43f073	 Bytes: 5
  %loadMem_43f073 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f073 = call %struct.Memory* @routine_movl__r10d__0x8__rsp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f073)
  store %struct.Memory* %call_43f073, %struct.Memory** %MEMORY

  ; Code: callq .ChromaPrediction4x4	 RIP: 43f078	 Bytes: 5
  %loadMem1_43f078 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43f078 = call %struct.Memory* @routine_callq_.ChromaPrediction4x4(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43f078, i64 3144, i64 5, i64 5)
  store %struct.Memory* %call1_43f078, %struct.Memory** %MEMORY

  %loadMem2_43f078 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43f078 = load i64, i64* %3
  %call2_43f078 = call %struct.Memory* @sub_43fcc0.ChromaPrediction4x4(%struct.State* %0, i64  %loadPC_43f078, %struct.Memory* %loadMem2_43f078)
  store %struct.Memory* %call2_43f078, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x4c(%rbp)	 RIP: 43f07d	 Bytes: 7
  %loadMem_43f07d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f07d = call %struct.Memory* @routine_movl__0x0__MINUS0x4c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f07d)
  store %struct.Memory* %call_43f07d, %struct.Memory** %MEMORY

  ; Code: .L_43f084:	 RIP: 43f084	 Bytes: 0
  br label %block_.L_43f084
block_.L_43f084:

  ; Code: cmpl $0x4, -0x4c(%rbp)	 RIP: 43f084	 Bytes: 4
  %loadMem_43f084 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f084 = call %struct.Memory* @routine_cmpl__0x4__MINUS0x4c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f084)
  store %struct.Memory* %call_43f084, %struct.Memory** %MEMORY

  ; Code: jge .L_43f118	 RIP: 43f088	 Bytes: 6
  %loadMem_43f088 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f088 = call %struct.Memory* @routine_jge_.L_43f118(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f088, i8* %BRANCH_TAKEN, i64 144, i64 6, i64 6)
  store %struct.Memory* %call_43f088, %struct.Memory** %MEMORY

  %loadBr_43f088 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f088 = icmp eq i8 %loadBr_43f088, 1
  br i1 %cmpBr_43f088, label %block_.L_43f118, label %block_43f08e

block_43f08e:
  ; Code: movl $0x0, -0x48(%rbp)	 RIP: 43f08e	 Bytes: 7
  %loadMem_43f08e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f08e = call %struct.Memory* @routine_movl__0x0__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f08e)
  store %struct.Memory* %call_43f08e, %struct.Memory** %MEMORY

  ; Code: .L_43f095:	 RIP: 43f095	 Bytes: 0
  br label %block_.L_43f095
block_.L_43f095:

  ; Code: cmpl $0x4, -0x48(%rbp)	 RIP: 43f095	 Bytes: 4
  %loadMem_43f095 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f095 = call %struct.Memory* @routine_cmpl__0x4__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f095)
  store %struct.Memory* %call_43f095, %struct.Memory** %MEMORY

  ; Code: jge .L_43f105	 RIP: 43f099	 Bytes: 6
  %loadMem_43f099 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f099 = call %struct.Memory* @routine_jge_.L_43f105(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f099, i8* %BRANCH_TAKEN, i64 108, i64 6, i64 6)
  store %struct.Memory* %call_43f099, %struct.Memory** %MEMORY

  %loadBr_43f099 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f099 = icmp eq i8 %loadBr_43f099, 1
  br i1 %cmpBr_43f099, label %block_.L_43f105, label %block_43f09f

block_43f09f:
  ; Code: movq $0x725610, %rax	 RIP: 43f09f	 Bytes: 10
  %loadMem_43f09f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f09f = call %struct.Memory* @routine_movq__0x725610___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f09f)
  store %struct.Memory* %call_43f09f, %struct.Memory** %MEMORY

  ; Code: addq $0x400, %rax	 RIP: 43f0a9	 Bytes: 6
  %loadMem_43f0a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f0a9 = call %struct.Memory* @routine_addq__0x400___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f0a9)
  store %struct.Memory* %call_43f0a9, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 43f0af	 Bytes: 8
  %loadMem_43f0af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f0af = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f0af)
  store %struct.Memory* %call_43f0af, %struct.Memory** %MEMORY

  ; Code: addq $0x3138, %rcx	 RIP: 43f0b7	 Bytes: 7
  %loadMem_43f0b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f0b7 = call %struct.Memory* @routine_addq__0x3138___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f0b7)
  store %struct.Memory* %call_43f0b7, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %edx	 RIP: 43f0be	 Bytes: 3
  %loadMem_43f0be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f0be = call %struct.Memory* @routine_movl_MINUS0x48__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f0be)
  store %struct.Memory* %call_43f0be, %struct.Memory** %MEMORY

  ; Code: addl -0x3c(%rbp), %edx	 RIP: 43f0c1	 Bytes: 3
  %loadMem_43f0c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f0c1 = call %struct.Memory* @routine_addl_MINUS0x3c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f0c1)
  store %struct.Memory* %call_43f0c1, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rsi	 RIP: 43f0c4	 Bytes: 3
  %loadMem_43f0c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f0c4 = call %struct.Memory* @routine_movslq__edx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f0c4)
  store %struct.Memory* %call_43f0c4, %struct.Memory** %MEMORY

  ; Code: shlq $0x5, %rsi	 RIP: 43f0c7	 Bytes: 4
  %loadMem_43f0c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f0c7 = call %struct.Memory* @routine_shlq__0x5___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f0c7)
  store %struct.Memory* %call_43f0c7, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rcx	 RIP: 43f0cb	 Bytes: 3
  %loadMem_43f0cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f0cb = call %struct.Memory* @routine_addq__rsi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f0cb)
  store %struct.Memory* %call_43f0cb, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %edx	 RIP: 43f0ce	 Bytes: 3
  %loadMem_43f0ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f0ce = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f0ce)
  store %struct.Memory* %call_43f0ce, %struct.Memory** %MEMORY

  ; Code: addl -0x38(%rbp), %edx	 RIP: 43f0d1	 Bytes: 3
  %loadMem_43f0d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f0d1 = call %struct.Memory* @routine_addl_MINUS0x38__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f0d1)
  store %struct.Memory* %call_43f0d1, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rsi	 RIP: 43f0d4	 Bytes: 3
  %loadMem_43f0d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f0d4 = call %struct.Memory* @routine_movslq__edx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f0d4)
  store %struct.Memory* %call_43f0d4, %struct.Memory** %MEMORY

  ; Code: movzwl (%rcx,%rsi,2), %edx	 RIP: 43f0d7	 Bytes: 4
  %loadMem_43f0d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f0d7 = call %struct.Memory* @routine_movzwl___rcx__rsi_2____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f0d7)
  store %struct.Memory* %call_43f0d7, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %edi	 RIP: 43f0db	 Bytes: 3
  %loadMem_43f0db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f0db = call %struct.Memory* @routine_movl_MINUS0x48__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f0db)
  store %struct.Memory* %call_43f0db, %struct.Memory** %MEMORY

  ; Code: addl -0x3c(%rbp), %edi	 RIP: 43f0de	 Bytes: 3
  %loadMem_43f0de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f0de = call %struct.Memory* @routine_addl_MINUS0x3c__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f0de)
  store %struct.Memory* %call_43f0de, %struct.Memory** %MEMORY

  ; Code: movslq %edi, %rcx	 RIP: 43f0e1	 Bytes: 3
  %loadMem_43f0e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f0e1 = call %struct.Memory* @routine_movslq__edi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f0e1)
  store %struct.Memory* %call_43f0e1, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rcx	 RIP: 43f0e4	 Bytes: 4
  %loadMem_43f0e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f0e4 = call %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f0e4)
  store %struct.Memory* %call_43f0e4, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 43f0e8	 Bytes: 3
  %loadMem_43f0e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f0e8 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f0e8)
  store %struct.Memory* %call_43f0e8, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %edi	 RIP: 43f0eb	 Bytes: 3
  %loadMem_43f0eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f0eb = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f0eb)
  store %struct.Memory* %call_43f0eb, %struct.Memory** %MEMORY

  ; Code: addl -0x38(%rbp), %edi	 RIP: 43f0ee	 Bytes: 3
  %loadMem_43f0ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f0ee = call %struct.Memory* @routine_addl_MINUS0x38__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f0ee)
  store %struct.Memory* %call_43f0ee, %struct.Memory** %MEMORY

  ; Code: movslq %edi, %rcx	 RIP: 43f0f1	 Bytes: 3
  %loadMem_43f0f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f0f1 = call %struct.Memory* @routine_movslq__edi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f0f1)
  store %struct.Memory* %call_43f0f1, %struct.Memory** %MEMORY

  ; Code: movl %edx, (%rax,%rcx,4)	 RIP: 43f0f4	 Bytes: 3
  %loadMem_43f0f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f0f4 = call %struct.Memory* @routine_movl__edx____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f0f4)
  store %struct.Memory* %call_43f0f4, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %eax	 RIP: 43f0f7	 Bytes: 3
  %loadMem_43f0f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f0f7 = call %struct.Memory* @routine_movl_MINUS0x48__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f0f7)
  store %struct.Memory* %call_43f0f7, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 43f0fa	 Bytes: 3
  %loadMem_43f0fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f0fa = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f0fa)
  store %struct.Memory* %call_43f0fa, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x48(%rbp)	 RIP: 43f0fd	 Bytes: 3
  %loadMem_43f0fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f0fd = call %struct.Memory* @routine_movl__eax__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f0fd)
  store %struct.Memory* %call_43f0fd, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43f095	 RIP: 43f100	 Bytes: 5
  %loadMem_43f100 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f100 = call %struct.Memory* @routine_jmpq_.L_43f095(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f100, i64 -107, i64 5)
  store %struct.Memory* %call_43f100, %struct.Memory** %MEMORY

  br label %block_.L_43f095

  ; Code: .L_43f105:	 RIP: 43f105	 Bytes: 0
block_.L_43f105:

  ; Code: jmpq .L_43f10a	 RIP: 43f105	 Bytes: 5
  %loadMem_43f105 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f105 = call %struct.Memory* @routine_jmpq_.L_43f10a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f105, i64 5, i64 5)
  store %struct.Memory* %call_43f105, %struct.Memory** %MEMORY

  br label %block_.L_43f10a

  ; Code: .L_43f10a:	 RIP: 43f10a	 Bytes: 0
block_.L_43f10a:

  ; Code: movl -0x4c(%rbp), %eax	 RIP: 43f10a	 Bytes: 3
  %loadMem_43f10a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f10a = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f10a)
  store %struct.Memory* %call_43f10a, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 43f10d	 Bytes: 3
  %loadMem_43f10d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f10d = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f10d)
  store %struct.Memory* %call_43f10d, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4c(%rbp)	 RIP: 43f110	 Bytes: 3
  %loadMem_43f110 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f110 = call %struct.Memory* @routine_movl__eax__MINUS0x4c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f110)
  store %struct.Memory* %call_43f110, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43f084	 RIP: 43f113	 Bytes: 5
  %loadMem_43f113 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f113 = call %struct.Memory* @routine_jmpq_.L_43f084(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f113, i64 -143, i64 5)
  store %struct.Memory* %call_43f113, %struct.Memory** %MEMORY

  br label %block_.L_43f084

  ; Code: .L_43f118:	 RIP: 43f118	 Bytes: 0
block_.L_43f118:

  ; Code: movl $0x1, %edi	 RIP: 43f118	 Bytes: 5
  %loadMem_43f118 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f118 = call %struct.Memory* @routine_movl__0x1___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f118)
  store %struct.Memory* %call_43f118, %struct.Memory** %MEMORY

  ; Code: movl -0x3c(%rbp), %esi	 RIP: 43f11d	 Bytes: 3
  %loadMem_43f11d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f11d = call %struct.Memory* @routine_movl_MINUS0x3c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f11d)
  store %struct.Memory* %call_43f11d, %struct.Memory** %MEMORY

  ; Code: movl -0x38(%rbp), %edx	 RIP: 43f120	 Bytes: 3
  %loadMem_43f120 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f120 = call %struct.Memory* @routine_movl_MINUS0x38__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f120)
  store %struct.Memory* %call_43f120, %struct.Memory** %MEMORY

  ; Code: movswl -0x26(%rbp), %ecx	 RIP: 43f123	 Bytes: 4
  %loadMem_43f123 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f123 = call %struct.Memory* @routine_movswl_MINUS0x26__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f123)
  store %struct.Memory* %call_43f123, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %r8d	 RIP: 43f127	 Bytes: 4
  %loadMem_43f127 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f127 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f127)
  store %struct.Memory* %call_43f127, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %r9d	 RIP: 43f12b	 Bytes: 4
  %loadMem_43f12b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f12b = call %struct.Memory* @routine_movl_MINUS0x30__rbp____r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f12b)
  store %struct.Memory* %call_43f12b, %struct.Memory** %MEMORY

  ; Code: movw -0x32(%rbp), %ax	 RIP: 43f12f	 Bytes: 4
  %loadMem_43f12f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f12f = call %struct.Memory* @routine_movw_MINUS0x32__rbp____ax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f12f)
  store %struct.Memory* %call_43f12f, %struct.Memory** %MEMORY

  ; Code: movswl %ax, %r10d	 RIP: 43f133	 Bytes: 4
  %loadMem_43f133 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f133 = call %struct.Memory* @routine_movswl__ax___r10d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f133)
  store %struct.Memory* %call_43f133, %struct.Memory** %MEMORY

  ; Code: movl %r10d, (%rsp)	 RIP: 43f137	 Bytes: 4
  %loadMem_43f137 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f137 = call %struct.Memory* @routine_movl__r10d____rsp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f137)
  store %struct.Memory* %call_43f137, %struct.Memory** %MEMORY

  ; Code: movswl -0x34(%rbp), %r10d	 RIP: 43f13b	 Bytes: 5
  %loadMem_43f13b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f13b = call %struct.Memory* @routine_movswl_MINUS0x34__rbp____r10d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f13b)
  store %struct.Memory* %call_43f13b, %struct.Memory** %MEMORY

  ; Code: movl %r10d, 0x8(%rsp)	 RIP: 43f140	 Bytes: 5
  %loadMem_43f140 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f140 = call %struct.Memory* @routine_movl__r10d__0x8__rsp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f140)
  store %struct.Memory* %call_43f140, %struct.Memory** %MEMORY

  ; Code: callq .ChromaPrediction4x4	 RIP: 43f145	 Bytes: 5
  %loadMem1_43f145 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43f145 = call %struct.Memory* @routine_callq_.ChromaPrediction4x4(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43f145, i64 2939, i64 5, i64 5)
  store %struct.Memory* %call1_43f145, %struct.Memory** %MEMORY

  %loadMem2_43f145 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43f145 = load i64, i64* %3
  %call2_43f145 = call %struct.Memory* @sub_43fcc0.ChromaPrediction4x4(%struct.State* %0, i64  %loadPC_43f145, %struct.Memory* %loadMem2_43f145)
  store %struct.Memory* %call2_43f145, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x4c(%rbp)	 RIP: 43f14a	 Bytes: 7
  %loadMem_43f14a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f14a = call %struct.Memory* @routine_movl__0x0__MINUS0x4c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f14a)
  store %struct.Memory* %call_43f14a, %struct.Memory** %MEMORY

  ; Code: .L_43f151:	 RIP: 43f151	 Bytes: 0
  br label %block_.L_43f151
block_.L_43f151:

  ; Code: cmpl $0x4, -0x4c(%rbp)	 RIP: 43f151	 Bytes: 4
  %loadMem_43f151 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f151 = call %struct.Memory* @routine_cmpl__0x4__MINUS0x4c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f151)
  store %struct.Memory* %call_43f151, %struct.Memory** %MEMORY

  ; Code: jge .L_43f1e5	 RIP: 43f155	 Bytes: 6
  %loadMem_43f155 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f155 = call %struct.Memory* @routine_jge_.L_43f1e5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f155, i8* %BRANCH_TAKEN, i64 144, i64 6, i64 6)
  store %struct.Memory* %call_43f155, %struct.Memory** %MEMORY

  %loadBr_43f155 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f155 = icmp eq i8 %loadBr_43f155, 1
  br i1 %cmpBr_43f155, label %block_.L_43f1e5, label %block_43f15b

block_43f15b:
  ; Code: movl $0x0, -0x48(%rbp)	 RIP: 43f15b	 Bytes: 7
  %loadMem_43f15b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f15b = call %struct.Memory* @routine_movl__0x0__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f15b)
  store %struct.Memory* %call_43f15b, %struct.Memory** %MEMORY

  ; Code: .L_43f162:	 RIP: 43f162	 Bytes: 0
  br label %block_.L_43f162
block_.L_43f162:

  ; Code: cmpl $0x4, -0x48(%rbp)	 RIP: 43f162	 Bytes: 4
  %loadMem_43f162 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f162 = call %struct.Memory* @routine_cmpl__0x4__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f162)
  store %struct.Memory* %call_43f162, %struct.Memory** %MEMORY

  ; Code: jge .L_43f1d2	 RIP: 43f166	 Bytes: 6
  %loadMem_43f166 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f166 = call %struct.Memory* @routine_jge_.L_43f1d2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f166, i8* %BRANCH_TAKEN, i64 108, i64 6, i64 6)
  store %struct.Memory* %call_43f166, %struct.Memory** %MEMORY

  %loadBr_43f166 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f166 = icmp eq i8 %loadBr_43f166, 1
  br i1 %cmpBr_43f166, label %block_.L_43f1d2, label %block_43f16c

block_43f16c:
  ; Code: movq $0x725610, %rax	 RIP: 43f16c	 Bytes: 10
  %loadMem_43f16c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f16c = call %struct.Memory* @routine_movq__0x725610___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f16c)
  store %struct.Memory* %call_43f16c, %struct.Memory** %MEMORY

  ; Code: addq $0x800, %rax	 RIP: 43f176	 Bytes: 6
  %loadMem_43f176 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f176 = call %struct.Memory* @routine_addq__0x800___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f176)
  store %struct.Memory* %call_43f176, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 43f17c	 Bytes: 8
  %loadMem_43f17c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f17c = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f17c)
  store %struct.Memory* %call_43f17c, %struct.Memory** %MEMORY

  ; Code: addq $0x3138, %rcx	 RIP: 43f184	 Bytes: 7
  %loadMem_43f184 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f184 = call %struct.Memory* @routine_addq__0x3138___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f184)
  store %struct.Memory* %call_43f184, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %edx	 RIP: 43f18b	 Bytes: 3
  %loadMem_43f18b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f18b = call %struct.Memory* @routine_movl_MINUS0x48__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f18b)
  store %struct.Memory* %call_43f18b, %struct.Memory** %MEMORY

  ; Code: addl -0x3c(%rbp), %edx	 RIP: 43f18e	 Bytes: 3
  %loadMem_43f18e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f18e = call %struct.Memory* @routine_addl_MINUS0x3c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f18e)
  store %struct.Memory* %call_43f18e, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rsi	 RIP: 43f191	 Bytes: 3
  %loadMem_43f191 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f191 = call %struct.Memory* @routine_movslq__edx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f191)
  store %struct.Memory* %call_43f191, %struct.Memory** %MEMORY

  ; Code: shlq $0x5, %rsi	 RIP: 43f194	 Bytes: 4
  %loadMem_43f194 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f194 = call %struct.Memory* @routine_shlq__0x5___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f194)
  store %struct.Memory* %call_43f194, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rcx	 RIP: 43f198	 Bytes: 3
  %loadMem_43f198 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f198 = call %struct.Memory* @routine_addq__rsi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f198)
  store %struct.Memory* %call_43f198, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %edx	 RIP: 43f19b	 Bytes: 3
  %loadMem_43f19b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f19b = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f19b)
  store %struct.Memory* %call_43f19b, %struct.Memory** %MEMORY

  ; Code: addl -0x38(%rbp), %edx	 RIP: 43f19e	 Bytes: 3
  %loadMem_43f19e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f19e = call %struct.Memory* @routine_addl_MINUS0x38__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f19e)
  store %struct.Memory* %call_43f19e, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rsi	 RIP: 43f1a1	 Bytes: 3
  %loadMem_43f1a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f1a1 = call %struct.Memory* @routine_movslq__edx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f1a1)
  store %struct.Memory* %call_43f1a1, %struct.Memory** %MEMORY

  ; Code: movzwl (%rcx,%rsi,2), %edx	 RIP: 43f1a4	 Bytes: 4
  %loadMem_43f1a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f1a4 = call %struct.Memory* @routine_movzwl___rcx__rsi_2____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f1a4)
  store %struct.Memory* %call_43f1a4, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %edi	 RIP: 43f1a8	 Bytes: 3
  %loadMem_43f1a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f1a8 = call %struct.Memory* @routine_movl_MINUS0x48__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f1a8)
  store %struct.Memory* %call_43f1a8, %struct.Memory** %MEMORY

  ; Code: addl -0x3c(%rbp), %edi	 RIP: 43f1ab	 Bytes: 3
  %loadMem_43f1ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f1ab = call %struct.Memory* @routine_addl_MINUS0x3c__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f1ab)
  store %struct.Memory* %call_43f1ab, %struct.Memory** %MEMORY

  ; Code: movslq %edi, %rcx	 RIP: 43f1ae	 Bytes: 3
  %loadMem_43f1ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f1ae = call %struct.Memory* @routine_movslq__edi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f1ae)
  store %struct.Memory* %call_43f1ae, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rcx	 RIP: 43f1b1	 Bytes: 4
  %loadMem_43f1b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f1b1 = call %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f1b1)
  store %struct.Memory* %call_43f1b1, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 43f1b5	 Bytes: 3
  %loadMem_43f1b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f1b5 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f1b5)
  store %struct.Memory* %call_43f1b5, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %edi	 RIP: 43f1b8	 Bytes: 3
  %loadMem_43f1b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f1b8 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f1b8)
  store %struct.Memory* %call_43f1b8, %struct.Memory** %MEMORY

  ; Code: addl -0x38(%rbp), %edi	 RIP: 43f1bb	 Bytes: 3
  %loadMem_43f1bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f1bb = call %struct.Memory* @routine_addl_MINUS0x38__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f1bb)
  store %struct.Memory* %call_43f1bb, %struct.Memory** %MEMORY

  ; Code: movslq %edi, %rcx	 RIP: 43f1be	 Bytes: 3
  %loadMem_43f1be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f1be = call %struct.Memory* @routine_movslq__edi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f1be)
  store %struct.Memory* %call_43f1be, %struct.Memory** %MEMORY

  ; Code: movl %edx, (%rax,%rcx,4)	 RIP: 43f1c1	 Bytes: 3
  %loadMem_43f1c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f1c1 = call %struct.Memory* @routine_movl__edx____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f1c1)
  store %struct.Memory* %call_43f1c1, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %eax	 RIP: 43f1c4	 Bytes: 3
  %loadMem_43f1c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f1c4 = call %struct.Memory* @routine_movl_MINUS0x48__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f1c4)
  store %struct.Memory* %call_43f1c4, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 43f1c7	 Bytes: 3
  %loadMem_43f1c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f1c7 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f1c7)
  store %struct.Memory* %call_43f1c7, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x48(%rbp)	 RIP: 43f1ca	 Bytes: 3
  %loadMem_43f1ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f1ca = call %struct.Memory* @routine_movl__eax__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f1ca)
  store %struct.Memory* %call_43f1ca, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43f162	 RIP: 43f1cd	 Bytes: 5
  %loadMem_43f1cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f1cd = call %struct.Memory* @routine_jmpq_.L_43f162(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f1cd, i64 -107, i64 5)
  store %struct.Memory* %call_43f1cd, %struct.Memory** %MEMORY

  br label %block_.L_43f162

  ; Code: .L_43f1d2:	 RIP: 43f1d2	 Bytes: 0
block_.L_43f1d2:

  ; Code: jmpq .L_43f1d7	 RIP: 43f1d2	 Bytes: 5
  %loadMem_43f1d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f1d2 = call %struct.Memory* @routine_jmpq_.L_43f1d7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f1d2, i64 5, i64 5)
  store %struct.Memory* %call_43f1d2, %struct.Memory** %MEMORY

  br label %block_.L_43f1d7

  ; Code: .L_43f1d7:	 RIP: 43f1d7	 Bytes: 0
block_.L_43f1d7:

  ; Code: movl -0x4c(%rbp), %eax	 RIP: 43f1d7	 Bytes: 3
  %loadMem_43f1d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f1d7 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f1d7)
  store %struct.Memory* %call_43f1d7, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 43f1da	 Bytes: 3
  %loadMem_43f1da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f1da = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f1da)
  store %struct.Memory* %call_43f1da, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4c(%rbp)	 RIP: 43f1dd	 Bytes: 3
  %loadMem_43f1dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f1dd = call %struct.Memory* @routine_movl__eax__MINUS0x4c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f1dd)
  store %struct.Memory* %call_43f1dd, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43f151	 RIP: 43f1e0	 Bytes: 5
  %loadMem_43f1e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f1e0 = call %struct.Memory* @routine_jmpq_.L_43f151(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f1e0, i64 -143, i64 5)
  store %struct.Memory* %call_43f1e0, %struct.Memory** %MEMORY

  br label %block_.L_43f151

  ; Code: .L_43f1e5:	 RIP: 43f1e5	 Bytes: 0
block_.L_43f1e5:

  ; Code: jmpq .L_43f1ea	 RIP: 43f1e5	 Bytes: 5
  %loadMem_43f1e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f1e5 = call %struct.Memory* @routine_jmpq_.L_43f1ea(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f1e5, i64 5, i64 5)
  store %struct.Memory* %call_43f1e5, %struct.Memory** %MEMORY

  br label %block_.L_43f1ea

  ; Code: .L_43f1ea:	 RIP: 43f1ea	 Bytes: 0
block_.L_43f1ea:

  ; Code: movl -0x3c(%rbp), %edi	 RIP: 43f1ea	 Bytes: 3
  %loadMem_43f1ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f1ea = call %struct.Memory* @routine_movl_MINUS0x3c__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f1ea)
  store %struct.Memory* %call_43f1ea, %struct.Memory** %MEMORY

  ; Code: movl -0x38(%rbp), %esi	 RIP: 43f1ed	 Bytes: 3
  %loadMem_43f1ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f1ed = call %struct.Memory* @routine_movl_MINUS0x38__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f1ed)
  store %struct.Memory* %call_43f1ed, %struct.Memory** %MEMORY

  ; Code: movswl -0x26(%rbp), %edx	 RIP: 43f1f0	 Bytes: 4
  %loadMem_43f1f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f1f0 = call %struct.Memory* @routine_movswl_MINUS0x26__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f1f0)
  store %struct.Memory* %call_43f1f0, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %ecx	 RIP: 43f1f4	 Bytes: 3
  %loadMem_43f1f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f1f4 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f1f4)
  store %struct.Memory* %call_43f1f4, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %r8d	 RIP: 43f1f7	 Bytes: 4
  %loadMem_43f1f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f1f7 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f1f7)
  store %struct.Memory* %call_43f1f7, %struct.Memory** %MEMORY

  ; Code: movw -0x32(%rbp), %ax	 RIP: 43f1fb	 Bytes: 4
  %loadMem_43f1fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f1fb = call %struct.Memory* @routine_movw_MINUS0x32__rbp____ax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f1fb)
  store %struct.Memory* %call_43f1fb, %struct.Memory** %MEMORY

  ; Code: movswl %ax, %r9d	 RIP: 43f1ff	 Bytes: 4
  %loadMem_43f1ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f1ff = call %struct.Memory* @routine_movswl__ax___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f1ff)
  store %struct.Memory* %call_43f1ff, %struct.Memory** %MEMORY

  ; Code: movswl -0x34(%rbp), %r10d	 RIP: 43f203	 Bytes: 5
  %loadMem_43f203 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f203 = call %struct.Memory* @routine_movswl_MINUS0x34__rbp____r10d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f203)
  store %struct.Memory* %call_43f203, %struct.Memory** %MEMORY

  ; Code: movl %r10d, (%rsp)	 RIP: 43f208	 Bytes: 4
  %loadMem_43f208 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f208 = call %struct.Memory* @routine_movl__r10d____rsp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f208)
  store %struct.Memory* %call_43f208, %struct.Memory** %MEMORY

  ; Code: callq .LumaPrediction4x4	 RIP: 43f20c	 Bytes: 5
  %loadMem1_43f20c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43f20c = call %struct.Memory* @routine_callq_.LumaPrediction4x4(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43f20c, i64 -4860, i64 5, i64 5)
  store %struct.Memory* %call1_43f20c, %struct.Memory** %MEMORY

  %loadMem2_43f20c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43f20c = load i64, i64* %3
  %call2_43f20c = call %struct.Memory* @sub_43df10.LumaPrediction4x4(%struct.State* %0, i64  %loadPC_43f20c, %struct.Memory* %loadMem2_43f20c)
  store %struct.Memory* %call2_43f20c, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %r11	 RIP: 43f211	 Bytes: 8
  %loadMem_43f211 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f211 = call %struct.Memory* @routine_movq_0x6cb900___r11(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f211)
  store %struct.Memory* %call_43f211, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x11c14(%r11)	 RIP: 43f219	 Bytes: 8
  %loadMem_43f219 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f219 = call %struct.Memory* @routine_cmpl__0x0__0x11c14__r11_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f219)
  store %struct.Memory* %call_43f219, %struct.Memory** %MEMORY

  ; Code: je .L_43f2c1	 RIP: 43f221	 Bytes: 6
  %loadMem_43f221 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f221 = call %struct.Memory* @routine_je_.L_43f2c1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f221, i8* %BRANCH_TAKEN, i64 160, i64 6, i64 6)
  store %struct.Memory* %call_43f221, %struct.Memory** %MEMORY

  %loadBr_43f221 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f221 = icmp eq i8 %loadBr_43f221, 1
  br i1 %cmpBr_43f221, label %block_.L_43f2c1, label %block_43f227

block_43f227:
  ; Code: movl $0x0, -0x4c(%rbp)	 RIP: 43f227	 Bytes: 7
  %loadMem_43f227 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f227 = call %struct.Memory* @routine_movl__0x0__MINUS0x4c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f227)
  store %struct.Memory* %call_43f227, %struct.Memory** %MEMORY

  ; Code: .L_43f22e:	 RIP: 43f22e	 Bytes: 0
  br label %block_.L_43f22e
block_.L_43f22e:

  ; Code: cmpl $0x4, -0x4c(%rbp)	 RIP: 43f22e	 Bytes: 4
  %loadMem_43f22e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f22e = call %struct.Memory* @routine_cmpl__0x4__MINUS0x4c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f22e)
  store %struct.Memory* %call_43f22e, %struct.Memory** %MEMORY

  ; Code: jge .L_43f2bc	 RIP: 43f232	 Bytes: 6
  %loadMem_43f232 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f232 = call %struct.Memory* @routine_jge_.L_43f2bc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f232, i8* %BRANCH_TAKEN, i64 138, i64 6, i64 6)
  store %struct.Memory* %call_43f232, %struct.Memory** %MEMORY

  %loadBr_43f232 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f232 = icmp eq i8 %loadBr_43f232, 1
  br i1 %cmpBr_43f232, label %block_.L_43f2bc, label %block_43f238

block_43f238:
  ; Code: movl $0x0, -0x48(%rbp)	 RIP: 43f238	 Bytes: 7
  %loadMem_43f238 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f238 = call %struct.Memory* @routine_movl__0x0__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f238)
  store %struct.Memory* %call_43f238, %struct.Memory** %MEMORY

  ; Code: .L_43f23f:	 RIP: 43f23f	 Bytes: 0
  br label %block_.L_43f23f
block_.L_43f23f:

  ; Code: cmpl $0x4, -0x48(%rbp)	 RIP: 43f23f	 Bytes: 4
  %loadMem_43f23f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f23f = call %struct.Memory* @routine_cmpl__0x4__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f23f)
  store %struct.Memory* %call_43f23f, %struct.Memory** %MEMORY

  ; Code: jge .L_43f2a9	 RIP: 43f243	 Bytes: 6
  %loadMem_43f243 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f243 = call %struct.Memory* @routine_jge_.L_43f2a9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f243, i8* %BRANCH_TAKEN, i64 102, i64 6, i64 6)
  store %struct.Memory* %call_43f243, %struct.Memory** %MEMORY

  %loadBr_43f243 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f243 = icmp eq i8 %loadBr_43f243, 1
  br i1 %cmpBr_43f243, label %block_.L_43f2a9, label %block_43f249

block_43f249:
  ; Code: movq $0x725610, %rax	 RIP: 43f249	 Bytes: 10
  %loadMem_43f249 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f249 = call %struct.Memory* @routine_movq__0x725610___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f249)
  store %struct.Memory* %call_43f249, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 43f253	 Bytes: 8
  %loadMem_43f253 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f253 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f253)
  store %struct.Memory* %call_43f253, %struct.Memory** %MEMORY

  ; Code: addq $0x3138, %rcx	 RIP: 43f25b	 Bytes: 7
  %loadMem_43f25b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f25b = call %struct.Memory* @routine_addq__0x3138___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f25b)
  store %struct.Memory* %call_43f25b, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %edx	 RIP: 43f262	 Bytes: 3
  %loadMem_43f262 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f262 = call %struct.Memory* @routine_movl_MINUS0x48__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f262)
  store %struct.Memory* %call_43f262, %struct.Memory** %MEMORY

  ; Code: addl -0x3c(%rbp), %edx	 RIP: 43f265	 Bytes: 3
  %loadMem_43f265 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f265 = call %struct.Memory* @routine_addl_MINUS0x3c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f265)
  store %struct.Memory* %call_43f265, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rsi	 RIP: 43f268	 Bytes: 3
  %loadMem_43f268 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f268 = call %struct.Memory* @routine_movslq__edx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f268)
  store %struct.Memory* %call_43f268, %struct.Memory** %MEMORY

  ; Code: shlq $0x5, %rsi	 RIP: 43f26b	 Bytes: 4
  %loadMem_43f26b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f26b = call %struct.Memory* @routine_shlq__0x5___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f26b)
  store %struct.Memory* %call_43f26b, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rcx	 RIP: 43f26f	 Bytes: 3
  %loadMem_43f26f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f26f = call %struct.Memory* @routine_addq__rsi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f26f)
  store %struct.Memory* %call_43f26f, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %edx	 RIP: 43f272	 Bytes: 3
  %loadMem_43f272 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f272 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f272)
  store %struct.Memory* %call_43f272, %struct.Memory** %MEMORY

  ; Code: addl -0x38(%rbp), %edx	 RIP: 43f275	 Bytes: 3
  %loadMem_43f275 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f275 = call %struct.Memory* @routine_addl_MINUS0x38__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f275)
  store %struct.Memory* %call_43f275, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rsi	 RIP: 43f278	 Bytes: 3
  %loadMem_43f278 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f278 = call %struct.Memory* @routine_movslq__edx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f278)
  store %struct.Memory* %call_43f278, %struct.Memory** %MEMORY

  ; Code: movzwl (%rcx,%rsi,2), %edx	 RIP: 43f27b	 Bytes: 4
  %loadMem_43f27b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f27b = call %struct.Memory* @routine_movzwl___rcx__rsi_2____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f27b)
  store %struct.Memory* %call_43f27b, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %edi	 RIP: 43f27f	 Bytes: 3
  %loadMem_43f27f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f27f = call %struct.Memory* @routine_movl_MINUS0x48__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f27f)
  store %struct.Memory* %call_43f27f, %struct.Memory** %MEMORY

  ; Code: addl -0x3c(%rbp), %edi	 RIP: 43f282	 Bytes: 3
  %loadMem_43f282 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f282 = call %struct.Memory* @routine_addl_MINUS0x3c__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f282)
  store %struct.Memory* %call_43f282, %struct.Memory** %MEMORY

  ; Code: movslq %edi, %rcx	 RIP: 43f285	 Bytes: 3
  %loadMem_43f285 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f285 = call %struct.Memory* @routine_movslq__edi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f285)
  store %struct.Memory* %call_43f285, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rcx	 RIP: 43f288	 Bytes: 4
  %loadMem_43f288 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f288 = call %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f288)
  store %struct.Memory* %call_43f288, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 43f28c	 Bytes: 3
  %loadMem_43f28c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f28c = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f28c)
  store %struct.Memory* %call_43f28c, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %edi	 RIP: 43f28f	 Bytes: 3
  %loadMem_43f28f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f28f = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f28f)
  store %struct.Memory* %call_43f28f, %struct.Memory** %MEMORY

  ; Code: addl -0x38(%rbp), %edi	 RIP: 43f292	 Bytes: 3
  %loadMem_43f292 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f292 = call %struct.Memory* @routine_addl_MINUS0x38__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f292)
  store %struct.Memory* %call_43f292, %struct.Memory** %MEMORY

  ; Code: movslq %edi, %rcx	 RIP: 43f295	 Bytes: 3
  %loadMem_43f295 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f295 = call %struct.Memory* @routine_movslq__edi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f295)
  store %struct.Memory* %call_43f295, %struct.Memory** %MEMORY

  ; Code: movl %edx, (%rax,%rcx,4)	 RIP: 43f298	 Bytes: 3
  %loadMem_43f298 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f298 = call %struct.Memory* @routine_movl__edx____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f298)
  store %struct.Memory* %call_43f298, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %eax	 RIP: 43f29b	 Bytes: 3
  %loadMem_43f29b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f29b = call %struct.Memory* @routine_movl_MINUS0x48__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f29b)
  store %struct.Memory* %call_43f29b, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 43f29e	 Bytes: 3
  %loadMem_43f29e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f29e = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f29e)
  store %struct.Memory* %call_43f29e, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x48(%rbp)	 RIP: 43f2a1	 Bytes: 3
  %loadMem_43f2a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f2a1 = call %struct.Memory* @routine_movl__eax__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f2a1)
  store %struct.Memory* %call_43f2a1, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43f23f	 RIP: 43f2a4	 Bytes: 5
  %loadMem_43f2a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f2a4 = call %struct.Memory* @routine_jmpq_.L_43f23f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f2a4, i64 -101, i64 5)
  store %struct.Memory* %call_43f2a4, %struct.Memory** %MEMORY

  br label %block_.L_43f23f

  ; Code: .L_43f2a9:	 RIP: 43f2a9	 Bytes: 0
block_.L_43f2a9:

  ; Code: jmpq .L_43f2ae	 RIP: 43f2a9	 Bytes: 5
  %loadMem_43f2a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f2a9 = call %struct.Memory* @routine_jmpq_.L_43f2ae(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f2a9, i64 5, i64 5)
  store %struct.Memory* %call_43f2a9, %struct.Memory** %MEMORY

  br label %block_.L_43f2ae

  ; Code: .L_43f2ae:	 RIP: 43f2ae	 Bytes: 0
block_.L_43f2ae:

  ; Code: movl -0x4c(%rbp), %eax	 RIP: 43f2ae	 Bytes: 3
  %loadMem_43f2ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f2ae = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f2ae)
  store %struct.Memory* %call_43f2ae, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 43f2b1	 Bytes: 3
  %loadMem_43f2b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f2b1 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f2b1)
  store %struct.Memory* %call_43f2b1, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4c(%rbp)	 RIP: 43f2b4	 Bytes: 3
  %loadMem_43f2b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f2b4 = call %struct.Memory* @routine_movl__eax__MINUS0x4c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f2b4)
  store %struct.Memory* %call_43f2b4, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43f22e	 RIP: 43f2b7	 Bytes: 5
  %loadMem_43f2b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f2b7 = call %struct.Memory* @routine_jmpq_.L_43f22e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f2b7, i64 -137, i64 5)
  store %struct.Memory* %call_43f2b7, %struct.Memory** %MEMORY

  br label %block_.L_43f22e

  ; Code: .L_43f2bc:	 RIP: 43f2bc	 Bytes: 0
block_.L_43f2bc:

  ; Code: jmpq .L_43f2c1	 RIP: 43f2bc	 Bytes: 5
  %loadMem_43f2bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f2bc = call %struct.Memory* @routine_jmpq_.L_43f2c1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f2bc, i64 5, i64 5)
  store %struct.Memory* %call_43f2bc, %struct.Memory** %MEMORY

  br label %block_.L_43f2c1

  ; Code: .L_43f2c1:	 RIP: 43f2c1	 Bytes: 0
block_.L_43f2c1:

  ; Code: movq 0x6cb900, %rax	 RIP: 43f2c1	 Bytes: 8
  %loadMem_43f2c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f2c1 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f2c1)
  store %struct.Memory* %call_43f2c1, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x11c14(%rax)	 RIP: 43f2c9	 Bytes: 7
  %loadMem_43f2c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f2c9 = call %struct.Memory* @routine_cmpl__0x0__0x11c14__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f2c9)
  store %struct.Memory* %call_43f2c9, %struct.Memory** %MEMORY

  ; Code: jne .L_43f4ed	 RIP: 43f2d0	 Bytes: 6
  %loadMem_43f2d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f2d0 = call %struct.Memory* @routine_jne_.L_43f4ed(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f2d0, i8* %BRANCH_TAKEN, i64 541, i64 6, i64 6)
  store %struct.Memory* %call_43f2d0, %struct.Memory** %MEMORY

  %loadBr_43f2d0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f2d0 = icmp eq i8 %loadBr_43f2d0, 1
  br i1 %cmpBr_43f2d0, label %block_.L_43f4ed, label %block_43f2d6

block_43f2d6:
  ; Code: cmpl $0x0, -0x84(%rbp)	 RIP: 43f2d6	 Bytes: 7
  %loadMem_43f2d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f2d6 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x84__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f2d6)
  store %struct.Memory* %call_43f2d6, %struct.Memory** %MEMORY

  ; Code: jne .L_43f427	 RIP: 43f2dd	 Bytes: 6
  %loadMem_43f2dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f2dd = call %struct.Memory* @routine_jne_.L_43f427(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f2dd, i8* %BRANCH_TAKEN, i64 330, i64 6, i64 6)
  store %struct.Memory* %call_43f2dd, %struct.Memory** %MEMORY

  %loadBr_43f2dd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f2dd = icmp eq i8 %loadBr_43f2dd, 1
  br i1 %cmpBr_43f2dd, label %block_.L_43f427, label %block_43f2e3

block_43f2e3:
  ; Code: movl $0x0, -0x4c(%rbp)	 RIP: 43f2e3	 Bytes: 7
  %loadMem_43f2e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f2e3 = call %struct.Memory* @routine_movl__0x0__MINUS0x4c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f2e3)
  store %struct.Memory* %call_43f2e3, %struct.Memory** %MEMORY

  ; Code: .L_43f2ea:	 RIP: 43f2ea	 Bytes: 0
  br label %block_.L_43f2ea
block_.L_43f2ea:

  ; Code: cmpl $0x4, -0x4c(%rbp)	 RIP: 43f2ea	 Bytes: 4
  %loadMem_43f2ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f2ea = call %struct.Memory* @routine_cmpl__0x4__MINUS0x4c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f2ea)
  store %struct.Memory* %call_43f2ea, %struct.Memory** %MEMORY

  ; Code: jge .L_43f395	 RIP: 43f2ee	 Bytes: 6
  %loadMem_43f2ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f2ee = call %struct.Memory* @routine_jge_.L_43f395(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f2ee, i8* %BRANCH_TAKEN, i64 167, i64 6, i64 6)
  store %struct.Memory* %call_43f2ee, %struct.Memory** %MEMORY

  %loadBr_43f2ee = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f2ee = icmp eq i8 %loadBr_43f2ee, 1
  br i1 %cmpBr_43f2ee, label %block_.L_43f395, label %block_43f2f4

block_43f2f4:
  ; Code: movl $0x0, -0x48(%rbp)	 RIP: 43f2f4	 Bytes: 7
  %loadMem_43f2f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f2f4 = call %struct.Memory* @routine_movl__0x0__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f2f4)
  store %struct.Memory* %call_43f2f4, %struct.Memory** %MEMORY

  ; Code: .L_43f2fb:	 RIP: 43f2fb	 Bytes: 0
  br label %block_.L_43f2fb
block_.L_43f2fb:

  ; Code: cmpl $0x4, -0x48(%rbp)	 RIP: 43f2fb	 Bytes: 4
  %loadMem_43f2fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f2fb = call %struct.Memory* @routine_cmpl__0x4__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f2fb)
  store %struct.Memory* %call_43f2fb, %struct.Memory** %MEMORY

  ; Code: jge .L_43f382	 RIP: 43f2ff	 Bytes: 6
  %loadMem_43f2ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f2ff = call %struct.Memory* @routine_jge_.L_43f382(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f2ff, i8* %BRANCH_TAKEN, i64 131, i64 6, i64 6)
  store %struct.Memory* %call_43f2ff, %struct.Memory** %MEMORY

  %loadBr_43f2ff = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f2ff = icmp eq i8 %loadBr_43f2ff, 1
  br i1 %cmpBr_43f2ff, label %block_.L_43f382, label %block_43f305

block_43f305:
  ; Code: movq 0x726418, %rax	 RIP: 43f305	 Bytes: 8
  %loadMem_43f305 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f305 = call %struct.Memory* @routine_movq_0x726418___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f305)
  store %struct.Memory* %call_43f305, %struct.Memory** %MEMORY

  ; Code: movl -0x40(%rbp), %ecx	 RIP: 43f30d	 Bytes: 3
  %loadMem_43f30d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f30d = call %struct.Memory* @routine_movl_MINUS0x40__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f30d)
  store %struct.Memory* %call_43f30d, %struct.Memory** %MEMORY

  ; Code: addl -0x4c(%rbp), %ecx	 RIP: 43f310	 Bytes: 3
  %loadMem_43f310 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f310 = call %struct.Memory* @routine_addl_MINUS0x4c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f310)
  store %struct.Memory* %call_43f310, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 43f313	 Bytes: 3
  %loadMem_43f313 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f313 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f313)
  store %struct.Memory* %call_43f313, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 43f316	 Bytes: 4
  %loadMem_43f316 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f316 = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f316)
  store %struct.Memory* %call_43f316, %struct.Memory** %MEMORY

  ; Code: movl -0x44(%rbp), %ecx	 RIP: 43f31a	 Bytes: 3
  %loadMem_43f31a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f31a = call %struct.Memory* @routine_movl_MINUS0x44__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f31a)
  store %struct.Memory* %call_43f31a, %struct.Memory** %MEMORY

  ; Code: addl -0x48(%rbp), %ecx	 RIP: 43f31d	 Bytes: 3
  %loadMem_43f31d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f31d = call %struct.Memory* @routine_addl_MINUS0x48__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f31d)
  store %struct.Memory* %call_43f31d, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 43f320	 Bytes: 3
  %loadMem_43f320 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f320 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f320)
  store %struct.Memory* %call_43f320, %struct.Memory** %MEMORY

  ; Code: movzwl (%rax,%rdx,2), %ecx	 RIP: 43f323	 Bytes: 4
  %loadMem_43f323 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f323 = call %struct.Memory* @routine_movzwl___rax__rdx_2____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f323)
  store %struct.Memory* %call_43f323, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 43f327	 Bytes: 8
  %loadMem_43f327 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f327 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f327)
  store %struct.Memory* %call_43f327, %struct.Memory** %MEMORY

  ; Code: addq $0x3138, %rax	 RIP: 43f32f	 Bytes: 6
  %loadMem_43f32f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f32f = call %struct.Memory* @routine_addq__0x3138___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f32f)
  store %struct.Memory* %call_43f32f, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %esi	 RIP: 43f335	 Bytes: 3
  %loadMem_43f335 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f335 = call %struct.Memory* @routine_movl_MINUS0x48__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f335)
  store %struct.Memory* %call_43f335, %struct.Memory** %MEMORY

  ; Code: addl -0x3c(%rbp), %esi	 RIP: 43f338	 Bytes: 3
  %loadMem_43f338 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f338 = call %struct.Memory* @routine_addl_MINUS0x3c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f338)
  store %struct.Memory* %call_43f338, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rdx	 RIP: 43f33b	 Bytes: 3
  %loadMem_43f33b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f33b = call %struct.Memory* @routine_movslq__esi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f33b)
  store %struct.Memory* %call_43f33b, %struct.Memory** %MEMORY

  ; Code: shlq $0x5, %rdx	 RIP: 43f33e	 Bytes: 4
  %loadMem_43f33e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f33e = call %struct.Memory* @routine_shlq__0x5___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f33e)
  store %struct.Memory* %call_43f33e, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 43f342	 Bytes: 3
  %loadMem_43f342 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f342 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f342)
  store %struct.Memory* %call_43f342, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %esi	 RIP: 43f345	 Bytes: 3
  %loadMem_43f345 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f345 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f345)
  store %struct.Memory* %call_43f345, %struct.Memory** %MEMORY

  ; Code: addl -0x38(%rbp), %esi	 RIP: 43f348	 Bytes: 3
  %loadMem_43f348 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f348 = call %struct.Memory* @routine_addl_MINUS0x38__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f348)
  store %struct.Memory* %call_43f348, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rdx	 RIP: 43f34b	 Bytes: 3
  %loadMem_43f34b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f34b = call %struct.Memory* @routine_movslq__esi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f34b)
  store %struct.Memory* %call_43f34b, %struct.Memory** %MEMORY

  ; Code: movzwl (%rax,%rdx,2), %esi	 RIP: 43f34e	 Bytes: 4
  %loadMem_43f34e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f34e = call %struct.Memory* @routine_movzwl___rax__rdx_2____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f34e)
  store %struct.Memory* %call_43f34e, %struct.Memory** %MEMORY

  ; Code: subl %esi, %ecx	 RIP: 43f352	 Bytes: 2
  %loadMem_43f352 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f352 = call %struct.Memory* @routine_subl__esi___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f352)
  store %struct.Memory* %call_43f352, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 43f354	 Bytes: 8
  %loadMem_43f354 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f354 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f354)
  store %struct.Memory* %call_43f354, %struct.Memory** %MEMORY

  ; Code: addq $0x3338, %rax	 RIP: 43f35c	 Bytes: 6
  %loadMem_43f35c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f35c = call %struct.Memory* @routine_addq__0x3338___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f35c)
  store %struct.Memory* %call_43f35c, %struct.Memory** %MEMORY

  ; Code: movslq -0x48(%rbp), %rdx	 RIP: 43f362	 Bytes: 4
  %loadMem_43f362 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f362 = call %struct.Memory* @routine_movslq_MINUS0x48__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f362)
  store %struct.Memory* %call_43f362, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rdx	 RIP: 43f366	 Bytes: 4
  %loadMem_43f366 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f366 = call %struct.Memory* @routine_shlq__0x6___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f366)
  store %struct.Memory* %call_43f366, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 43f36a	 Bytes: 3
  %loadMem_43f36a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f36a = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f36a)
  store %struct.Memory* %call_43f36a, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %rdx	 RIP: 43f36d	 Bytes: 4
  %loadMem_43f36d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f36d = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f36d)
  store %struct.Memory* %call_43f36d, %struct.Memory** %MEMORY

  ; Code: movl %ecx, (%rax,%rdx,4)	 RIP: 43f371	 Bytes: 3
  %loadMem_43f371 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f371 = call %struct.Memory* @routine_movl__ecx____rax__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f371)
  store %struct.Memory* %call_43f371, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %eax	 RIP: 43f374	 Bytes: 3
  %loadMem_43f374 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f374 = call %struct.Memory* @routine_movl_MINUS0x48__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f374)
  store %struct.Memory* %call_43f374, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 43f377	 Bytes: 3
  %loadMem_43f377 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f377 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f377)
  store %struct.Memory* %call_43f377, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x48(%rbp)	 RIP: 43f37a	 Bytes: 3
  %loadMem_43f37a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f37a = call %struct.Memory* @routine_movl__eax__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f37a)
  store %struct.Memory* %call_43f37a, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43f2fb	 RIP: 43f37d	 Bytes: 5
  %loadMem_43f37d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f37d = call %struct.Memory* @routine_jmpq_.L_43f2fb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f37d, i64 -130, i64 5)
  store %struct.Memory* %call_43f37d, %struct.Memory** %MEMORY

  br label %block_.L_43f2fb

  ; Code: .L_43f382:	 RIP: 43f382	 Bytes: 0
block_.L_43f382:

  ; Code: jmpq .L_43f387	 RIP: 43f382	 Bytes: 5
  %loadMem_43f382 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f382 = call %struct.Memory* @routine_jmpq_.L_43f387(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f382, i64 5, i64 5)
  store %struct.Memory* %call_43f382, %struct.Memory** %MEMORY

  br label %block_.L_43f387

  ; Code: .L_43f387:	 RIP: 43f387	 Bytes: 0
block_.L_43f387:

  ; Code: movl -0x4c(%rbp), %eax	 RIP: 43f387	 Bytes: 3
  %loadMem_43f387 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f387 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f387)
  store %struct.Memory* %call_43f387, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 43f38a	 Bytes: 3
  %loadMem_43f38a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f38a = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f38a)
  store %struct.Memory* %call_43f38a, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4c(%rbp)	 RIP: 43f38d	 Bytes: 3
  %loadMem_43f38d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f38d = call %struct.Memory* @routine_movl__eax__MINUS0x4c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f38d)
  store %struct.Memory* %call_43f38d, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43f2ea	 RIP: 43f390	 Bytes: 5
  %loadMem_43f390 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f390 = call %struct.Memory* @routine_jmpq_.L_43f2ea(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f390, i64 -166, i64 5)
  store %struct.Memory* %call_43f390, %struct.Memory** %MEMORY

  br label %block_.L_43f2ea

  ; Code: .L_43f395:	 RIP: 43f395	 Bytes: 0
block_.L_43f395:

  ; Code: movq 0x6cb900, %rax	 RIP: 43f395	 Bytes: 8
  %loadMem_43f395 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f395 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f395)
  store %struct.Memory* %call_43f395, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, 0x11ac8(%rax)	 RIP: 43f39d	 Bytes: 7
  %loadMem_43f39d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f39d = call %struct.Memory* @routine_cmpl__0x1__0x11ac8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f39d)
  store %struct.Memory* %call_43f39d, %struct.Memory** %MEMORY

  ; Code: je .L_43f422	 RIP: 43f3a4	 Bytes: 6
  %loadMem_43f3a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f3a4 = call %struct.Memory* @routine_je_.L_43f422(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f3a4, i8* %BRANCH_TAKEN, i64 126, i64 6, i64 6)
  store %struct.Memory* %call_43f3a4, %struct.Memory** %MEMORY

  %loadBr_43f3a4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f3a4 = icmp eq i8 %loadBr_43f3a4, 1
  br i1 %cmpBr_43f3a4, label %block_.L_43f422, label %block_43f3aa

block_43f3aa:
  ; Code: cmpl $0x0, -0x74(%rbp)	 RIP: 43f3aa	 Bytes: 4
  %loadMem_43f3aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f3aa = call %struct.Memory* @routine_cmpl__0x0__MINUS0x74__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f3aa)
  store %struct.Memory* %call_43f3aa, %struct.Memory** %MEMORY

  ; Code: jne .L_43f422	 RIP: 43f3ae	 Bytes: 6
  %loadMem_43f3ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f3ae = call %struct.Memory* @routine_jne_.L_43f422(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f3ae, i8* %BRANCH_TAKEN, i64 116, i64 6, i64 6)
  store %struct.Memory* %call_43f3ae, %struct.Memory** %MEMORY

  %loadBr_43f3ae = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f3ae = icmp eq i8 %loadBr_43f3ae, 1
  br i1 %cmpBr_43f3ae, label %block_.L_43f422, label %block_43f3b4

block_43f3b4:
  ; Code: movq 0x6cb900, %rax	 RIP: 43f3b4	 Bytes: 8
  %loadMem_43f3b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f3b4 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f3b4)
  store %struct.Memory* %call_43f3b4, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, 0x18(%rax)	 RIP: 43f3bc	 Bytes: 4
  %loadMem_43f3bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f3bc = call %struct.Memory* @routine_cmpl__0x3__0x18__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f3bc)
  store %struct.Memory* %call_43f3bc, %struct.Memory** %MEMORY

  ; Code: je .L_43f3df	 RIP: 43f3c0	 Bytes: 6
  %loadMem_43f3c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f3c0 = call %struct.Memory* @routine_je_.L_43f3df(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f3c0, i8* %BRANCH_TAKEN, i64 31, i64 6, i64 6)
  store %struct.Memory* %call_43f3c0, %struct.Memory** %MEMORY

  %loadBr_43f3c0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f3c0 = icmp eq i8 %loadBr_43f3c0, 1
  br i1 %cmpBr_43f3c0, label %block_.L_43f3df, label %block_43f3c6

block_43f3c6:
  ; Code: leaq -0x58(%rbp), %rdx	 RIP: 43f3c6	 Bytes: 4
  %loadMem_43f3c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f3c6 = call %struct.Memory* @routine_leaq_MINUS0x58__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f3c6)
  store %struct.Memory* %call_43f3c6, %struct.Memory** %MEMORY

  ; Code: xorl %ecx, %ecx	 RIP: 43f3ca	 Bytes: 2
  %loadMem_43f3ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f3ca = call %struct.Memory* @routine_xorl__ecx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f3ca)
  store %struct.Memory* %call_43f3ca, %struct.Memory** %MEMORY

  ; Code: movl -0x3c(%rbp), %edi	 RIP: 43f3cc	 Bytes: 3
  %loadMem_43f3cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f3cc = call %struct.Memory* @routine_movl_MINUS0x3c__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f3cc)
  store %struct.Memory* %call_43f3cc, %struct.Memory** %MEMORY

  ; Code: movl -0x38(%rbp), %esi	 RIP: 43f3cf	 Bytes: 3
  %loadMem_43f3cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f3cf = call %struct.Memory* @routine_movl_MINUS0x38__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f3cf)
  store %struct.Memory* %call_43f3cf, %struct.Memory** %MEMORY

  ; Code: callq .dct_luma	 RIP: 43f3d2	 Bytes: 5
  %loadMem1_43f3d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43f3d2 = call %struct.Memory* @routine_callq_.dct_luma(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43f3d2, i64 -233858, i64 5, i64 5)
  store %struct.Memory* %call1_43f3d2, %struct.Memory** %MEMORY

  %loadMem2_43f3d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43f3d2 = load i64, i64* %3
  %call2_43f3d2 = call %struct.Memory* @sub_406250.dct_luma(%struct.State* %0, i64  %loadPC_43f3d2, %struct.Memory* %loadMem2_43f3d2)
  store %struct.Memory* %call2_43f3d2, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x50(%rbp)	 RIP: 43f3d7	 Bytes: 3
  %loadMem_43f3d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f3d7 = call %struct.Memory* @routine_movl__eax__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f3d7)
  store %struct.Memory* %call_43f3d7, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43f3f1	 RIP: 43f3da	 Bytes: 5
  %loadMem_43f3da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f3da = call %struct.Memory* @routine_jmpq_.L_43f3f1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f3da, i64 23, i64 5)
  store %struct.Memory* %call_43f3da, %struct.Memory** %MEMORY

  br label %block_.L_43f3f1

  ; Code: .L_43f3df:	 RIP: 43f3df	 Bytes: 0
block_.L_43f3df:

  ; Code: leaq -0x58(%rbp), %rdx	 RIP: 43f3df	 Bytes: 4
  %loadMem_43f3df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f3df = call %struct.Memory* @routine_leaq_MINUS0x58__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f3df)
  store %struct.Memory* %call_43f3df, %struct.Memory** %MEMORY

  ; Code: movl -0x3c(%rbp), %edi	 RIP: 43f3e3	 Bytes: 3
  %loadMem_43f3e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f3e3 = call %struct.Memory* @routine_movl_MINUS0x3c__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f3e3)
  store %struct.Memory* %call_43f3e3, %struct.Memory** %MEMORY

  ; Code: movl -0x38(%rbp), %esi	 RIP: 43f3e6	 Bytes: 3
  %loadMem_43f3e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f3e6 = call %struct.Memory* @routine_movl_MINUS0x38__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f3e6)
  store %struct.Memory* %call_43f3e6, %struct.Memory** %MEMORY

  ; Code: callq .dct_luma_sp	 RIP: 43f3e9	 Bytes: 5
  %loadMem1_43f3e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43f3e9 = call %struct.Memory* @routine_callq_.dct_luma_sp(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43f3e9, i64 -210441, i64 5, i64 5)
  store %struct.Memory* %call1_43f3e9, %struct.Memory** %MEMORY

  %loadMem2_43f3e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43f3e9 = load i64, i64* %3
  %call2_43f3e9 = call %struct.Memory* @sub_40bde0.dct_luma_sp(%struct.State* %0, i64  %loadPC_43f3e9, %struct.Memory* %loadMem2_43f3e9)
  store %struct.Memory* %call2_43f3e9, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x50(%rbp)	 RIP: 43f3ee	 Bytes: 3
  %loadMem_43f3ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f3ee = call %struct.Memory* @routine_movl__eax__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f3ee)
  store %struct.Memory* %call_43f3ee, %struct.Memory** %MEMORY

  ; Code: .L_43f3f1:	 RIP: 43f3f1	 Bytes: 0
  br label %block_.L_43f3f1
block_.L_43f3f1:

  ; Code: cmpl $0x0, -0x50(%rbp)	 RIP: 43f3f1	 Bytes: 4
  %loadMem_43f3f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f3f1 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f3f1)
  store %struct.Memory* %call_43f3f1, %struct.Memory** %MEMORY

  ; Code: je .L_43f41d	 RIP: 43f3f5	 Bytes: 6
  %loadMem_43f3f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f3f5 = call %struct.Memory* @routine_je_.L_43f41d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f3f5, i8* %BRANCH_TAKEN, i64 40, i64 6, i64 6)
  store %struct.Memory* %call_43f3f5, %struct.Memory** %MEMORY

  %loadBr_43f3f5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f3f5 = icmp eq i8 %loadBr_43f3f5, 1
  br i1 %cmpBr_43f3f5, label %block_.L_43f41d, label %block_43f3fb

block_43f3fb:
  ; Code: movl $0x1, %eax	 RIP: 43f3fb	 Bytes: 5
  %loadMem_43f3fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f3fb = call %struct.Memory* @routine_movl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f3fb)
  store %struct.Memory* %call_43f3fb, %struct.Memory** %MEMORY

  ; Code: movl -0x54(%rbp), %ecx	 RIP: 43f400	 Bytes: 3
  %loadMem_43f400 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f400 = call %struct.Memory* @routine_movl_MINUS0x54__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f400)
  store %struct.Memory* %call_43f400, %struct.Memory** %MEMORY

  ; Code: shll %cl, %eax	 RIP: 43f403	 Bytes: 2
  %loadMem_43f403 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f403 = call %struct.Memory* @routine_shll__cl___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f403)
  store %struct.Memory* %call_43f403, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 43f405	 Bytes: 3
  %loadMem_43f405 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f405 = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f405)
  store %struct.Memory* %call_43f405, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rsi	 RIP: 43f408	 Bytes: 4
  %loadMem_43f408 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f408 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f408)
  store %struct.Memory* %call_43f408, %struct.Memory** %MEMORY

  ; Code: orq (%rsi), %rdx	 RIP: 43f40c	 Bytes: 3
  %loadMem_43f40c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f40c = call %struct.Memory* @routine_orq___rsi____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f40c)
  store %struct.Memory* %call_43f40c, %struct.Memory** %MEMORY

  ; Code: movq %rdx, (%rsi)	 RIP: 43f40f	 Bytes: 3
  %loadMem_43f40f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f40f = call %struct.Memory* @routine_movq__rdx____rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f40f)
  store %struct.Memory* %call_43f40f, %struct.Memory** %MEMORY

  ; Code: movl -0x64(%rbp), %eax	 RIP: 43f412	 Bytes: 3
  %loadMem_43f412 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f412 = call %struct.Memory* @routine_movl_MINUS0x64__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f412)
  store %struct.Memory* %call_43f412, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 43f415	 Bytes: 4
  %loadMem_43f415 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f415 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f415)
  store %struct.Memory* %call_43f415, %struct.Memory** %MEMORY

  ; Code: orl (%rdx), %eax	 RIP: 43f419	 Bytes: 2
  %loadMem_43f419 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f419 = call %struct.Memory* @routine_orl___rdx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f419)
  store %struct.Memory* %call_43f419, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rdx)	 RIP: 43f41b	 Bytes: 2
  %loadMem_43f41b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f41b = call %struct.Memory* @routine_movl__eax____rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f41b)
  store %struct.Memory* %call_43f41b, %struct.Memory** %MEMORY

  ; Code: .L_43f41d:	 RIP: 43f41d	 Bytes: 0
  br label %block_.L_43f41d
block_.L_43f41d:

  ; Code: jmpq .L_43f422	 RIP: 43f41d	 Bytes: 5
  %loadMem_43f41d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f41d = call %struct.Memory* @routine_jmpq_.L_43f422(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f41d, i64 5, i64 5)
  store %struct.Memory* %call_43f41d, %struct.Memory** %MEMORY

  br label %block_.L_43f422

  ; Code: .L_43f422:	 RIP: 43f422	 Bytes: 0
block_.L_43f422:

  ; Code: jmpq .L_43f4e8	 RIP: 43f422	 Bytes: 5
  %loadMem_43f422 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f422 = call %struct.Memory* @routine_jmpq_.L_43f4e8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f422, i64 198, i64 5)
  store %struct.Memory* %call_43f422, %struct.Memory** %MEMORY

  br label %block_.L_43f4e8

  ; Code: .L_43f427:	 RIP: 43f427	 Bytes: 0
block_.L_43f427:

  ; Code: movl $0x0, -0x4c(%rbp)	 RIP: 43f427	 Bytes: 7
  %loadMem_43f427 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f427 = call %struct.Memory* @routine_movl__0x0__MINUS0x4c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f427)
  store %struct.Memory* %call_43f427, %struct.Memory** %MEMORY

  ; Code: .L_43f42e:	 RIP: 43f42e	 Bytes: 0
  br label %block_.L_43f42e
block_.L_43f42e:

  ; Code: cmpl $0x4, -0x4c(%rbp)	 RIP: 43f42e	 Bytes: 4
  %loadMem_43f42e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f42e = call %struct.Memory* @routine_cmpl__0x4__MINUS0x4c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f42e)
  store %struct.Memory* %call_43f42e, %struct.Memory** %MEMORY

  ; Code: jge .L_43f4e3	 RIP: 43f432	 Bytes: 6
  %loadMem_43f432 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f432 = call %struct.Memory* @routine_jge_.L_43f4e3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f432, i8* %BRANCH_TAKEN, i64 177, i64 6, i64 6)
  store %struct.Memory* %call_43f432, %struct.Memory** %MEMORY

  %loadBr_43f432 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f432 = icmp eq i8 %loadBr_43f432, 1
  br i1 %cmpBr_43f432, label %block_.L_43f4e3, label %block_43f438

block_43f438:
  ; Code: movl $0x0, -0x48(%rbp)	 RIP: 43f438	 Bytes: 7
  %loadMem_43f438 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f438 = call %struct.Memory* @routine_movl__0x0__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f438)
  store %struct.Memory* %call_43f438, %struct.Memory** %MEMORY

  ; Code: .L_43f43f:	 RIP: 43f43f	 Bytes: 0
  br label %block_.L_43f43f
block_.L_43f43f:

  ; Code: cmpl $0x4, -0x48(%rbp)	 RIP: 43f43f	 Bytes: 4
  %loadMem_43f43f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f43f = call %struct.Memory* @routine_cmpl__0x4__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f43f)
  store %struct.Memory* %call_43f43f, %struct.Memory** %MEMORY

  ; Code: jge .L_43f4d0	 RIP: 43f443	 Bytes: 6
  %loadMem_43f443 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f443 = call %struct.Memory* @routine_jge_.L_43f4d0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f443, i8* %BRANCH_TAKEN, i64 141, i64 6, i64 6)
  store %struct.Memory* %call_43f443, %struct.Memory** %MEMORY

  %loadBr_43f443 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f443 = icmp eq i8 %loadBr_43f443, 1
  br i1 %cmpBr_43f443, label %block_.L_43f4d0, label %block_43f449

block_43f449:
  ; Code: movq 0x726418, %rax	 RIP: 43f449	 Bytes: 8
  %loadMem_43f449 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f449 = call %struct.Memory* @routine_movq_0x726418___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f449)
  store %struct.Memory* %call_43f449, %struct.Memory** %MEMORY

  ; Code: movl -0x40(%rbp), %ecx	 RIP: 43f451	 Bytes: 3
  %loadMem_43f451 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f451 = call %struct.Memory* @routine_movl_MINUS0x40__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f451)
  store %struct.Memory* %call_43f451, %struct.Memory** %MEMORY

  ; Code: addl -0x4c(%rbp), %ecx	 RIP: 43f454	 Bytes: 3
  %loadMem_43f454 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f454 = call %struct.Memory* @routine_addl_MINUS0x4c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f454)
  store %struct.Memory* %call_43f454, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 43f457	 Bytes: 3
  %loadMem_43f457 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f457 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f457)
  store %struct.Memory* %call_43f457, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 43f45a	 Bytes: 4
  %loadMem_43f45a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f45a = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f45a)
  store %struct.Memory* %call_43f45a, %struct.Memory** %MEMORY

  ; Code: movl -0x44(%rbp), %ecx	 RIP: 43f45e	 Bytes: 3
  %loadMem_43f45e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f45e = call %struct.Memory* @routine_movl_MINUS0x44__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f45e)
  store %struct.Memory* %call_43f45e, %struct.Memory** %MEMORY

  ; Code: addl -0x48(%rbp), %ecx	 RIP: 43f461	 Bytes: 3
  %loadMem_43f461 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f461 = call %struct.Memory* @routine_addl_MINUS0x48__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f461)
  store %struct.Memory* %call_43f461, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 43f464	 Bytes: 3
  %loadMem_43f464 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f464 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f464)
  store %struct.Memory* %call_43f464, %struct.Memory** %MEMORY

  ; Code: movzwl (%rax,%rdx,2), %ecx	 RIP: 43f467	 Bytes: 4
  %loadMem_43f467 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f467 = call %struct.Memory* @routine_movzwl___rax__rdx_2____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f467)
  store %struct.Memory* %call_43f467, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 43f46b	 Bytes: 8
  %loadMem_43f46b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f46b = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f46b)
  store %struct.Memory* %call_43f46b, %struct.Memory** %MEMORY

  ; Code: addq $0x3138, %rax	 RIP: 43f473	 Bytes: 6
  %loadMem_43f473 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f473 = call %struct.Memory* @routine_addq__0x3138___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f473)
  store %struct.Memory* %call_43f473, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %esi	 RIP: 43f479	 Bytes: 3
  %loadMem_43f479 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f479 = call %struct.Memory* @routine_movl_MINUS0x48__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f479)
  store %struct.Memory* %call_43f479, %struct.Memory** %MEMORY

  ; Code: addl -0x3c(%rbp), %esi	 RIP: 43f47c	 Bytes: 3
  %loadMem_43f47c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f47c = call %struct.Memory* @routine_addl_MINUS0x3c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f47c)
  store %struct.Memory* %call_43f47c, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rdx	 RIP: 43f47f	 Bytes: 3
  %loadMem_43f47f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f47f = call %struct.Memory* @routine_movslq__esi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f47f)
  store %struct.Memory* %call_43f47f, %struct.Memory** %MEMORY

  ; Code: shlq $0x5, %rdx	 RIP: 43f482	 Bytes: 4
  %loadMem_43f482 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f482 = call %struct.Memory* @routine_shlq__0x5___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f482)
  store %struct.Memory* %call_43f482, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 43f486	 Bytes: 3
  %loadMem_43f486 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f486 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f486)
  store %struct.Memory* %call_43f486, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %esi	 RIP: 43f489	 Bytes: 3
  %loadMem_43f489 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f489 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f489)
  store %struct.Memory* %call_43f489, %struct.Memory** %MEMORY

  ; Code: addl -0x38(%rbp), %esi	 RIP: 43f48c	 Bytes: 3
  %loadMem_43f48c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f48c = call %struct.Memory* @routine_addl_MINUS0x38__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f48c)
  store %struct.Memory* %call_43f48c, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rdx	 RIP: 43f48f	 Bytes: 3
  %loadMem_43f48f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f48f = call %struct.Memory* @routine_movslq__esi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f48f)
  store %struct.Memory* %call_43f48f, %struct.Memory** %MEMORY

  ; Code: movzwl (%rax,%rdx,2), %esi	 RIP: 43f492	 Bytes: 4
  %loadMem_43f492 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f492 = call %struct.Memory* @routine_movzwl___rax__rdx_2____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f492)
  store %struct.Memory* %call_43f492, %struct.Memory** %MEMORY

  ; Code: subl %esi, %ecx	 RIP: 43f496	 Bytes: 2
  %loadMem_43f496 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f496 = call %struct.Memory* @routine_subl__esi___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f496)
  store %struct.Memory* %call_43f496, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 43f498	 Bytes: 8
  %loadMem_43f498 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f498 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f498)
  store %struct.Memory* %call_43f498, %struct.Memory** %MEMORY

  ; Code: addq $0x3338, %rax	 RIP: 43f4a0	 Bytes: 6
  %loadMem_43f4a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f4a0 = call %struct.Memory* @routine_addq__0x3338___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f4a0)
  store %struct.Memory* %call_43f4a0, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %esi	 RIP: 43f4a6	 Bytes: 3
  %loadMem_43f4a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f4a6 = call %struct.Memory* @routine_movl_MINUS0x48__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f4a6)
  store %struct.Memory* %call_43f4a6, %struct.Memory** %MEMORY

  ; Code: addl -0x68(%rbp), %esi	 RIP: 43f4a9	 Bytes: 3
  %loadMem_43f4a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f4a9 = call %struct.Memory* @routine_addl_MINUS0x68__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f4a9)
  store %struct.Memory* %call_43f4a9, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rdx	 RIP: 43f4ac	 Bytes: 3
  %loadMem_43f4ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f4ac = call %struct.Memory* @routine_movslq__esi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f4ac)
  store %struct.Memory* %call_43f4ac, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rdx	 RIP: 43f4af	 Bytes: 4
  %loadMem_43f4af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f4af = call %struct.Memory* @routine_shlq__0x6___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f4af)
  store %struct.Memory* %call_43f4af, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 43f4b3	 Bytes: 3
  %loadMem_43f4b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f4b3 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f4b3)
  store %struct.Memory* %call_43f4b3, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %esi	 RIP: 43f4b6	 Bytes: 3
  %loadMem_43f4b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f4b6 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f4b6)
  store %struct.Memory* %call_43f4b6, %struct.Memory** %MEMORY

  ; Code: addl -0x6c(%rbp), %esi	 RIP: 43f4b9	 Bytes: 3
  %loadMem_43f4b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f4b9 = call %struct.Memory* @routine_addl_MINUS0x6c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f4b9)
  store %struct.Memory* %call_43f4b9, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rdx	 RIP: 43f4bc	 Bytes: 3
  %loadMem_43f4bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f4bc = call %struct.Memory* @routine_movslq__esi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f4bc)
  store %struct.Memory* %call_43f4bc, %struct.Memory** %MEMORY

  ; Code: movl %ecx, (%rax,%rdx,4)	 RIP: 43f4bf	 Bytes: 3
  %loadMem_43f4bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f4bf = call %struct.Memory* @routine_movl__ecx____rax__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f4bf)
  store %struct.Memory* %call_43f4bf, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %eax	 RIP: 43f4c2	 Bytes: 3
  %loadMem_43f4c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f4c2 = call %struct.Memory* @routine_movl_MINUS0x48__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f4c2)
  store %struct.Memory* %call_43f4c2, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 43f4c5	 Bytes: 3
  %loadMem_43f4c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f4c5 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f4c5)
  store %struct.Memory* %call_43f4c5, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x48(%rbp)	 RIP: 43f4c8	 Bytes: 3
  %loadMem_43f4c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f4c8 = call %struct.Memory* @routine_movl__eax__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f4c8)
  store %struct.Memory* %call_43f4c8, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43f43f	 RIP: 43f4cb	 Bytes: 5
  %loadMem_43f4cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f4cb = call %struct.Memory* @routine_jmpq_.L_43f43f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f4cb, i64 -140, i64 5)
  store %struct.Memory* %call_43f4cb, %struct.Memory** %MEMORY

  br label %block_.L_43f43f

  ; Code: .L_43f4d0:	 RIP: 43f4d0	 Bytes: 0
block_.L_43f4d0:

  ; Code: jmpq .L_43f4d5	 RIP: 43f4d0	 Bytes: 5
  %loadMem_43f4d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f4d0 = call %struct.Memory* @routine_jmpq_.L_43f4d5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f4d0, i64 5, i64 5)
  store %struct.Memory* %call_43f4d0, %struct.Memory** %MEMORY

  br label %block_.L_43f4d5

  ; Code: .L_43f4d5:	 RIP: 43f4d5	 Bytes: 0
block_.L_43f4d5:

  ; Code: movl -0x4c(%rbp), %eax	 RIP: 43f4d5	 Bytes: 3
  %loadMem_43f4d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f4d5 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f4d5)
  store %struct.Memory* %call_43f4d5, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 43f4d8	 Bytes: 3
  %loadMem_43f4d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f4d8 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f4d8)
  store %struct.Memory* %call_43f4d8, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4c(%rbp)	 RIP: 43f4db	 Bytes: 3
  %loadMem_43f4db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f4db = call %struct.Memory* @routine_movl__eax__MINUS0x4c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f4db)
  store %struct.Memory* %call_43f4db, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43f42e	 RIP: 43f4de	 Bytes: 5
  %loadMem_43f4de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f4de = call %struct.Memory* @routine_jmpq_.L_43f42e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f4de, i64 -176, i64 5)
  store %struct.Memory* %call_43f4de, %struct.Memory** %MEMORY

  br label %block_.L_43f42e

  ; Code: .L_43f4e3:	 RIP: 43f4e3	 Bytes: 0
block_.L_43f4e3:

  ; Code: jmpq .L_43f4e8	 RIP: 43f4e3	 Bytes: 5
  %loadMem_43f4e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f4e3 = call %struct.Memory* @routine_jmpq_.L_43f4e8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f4e3, i64 5, i64 5)
  store %struct.Memory* %call_43f4e3, %struct.Memory** %MEMORY

  br label %block_.L_43f4e8

  ; Code: .L_43f4e8:	 RIP: 43f4e8	 Bytes: 0
block_.L_43f4e8:

  ; Code: jmpq .L_43f8fc	 RIP: 43f4e8	 Bytes: 5
  %loadMem_43f4e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f4e8 = call %struct.Memory* @routine_jmpq_.L_43f8fc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f4e8, i64 1044, i64 5)
  store %struct.Memory* %call_43f4e8, %struct.Memory** %MEMORY

  br label %block_.L_43f8fc

  ; Code: .L_43f4ed:	 RIP: 43f4ed	 Bytes: 0
block_.L_43f4ed:

  ; Code: movl $0x0, -0x4c(%rbp)	 RIP: 43f4ed	 Bytes: 7
  %loadMem_43f4ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f4ed = call %struct.Memory* @routine_movl__0x0__MINUS0x4c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f4ed)
  store %struct.Memory* %call_43f4ed, %struct.Memory** %MEMORY

  ; Code: .L_43f4f4:	 RIP: 43f4f4	 Bytes: 0
  br label %block_.L_43f4f4
block_.L_43f4f4:

  ; Code: cmpl $0x4, -0x4c(%rbp)	 RIP: 43f4f4	 Bytes: 4
  %loadMem_43f4f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f4f4 = call %struct.Memory* @routine_cmpl__0x4__MINUS0x4c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f4f4)
  store %struct.Memory* %call_43f4f4, %struct.Memory** %MEMORY

  ; Code: jge .L_43f7d3	 RIP: 43f4f8	 Bytes: 6
  %loadMem_43f4f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f4f8 = call %struct.Memory* @routine_jge_.L_43f7d3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f4f8, i8* %BRANCH_TAKEN, i64 731, i64 6, i64 6)
  store %struct.Memory* %call_43f4f8, %struct.Memory** %MEMORY

  %loadBr_43f4f8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f4f8 = icmp eq i8 %loadBr_43f4f8, 1
  br i1 %cmpBr_43f4f8, label %block_.L_43f7d3, label %block_43f4fe

block_43f4fe:
  ; Code: movl $0x0, -0x48(%rbp)	 RIP: 43f4fe	 Bytes: 7
  %loadMem_43f4fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f4fe = call %struct.Memory* @routine_movl__0x0__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f4fe)
  store %struct.Memory* %call_43f4fe, %struct.Memory** %MEMORY

  ; Code: .L_43f505:	 RIP: 43f505	 Bytes: 0
  br label %block_.L_43f505
block_.L_43f505:

  ; Code: cmpl $0x4, -0x48(%rbp)	 RIP: 43f505	 Bytes: 4
  %loadMem_43f505 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f505 = call %struct.Memory* @routine_cmpl__0x4__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f505)
  store %struct.Memory* %call_43f505, %struct.Memory** %MEMORY

  ; Code: jge .L_43f7c0	 RIP: 43f509	 Bytes: 6
  %loadMem_43f509 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f509 = call %struct.Memory* @routine_jge_.L_43f7c0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f509, i8* %BRANCH_TAKEN, i64 695, i64 6, i64 6)
  store %struct.Memory* %call_43f509, %struct.Memory** %MEMORY

  %loadBr_43f509 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f509 = icmp eq i8 %loadBr_43f509, 1
  br i1 %cmpBr_43f509, label %block_.L_43f7c0, label %block_43f50f

block_43f50f:
  ; Code: movq $0x723720, %rax	 RIP: 43f50f	 Bytes: 10
  %loadMem_43f50f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f50f = call %struct.Memory* @routine_movq__0x723720___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f50f)
  store %struct.Memory* %call_43f50f, %struct.Memory** %MEMORY

  ; Code: movq $0x6d40f0, %rcx	 RIP: 43f519	 Bytes: 10
  %loadMem_43f519 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f519 = call %struct.Memory* @routine_movq__0x6d40f0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f519)
  store %struct.Memory* %call_43f519, %struct.Memory** %MEMORY

  ; Code: movq $0x6f6fa0, %rdx	 RIP: 43f523	 Bytes: 10
  %loadMem_43f523 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f523 = call %struct.Memory* @routine_movq__0x6f6fa0___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f523)
  store %struct.Memory* %call_43f523, %struct.Memory** %MEMORY

  ; Code: movq $0x725610, %rsi	 RIP: 43f52d	 Bytes: 10
  %loadMem_43f52d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f52d = call %struct.Memory* @routine_movq__0x725610___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f52d)
  store %struct.Memory* %call_43f52d, %struct.Memory** %MEMORY

  ; Code: movq %rsi, %rdi	 RIP: 43f537	 Bytes: 3
  %loadMem_43f537 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f537 = call %struct.Memory* @routine_movq__rsi___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f537)
  store %struct.Memory* %call_43f537, %struct.Memory** %MEMORY

  ; Code: addq $0x800, %rdi	 RIP: 43f53a	 Bytes: 7
  %loadMem_43f53a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f53a = call %struct.Memory* @routine_addq__0x800___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f53a)
  store %struct.Memory* %call_43f53a, %struct.Memory** %MEMORY

  ; Code: movq %rsi, %r8	 RIP: 43f541	 Bytes: 3
  %loadMem_43f541 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f541 = call %struct.Memory* @routine_movq__rsi___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f541)
  store %struct.Memory* %call_43f541, %struct.Memory** %MEMORY

  ; Code: addq $0x400, %r8	 RIP: 43f544	 Bytes: 7
  %loadMem_43f544 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f544 = call %struct.Memory* @routine_addq__0x400___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f544)
  store %struct.Memory* %call_43f544, %struct.Memory** %MEMORY

  ; Code: movq 0x6f6f90, %r9	 RIP: 43f54b	 Bytes: 8
  %loadMem_43f54b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f54b = call %struct.Memory* @routine_movq_0x6f6f90___r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f54b)
  store %struct.Memory* %call_43f54b, %struct.Memory** %MEMORY

  ; Code: movq (%r9), %r9	 RIP: 43f553	 Bytes: 3
  %loadMem_43f553 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f553 = call %struct.Memory* @routine_movq___r9____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f553)
  store %struct.Memory* %call_43f553, %struct.Memory** %MEMORY

  ; Code: movl -0x40(%rbp), %r10d	 RIP: 43f556	 Bytes: 4
  %loadMem_43f556 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f556 = call %struct.Memory* @routine_movl_MINUS0x40__rbp____r10d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f556)
  store %struct.Memory* %call_43f556, %struct.Memory** %MEMORY

  ; Code: addl -0x4c(%rbp), %r10d	 RIP: 43f55a	 Bytes: 4
  %loadMem_43f55a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f55a = call %struct.Memory* @routine_addl_MINUS0x4c__rbp____r10d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f55a)
  store %struct.Memory* %call_43f55a, %struct.Memory** %MEMORY

  ; Code: movslq %r10d, %r11	 RIP: 43f55e	 Bytes: 3
  %loadMem_43f55e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f55e = call %struct.Memory* @routine_movslq__r10d___r11(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f55e)
  store %struct.Memory* %call_43f55e, %struct.Memory** %MEMORY

  ; Code: movq (%r9,%r11,8), %r9	 RIP: 43f561	 Bytes: 4
  %loadMem_43f561 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f561 = call %struct.Memory* @routine_movq___r9__r11_8____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f561)
  store %struct.Memory* %call_43f561, %struct.Memory** %MEMORY

  ; Code: movl -0x44(%rbp), %r10d	 RIP: 43f565	 Bytes: 4
  %loadMem_43f565 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f565 = call %struct.Memory* @routine_movl_MINUS0x44__rbp____r10d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f565)
  store %struct.Memory* %call_43f565, %struct.Memory** %MEMORY

  ; Code: addl -0x48(%rbp), %r10d	 RIP: 43f569	 Bytes: 4
  %loadMem_43f569 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f569 = call %struct.Memory* @routine_addl_MINUS0x48__rbp____r10d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f569)
  store %struct.Memory* %call_43f569, %struct.Memory** %MEMORY

  ; Code: movslq %r10d, %r11	 RIP: 43f56d	 Bytes: 3
  %loadMem_43f56d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f56d = call %struct.Memory* @routine_movslq__r10d___r11(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f56d)
  store %struct.Memory* %call_43f56d, %struct.Memory** %MEMORY

  ; Code: movzwl (%r9,%r11,2), %r10d	 RIP: 43f570	 Bytes: 5
  %loadMem_43f570 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f570 = call %struct.Memory* @routine_movzwl___r9__r11_2____r10d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f570)
  store %struct.Memory* %call_43f570, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %ebx	 RIP: 43f575	 Bytes: 3
  %loadMem_43f575 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f575 = call %struct.Memory* @routine_movl_MINUS0x48__rbp____ebx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f575)
  store %struct.Memory* %call_43f575, %struct.Memory** %MEMORY

  ; Code: addl -0x3c(%rbp), %ebx	 RIP: 43f578	 Bytes: 3
  %loadMem_43f578 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f578 = call %struct.Memory* @routine_addl_MINUS0x3c__rbp____ebx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f578)
  store %struct.Memory* %call_43f578, %struct.Memory** %MEMORY

  ; Code: movslq %ebx, %r9	 RIP: 43f57b	 Bytes: 3
  %loadMem_43f57b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f57b = call %struct.Memory* @routine_movslq__ebx___r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f57b)
  store %struct.Memory* %call_43f57b, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %r9	 RIP: 43f57e	 Bytes: 4
  %loadMem_43f57e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f57e = call %struct.Memory* @routine_shlq__0x6___r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f57e)
  store %struct.Memory* %call_43f57e, %struct.Memory** %MEMORY

  ; Code: addq %r9, %r8	 RIP: 43f582	 Bytes: 3
  %loadMem_43f582 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f582 = call %struct.Memory* @routine_addq__r9___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f582)
  store %struct.Memory* %call_43f582, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %ebx	 RIP: 43f585	 Bytes: 3
  %loadMem_43f585 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f585 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____ebx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f585)
  store %struct.Memory* %call_43f585, %struct.Memory** %MEMORY

  ; Code: addl -0x38(%rbp), %ebx	 RIP: 43f588	 Bytes: 3
  %loadMem_43f588 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f588 = call %struct.Memory* @routine_addl_MINUS0x38__rbp____ebx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f588)
  store %struct.Memory* %call_43f588, %struct.Memory** %MEMORY

  ; Code: movslq %ebx, %r9	 RIP: 43f58b	 Bytes: 3
  %loadMem_43f58b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f58b = call %struct.Memory* @routine_movslq__ebx___r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f58b)
  store %struct.Memory* %call_43f58b, %struct.Memory** %MEMORY

  ; Code: subl (%r8,%r9,4), %r10d	 RIP: 43f58e	 Bytes: 4
  %loadMem_43f58e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f58e = call %struct.Memory* @routine_subl___r8__r9_4____r10d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f58e)
  store %struct.Memory* %call_43f58e, %struct.Memory** %MEMORY

  ; Code: movl %r10d, -0x90(%rbp)	 RIP: 43f592	 Bytes: 7
  %loadMem_43f592 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f592 = call %struct.Memory* @routine_movl__r10d__MINUS0x90__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f592)
  store %struct.Memory* %call_43f592, %struct.Memory** %MEMORY

  ; Code: movq 0x726418, %r8	 RIP: 43f599	 Bytes: 8
  %loadMem_43f599 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f599 = call %struct.Memory* @routine_movq_0x726418___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f599)
  store %struct.Memory* %call_43f599, %struct.Memory** %MEMORY

  ; Code: movl -0x40(%rbp), %r10d	 RIP: 43f5a1	 Bytes: 4
  %loadMem_43f5a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f5a1 = call %struct.Memory* @routine_movl_MINUS0x40__rbp____r10d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f5a1)
  store %struct.Memory* %call_43f5a1, %struct.Memory** %MEMORY

  ; Code: addl -0x4c(%rbp), %r10d	 RIP: 43f5a5	 Bytes: 4
  %loadMem_43f5a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f5a5 = call %struct.Memory* @routine_addl_MINUS0x4c__rbp____r10d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f5a5)
  store %struct.Memory* %call_43f5a5, %struct.Memory** %MEMORY

  ; Code: movslq %r10d, %r9	 RIP: 43f5a9	 Bytes: 3
  %loadMem_43f5a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f5a9 = call %struct.Memory* @routine_movslq__r10d___r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f5a9)
  store %struct.Memory* %call_43f5a9, %struct.Memory** %MEMORY

  ; Code: movq (%r8,%r9,8), %r8	 RIP: 43f5ac	 Bytes: 4
  %loadMem_43f5ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f5ac = call %struct.Memory* @routine_movq___r8__r9_8____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f5ac)
  store %struct.Memory* %call_43f5ac, %struct.Memory** %MEMORY

  ; Code: movl -0x44(%rbp), %r10d	 RIP: 43f5b0	 Bytes: 4
  %loadMem_43f5b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f5b0 = call %struct.Memory* @routine_movl_MINUS0x44__rbp____r10d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f5b0)
  store %struct.Memory* %call_43f5b0, %struct.Memory** %MEMORY

  ; Code: addl -0x48(%rbp), %r10d	 RIP: 43f5b4	 Bytes: 4
  %loadMem_43f5b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f5b4 = call %struct.Memory* @routine_addl_MINUS0x48__rbp____r10d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f5b4)
  store %struct.Memory* %call_43f5b4, %struct.Memory** %MEMORY

  ; Code: movslq %r10d, %r9	 RIP: 43f5b8	 Bytes: 3
  %loadMem_43f5b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f5b8 = call %struct.Memory* @routine_movslq__r10d___r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f5b8)
  store %struct.Memory* %call_43f5b8, %struct.Memory** %MEMORY

  ; Code: movzwl (%r8,%r9,2), %r10d	 RIP: 43f5bb	 Bytes: 5
  %loadMem_43f5bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f5bb = call %struct.Memory* @routine_movzwl___r8__r9_2____r10d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f5bb)
  store %struct.Memory* %call_43f5bb, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %ebx	 RIP: 43f5c0	 Bytes: 3
  %loadMem_43f5c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f5c0 = call %struct.Memory* @routine_movl_MINUS0x48__rbp____ebx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f5c0)
  store %struct.Memory* %call_43f5c0, %struct.Memory** %MEMORY

  ; Code: addl -0x3c(%rbp), %ebx	 RIP: 43f5c3	 Bytes: 3
  %loadMem_43f5c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f5c3 = call %struct.Memory* @routine_addl_MINUS0x3c__rbp____ebx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f5c3)
  store %struct.Memory* %call_43f5c3, %struct.Memory** %MEMORY

  ; Code: movslq %ebx, %r8	 RIP: 43f5c6	 Bytes: 3
  %loadMem_43f5c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f5c6 = call %struct.Memory* @routine_movslq__ebx___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f5c6)
  store %struct.Memory* %call_43f5c6, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %r8	 RIP: 43f5c9	 Bytes: 4
  %loadMem_43f5c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f5c9 = call %struct.Memory* @routine_shlq__0x6___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f5c9)
  store %struct.Memory* %call_43f5c9, %struct.Memory** %MEMORY

  ; Code: addq %r8, %rsi	 RIP: 43f5cd	 Bytes: 3
  %loadMem_43f5cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f5cd = call %struct.Memory* @routine_addq__r8___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f5cd)
  store %struct.Memory* %call_43f5cd, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %ebx	 RIP: 43f5d0	 Bytes: 3
  %loadMem_43f5d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f5d0 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____ebx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f5d0)
  store %struct.Memory* %call_43f5d0, %struct.Memory** %MEMORY

  ; Code: addl -0x38(%rbp), %ebx	 RIP: 43f5d3	 Bytes: 3
  %loadMem_43f5d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f5d3 = call %struct.Memory* @routine_addl_MINUS0x38__rbp____ebx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f5d3)
  store %struct.Memory* %call_43f5d3, %struct.Memory** %MEMORY

  ; Code: movslq %ebx, %r8	 RIP: 43f5d6	 Bytes: 3
  %loadMem_43f5d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f5d6 = call %struct.Memory* @routine_movslq__ebx___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f5d6)
  store %struct.Memory* %call_43f5d6, %struct.Memory** %MEMORY

  ; Code: subl (%rsi,%r8,4), %r10d	 RIP: 43f5d9	 Bytes: 4
  %loadMem_43f5d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f5d9 = call %struct.Memory* @routine_subl___rsi__r8_4____r10d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f5d9)
  store %struct.Memory* %call_43f5d9, %struct.Memory** %MEMORY

  ; Code: movl %r10d, -0x8c(%rbp)	 RIP: 43f5dd	 Bytes: 7
  %loadMem_43f5dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f5dd = call %struct.Memory* @routine_movl__r10d__MINUS0x8c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f5dd)
  store %struct.Memory* %call_43f5dd, %struct.Memory** %MEMORY

  ; Code: movq 0x6f6f90, %rsi	 RIP: 43f5e4	 Bytes: 8
  %loadMem_43f5e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f5e4 = call %struct.Memory* @routine_movq_0x6f6f90___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f5e4)
  store %struct.Memory* %call_43f5e4, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rsi), %rsi	 RIP: 43f5ec	 Bytes: 4
  %loadMem_43f5ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f5ec = call %struct.Memory* @routine_movq_0x8__rsi____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f5ec)
  store %struct.Memory* %call_43f5ec, %struct.Memory** %MEMORY

  ; Code: movl -0x40(%rbp), %r10d	 RIP: 43f5f0	 Bytes: 4
  %loadMem_43f5f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f5f0 = call %struct.Memory* @routine_movl_MINUS0x40__rbp____r10d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f5f0)
  store %struct.Memory* %call_43f5f0, %struct.Memory** %MEMORY

  ; Code: addl -0x4c(%rbp), %r10d	 RIP: 43f5f4	 Bytes: 4
  %loadMem_43f5f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f5f4 = call %struct.Memory* @routine_addl_MINUS0x4c__rbp____r10d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f5f4)
  store %struct.Memory* %call_43f5f4, %struct.Memory** %MEMORY

  ; Code: movslq %r10d, %r8	 RIP: 43f5f8	 Bytes: 3
  %loadMem_43f5f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f5f8 = call %struct.Memory* @routine_movslq__r10d___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f5f8)
  store %struct.Memory* %call_43f5f8, %struct.Memory** %MEMORY

  ; Code: movq (%rsi,%r8,8), %rsi	 RIP: 43f5fb	 Bytes: 4
  %loadMem_43f5fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f5fb = call %struct.Memory* @routine_movq___rsi__r8_8____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f5fb)
  store %struct.Memory* %call_43f5fb, %struct.Memory** %MEMORY

  ; Code: movl -0x44(%rbp), %r10d	 RIP: 43f5ff	 Bytes: 4
  %loadMem_43f5ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f5ff = call %struct.Memory* @routine_movl_MINUS0x44__rbp____r10d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f5ff)
  store %struct.Memory* %call_43f5ff, %struct.Memory** %MEMORY

  ; Code: addl -0x48(%rbp), %r10d	 RIP: 43f603	 Bytes: 4
  %loadMem_43f603 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f603 = call %struct.Memory* @routine_addl_MINUS0x48__rbp____r10d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f603)
  store %struct.Memory* %call_43f603, %struct.Memory** %MEMORY

  ; Code: movslq %r10d, %r8	 RIP: 43f607	 Bytes: 3
  %loadMem_43f607 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f607 = call %struct.Memory* @routine_movslq__r10d___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f607)
  store %struct.Memory* %call_43f607, %struct.Memory** %MEMORY

  ; Code: movzwl (%rsi,%r8,2), %r10d	 RIP: 43f60a	 Bytes: 5
  %loadMem_43f60a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f60a = call %struct.Memory* @routine_movzwl___rsi__r8_2____r10d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f60a)
  store %struct.Memory* %call_43f60a, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %ebx	 RIP: 43f60f	 Bytes: 3
  %loadMem_43f60f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f60f = call %struct.Memory* @routine_movl_MINUS0x48__rbp____ebx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f60f)
  store %struct.Memory* %call_43f60f, %struct.Memory** %MEMORY

  ; Code: addl -0x3c(%rbp), %ebx	 RIP: 43f612	 Bytes: 3
  %loadMem_43f612 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f612 = call %struct.Memory* @routine_addl_MINUS0x3c__rbp____ebx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f612)
  store %struct.Memory* %call_43f612, %struct.Memory** %MEMORY

  ; Code: movslq %ebx, %rsi	 RIP: 43f615	 Bytes: 3
  %loadMem_43f615 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f615 = call %struct.Memory* @routine_movslq__ebx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f615)
  store %struct.Memory* %call_43f615, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rsi	 RIP: 43f618	 Bytes: 4
  %loadMem_43f618 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f618 = call %struct.Memory* @routine_shlq__0x6___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f618)
  store %struct.Memory* %call_43f618, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rdi	 RIP: 43f61c	 Bytes: 3
  %loadMem_43f61c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f61c = call %struct.Memory* @routine_addq__rsi___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f61c)
  store %struct.Memory* %call_43f61c, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %ebx	 RIP: 43f61f	 Bytes: 3
  %loadMem_43f61f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f61f = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____ebx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f61f)
  store %struct.Memory* %call_43f61f, %struct.Memory** %MEMORY

  ; Code: addl -0x38(%rbp), %ebx	 RIP: 43f622	 Bytes: 3
  %loadMem_43f622 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f622 = call %struct.Memory* @routine_addl_MINUS0x38__rbp____ebx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f622)
  store %struct.Memory* %call_43f622, %struct.Memory** %MEMORY

  ; Code: movslq %ebx, %rsi	 RIP: 43f625	 Bytes: 3
  %loadMem_43f625 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f625 = call %struct.Memory* @routine_movslq__ebx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f625)
  store %struct.Memory* %call_43f625, %struct.Memory** %MEMORY

  ; Code: subl (%rdi,%rsi,4), %r10d	 RIP: 43f628	 Bytes: 4
  %loadMem_43f628 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f628 = call %struct.Memory* @routine_subl___rdi__rsi_4____r10d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f628)
  store %struct.Memory* %call_43f628, %struct.Memory** %MEMORY

  ; Code: movl %r10d, -0x88(%rbp)	 RIP: 43f62c	 Bytes: 7
  %loadMem_43f62c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f62c = call %struct.Memory* @routine_movl__r10d__MINUS0x88__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f62c)
  store %struct.Memory* %call_43f62c, %struct.Memory** %MEMORY

  ; Code: movl -0x88(%rbp), %r10d	 RIP: 43f633	 Bytes: 7
  %loadMem_43f633 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f633 = call %struct.Memory* @routine_movl_MINUS0x88__rbp____r10d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f633)
  store %struct.Memory* %call_43f633, %struct.Memory** %MEMORY

  ; Code: subl -0x90(%rbp), %r10d	 RIP: 43f63a	 Bytes: 7
  %loadMem_43f63a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f63a = call %struct.Memory* @routine_subl_MINUS0x90__rbp____r10d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f63a)
  store %struct.Memory* %call_43f63a, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %ebx	 RIP: 43f641	 Bytes: 3
  %loadMem_43f641 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f641 = call %struct.Memory* @routine_movl_MINUS0x48__rbp____ebx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f641)
  store %struct.Memory* %call_43f641, %struct.Memory** %MEMORY

  ; Code: addl -0x3c(%rbp), %ebx	 RIP: 43f644	 Bytes: 3
  %loadMem_43f644 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f644 = call %struct.Memory* @routine_addl_MINUS0x3c__rbp____ebx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f644)
  store %struct.Memory* %call_43f644, %struct.Memory** %MEMORY

  ; Code: movslq %ebx, %rsi	 RIP: 43f647	 Bytes: 3
  %loadMem_43f647 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f647 = call %struct.Memory* @routine_movslq__ebx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f647)
  store %struct.Memory* %call_43f647, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rsi	 RIP: 43f64a	 Bytes: 4
  %loadMem_43f64a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f64a = call %struct.Memory* @routine_shlq__0x6___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f64a)
  store %struct.Memory* %call_43f64a, %struct.Memory** %MEMORY

  ; Code: movq %rdx, %rdi	 RIP: 43f64e	 Bytes: 3
  %loadMem_43f64e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f64e = call %struct.Memory* @routine_movq__rdx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f64e)
  store %struct.Memory* %call_43f64e, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rdi	 RIP: 43f651	 Bytes: 3
  %loadMem_43f651 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f651 = call %struct.Memory* @routine_addq__rsi___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f651)
  store %struct.Memory* %call_43f651, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %ebx	 RIP: 43f654	 Bytes: 3
  %loadMem_43f654 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f654 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____ebx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f654)
  store %struct.Memory* %call_43f654, %struct.Memory** %MEMORY

  ; Code: addl -0x38(%rbp), %ebx	 RIP: 43f657	 Bytes: 3
  %loadMem_43f657 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f657 = call %struct.Memory* @routine_addl_MINUS0x38__rbp____ebx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f657)
  store %struct.Memory* %call_43f657, %struct.Memory** %MEMORY

  ; Code: movslq %ebx, %rsi	 RIP: 43f65a	 Bytes: 3
  %loadMem_43f65a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f65a = call %struct.Memory* @routine_movslq__ebx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f65a)
  store %struct.Memory* %call_43f65a, %struct.Memory** %MEMORY

  ; Code: movl %r10d, (%rdi,%rsi,4)	 RIP: 43f65d	 Bytes: 4
  %loadMem_43f65d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f65d = call %struct.Memory* @routine_movl__r10d____rdi__rsi_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f65d)
  store %struct.Memory* %call_43f65d, %struct.Memory** %MEMORY

  ; Code: movl -0x90(%rbp), %r10d	 RIP: 43f661	 Bytes: 7
  %loadMem_43f661 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f661 = call %struct.Memory* @routine_movl_MINUS0x90__rbp____r10d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f661)
  store %struct.Memory* %call_43f661, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %ebx	 RIP: 43f668	 Bytes: 3
  %loadMem_43f668 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f668 = call %struct.Memory* @routine_movl_MINUS0x48__rbp____ebx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f668)
  store %struct.Memory* %call_43f668, %struct.Memory** %MEMORY

  ; Code: addl -0x3c(%rbp), %ebx	 RIP: 43f66b	 Bytes: 3
  %loadMem_43f66b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f66b = call %struct.Memory* @routine_addl_MINUS0x3c__rbp____ebx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f66b)
  store %struct.Memory* %call_43f66b, %struct.Memory** %MEMORY

  ; Code: movslq %ebx, %rsi	 RIP: 43f66e	 Bytes: 3
  %loadMem_43f66e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f66e = call %struct.Memory* @routine_movslq__ebx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f66e)
  store %struct.Memory* %call_43f66e, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rsi	 RIP: 43f671	 Bytes: 4
  %loadMem_43f671 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f671 = call %struct.Memory* @routine_shlq__0x6___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f671)
  store %struct.Memory* %call_43f671, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rdx	 RIP: 43f675	 Bytes: 3
  %loadMem_43f675 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f675 = call %struct.Memory* @routine_addq__rsi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f675)
  store %struct.Memory* %call_43f675, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %ebx	 RIP: 43f678	 Bytes: 3
  %loadMem_43f678 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f678 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____ebx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f678)
  store %struct.Memory* %call_43f678, %struct.Memory** %MEMORY

  ; Code: addl -0x38(%rbp), %ebx	 RIP: 43f67b	 Bytes: 3
  %loadMem_43f67b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f67b = call %struct.Memory* @routine_addl_MINUS0x38__rbp____ebx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f67b)
  store %struct.Memory* %call_43f67b, %struct.Memory** %MEMORY

  ; Code: movslq %ebx, %rsi	 RIP: 43f67e	 Bytes: 3
  %loadMem_43f67e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f67e = call %struct.Memory* @routine_movslq__ebx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f67e)
  store %struct.Memory* %call_43f67e, %struct.Memory** %MEMORY

  ; Code: movl (%rdx,%rsi,4), %ebx	 RIP: 43f681	 Bytes: 3
  %loadMem_43f681 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f681 = call %struct.Memory* @routine_movl___rdx__rsi_4____ebx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f681)
  store %struct.Memory* %call_43f681, %struct.Memory** %MEMORY

  ; Code: sarl $0x1, %ebx	 RIP: 43f684	 Bytes: 3
  %loadMem_43f684 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f684 = call %struct.Memory* @routine_sarl__0x1___ebx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f684)
  store %struct.Memory* %call_43f684, %struct.Memory** %MEMORY

  ; Code: addl %ebx, %r10d	 RIP: 43f687	 Bytes: 3
  %loadMem_43f687 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f687 = call %struct.Memory* @routine_addl__ebx___r10d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f687)
  store %struct.Memory* %call_43f687, %struct.Memory** %MEMORY

  ; Code: movl %r10d, -0x94(%rbp)	 RIP: 43f68a	 Bytes: 7
  %loadMem_43f68a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f68a = call %struct.Memory* @routine_movl__r10d__MINUS0x94__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f68a)
  store %struct.Memory* %call_43f68a, %struct.Memory** %MEMORY

  ; Code: movl -0x8c(%rbp), %r10d	 RIP: 43f691	 Bytes: 7
  %loadMem_43f691 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f691 = call %struct.Memory* @routine_movl_MINUS0x8c__rbp____r10d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f691)
  store %struct.Memory* %call_43f691, %struct.Memory** %MEMORY

  ; Code: subl -0x94(%rbp), %r10d	 RIP: 43f698	 Bytes: 7
  %loadMem_43f698 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f698 = call %struct.Memory* @routine_subl_MINUS0x94__rbp____r10d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f698)
  store %struct.Memory* %call_43f698, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %ebx	 RIP: 43f69f	 Bytes: 3
  %loadMem_43f69f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f69f = call %struct.Memory* @routine_movl_MINUS0x48__rbp____ebx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f69f)
  store %struct.Memory* %call_43f69f, %struct.Memory** %MEMORY

  ; Code: addl -0x3c(%rbp), %ebx	 RIP: 43f6a2	 Bytes: 3
  %loadMem_43f6a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f6a2 = call %struct.Memory* @routine_addl_MINUS0x3c__rbp____ebx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f6a2)
  store %struct.Memory* %call_43f6a2, %struct.Memory** %MEMORY

  ; Code: movslq %ebx, %rdx	 RIP: 43f6a5	 Bytes: 3
  %loadMem_43f6a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f6a5 = call %struct.Memory* @routine_movslq__ebx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f6a5)
  store %struct.Memory* %call_43f6a5, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rdx	 RIP: 43f6a8	 Bytes: 4
  %loadMem_43f6a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f6a8 = call %struct.Memory* @routine_shlq__0x6___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f6a8)
  store %struct.Memory* %call_43f6a8, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rsi	 RIP: 43f6ac	 Bytes: 3
  %loadMem_43f6ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f6ac = call %struct.Memory* @routine_movq__rcx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f6ac)
  store %struct.Memory* %call_43f6ac, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rsi	 RIP: 43f6af	 Bytes: 3
  %loadMem_43f6af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f6af = call %struct.Memory* @routine_addq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f6af)
  store %struct.Memory* %call_43f6af, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %ebx	 RIP: 43f6b2	 Bytes: 3
  %loadMem_43f6b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f6b2 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____ebx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f6b2)
  store %struct.Memory* %call_43f6b2, %struct.Memory** %MEMORY

  ; Code: addl -0x38(%rbp), %ebx	 RIP: 43f6b5	 Bytes: 3
  %loadMem_43f6b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f6b5 = call %struct.Memory* @routine_addl_MINUS0x38__rbp____ebx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f6b5)
  store %struct.Memory* %call_43f6b5, %struct.Memory** %MEMORY

  ; Code: movslq %ebx, %rdx	 RIP: 43f6b8	 Bytes: 3
  %loadMem_43f6b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f6b8 = call %struct.Memory* @routine_movslq__ebx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f6b8)
  store %struct.Memory* %call_43f6b8, %struct.Memory** %MEMORY

  ; Code: movl %r10d, (%rsi,%rdx,4)	 RIP: 43f6bb	 Bytes: 4
  %loadMem_43f6bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f6bb = call %struct.Memory* @routine_movl__r10d____rsi__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f6bb)
  store %struct.Memory* %call_43f6bb, %struct.Memory** %MEMORY

  ; Code: movl -0x94(%rbp), %r10d	 RIP: 43f6bf	 Bytes: 7
  %loadMem_43f6bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f6bf = call %struct.Memory* @routine_movl_MINUS0x94__rbp____r10d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f6bf)
  store %struct.Memory* %call_43f6bf, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %ebx	 RIP: 43f6c6	 Bytes: 3
  %loadMem_43f6c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f6c6 = call %struct.Memory* @routine_movl_MINUS0x48__rbp____ebx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f6c6)
  store %struct.Memory* %call_43f6c6, %struct.Memory** %MEMORY

  ; Code: addl -0x3c(%rbp), %ebx	 RIP: 43f6c9	 Bytes: 3
  %loadMem_43f6c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f6c9 = call %struct.Memory* @routine_addl_MINUS0x3c__rbp____ebx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f6c9)
  store %struct.Memory* %call_43f6c9, %struct.Memory** %MEMORY

  ; Code: movslq %ebx, %rdx	 RIP: 43f6cc	 Bytes: 3
  %loadMem_43f6cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f6cc = call %struct.Memory* @routine_movslq__ebx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f6cc)
  store %struct.Memory* %call_43f6cc, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rdx	 RIP: 43f6cf	 Bytes: 4
  %loadMem_43f6cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f6cf = call %struct.Memory* @routine_shlq__0x6___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f6cf)
  store %struct.Memory* %call_43f6cf, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 43f6d3	 Bytes: 3
  %loadMem_43f6d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f6d3 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f6d3)
  store %struct.Memory* %call_43f6d3, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %ebx	 RIP: 43f6d6	 Bytes: 3
  %loadMem_43f6d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f6d6 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____ebx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f6d6)
  store %struct.Memory* %call_43f6d6, %struct.Memory** %MEMORY

  ; Code: addl -0x38(%rbp), %ebx	 RIP: 43f6d9	 Bytes: 3
  %loadMem_43f6d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f6d9 = call %struct.Memory* @routine_addl_MINUS0x38__rbp____ebx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f6d9)
  store %struct.Memory* %call_43f6d9, %struct.Memory** %MEMORY

  ; Code: movslq %ebx, %rdx	 RIP: 43f6dc	 Bytes: 3
  %loadMem_43f6dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f6dc = call %struct.Memory* @routine_movslq__ebx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f6dc)
  store %struct.Memory* %call_43f6dc, %struct.Memory** %MEMORY

  ; Code: movl (%rcx,%rdx,4), %ebx	 RIP: 43f6df	 Bytes: 3
  %loadMem_43f6df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f6df = call %struct.Memory* @routine_movl___rcx__rdx_4____ebx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f6df)
  store %struct.Memory* %call_43f6df, %struct.Memory** %MEMORY

  ; Code: sarl $0x1, %ebx	 RIP: 43f6e2	 Bytes: 3
  %loadMem_43f6e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f6e2 = call %struct.Memory* @routine_sarl__0x1___ebx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f6e2)
  store %struct.Memory* %call_43f6e2, %struct.Memory** %MEMORY

  ; Code: addl %ebx, %r10d	 RIP: 43f6e5	 Bytes: 3
  %loadMem_43f6e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f6e5 = call %struct.Memory* @routine_addl__ebx___r10d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f6e5)
  store %struct.Memory* %call_43f6e5, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %ebx	 RIP: 43f6e8	 Bytes: 3
  %loadMem_43f6e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f6e8 = call %struct.Memory* @routine_movl_MINUS0x48__rbp____ebx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f6e8)
  store %struct.Memory* %call_43f6e8, %struct.Memory** %MEMORY

  ; Code: addl -0x3c(%rbp), %ebx	 RIP: 43f6eb	 Bytes: 3
  %loadMem_43f6eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f6eb = call %struct.Memory* @routine_addl_MINUS0x3c__rbp____ebx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f6eb)
  store %struct.Memory* %call_43f6eb, %struct.Memory** %MEMORY

  ; Code: movslq %ebx, %rcx	 RIP: 43f6ee	 Bytes: 3
  %loadMem_43f6ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f6ee = call %struct.Memory* @routine_movslq__ebx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f6ee)
  store %struct.Memory* %call_43f6ee, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rcx	 RIP: 43f6f1	 Bytes: 4
  %loadMem_43f6f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f6f1 = call %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f6f1)
  store %struct.Memory* %call_43f6f1, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 43f6f5	 Bytes: 3
  %loadMem_43f6f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f6f5 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f6f5)
  store %struct.Memory* %call_43f6f5, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %ebx	 RIP: 43f6f8	 Bytes: 3
  %loadMem_43f6f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f6f8 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____ebx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f6f8)
  store %struct.Memory* %call_43f6f8, %struct.Memory** %MEMORY

  ; Code: addl -0x38(%rbp), %ebx	 RIP: 43f6fb	 Bytes: 3
  %loadMem_43f6fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f6fb = call %struct.Memory* @routine_addl_MINUS0x38__rbp____ebx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f6fb)
  store %struct.Memory* %call_43f6fb, %struct.Memory** %MEMORY

  ; Code: movslq %ebx, %rcx	 RIP: 43f6fe	 Bytes: 3
  %loadMem_43f6fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f6fe = call %struct.Memory* @routine_movslq__ebx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f6fe)
  store %struct.Memory* %call_43f6fe, %struct.Memory** %MEMORY

  ; Code: movl %r10d, (%rax,%rcx,4)	 RIP: 43f701	 Bytes: 4
  %loadMem_43f701 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f701 = call %struct.Memory* @routine_movl__r10d____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f701)
  store %struct.Memory* %call_43f701, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0x84(%rbp)	 RIP: 43f705	 Bytes: 7
  %loadMem_43f705 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f705 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x84__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f705)
  store %struct.Memory* %call_43f705, %struct.Memory** %MEMORY

  ; Code: jne .L_43f75d	 RIP: 43f70c	 Bytes: 6
  %loadMem_43f70c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f70c = call %struct.Memory* @routine_jne_.L_43f75d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f70c, i8* %BRANCH_TAKEN, i64 81, i64 6, i64 6)
  store %struct.Memory* %call_43f70c, %struct.Memory** %MEMORY

  %loadBr_43f70c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f70c = icmp eq i8 %loadBr_43f70c, 1
  br i1 %cmpBr_43f70c, label %block_.L_43f75d, label %block_43f712

block_43f712:
  ; Code: movq $0x723720, %rax	 RIP: 43f712	 Bytes: 10
  %loadMem_43f712 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f712 = call %struct.Memory* @routine_movq__0x723720___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f712)
  store %struct.Memory* %call_43f712, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %ecx	 RIP: 43f71c	 Bytes: 3
  %loadMem_43f71c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f71c = call %struct.Memory* @routine_movl_MINUS0x48__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f71c)
  store %struct.Memory* %call_43f71c, %struct.Memory** %MEMORY

  ; Code: addl -0x3c(%rbp), %ecx	 RIP: 43f71f	 Bytes: 3
  %loadMem_43f71f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f71f = call %struct.Memory* @routine_addl_MINUS0x3c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f71f)
  store %struct.Memory* %call_43f71f, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 43f722	 Bytes: 3
  %loadMem_43f722 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f722 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f722)
  store %struct.Memory* %call_43f722, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rdx	 RIP: 43f725	 Bytes: 4
  %loadMem_43f725 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f725 = call %struct.Memory* @routine_shlq__0x6___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f725)
  store %struct.Memory* %call_43f725, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 43f729	 Bytes: 3
  %loadMem_43f729 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f729 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f729)
  store %struct.Memory* %call_43f729, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %ecx	 RIP: 43f72c	 Bytes: 3
  %loadMem_43f72c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f72c = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f72c)
  store %struct.Memory* %call_43f72c, %struct.Memory** %MEMORY

  ; Code: addl -0x38(%rbp), %ecx	 RIP: 43f72f	 Bytes: 3
  %loadMem_43f72f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f72f = call %struct.Memory* @routine_addl_MINUS0x38__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f72f)
  store %struct.Memory* %call_43f72f, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 43f732	 Bytes: 3
  %loadMem_43f732 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f732 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f732)
  store %struct.Memory* %call_43f732, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rdx,4), %ecx	 RIP: 43f735	 Bytes: 3
  %loadMem_43f735 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f735 = call %struct.Memory* @routine_movl___rax__rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f735)
  store %struct.Memory* %call_43f735, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 43f738	 Bytes: 8
  %loadMem_43f738 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f738 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f738)
  store %struct.Memory* %call_43f738, %struct.Memory** %MEMORY

  ; Code: addq $0x3338, %rax	 RIP: 43f740	 Bytes: 6
  %loadMem_43f740 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f740 = call %struct.Memory* @routine_addq__0x3338___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f740)
  store %struct.Memory* %call_43f740, %struct.Memory** %MEMORY

  ; Code: movslq -0x48(%rbp), %rdx	 RIP: 43f746	 Bytes: 4
  %loadMem_43f746 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f746 = call %struct.Memory* @routine_movslq_MINUS0x48__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f746)
  store %struct.Memory* %call_43f746, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rdx	 RIP: 43f74a	 Bytes: 4
  %loadMem_43f74a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f74a = call %struct.Memory* @routine_shlq__0x6___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f74a)
  store %struct.Memory* %call_43f74a, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 43f74e	 Bytes: 3
  %loadMem_43f74e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f74e = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f74e)
  store %struct.Memory* %call_43f74e, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %rdx	 RIP: 43f751	 Bytes: 4
  %loadMem_43f751 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f751 = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f751)
  store %struct.Memory* %call_43f751, %struct.Memory** %MEMORY

  ; Code: movl %ecx, (%rax,%rdx,4)	 RIP: 43f755	 Bytes: 3
  %loadMem_43f755 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f755 = call %struct.Memory* @routine_movl__ecx____rax__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f755)
  store %struct.Memory* %call_43f755, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43f7ad	 RIP: 43f758	 Bytes: 5
  %loadMem_43f758 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f758 = call %struct.Memory* @routine_jmpq_.L_43f7ad(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f758, i64 85, i64 5)
  store %struct.Memory* %call_43f758, %struct.Memory** %MEMORY

  br label %block_.L_43f7ad

  ; Code: .L_43f75d:	 RIP: 43f75d	 Bytes: 0
block_.L_43f75d:

  ; Code: movq $0x723720, %rax	 RIP: 43f75d	 Bytes: 10
  %loadMem_43f75d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f75d = call %struct.Memory* @routine_movq__0x723720___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f75d)
  store %struct.Memory* %call_43f75d, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %ecx	 RIP: 43f767	 Bytes: 3
  %loadMem_43f767 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f767 = call %struct.Memory* @routine_movl_MINUS0x48__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f767)
  store %struct.Memory* %call_43f767, %struct.Memory** %MEMORY

  ; Code: addl -0x3c(%rbp), %ecx	 RIP: 43f76a	 Bytes: 3
  %loadMem_43f76a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f76a = call %struct.Memory* @routine_addl_MINUS0x3c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f76a)
  store %struct.Memory* %call_43f76a, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 43f76d	 Bytes: 3
  %loadMem_43f76d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f76d = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f76d)
  store %struct.Memory* %call_43f76d, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rdx	 RIP: 43f770	 Bytes: 4
  %loadMem_43f770 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f770 = call %struct.Memory* @routine_shlq__0x6___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f770)
  store %struct.Memory* %call_43f770, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 43f774	 Bytes: 3
  %loadMem_43f774 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f774 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f774)
  store %struct.Memory* %call_43f774, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %ecx	 RIP: 43f777	 Bytes: 3
  %loadMem_43f777 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f777 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f777)
  store %struct.Memory* %call_43f777, %struct.Memory** %MEMORY

  ; Code: addl -0x38(%rbp), %ecx	 RIP: 43f77a	 Bytes: 3
  %loadMem_43f77a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f77a = call %struct.Memory* @routine_addl_MINUS0x38__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f77a)
  store %struct.Memory* %call_43f77a, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 43f77d	 Bytes: 3
  %loadMem_43f77d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f77d = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f77d)
  store %struct.Memory* %call_43f77d, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rdx,4), %ecx	 RIP: 43f780	 Bytes: 3
  %loadMem_43f780 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f780 = call %struct.Memory* @routine_movl___rax__rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f780)
  store %struct.Memory* %call_43f780, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 43f783	 Bytes: 8
  %loadMem_43f783 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f783 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f783)
  store %struct.Memory* %call_43f783, %struct.Memory** %MEMORY

  ; Code: addq $0x3338, %rax	 RIP: 43f78b	 Bytes: 6
  %loadMem_43f78b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f78b = call %struct.Memory* @routine_addq__0x3338___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f78b)
  store %struct.Memory* %call_43f78b, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %esi	 RIP: 43f791	 Bytes: 3
  %loadMem_43f791 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f791 = call %struct.Memory* @routine_movl_MINUS0x48__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f791)
  store %struct.Memory* %call_43f791, %struct.Memory** %MEMORY

  ; Code: addl -0x68(%rbp), %esi	 RIP: 43f794	 Bytes: 3
  %loadMem_43f794 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f794 = call %struct.Memory* @routine_addl_MINUS0x68__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f794)
  store %struct.Memory* %call_43f794, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rdx	 RIP: 43f797	 Bytes: 3
  %loadMem_43f797 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f797 = call %struct.Memory* @routine_movslq__esi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f797)
  store %struct.Memory* %call_43f797, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rdx	 RIP: 43f79a	 Bytes: 4
  %loadMem_43f79a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f79a = call %struct.Memory* @routine_shlq__0x6___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f79a)
  store %struct.Memory* %call_43f79a, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 43f79e	 Bytes: 3
  %loadMem_43f79e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f79e = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f79e)
  store %struct.Memory* %call_43f79e, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %esi	 RIP: 43f7a1	 Bytes: 3
  %loadMem_43f7a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f7a1 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f7a1)
  store %struct.Memory* %call_43f7a1, %struct.Memory** %MEMORY

  ; Code: addl -0x6c(%rbp), %esi	 RIP: 43f7a4	 Bytes: 3
  %loadMem_43f7a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f7a4 = call %struct.Memory* @routine_addl_MINUS0x6c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f7a4)
  store %struct.Memory* %call_43f7a4, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rdx	 RIP: 43f7a7	 Bytes: 3
  %loadMem_43f7a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f7a7 = call %struct.Memory* @routine_movslq__esi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f7a7)
  store %struct.Memory* %call_43f7a7, %struct.Memory** %MEMORY

  ; Code: movl %ecx, (%rax,%rdx,4)	 RIP: 43f7aa	 Bytes: 3
  %loadMem_43f7aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f7aa = call %struct.Memory* @routine_movl__ecx____rax__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f7aa)
  store %struct.Memory* %call_43f7aa, %struct.Memory** %MEMORY

  ; Code: .L_43f7ad:	 RIP: 43f7ad	 Bytes: 0
  br label %block_.L_43f7ad
block_.L_43f7ad:

  ; Code: jmpq .L_43f7b2	 RIP: 43f7ad	 Bytes: 5
  %loadMem_43f7ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f7ad = call %struct.Memory* @routine_jmpq_.L_43f7b2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f7ad, i64 5, i64 5)
  store %struct.Memory* %call_43f7ad, %struct.Memory** %MEMORY

  br label %block_.L_43f7b2

  ; Code: .L_43f7b2:	 RIP: 43f7b2	 Bytes: 0
block_.L_43f7b2:

  ; Code: movl -0x48(%rbp), %eax	 RIP: 43f7b2	 Bytes: 3
  %loadMem_43f7b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f7b2 = call %struct.Memory* @routine_movl_MINUS0x48__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f7b2)
  store %struct.Memory* %call_43f7b2, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 43f7b5	 Bytes: 3
  %loadMem_43f7b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f7b5 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f7b5)
  store %struct.Memory* %call_43f7b5, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x48(%rbp)	 RIP: 43f7b8	 Bytes: 3
  %loadMem_43f7b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f7b8 = call %struct.Memory* @routine_movl__eax__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f7b8)
  store %struct.Memory* %call_43f7b8, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43f505	 RIP: 43f7bb	 Bytes: 5
  %loadMem_43f7bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f7bb = call %struct.Memory* @routine_jmpq_.L_43f505(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f7bb, i64 -694, i64 5)
  store %struct.Memory* %call_43f7bb, %struct.Memory** %MEMORY

  br label %block_.L_43f505

  ; Code: .L_43f7c0:	 RIP: 43f7c0	 Bytes: 0
block_.L_43f7c0:

  ; Code: jmpq .L_43f7c5	 RIP: 43f7c0	 Bytes: 5
  %loadMem_43f7c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f7c0 = call %struct.Memory* @routine_jmpq_.L_43f7c5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f7c0, i64 5, i64 5)
  store %struct.Memory* %call_43f7c0, %struct.Memory** %MEMORY

  br label %block_.L_43f7c5

  ; Code: .L_43f7c5:	 RIP: 43f7c5	 Bytes: 0
block_.L_43f7c5:

  ; Code: movl -0x4c(%rbp), %eax	 RIP: 43f7c5	 Bytes: 3
  %loadMem_43f7c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f7c5 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f7c5)
  store %struct.Memory* %call_43f7c5, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 43f7c8	 Bytes: 3
  %loadMem_43f7c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f7c8 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f7c8)
  store %struct.Memory* %call_43f7c8, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4c(%rbp)	 RIP: 43f7cb	 Bytes: 3
  %loadMem_43f7cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f7cb = call %struct.Memory* @routine_movl__eax__MINUS0x4c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f7cb)
  store %struct.Memory* %call_43f7cb, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43f4f4	 RIP: 43f7ce	 Bytes: 5
  %loadMem_43f7ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f7ce = call %struct.Memory* @routine_jmpq_.L_43f4f4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f7ce, i64 -730, i64 5)
  store %struct.Memory* %call_43f7ce, %struct.Memory** %MEMORY

  br label %block_.L_43f4f4

  ; Code: .L_43f7d3:	 RIP: 43f7d3	 Bytes: 0
block_.L_43f7d3:

  ; Code: movq 0x6cb900, %rax	 RIP: 43f7d3	 Bytes: 8
  %loadMem_43f7d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f7d3 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f7d3)
  store %struct.Memory* %call_43f7d3, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, 0x11ac8(%rax)	 RIP: 43f7db	 Bytes: 7
  %loadMem_43f7db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f7db = call %struct.Memory* @routine_cmpl__0x1__0x11ac8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f7db)
  store %struct.Memory* %call_43f7db, %struct.Memory** %MEMORY

  ; Code: je .L_43f8f7	 RIP: 43f7e2	 Bytes: 6
  %loadMem_43f7e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f7e2 = call %struct.Memory* @routine_je_.L_43f8f7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f7e2, i8* %BRANCH_TAKEN, i64 277, i64 6, i64 6)
  store %struct.Memory* %call_43f7e2, %struct.Memory** %MEMORY

  %loadBr_43f7e2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f7e2 = icmp eq i8 %loadBr_43f7e2, 1
  br i1 %cmpBr_43f7e2, label %block_.L_43f8f7, label %block_43f7e8

block_43f7e8:
  ; Code: cmpl $0x0, -0x74(%rbp)	 RIP: 43f7e8	 Bytes: 4
  %loadMem_43f7e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f7e8 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x74__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f7e8)
  store %struct.Memory* %call_43f7e8, %struct.Memory** %MEMORY

  ; Code: jne .L_43f8f7	 RIP: 43f7ec	 Bytes: 6
  %loadMem_43f7ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f7ec = call %struct.Memory* @routine_jne_.L_43f8f7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f7ec, i8* %BRANCH_TAKEN, i64 267, i64 6, i64 6)
  store %struct.Memory* %call_43f7ec, %struct.Memory** %MEMORY

  %loadBr_43f7ec = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f7ec = icmp eq i8 %loadBr_43f7ec, 1
  br i1 %cmpBr_43f7ec, label %block_.L_43f8f7, label %block_43f7f2

block_43f7f2:
  ; Code: cmpl $0x0, -0x84(%rbp)	 RIP: 43f7f2	 Bytes: 7
  %loadMem_43f7f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f7f2 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x84__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f7f2)
  store %struct.Memory* %call_43f7f2, %struct.Memory** %MEMORY

  ; Code: jne .L_43f8f7	 RIP: 43f7f9	 Bytes: 6
  %loadMem_43f7f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f7f9 = call %struct.Memory* @routine_jne_.L_43f8f7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f7f9, i8* %BRANCH_TAKEN, i64 254, i64 6, i64 6)
  store %struct.Memory* %call_43f7f9, %struct.Memory** %MEMORY

  %loadBr_43f7f9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f7f9 = icmp eq i8 %loadBr_43f7f9, 1
  br i1 %cmpBr_43f7f9, label %block_.L_43f8f7, label %block_43f7ff

block_43f7ff:
  ; Code: movq 0x6cb900, %rax	 RIP: 43f7ff	 Bytes: 8
  %loadMem_43f7ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f7ff = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f7ff)
  store %struct.Memory* %call_43f7ff, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, 0x18(%rax)	 RIP: 43f807	 Bytes: 4
  %loadMem_43f807 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f807 = call %struct.Memory* @routine_cmpl__0x3__0x18__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f807)
  store %struct.Memory* %call_43f807, %struct.Memory** %MEMORY

  ; Code: je .L_43f82a	 RIP: 43f80b	 Bytes: 6
  %loadMem_43f80b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f80b = call %struct.Memory* @routine_je_.L_43f82a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f80b, i8* %BRANCH_TAKEN, i64 31, i64 6, i64 6)
  store %struct.Memory* %call_43f80b, %struct.Memory** %MEMORY

  %loadBr_43f80b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f80b = icmp eq i8 %loadBr_43f80b, 1
  br i1 %cmpBr_43f80b, label %block_.L_43f82a, label %block_43f811

block_43f811:
  ; Code: leaq -0x58(%rbp), %rdx	 RIP: 43f811	 Bytes: 4
  %loadMem_43f811 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f811 = call %struct.Memory* @routine_leaq_MINUS0x58__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f811)
  store %struct.Memory* %call_43f811, %struct.Memory** %MEMORY

  ; Code: xorl %ecx, %ecx	 RIP: 43f815	 Bytes: 2
  %loadMem_43f815 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f815 = call %struct.Memory* @routine_xorl__ecx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f815)
  store %struct.Memory* %call_43f815, %struct.Memory** %MEMORY

  ; Code: movl -0x3c(%rbp), %edi	 RIP: 43f817	 Bytes: 3
  %loadMem_43f817 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f817 = call %struct.Memory* @routine_movl_MINUS0x3c__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f817)
  store %struct.Memory* %call_43f817, %struct.Memory** %MEMORY

  ; Code: movl -0x38(%rbp), %esi	 RIP: 43f81a	 Bytes: 3
  %loadMem_43f81a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f81a = call %struct.Memory* @routine_movl_MINUS0x38__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f81a)
  store %struct.Memory* %call_43f81a, %struct.Memory** %MEMORY

  ; Code: callq .dct_luma	 RIP: 43f81d	 Bytes: 5
  %loadMem1_43f81d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43f81d = call %struct.Memory* @routine_callq_.dct_luma(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43f81d, i64 -234957, i64 5, i64 5)
  store %struct.Memory* %call1_43f81d, %struct.Memory** %MEMORY

  %loadMem2_43f81d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43f81d = load i64, i64* %3
  %call2_43f81d = call %struct.Memory* @sub_406250.dct_luma(%struct.State* %0, i64  %loadPC_43f81d, %struct.Memory* %loadMem2_43f81d)
  store %struct.Memory* %call2_43f81d, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x50(%rbp)	 RIP: 43f822	 Bytes: 3
  %loadMem_43f822 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f822 = call %struct.Memory* @routine_movl__eax__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f822)
  store %struct.Memory* %call_43f822, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43f83c	 RIP: 43f825	 Bytes: 5
  %loadMem_43f825 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f825 = call %struct.Memory* @routine_jmpq_.L_43f83c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f825, i64 23, i64 5)
  store %struct.Memory* %call_43f825, %struct.Memory** %MEMORY

  br label %block_.L_43f83c

  ; Code: .L_43f82a:	 RIP: 43f82a	 Bytes: 0
block_.L_43f82a:

  ; Code: leaq -0x58(%rbp), %rdx	 RIP: 43f82a	 Bytes: 4
  %loadMem_43f82a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f82a = call %struct.Memory* @routine_leaq_MINUS0x58__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f82a)
  store %struct.Memory* %call_43f82a, %struct.Memory** %MEMORY

  ; Code: movl -0x3c(%rbp), %edi	 RIP: 43f82e	 Bytes: 3
  %loadMem_43f82e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f82e = call %struct.Memory* @routine_movl_MINUS0x3c__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f82e)
  store %struct.Memory* %call_43f82e, %struct.Memory** %MEMORY

  ; Code: movl -0x38(%rbp), %esi	 RIP: 43f831	 Bytes: 3
  %loadMem_43f831 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f831 = call %struct.Memory* @routine_movl_MINUS0x38__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f831)
  store %struct.Memory* %call_43f831, %struct.Memory** %MEMORY

  ; Code: callq .dct_luma_sp	 RIP: 43f834	 Bytes: 5
  %loadMem1_43f834 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43f834 = call %struct.Memory* @routine_callq_.dct_luma_sp(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43f834, i64 -211540, i64 5, i64 5)
  store %struct.Memory* %call1_43f834, %struct.Memory** %MEMORY

  %loadMem2_43f834 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43f834 = load i64, i64* %3
  %call2_43f834 = call %struct.Memory* @sub_40bde0.dct_luma_sp(%struct.State* %0, i64  %loadPC_43f834, %struct.Memory* %loadMem2_43f834)
  store %struct.Memory* %call2_43f834, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x50(%rbp)	 RIP: 43f839	 Bytes: 3
  %loadMem_43f839 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f839 = call %struct.Memory* @routine_movl__eax__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f839)
  store %struct.Memory* %call_43f839, %struct.Memory** %MEMORY

  ; Code: .L_43f83c:	 RIP: 43f83c	 Bytes: 0
  br label %block_.L_43f83c
block_.L_43f83c:

  ; Code: movl $0x0, -0x4c(%rbp)	 RIP: 43f83c	 Bytes: 7
  %loadMem_43f83c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f83c = call %struct.Memory* @routine_movl__0x0__MINUS0x4c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f83c)
  store %struct.Memory* %call_43f83c, %struct.Memory** %MEMORY

  ; Code: .L_43f843:	 RIP: 43f843	 Bytes: 0
  br label %block_.L_43f843
block_.L_43f843:

  ; Code: cmpl $0x4, -0x4c(%rbp)	 RIP: 43f843	 Bytes: 4
  %loadMem_43f843 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f843 = call %struct.Memory* @routine_cmpl__0x4__MINUS0x4c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f843)
  store %struct.Memory* %call_43f843, %struct.Memory** %MEMORY

  ; Code: jge .L_43f8c6	 RIP: 43f847	 Bytes: 6
  %loadMem_43f847 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f847 = call %struct.Memory* @routine_jge_.L_43f8c6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f847, i8* %BRANCH_TAKEN, i64 127, i64 6, i64 6)
  store %struct.Memory* %call_43f847, %struct.Memory** %MEMORY

  %loadBr_43f847 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f847 = icmp eq i8 %loadBr_43f847, 1
  br i1 %cmpBr_43f847, label %block_.L_43f8c6, label %block_43f84d

block_43f84d:
  ; Code: movl $0x0, -0x48(%rbp)	 RIP: 43f84d	 Bytes: 7
  %loadMem_43f84d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f84d = call %struct.Memory* @routine_movl__0x0__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f84d)
  store %struct.Memory* %call_43f84d, %struct.Memory** %MEMORY

  ; Code: .L_43f854:	 RIP: 43f854	 Bytes: 0
  br label %block_.L_43f854
block_.L_43f854:

  ; Code: cmpl $0x4, -0x48(%rbp)	 RIP: 43f854	 Bytes: 4
  %loadMem_43f854 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f854 = call %struct.Memory* @routine_cmpl__0x4__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f854)
  store %struct.Memory* %call_43f854, %struct.Memory** %MEMORY

  ; Code: jge .L_43f8b3	 RIP: 43f858	 Bytes: 6
  %loadMem_43f858 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f858 = call %struct.Memory* @routine_jge_.L_43f8b3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f858, i8* %BRANCH_TAKEN, i64 91, i64 6, i64 6)
  store %struct.Memory* %call_43f858, %struct.Memory** %MEMORY

  %loadBr_43f858 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f858 = icmp eq i8 %loadBr_43f858, 1
  br i1 %cmpBr_43f858, label %block_.L_43f8b3, label %block_43f85e

block_43f85e:
  ; Code: movq $0x722ff0, %rax	 RIP: 43f85e	 Bytes: 10
  %loadMem_43f85e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f85e = call %struct.Memory* @routine_movq__0x722ff0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f85e)
  store %struct.Memory* %call_43f85e, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 43f868	 Bytes: 8
  %loadMem_43f868 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f868 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f868)
  store %struct.Memory* %call_43f868, %struct.Memory** %MEMORY

  ; Code: addq $0x3338, %rcx	 RIP: 43f870	 Bytes: 7
  %loadMem_43f870 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f870 = call %struct.Memory* @routine_addq__0x3338___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f870)
  store %struct.Memory* %call_43f870, %struct.Memory** %MEMORY

  ; Code: movslq -0x48(%rbp), %rdx	 RIP: 43f877	 Bytes: 4
  %loadMem_43f877 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f877 = call %struct.Memory* @routine_movslq_MINUS0x48__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f877)
  store %struct.Memory* %call_43f877, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rdx	 RIP: 43f87b	 Bytes: 4
  %loadMem_43f87b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f87b = call %struct.Memory* @routine_shlq__0x6___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f87b)
  store %struct.Memory* %call_43f87b, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 43f87f	 Bytes: 3
  %loadMem_43f87f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f87f = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f87f)
  store %struct.Memory* %call_43f87f, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %rdx	 RIP: 43f882	 Bytes: 4
  %loadMem_43f882 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f882 = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f882)
  store %struct.Memory* %call_43f882, %struct.Memory** %MEMORY

  ; Code: movl (%rcx,%rdx,4), %esi	 RIP: 43f886	 Bytes: 3
  %loadMem_43f886 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f886 = call %struct.Memory* @routine_movl___rcx__rdx_4____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f886)
  store %struct.Memory* %call_43f886, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %edi	 RIP: 43f889	 Bytes: 3
  %loadMem_43f889 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f889 = call %struct.Memory* @routine_movl_MINUS0x48__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f889)
  store %struct.Memory* %call_43f889, %struct.Memory** %MEMORY

  ; Code: addl -0x3c(%rbp), %edi	 RIP: 43f88c	 Bytes: 3
  %loadMem_43f88c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f88c = call %struct.Memory* @routine_addl_MINUS0x3c__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f88c)
  store %struct.Memory* %call_43f88c, %struct.Memory** %MEMORY

  ; Code: movslq %edi, %rcx	 RIP: 43f88f	 Bytes: 3
  %loadMem_43f88f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f88f = call %struct.Memory* @routine_movslq__edi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f88f)
  store %struct.Memory* %call_43f88f, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rcx	 RIP: 43f892	 Bytes: 4
  %loadMem_43f892 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f892 = call %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f892)
  store %struct.Memory* %call_43f892, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 43f896	 Bytes: 3
  %loadMem_43f896 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f896 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f896)
  store %struct.Memory* %call_43f896, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %edi	 RIP: 43f899	 Bytes: 3
  %loadMem_43f899 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f899 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f899)
  store %struct.Memory* %call_43f899, %struct.Memory** %MEMORY

  ; Code: addl -0x38(%rbp), %edi	 RIP: 43f89c	 Bytes: 3
  %loadMem_43f89c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f89c = call %struct.Memory* @routine_addl_MINUS0x38__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f89c)
  store %struct.Memory* %call_43f89c, %struct.Memory** %MEMORY

  ; Code: movslq %edi, %rcx	 RIP: 43f89f	 Bytes: 3
  %loadMem_43f89f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f89f = call %struct.Memory* @routine_movslq__edi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f89f)
  store %struct.Memory* %call_43f89f, %struct.Memory** %MEMORY

  ; Code: movl %esi, (%rax,%rcx,4)	 RIP: 43f8a2	 Bytes: 3
  %loadMem_43f8a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f8a2 = call %struct.Memory* @routine_movl__esi____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f8a2)
  store %struct.Memory* %call_43f8a2, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %eax	 RIP: 43f8a5	 Bytes: 3
  %loadMem_43f8a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f8a5 = call %struct.Memory* @routine_movl_MINUS0x48__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f8a5)
  store %struct.Memory* %call_43f8a5, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 43f8a8	 Bytes: 3
  %loadMem_43f8a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f8a8 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f8a8)
  store %struct.Memory* %call_43f8a8, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x48(%rbp)	 RIP: 43f8ab	 Bytes: 3
  %loadMem_43f8ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f8ab = call %struct.Memory* @routine_movl__eax__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f8ab)
  store %struct.Memory* %call_43f8ab, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43f854	 RIP: 43f8ae	 Bytes: 5
  %loadMem_43f8ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f8ae = call %struct.Memory* @routine_jmpq_.L_43f854(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f8ae, i64 -90, i64 5)
  store %struct.Memory* %call_43f8ae, %struct.Memory** %MEMORY

  br label %block_.L_43f854

  ; Code: .L_43f8b3:	 RIP: 43f8b3	 Bytes: 0
block_.L_43f8b3:

  ; Code: jmpq .L_43f8b8	 RIP: 43f8b3	 Bytes: 5
  %loadMem_43f8b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f8b3 = call %struct.Memory* @routine_jmpq_.L_43f8b8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f8b3, i64 5, i64 5)
  store %struct.Memory* %call_43f8b3, %struct.Memory** %MEMORY

  br label %block_.L_43f8b8

  ; Code: .L_43f8b8:	 RIP: 43f8b8	 Bytes: 0
block_.L_43f8b8:

  ; Code: movl -0x4c(%rbp), %eax	 RIP: 43f8b8	 Bytes: 3
  %loadMem_43f8b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f8b8 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f8b8)
  store %struct.Memory* %call_43f8b8, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 43f8bb	 Bytes: 3
  %loadMem_43f8bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f8bb = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f8bb)
  store %struct.Memory* %call_43f8bb, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4c(%rbp)	 RIP: 43f8be	 Bytes: 3
  %loadMem_43f8be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f8be = call %struct.Memory* @routine_movl__eax__MINUS0x4c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f8be)
  store %struct.Memory* %call_43f8be, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43f843	 RIP: 43f8c1	 Bytes: 5
  %loadMem_43f8c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f8c1 = call %struct.Memory* @routine_jmpq_.L_43f843(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f8c1, i64 -126, i64 5)
  store %struct.Memory* %call_43f8c1, %struct.Memory** %MEMORY

  br label %block_.L_43f843

  ; Code: .L_43f8c6:	 RIP: 43f8c6	 Bytes: 0
block_.L_43f8c6:

  ; Code: cmpl $0x0, -0x50(%rbp)	 RIP: 43f8c6	 Bytes: 4
  %loadMem_43f8c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f8c6 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f8c6)
  store %struct.Memory* %call_43f8c6, %struct.Memory** %MEMORY

  ; Code: je .L_43f8f2	 RIP: 43f8ca	 Bytes: 6
  %loadMem_43f8ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f8ca = call %struct.Memory* @routine_je_.L_43f8f2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f8ca, i8* %BRANCH_TAKEN, i64 40, i64 6, i64 6)
  store %struct.Memory* %call_43f8ca, %struct.Memory** %MEMORY

  %loadBr_43f8ca = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f8ca = icmp eq i8 %loadBr_43f8ca, 1
  br i1 %cmpBr_43f8ca, label %block_.L_43f8f2, label %block_43f8d0

block_43f8d0:
  ; Code: movl $0x1, %eax	 RIP: 43f8d0	 Bytes: 5
  %loadMem_43f8d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f8d0 = call %struct.Memory* @routine_movl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f8d0)
  store %struct.Memory* %call_43f8d0, %struct.Memory** %MEMORY

  ; Code: movl -0x54(%rbp), %ecx	 RIP: 43f8d5	 Bytes: 3
  %loadMem_43f8d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f8d5 = call %struct.Memory* @routine_movl_MINUS0x54__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f8d5)
  store %struct.Memory* %call_43f8d5, %struct.Memory** %MEMORY

  ; Code: shll %cl, %eax	 RIP: 43f8d8	 Bytes: 2
  %loadMem_43f8d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f8d8 = call %struct.Memory* @routine_shll__cl___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f8d8)
  store %struct.Memory* %call_43f8d8, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 43f8da	 Bytes: 3
  %loadMem_43f8da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f8da = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f8da)
  store %struct.Memory* %call_43f8da, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rsi	 RIP: 43f8dd	 Bytes: 4
  %loadMem_43f8dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f8dd = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f8dd)
  store %struct.Memory* %call_43f8dd, %struct.Memory** %MEMORY

  ; Code: orq (%rsi), %rdx	 RIP: 43f8e1	 Bytes: 3
  %loadMem_43f8e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f8e1 = call %struct.Memory* @routine_orq___rsi____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f8e1)
  store %struct.Memory* %call_43f8e1, %struct.Memory** %MEMORY

  ; Code: movq %rdx, (%rsi)	 RIP: 43f8e4	 Bytes: 3
  %loadMem_43f8e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f8e4 = call %struct.Memory* @routine_movq__rdx____rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f8e4)
  store %struct.Memory* %call_43f8e4, %struct.Memory** %MEMORY

  ; Code: movl -0x64(%rbp), %eax	 RIP: 43f8e7	 Bytes: 3
  %loadMem_43f8e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f8e7 = call %struct.Memory* @routine_movl_MINUS0x64__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f8e7)
  store %struct.Memory* %call_43f8e7, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 43f8ea	 Bytes: 4
  %loadMem_43f8ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f8ea = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f8ea)
  store %struct.Memory* %call_43f8ea, %struct.Memory** %MEMORY

  ; Code: orl (%rdx), %eax	 RIP: 43f8ee	 Bytes: 2
  %loadMem_43f8ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f8ee = call %struct.Memory* @routine_orl___rdx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f8ee)
  store %struct.Memory* %call_43f8ee, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rdx)	 RIP: 43f8f0	 Bytes: 2
  %loadMem_43f8f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f8f0 = call %struct.Memory* @routine_movl__eax____rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f8f0)
  store %struct.Memory* %call_43f8f0, %struct.Memory** %MEMORY

  ; Code: .L_43f8f2:	 RIP: 43f8f2	 Bytes: 0
  br label %block_.L_43f8f2
block_.L_43f8f2:

  ; Code: jmpq .L_43f8f7	 RIP: 43f8f2	 Bytes: 5
  %loadMem_43f8f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f8f2 = call %struct.Memory* @routine_jmpq_.L_43f8f7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f8f2, i64 5, i64 5)
  store %struct.Memory* %call_43f8f2, %struct.Memory** %MEMORY

  br label %block_.L_43f8f7

  ; Code: .L_43f8f7:	 RIP: 43f8f7	 Bytes: 0
block_.L_43f8f7:

  ; Code: jmpq .L_43f8fc	 RIP: 43f8f7	 Bytes: 5
  %loadMem_43f8f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f8f7 = call %struct.Memory* @routine_jmpq_.L_43f8fc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f8f7, i64 5, i64 5)
  store %struct.Memory* %call_43f8f7, %struct.Memory** %MEMORY

  br label %block_.L_43f8fc

  ; Code: .L_43f8fc:	 RIP: 43f8fc	 Bytes: 0
block_.L_43f8fc:

  ; Code: jmpq .L_43f901	 RIP: 43f8fc	 Bytes: 5
  %loadMem_43f8fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f8fc = call %struct.Memory* @routine_jmpq_.L_43f901(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f8fc, i64 5, i64 5)
  store %struct.Memory* %call_43f8fc, %struct.Memory** %MEMORY

  br label %block_.L_43f901

  ; Code: .L_43f901:	 RIP: 43f901	 Bytes: 0
block_.L_43f901:

  ; Code: movl -0x68(%rbp), %eax	 RIP: 43f901	 Bytes: 3
  %loadMem_43f901 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f901 = call %struct.Memory* @routine_movl_MINUS0x68__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f901)
  store %struct.Memory* %call_43f901, %struct.Memory** %MEMORY

  ; Code: addl $0x4, %eax	 RIP: 43f904	 Bytes: 3
  %loadMem_43f904 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f904 = call %struct.Memory* @routine_addl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f904)
  store %struct.Memory* %call_43f904, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x68(%rbp)	 RIP: 43f907	 Bytes: 3
  %loadMem_43f907 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f907 = call %struct.Memory* @routine_movl__eax__MINUS0x68__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f907)
  store %struct.Memory* %call_43f907, %struct.Memory** %MEMORY

  ; Code: movl -0x3c(%rbp), %eax	 RIP: 43f90a	 Bytes: 3
  %loadMem_43f90a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f90a = call %struct.Memory* @routine_movl_MINUS0x3c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f90a)
  store %struct.Memory* %call_43f90a, %struct.Memory** %MEMORY

  ; Code: addl $0x4, %eax	 RIP: 43f90d	 Bytes: 3
  %loadMem_43f90d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f90d = call %struct.Memory* @routine_addl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f90d)
  store %struct.Memory* %call_43f90d, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x3c(%rbp)	 RIP: 43f910	 Bytes: 3
  %loadMem_43f910 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f910 = call %struct.Memory* @routine_movl__eax__MINUS0x3c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f910)
  store %struct.Memory* %call_43f910, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43f008	 RIP: 43f913	 Bytes: 5
  %loadMem_43f913 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f913 = call %struct.Memory* @routine_jmpq_.L_43f008(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f913, i64 -2315, i64 5)
  store %struct.Memory* %call_43f913, %struct.Memory** %MEMORY

  br label %block_.L_43f008

  ; Code: .L_43f918:	 RIP: 43f918	 Bytes: 0
block_.L_43f918:

  ; Code: jmpq .L_43f91d	 RIP: 43f918	 Bytes: 5
  %loadMem_43f918 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f918 = call %struct.Memory* @routine_jmpq_.L_43f91d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f918, i64 5, i64 5)
  store %struct.Memory* %call_43f918, %struct.Memory** %MEMORY

  br label %block_.L_43f91d

  ; Code: .L_43f91d:	 RIP: 43f91d	 Bytes: 0
block_.L_43f91d:

  ; Code: movl -0x6c(%rbp), %eax	 RIP: 43f91d	 Bytes: 3
  %loadMem_43f91d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f91d = call %struct.Memory* @routine_movl_MINUS0x6c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f91d)
  store %struct.Memory* %call_43f91d, %struct.Memory** %MEMORY

  ; Code: addl $0x4, %eax	 RIP: 43f920	 Bytes: 3
  %loadMem_43f920 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f920 = call %struct.Memory* @routine_addl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f920)
  store %struct.Memory* %call_43f920, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x6c(%rbp)	 RIP: 43f923	 Bytes: 3
  %loadMem_43f923 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f923 = call %struct.Memory* @routine_movl__eax__MINUS0x6c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f923)
  store %struct.Memory* %call_43f923, %struct.Memory** %MEMORY

  ; Code: movl -0x38(%rbp), %eax	 RIP: 43f926	 Bytes: 3
  %loadMem_43f926 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f926 = call %struct.Memory* @routine_movl_MINUS0x38__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f926)
  store %struct.Memory* %call_43f926, %struct.Memory** %MEMORY

  ; Code: addl $0x4, %eax	 RIP: 43f929	 Bytes: 3
  %loadMem_43f929 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f929 = call %struct.Memory* @routine_addl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f929)
  store %struct.Memory* %call_43f929, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x38(%rbp)	 RIP: 43f92c	 Bytes: 3
  %loadMem_43f92c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f92c = call %struct.Memory* @routine_movl__eax__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f92c)
  store %struct.Memory* %call_43f92c, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43efd6	 RIP: 43f92f	 Bytes: 5
  %loadMem_43f92f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f92f = call %struct.Memory* @routine_jmpq_.L_43efd6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f92f, i64 -2393, i64 5)
  store %struct.Memory* %call_43f92f, %struct.Memory** %MEMORY

  br label %block_.L_43efd6

  ; Code: .L_43f934:	 RIP: 43f934	 Bytes: 0
block_.L_43f934:

  ; Code: cmpl $0x0, -0x84(%rbp)	 RIP: 43f934	 Bytes: 7
  %loadMem_43f934 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f934 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x84__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f934)
  store %struct.Memory* %call_43f934, %struct.Memory** %MEMORY

  ; Code: je .L_43fa8a	 RIP: 43f93b	 Bytes: 6
  %loadMem_43f93b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f93b = call %struct.Memory* @routine_je_.L_43fa8a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f93b, i8* %BRANCH_TAKEN, i64 335, i64 6, i64 6)
  store %struct.Memory* %call_43f93b, %struct.Memory** %MEMORY

  %loadBr_43f93b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f93b = icmp eq i8 %loadBr_43f93b, 1
  br i1 %cmpBr_43f93b, label %block_.L_43fa8a, label %block_43f941

block_43f941:
  ; Code: movq 0x6cb900, %rax	 RIP: 43f941	 Bytes: 8
  %loadMem_43f941 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f941 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f941)
  store %struct.Memory* %call_43f941, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, 0x11ac8(%rax)	 RIP: 43f949	 Bytes: 7
  %loadMem_43f949 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f949 = call %struct.Memory* @routine_cmpl__0x1__0x11ac8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f949)
  store %struct.Memory* %call_43f949, %struct.Memory** %MEMORY

  ; Code: je .L_43fa85	 RIP: 43f950	 Bytes: 6
  %loadMem_43f950 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f950 = call %struct.Memory* @routine_je_.L_43fa85(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f950, i8* %BRANCH_TAKEN, i64 309, i64 6, i64 6)
  store %struct.Memory* %call_43f950, %struct.Memory** %MEMORY

  %loadBr_43f950 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f950 = icmp eq i8 %loadBr_43f950, 1
  br i1 %cmpBr_43f950, label %block_.L_43fa85, label %block_43f956

block_43f956:
  ; Code: cmpl $0x0, -0x74(%rbp)	 RIP: 43f956	 Bytes: 4
  %loadMem_43f956 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f956 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x74__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f956)
  store %struct.Memory* %call_43f956, %struct.Memory** %MEMORY

  ; Code: jne .L_43fa85	 RIP: 43f95a	 Bytes: 6
  %loadMem_43f95a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f95a = call %struct.Memory* @routine_jne_.L_43fa85(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f95a, i8* %BRANCH_TAKEN, i64 299, i64 6, i64 6)
  store %struct.Memory* %call_43f95a, %struct.Memory** %MEMORY

  %loadBr_43f95a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f95a = icmp eq i8 %loadBr_43f95a, 1
  br i1 %cmpBr_43f95a, label %block_.L_43fa85, label %block_43f960

block_43f960:
  ; Code: movq 0x6cb900, %rax	 RIP: 43f960	 Bytes: 8
  %loadMem_43f960 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f960 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f960)
  store %struct.Memory* %call_43f960, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, 0x18(%rax)	 RIP: 43f968	 Bytes: 4
  %loadMem_43f968 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f968 = call %struct.Memory* @routine_cmpl__0x3__0x18__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f968)
  store %struct.Memory* %call_43f968, %struct.Memory** %MEMORY

  ; Code: je .L_43f983	 RIP: 43f96c	 Bytes: 6
  %loadMem_43f96c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f96c = call %struct.Memory* @routine_je_.L_43f983(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f96c, i8* %BRANCH_TAKEN, i64 23, i64 6, i64 6)
  store %struct.Memory* %call_43f96c, %struct.Memory** %MEMORY

  %loadBr_43f96c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f96c = icmp eq i8 %loadBr_43f96c, 1
  br i1 %cmpBr_43f96c, label %block_.L_43f983, label %block_43f972

block_43f972:
  ; Code: leaq -0x58(%rbp), %rsi	 RIP: 43f972	 Bytes: 4
  %loadMem_43f972 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f972 = call %struct.Memory* @routine_leaq_MINUS0x58__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f972)
  store %struct.Memory* %call_43f972, %struct.Memory** %MEMORY

  ; Code: xorl %edx, %edx	 RIP: 43f976	 Bytes: 2
  %loadMem_43f976 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f976 = call %struct.Memory* @routine_xorl__edx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f976)
  store %struct.Memory* %call_43f976, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %edi	 RIP: 43f978	 Bytes: 3
  %loadMem_43f978 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f978 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f978)
  store %struct.Memory* %call_43f978, %struct.Memory** %MEMORY

  ; Code: callq .dct_luma8x8	 RIP: 43f97b	 Bytes: 5
  %loadMem1_43f97b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43f97b = call %struct.Memory* @routine_callq_.dct_luma8x8(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43f97b, i64 437701, i64 5, i64 5)
  store %struct.Memory* %call1_43f97b, %struct.Memory** %MEMORY

  %loadMem2_43f97b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43f97b = load i64, i64* %3
  %call2_43f97b = call %struct.Memory* @sub_4aa740.dct_luma8x8(%struct.State* %0, i64  %loadPC_43f97b, %struct.Memory* %loadMem2_43f97b)
  store %struct.Memory* %call2_43f97b, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x50(%rbp)	 RIP: 43f980	 Bytes: 3
  %loadMem_43f980 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f980 = call %struct.Memory* @routine_movl__eax__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f980)
  store %struct.Memory* %call_43f980, %struct.Memory** %MEMORY

  ; Code: .L_43f983:	 RIP: 43f983	 Bytes: 0
  br label %block_.L_43f983
block_.L_43f983:

  ; Code: movq 0x6cb900, %rax	 RIP: 43f983	 Bytes: 8
  %loadMem_43f983 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f983 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f983)
  store %struct.Memory* %call_43f983, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x11c14(%rax)	 RIP: 43f98b	 Bytes: 7
  %loadMem_43f98b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f98b = call %struct.Memory* @routine_cmpl__0x0__0x11c14__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f98b)
  store %struct.Memory* %call_43f98b, %struct.Memory** %MEMORY

  ; Code: je .L_43fa27	 RIP: 43f992	 Bytes: 6
  %loadMem_43f992 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f992 = call %struct.Memory* @routine_je_.L_43fa27(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f992, i8* %BRANCH_TAKEN, i64 149, i64 6, i64 6)
  store %struct.Memory* %call_43f992, %struct.Memory** %MEMORY

  %loadBr_43f992 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f992 = icmp eq i8 %loadBr_43f992, 1
  br i1 %cmpBr_43f992, label %block_.L_43fa27, label %block_43f998

block_43f998:
  ; Code: movl $0x0, -0x4c(%rbp)	 RIP: 43f998	 Bytes: 7
  %loadMem_43f998 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f998 = call %struct.Memory* @routine_movl__0x0__MINUS0x4c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f998)
  store %struct.Memory* %call_43f998, %struct.Memory** %MEMORY

  ; Code: .L_43f99f:	 RIP: 43f99f	 Bytes: 0
  br label %block_.L_43f99f
block_.L_43f99f:

  ; Code: cmpl $0x8, -0x4c(%rbp)	 RIP: 43f99f	 Bytes: 4
  %loadMem_43f99f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f99f = call %struct.Memory* @routine_cmpl__0x8__MINUS0x4c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f99f)
  store %struct.Memory* %call_43f99f, %struct.Memory** %MEMORY

  ; Code: jge .L_43fa22	 RIP: 43f9a3	 Bytes: 6
  %loadMem_43f9a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f9a3 = call %struct.Memory* @routine_jge_.L_43fa22(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f9a3, i8* %BRANCH_TAKEN, i64 127, i64 6, i64 6)
  store %struct.Memory* %call_43f9a3, %struct.Memory** %MEMORY

  %loadBr_43f9a3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f9a3 = icmp eq i8 %loadBr_43f9a3, 1
  br i1 %cmpBr_43f9a3, label %block_.L_43fa22, label %block_43f9a9

block_43f9a9:
  ; Code: movl $0x0, -0x48(%rbp)	 RIP: 43f9a9	 Bytes: 7
  %loadMem_43f9a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f9a9 = call %struct.Memory* @routine_movl__0x0__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f9a9)
  store %struct.Memory* %call_43f9a9, %struct.Memory** %MEMORY

  ; Code: .L_43f9b0:	 RIP: 43f9b0	 Bytes: 0
  br label %block_.L_43f9b0
block_.L_43f9b0:

  ; Code: cmpl $0x8, -0x48(%rbp)	 RIP: 43f9b0	 Bytes: 4
  %loadMem_43f9b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f9b0 = call %struct.Memory* @routine_cmpl__0x8__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f9b0)
  store %struct.Memory* %call_43f9b0, %struct.Memory** %MEMORY

  ; Code: jge .L_43fa0f	 RIP: 43f9b4	 Bytes: 6
  %loadMem_43f9b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f9b4 = call %struct.Memory* @routine_jge_.L_43fa0f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f9b4, i8* %BRANCH_TAKEN, i64 91, i64 6, i64 6)
  store %struct.Memory* %call_43f9b4, %struct.Memory** %MEMORY

  %loadBr_43f9b4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43f9b4 = icmp eq i8 %loadBr_43f9b4, 1
  br i1 %cmpBr_43f9b4, label %block_.L_43fa0f, label %block_43f9ba

block_43f9ba:
  ; Code: movq $0x722ff0, %rax	 RIP: 43f9ba	 Bytes: 10
  %loadMem_43f9ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f9ba = call %struct.Memory* @routine_movq__0x722ff0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f9ba)
  store %struct.Memory* %call_43f9ba, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 43f9c4	 Bytes: 8
  %loadMem_43f9c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f9c4 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f9c4)
  store %struct.Memory* %call_43f9c4, %struct.Memory** %MEMORY

  ; Code: addq $0x3338, %rcx	 RIP: 43f9cc	 Bytes: 7
  %loadMem_43f9cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f9cc = call %struct.Memory* @routine_addq__0x3338___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f9cc)
  store %struct.Memory* %call_43f9cc, %struct.Memory** %MEMORY

  ; Code: movslq -0x48(%rbp), %rdx	 RIP: 43f9d3	 Bytes: 4
  %loadMem_43f9d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f9d3 = call %struct.Memory* @routine_movslq_MINUS0x48__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f9d3)
  store %struct.Memory* %call_43f9d3, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rdx	 RIP: 43f9d7	 Bytes: 4
  %loadMem_43f9d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f9d7 = call %struct.Memory* @routine_shlq__0x6___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f9d7)
  store %struct.Memory* %call_43f9d7, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 43f9db	 Bytes: 3
  %loadMem_43f9db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f9db = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f9db)
  store %struct.Memory* %call_43f9db, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %rdx	 RIP: 43f9de	 Bytes: 4
  %loadMem_43f9de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f9de = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f9de)
  store %struct.Memory* %call_43f9de, %struct.Memory** %MEMORY

  ; Code: movl (%rcx,%rdx,4), %esi	 RIP: 43f9e2	 Bytes: 3
  %loadMem_43f9e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f9e2 = call %struct.Memory* @routine_movl___rcx__rdx_4____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f9e2)
  store %struct.Memory* %call_43f9e2, %struct.Memory** %MEMORY

  ; Code: movl -0x60(%rbp), %edi	 RIP: 43f9e5	 Bytes: 3
  %loadMem_43f9e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f9e5 = call %struct.Memory* @routine_movl_MINUS0x60__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f9e5)
  store %struct.Memory* %call_43f9e5, %struct.Memory** %MEMORY

  ; Code: addl -0x48(%rbp), %edi	 RIP: 43f9e8	 Bytes: 3
  %loadMem_43f9e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f9e8 = call %struct.Memory* @routine_addl_MINUS0x48__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f9e8)
  store %struct.Memory* %call_43f9e8, %struct.Memory** %MEMORY

  ; Code: movslq %edi, %rcx	 RIP: 43f9eb	 Bytes: 3
  %loadMem_43f9eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f9eb = call %struct.Memory* @routine_movslq__edi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f9eb)
  store %struct.Memory* %call_43f9eb, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rcx	 RIP: 43f9ee	 Bytes: 4
  %loadMem_43f9ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f9ee = call %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f9ee)
  store %struct.Memory* %call_43f9ee, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 43f9f2	 Bytes: 3
  %loadMem_43f9f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f9f2 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f9f2)
  store %struct.Memory* %call_43f9f2, %struct.Memory** %MEMORY

  ; Code: movl -0x5c(%rbp), %edi	 RIP: 43f9f5	 Bytes: 3
  %loadMem_43f9f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f9f5 = call %struct.Memory* @routine_movl_MINUS0x5c__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f9f5)
  store %struct.Memory* %call_43f9f5, %struct.Memory** %MEMORY

  ; Code: addl -0x4c(%rbp), %edi	 RIP: 43f9f8	 Bytes: 3
  %loadMem_43f9f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f9f8 = call %struct.Memory* @routine_addl_MINUS0x4c__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f9f8)
  store %struct.Memory* %call_43f9f8, %struct.Memory** %MEMORY

  ; Code: movslq %edi, %rcx	 RIP: 43f9fb	 Bytes: 3
  %loadMem_43f9fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f9fb = call %struct.Memory* @routine_movslq__edi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f9fb)
  store %struct.Memory* %call_43f9fb, %struct.Memory** %MEMORY

  ; Code: movl %esi, (%rax,%rcx,4)	 RIP: 43f9fe	 Bytes: 3
  %loadMem_43f9fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43f9fe = call %struct.Memory* @routine_movl__esi____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43f9fe)
  store %struct.Memory* %call_43f9fe, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %eax	 RIP: 43fa01	 Bytes: 3
  %loadMem_43fa01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fa01 = call %struct.Memory* @routine_movl_MINUS0x48__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fa01)
  store %struct.Memory* %call_43fa01, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 43fa04	 Bytes: 3
  %loadMem_43fa04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fa04 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fa04)
  store %struct.Memory* %call_43fa04, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x48(%rbp)	 RIP: 43fa07	 Bytes: 3
  %loadMem_43fa07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fa07 = call %struct.Memory* @routine_movl__eax__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fa07)
  store %struct.Memory* %call_43fa07, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43f9b0	 RIP: 43fa0a	 Bytes: 5
  %loadMem_43fa0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fa0a = call %struct.Memory* @routine_jmpq_.L_43f9b0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fa0a, i64 -90, i64 5)
  store %struct.Memory* %call_43fa0a, %struct.Memory** %MEMORY

  br label %block_.L_43f9b0

  ; Code: .L_43fa0f:	 RIP: 43fa0f	 Bytes: 0
block_.L_43fa0f:

  ; Code: jmpq .L_43fa14	 RIP: 43fa0f	 Bytes: 5
  %loadMem_43fa0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fa0f = call %struct.Memory* @routine_jmpq_.L_43fa14(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fa0f, i64 5, i64 5)
  store %struct.Memory* %call_43fa0f, %struct.Memory** %MEMORY

  br label %block_.L_43fa14

  ; Code: .L_43fa14:	 RIP: 43fa14	 Bytes: 0
block_.L_43fa14:

  ; Code: movl -0x4c(%rbp), %eax	 RIP: 43fa14	 Bytes: 3
  %loadMem_43fa14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fa14 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fa14)
  store %struct.Memory* %call_43fa14, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 43fa17	 Bytes: 3
  %loadMem_43fa17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fa17 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fa17)
  store %struct.Memory* %call_43fa17, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4c(%rbp)	 RIP: 43fa1a	 Bytes: 3
  %loadMem_43fa1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fa1a = call %struct.Memory* @routine_movl__eax__MINUS0x4c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fa1a)
  store %struct.Memory* %call_43fa1a, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43f99f	 RIP: 43fa1d	 Bytes: 5
  %loadMem_43fa1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fa1d = call %struct.Memory* @routine_jmpq_.L_43f99f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fa1d, i64 -126, i64 5)
  store %struct.Memory* %call_43fa1d, %struct.Memory** %MEMORY

  br label %block_.L_43f99f

  ; Code: .L_43fa22:	 RIP: 43fa22	 Bytes: 0
block_.L_43fa22:

  ; Code: jmpq .L_43fa27	 RIP: 43fa22	 Bytes: 5
  %loadMem_43fa22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fa22 = call %struct.Memory* @routine_jmpq_.L_43fa27(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fa22, i64 5, i64 5)
  store %struct.Memory* %call_43fa22, %struct.Memory** %MEMORY

  br label %block_.L_43fa27

  ; Code: .L_43fa27:	 RIP: 43fa27	 Bytes: 0
block_.L_43fa27:

  ; Code: cmpl $0x0, -0x50(%rbp)	 RIP: 43fa27	 Bytes: 4
  %loadMem_43fa27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fa27 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fa27)
  store %struct.Memory* %call_43fa27, %struct.Memory** %MEMORY

  ; Code: je .L_43fa80	 RIP: 43fa2b	 Bytes: 6
  %loadMem_43fa2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fa2b = call %struct.Memory* @routine_je_.L_43fa80(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fa2b, i8* %BRANCH_TAKEN, i64 85, i64 6, i64 6)
  store %struct.Memory* %call_43fa2b, %struct.Memory** %MEMORY

  %loadBr_43fa2b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43fa2b = icmp eq i8 %loadBr_43fa2b, 1
  br i1 %cmpBr_43fa2b, label %block_.L_43fa80, label %block_43fa31

block_43fa31:
  ; Code: movl $0x33, %eax	 RIP: 43fa31	 Bytes: 5
  %loadMem_43fa31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fa31 = call %struct.Memory* @routine_movl__0x33___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fa31)
  store %struct.Memory* %call_43fa31, %struct.Memory** %MEMORY

  ; Code: movl $0x2, %ecx	 RIP: 43fa36	 Bytes: 5
  %loadMem_43fa36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fa36 = call %struct.Memory* @routine_movl__0x2___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fa36)
  store %struct.Memory* %call_43fa36, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %edx	 RIP: 43fa3b	 Bytes: 3
  %loadMem_43fa3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fa3b = call %struct.Memory* @routine_movl_MINUS0x24__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fa3b)
  store %struct.Memory* %call_43fa3b, %struct.Memory** %MEMORY

  ; Code: shll $0x2, %edx	 RIP: 43fa3e	 Bytes: 3
  %loadMem_43fa3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fa3e = call %struct.Memory* @routine_shll__0x2___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fa3e)
  store %struct.Memory* %call_43fa3e, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %esi	 RIP: 43fa41	 Bytes: 3
  %loadMem_43fa41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fa41 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fa41)
  store %struct.Memory* %call_43fa41, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xa0(%rbp)	 RIP: 43fa44	 Bytes: 6
  %loadMem_43fa44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fa44 = call %struct.Memory* @routine_movl__eax__MINUS0xa0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fa44)
  store %struct.Memory* %call_43fa44, %struct.Memory** %MEMORY

  ; Code: movl %esi, %eax	 RIP: 43fa4a	 Bytes: 2
  %loadMem_43fa4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fa4a = call %struct.Memory* @routine_movl__esi___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fa4a)
  store %struct.Memory* %call_43fa4a, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0xa4(%rbp)	 RIP: 43fa4c	 Bytes: 6
  %loadMem_43fa4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fa4c = call %struct.Memory* @routine_movl__edx__MINUS0xa4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fa4c)
  store %struct.Memory* %call_43fa4c, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 43fa52	 Bytes: 1
  %loadMem_43fa52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fa52 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fa52)
  store %struct.Memory* %call_43fa52, %struct.Memory** %MEMORY

  ; Code: idivl %ecx	 RIP: 43fa53	 Bytes: 2
  %loadMem_43fa53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fa53 = call %struct.Memory* @routine_idivl__ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fa53)
  store %struct.Memory* %call_43fa53, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %edx	 RIP: 43fa55	 Bytes: 3
  %loadMem_43fa55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fa55 = call %struct.Memory* @routine_shll__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fa55)
  store %struct.Memory* %call_43fa55, %struct.Memory** %MEMORY

  ; Code: movl -0xa4(%rbp), %ecx	 RIP: 43fa58	 Bytes: 6
  %loadMem_43fa58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fa58 = call %struct.Memory* @routine_movl_MINUS0xa4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fa58)
  store %struct.Memory* %call_43fa58, %struct.Memory** %MEMORY

  ; Code: subl %edx, %ecx	 RIP: 43fa5e	 Bytes: 2
  %loadMem_43fa5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fa5e = call %struct.Memory* @routine_subl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fa5e)
  store %struct.Memory* %call_43fa5e, %struct.Memory** %MEMORY

  ; Code: movl -0xa0(%rbp), %edx	 RIP: 43fa60	 Bytes: 6
  %loadMem_43fa60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fa60 = call %struct.Memory* @routine_movl_MINUS0xa0__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fa60)
  store %struct.Memory* %call_43fa60, %struct.Memory** %MEMORY

  ; Code: shll %cl, %edx	 RIP: 43fa66	 Bytes: 2
  %loadMem_43fa66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fa66 = call %struct.Memory* @routine_shll__cl___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fa66)
  store %struct.Memory* %call_43fa66, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rdi	 RIP: 43fa68	 Bytes: 3
  %loadMem_43fa68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fa68 = call %struct.Memory* @routine_movslq__edx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fa68)
  store %struct.Memory* %call_43fa68, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %r8	 RIP: 43fa6b	 Bytes: 4
  %loadMem_43fa6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fa6b = call %struct.Memory* @routine_movq_MINUS0x20__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fa6b)
  store %struct.Memory* %call_43fa6b, %struct.Memory** %MEMORY

  ; Code: orq (%r8), %rdi	 RIP: 43fa6f	 Bytes: 3
  %loadMem_43fa6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fa6f = call %struct.Memory* @routine_orq___r8____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fa6f)
  store %struct.Memory* %call_43fa6f, %struct.Memory** %MEMORY

  ; Code: movq %rdi, (%r8)	 RIP: 43fa72	 Bytes: 3
  %loadMem_43fa72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fa72 = call %struct.Memory* @routine_movq__rdi____r8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fa72)
  store %struct.Memory* %call_43fa72, %struct.Memory** %MEMORY

  ; Code: movl -0x64(%rbp), %edx	 RIP: 43fa75	 Bytes: 3
  %loadMem_43fa75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fa75 = call %struct.Memory* @routine_movl_MINUS0x64__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fa75)
  store %struct.Memory* %call_43fa75, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdi	 RIP: 43fa78	 Bytes: 4
  %loadMem_43fa78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fa78 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fa78)
  store %struct.Memory* %call_43fa78, %struct.Memory** %MEMORY

  ; Code: orl (%rdi), %edx	 RIP: 43fa7c	 Bytes: 2
  %loadMem_43fa7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fa7c = call %struct.Memory* @routine_orl___rdi____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fa7c)
  store %struct.Memory* %call_43fa7c, %struct.Memory** %MEMORY

  ; Code: movl %edx, (%rdi)	 RIP: 43fa7e	 Bytes: 2
  %loadMem_43fa7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fa7e = call %struct.Memory* @routine_movl__edx____rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fa7e)
  store %struct.Memory* %call_43fa7e, %struct.Memory** %MEMORY

  ; Code: .L_43fa80:	 RIP: 43fa80	 Bytes: 0
  br label %block_.L_43fa80
block_.L_43fa80:

  ; Code: jmpq .L_43fa85	 RIP: 43fa80	 Bytes: 5
  %loadMem_43fa80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fa80 = call %struct.Memory* @routine_jmpq_.L_43fa85(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fa80, i64 5, i64 5)
  store %struct.Memory* %call_43fa80, %struct.Memory** %MEMORY

  br label %block_.L_43fa85

  ; Code: .L_43fa85:	 RIP: 43fa85	 Bytes: 0
block_.L_43fa85:

  ; Code: jmpq .L_43fa8a	 RIP: 43fa85	 Bytes: 5
  %loadMem_43fa85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fa85 = call %struct.Memory* @routine_jmpq_.L_43fa8a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fa85, i64 5, i64 5)
  store %struct.Memory* %call_43fa85, %struct.Memory** %MEMORY

  br label %block_.L_43fa8a

  ; Code: .L_43fa8a:	 RIP: 43fa8a	 Bytes: 0
block_.L_43fa8a:

  ; Code: movq 0x6cb900, %rax	 RIP: 43fa8a	 Bytes: 8
  %loadMem_43fa8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fa8a = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fa8a)
  store %struct.Memory* %call_43fa8a, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, 0x11ac8(%rax)	 RIP: 43fa92	 Bytes: 7
  %loadMem_43fa92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fa92 = call %struct.Memory* @routine_cmpl__0x1__0x11ac8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fa92)
  store %struct.Memory* %call_43fa92, %struct.Memory** %MEMORY

  ; Code: je .L_43fcac	 RIP: 43fa99	 Bytes: 6
  %loadMem_43fa99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fa99 = call %struct.Memory* @routine_je_.L_43fcac(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fa99, i8* %BRANCH_TAKEN, i64 531, i64 6, i64 6)
  store %struct.Memory* %call_43fa99, %struct.Memory** %MEMORY

  %loadBr_43fa99 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43fa99 = icmp eq i8 %loadBr_43fa99, 1
  br i1 %cmpBr_43fa99, label %block_.L_43fcac, label %block_43fa9f

block_43fa9f:
  ; Code: cmpl $0x0, -0x74(%rbp)	 RIP: 43fa9f	 Bytes: 4
  %loadMem_43fa9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fa9f = call %struct.Memory* @routine_cmpl__0x0__MINUS0x74__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fa9f)
  store %struct.Memory* %call_43fa9f, %struct.Memory** %MEMORY

  ; Code: jne .L_43fcac	 RIP: 43faa3	 Bytes: 6
  %loadMem_43faa3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43faa3 = call %struct.Memory* @routine_jne_.L_43fcac(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43faa3, i8* %BRANCH_TAKEN, i64 521, i64 6, i64 6)
  store %struct.Memory* %call_43faa3, %struct.Memory** %MEMORY

  %loadBr_43faa3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43faa3 = icmp eq i8 %loadBr_43faa3, 1
  br i1 %cmpBr_43faa3, label %block_.L_43fcac, label %block_43faa9

block_43faa9:
  ; Code: cmpl $0x4, -0x58(%rbp)	 RIP: 43faa9	 Bytes: 4
  %loadMem_43faa9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43faa9 = call %struct.Memory* @routine_cmpl__0x4__MINUS0x58__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43faa9)
  store %struct.Memory* %call_43faa9, %struct.Memory** %MEMORY

  ; Code: jg .L_43fcac	 RIP: 43faad	 Bytes: 6
  %loadMem_43faad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43faad = call %struct.Memory* @routine_jg_.L_43fcac(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43faad, i8* %BRANCH_TAKEN, i64 511, i64 6, i64 6)
  store %struct.Memory* %call_43faad, %struct.Memory** %MEMORY

  %loadBr_43faad = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43faad = icmp eq i8 %loadBr_43faad, 1
  br i1 %cmpBr_43faad, label %block_.L_43fcac, label %block_43fab3

block_43fab3:
  ; Code: movq 0x6cb900, %rax	 RIP: 43fab3	 Bytes: 8
  %loadMem_43fab3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fab3 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fab3)
  store %struct.Memory* %call_43fab3, %struct.Memory** %MEMORY

  ; Code: movl 0x28(%rax), %ecx	 RIP: 43fabb	 Bytes: 3
  %loadMem_43fabb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fabb = call %struct.Memory* @routine_movl_0x28__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fabb)
  store %struct.Memory* %call_43fabb, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 43fabe	 Bytes: 8
  %loadMem_43fabe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fabe = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fabe)
  store %struct.Memory* %call_43fabe, %struct.Memory** %MEMORY

  ; Code: addl 0x11bdc(%rax), %ecx	 RIP: 43fac6	 Bytes: 6
  %loadMem_43fac6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fac6 = call %struct.Memory* @routine_addl_0x11bdc__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fac6)
  store %struct.Memory* %call_43fac6, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %ecx	 RIP: 43facc	 Bytes: 3
  %loadMem_43facc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43facc = call %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43facc)
  store %struct.Memory* %call_43facc, %struct.Memory** %MEMORY

  ; Code: jne .L_43faea	 RIP: 43facf	 Bytes: 6
  %loadMem_43facf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43facf = call %struct.Memory* @routine_jne_.L_43faea(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43facf, i8* %BRANCH_TAKEN, i64 27, i64 6, i64 6)
  store %struct.Memory* %call_43facf, %struct.Memory** %MEMORY

  %loadBr_43facf = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43facf = icmp eq i8 %loadBr_43facf, 1
  br i1 %cmpBr_43facf, label %block_.L_43faea, label %block_43fad5

block_43fad5:
  ; Code: movq 0x6cb900, %rax	 RIP: 43fad5	 Bytes: 8
  %loadMem_43fad5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fad5 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fad5)
  store %struct.Memory* %call_43fad5, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x11c00(%rax)	 RIP: 43fadd	 Bytes: 7
  %loadMem_43fadd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fadd = call %struct.Memory* @routine_cmpl__0x0__0x11c00__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fadd)
  store %struct.Memory* %call_43fadd, %struct.Memory** %MEMORY

  ; Code: jne .L_43fcac	 RIP: 43fae4	 Bytes: 6
  %loadMem_43fae4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fae4 = call %struct.Memory* @routine_jne_.L_43fcac(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fae4, i8* %BRANCH_TAKEN, i64 456, i64 6, i64 6)
  store %struct.Memory* %call_43fae4, %struct.Memory** %MEMORY

  %loadBr_43fae4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43fae4 = icmp eq i8 %loadBr_43fae4, 1
  br i1 %cmpBr_43fae4, label %block_.L_43fcac, label %block_.L_43faea

  ; Code: .L_43faea:	 RIP: 43faea	 Bytes: 0
block_.L_43faea:

  ; Code: movl $0x33, %eax	 RIP: 43faea	 Bytes: 5
  %loadMem_43faea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43faea = call %struct.Memory* @routine_movl__0x33___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43faea)
  store %struct.Memory* %call_43faea, %struct.Memory** %MEMORY

  ; Code: movl $0x2, %ecx	 RIP: 43faef	 Bytes: 5
  %loadMem_43faef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43faef = call %struct.Memory* @routine_movl__0x2___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43faef)
  store %struct.Memory* %call_43faef, %struct.Memory** %MEMORY

  ; Code: movl $0x3f, %edx	 RIP: 43faf4	 Bytes: 5
  %loadMem_43faf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43faf4 = call %struct.Memory* @routine_movl__0x3f___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43faf4)
  store %struct.Memory* %call_43faf4, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x58(%rbp)	 RIP: 43faf9	 Bytes: 7
  %loadMem_43faf9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43faf9 = call %struct.Memory* @routine_movl__0x0__MINUS0x58__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43faf9)
  store %struct.Memory* %call_43faf9, %struct.Memory** %MEMORY

  ; Code: subl -0x64(%rbp), %edx	 RIP: 43fb00	 Bytes: 3
  %loadMem_43fb00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fb00 = call %struct.Memory* @routine_subl_MINUS0x64__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fb00)
  store %struct.Memory* %call_43fb00, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rsi	 RIP: 43fb03	 Bytes: 4
  %loadMem_43fb03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fb03 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fb03)
  store %struct.Memory* %call_43fb03, %struct.Memory** %MEMORY

  ; Code: andl (%rsi), %edx	 RIP: 43fb07	 Bytes: 2
  %loadMem_43fb07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fb07 = call %struct.Memory* @routine_andl___rsi____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fb07)
  store %struct.Memory* %call_43fb07, %struct.Memory** %MEMORY

  ; Code: movl %edx, (%rsi)	 RIP: 43fb09	 Bytes: 2
  %loadMem_43fb09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fb09 = call %struct.Memory* @routine_movl__edx____rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fb09)
  store %struct.Memory* %call_43fb09, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %edx	 RIP: 43fb0b	 Bytes: 3
  %loadMem_43fb0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fb0b = call %struct.Memory* @routine_movl_MINUS0x24__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fb0b)
  store %struct.Memory* %call_43fb0b, %struct.Memory** %MEMORY

  ; Code: shll $0x2, %edx	 RIP: 43fb0e	 Bytes: 3
  %loadMem_43fb0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fb0e = call %struct.Memory* @routine_shll__0x2___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fb0e)
  store %struct.Memory* %call_43fb0e, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %edi	 RIP: 43fb11	 Bytes: 3
  %loadMem_43fb11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fb11 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fb11)
  store %struct.Memory* %call_43fb11, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xa8(%rbp)	 RIP: 43fb14	 Bytes: 6
  %loadMem_43fb14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fb14 = call %struct.Memory* @routine_movl__eax__MINUS0xa8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fb14)
  store %struct.Memory* %call_43fb14, %struct.Memory** %MEMORY

  ; Code: movl %edi, %eax	 RIP: 43fb1a	 Bytes: 2
  %loadMem_43fb1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fb1a = call %struct.Memory* @routine_movl__edi___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fb1a)
  store %struct.Memory* %call_43fb1a, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0xac(%rbp)	 RIP: 43fb1c	 Bytes: 6
  %loadMem_43fb1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fb1c = call %struct.Memory* @routine_movl__edx__MINUS0xac__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fb1c)
  store %struct.Memory* %call_43fb1c, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 43fb22	 Bytes: 1
  %loadMem_43fb22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fb22 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fb22)
  store %struct.Memory* %call_43fb22, %struct.Memory** %MEMORY

  ; Code: idivl %ecx	 RIP: 43fb23	 Bytes: 2
  %loadMem_43fb23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fb23 = call %struct.Memory* @routine_idivl__ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fb23)
  store %struct.Memory* %call_43fb23, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %edx	 RIP: 43fb25	 Bytes: 3
  %loadMem_43fb25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fb25 = call %struct.Memory* @routine_shll__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fb25)
  store %struct.Memory* %call_43fb25, %struct.Memory** %MEMORY

  ; Code: movl -0xac(%rbp), %ecx	 RIP: 43fb28	 Bytes: 6
  %loadMem_43fb28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fb28 = call %struct.Memory* @routine_movl_MINUS0xac__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fb28)
  store %struct.Memory* %call_43fb28, %struct.Memory** %MEMORY

  ; Code: subl %edx, %ecx	 RIP: 43fb2e	 Bytes: 2
  %loadMem_43fb2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fb2e = call %struct.Memory* @routine_subl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fb2e)
  store %struct.Memory* %call_43fb2e, %struct.Memory** %MEMORY

  ; Code: movl -0xa8(%rbp), %edx	 RIP: 43fb30	 Bytes: 6
  %loadMem_43fb30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fb30 = call %struct.Memory* @routine_movl_MINUS0xa8__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fb30)
  store %struct.Memory* %call_43fb30, %struct.Memory** %MEMORY

  ; Code: shll %cl, %edx	 RIP: 43fb36	 Bytes: 2
  %loadMem_43fb36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fb36 = call %struct.Memory* @routine_shll__cl___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fb36)
  store %struct.Memory* %call_43fb36, %struct.Memory** %MEMORY

  ; Code: xorl $0xffffffff, %edx	 RIP: 43fb38	 Bytes: 3
  %loadMem_43fb38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fb38 = call %struct.Memory* @routine_xorl__0xffffffff___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fb38)
  store %struct.Memory* %call_43fb38, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rsi	 RIP: 43fb3b	 Bytes: 3
  %loadMem_43fb3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fb3b = call %struct.Memory* @routine_movslq__edx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fb3b)
  store %struct.Memory* %call_43fb3b, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %r8	 RIP: 43fb3e	 Bytes: 4
  %loadMem_43fb3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fb3e = call %struct.Memory* @routine_movq_MINUS0x20__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fb3e)
  store %struct.Memory* %call_43fb3e, %struct.Memory** %MEMORY

  ; Code: andq (%r8), %rsi	 RIP: 43fb42	 Bytes: 3
  %loadMem_43fb42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fb42 = call %struct.Memory* @routine_andq___r8____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fb42)
  store %struct.Memory* %call_43fb42, %struct.Memory** %MEMORY

  ; Code: movq %rsi, (%r8)	 RIP: 43fb45	 Bytes: 3
  %loadMem_43fb45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fb45 = call %struct.Memory* @routine_movq__rsi____r8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fb45)
  store %struct.Memory* %call_43fb45, %struct.Memory** %MEMORY

  ; Code: movl -0x60(%rbp), %edx	 RIP: 43fb48	 Bytes: 3
  %loadMem_43fb48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fb48 = call %struct.Memory* @routine_movl_MINUS0x60__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fb48)
  store %struct.Memory* %call_43fb48, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x48(%rbp)	 RIP: 43fb4b	 Bytes: 3
  %loadMem_43fb4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fb4b = call %struct.Memory* @routine_movl__edx__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fb4b)
  store %struct.Memory* %call_43fb4b, %struct.Memory** %MEMORY

  ; Code: .L_43fb4e:	 RIP: 43fb4e	 Bytes: 0
  br label %block_.L_43fb4e
block_.L_43fb4e:

  ; Code: movl -0x48(%rbp), %eax	 RIP: 43fb4e	 Bytes: 3
  %loadMem_43fb4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fb4e = call %struct.Memory* @routine_movl_MINUS0x48__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fb4e)
  store %struct.Memory* %call_43fb4e, %struct.Memory** %MEMORY

  ; Code: movl -0x60(%rbp), %ecx	 RIP: 43fb51	 Bytes: 3
  %loadMem_43fb51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fb51 = call %struct.Memory* @routine_movl_MINUS0x60__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fb51)
  store %struct.Memory* %call_43fb51, %struct.Memory** %MEMORY

  ; Code: addl $0x8, %ecx	 RIP: 43fb54	 Bytes: 3
  %loadMem_43fb54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fb54 = call %struct.Memory* @routine_addl__0x8___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fb54)
  store %struct.Memory* %call_43fb54, %struct.Memory** %MEMORY

  ; Code: cmpl %ecx, %eax	 RIP: 43fb57	 Bytes: 2
  %loadMem_43fb57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fb57 = call %struct.Memory* @routine_cmpl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fb57)
  store %struct.Memory* %call_43fb57, %struct.Memory** %MEMORY

  ; Code: jge .L_43fc36	 RIP: 43fb59	 Bytes: 6
  %loadMem_43fb59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fb59 = call %struct.Memory* @routine_jge_.L_43fc36(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fb59, i8* %BRANCH_TAKEN, i64 221, i64 6, i64 6)
  store %struct.Memory* %call_43fb59, %struct.Memory** %MEMORY

  %loadBr_43fb59 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43fb59 = icmp eq i8 %loadBr_43fb59, 1
  br i1 %cmpBr_43fb59, label %block_.L_43fc36, label %block_43fb5f

block_43fb5f:
  ; Code: movl -0x5c(%rbp), %eax	 RIP: 43fb5f	 Bytes: 3
  %loadMem_43fb5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fb5f = call %struct.Memory* @routine_movl_MINUS0x5c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fb5f)
  store %struct.Memory* %call_43fb5f, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4c(%rbp)	 RIP: 43fb62	 Bytes: 3
  %loadMem_43fb62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fb62 = call %struct.Memory* @routine_movl__eax__MINUS0x4c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fb62)
  store %struct.Memory* %call_43fb62, %struct.Memory** %MEMORY

  ; Code: .L_43fb65:	 RIP: 43fb65	 Bytes: 0
  br label %block_.L_43fb65
block_.L_43fb65:

  ; Code: movl -0x4c(%rbp), %eax	 RIP: 43fb65	 Bytes: 3
  %loadMem_43fb65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fb65 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fb65)
  store %struct.Memory* %call_43fb65, %struct.Memory** %MEMORY

  ; Code: movl -0x5c(%rbp), %ecx	 RIP: 43fb68	 Bytes: 3
  %loadMem_43fb68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fb68 = call %struct.Memory* @routine_movl_MINUS0x5c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fb68)
  store %struct.Memory* %call_43fb68, %struct.Memory** %MEMORY

  ; Code: addl $0x8, %ecx	 RIP: 43fb6b	 Bytes: 3
  %loadMem_43fb6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fb6b = call %struct.Memory* @routine_addl__0x8___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fb6b)
  store %struct.Memory* %call_43fb6b, %struct.Memory** %MEMORY

  ; Code: cmpl %ecx, %eax	 RIP: 43fb6e	 Bytes: 2
  %loadMem_43fb6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fb6e = call %struct.Memory* @routine_cmpl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fb6e)
  store %struct.Memory* %call_43fb6e, %struct.Memory** %MEMORY

  ; Code: jge .L_43fc23	 RIP: 43fb70	 Bytes: 6
  %loadMem_43fb70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fb70 = call %struct.Memory* @routine_jge_.L_43fc23(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fb70, i8* %BRANCH_TAKEN, i64 179, i64 6, i64 6)
  store %struct.Memory* %call_43fb70, %struct.Memory** %MEMORY

  %loadBr_43fb70 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43fb70 = icmp eq i8 %loadBr_43fb70, 1
  br i1 %cmpBr_43fb70, label %block_.L_43fc23, label %block_43fb76

block_43fb76:
  ; Code: movq 0x6cb900, %rax	 RIP: 43fb76	 Bytes: 8
  %loadMem_43fb76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fb76 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fb76)
  store %struct.Memory* %call_43fb76, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x11c14(%rax)	 RIP: 43fb7e	 Bytes: 7
  %loadMem_43fb7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fb7e = call %struct.Memory* @routine_cmpl__0x0__0x11c14__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fb7e)
  store %struct.Memory* %call_43fb7e, %struct.Memory** %MEMORY

  ; Code: jne .L_43fbf0	 RIP: 43fb85	 Bytes: 6
  %loadMem_43fb85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fb85 = call %struct.Memory* @routine_jne_.L_43fbf0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fb85, i8* %BRANCH_TAKEN, i64 107, i64 6, i64 6)
  store %struct.Memory* %call_43fb85, %struct.Memory** %MEMORY

  %loadBr_43fb85 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43fb85 = icmp eq i8 %loadBr_43fb85, 1
  br i1 %cmpBr_43fb85, label %block_.L_43fbf0, label %block_43fb8b

block_43fb8b:
  ; Code: movq 0x6cb900, %rax	 RIP: 43fb8b	 Bytes: 8
  %loadMem_43fb8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fb8b = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fb8b)
  store %struct.Memory* %call_43fb8b, %struct.Memory** %MEMORY

  ; Code: addq $0x3138, %rax	 RIP: 43fb93	 Bytes: 6
  %loadMem_43fb93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fb93 = call %struct.Memory* @routine_addq__0x3138___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fb93)
  store %struct.Memory* %call_43fb93, %struct.Memory** %MEMORY

  ; Code: movslq -0x48(%rbp), %rcx	 RIP: 43fb99	 Bytes: 4
  %loadMem_43fb99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fb99 = call %struct.Memory* @routine_movslq_MINUS0x48__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fb99)
  store %struct.Memory* %call_43fb99, %struct.Memory** %MEMORY

  ; Code: shlq $0x5, %rcx	 RIP: 43fb9d	 Bytes: 4
  %loadMem_43fb9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fb9d = call %struct.Memory* @routine_shlq__0x5___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fb9d)
  store %struct.Memory* %call_43fb9d, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 43fba1	 Bytes: 3
  %loadMem_43fba1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fba1 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fba1)
  store %struct.Memory* %call_43fba1, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %rcx	 RIP: 43fba4	 Bytes: 4
  %loadMem_43fba4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fba4 = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fba4)
  store %struct.Memory* %call_43fba4, %struct.Memory** %MEMORY

  ; Code: movw (%rax,%rcx,2), %dx	 RIP: 43fba8	 Bytes: 4
  %loadMem_43fba8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fba8 = call %struct.Memory* @routine_movw___rax__rcx_2____dx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fba8)
  store %struct.Memory* %call_43fba8, %struct.Memory** %MEMORY

  ; Code: movq 0x70fcf0, %rax	 RIP: 43fbac	 Bytes: 8
  %loadMem_43fbac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fbac = call %struct.Memory* @routine_movq_0x70fcf0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fbac)
  store %struct.Memory* %call_43fbac, %struct.Memory** %MEMORY

  ; Code: movq 0x1918(%rax), %rax	 RIP: 43fbb4	 Bytes: 7
  %loadMem_43fbb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fbb4 = call %struct.Memory* @routine_movq_0x1918__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fbb4)
  store %struct.Memory* %call_43fbb4, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 43fbbb	 Bytes: 8
  %loadMem_43fbbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fbbb = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fbbb)
  store %struct.Memory* %call_43fbbb, %struct.Memory** %MEMORY

  ; Code: movl 0x9c(%rcx), %esi	 RIP: 43fbc3	 Bytes: 6
  %loadMem_43fbc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fbc3 = call %struct.Memory* @routine_movl_0x9c__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fbc3)
  store %struct.Memory* %call_43fbc3, %struct.Memory** %MEMORY

  ; Code: addl -0x4c(%rbp), %esi	 RIP: 43fbc9	 Bytes: 3
  %loadMem_43fbc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fbc9 = call %struct.Memory* @routine_addl_MINUS0x4c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fbc9)
  store %struct.Memory* %call_43fbc9, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rcx	 RIP: 43fbcc	 Bytes: 3
  %loadMem_43fbcc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fbcc = call %struct.Memory* @routine_movslq__esi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fbcc)
  store %struct.Memory* %call_43fbcc, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 43fbcf	 Bytes: 4
  %loadMem_43fbcf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fbcf = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fbcf)
  store %struct.Memory* %call_43fbcf, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 43fbd3	 Bytes: 8
  %loadMem_43fbd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fbd3 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fbd3)
  store %struct.Memory* %call_43fbd3, %struct.Memory** %MEMORY

  ; Code: movl 0x98(%rcx), %esi	 RIP: 43fbdb	 Bytes: 6
  %loadMem_43fbdb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fbdb = call %struct.Memory* @routine_movl_0x98__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fbdb)
  store %struct.Memory* %call_43fbdb, %struct.Memory** %MEMORY

  ; Code: addl -0x48(%rbp), %esi	 RIP: 43fbe1	 Bytes: 3
  %loadMem_43fbe1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fbe1 = call %struct.Memory* @routine_addl_MINUS0x48__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fbe1)
  store %struct.Memory* %call_43fbe1, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rcx	 RIP: 43fbe4	 Bytes: 3
  %loadMem_43fbe4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fbe4 = call %struct.Memory* @routine_movslq__esi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fbe4)
  store %struct.Memory* %call_43fbe4, %struct.Memory** %MEMORY

  ; Code: movw %dx, (%rax,%rcx,2)	 RIP: 43fbe7	 Bytes: 4
  %loadMem_43fbe7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fbe7 = call %struct.Memory* @routine_movw__dx____rax__rcx_2_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fbe7)
  store %struct.Memory* %call_43fbe7, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43fc10	 RIP: 43fbeb	 Bytes: 5
  %loadMem_43fbeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fbeb = call %struct.Memory* @routine_jmpq_.L_43fc10(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fbeb, i64 37, i64 5)
  store %struct.Memory* %call_43fbeb, %struct.Memory** %MEMORY

  br label %block_.L_43fc10

  ; Code: .L_43fbf0:	 RIP: 43fbf0	 Bytes: 0
block_.L_43fbf0:

  ; Code: movq $0x722ff0, %rax	 RIP: 43fbf0	 Bytes: 10
  %loadMem_43fbf0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fbf0 = call %struct.Memory* @routine_movq__0x722ff0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fbf0)
  store %struct.Memory* %call_43fbf0, %struct.Memory** %MEMORY

  ; Code: movslq -0x48(%rbp), %rcx	 RIP: 43fbfa	 Bytes: 4
  %loadMem_43fbfa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fbfa = call %struct.Memory* @routine_movslq_MINUS0x48__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fbfa)
  store %struct.Memory* %call_43fbfa, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rcx	 RIP: 43fbfe	 Bytes: 4
  %loadMem_43fbfe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fbfe = call %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fbfe)
  store %struct.Memory* %call_43fbfe, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 43fc02	 Bytes: 3
  %loadMem_43fc02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fc02 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fc02)
  store %struct.Memory* %call_43fc02, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c(%rbp), %rcx	 RIP: 43fc05	 Bytes: 4
  %loadMem_43fc05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fc05 = call %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fc05)
  store %struct.Memory* %call_43fc05, %struct.Memory** %MEMORY

  ; Code: movl $0x0, (%rax,%rcx,4)	 RIP: 43fc09	 Bytes: 7
  %loadMem_43fc09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fc09 = call %struct.Memory* @routine_movl__0x0____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fc09)
  store %struct.Memory* %call_43fc09, %struct.Memory** %MEMORY

  ; Code: .L_43fc10:	 RIP: 43fc10	 Bytes: 0
  br label %block_.L_43fc10
block_.L_43fc10:

  ; Code: jmpq .L_43fc15	 RIP: 43fc10	 Bytes: 5
  %loadMem_43fc10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fc10 = call %struct.Memory* @routine_jmpq_.L_43fc15(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fc10, i64 5, i64 5)
  store %struct.Memory* %call_43fc10, %struct.Memory** %MEMORY

  br label %block_.L_43fc15

  ; Code: .L_43fc15:	 RIP: 43fc15	 Bytes: 0
block_.L_43fc15:

  ; Code: movl -0x4c(%rbp), %eax	 RIP: 43fc15	 Bytes: 3
  %loadMem_43fc15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fc15 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fc15)
  store %struct.Memory* %call_43fc15, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 43fc18	 Bytes: 3
  %loadMem_43fc18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fc18 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fc18)
  store %struct.Memory* %call_43fc18, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4c(%rbp)	 RIP: 43fc1b	 Bytes: 3
  %loadMem_43fc1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fc1b = call %struct.Memory* @routine_movl__eax__MINUS0x4c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fc1b)
  store %struct.Memory* %call_43fc1b, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43fb65	 RIP: 43fc1e	 Bytes: 5
  %loadMem_43fc1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fc1e = call %struct.Memory* @routine_jmpq_.L_43fb65(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fc1e, i64 -185, i64 5)
  store %struct.Memory* %call_43fc1e, %struct.Memory** %MEMORY

  br label %block_.L_43fb65

  ; Code: .L_43fc23:	 RIP: 43fc23	 Bytes: 0
block_.L_43fc23:

  ; Code: jmpq .L_43fc28	 RIP: 43fc23	 Bytes: 5
  %loadMem_43fc23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fc23 = call %struct.Memory* @routine_jmpq_.L_43fc28(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fc23, i64 5, i64 5)
  store %struct.Memory* %call_43fc23, %struct.Memory** %MEMORY

  br label %block_.L_43fc28

  ; Code: .L_43fc28:	 RIP: 43fc28	 Bytes: 0
block_.L_43fc28:

  ; Code: movl -0x48(%rbp), %eax	 RIP: 43fc28	 Bytes: 3
  %loadMem_43fc28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fc28 = call %struct.Memory* @routine_movl_MINUS0x48__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fc28)
  store %struct.Memory* %call_43fc28, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 43fc2b	 Bytes: 3
  %loadMem_43fc2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fc2b = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fc2b)
  store %struct.Memory* %call_43fc2b, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x48(%rbp)	 RIP: 43fc2e	 Bytes: 3
  %loadMem_43fc2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fc2e = call %struct.Memory* @routine_movl__eax__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fc2e)
  store %struct.Memory* %call_43fc2e, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43fb4e	 RIP: 43fc31	 Bytes: 5
  %loadMem_43fc31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fc31 = call %struct.Memory* @routine_jmpq_.L_43fb4e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fc31, i64 -227, i64 5)
  store %struct.Memory* %call_43fc31, %struct.Memory** %MEMORY

  br label %block_.L_43fb4e

  ; Code: .L_43fc36:	 RIP: 43fc36	 Bytes: 0
block_.L_43fc36:

  ; Code: movq 0x6cb900, %rax	 RIP: 43fc36	 Bytes: 8
  %loadMem_43fc36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fc36 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fc36)
  store %struct.Memory* %call_43fc36, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, 0x18(%rax)	 RIP: 43fc3e	 Bytes: 4
  %loadMem_43fc3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fc3e = call %struct.Memory* @routine_cmpl__0x3__0x18__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fc3e)
  store %struct.Memory* %call_43fc3e, %struct.Memory** %MEMORY

  ; Code: jne .L_43fca7	 RIP: 43fc42	 Bytes: 6
  %loadMem_43fc42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fc42 = call %struct.Memory* @routine_jne_.L_43fca7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fc42, i8* %BRANCH_TAKEN, i64 101, i64 6, i64 6)
  store %struct.Memory* %call_43fc42, %struct.Memory** %MEMORY

  %loadBr_43fc42 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43fc42 = icmp eq i8 %loadBr_43fc42, 1
  br i1 %cmpBr_43fc42, label %block_.L_43fca7, label %block_43fc48

block_43fc48:
  ; Code: movl -0x60(%rbp), %eax	 RIP: 43fc48	 Bytes: 3
  %loadMem_43fc48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fc48 = call %struct.Memory* @routine_movl_MINUS0x60__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fc48)
  store %struct.Memory* %call_43fc48, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x48(%rbp)	 RIP: 43fc4b	 Bytes: 3
  %loadMem_43fc4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fc4b = call %struct.Memory* @routine_movl__eax__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fc4b)
  store %struct.Memory* %call_43fc4b, %struct.Memory** %MEMORY

  ; Code: .L_43fc4e:	 RIP: 43fc4e	 Bytes: 0
  br label %block_.L_43fc4e
block_.L_43fc4e:

  ; Code: movl -0x48(%rbp), %eax	 RIP: 43fc4e	 Bytes: 3
  %loadMem_43fc4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fc4e = call %struct.Memory* @routine_movl_MINUS0x48__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fc4e)
  store %struct.Memory* %call_43fc4e, %struct.Memory** %MEMORY

  ; Code: movl -0x60(%rbp), %ecx	 RIP: 43fc51	 Bytes: 3
  %loadMem_43fc51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fc51 = call %struct.Memory* @routine_movl_MINUS0x60__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fc51)
  store %struct.Memory* %call_43fc51, %struct.Memory** %MEMORY

  ; Code: addl $0x8, %ecx	 RIP: 43fc54	 Bytes: 3
  %loadMem_43fc54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fc54 = call %struct.Memory* @routine_addl__0x8___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fc54)
  store %struct.Memory* %call_43fc54, %struct.Memory** %MEMORY

  ; Code: cmpl %ecx, %eax	 RIP: 43fc57	 Bytes: 2
  %loadMem_43fc57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fc57 = call %struct.Memory* @routine_cmpl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fc57)
  store %struct.Memory* %call_43fc57, %struct.Memory** %MEMORY

  ; Code: jge .L_43fca2	 RIP: 43fc59	 Bytes: 6
  %loadMem_43fc59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fc59 = call %struct.Memory* @routine_jge_.L_43fca2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fc59, i8* %BRANCH_TAKEN, i64 73, i64 6, i64 6)
  store %struct.Memory* %call_43fc59, %struct.Memory** %MEMORY

  %loadBr_43fc59 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43fc59 = icmp eq i8 %loadBr_43fc59, 1
  br i1 %cmpBr_43fc59, label %block_.L_43fca2, label %block_43fc5f

block_43fc5f:
  ; Code: movl -0x5c(%rbp), %eax	 RIP: 43fc5f	 Bytes: 3
  %loadMem_43fc5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fc5f = call %struct.Memory* @routine_movl_MINUS0x5c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fc5f)
  store %struct.Memory* %call_43fc5f, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4c(%rbp)	 RIP: 43fc62	 Bytes: 3
  %loadMem_43fc62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fc62 = call %struct.Memory* @routine_movl__eax__MINUS0x4c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fc62)
  store %struct.Memory* %call_43fc62, %struct.Memory** %MEMORY

  ; Code: .L_43fc65:	 RIP: 43fc65	 Bytes: 0
  br label %block_.L_43fc65
block_.L_43fc65:

  ; Code: movl -0x4c(%rbp), %eax	 RIP: 43fc65	 Bytes: 3
  %loadMem_43fc65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fc65 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fc65)
  store %struct.Memory* %call_43fc65, %struct.Memory** %MEMORY

  ; Code: movl -0x5c(%rbp), %ecx	 RIP: 43fc68	 Bytes: 3
  %loadMem_43fc68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fc68 = call %struct.Memory* @routine_movl_MINUS0x5c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fc68)
  store %struct.Memory* %call_43fc68, %struct.Memory** %MEMORY

  ; Code: addl $0x8, %ecx	 RIP: 43fc6b	 Bytes: 3
  %loadMem_43fc6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fc6b = call %struct.Memory* @routine_addl__0x8___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fc6b)
  store %struct.Memory* %call_43fc6b, %struct.Memory** %MEMORY

  ; Code: cmpl %ecx, %eax	 RIP: 43fc6e	 Bytes: 2
  %loadMem_43fc6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fc6e = call %struct.Memory* @routine_cmpl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fc6e)
  store %struct.Memory* %call_43fc6e, %struct.Memory** %MEMORY

  ; Code: jge .L_43fc8f	 RIP: 43fc70	 Bytes: 6
  %loadMem_43fc70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fc70 = call %struct.Memory* @routine_jge_.L_43fc8f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fc70, i8* %BRANCH_TAKEN, i64 31, i64 6, i64 6)
  store %struct.Memory* %call_43fc70, %struct.Memory** %MEMORY

  %loadBr_43fc70 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43fc70 = icmp eq i8 %loadBr_43fc70, 1
  br i1 %cmpBr_43fc70, label %block_.L_43fc8f, label %block_43fc76

block_43fc76:
  ; Code: movl -0x48(%rbp), %edi	 RIP: 43fc76	 Bytes: 3
  %loadMem_43fc76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fc76 = call %struct.Memory* @routine_movl_MINUS0x48__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fc76)
  store %struct.Memory* %call_43fc76, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %esi	 RIP: 43fc79	 Bytes: 3
  %loadMem_43fc79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fc79 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fc79)
  store %struct.Memory* %call_43fc79, %struct.Memory** %MEMORY

  ; Code: callq .copyblock_sp	 RIP: 43fc7c	 Bytes: 5
  %loadMem1_43fc7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43fc7c = call %struct.Memory* @routine_callq_.copyblock_sp(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43fc7c, i64 -198460, i64 5, i64 5)
  store %struct.Memory* %call1_43fc7c, %struct.Memory** %MEMORY

  %loadMem2_43fc7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43fc7c = load i64, i64* %3
  %call2_43fc7c = call %struct.Memory* @sub_40f540.copyblock_sp(%struct.State* %0, i64  %loadPC_43fc7c, %struct.Memory* %loadMem2_43fc7c)
  store %struct.Memory* %call2_43fc7c, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %eax	 RIP: 43fc81	 Bytes: 3
  %loadMem_43fc81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fc81 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fc81)
  store %struct.Memory* %call_43fc81, %struct.Memory** %MEMORY

  ; Code: addl $0x4, %eax	 RIP: 43fc84	 Bytes: 3
  %loadMem_43fc84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fc84 = call %struct.Memory* @routine_addl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fc84)
  store %struct.Memory* %call_43fc84, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4c(%rbp)	 RIP: 43fc87	 Bytes: 3
  %loadMem_43fc87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fc87 = call %struct.Memory* @routine_movl__eax__MINUS0x4c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fc87)
  store %struct.Memory* %call_43fc87, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43fc65	 RIP: 43fc8a	 Bytes: 5
  %loadMem_43fc8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fc8a = call %struct.Memory* @routine_jmpq_.L_43fc65(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fc8a, i64 -37, i64 5)
  store %struct.Memory* %call_43fc8a, %struct.Memory** %MEMORY

  br label %block_.L_43fc65

  ; Code: .L_43fc8f:	 RIP: 43fc8f	 Bytes: 0
block_.L_43fc8f:

  ; Code: jmpq .L_43fc94	 RIP: 43fc8f	 Bytes: 5
  %loadMem_43fc8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fc8f = call %struct.Memory* @routine_jmpq_.L_43fc94(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fc8f, i64 5, i64 5)
  store %struct.Memory* %call_43fc8f, %struct.Memory** %MEMORY

  br label %block_.L_43fc94

  ; Code: .L_43fc94:	 RIP: 43fc94	 Bytes: 0
block_.L_43fc94:

  ; Code: movl -0x48(%rbp), %eax	 RIP: 43fc94	 Bytes: 3
  %loadMem_43fc94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fc94 = call %struct.Memory* @routine_movl_MINUS0x48__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fc94)
  store %struct.Memory* %call_43fc94, %struct.Memory** %MEMORY

  ; Code: addl $0x4, %eax	 RIP: 43fc97	 Bytes: 3
  %loadMem_43fc97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fc97 = call %struct.Memory* @routine_addl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fc97)
  store %struct.Memory* %call_43fc97, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x48(%rbp)	 RIP: 43fc9a	 Bytes: 3
  %loadMem_43fc9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fc9a = call %struct.Memory* @routine_movl__eax__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fc9a)
  store %struct.Memory* %call_43fc9a, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43fc4e	 RIP: 43fc9d	 Bytes: 5
  %loadMem_43fc9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fc9d = call %struct.Memory* @routine_jmpq_.L_43fc4e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fc9d, i64 -79, i64 5)
  store %struct.Memory* %call_43fc9d, %struct.Memory** %MEMORY

  br label %block_.L_43fc4e

  ; Code: .L_43fca2:	 RIP: 43fca2	 Bytes: 0
block_.L_43fca2:

  ; Code: jmpq .L_43fca7	 RIP: 43fca2	 Bytes: 5
  %loadMem_43fca2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fca2 = call %struct.Memory* @routine_jmpq_.L_43fca7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fca2, i64 5, i64 5)
  store %struct.Memory* %call_43fca2, %struct.Memory** %MEMORY

  br label %block_.L_43fca7

  ; Code: .L_43fca7:	 RIP: 43fca7	 Bytes: 0
block_.L_43fca7:

  ; Code: jmpq .L_43fcac	 RIP: 43fca7	 Bytes: 5
  %loadMem_43fca7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fca7 = call %struct.Memory* @routine_jmpq_.L_43fcac(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fca7, i64 5, i64 5)
  store %struct.Memory* %call_43fca7, %struct.Memory** %MEMORY

  br label %block_.L_43fcac

  ; Code: .L_43fcac:	 RIP: 43fcac	 Bytes: 0
block_.L_43fcac:

  ; Code: movl -0x58(%rbp), %eax	 RIP: 43fcac	 Bytes: 3
  %loadMem_43fcac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fcac = call %struct.Memory* @routine_movl_MINUS0x58__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fcac)
  store %struct.Memory* %call_43fcac, %struct.Memory** %MEMORY

  ; Code: addq $0xb0, %rsp	 RIP: 43fcaf	 Bytes: 7
  %loadMem_43fcaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fcaf = call %struct.Memory* @routine_addq__0xb0___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fcaf)
  store %struct.Memory* %call_43fcaf, %struct.Memory** %MEMORY

  ; Code: popq %rbx	 RIP: 43fcb6	 Bytes: 1
  %loadMem_43fcb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fcb6 = call %struct.Memory* @routine_popq__rbx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fcb6)
  store %struct.Memory* %call_43fcb6, %struct.Memory** %MEMORY

  ; Code: popq %r14	 RIP: 43fcb7	 Bytes: 2
  %loadMem_43fcb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fcb7 = call %struct.Memory* @routine_popq__r14(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fcb7)
  store %struct.Memory* %call_43fcb7, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 43fcb9	 Bytes: 1
  %loadMem_43fcb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fcb9 = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fcb9)
  store %struct.Memory* %call_43fcb9, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 43fcba	 Bytes: 1
  %loadMem_43fcba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43fcba = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43fcba)
  store %struct.Memory* %call_43fcba, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_43fcba
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

define %struct.Memory* @routine_subq__0xb0___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 176)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWItE2RnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i16* nocapture, i64) #2 {
  %5 = trunc i64 %3 to i16
  store i16 %5, i16* %2, align 2
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movw__cx___ax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %AX = bitcast %union.anon* %8 to i16*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %CX = bitcast %union.anon* %11 to i16*
  %12 = load i16, i16* %CX
  %13 = zext i16 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWItE2RnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i16* %AX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWItE2MnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i16* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i16*
  %6 = load i16, i16* %5
  store i16 %6, i16* %2, align 2
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movw_0x18__rbp____r10w(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 21
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R10W = bitcast %union.anon* %8 to i16*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = add i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWItE2MnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i16* %R10W, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movw_0x10__rbp____r11w(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 23
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R11W = bitcast %union.anon* %8 to i16*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = add i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWItE2MnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i16* %R11W, i64 %13)
  ret %struct.Memory* %16
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

define %struct.Memory* @routine_movb__cl___bl(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %BL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 5
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %13 = bitcast %union.anon* %12 to %struct.anon.2*
  %CL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %13, i32 0, i32 0
  %14 = load i8, i8* %CL
  %15 = zext i8 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 2
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %BL, i64 %15)
  ret %struct.Memory* %18
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
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


define %struct.Memory* @routine_movl__0x2___r14d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 29
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R14D = bitcast %union.anon* %8 to i32*
  %9 = bitcast i32* %R14D to i64*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %9, i64 2)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = inttoptr i64 %2 to i64*
  store i64 %3, i64* %5
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__rdi__MINUS0x18__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 24
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__rsi__MINUS0x20__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 32
  %14 = load i64, i64* %RSI
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

define %struct.Memory* @routine_movl__edx__MINUS0x24__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 36
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWItE2RnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i16
  %6 = inttoptr i64 %2 to i16*
  store i16 %5, i16* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movw__ax__MINUS0x26__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %AX = bitcast %union.anon* %8 to i16*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 38
  %14 = load i16, i16* %AX
  %15 = zext i16 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWItE2RnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__r8d__MINUS0x2c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 44
  %14 = load i32, i32* %R8D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__r9d__MINUS0x30__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 48
  %14 = load i32, i32* %R9D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movw__r11w__MINUS0x32__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 23
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R11W = bitcast %union.anon* %8 to i16*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 50
  %14 = load i16, i16* %R11W
  %15 = zext i16 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 5
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWItE2RnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movw__r10w__MINUS0x34__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 21
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R10W = bitcast %union.anon* %8 to i16*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 52
  %14 = load i16, i16* %R10W
  %15 = zext i16 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 5
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWItE2RnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0x0__MINUS0x50__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 80
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x0__MINUS0x58__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 88
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

define %struct.Memory* @routine_idivl__r14d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 29
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R14D = bitcast %union.anon* %8 to i32*
  %9 = load i32, i32* %R14D
  %10 = zext i32 %9 to i64
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 3
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %10)
  ret %struct.Memory* %13
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

define %struct.Memory* @routine_shll__0x3___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 3)
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








define %struct.Memory* @routine_shll__0x3___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 3)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl__edx__MINUS0x60__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 96
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x24__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__ecx__MINUS0x98__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 152
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__edx___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x98__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
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

define %struct.Memory* @routine_shll__cl___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 7
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RDX = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RDX
  %14 = load i8, i8* %CL
  %15 = zext i8 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 2
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__edx__MINUS0x64__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 100
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__0x0__MINUS0x70__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 112
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

define %struct.Memory* @routine_cmpl__0x0__MINUS0x2c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i8
  %6 = inttoptr i64 %2 to i8*
  store i8 %5, i8* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movb__bl__MINUS0x99__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %BL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 153
  %15 = load i8, i8* %BL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 6
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
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

define %struct.Memory* @routine_jne_.L_43ef69(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x0__MINUS0x30__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movb__cl__MINUS0x99__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 153
  %15 = load i8, i8* %CL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 6
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
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


define %struct.Memory* @routine_cmpl__0x1__0x18__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
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

define %struct.Memory* @routine_setne__cl(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5SETNZI3RnWIhEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i8* %CL)
  ret %struct.Memory* %12
}



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i8*
  %6 = load i8, i8* %5
  store i8 %6, i8* %2, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movb_MINUS0x99__rbp____al(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 153
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
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


define %struct.Memory* @routine_movl__ecx__MINUS0x74__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 116
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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


define %struct.Memory* @routine_movq_0x3758__rdx____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 14168
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %10)
  ret %struct.Memory* %13
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = sext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movslq_0xc__rsi____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 12
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %10)
  ret %struct.Memory* %13
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

define %struct.Memory* @routine_imulq__0x278___rsi___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 632)
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


define %struct.Memory* @routine_movq__rdx__MINUS0x80__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 128
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq_MINUS0x80__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 128
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_0x23c__rdx____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 572
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__ecx__MINUS0x84__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 132
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_cmpl__0x1__0x18__rdx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_43efc9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x1__MINUS0x70__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 112
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x0__MINUS0x6c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 108
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_MINUS0x5c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 92
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__eax__MINUS0x38__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 56
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x38__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x5c__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 92
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
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

define %struct.Memory* @routine_addl__0x8___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 8)
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

define %struct.Memory* @routine_jge_.L_43f934(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl_0xac__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 172
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
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

define %struct.Memory* @routine_addl_MINUS0x38__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 56
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__ecx__MINUS0x40__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 64
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__0x0__MINUS0x68__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_MINUS0x60__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 96
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__ecx__MINUS0x3c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 60
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x3c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 60
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_jge_.L_43f918(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl_0xa8__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 168
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addl_MINUS0x3c__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 60
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__ecx__MINUS0x44__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 68
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x3c__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 60
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3SARI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* readnone, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
  %6 = trunc i64 %4 to i5
  switch i5 %6, label %10 [
    i5 0, label %43
    i5 1, label %7
  ]

; <label>:7:                                      ; preds = %5
  %8 = shl i64 %3, 32
  %9 = ashr i64 %8, 33
  br label %19

; <label>:10:                                     ; preds = %5
  %11 = and i64 %4, 31
  %12 = add  i64 %11, -1
  %13 = shl i64 %3, 32
  %14 = ashr exact i64 %13, 32
  %15 = ashr i64 %14, %12
  %16 = icmp ne i8 0, 0
  %17 = zext i1 %16 to i8
  %18 = lshr i64 %15, 1
  br label %19

; <label>:19:                                     ; preds = %10, %7
  %20 = phi i8 [ 0, %10 ], [ 0, %7 ]
  %21 = phi i64 [ %18, %10 ], [ %9, %7 ]
  %22 = phi i8 [ %17, %10 ], [ 0, %7 ]
  %23 = phi i64 [ %15, %10 ], [ %3, %7 ]
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  %26 = trunc i64 %21 to i32
  %27 = and i64 %21, 4294967295
  store i64 %27, i64* %2, align 8
  %28 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 %25, i8* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  %30 = and i32 %26, 255
  %31 = tail call i32 @llvm.ctpop.i32(i32 %30) #22
  %32 = trunc i32 %31 to i8
  %33 = and i8 %32, 1
  %34 = xor i8 %33, 1
  store i8 %34, i8* %29, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 %20, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  %37 = icmp eq i32 %26, 0
  %38 = zext i1 %37 to i8
  store i8 %38, i8* %36, align 1
  %39 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  %40 = lshr i32 %26, 31
  %41 = trunc i32 %40 to i8
  store i8 %41, i8* %39, align 1
  %42 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 %22, i8* %42, align 1
  br label %43

; <label>:43:                                     ; preds = %19, %5
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_sarl__0x2___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SARI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 2)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_movl__ecx__MINUS0x54__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 84
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_cmpl__0x0__0x11c14__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 72724
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

define %struct.Memory* @routine_je_.L_43f1ea(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_MINUS0x3c__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 60
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x38__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
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

define %struct.Memory* @routine_movswl_MINUS0x26__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 38
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnItEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x2c__rbp____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 44
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl_MINUS0x30__rbp____r9d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 48
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movw_MINUS0x32__rbp____ax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %AX = bitcast %union.anon* %8 to i16*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 50
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWItE2MnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i16* %AX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnItEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = trunc i64 %3 to i32
  %6 = shl i32 %5, 16
  %7 = ashr exact i32 %6, 16
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movswl__ax___r10d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %AX = bitcast %union.anon* %8 to i16*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 21
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R10D = bitcast %union.anon* %11 to i32*
  %12 = bitcast i32* %R10D to i64*
  %13 = load i16, i16* %AX
  %14 = zext i16 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnItEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_movswl_MINUS0x34__rbp____r10d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 52
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnItEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__r10d__0x8__rsp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 8
  %14 = load i32, i32* %R10D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 5
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

define %struct.Memory* @routine_callq_.ChromaPrediction4x4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x0__MINUS0x4c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 76
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_cmpl__0x4__MINUS0x4c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 76
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 4)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_43f118(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x0__MINUS0x48__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 72
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_cmpl__0x4__MINUS0x48__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 72
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 4)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_43f105(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__0x725610___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x725610_type* @G__0x725610 to i64))
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

define %struct.Memory* @routine_addq__0x400___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 1024)
  ret %struct.Memory* %12
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


define %struct.Memory* @routine_addq__0x3138___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 12600)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl_MINUS0x48__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addl_MINUS0x3c__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 60
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = shl i64 %3, 32
  %6 = ashr exact i64 %5, 32
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
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

define %struct.Memory* @routine_shlq__0x5___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 5)
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


define %struct.Memory* @routine_movl_MINUS0x4c__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 76
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addl_MINUS0x38__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 56
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i16*
  %6 = load i16, i16* %5
  %7 = zext i16 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movzwl___rcx__rsi_2____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 9
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RSI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RSI
  %17 = mul i64 %16, 2
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 4
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %18)
  ret %struct.Memory* %21
}


define %struct.Memory* @routine_movl_MINUS0x48__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addl_MINUS0x3c__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RDI
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 60
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movslq__edi___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EDI
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_shlq__0x6___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 6)
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


define %struct.Memory* @routine_movl_MINUS0x4c__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 76
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addl_MINUS0x38__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RDI
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 56
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movl__edx____rax__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 5
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RCX = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i32, i32* %EDX
  %20 = zext i32 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 3
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %18, i64 %20)
  ret %struct.Memory* %23
}


define %struct.Memory* @routine_movl_MINUS0x48__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
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


define %struct.Memory* @routine_movl__eax__MINUS0x48__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 72
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

define %struct.Memory* @routine_jmpq_.L_43f095(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_43f10a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movl_MINUS0x4c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 76
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__eax__MINUS0x4c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 76
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_43f084(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movl__0x1___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 1)
  ret %struct.Memory* %11
}




























define %struct.Memory* @routine_jge_.L_43f1e5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jge_.L_43f1d2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_addq__0x800___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 2048)
  ret %struct.Memory* %12
}
















































define %struct.Memory* @routine_jmpq_.L_43f162(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_43f1d7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_43f151(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_43f1ea(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movl_MINUS0x3c__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 60
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x38__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movswl_MINUS0x26__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 38
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnItEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movl_MINUS0x30__rbp____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 48
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movswl__ax___r9d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %AX = bitcast %union.anon* %8 to i16*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9D = bitcast %union.anon* %11 to i32*
  %12 = bitcast i32* %R9D to i64*
  %13 = load i16, i16* %AX
  %14 = zext i16 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnItEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}






define %struct.Memory* @routine_callq_.LumaPrediction4x4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq_0x6cb900___r11(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 23
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R11 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R11, i64 ptrtoint( %G_0x6cb900_type* @G_0x6cb900 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_cmpl__0x0__0x11c14__r11_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 23
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R11 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %R11
  %10 = add i64 %9, 72724
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_43f2c1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jge_.L_43f2bc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jge_.L_43f2a9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


















































define %struct.Memory* @routine_jmpq_.L_43f23f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_43f2ae(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_43f22e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_43f2c1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_jne_.L_43f4ed(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x0__MINUS0x84__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 132
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_43f427(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jge_.L_43f395(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jge_.L_43f382(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq_0x726418___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x726418_type* @G_0x726418 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl_MINUS0x40__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addl_MINUS0x4c__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 76
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = mul i64 %13, 8
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x44__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 68
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addl_MINUS0x48__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 72
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movzwl___rax__rdx_2____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = load i64, i64* %RDX
  %17 = mul i64 %16, 2
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 4
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %18)
  ret %struct.Memory* %21
}




define %struct.Memory* @routine_addq__0x3138___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 12600)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl_MINUS0x48__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 72
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addl_MINUS0x3c__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 60
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movslq__esi___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i32, i32* %ESI
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movl_MINUS0x4c__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 76
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addl_MINUS0x38__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 56
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movzwl___rax__rdx_2____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 9
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RSI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RDX
  %17 = mul i64 %16, 2
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 4
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %18)
  ret %struct.Memory* %21
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

define %struct.Memory* @routine_subl__esi___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RCX
  %13 = load i32, i32* %ESI
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_addq__0x3338___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 13112)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movslq_MINUS0x48__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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




define %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 76
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__ecx____rax__rdx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 7
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDX = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RDX
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i32, i32* %ECX
  %20 = zext i32 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 3
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %18, i64 %20)
  ret %struct.Memory* %23
}








define %struct.Memory* @routine_jmpq_.L_43f2fb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_43f387(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_43f2ea(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_cmpl__0x1__0x11ac8__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 72392
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_43f422(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x0__MINUS0x74__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 116
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_43f422(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpl__0x3__0x18__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 3)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_43f3df(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_leaq_MINUS0x58__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 88
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_callq_.dct_luma(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__eax__MINUS0x50__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 80
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_43f3f1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_callq_.dct_luma_sp(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpl__0x0__MINUS0x50__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 80
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_43f41d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x1___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 1)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl_MINUS0x54__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 84
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_shll__cl___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i8, i8* %CL
  %15 = zext i8 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 2
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movslq__eax___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_MINUS0x20__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 32
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L2ORI3RnWImE2RnImE2MnImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory*, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6
  %8 = or i64 %7, %3
  store i64 %8, i64* %2, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = trunc i64 %8 to i32
  %11 = and i32 %10, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11) #22
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = icmp eq i64 %8, 0
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 %18, i8* %19, align 1
  %20 = lshr i64 %8, 63
  %21 = trunc i64 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 0, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 0, i8* %24, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_orq___rsi____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L2ORI3RnWImE2RnImE2MnImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movl_MINUS0x64__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 100
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L2ORI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory*, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
  %6 = trunc i64 %3 to i32
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7
  %9 = or i32 %8, %6
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %2, align 8
  %11 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 0, i8* %11, align 1
  %12 = and i32 %9, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12) #22
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = icmp eq i32 %9, 0
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 %19, i8* %20, align 1
  %21 = lshr i32 %9, 31
  %22 = trunc i32 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 0, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 0, i8* %25, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_orl___rdx____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L2ORI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__eax____rdx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i32, i32* %EAX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_jmpq_.L_43f422(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_43f4e8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_jge_.L_43f4e3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jge_.L_43f4d0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


















































define %struct.Memory* @routine_addl_MINUS0x68__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 104
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12, i64 %14)
  ret %struct.Memory* %17
}










define %struct.Memory* @routine_addl_MINUS0x6c__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 108
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12, i64 %14)
  ret %struct.Memory* %17
}












define %struct.Memory* @routine_jmpq_.L_43f43f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_43f4d5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_43f42e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_jmpq_.L_43f8fc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_jge_.L_43f7d3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jge_.L_43f7c0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x723720___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x723720_type* @G__0x723720 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__0x6d40f0___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G__0x6d40f0_type* @G__0x6d40f0 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__0x6f6fa0___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G__0x6f6fa0_type* @G__0x6f6fa0 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__0x725610___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x725610_type* @G__0x725610 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__rsi___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_addq__0x800___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %9, i64 2048)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movq__rsi___r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSI
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_addq__0x400___r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R8 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %R8
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %9, i64 1024)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movq_0x6f6f90___r9(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 19
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R9 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R9, i64 ptrtoint( %G_0x6f6f90_type* @G_0x6f6f90 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq___r9____r9(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 19
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R9 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %R9
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R9, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl_MINUS0x40__rbp____r10d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_addl_MINUS0x4c__rbp____r10d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i32, i32* %R10D
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %RBP
  %16 = sub i64 %15, 76
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 4
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_movslq__r10d___r11(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 23
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R11 = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %R10D
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq___r9__r11_8____r9(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 19
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R9 = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 23
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R11 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R9
  %13 = load i64, i64* %R11
  %14 = mul i64 %13, 8
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R9, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x44__rbp____r10d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 68
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_addl_MINUS0x48__rbp____r10d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i32, i32* %R10D
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %RBP
  %16 = sub i64 %15, 72
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 4
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14, i64 %16)
  ret %struct.Memory* %19
}




define %struct.Memory* @routine_movzwl___r9__r11_2____r10d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9 = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 23
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %R11 = bitcast %union.anon* %14 to i64*
  %15 = bitcast i32* %R10D to i64*
  %16 = load i64, i64* %R9
  %17 = load i64, i64* %R11
  %18 = mul i64 %17, 2
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 5
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %15, i64 %19)
  ret %struct.Memory* %22
}


define %struct.Memory* @routine_movl_MINUS0x48__rbp____ebx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 72
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RBX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addl_MINUS0x3c__rbp____ebx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RBX
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 60
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RBX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movslq__ebx___r9(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EBX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9 = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EBX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R9, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_shlq__0x6___r9(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 19
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R9 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %R9
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %R9, i64 %9, i64 6)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_addq__r9___r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R8 = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R8
  %13 = load i64, i64* %R9
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x4c__rbp____ebx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 76
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RBX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addl_MINUS0x38__rbp____ebx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RBX
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 56
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RBX, i64 %12, i64 %14)
  ret %struct.Memory* %17
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

define %struct.Memory* @routine_subl___r8__r9_4____r10d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 19
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %R9 = bitcast %union.anon* %14 to i64*
  %15 = bitcast i32* %R10D to i64*
  %16 = load i32, i32* %R10D
  %17 = zext i32 %16 to i64
  %18 = load i64, i64* %R8
  %19 = load i64, i64* %R9
  %20 = mul i64 %19, 4
  %21 = add i64 %20, %18
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 4
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %15, i64 %17, i64 %21)
  ret %struct.Memory* %24
}


define %struct.Memory* @routine_movl__r10d__MINUS0x90__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 144
  %14 = load i32, i32* %R10D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 7
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movq_0x726418___r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 ptrtoint( %G_0x726418_type* @G_0x726418 to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movslq__r10d___r9(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9 = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %R10D
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R9, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq___r8__r9_8____r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R8 = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R8
  %13 = load i64, i64* %R9
  %14 = mul i64 %13, 8
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %15)
  ret %struct.Memory* %18
}








define %struct.Memory* @routine_movzwl___r8__r9_2____r10d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 19
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %R9 = bitcast %union.anon* %14 to i64*
  %15 = bitcast i32* %R10D to i64*
  %16 = load i64, i64* %R8
  %17 = load i64, i64* %R9
  %18 = mul i64 %17, 2
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 5
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %15, i64 %19)
  ret %struct.Memory* %22
}






define %struct.Memory* @routine_movslq__ebx___r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EBX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EBX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_shlq__0x6___r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R8 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %R8
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %9, i64 6)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_addq__r8___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSI
  %13 = load i64, i64* %R8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_subl___rsi__r8_4____r10d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 17
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %R8 = bitcast %union.anon* %14 to i64*
  %15 = bitcast i32* %R10D to i64*
  %16 = load i32, i32* %R10D
  %17 = zext i32 %16 to i64
  %18 = load i64, i64* %RSI
  %19 = load i64, i64* %R8
  %20 = mul i64 %19, 4
  %21 = add i64 %20, %18
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 4
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %15, i64 %17, i64 %21)
  ret %struct.Memory* %24
}


define %struct.Memory* @routine_movl__r10d__MINUS0x8c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 140
  %14 = load i32, i32* %R10D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 7
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movq_0x6f6f90___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G_0x6f6f90_type* @G_0x6f6f90 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq_0x8__rsi____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 8
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %10)
  ret %struct.Memory* %13
}






define %struct.Memory* @routine_movslq__r10d___r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %R10D
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq___rsi__r8_8____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSI
  %13 = load i64, i64* %R8
  %14 = mul i64 %13, 8
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %15)
  ret %struct.Memory* %18
}








define %struct.Memory* @routine_movzwl___rsi__r8_2____r10d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 17
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %R8 = bitcast %union.anon* %14 to i64*
  %15 = bitcast i32* %R10D to i64*
  %16 = load i64, i64* %RSI
  %17 = load i64, i64* %R8
  %18 = mul i64 %17, 2
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 5
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %15, i64 %19)
  ret %struct.Memory* %22
}






define %struct.Memory* @routine_movslq__ebx___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EBX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EBX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
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








define %struct.Memory* @routine_subl___rdi__rsi_4____r10d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 11
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDI = bitcast %union.anon* %14 to i64*
  %15 = bitcast i32* %R10D to i64*
  %16 = load i32, i32* %R10D
  %17 = zext i32 %16 to i64
  %18 = load i64, i64* %RDI
  %19 = load i64, i64* %RSI
  %20 = mul i64 %19, 4
  %21 = add i64 %20, %18
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 4
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %15, i64 %17, i64 %21)
  ret %struct.Memory* %24
}


define %struct.Memory* @routine_movl__r10d__MINUS0x88__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 136
  %14 = load i32, i32* %R10D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 7
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x88__rbp____r10d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 136
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_subl_MINUS0x90__rbp____r10d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i32, i32* %R10D
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %RBP
  %16 = sub i64 %15, 144
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 7
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14, i64 %16)
  ret %struct.Memory* %19
}










define %struct.Memory* @routine_movq__rdx___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %12)
  ret %struct.Memory* %15
}










define %struct.Memory* @routine_movl__r10d____rdi__rsi_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 11
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RDI
  %16 = load i64, i64* %RSI
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i32, i32* %R10D
  %20 = zext i32 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 4
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %18, i64 %20)
  ret %struct.Memory* %23
}


define %struct.Memory* @routine_movl_MINUS0x90__rbp____r10d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 144
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


















define %struct.Memory* @routine_movl___rdx__rsi_4____ebx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 3
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RBX, i64 %18)
  ret %struct.Memory* %21
}


define %struct.Memory* @routine_sarl__0x1___ebx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 2
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SARI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RBX, i64 %9, i64 1)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
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

define %struct.Memory* @routine_addl__ebx___r10d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EBX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 21
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R10D = bitcast %union.anon* %11 to i32*
  %12 = bitcast i32* %R10D to i64*
  %13 = load i32, i32* %R10D
  %14 = zext i32 %13 to i64
  %15 = load i32, i32* %EBX
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 3
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_movl__r10d__MINUS0x94__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 148
  %14 = load i32, i32* %R10D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 7
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x8c__rbp____r10d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 140
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_subl_MINUS0x94__rbp____r10d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i32, i32* %R10D
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %RBP
  %16 = sub i64 %15, 148
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 7
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14, i64 %16)
  ret %struct.Memory* %19
}






define %struct.Memory* @routine_movslq__ebx___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EBX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EBX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
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








define %struct.Memory* @routine_movl__r10d____rsi__rdx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 9
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RSI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RSI
  %16 = load i64, i64* %RDX
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i32, i32* %R10D
  %20 = zext i32 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 4
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %18, i64 %20)
  ret %struct.Memory* %23
}


define %struct.Memory* @routine_movl_MINUS0x94__rbp____r10d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 148
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
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








define %struct.Memory* @routine_movl___rcx__rdx_4____ebx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 3
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RBX, i64 %18)
  ret %struct.Memory* %21
}










define %struct.Memory* @routine_movslq__ebx___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EBX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EBX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}












define %struct.Memory* @routine_movl__r10d____rax__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RAX = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 5
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RCX = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i32, i32* %R10D
  %20 = zext i32 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 4
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %18, i64 %20)
  ret %struct.Memory* %23
}




define %struct.Memory* @routine_jne_.L_43f75d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl_MINUS0x48__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_movl_MINUS0x4c__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 76
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movl___rax__rdx_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = load i64, i64* %RDX
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 3
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %18)
  ret %struct.Memory* %21
}
















define %struct.Memory* @routine_jmpq_.L_43f7ad(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}












































define %struct.Memory* @routine_jmpq_.L_43f7b2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_43f505(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_43f7c5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_43f4f4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_je_.L_43f8f7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jne_.L_43f8f7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_je_.L_43f82a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_jmpq_.L_43f83c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}
















define %struct.Memory* @routine_jge_.L_43f8c6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jge_.L_43f8b3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x722ff0___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x722ff0_type* @G__0x722ff0 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_addq__0x3338___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 13112)
  ret %struct.Memory* %12
}










define %struct.Memory* @routine_movl___rcx__rdx_4____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 9
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RSI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RDX
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 3
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %18)
  ret %struct.Memory* %21
}


















define %struct.Memory* @routine_movl__esi____rax__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 5
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RCX = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i32, i32* %ESI
  %20 = zext i32 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 3
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %18, i64 %20)
  ret %struct.Memory* %23
}








define %struct.Memory* @routine_jmpq_.L_43f854(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_43f8b8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_43f843(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_je_.L_43f8f2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
























define %struct.Memory* @routine_jmpq_.L_43f8f7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_jmpq_.L_43f901(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movl_MINUS0x68__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addl__0x4___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 4)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl__eax__MINUS0x68__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 104
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_movl__eax__MINUS0x3c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 60
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_43f008(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_43f91d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movl_MINUS0x6c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 108
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__eax__MINUS0x6c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 108
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}








define %struct.Memory* @routine_jmpq_.L_43efd6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_je_.L_43fa8a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_je_.L_43fa85(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jne_.L_43fa85(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_je_.L_43f983(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_leaq_MINUS0x58__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_callq_.dct_luma8x8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_je_.L_43fa27(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpl__0x8__MINUS0x4c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 76
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 8)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_43fa22(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpl__0x8__MINUS0x48__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 72
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 8)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_43fa0f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


















define %struct.Memory* @routine_movl_MINUS0x60__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 96
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addl_MINUS0x48__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RDI
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 72
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %12, i64 %14)
  ret %struct.Memory* %17
}








define %struct.Memory* @routine_movl_MINUS0x5c__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 92
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addl_MINUS0x4c__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RDI
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 76
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %12, i64 %14)
  ret %struct.Memory* %17
}












define %struct.Memory* @routine_jmpq_.L_43f9b0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_43fa14(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_43f99f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_43fa27(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_je_.L_43fa80(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x33___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 51)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__0x2___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 2)
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_shll__0x2___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 2)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl_MINUS0x24__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 36
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__eax__MINUS0xa0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 160
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__esi___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__edx__MINUS0xa4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 164
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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


define %struct.Memory* @routine_movl_MINUS0xa4__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 164
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_subl__edx___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i32, i32* %EDX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl_MINUS0xa0__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 160
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movslq__edx___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_MINUS0x20__rbp____r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 32
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_orq___r8____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %R8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L2ORI3RnWImE2RnImE2MnImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__rdi____r8_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %R8
  %13 = load i64, i64* %RDI
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x64__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 100
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_MINUS0x18__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_orl___rdi____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %RDI
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L2ORI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__edx____rdi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RDI
  %13 = load i32, i32* %EDX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_jmpq_.L_43fa85(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_43fa8a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_je_.L_43fcac(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jne_.L_43fcac(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x4__MINUS0x58__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 88
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 4)
  ret %struct.Memory* %13
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

define %struct.Memory* @routine_jg_.L_43fcac(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl_0x28__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 40
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_addl_0x11bdc__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 72668
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_jne_.L_43faea(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpl__0x0__0x11c00__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 72704
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}








define %struct.Memory* @routine_movl__0x3f___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 63)
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_subl_MINUS0x64__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 100
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq_MINUS0x18__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory*, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
  %6 = trunc i64 %3 to i32
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7
  %9 = and i32 %8, %6
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %2, align 8
  %11 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 0, i8* %11, align 1
  %12 = and i32 %9, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12) #22
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = icmp eq i32 %9, 0
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 %19, i8* %20, align 1
  %21 = lshr i32 %9, 31
  %22 = trunc i32 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 0, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 0, i8* %25, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_andl___rsi____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__edx____rsi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RSI
  %13 = load i32, i32* %EDX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i64 %14)
  ret %struct.Memory* %17
}








define %struct.Memory* @routine_movl__eax__MINUS0xa8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 168
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__edi___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i32, i32* %EDI
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__edx__MINUS0xac__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 172
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}








define %struct.Memory* @routine_movl_MINUS0xac__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 172
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl_MINUS0xa8__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 168
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3XORI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
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

define %struct.Memory* @routine_xorl__0xffffffff___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3XORI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 -1)
  ret %struct.Memory* %12
}





define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnImE2MnImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory*, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6
  %8 = and i64 %7, %3
  store i64 %8, i64* %2, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = trunc i64 %8 to i32
  %11 = and i32 %10, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11) #22
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = icmp eq i64 %8, 0
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 %18, i8* %19, align 1
  %20 = lshr i64 %8, 63
  %21 = trunc i64 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 0, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 0, i8* %24, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_andq___r8____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSI
  %13 = load i64, i64* %R8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnImE2MnImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__rsi____r8_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R8
  %13 = load i64, i64* %RSI
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x60__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 96
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__edx__MINUS0x48__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 72
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}










define %struct.Memory* @routine_jge_.L_43fc36(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_jge_.L_43fc23(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jne_.L_43fbf0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movslq_MINUS0x48__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_shlq__0x5___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 5)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 76
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movw___rax__rcx_2____dx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %DX = bitcast %union.anon* %8 to i16*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RAX = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 5
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RCX = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 2
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 4
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWItE2MnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i16* %DX, i64 %18)
  ret %struct.Memory* %21
}


define %struct.Memory* @routine_movq_0x70fcf0___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x70fcf0_type* @G_0x70fcf0 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq_0x1918__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 6424
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movl_0x9c__rcx____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 156
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addl_MINUS0x4c__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 76
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12, i64 %14)
  ret %struct.Memory* %17
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




define %struct.Memory* @routine_movl_0x98__rcx____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 152
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addl_MINUS0x48__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 72
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movw__dx____rax__rcx_2_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %DX = bitcast %union.anon* %8 to i16*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RAX = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 5
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RCX = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 2
  %18 = add i64 %17, %15
  %19 = load i16, i16* %DX
  %20 = zext i16 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 4
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWItE2RnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %18, i64 %20)
  ret %struct.Memory* %23
}


define %struct.Memory* @routine_jmpq_.L_43fc10(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}












define %struct.Memory* @routine_movl__0x0____rax__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 7
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %15, i64 0)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_43fc15(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_43fb65(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_43fc28(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_43fb4e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_jne_.L_43fca7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_jge_.L_43fca2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_jge_.L_43fc8f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_callq_.copyblock_sp(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jmpq_.L_43fc65(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_43fc94(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_43fc4e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_43fca7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_43fcac(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movl_MINUS0x58__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addq__0xb0___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 176)
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

