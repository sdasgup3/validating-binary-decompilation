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

declare %struct.Memory* @sub_488020.SetModesAndRefframeForBlocks(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_440fa0.LumaResidualCoding(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_489ab0.SetCoeffAndReconstruction8x8(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_486b60.Mode_Decision_for_Intra4x4Macroblock(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_40bc60.dct_chroma_DC(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_489010.Intra16x16_Mode_Decision(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4a3f60.Mode_Decision_for_new_Intra8x8Macroblock(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_41dca0.compute_residue_mb(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_441540.ChromaResidualCoding(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_487ff0.I16Offset(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_41ca20.decode_one_mb(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_49d8c0.store_coding_state(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_443f60.writeMBLayer(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4ac700.ue_linfo(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_49dc00.reset_coding_state(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_48d340.field_flag_inference(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Data Access Globals
%G_0x24730__rip__type = type <{ [8 x i8] }>
@G_0x24730__rip_= global %G_0x24730__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x24762__rip__type = type <{ [8 x i8] }>
@G_0x24762__rip_= global %G_0x24762__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x2483e__rip__type = type <{ [8 x i8] }>
@G_0x2483e__rip_= global %G_0x2483e__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x6cb8f8_type = type <{ [8 x i8] }>
@G_0x6cb8f8= global %G_0x6cb8f8_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x6cb900_type = type <{ [8 x i8] }>
@G_0x6cb900= global %G_0x6cb900_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x6cb918_type = type <{ [8 x i8] }>
@G_0x6cb918= global %G_0x6cb918_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x6cc628_type = type <{ [8 x i8] }>
@G_0x6cc628= global %G_0x6cc628_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x6f6f90_type = type <{ [8 x i8] }>
@G_0x6f6f90= global %G_0x6f6f90_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x70fcf0_type = type <{ [8 x i8] }>
@G_0x70fcf0= global %G_0x70fcf0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x722cb8_type = type <{ [8 x i8] }>
@G_0x722cb8= global %G_0x722cb8_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x726418_type = type <{ [8 x i8] }>
@G_0x726418= global %G_0x726418_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x6cc660_type = type <{ [8 x i8] }>
@G__0x6cc660= global %G__0x6cc660_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x6d0920_type = type <{ [8 x i8] }>
@G__0x6d0920= global %G__0x6d0920_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>


define %struct.Memory* @RDCost_for_macroblocks(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .RDCost_for_macroblocks:	 RIP: 48c580	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 48c580	 Bytes: 1
  %loadMem_48c580 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c580 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c580)
  store %struct.Memory* %call_48c580, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 48c581	 Bytes: 3
  %loadMem_48c581 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c581 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c581)
  store %struct.Memory* %call_48c581, %struct.Memory** %MEMORY

  ; Code: subq $0xc0, %rsp	 RIP: 48c584	 Bytes: 7
  %loadMem_48c584 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c584 = call %struct.Memory* @routine_subq__0xc0___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c584)
  store %struct.Memory* %call_48c584, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x10(%rbp)	 RIP: 48c58b	 Bytes: 5
  %loadMem_48c58b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c58b = call %struct.Memory* @routine_movsd__xmm0__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c58b)
  store %struct.Memory* %call_48c58b, %struct.Memory** %MEMORY

  ; Code: movl %edi, -0x14(%rbp)	 RIP: 48c590	 Bytes: 3
  %loadMem_48c590 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c590 = call %struct.Memory* @routine_movl__edi__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c590)
  store %struct.Memory* %call_48c590, %struct.Memory** %MEMORY

  ; Code: movq %rsi, -0x20(%rbp)	 RIP: 48c593	 Bytes: 4
  %loadMem_48c593 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c593 = call %struct.Memory* @routine_movq__rsi__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c593)
  store %struct.Memory* %call_48c593, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x24(%rbp)	 RIP: 48c597	 Bytes: 3
  %loadMem_48c597 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c597 = call %struct.Memory* @routine_movl__edx__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c597)
  store %struct.Memory* %call_48c597, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x34(%rbp)	 RIP: 48c59a	 Bytes: 7
  %loadMem_48c59a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c59a = call %struct.Memory* @routine_movl__0x0__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c59a)
  store %struct.Memory* %call_48c59a, %struct.Memory** %MEMORY

  ; Code: movq $0x0, -0x40(%rbp)	 RIP: 48c5a1	 Bytes: 8
  %loadMem_48c5a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c5a1 = call %struct.Memory* @routine_movq__0x0__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c5a1)
  store %struct.Memory* %call_48c5a1, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rsi	 RIP: 48c5a9	 Bytes: 8
  %loadMem_48c5a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c5a9 = call %struct.Memory* @routine_movq_0x6cb900___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c5a9)
  store %struct.Memory* %call_48c5a9, %struct.Memory** %MEMORY

  ; Code: movq 0x3758(%rsi), %rsi	 RIP: 48c5b1	 Bytes: 7
  %loadMem_48c5b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c5b1 = call %struct.Memory* @routine_movq_0x3758__rsi____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c5b1)
  store %struct.Memory* %call_48c5b1, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 48c5b8	 Bytes: 8
  %loadMem_48c5b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c5b8 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c5b8)
  store %struct.Memory* %call_48c5b8, %struct.Memory** %MEMORY

  ; Code: movslq 0xc(%rax), %rax	 RIP: 48c5c0	 Bytes: 4
  %loadMem_48c5c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c5c0 = call %struct.Memory* @routine_movslq_0xc__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c5c0)
  store %struct.Memory* %call_48c5c0, %struct.Memory** %MEMORY

  ; Code: imulq $0x278, %rax, %rax	 RIP: 48c5c4	 Bytes: 7
  %loadMem_48c5c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c5c4 = call %struct.Memory* @routine_imulq__0x278___rax___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c5c4)
  store %struct.Memory* %call_48c5c4, %struct.Memory** %MEMORY

  ; Code: addq %rax, %rsi	 RIP: 48c5cb	 Bytes: 3
  %loadMem_48c5cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c5cb = call %struct.Memory* @routine_addq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c5cb)
  store %struct.Memory* %call_48c5cb, %struct.Memory** %MEMORY

  ; Code: movq %rsi, -0x50(%rbp)	 RIP: 48c5ce	 Bytes: 4
  %loadMem_48c5ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c5ce = call %struct.Memory* @routine_movq__rsi__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c5ce)
  store %struct.Memory* %call_48c5ce, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 48c5d2	 Bytes: 8
  %loadMem_48c5d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c5d2 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c5d2)
  store %struct.Memory* %call_48c5d2, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0xc(%rax)	 RIP: 48c5da	 Bytes: 4
  %loadMem_48c5da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c5da = call %struct.Memory* @routine_cmpl__0x0__0xc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c5da)
  store %struct.Memory* %call_48c5da, %struct.Memory** %MEMORY

  ; Code: je .L_48c61a	 RIP: 48c5de	 Bytes: 6
  %loadMem_48c5de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c5de = call %struct.Memory* @routine_je_.L_48c61a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c5de, i8* %BRANCH_TAKEN, i64 60, i64 6, i64 6)
  store %struct.Memory* %call_48c5de, %struct.Memory** %MEMORY

  %loadBr_48c5de = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48c5de = icmp eq i8 %loadBr_48c5de, 1
  br i1 %cmpBr_48c5de, label %block_.L_48c61a, label %block_48c5e4

block_48c5e4:
  ; Code: movq 0x6cb900, %rax	 RIP: 48c5e4	 Bytes: 8
  %loadMem_48c5e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c5e4 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c5e4)
  store %struct.Memory* %call_48c5e4, %struct.Memory** %MEMORY

  ; Code: movq 0x3758(%rax), %rax	 RIP: 48c5ec	 Bytes: 7
  %loadMem_48c5ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c5ec = call %struct.Memory* @routine_movq_0x3758__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c5ec)
  store %struct.Memory* %call_48c5ec, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 48c5f3	 Bytes: 8
  %loadMem_48c5f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c5f3 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c5f3)
  store %struct.Memory* %call_48c5f3, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%rcx), %edx	 RIP: 48c5fb	 Bytes: 3
  %loadMem_48c5fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c5fb = call %struct.Memory* @routine_movl_0xc__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c5fb)
  store %struct.Memory* %call_48c5fb, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 48c5fe	 Bytes: 3
  %loadMem_48c5fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c5fe = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c5fe)
  store %struct.Memory* %call_48c5fe, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 48c601	 Bytes: 3
  %loadMem_48c601 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c601 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c601)
  store %struct.Memory* %call_48c601, %struct.Memory** %MEMORY

  ; Code: imulq $0x278, %rcx, %rcx	 RIP: 48c604	 Bytes: 7
  %loadMem_48c604 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c604 = call %struct.Memory* @routine_imulq__0x278___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c604)
  store %struct.Memory* %call_48c604, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 48c60b	 Bytes: 3
  %loadMem_48c60b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c60b = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c60b)
  store %struct.Memory* %call_48c60b, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x88(%rbp)	 RIP: 48c60e	 Bytes: 7
  %loadMem_48c60e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c60e = call %struct.Memory* @routine_movq__rax__MINUS0x88__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c60e)
  store %struct.Memory* %call_48c60e, %struct.Memory** %MEMORY

  ; Code: jmpq .L_48c62a	 RIP: 48c615	 Bytes: 5
  %loadMem_48c615 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c615 = call %struct.Memory* @routine_jmpq_.L_48c62a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c615, i64 21, i64 5)
  store %struct.Memory* %call_48c615, %struct.Memory** %MEMORY

  br label %block_.L_48c62a

  ; Code: .L_48c61a:	 RIP: 48c61a	 Bytes: 0
block_.L_48c61a:

  ; Code: xorl %eax, %eax	 RIP: 48c61a	 Bytes: 2
  %loadMem_48c61a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c61a = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c61a)
  store %struct.Memory* %call_48c61a, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 48c61c	 Bytes: 2
  %loadMem_48c61c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c61c = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c61c)
  store %struct.Memory* %call_48c61c, %struct.Memory** %MEMORY

  ; Code: movq %rcx, -0x88(%rbp)	 RIP: 48c61e	 Bytes: 7
  %loadMem_48c61e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c61e = call %struct.Memory* @routine_movq__rcx__MINUS0x88__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c61e)
  store %struct.Memory* %call_48c61e, %struct.Memory** %MEMORY

  ; Code: jmpq .L_48c62a	 RIP: 48c625	 Bytes: 5
  %loadMem_48c625 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c625 = call %struct.Memory* @routine_jmpq_.L_48c62a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c625, i64 5, i64 5)
  store %struct.Memory* %call_48c625, %struct.Memory** %MEMORY

  br label %block_.L_48c62a

  ; Code: .L_48c62a:	 RIP: 48c62a	 Bytes: 0
block_.L_48c62a:

  ; Code: movq -0x88(%rbp), %rax	 RIP: 48c62a	 Bytes: 7
  %loadMem_48c62a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c62a = call %struct.Memory* @routine_movq_MINUS0x88__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c62a)
  store %struct.Memory* %call_48c62a, %struct.Memory** %MEMORY

  ; Code: xorl %ecx, %ecx	 RIP: 48c631	 Bytes: 2
  %loadMem_48c631 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c631 = call %struct.Memory* @routine_xorl__ecx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c631)
  store %struct.Memory* %call_48c631, %struct.Memory** %MEMORY

  ; Code: movb %cl, %dl	 RIP: 48c633	 Bytes: 2
  %loadMem_48c633 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c633 = call %struct.Memory* @routine_movb__cl___dl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c633)
  store %struct.Memory* %call_48c633, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x58(%rbp)	 RIP: 48c635	 Bytes: 4
  %loadMem_48c635 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c635 = call %struct.Memory* @routine_movq__rax__MINUS0x58__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c635)
  store %struct.Memory* %call_48c635, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 48c639	 Bytes: 8
  %loadMem_48c639 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c639 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c639)
  store %struct.Memory* %call_48c639, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, 0x18(%rax)	 RIP: 48c641	 Bytes: 4
  %loadMem_48c641 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c641 = call %struct.Memory* @routine_cmpl__0x1__0x18__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c641)
  store %struct.Memory* %call_48c641, %struct.Memory** %MEMORY

  ; Code: sete %sil	 RIP: 48c645	 Bytes: 4
  %loadMem_48c645 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c645 = call %struct.Memory* @routine_sete__sil(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c645)
  store %struct.Memory* %call_48c645, %struct.Memory** %MEMORY

  ; Code: andb $0x1, %sil	 RIP: 48c649	 Bytes: 4
  %loadMem_48c649 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c649 = call %struct.Memory* @routine_andb__0x1___sil(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c649)
  store %struct.Memory* %call_48c649, %struct.Memory** %MEMORY

  ; Code: movzbl %sil, %ecx	 RIP: 48c64d	 Bytes: 4
  %loadMem_48c64d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c64d = call %struct.Memory* @routine_movzbl__sil___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c64d)
  store %struct.Memory* %call_48c64d, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x5c(%rbp)	 RIP: 48c651	 Bytes: 3
  %loadMem_48c651 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c651 = call %struct.Memory* @routine_movl__ecx__MINUS0x5c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c651)
  store %struct.Memory* %call_48c651, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 48c654	 Bytes: 8
  %loadMem_48c654 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c654 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c654)
  store %struct.Memory* %call_48c654, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, 0x18(%rax)	 RIP: 48c65c	 Bytes: 4
  %loadMem_48c65c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c65c = call %struct.Memory* @routine_cmpl__0x2__0x18__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c65c)
  store %struct.Memory* %call_48c65c, %struct.Memory** %MEMORY

  ; Code: movb %dl, -0x89(%rbp)	 RIP: 48c660	 Bytes: 6
  %loadMem_48c660 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c660 = call %struct.Memory* @routine_movb__dl__MINUS0x89__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c660)
  store %struct.Memory* %call_48c660, %struct.Memory** %MEMORY

  ; Code: je .L_48c684	 RIP: 48c666	 Bytes: 6
  %loadMem_48c666 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c666 = call %struct.Memory* @routine_je_.L_48c684(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c666, i8* %BRANCH_TAKEN, i64 30, i64 6, i64 6)
  store %struct.Memory* %call_48c666, %struct.Memory** %MEMORY

  %loadBr_48c666 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48c666 = icmp eq i8 %loadBr_48c666, 1
  br i1 %cmpBr_48c666, label %block_.L_48c684, label %block_48c66c

block_48c66c:
  ; Code: movq 0x6cb8f8, %rax	 RIP: 48c66c	 Bytes: 8
  %loadMem_48c66c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c66c = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c66c)
  store %struct.Memory* %call_48c66c, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, 0x934(%rax)	 RIP: 48c674	 Bytes: 7
  %loadMem_48c674 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c674 = call %struct.Memory* @routine_cmpl__0x1__0x934__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c674)
  store %struct.Memory* %call_48c674, %struct.Memory** %MEMORY

  ; Code: setne %cl	 RIP: 48c67b	 Bytes: 3
  %loadMem_48c67b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c67b = call %struct.Memory* @routine_setne__cl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c67b)
  store %struct.Memory* %call_48c67b, %struct.Memory** %MEMORY

  ; Code: movb %cl, -0x89(%rbp)	 RIP: 48c67e	 Bytes: 6
  %loadMem_48c67e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c67e = call %struct.Memory* @routine_movb__cl__MINUS0x89__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c67e)
  store %struct.Memory* %call_48c67e, %struct.Memory** %MEMORY

  ; Code: .L_48c684:	 RIP: 48c684	 Bytes: 0
  br label %block_.L_48c684
block_.L_48c684:

  ; Code: movb -0x89(%rbp), %al	 RIP: 48c684	 Bytes: 6
  %loadMem_48c684 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c684 = call %struct.Memory* @routine_movb_MINUS0x89__rbp____al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c684)
  store %struct.Memory* %call_48c684, %struct.Memory** %MEMORY

  ; Code: andb $0x1, %al	 RIP: 48c68a	 Bytes: 2
  %loadMem_48c68a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c68a = call %struct.Memory* @routine_andb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c68a)
  store %struct.Memory* %call_48c68a, %struct.Memory** %MEMORY

  ; Code: movzbl %al, %ecx	 RIP: 48c68c	 Bytes: 3
  %loadMem_48c68c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c68c = call %struct.Memory* @routine_movzbl__al___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c68c)
  store %struct.Memory* %call_48c68c, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x64(%rbp)	 RIP: 48c68f	 Bytes: 3
  %loadMem_48c68f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c68f = call %struct.Memory* @routine_movl__ecx__MINUS0x64__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c68f)
  store %struct.Memory* %call_48c68f, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x70(%rbp)	 RIP: 48c692	 Bytes: 7
  %loadMem_48c692 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c692 = call %struct.Memory* @routine_movl__0x0__MINUS0x70__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c692)
  store %struct.Memory* %call_48c692, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %edi	 RIP: 48c699	 Bytes: 3
  %loadMem_48c699 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c699 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c699)
  store %struct.Memory* %call_48c699, %struct.Memory** %MEMORY

  ; Code: callq .SetModesAndRefframeForBlocks	 RIP: 48c69c	 Bytes: 5
  %loadMem1_48c69c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_48c69c = call %struct.Memory* @routine_callq_.SetModesAndRefframeForBlocks(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_48c69c, i64 -18044, i64 5, i64 5)
  store %struct.Memory* %call1_48c69c, %struct.Memory** %MEMORY

  %loadMem2_48c69c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_48c69c = load i64, i64* %3
  %call2_48c69c = call %struct.Memory* @sub_488020.SetModesAndRefframeForBlocks(%struct.State* %0, i64  %loadPC_48c69c, %struct.Memory* %loadMem2_48c69c)
  store %struct.Memory* %call2_48c69c, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0x5c(%rbp)	 RIP: 48c6a1	 Bytes: 4
  %loadMem_48c6a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c6a1 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x5c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c6a1)
  store %struct.Memory* %call_48c6a1, %struct.Memory** %MEMORY

  ; Code: je .L_48c761	 RIP: 48c6a5	 Bytes: 6
  %loadMem_48c6a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c6a5 = call %struct.Memory* @routine_je_.L_48c761(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c6a5, i8* %BRANCH_TAKEN, i64 188, i64 6, i64 6)
  store %struct.Memory* %call_48c6a5, %struct.Memory** %MEMORY

  %loadBr_48c6a5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48c6a5 = icmp eq i8 %loadBr_48c6a5, 1
  br i1 %cmpBr_48c6a5, label %block_.L_48c761, label %block_48c6ab

block_48c6ab:
  ; Code: cmpl $0x0, -0x14(%rbp)	 RIP: 48c6ab	 Bytes: 4
  %loadMem_48c6ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c6ab = call %struct.Memory* @routine_cmpl__0x0__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c6ab)
  store %struct.Memory* %call_48c6ab, %struct.Memory** %MEMORY

  ; Code: jne .L_48c761	 RIP: 48c6af	 Bytes: 6
  %loadMem_48c6af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c6af = call %struct.Memory* @routine_jne_.L_48c761(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c6af, i8* %BRANCH_TAKEN, i64 178, i64 6, i64 6)
  store %struct.Memory* %call_48c6af, %struct.Memory** %MEMORY

  %loadBr_48c6af = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48c6af = icmp eq i8 %loadBr_48c6af, 1
  br i1 %cmpBr_48c6af, label %block_.L_48c761, label %block_48c6b5

block_48c6b5:
  ; Code: movq 0x6cb900, %rax	 RIP: 48c6b5	 Bytes: 8
  %loadMem_48c6b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c6b5 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c6b5)
  store %struct.Memory* %call_48c6b5, %struct.Memory** %MEMORY

  ; Code: movl 0x98(%rax), %ecx	 RIP: 48c6bd	 Bytes: 6
  %loadMem_48c6bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c6bd = call %struct.Memory* @routine_movl_0x98__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c6bd)
  store %struct.Memory* %call_48c6bd, %struct.Memory** %MEMORY

  ; Code: sarl $0x2, %ecx	 RIP: 48c6c3	 Bytes: 3
  %loadMem_48c6c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c6c3 = call %struct.Memory* @routine_sarl__0x2___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c6c3)
  store %struct.Memory* %call_48c6c3, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x78(%rbp)	 RIP: 48c6c6	 Bytes: 3
  %loadMem_48c6c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c6c6 = call %struct.Memory* @routine_movl__ecx__MINUS0x78__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c6c6)
  store %struct.Memory* %call_48c6c6, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 48c6c9	 Bytes: 8
  %loadMem_48c6c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c6c9 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c6c9)
  store %struct.Memory* %call_48c6c9, %struct.Memory** %MEMORY

  ; Code: movl 0x9c(%rax), %ecx	 RIP: 48c6d1	 Bytes: 6
  %loadMem_48c6d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c6d1 = call %struct.Memory* @routine_movl_0x9c__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c6d1)
  store %struct.Memory* %call_48c6d1, %struct.Memory** %MEMORY

  ; Code: sarl $0x2, %ecx	 RIP: 48c6d7	 Bytes: 3
  %loadMem_48c6d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c6d7 = call %struct.Memory* @routine_sarl__0x2___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c6d7)
  store %struct.Memory* %call_48c6d7, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x7c(%rbp)	 RIP: 48c6da	 Bytes: 3
  %loadMem_48c6da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c6da = call %struct.Memory* @routine_movl__ecx__MINUS0x7c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c6da)
  store %struct.Memory* %call_48c6da, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x28(%rbp)	 RIP: 48c6dd	 Bytes: 7
  %loadMem_48c6dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c6dd = call %struct.Memory* @routine_movl__0x0__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c6dd)
  store %struct.Memory* %call_48c6dd, %struct.Memory** %MEMORY

  ; Code: .L_48c6e4:	 RIP: 48c6e4	 Bytes: 0
  br label %block_.L_48c6e4
block_.L_48c6e4:

  ; Code: cmpl $0x4, -0x28(%rbp)	 RIP: 48c6e4	 Bytes: 4
  %loadMem_48c6e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c6e4 = call %struct.Memory* @routine_cmpl__0x4__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c6e4)
  store %struct.Memory* %call_48c6e4, %struct.Memory** %MEMORY

  ; Code: jge .L_48c75c	 RIP: 48c6e8	 Bytes: 6
  %loadMem_48c6e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c6e8 = call %struct.Memory* @routine_jge_.L_48c75c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c6e8, i8* %BRANCH_TAKEN, i64 116, i64 6, i64 6)
  store %struct.Memory* %call_48c6e8, %struct.Memory** %MEMORY

  %loadBr_48c6e8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48c6e8 = icmp eq i8 %loadBr_48c6e8, 1
  br i1 %cmpBr_48c6e8, label %block_.L_48c75c, label %block_48c6ee

block_48c6ee:
  ; Code: movl $0x0, -0x2c(%rbp)	 RIP: 48c6ee	 Bytes: 7
  %loadMem_48c6ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c6ee = call %struct.Memory* @routine_movl__0x0__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c6ee)
  store %struct.Memory* %call_48c6ee, %struct.Memory** %MEMORY

  ; Code: .L_48c6f5:	 RIP: 48c6f5	 Bytes: 0
  br label %block_.L_48c6f5
block_.L_48c6f5:

  ; Code: cmpl $0x4, -0x2c(%rbp)	 RIP: 48c6f5	 Bytes: 4
  %loadMem_48c6f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c6f5 = call %struct.Memory* @routine_cmpl__0x4__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c6f5)
  store %struct.Memory* %call_48c6f5, %struct.Memory** %MEMORY

  ; Code: jge .L_48c749	 RIP: 48c6f9	 Bytes: 6
  %loadMem_48c6f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c6f9 = call %struct.Memory* @routine_jge_.L_48c749(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c6f9, i8* %BRANCH_TAKEN, i64 80, i64 6, i64 6)
  store %struct.Memory* %call_48c6f9, %struct.Memory** %MEMORY

  %loadBr_48c6f9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48c6f9 = icmp eq i8 %loadBr_48c6f9, 1
  br i1 %cmpBr_48c6f9, label %block_.L_48c749, label %block_48c6ff

block_48c6ff:
  ; Code: movq 0x722cb8, %rax	 RIP: 48c6ff	 Bytes: 8
  %loadMem_48c6ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c6ff = call %struct.Memory* @routine_movq_0x722cb8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c6ff)
  store %struct.Memory* %call_48c6ff, %struct.Memory** %MEMORY

  ; Code: movl -0x78(%rbp), %ecx	 RIP: 48c707	 Bytes: 3
  %loadMem_48c707 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c707 = call %struct.Memory* @routine_movl_MINUS0x78__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c707)
  store %struct.Memory* %call_48c707, %struct.Memory** %MEMORY

  ; Code: addl -0x28(%rbp), %ecx	 RIP: 48c70a	 Bytes: 3
  %loadMem_48c70a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c70a = call %struct.Memory* @routine_addl_MINUS0x28__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c70a)
  store %struct.Memory* %call_48c70a, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 48c70d	 Bytes: 3
  %loadMem_48c70d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c70d = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c70d)
  store %struct.Memory* %call_48c70d, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 48c710	 Bytes: 4
  %loadMem_48c710 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c710 = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c710)
  store %struct.Memory* %call_48c710, %struct.Memory** %MEMORY

  ; Code: movl -0x7c(%rbp), %ecx	 RIP: 48c714	 Bytes: 3
  %loadMem_48c714 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c714 = call %struct.Memory* @routine_movl_MINUS0x7c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c714)
  store %struct.Memory* %call_48c714, %struct.Memory** %MEMORY

  ; Code: addl -0x2c(%rbp), %ecx	 RIP: 48c717	 Bytes: 3
  %loadMem_48c717 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c717 = call %struct.Memory* @routine_addl_MINUS0x2c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c717)
  store %struct.Memory* %call_48c717, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 48c71a	 Bytes: 3
  %loadMem_48c71a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c71a = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c71a)
  store %struct.Memory* %call_48c71a, %struct.Memory** %MEMORY

  ; Code: movswl (%rax,%rdx,2), %ecx	 RIP: 48c71d	 Bytes: 4
  %loadMem_48c71d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c71d = call %struct.Memory* @routine_movswl___rax__rdx_2____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c71d)
  store %struct.Memory* %call_48c71d, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %ecx	 RIP: 48c721	 Bytes: 3
  %loadMem_48c721 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c721 = call %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c721)
  store %struct.Memory* %call_48c721, %struct.Memory** %MEMORY

  ; Code: jge .L_48c736	 RIP: 48c724	 Bytes: 6
  %loadMem_48c724 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c724 = call %struct.Memory* @routine_jge_.L_48c736(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c724, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_48c724, %struct.Memory** %MEMORY

  %loadBr_48c724 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48c724 = icmp eq i8 %loadBr_48c724, 1
  br i1 %cmpBr_48c724, label %block_.L_48c736, label %block_48c72a

block_48c72a:
  ; Code: movl $0x0, -0x4(%rbp)	 RIP: 48c72a	 Bytes: 7
  %loadMem_48c72a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c72a = call %struct.Memory* @routine_movl__0x0__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c72a)
  store %struct.Memory* %call_48c72a, %struct.Memory** %MEMORY

  ; Code: jmpq .L_48d331	 RIP: 48c731	 Bytes: 5
  %loadMem_48c731 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c731 = call %struct.Memory* @routine_jmpq_.L_48d331(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c731, i64 3072, i64 5)
  store %struct.Memory* %call_48c731, %struct.Memory** %MEMORY

  br label %block_.L_48d331

  ; Code: .L_48c736:	 RIP: 48c736	 Bytes: 0
block_.L_48c736:

  ; Code: jmpq .L_48c73b	 RIP: 48c736	 Bytes: 5
  %loadMem_48c736 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c736 = call %struct.Memory* @routine_jmpq_.L_48c73b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c736, i64 5, i64 5)
  store %struct.Memory* %call_48c736, %struct.Memory** %MEMORY

  br label %block_.L_48c73b

  ; Code: .L_48c73b:	 RIP: 48c73b	 Bytes: 0
block_.L_48c73b:

  ; Code: movl -0x2c(%rbp), %eax	 RIP: 48c73b	 Bytes: 3
  %loadMem_48c73b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c73b = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c73b)
  store %struct.Memory* %call_48c73b, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 48c73e	 Bytes: 3
  %loadMem_48c73e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c73e = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c73e)
  store %struct.Memory* %call_48c73e, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2c(%rbp)	 RIP: 48c741	 Bytes: 3
  %loadMem_48c741 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c741 = call %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c741)
  store %struct.Memory* %call_48c741, %struct.Memory** %MEMORY

  ; Code: jmpq .L_48c6f5	 RIP: 48c744	 Bytes: 5
  %loadMem_48c744 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c744 = call %struct.Memory* @routine_jmpq_.L_48c6f5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c744, i64 -79, i64 5)
  store %struct.Memory* %call_48c744, %struct.Memory** %MEMORY

  br label %block_.L_48c6f5

  ; Code: .L_48c749:	 RIP: 48c749	 Bytes: 0
block_.L_48c749:

  ; Code: jmpq .L_48c74e	 RIP: 48c749	 Bytes: 5
  %loadMem_48c749 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c749 = call %struct.Memory* @routine_jmpq_.L_48c74e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c749, i64 5, i64 5)
  store %struct.Memory* %call_48c749, %struct.Memory** %MEMORY

  br label %block_.L_48c74e

  ; Code: .L_48c74e:	 RIP: 48c74e	 Bytes: 0
block_.L_48c74e:

  ; Code: movl -0x28(%rbp), %eax	 RIP: 48c74e	 Bytes: 3
  %loadMem_48c74e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c74e = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c74e)
  store %struct.Memory* %call_48c74e, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 48c751	 Bytes: 3
  %loadMem_48c751 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c751 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c751)
  store %struct.Memory* %call_48c751, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x28(%rbp)	 RIP: 48c754	 Bytes: 3
  %loadMem_48c754 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c754 = call %struct.Memory* @routine_movl__eax__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c754)
  store %struct.Memory* %call_48c754, %struct.Memory** %MEMORY

  ; Code: jmpq .L_48c6e4	 RIP: 48c757	 Bytes: 5
  %loadMem_48c757 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c757 = call %struct.Memory* @routine_jmpq_.L_48c6e4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c757, i64 -115, i64 5)
  store %struct.Memory* %call_48c757, %struct.Memory** %MEMORY

  br label %block_.L_48c6e4

  ; Code: .L_48c75c:	 RIP: 48c75c	 Bytes: 0
block_.L_48c75c:

  ; Code: jmpq .L_48c761	 RIP: 48c75c	 Bytes: 5
  %loadMem_48c75c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c75c = call %struct.Memory* @routine_jmpq_.L_48c761(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c75c, i64 5, i64 5)
  store %struct.Memory* %call_48c75c, %struct.Memory** %MEMORY

  br label %block_.L_48c761

  ; Code: .L_48c761:	 RIP: 48c761	 Bytes: 0
block_.L_48c761:

  ; Code: cmpl $0x8, -0x14(%rbp)	 RIP: 48c761	 Bytes: 4
  %loadMem_48c761 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c761 = call %struct.Memory* @routine_cmpl__0x8__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c761)
  store %struct.Memory* %call_48c761, %struct.Memory** %MEMORY

  ; Code: jge .L_48c7af	 RIP: 48c765	 Bytes: 6
  %loadMem_48c765 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c765 = call %struct.Memory* @routine_jge_.L_48c7af(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c765, i8* %BRANCH_TAKEN, i64 74, i64 6, i64 6)
  store %struct.Memory* %call_48c765, %struct.Memory** %MEMORY

  %loadBr_48c765 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48c765 = icmp eq i8 %loadBr_48c765, 1
  br i1 %cmpBr_48c765, label %block_.L_48c7af, label %block_48c76b

block_48c76b:
  ; Code: movb $0x0, %al	 RIP: 48c76b	 Bytes: 2
  %loadMem_48c76b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c76b = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c76b)
  store %struct.Memory* %call_48c76b, %struct.Memory** %MEMORY

  ; Code: callq .LumaResidualCoding	 RIP: 48c76d	 Bytes: 5
  %loadMem1_48c76d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_48c76d = call %struct.Memory* @routine_callq_.LumaResidualCoding(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_48c76d, i64 -309197, i64 5, i64 5)
  store %struct.Memory* %call1_48c76d, %struct.Memory** %MEMORY

  %loadMem2_48c76d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_48c76d = load i64, i64* %3
  %call2_48c76d = call %struct.Memory* @sub_440fa0.LumaResidualCoding(%struct.State* %0, i64  %loadPC_48c76d, %struct.Memory* %loadMem2_48c76d)
  store %struct.Memory* %call2_48c76d, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0x14(%rbp)	 RIP: 48c772	 Bytes: 4
  %loadMem_48c772 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c772 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c772)
  store %struct.Memory* %call_48c772, %struct.Memory** %MEMORY

  ; Code: jne .L_48c7aa	 RIP: 48c776	 Bytes: 6
  %loadMem_48c776 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c776 = call %struct.Memory* @routine_jne_.L_48c7aa(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c776, i8* %BRANCH_TAKEN, i64 52, i64 6, i64 6)
  store %struct.Memory* %call_48c776, %struct.Memory** %MEMORY

  %loadBr_48c776 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48c776 = icmp eq i8 %loadBr_48c776, 1
  br i1 %cmpBr_48c776, label %block_.L_48c7aa, label %block_48c77c

block_48c77c:
  ; Code: movq -0x50(%rbp), %rax	 RIP: 48c77c	 Bytes: 4
  %loadMem_48c77c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c77c = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c77c)
  store %struct.Memory* %call_48c77c, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x1cc(%rax)	 RIP: 48c780	 Bytes: 7
  %loadMem_48c780 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c780 = call %struct.Memory* @routine_cmpl__0x0__0x1cc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c780)
  store %struct.Memory* %call_48c780, %struct.Memory** %MEMORY

  ; Code: jne .L_48c7aa	 RIP: 48c787	 Bytes: 6
  %loadMem_48c787 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c787 = call %struct.Memory* @routine_jne_.L_48c7aa(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c787, i8* %BRANCH_TAKEN, i64 35, i64 6, i64 6)
  store %struct.Memory* %call_48c787, %struct.Memory** %MEMORY

  %loadBr_48c787 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48c787 = icmp eq i8 %loadBr_48c787, 1
  br i1 %cmpBr_48c787, label %block_.L_48c7aa, label %block_48c78d

block_48c78d:
  ; Code: movq -0x50(%rbp), %rax	 RIP: 48c78d	 Bytes: 4
  %loadMem_48c78d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c78d = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c78d)
  store %struct.Memory* %call_48c78d, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, 0x23c(%rax)	 RIP: 48c791	 Bytes: 7
  %loadMem_48c791 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c791 = call %struct.Memory* @routine_cmpl__0x1__0x23c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c791)
  store %struct.Memory* %call_48c791, %struct.Memory** %MEMORY

  ; Code: jne .L_48c7aa	 RIP: 48c798	 Bytes: 6
  %loadMem_48c798 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c798 = call %struct.Memory* @routine_jne_.L_48c7aa(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c798, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_48c798, %struct.Memory** %MEMORY

  %loadBr_48c798 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48c798 = icmp eq i8 %loadBr_48c798, 1
  br i1 %cmpBr_48c798, label %block_.L_48c7aa, label %block_48c79e

block_48c79e:
  ; Code: movl $0x0, -0x4(%rbp)	 RIP: 48c79e	 Bytes: 7
  %loadMem_48c79e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c79e = call %struct.Memory* @routine_movl__0x0__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c79e)
  store %struct.Memory* %call_48c79e, %struct.Memory** %MEMORY

  ; Code: jmpq .L_48d331	 RIP: 48c7a5	 Bytes: 5
  %loadMem_48c7a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c7a5 = call %struct.Memory* @routine_jmpq_.L_48d331(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c7a5, i64 2956, i64 5)
  store %struct.Memory* %call_48c7a5, %struct.Memory** %MEMORY

  br label %block_.L_48d331

  ; Code: .L_48c7aa:	 RIP: 48c7aa	 Bytes: 0
block_.L_48c7aa:

  ; Code: jmpq .L_48ca37	 RIP: 48c7aa	 Bytes: 5
  %loadMem_48c7aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c7aa = call %struct.Memory* @routine_jmpq_.L_48ca37(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c7aa, i64 653, i64 5)
  store %struct.Memory* %call_48c7aa, %struct.Memory** %MEMORY

  br label %block_.L_48ca37

  ; Code: .L_48c7af:	 RIP: 48c7af	 Bytes: 0
block_.L_48c7af:

  ; Code: cmpl $0x8, -0x14(%rbp)	 RIP: 48c7af	 Bytes: 4
  %loadMem_48c7af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c7af = call %struct.Memory* @routine_cmpl__0x8__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c7af)
  store %struct.Memory* %call_48c7af, %struct.Memory** %MEMORY

  ; Code: jne .L_48c7c7	 RIP: 48c7b3	 Bytes: 6
  %loadMem_48c7b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c7b3 = call %struct.Memory* @routine_jne_.L_48c7c7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c7b3, i8* %BRANCH_TAKEN, i64 20, i64 6, i64 6)
  store %struct.Memory* %call_48c7b3, %struct.Memory** %MEMORY

  %loadBr_48c7b3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48c7b3 = icmp eq i8 %loadBr_48c7b3, 1
  br i1 %cmpBr_48c7b3, label %block_.L_48c7c7, label %block_48c7b9

block_48c7b9:
  ; Code: movq -0x50(%rbp), %rdi	 RIP: 48c7b9	 Bytes: 4
  %loadMem_48c7b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c7b9 = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c7b9)
  store %struct.Memory* %call_48c7b9, %struct.Memory** %MEMORY

  ; Code: callq .SetCoeffAndReconstruction8x8	 RIP: 48c7bd	 Bytes: 5
  %loadMem1_48c7bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_48c7bd = call %struct.Memory* @routine_callq_.SetCoeffAndReconstruction8x8(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_48c7bd, i64 -11533, i64 5, i64 5)
  store %struct.Memory* %call1_48c7bd, %struct.Memory** %MEMORY

  %loadMem2_48c7bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_48c7bd = load i64, i64* %3
  %call2_48c7bd = call %struct.Memory* @sub_489ab0.SetCoeffAndReconstruction8x8(%struct.State* %0, i64  %loadPC_48c7bd, %struct.Memory* %loadMem2_48c7bd)
  store %struct.Memory* %call2_48c7bd, %struct.Memory** %MEMORY

  ; Code: jmpq .L_48ca32	 RIP: 48c7c2	 Bytes: 5
  %loadMem_48c7c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c7c2 = call %struct.Memory* @routine_jmpq_.L_48ca32(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c7c2, i64 624, i64 5)
  store %struct.Memory* %call_48c7c2, %struct.Memory** %MEMORY

  br label %block_.L_48ca32

  ; Code: .L_48c7c7:	 RIP: 48c7c7	 Bytes: 0
block_.L_48c7c7:

  ; Code: cmpl $0x9, -0x14(%rbp)	 RIP: 48c7c7	 Bytes: 4
  %loadMem_48c7c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c7c7 = call %struct.Memory* @routine_cmpl__0x9__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c7c7)
  store %struct.Memory* %call_48c7c7, %struct.Memory** %MEMORY

  ; Code: jne .L_48c8e7	 RIP: 48c7cb	 Bytes: 6
  %loadMem_48c7cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c7cb = call %struct.Memory* @routine_jne_.L_48c8e7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c7cb, i8* %BRANCH_TAKEN, i64 284, i64 6, i64 6)
  store %struct.Memory* %call_48c7cb, %struct.Memory** %MEMORY

  %loadBr_48c7cb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48c7cb = icmp eq i8 %loadBr_48c7cb, 1
  br i1 %cmpBr_48c7cb, label %block_.L_48c8e7, label %block_48c7d1

block_48c7d1:
  ; Code: leaq -0x6c(%rbp), %rdi	 RIP: 48c7d1	 Bytes: 4
  %loadMem_48c7d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c7d1 = call %struct.Memory* @routine_leaq_MINUS0x6c__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c7d1)
  store %struct.Memory* %call_48c7d1, %struct.Memory** %MEMORY

  ; Code: movsd -0x10(%rbp), %xmm0	 RIP: 48c7d5	 Bytes: 5
  %loadMem_48c7d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c7d5 = call %struct.Memory* @routine_movsd_MINUS0x10__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c7d5)
  store %struct.Memory* %call_48c7d5, %struct.Memory** %MEMORY

  ; Code: callq .Mode_Decision_for_Intra4x4Macroblock	 RIP: 48c7da	 Bytes: 5
  %loadMem1_48c7da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_48c7da = call %struct.Memory* @routine_callq_.Mode_Decision_for_Intra4x4Macroblock(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_48c7da, i64 -23674, i64 5, i64 5)
  store %struct.Memory* %call1_48c7da, %struct.Memory** %MEMORY

  %loadMem2_48c7da = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_48c7da = load i64, i64* %3
  %call2_48c7da = call %struct.Memory* @sub_486b60.Mode_Decision_for_Intra4x4Macroblock(%struct.State* %0, i64  %loadPC_48c7da, %struct.Memory* %loadMem2_48c7da)
  store %struct.Memory* %call2_48c7da, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rdi	 RIP: 48c7df	 Bytes: 4
  %loadMem_48c7df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c7df = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c7df)
  store %struct.Memory* %call_48c7df, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x1cc(%rdi)	 RIP: 48c7e3	 Bytes: 6
  %loadMem_48c7e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c7e3 = call %struct.Memory* @routine_movl__eax__0x1cc__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c7e3)
  store %struct.Memory* %call_48c7e3, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rdi	 RIP: 48c7e9	 Bytes: 8
  %loadMem_48c7e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c7e9 = call %struct.Memory* @routine_movq_0x6cb900___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c7e9)
  store %struct.Memory* %call_48c7e9, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x11c14(%rdi)	 RIP: 48c7f1	 Bytes: 7
  %loadMem_48c7f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c7f1 = call %struct.Memory* @routine_cmpl__0x0__0x11c14__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c7f1)
  store %struct.Memory* %call_48c7f1, %struct.Memory** %MEMORY

  ; Code: je .L_48c8e2	 RIP: 48c7f8	 Bytes: 6
  %loadMem_48c7f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c7f8 = call %struct.Memory* @routine_je_.L_48c8e2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c7f8, i8* %BRANCH_TAKEN, i64 234, i64 6, i64 6)
  store %struct.Memory* %call_48c7f8, %struct.Memory** %MEMORY

  %loadBr_48c7f8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48c7f8 = icmp eq i8 %loadBr_48c7f8, 1
  br i1 %cmpBr_48c7f8, label %block_.L_48c8e2, label %block_48c7fe

block_48c7fe:
  ; Code: movl $0x0, -0x28(%rbp)	 RIP: 48c7fe	 Bytes: 7
  %loadMem_48c7fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c7fe = call %struct.Memory* @routine_movl__0x0__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c7fe)
  store %struct.Memory* %call_48c7fe, %struct.Memory** %MEMORY

  ; Code: .L_48c805:	 RIP: 48c805	 Bytes: 0
  br label %block_.L_48c805
block_.L_48c805:

  ; Code: cmpl $0x2, -0x28(%rbp)	 RIP: 48c805	 Bytes: 4
  %loadMem_48c805 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c805 = call %struct.Memory* @routine_cmpl__0x2__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c805)
  store %struct.Memory* %call_48c805, %struct.Memory** %MEMORY

  ; Code: jge .L_48c89f	 RIP: 48c809	 Bytes: 6
  %loadMem_48c809 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c809 = call %struct.Memory* @routine_jge_.L_48c89f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c809, i8* %BRANCH_TAKEN, i64 150, i64 6, i64 6)
  store %struct.Memory* %call_48c809, %struct.Memory** %MEMORY

  %loadBr_48c809 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48c809 = icmp eq i8 %loadBr_48c809, 1
  br i1 %cmpBr_48c809, label %block_.L_48c89f, label %block_48c80f

block_48c80f:
  ; Code: movl $0x0, -0x2c(%rbp)	 RIP: 48c80f	 Bytes: 7
  %loadMem_48c80f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c80f = call %struct.Memory* @routine_movl__0x0__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c80f)
  store %struct.Memory* %call_48c80f, %struct.Memory** %MEMORY

  ; Code: .L_48c816:	 RIP: 48c816	 Bytes: 0
  br label %block_.L_48c816
block_.L_48c816:

  ; Code: cmpl $0x4, -0x2c(%rbp)	 RIP: 48c816	 Bytes: 4
  %loadMem_48c816 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c816 = call %struct.Memory* @routine_cmpl__0x4__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c816)
  store %struct.Memory* %call_48c816, %struct.Memory** %MEMORY

  ; Code: jge .L_48c88c	 RIP: 48c81a	 Bytes: 6
  %loadMem_48c81a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c81a = call %struct.Memory* @routine_jge_.L_48c88c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c81a, i8* %BRANCH_TAKEN, i64 114, i64 6, i64 6)
  store %struct.Memory* %call_48c81a, %struct.Memory** %MEMORY

  %loadBr_48c81a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48c81a = icmp eq i8 %loadBr_48c81a, 1
  br i1 %cmpBr_48c81a, label %block_.L_48c88c, label %block_48c820

block_48c820:
  ; Code: movl $0x0, -0x30(%rbp)	 RIP: 48c820	 Bytes: 7
  %loadMem_48c820 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c820 = call %struct.Memory* @routine_movl__0x0__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c820)
  store %struct.Memory* %call_48c820, %struct.Memory** %MEMORY

  ; Code: .L_48c827:	 RIP: 48c827	 Bytes: 0
  br label %block_.L_48c827
block_.L_48c827:

  ; Code: cmpl $0x4, -0x30(%rbp)	 RIP: 48c827	 Bytes: 4
  %loadMem_48c827 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c827 = call %struct.Memory* @routine_cmpl__0x4__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c827)
  store %struct.Memory* %call_48c827, %struct.Memory** %MEMORY

  ; Code: jge .L_48c879	 RIP: 48c82b	 Bytes: 6
  %loadMem_48c82b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c82b = call %struct.Memory* @routine_jge_.L_48c879(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c82b, i8* %BRANCH_TAKEN, i64 78, i64 6, i64 6)
  store %struct.Memory* %call_48c82b, %struct.Memory** %MEMORY

  %loadBr_48c82b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48c82b = icmp eq i8 %loadBr_48c82b, 1
  br i1 %cmpBr_48c82b, label %block_.L_48c879, label %block_48c831

block_48c831:
  ; Code: movq $0x6d0920, %rax	 RIP: 48c831	 Bytes: 10
  %loadMem_48c831 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c831 = call %struct.Memory* @routine_movq__0x6d0920___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c831)
  store %struct.Memory* %call_48c831, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 48c83b	 Bytes: 4
  %loadMem_48c83b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c83b = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c83b)
  store %struct.Memory* %call_48c83b, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rcx	 RIP: 48c83f	 Bytes: 4
  %loadMem_48c83f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c83f = call %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c83f)
  store %struct.Memory* %call_48c83f, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 48c843	 Bytes: 3
  %loadMem_48c843 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c843 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c843)
  store %struct.Memory* %call_48c843, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 48c846	 Bytes: 4
  %loadMem_48c846 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c846 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c846)
  store %struct.Memory* %call_48c846, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rcx	 RIP: 48c84a	 Bytes: 4
  %loadMem_48c84a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c84a = call %struct.Memory* @routine_shlq__0x4___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c84a)
  store %struct.Memory* %call_48c84a, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 48c84e	 Bytes: 3
  %loadMem_48c84e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c84e = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c84e)
  store %struct.Memory* %call_48c84e, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 48c851	 Bytes: 4
  %loadMem_48c851 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c851 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c851)
  store %struct.Memory* %call_48c851, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, (%rax,%rcx,4)	 RIP: 48c855	 Bytes: 4
  %loadMem_48c855 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c855 = call %struct.Memory* @routine_cmpl__0x0____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c855)
  store %struct.Memory* %call_48c855, %struct.Memory** %MEMORY

  ; Code: je .L_48c866	 RIP: 48c859	 Bytes: 6
  %loadMem_48c859 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c859 = call %struct.Memory* @routine_je_.L_48c866(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c859, i8* %BRANCH_TAKEN, i64 13, i64 6, i64 6)
  store %struct.Memory* %call_48c859, %struct.Memory** %MEMORY

  %loadBr_48c859 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48c859 = icmp eq i8 %loadBr_48c859, 1
  br i1 %cmpBr_48c859, label %block_.L_48c866, label %block_48c85f

block_48c85f:
  ; Code: movl $0x2, -0x70(%rbp)	 RIP: 48c85f	 Bytes: 7
  %loadMem_48c85f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c85f = call %struct.Memory* @routine_movl__0x2__MINUS0x70__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c85f)
  store %struct.Memory* %call_48c85f, %struct.Memory** %MEMORY

  ; Code: .L_48c866:	 RIP: 48c866	 Bytes: 0
  br label %block_.L_48c866
block_.L_48c866:

  ; Code: jmpq .L_48c86b	 RIP: 48c866	 Bytes: 5
  %loadMem_48c866 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c866 = call %struct.Memory* @routine_jmpq_.L_48c86b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c866, i64 5, i64 5)
  store %struct.Memory* %call_48c866, %struct.Memory** %MEMORY

  br label %block_.L_48c86b

  ; Code: .L_48c86b:	 RIP: 48c86b	 Bytes: 0
block_.L_48c86b:

  ; Code: movl -0x30(%rbp), %eax	 RIP: 48c86b	 Bytes: 3
  %loadMem_48c86b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c86b = call %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c86b)
  store %struct.Memory* %call_48c86b, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 48c86e	 Bytes: 3
  %loadMem_48c86e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c86e = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c86e)
  store %struct.Memory* %call_48c86e, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x30(%rbp)	 RIP: 48c871	 Bytes: 3
  %loadMem_48c871 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c871 = call %struct.Memory* @routine_movl__eax__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c871)
  store %struct.Memory* %call_48c871, %struct.Memory** %MEMORY

  ; Code: jmpq .L_48c827	 RIP: 48c874	 Bytes: 5
  %loadMem_48c874 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c874 = call %struct.Memory* @routine_jmpq_.L_48c827(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c874, i64 -77, i64 5)
  store %struct.Memory* %call_48c874, %struct.Memory** %MEMORY

  br label %block_.L_48c827

  ; Code: .L_48c879:	 RIP: 48c879	 Bytes: 0
block_.L_48c879:

  ; Code: jmpq .L_48c87e	 RIP: 48c879	 Bytes: 5
  %loadMem_48c879 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c879 = call %struct.Memory* @routine_jmpq_.L_48c87e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c879, i64 5, i64 5)
  store %struct.Memory* %call_48c879, %struct.Memory** %MEMORY

  br label %block_.L_48c87e

  ; Code: .L_48c87e:	 RIP: 48c87e	 Bytes: 0
block_.L_48c87e:

  ; Code: movl -0x2c(%rbp), %eax	 RIP: 48c87e	 Bytes: 3
  %loadMem_48c87e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c87e = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c87e)
  store %struct.Memory* %call_48c87e, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 48c881	 Bytes: 3
  %loadMem_48c881 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c881 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c881)
  store %struct.Memory* %call_48c881, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2c(%rbp)	 RIP: 48c884	 Bytes: 3
  %loadMem_48c884 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c884 = call %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c884)
  store %struct.Memory* %call_48c884, %struct.Memory** %MEMORY

  ; Code: jmpq .L_48c816	 RIP: 48c887	 Bytes: 5
  %loadMem_48c887 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c887 = call %struct.Memory* @routine_jmpq_.L_48c816(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c887, i64 -113, i64 5)
  store %struct.Memory* %call_48c887, %struct.Memory** %MEMORY

  br label %block_.L_48c816

  ; Code: .L_48c88c:	 RIP: 48c88c	 Bytes: 0
block_.L_48c88c:

  ; Code: jmpq .L_48c891	 RIP: 48c88c	 Bytes: 5
  %loadMem_48c88c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c88c = call %struct.Memory* @routine_jmpq_.L_48c891(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c88c, i64 5, i64 5)
  store %struct.Memory* %call_48c88c, %struct.Memory** %MEMORY

  br label %block_.L_48c891

  ; Code: .L_48c891:	 RIP: 48c891	 Bytes: 0
block_.L_48c891:

  ; Code: movl -0x28(%rbp), %eax	 RIP: 48c891	 Bytes: 3
  %loadMem_48c891 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c891 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c891)
  store %struct.Memory* %call_48c891, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 48c894	 Bytes: 3
  %loadMem_48c894 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c894 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c894)
  store %struct.Memory* %call_48c894, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x28(%rbp)	 RIP: 48c897	 Bytes: 3
  %loadMem_48c897 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c897 = call %struct.Memory* @routine_movl__eax__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c897)
  store %struct.Memory* %call_48c897, %struct.Memory** %MEMORY

  ; Code: jmpq .L_48c805	 RIP: 48c89a	 Bytes: 5
  %loadMem_48c89a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c89a = call %struct.Memory* @routine_jmpq_.L_48c805(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c89a, i64 -149, i64 5)
  store %struct.Memory* %call_48c89a, %struct.Memory** %MEMORY

  br label %block_.L_48c805

  ; Code: .L_48c89f:	 RIP: 48c89f	 Bytes: 0
block_.L_48c89f:

  ; Code: movl $0x0, -0x74(%rbp)	 RIP: 48c89f	 Bytes: 7
  %loadMem_48c89f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c89f = call %struct.Memory* @routine_movl__0x0__MINUS0x74__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c89f)
  store %struct.Memory* %call_48c89f, %struct.Memory** %MEMORY

  ; Code: .L_48c8a6:	 RIP: 48c8a6	 Bytes: 0
  br label %block_.L_48c8a6
block_.L_48c8a6:

  ; Code: cmpl $0x2, -0x74(%rbp)	 RIP: 48c8a6	 Bytes: 4
  %loadMem_48c8a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c8a6 = call %struct.Memory* @routine_cmpl__0x2__MINUS0x74__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c8a6)
  store %struct.Memory* %call_48c8a6, %struct.Memory** %MEMORY

  ; Code: jge .L_48c8cc	 RIP: 48c8aa	 Bytes: 6
  %loadMem_48c8aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c8aa = call %struct.Memory* @routine_jge_.L_48c8cc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c8aa, i8* %BRANCH_TAKEN, i64 34, i64 6, i64 6)
  store %struct.Memory* %call_48c8aa, %struct.Memory** %MEMORY

  %loadBr_48c8aa = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48c8aa = icmp eq i8 %loadBr_48c8aa, 1
  br i1 %cmpBr_48c8aa, label %block_.L_48c8cc, label %block_48c8b0

block_48c8b0:
  ; Code: movl -0x74(%rbp), %edi	 RIP: 48c8b0	 Bytes: 3
  %loadMem_48c8b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c8b0 = call %struct.Memory* @routine_movl_MINUS0x74__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c8b0)
  store %struct.Memory* %call_48c8b0, %struct.Memory** %MEMORY

  ; Code: movl -0x70(%rbp), %esi	 RIP: 48c8b3	 Bytes: 3
  %loadMem_48c8b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c8b3 = call %struct.Memory* @routine_movl_MINUS0x70__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c8b3)
  store %struct.Memory* %call_48c8b3, %struct.Memory** %MEMORY

  ; Code: callq .dct_chroma_DC	 RIP: 48c8b6	 Bytes: 5
  %loadMem1_48c8b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_48c8b6 = call %struct.Memory* @routine_callq_.dct_chroma_DC(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_48c8b6, i64 -527446, i64 5, i64 5)
  store %struct.Memory* %call1_48c8b6, %struct.Memory** %MEMORY

  %loadMem2_48c8b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_48c8b6 = load i64, i64* %3
  %call2_48c8b6 = call %struct.Memory* @sub_40bc60.dct_chroma_DC(%struct.State* %0, i64  %loadPC_48c8b6, %struct.Memory* %loadMem2_48c8b6)
  store %struct.Memory* %call2_48c8b6, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x70(%rbp)	 RIP: 48c8bb	 Bytes: 3
  %loadMem_48c8bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c8bb = call %struct.Memory* @routine_movl__eax__MINUS0x70__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c8bb)
  store %struct.Memory* %call_48c8bb, %struct.Memory** %MEMORY

  ; Code: movl -0x74(%rbp), %eax	 RIP: 48c8be	 Bytes: 3
  %loadMem_48c8be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c8be = call %struct.Memory* @routine_movl_MINUS0x74__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c8be)
  store %struct.Memory* %call_48c8be, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 48c8c1	 Bytes: 3
  %loadMem_48c8c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c8c1 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c8c1)
  store %struct.Memory* %call_48c8c1, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x74(%rbp)	 RIP: 48c8c4	 Bytes: 3
  %loadMem_48c8c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c8c4 = call %struct.Memory* @routine_movl__eax__MINUS0x74__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c8c4)
  store %struct.Memory* %call_48c8c4, %struct.Memory** %MEMORY

  ; Code: jmpq .L_48c8a6	 RIP: 48c8c7	 Bytes: 5
  %loadMem_48c8c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c8c7 = call %struct.Memory* @routine_jmpq_.L_48c8a6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c8c7, i64 -33, i64 5)
  store %struct.Memory* %call_48c8c7, %struct.Memory** %MEMORY

  br label %block_.L_48c8a6

  ; Code: .L_48c8cc:	 RIP: 48c8cc	 Bytes: 0
block_.L_48c8cc:

  ; Code: movl -0x70(%rbp), %eax	 RIP: 48c8cc	 Bytes: 3
  %loadMem_48c8cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c8cc = call %struct.Memory* @routine_movl_MINUS0x70__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c8cc)
  store %struct.Memory* %call_48c8cc, %struct.Memory** %MEMORY

  ; Code: shll $0x4, %eax	 RIP: 48c8cf	 Bytes: 3
  %loadMem_48c8cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c8cf = call %struct.Memory* @routine_shll__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c8cf)
  store %struct.Memory* %call_48c8cf, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rcx	 RIP: 48c8d2	 Bytes: 4
  %loadMem_48c8d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c8d2 = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c8d2)
  store %struct.Memory* %call_48c8d2, %struct.Memory** %MEMORY

  ; Code: addl 0x1cc(%rcx), %eax	 RIP: 48c8d6	 Bytes: 6
  %loadMem_48c8d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c8d6 = call %struct.Memory* @routine_addl_0x1cc__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c8d6)
  store %struct.Memory* %call_48c8d6, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x1cc(%rcx)	 RIP: 48c8dc	 Bytes: 6
  %loadMem_48c8dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c8dc = call %struct.Memory* @routine_movl__eax__0x1cc__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c8dc)
  store %struct.Memory* %call_48c8dc, %struct.Memory** %MEMORY

  ; Code: .L_48c8e2:	 RIP: 48c8e2	 Bytes: 0
  br label %block_.L_48c8e2
block_.L_48c8e2:

  ; Code: jmpq .L_48ca2d	 RIP: 48c8e2	 Bytes: 5
  %loadMem_48c8e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c8e2 = call %struct.Memory* @routine_jmpq_.L_48ca2d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c8e2, i64 331, i64 5)
  store %struct.Memory* %call_48c8e2, %struct.Memory** %MEMORY

  br label %block_.L_48ca2d

  ; Code: .L_48c8e7:	 RIP: 48c8e7	 Bytes: 0
block_.L_48c8e7:

  ; Code: cmpl $0xa, -0x14(%rbp)	 RIP: 48c8e7	 Bytes: 4
  %loadMem_48c8e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c8e7 = call %struct.Memory* @routine_cmpl__0xa__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c8e7)
  store %struct.Memory* %call_48c8e7, %struct.Memory** %MEMORY

  ; Code: jne .L_48c903	 RIP: 48c8eb	 Bytes: 6
  %loadMem_48c8eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c8eb = call %struct.Memory* @routine_jne_.L_48c903(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c8eb, i8* %BRANCH_TAKEN, i64 24, i64 6, i64 6)
  store %struct.Memory* %call_48c8eb, %struct.Memory** %MEMORY

  %loadBr_48c8eb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48c8eb = icmp eq i8 %loadBr_48c8eb, 1
  br i1 %cmpBr_48c8eb, label %block_.L_48c903, label %block_48c8f1

block_48c8f1:
  ; Code: leaq -0x24(%rbp), %rsi	 RIP: 48c8f1	 Bytes: 4
  %loadMem_48c8f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c8f1 = call %struct.Memory* @routine_leaq_MINUS0x24__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c8f1)
  store %struct.Memory* %call_48c8f1, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rdi	 RIP: 48c8f5	 Bytes: 4
  %loadMem_48c8f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c8f5 = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c8f5)
  store %struct.Memory* %call_48c8f5, %struct.Memory** %MEMORY

  ; Code: callq .Intra16x16_Mode_Decision	 RIP: 48c8f9	 Bytes: 5
  %loadMem1_48c8f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_48c8f9 = call %struct.Memory* @routine_callq_.Intra16x16_Mode_Decision(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_48c8f9, i64 -14569, i64 5, i64 5)
  store %struct.Memory* %call1_48c8f9, %struct.Memory** %MEMORY

  %loadMem2_48c8f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_48c8f9 = load i64, i64* %3
  %call2_48c8f9 = call %struct.Memory* @sub_489010.Intra16x16_Mode_Decision(%struct.State* %0, i64  %loadPC_48c8f9, %struct.Memory* %loadMem2_48c8f9)
  store %struct.Memory* %call2_48c8f9, %struct.Memory** %MEMORY

  ; Code: jmpq .L_48ca28	 RIP: 48c8fe	 Bytes: 5
  %loadMem_48c8fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c8fe = call %struct.Memory* @routine_jmpq_.L_48ca28(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c8fe, i64 298, i64 5)
  store %struct.Memory* %call_48c8fe, %struct.Memory** %MEMORY

  br label %block_.L_48ca28

  ; Code: .L_48c903:	 RIP: 48c903	 Bytes: 0
block_.L_48c903:

  ; Code: cmpl $0xd, -0x14(%rbp)	 RIP: 48c903	 Bytes: 4
  %loadMem_48c903 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c903 = call %struct.Memory* @routine_cmpl__0xd__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c903)
  store %struct.Memory* %call_48c903, %struct.Memory** %MEMORY

  ; Code: jne .L_48ca23	 RIP: 48c907	 Bytes: 6
  %loadMem_48c907 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c907 = call %struct.Memory* @routine_jne_.L_48ca23(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c907, i8* %BRANCH_TAKEN, i64 284, i64 6, i64 6)
  store %struct.Memory* %call_48c907, %struct.Memory** %MEMORY

  %loadBr_48c907 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48c907 = icmp eq i8 %loadBr_48c907, 1
  br i1 %cmpBr_48c907, label %block_.L_48ca23, label %block_48c90d

block_48c90d:
  ; Code: leaq -0x6c(%rbp), %rdi	 RIP: 48c90d	 Bytes: 4
  %loadMem_48c90d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c90d = call %struct.Memory* @routine_leaq_MINUS0x6c__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c90d)
  store %struct.Memory* %call_48c90d, %struct.Memory** %MEMORY

  ; Code: movsd -0x10(%rbp), %xmm0	 RIP: 48c911	 Bytes: 5
  %loadMem_48c911 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c911 = call %struct.Memory* @routine_movsd_MINUS0x10__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c911)
  store %struct.Memory* %call_48c911, %struct.Memory** %MEMORY

  ; Code: callq .Mode_Decision_for_new_Intra8x8Macroblock	 RIP: 48c916	 Bytes: 5
  %loadMem1_48c916 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_48c916 = call %struct.Memory* @routine_callq_.Mode_Decision_for_new_Intra8x8Macroblock(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_48c916, i64 95818, i64 5, i64 5)
  store %struct.Memory* %call1_48c916, %struct.Memory** %MEMORY

  %loadMem2_48c916 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_48c916 = load i64, i64* %3
  %call2_48c916 = call %struct.Memory* @sub_4a3f60.Mode_Decision_for_new_Intra8x8Macroblock(%struct.State* %0, i64  %loadPC_48c916, %struct.Memory* %loadMem2_48c916)
  store %struct.Memory* %call2_48c916, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rdi	 RIP: 48c91b	 Bytes: 4
  %loadMem_48c91b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c91b = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c91b)
  store %struct.Memory* %call_48c91b, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x1cc(%rdi)	 RIP: 48c91f	 Bytes: 6
  %loadMem_48c91f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c91f = call %struct.Memory* @routine_movl__eax__0x1cc__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c91f)
  store %struct.Memory* %call_48c91f, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rdi	 RIP: 48c925	 Bytes: 8
  %loadMem_48c925 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c925 = call %struct.Memory* @routine_movq_0x6cb900___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c925)
  store %struct.Memory* %call_48c925, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x11c14(%rdi)	 RIP: 48c92d	 Bytes: 7
  %loadMem_48c92d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c92d = call %struct.Memory* @routine_cmpl__0x0__0x11c14__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c92d)
  store %struct.Memory* %call_48c92d, %struct.Memory** %MEMORY

  ; Code: je .L_48ca1e	 RIP: 48c934	 Bytes: 6
  %loadMem_48c934 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c934 = call %struct.Memory* @routine_je_.L_48ca1e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c934, i8* %BRANCH_TAKEN, i64 234, i64 6, i64 6)
  store %struct.Memory* %call_48c934, %struct.Memory** %MEMORY

  %loadBr_48c934 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48c934 = icmp eq i8 %loadBr_48c934, 1
  br i1 %cmpBr_48c934, label %block_.L_48ca1e, label %block_48c93a

block_48c93a:
  ; Code: movl $0x0, -0x28(%rbp)	 RIP: 48c93a	 Bytes: 7
  %loadMem_48c93a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c93a = call %struct.Memory* @routine_movl__0x0__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c93a)
  store %struct.Memory* %call_48c93a, %struct.Memory** %MEMORY

  ; Code: .L_48c941:	 RIP: 48c941	 Bytes: 0
  br label %block_.L_48c941
block_.L_48c941:

  ; Code: cmpl $0x2, -0x28(%rbp)	 RIP: 48c941	 Bytes: 4
  %loadMem_48c941 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c941 = call %struct.Memory* @routine_cmpl__0x2__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c941)
  store %struct.Memory* %call_48c941, %struct.Memory** %MEMORY

  ; Code: jge .L_48c9db	 RIP: 48c945	 Bytes: 6
  %loadMem_48c945 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c945 = call %struct.Memory* @routine_jge_.L_48c9db(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c945, i8* %BRANCH_TAKEN, i64 150, i64 6, i64 6)
  store %struct.Memory* %call_48c945, %struct.Memory** %MEMORY

  %loadBr_48c945 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48c945 = icmp eq i8 %loadBr_48c945, 1
  br i1 %cmpBr_48c945, label %block_.L_48c9db, label %block_48c94b

block_48c94b:
  ; Code: movl $0x0, -0x2c(%rbp)	 RIP: 48c94b	 Bytes: 7
  %loadMem_48c94b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c94b = call %struct.Memory* @routine_movl__0x0__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c94b)
  store %struct.Memory* %call_48c94b, %struct.Memory** %MEMORY

  ; Code: .L_48c952:	 RIP: 48c952	 Bytes: 0
  br label %block_.L_48c952
block_.L_48c952:

  ; Code: cmpl $0x4, -0x2c(%rbp)	 RIP: 48c952	 Bytes: 4
  %loadMem_48c952 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c952 = call %struct.Memory* @routine_cmpl__0x4__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c952)
  store %struct.Memory* %call_48c952, %struct.Memory** %MEMORY

  ; Code: jge .L_48c9c8	 RIP: 48c956	 Bytes: 6
  %loadMem_48c956 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c956 = call %struct.Memory* @routine_jge_.L_48c9c8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c956, i8* %BRANCH_TAKEN, i64 114, i64 6, i64 6)
  store %struct.Memory* %call_48c956, %struct.Memory** %MEMORY

  %loadBr_48c956 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48c956 = icmp eq i8 %loadBr_48c956, 1
  br i1 %cmpBr_48c956, label %block_.L_48c9c8, label %block_48c95c

block_48c95c:
  ; Code: movl $0x0, -0x30(%rbp)	 RIP: 48c95c	 Bytes: 7
  %loadMem_48c95c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c95c = call %struct.Memory* @routine_movl__0x0__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c95c)
  store %struct.Memory* %call_48c95c, %struct.Memory** %MEMORY

  ; Code: .L_48c963:	 RIP: 48c963	 Bytes: 0
  br label %block_.L_48c963
block_.L_48c963:

  ; Code: cmpl $0x4, -0x30(%rbp)	 RIP: 48c963	 Bytes: 4
  %loadMem_48c963 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c963 = call %struct.Memory* @routine_cmpl__0x4__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c963)
  store %struct.Memory* %call_48c963, %struct.Memory** %MEMORY

  ; Code: jge .L_48c9b5	 RIP: 48c967	 Bytes: 6
  %loadMem_48c967 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c967 = call %struct.Memory* @routine_jge_.L_48c9b5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c967, i8* %BRANCH_TAKEN, i64 78, i64 6, i64 6)
  store %struct.Memory* %call_48c967, %struct.Memory** %MEMORY

  %loadBr_48c967 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48c967 = icmp eq i8 %loadBr_48c967, 1
  br i1 %cmpBr_48c967, label %block_.L_48c9b5, label %block_48c96d

block_48c96d:
  ; Code: movq $0x6d0920, %rax	 RIP: 48c96d	 Bytes: 10
  %loadMem_48c96d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c96d = call %struct.Memory* @routine_movq__0x6d0920___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c96d)
  store %struct.Memory* %call_48c96d, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 48c977	 Bytes: 4
  %loadMem_48c977 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c977 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c977)
  store %struct.Memory* %call_48c977, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rcx	 RIP: 48c97b	 Bytes: 4
  %loadMem_48c97b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c97b = call %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c97b)
  store %struct.Memory* %call_48c97b, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 48c97f	 Bytes: 3
  %loadMem_48c97f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c97f = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c97f)
  store %struct.Memory* %call_48c97f, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 48c982	 Bytes: 4
  %loadMem_48c982 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c982 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c982)
  store %struct.Memory* %call_48c982, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rcx	 RIP: 48c986	 Bytes: 4
  %loadMem_48c986 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c986 = call %struct.Memory* @routine_shlq__0x4___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c986)
  store %struct.Memory* %call_48c986, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 48c98a	 Bytes: 3
  %loadMem_48c98a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c98a = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c98a)
  store %struct.Memory* %call_48c98a, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 48c98d	 Bytes: 4
  %loadMem_48c98d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c98d = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c98d)
  store %struct.Memory* %call_48c98d, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, (%rax,%rcx,4)	 RIP: 48c991	 Bytes: 4
  %loadMem_48c991 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c991 = call %struct.Memory* @routine_cmpl__0x0____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c991)
  store %struct.Memory* %call_48c991, %struct.Memory** %MEMORY

  ; Code: je .L_48c9a2	 RIP: 48c995	 Bytes: 6
  %loadMem_48c995 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c995 = call %struct.Memory* @routine_je_.L_48c9a2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c995, i8* %BRANCH_TAKEN, i64 13, i64 6, i64 6)
  store %struct.Memory* %call_48c995, %struct.Memory** %MEMORY

  %loadBr_48c995 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48c995 = icmp eq i8 %loadBr_48c995, 1
  br i1 %cmpBr_48c995, label %block_.L_48c9a2, label %block_48c99b

block_48c99b:
  ; Code: movl $0x2, -0x70(%rbp)	 RIP: 48c99b	 Bytes: 7
  %loadMem_48c99b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c99b = call %struct.Memory* @routine_movl__0x2__MINUS0x70__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c99b)
  store %struct.Memory* %call_48c99b, %struct.Memory** %MEMORY

  ; Code: .L_48c9a2:	 RIP: 48c9a2	 Bytes: 0
  br label %block_.L_48c9a2
block_.L_48c9a2:

  ; Code: jmpq .L_48c9a7	 RIP: 48c9a2	 Bytes: 5
  %loadMem_48c9a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c9a2 = call %struct.Memory* @routine_jmpq_.L_48c9a7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c9a2, i64 5, i64 5)
  store %struct.Memory* %call_48c9a2, %struct.Memory** %MEMORY

  br label %block_.L_48c9a7

  ; Code: .L_48c9a7:	 RIP: 48c9a7	 Bytes: 0
block_.L_48c9a7:

  ; Code: movl -0x30(%rbp), %eax	 RIP: 48c9a7	 Bytes: 3
  %loadMem_48c9a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c9a7 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c9a7)
  store %struct.Memory* %call_48c9a7, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 48c9aa	 Bytes: 3
  %loadMem_48c9aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c9aa = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c9aa)
  store %struct.Memory* %call_48c9aa, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x30(%rbp)	 RIP: 48c9ad	 Bytes: 3
  %loadMem_48c9ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c9ad = call %struct.Memory* @routine_movl__eax__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c9ad)
  store %struct.Memory* %call_48c9ad, %struct.Memory** %MEMORY

  ; Code: jmpq .L_48c963	 RIP: 48c9b0	 Bytes: 5
  %loadMem_48c9b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c9b0 = call %struct.Memory* @routine_jmpq_.L_48c963(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c9b0, i64 -77, i64 5)
  store %struct.Memory* %call_48c9b0, %struct.Memory** %MEMORY

  br label %block_.L_48c963

  ; Code: .L_48c9b5:	 RIP: 48c9b5	 Bytes: 0
block_.L_48c9b5:

  ; Code: jmpq .L_48c9ba	 RIP: 48c9b5	 Bytes: 5
  %loadMem_48c9b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c9b5 = call %struct.Memory* @routine_jmpq_.L_48c9ba(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c9b5, i64 5, i64 5)
  store %struct.Memory* %call_48c9b5, %struct.Memory** %MEMORY

  br label %block_.L_48c9ba

  ; Code: .L_48c9ba:	 RIP: 48c9ba	 Bytes: 0
block_.L_48c9ba:

  ; Code: movl -0x2c(%rbp), %eax	 RIP: 48c9ba	 Bytes: 3
  %loadMem_48c9ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c9ba = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c9ba)
  store %struct.Memory* %call_48c9ba, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 48c9bd	 Bytes: 3
  %loadMem_48c9bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c9bd = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c9bd)
  store %struct.Memory* %call_48c9bd, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2c(%rbp)	 RIP: 48c9c0	 Bytes: 3
  %loadMem_48c9c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c9c0 = call %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c9c0)
  store %struct.Memory* %call_48c9c0, %struct.Memory** %MEMORY

  ; Code: jmpq .L_48c952	 RIP: 48c9c3	 Bytes: 5
  %loadMem_48c9c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c9c3 = call %struct.Memory* @routine_jmpq_.L_48c952(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c9c3, i64 -113, i64 5)
  store %struct.Memory* %call_48c9c3, %struct.Memory** %MEMORY

  br label %block_.L_48c952

  ; Code: .L_48c9c8:	 RIP: 48c9c8	 Bytes: 0
block_.L_48c9c8:

  ; Code: jmpq .L_48c9cd	 RIP: 48c9c8	 Bytes: 5
  %loadMem_48c9c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c9c8 = call %struct.Memory* @routine_jmpq_.L_48c9cd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c9c8, i64 5, i64 5)
  store %struct.Memory* %call_48c9c8, %struct.Memory** %MEMORY

  br label %block_.L_48c9cd

  ; Code: .L_48c9cd:	 RIP: 48c9cd	 Bytes: 0
block_.L_48c9cd:

  ; Code: movl -0x28(%rbp), %eax	 RIP: 48c9cd	 Bytes: 3
  %loadMem_48c9cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c9cd = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c9cd)
  store %struct.Memory* %call_48c9cd, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 48c9d0	 Bytes: 3
  %loadMem_48c9d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c9d0 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c9d0)
  store %struct.Memory* %call_48c9d0, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x28(%rbp)	 RIP: 48c9d3	 Bytes: 3
  %loadMem_48c9d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c9d3 = call %struct.Memory* @routine_movl__eax__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c9d3)
  store %struct.Memory* %call_48c9d3, %struct.Memory** %MEMORY

  ; Code: jmpq .L_48c941	 RIP: 48c9d6	 Bytes: 5
  %loadMem_48c9d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c9d6 = call %struct.Memory* @routine_jmpq_.L_48c941(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c9d6, i64 -149, i64 5)
  store %struct.Memory* %call_48c9d6, %struct.Memory** %MEMORY

  br label %block_.L_48c941

  ; Code: .L_48c9db:	 RIP: 48c9db	 Bytes: 0
block_.L_48c9db:

  ; Code: movl $0x0, -0x74(%rbp)	 RIP: 48c9db	 Bytes: 7
  %loadMem_48c9db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c9db = call %struct.Memory* @routine_movl__0x0__MINUS0x74__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c9db)
  store %struct.Memory* %call_48c9db, %struct.Memory** %MEMORY

  ; Code: .L_48c9e2:	 RIP: 48c9e2	 Bytes: 0
  br label %block_.L_48c9e2
block_.L_48c9e2:

  ; Code: cmpl $0x2, -0x74(%rbp)	 RIP: 48c9e2	 Bytes: 4
  %loadMem_48c9e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c9e2 = call %struct.Memory* @routine_cmpl__0x2__MINUS0x74__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c9e2)
  store %struct.Memory* %call_48c9e2, %struct.Memory** %MEMORY

  ; Code: jge .L_48ca08	 RIP: 48c9e6	 Bytes: 6
  %loadMem_48c9e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c9e6 = call %struct.Memory* @routine_jge_.L_48ca08(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c9e6, i8* %BRANCH_TAKEN, i64 34, i64 6, i64 6)
  store %struct.Memory* %call_48c9e6, %struct.Memory** %MEMORY

  %loadBr_48c9e6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48c9e6 = icmp eq i8 %loadBr_48c9e6, 1
  br i1 %cmpBr_48c9e6, label %block_.L_48ca08, label %block_48c9ec

block_48c9ec:
  ; Code: movl -0x74(%rbp), %edi	 RIP: 48c9ec	 Bytes: 3
  %loadMem_48c9ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c9ec = call %struct.Memory* @routine_movl_MINUS0x74__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c9ec)
  store %struct.Memory* %call_48c9ec, %struct.Memory** %MEMORY

  ; Code: movl -0x70(%rbp), %esi	 RIP: 48c9ef	 Bytes: 3
  %loadMem_48c9ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c9ef = call %struct.Memory* @routine_movl_MINUS0x70__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c9ef)
  store %struct.Memory* %call_48c9ef, %struct.Memory** %MEMORY

  ; Code: callq .dct_chroma_DC	 RIP: 48c9f2	 Bytes: 5
  %loadMem1_48c9f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_48c9f2 = call %struct.Memory* @routine_callq_.dct_chroma_DC(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_48c9f2, i64 -527762, i64 5, i64 5)
  store %struct.Memory* %call1_48c9f2, %struct.Memory** %MEMORY

  %loadMem2_48c9f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_48c9f2 = load i64, i64* %3
  %call2_48c9f2 = call %struct.Memory* @sub_40bc60.dct_chroma_DC(%struct.State* %0, i64  %loadPC_48c9f2, %struct.Memory* %loadMem2_48c9f2)
  store %struct.Memory* %call2_48c9f2, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x70(%rbp)	 RIP: 48c9f7	 Bytes: 3
  %loadMem_48c9f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c9f7 = call %struct.Memory* @routine_movl__eax__MINUS0x70__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c9f7)
  store %struct.Memory* %call_48c9f7, %struct.Memory** %MEMORY

  ; Code: movl -0x74(%rbp), %eax	 RIP: 48c9fa	 Bytes: 3
  %loadMem_48c9fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c9fa = call %struct.Memory* @routine_movl_MINUS0x74__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c9fa)
  store %struct.Memory* %call_48c9fa, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 48c9fd	 Bytes: 3
  %loadMem_48c9fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48c9fd = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48c9fd)
  store %struct.Memory* %call_48c9fd, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x74(%rbp)	 RIP: 48ca00	 Bytes: 3
  %loadMem_48ca00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ca00 = call %struct.Memory* @routine_movl__eax__MINUS0x74__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ca00)
  store %struct.Memory* %call_48ca00, %struct.Memory** %MEMORY

  ; Code: jmpq .L_48c9e2	 RIP: 48ca03	 Bytes: 5
  %loadMem_48ca03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ca03 = call %struct.Memory* @routine_jmpq_.L_48c9e2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ca03, i64 -33, i64 5)
  store %struct.Memory* %call_48ca03, %struct.Memory** %MEMORY

  br label %block_.L_48c9e2

  ; Code: .L_48ca08:	 RIP: 48ca08	 Bytes: 0
block_.L_48ca08:

  ; Code: movl -0x70(%rbp), %eax	 RIP: 48ca08	 Bytes: 3
  %loadMem_48ca08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ca08 = call %struct.Memory* @routine_movl_MINUS0x70__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ca08)
  store %struct.Memory* %call_48ca08, %struct.Memory** %MEMORY

  ; Code: shll $0x4, %eax	 RIP: 48ca0b	 Bytes: 3
  %loadMem_48ca0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ca0b = call %struct.Memory* @routine_shll__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ca0b)
  store %struct.Memory* %call_48ca0b, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rcx	 RIP: 48ca0e	 Bytes: 4
  %loadMem_48ca0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ca0e = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ca0e)
  store %struct.Memory* %call_48ca0e, %struct.Memory** %MEMORY

  ; Code: addl 0x1cc(%rcx), %eax	 RIP: 48ca12	 Bytes: 6
  %loadMem_48ca12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ca12 = call %struct.Memory* @routine_addl_0x1cc__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ca12)
  store %struct.Memory* %call_48ca12, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x1cc(%rcx)	 RIP: 48ca18	 Bytes: 6
  %loadMem_48ca18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ca18 = call %struct.Memory* @routine_movl__eax__0x1cc__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ca18)
  store %struct.Memory* %call_48ca18, %struct.Memory** %MEMORY

  ; Code: .L_48ca1e:	 RIP: 48ca1e	 Bytes: 0
  br label %block_.L_48ca1e
block_.L_48ca1e:

  ; Code: jmpq .L_48ca23	 RIP: 48ca1e	 Bytes: 5
  %loadMem_48ca1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ca1e = call %struct.Memory* @routine_jmpq_.L_48ca23(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ca1e, i64 5, i64 5)
  store %struct.Memory* %call_48ca1e, %struct.Memory** %MEMORY

  br label %block_.L_48ca23

  ; Code: .L_48ca23:	 RIP: 48ca23	 Bytes: 0
block_.L_48ca23:

  ; Code: jmpq .L_48ca28	 RIP: 48ca23	 Bytes: 5
  %loadMem_48ca23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ca23 = call %struct.Memory* @routine_jmpq_.L_48ca28(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ca23, i64 5, i64 5)
  store %struct.Memory* %call_48ca23, %struct.Memory** %MEMORY

  br label %block_.L_48ca28

  ; Code: .L_48ca28:	 RIP: 48ca28	 Bytes: 0
block_.L_48ca28:

  ; Code: jmpq .L_48ca2d	 RIP: 48ca28	 Bytes: 5
  %loadMem_48ca28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ca28 = call %struct.Memory* @routine_jmpq_.L_48ca2d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ca28, i64 5, i64 5)
  store %struct.Memory* %call_48ca28, %struct.Memory** %MEMORY

  br label %block_.L_48ca2d

  ; Code: .L_48ca2d:	 RIP: 48ca2d	 Bytes: 0
block_.L_48ca2d:

  ; Code: jmpq .L_48ca32	 RIP: 48ca2d	 Bytes: 5
  %loadMem_48ca2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ca2d = call %struct.Memory* @routine_jmpq_.L_48ca32(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ca2d, i64 5, i64 5)
  store %struct.Memory* %call_48ca2d, %struct.Memory** %MEMORY

  br label %block_.L_48ca32

  ; Code: .L_48ca32:	 RIP: 48ca32	 Bytes: 0
block_.L_48ca32:

  ; Code: jmpq .L_48ca37	 RIP: 48ca32	 Bytes: 5
  %loadMem_48ca32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ca32 = call %struct.Memory* @routine_jmpq_.L_48ca37(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ca32, i64 5, i64 5)
  store %struct.Memory* %call_48ca32, %struct.Memory** %MEMORY

  br label %block_.L_48ca37

  ; Code: .L_48ca37:	 RIP: 48ca37	 Bytes: 0
block_.L_48ca37:

  ; Code: movq 0x6cb8f8, %rax	 RIP: 48ca37	 Bytes: 8
  %loadMem_48ca37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ca37 = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ca37)
  store %struct.Memory* %call_48ca37, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, 0x9a0(%rax)	 RIP: 48ca3f	 Bytes: 7
  %loadMem_48ca3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ca3f = call %struct.Memory* @routine_cmpl__0x2__0x9a0__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ca3f)
  store %struct.Memory* %call_48ca3f, %struct.Memory** %MEMORY

  ; Code: jne .L_48ca93	 RIP: 48ca46	 Bytes: 6
  %loadMem_48ca46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ca46 = call %struct.Memory* @routine_jne_.L_48ca93(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ca46, i8* %BRANCH_TAKEN, i64 77, i64 6, i64 6)
  store %struct.Memory* %call_48ca46, %struct.Memory** %MEMORY

  %loadBr_48ca46 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48ca46 = icmp eq i8 %loadBr_48ca46, 1
  br i1 %cmpBr_48ca46, label %block_.L_48ca93, label %block_48ca4c

block_48ca4c:
  ; Code: movq 0x6cb900, %rax	 RIP: 48ca4c	 Bytes: 8
  %loadMem_48ca4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ca4c = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ca4c)
  store %struct.Memory* %call_48ca4c, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, 0x18(%rax)	 RIP: 48ca54	 Bytes: 4
  %loadMem_48ca54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ca54 = call %struct.Memory* @routine_cmpl__0x1__0x18__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ca54)
  store %struct.Memory* %call_48ca54, %struct.Memory** %MEMORY

  ; Code: je .L_48ca93	 RIP: 48ca58	 Bytes: 6
  %loadMem_48ca58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ca58 = call %struct.Memory* @routine_je_.L_48ca93(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ca58, i8* %BRANCH_TAKEN, i64 59, i64 6, i64 6)
  store %struct.Memory* %call_48ca58, %struct.Memory** %MEMORY

  %loadBr_48ca58 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48ca58 = icmp eq i8 %loadBr_48ca58, 1
  br i1 %cmpBr_48ca58, label %block_.L_48ca93, label %block_48ca5e

block_48ca5e:
  ; Code: cmpl $0xa, -0x14(%rbp)	 RIP: 48ca5e	 Bytes: 4
  %loadMem_48ca5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ca5e = call %struct.Memory* @routine_cmpl__0xa__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ca5e)
  store %struct.Memory* %call_48ca5e, %struct.Memory** %MEMORY

  ; Code: jne .L_48ca76	 RIP: 48ca62	 Bytes: 6
  %loadMem_48ca62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ca62 = call %struct.Memory* @routine_jne_.L_48ca76(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ca62, i8* %BRANCH_TAKEN, i64 20, i64 6, i64 6)
  store %struct.Memory* %call_48ca62, %struct.Memory** %MEMORY

  %loadBr_48ca62 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48ca62 = icmp eq i8 %loadBr_48ca62, 1
  br i1 %cmpBr_48ca62, label %block_.L_48ca76, label %block_48ca68

block_48ca68:
  ; Code: movl -0x24(%rbp), %eax	 RIP: 48ca68	 Bytes: 3
  %loadMem_48ca68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ca68 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ca68)
  store %struct.Memory* %call_48ca68, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x90(%rbp)	 RIP: 48ca6b	 Bytes: 6
  %loadMem_48ca6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ca6b = call %struct.Memory* @routine_movl__eax__MINUS0x90__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ca6b)
  store %struct.Memory* %call_48ca6b, %struct.Memory** %MEMORY

  ; Code: jmpq .L_48ca86	 RIP: 48ca71	 Bytes: 5
  %loadMem_48ca71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ca71 = call %struct.Memory* @routine_jmpq_.L_48ca86(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ca71, i64 21, i64 5)
  store %struct.Memory* %call_48ca71, %struct.Memory** %MEMORY

  br label %block_.L_48ca86

  ; Code: .L_48ca76:	 RIP: 48ca76	 Bytes: 0
block_.L_48ca76:

  ; Code: movl $0xffffffff, %eax	 RIP: 48ca76	 Bytes: 5
  %loadMem_48ca76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ca76 = call %struct.Memory* @routine_movl__0xffffffff___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ca76)
  store %struct.Memory* %call_48ca76, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x90(%rbp)	 RIP: 48ca7b	 Bytes: 6
  %loadMem_48ca7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ca7b = call %struct.Memory* @routine_movl__eax__MINUS0x90__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ca7b)
  store %struct.Memory* %call_48ca7b, %struct.Memory** %MEMORY

  ; Code: jmpq .L_48ca86	 RIP: 48ca81	 Bytes: 5
  %loadMem_48ca81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ca81 = call %struct.Memory* @routine_jmpq_.L_48ca86(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ca81, i64 5, i64 5)
  store %struct.Memory* %call_48ca81, %struct.Memory** %MEMORY

  br label %block_.L_48ca86

  ; Code: .L_48ca86:	 RIP: 48ca86	 Bytes: 0
block_.L_48ca86:

  ; Code: movl -0x90(%rbp), %eax	 RIP: 48ca86	 Bytes: 6
  %loadMem_48ca86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ca86 = call %struct.Memory* @routine_movl_MINUS0x90__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ca86)
  store %struct.Memory* %call_48ca86, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edi	 RIP: 48ca8c	 Bytes: 2
  %loadMem_48ca8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ca8c = call %struct.Memory* @routine_movl__eax___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ca8c)
  store %struct.Memory* %call_48ca8c, %struct.Memory** %MEMORY

  ; Code: callq .compute_residue_mb	 RIP: 48ca8e	 Bytes: 5
  %loadMem1_48ca8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_48ca8e = call %struct.Memory* @routine_callq_.compute_residue_mb(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_48ca8e, i64 -454126, i64 5, i64 5)
  store %struct.Memory* %call1_48ca8e, %struct.Memory** %MEMORY

  %loadMem2_48ca8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_48ca8e = load i64, i64* %3
  %call2_48ca8e = call %struct.Memory* @sub_41dca0.compute_residue_mb(%struct.State* %0, i64  %loadPC_48ca8e, %struct.Memory* %loadMem2_48ca8e)
  store %struct.Memory* %call2_48ca8e, %struct.Memory** %MEMORY

  ; Code: .L_48ca93:	 RIP: 48ca93	 Bytes: 0
  br label %block_.L_48ca93
block_.L_48ca93:

  ; Code: cmpl $0xa, -0x14(%rbp)	 RIP: 48ca93	 Bytes: 4
  %loadMem_48ca93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ca93 = call %struct.Memory* @routine_cmpl__0xa__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ca93)
  store %struct.Memory* %call_48ca93, %struct.Memory** %MEMORY

  ; Code: jne .L_48cb2e	 RIP: 48ca97	 Bytes: 6
  %loadMem_48ca97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ca97 = call %struct.Memory* @routine_jne_.L_48cb2e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ca97, i8* %BRANCH_TAKEN, i64 151, i64 6, i64 6)
  store %struct.Memory* %call_48ca97, %struct.Memory** %MEMORY

  %loadBr_48ca97 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48ca97 = icmp eq i8 %loadBr_48ca97, 1
  br i1 %cmpBr_48ca97, label %block_.L_48cb2e, label %block_48ca9d

block_48ca9d:
  ; Code: movl $0x0, -0x28(%rbp)	 RIP: 48ca9d	 Bytes: 7
  %loadMem_48ca9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ca9d = call %struct.Memory* @routine_movl__0x0__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ca9d)
  store %struct.Memory* %call_48ca9d, %struct.Memory** %MEMORY

  ; Code: .L_48caa4:	 RIP: 48caa4	 Bytes: 0
  br label %block_.L_48caa4
block_.L_48caa4:

  ; Code: cmpl $0x10, -0x28(%rbp)	 RIP: 48caa4	 Bytes: 4
  %loadMem_48caa4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48caa4 = call %struct.Memory* @routine_cmpl__0x10__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48caa4)
  store %struct.Memory* %call_48caa4, %struct.Memory** %MEMORY

  ; Code: jge .L_48cb29	 RIP: 48caa8	 Bytes: 6
  %loadMem_48caa8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48caa8 = call %struct.Memory* @routine_jge_.L_48cb29(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48caa8, i8* %BRANCH_TAKEN, i64 129, i64 6, i64 6)
  store %struct.Memory* %call_48caa8, %struct.Memory** %MEMORY

  %loadBr_48caa8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48caa8 = icmp eq i8 %loadBr_48caa8, 1
  br i1 %cmpBr_48caa8, label %block_.L_48cb29, label %block_48caae

block_48caae:
  ; Code: movl $0x0, -0x2c(%rbp)	 RIP: 48caae	 Bytes: 7
  %loadMem_48caae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48caae = call %struct.Memory* @routine_movl__0x0__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48caae)
  store %struct.Memory* %call_48caae, %struct.Memory** %MEMORY

  ; Code: .L_48cab5:	 RIP: 48cab5	 Bytes: 0
  br label %block_.L_48cab5
block_.L_48cab5:

  ; Code: cmpl $0x10, -0x2c(%rbp)	 RIP: 48cab5	 Bytes: 4
  %loadMem_48cab5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cab5 = call %struct.Memory* @routine_cmpl__0x10__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cab5)
  store %struct.Memory* %call_48cab5, %struct.Memory** %MEMORY

  ; Code: jge .L_48cb16	 RIP: 48cab9	 Bytes: 6
  %loadMem_48cab9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cab9 = call %struct.Memory* @routine_jge_.L_48cb16(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cab9, i8* %BRANCH_TAKEN, i64 93, i64 6, i64 6)
  store %struct.Memory* %call_48cab9, %struct.Memory** %MEMORY

  %loadBr_48cab9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48cab9 = icmp eq i8 %loadBr_48cab9, 1
  br i1 %cmpBr_48cab9, label %block_.L_48cb16, label %block_48cabf

block_48cabf:
  ; Code: movq $0x6cc660, %rax	 RIP: 48cabf	 Bytes: 10
  %loadMem_48cabf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cabf = call %struct.Memory* @routine_movq__0x6cc660___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cabf)
  store %struct.Memory* %call_48cabf, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 48cac9	 Bytes: 8
  %loadMem_48cac9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cac9 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cac9)
  store %struct.Memory* %call_48cac9, %struct.Memory** %MEMORY

  ; Code: addq $0x12b8, %rcx	 RIP: 48cad1	 Bytes: 7
  %loadMem_48cad1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cad1 = call %struct.Memory* @routine_addq__0x12b8___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cad1)
  store %struct.Memory* %call_48cad1, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 48cad8	 Bytes: 4
  %loadMem_48cad8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cad8 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cad8)
  store %struct.Memory* %call_48cad8, %struct.Memory** %MEMORY

  ; Code: shlq $0x9, %rdx	 RIP: 48cadc	 Bytes: 4
  %loadMem_48cadc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cadc = call %struct.Memory* @routine_shlq__0x9___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cadc)
  store %struct.Memory* %call_48cadc, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 48cae0	 Bytes: 3
  %loadMem_48cae0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cae0 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cae0)
  store %struct.Memory* %call_48cae0, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rdx	 RIP: 48cae3	 Bytes: 4
  %loadMem_48cae3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cae3 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cae3)
  store %struct.Memory* %call_48cae3, %struct.Memory** %MEMORY

  ; Code: shlq $0x5, %rdx	 RIP: 48cae7	 Bytes: 4
  %loadMem_48cae7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cae7 = call %struct.Memory* @routine_shlq__0x5___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cae7)
  store %struct.Memory* %call_48cae7, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 48caeb	 Bytes: 3
  %loadMem_48caeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48caeb = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48caeb)
  store %struct.Memory* %call_48caeb, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdx	 RIP: 48caee	 Bytes: 4
  %loadMem_48caee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48caee = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48caee)
  store %struct.Memory* %call_48caee, %struct.Memory** %MEMORY

  ; Code: movzwl (%rcx,%rdx,2), %esi	 RIP: 48caf2	 Bytes: 4
  %loadMem_48caf2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48caf2 = call %struct.Memory* @routine_movzwl___rcx__rdx_2____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48caf2)
  store %struct.Memory* %call_48caf2, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 48caf6	 Bytes: 4
  %loadMem_48caf6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48caf6 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48caf6)
  store %struct.Memory* %call_48caf6, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rcx	 RIP: 48cafa	 Bytes: 4
  %loadMem_48cafa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cafa = call %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cafa)
  store %struct.Memory* %call_48cafa, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 48cafe	 Bytes: 3
  %loadMem_48cafe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cafe = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cafe)
  store %struct.Memory* %call_48cafe, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 48cb01	 Bytes: 4
  %loadMem_48cb01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cb01 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cb01)
  store %struct.Memory* %call_48cb01, %struct.Memory** %MEMORY

  ; Code: movl %esi, (%rax,%rcx,4)	 RIP: 48cb05	 Bytes: 3
  %loadMem_48cb05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cb05 = call %struct.Memory* @routine_movl__esi____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cb05)
  store %struct.Memory* %call_48cb05, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %eax	 RIP: 48cb08	 Bytes: 3
  %loadMem_48cb08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cb08 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cb08)
  store %struct.Memory* %call_48cb08, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 48cb0b	 Bytes: 3
  %loadMem_48cb0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cb0b = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cb0b)
  store %struct.Memory* %call_48cb0b, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2c(%rbp)	 RIP: 48cb0e	 Bytes: 3
  %loadMem_48cb0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cb0e = call %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cb0e)
  store %struct.Memory* %call_48cb0e, %struct.Memory** %MEMORY

  ; Code: jmpq .L_48cab5	 RIP: 48cb11	 Bytes: 5
  %loadMem_48cb11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cb11 = call %struct.Memory* @routine_jmpq_.L_48cab5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cb11, i64 -92, i64 5)
  store %struct.Memory* %call_48cb11, %struct.Memory** %MEMORY

  br label %block_.L_48cab5

  ; Code: .L_48cb16:	 RIP: 48cb16	 Bytes: 0
block_.L_48cb16:

  ; Code: jmpq .L_48cb1b	 RIP: 48cb16	 Bytes: 5
  %loadMem_48cb16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cb16 = call %struct.Memory* @routine_jmpq_.L_48cb1b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cb16, i64 5, i64 5)
  store %struct.Memory* %call_48cb16, %struct.Memory** %MEMORY

  br label %block_.L_48cb1b

  ; Code: .L_48cb1b:	 RIP: 48cb1b	 Bytes: 0
block_.L_48cb1b:

  ; Code: movl -0x28(%rbp), %eax	 RIP: 48cb1b	 Bytes: 3
  %loadMem_48cb1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cb1b = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cb1b)
  store %struct.Memory* %call_48cb1b, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 48cb1e	 Bytes: 3
  %loadMem_48cb1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cb1e = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cb1e)
  store %struct.Memory* %call_48cb1e, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x28(%rbp)	 RIP: 48cb21	 Bytes: 3
  %loadMem_48cb21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cb21 = call %struct.Memory* @routine_movl__eax__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cb21)
  store %struct.Memory* %call_48cb21, %struct.Memory** %MEMORY

  ; Code: jmpq .L_48caa4	 RIP: 48cb24	 Bytes: 5
  %loadMem_48cb24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cb24 = call %struct.Memory* @routine_jmpq_.L_48caa4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cb24, i64 -128, i64 5)
  store %struct.Memory* %call_48cb24, %struct.Memory** %MEMORY

  br label %block_.L_48caa4

  ; Code: .L_48cb29:	 RIP: 48cb29	 Bytes: 0
block_.L_48cb29:

  ; Code: jmpq .L_48cbb4	 RIP: 48cb29	 Bytes: 5
  %loadMem_48cb29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cb29 = call %struct.Memory* @routine_jmpq_.L_48cbb4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cb29, i64 139, i64 5)
  store %struct.Memory* %call_48cb29, %struct.Memory** %MEMORY

  br label %block_.L_48cbb4

  ; Code: .L_48cb2e:	 RIP: 48cb2e	 Bytes: 0
block_.L_48cb2e:

  ; Code: movl $0x0, -0x28(%rbp)	 RIP: 48cb2e	 Bytes: 7
  %loadMem_48cb2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cb2e = call %struct.Memory* @routine_movl__0x0__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cb2e)
  store %struct.Memory* %call_48cb2e, %struct.Memory** %MEMORY

  ; Code: .L_48cb35:	 RIP: 48cb35	 Bytes: 0
  br label %block_.L_48cb35
block_.L_48cb35:

  ; Code: cmpl $0x10, -0x28(%rbp)	 RIP: 48cb35	 Bytes: 4
  %loadMem_48cb35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cb35 = call %struct.Memory* @routine_cmpl__0x10__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cb35)
  store %struct.Memory* %call_48cb35, %struct.Memory** %MEMORY

  ; Code: jge .L_48cbaf	 RIP: 48cb39	 Bytes: 6
  %loadMem_48cb39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cb39 = call %struct.Memory* @routine_jge_.L_48cbaf(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cb39, i8* %BRANCH_TAKEN, i64 118, i64 6, i64 6)
  store %struct.Memory* %call_48cb39, %struct.Memory** %MEMORY

  %loadBr_48cb39 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48cb39 = icmp eq i8 %loadBr_48cb39, 1
  br i1 %cmpBr_48cb39, label %block_.L_48cbaf, label %block_48cb3f

block_48cb3f:
  ; Code: movl $0x0, -0x2c(%rbp)	 RIP: 48cb3f	 Bytes: 7
  %loadMem_48cb3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cb3f = call %struct.Memory* @routine_movl__0x0__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cb3f)
  store %struct.Memory* %call_48cb3f, %struct.Memory** %MEMORY

  ; Code: .L_48cb46:	 RIP: 48cb46	 Bytes: 0
  br label %block_.L_48cb46
block_.L_48cb46:

  ; Code: cmpl $0x10, -0x2c(%rbp)	 RIP: 48cb46	 Bytes: 4
  %loadMem_48cb46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cb46 = call %struct.Memory* @routine_cmpl__0x10__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cb46)
  store %struct.Memory* %call_48cb46, %struct.Memory** %MEMORY

  ; Code: jge .L_48cb9c	 RIP: 48cb4a	 Bytes: 6
  %loadMem_48cb4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cb4a = call %struct.Memory* @routine_jge_.L_48cb9c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cb4a, i8* %BRANCH_TAKEN, i64 82, i64 6, i64 6)
  store %struct.Memory* %call_48cb4a, %struct.Memory** %MEMORY

  %loadBr_48cb4a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48cb4a = icmp eq i8 %loadBr_48cb4a, 1
  br i1 %cmpBr_48cb4a, label %block_.L_48cb9c, label %block_48cb50

block_48cb50:
  ; Code: movq $0x6cc660, %rax	 RIP: 48cb50	 Bytes: 10
  %loadMem_48cb50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cb50 = call %struct.Memory* @routine_movq__0x6cc660___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cb50)
  store %struct.Memory* %call_48cb50, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 48cb5a	 Bytes: 8
  %loadMem_48cb5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cb5a = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cb5a)
  store %struct.Memory* %call_48cb5a, %struct.Memory** %MEMORY

  ; Code: addq $0x3138, %rcx	 RIP: 48cb62	 Bytes: 7
  %loadMem_48cb62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cb62 = call %struct.Memory* @routine_addq__0x3138___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cb62)
  store %struct.Memory* %call_48cb62, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdx	 RIP: 48cb69	 Bytes: 4
  %loadMem_48cb69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cb69 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cb69)
  store %struct.Memory* %call_48cb69, %struct.Memory** %MEMORY

  ; Code: shlq $0x5, %rdx	 RIP: 48cb6d	 Bytes: 4
  %loadMem_48cb6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cb6d = call %struct.Memory* @routine_shlq__0x5___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cb6d)
  store %struct.Memory* %call_48cb6d, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 48cb71	 Bytes: 3
  %loadMem_48cb71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cb71 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cb71)
  store %struct.Memory* %call_48cb71, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rdx	 RIP: 48cb74	 Bytes: 4
  %loadMem_48cb74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cb74 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cb74)
  store %struct.Memory* %call_48cb74, %struct.Memory** %MEMORY

  ; Code: movzwl (%rcx,%rdx,2), %esi	 RIP: 48cb78	 Bytes: 4
  %loadMem_48cb78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cb78 = call %struct.Memory* @routine_movzwl___rcx__rdx_2____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cb78)
  store %struct.Memory* %call_48cb78, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 48cb7c	 Bytes: 4
  %loadMem_48cb7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cb7c = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cb7c)
  store %struct.Memory* %call_48cb7c, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rcx	 RIP: 48cb80	 Bytes: 4
  %loadMem_48cb80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cb80 = call %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cb80)
  store %struct.Memory* %call_48cb80, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 48cb84	 Bytes: 3
  %loadMem_48cb84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cb84 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cb84)
  store %struct.Memory* %call_48cb84, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 48cb87	 Bytes: 4
  %loadMem_48cb87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cb87 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cb87)
  store %struct.Memory* %call_48cb87, %struct.Memory** %MEMORY

  ; Code: movl %esi, (%rax,%rcx,4)	 RIP: 48cb8b	 Bytes: 3
  %loadMem_48cb8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cb8b = call %struct.Memory* @routine_movl__esi____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cb8b)
  store %struct.Memory* %call_48cb8b, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %eax	 RIP: 48cb8e	 Bytes: 3
  %loadMem_48cb8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cb8e = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cb8e)
  store %struct.Memory* %call_48cb8e, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 48cb91	 Bytes: 3
  %loadMem_48cb91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cb91 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cb91)
  store %struct.Memory* %call_48cb91, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2c(%rbp)	 RIP: 48cb94	 Bytes: 3
  %loadMem_48cb94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cb94 = call %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cb94)
  store %struct.Memory* %call_48cb94, %struct.Memory** %MEMORY

  ; Code: jmpq .L_48cb46	 RIP: 48cb97	 Bytes: 5
  %loadMem_48cb97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cb97 = call %struct.Memory* @routine_jmpq_.L_48cb46(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cb97, i64 -81, i64 5)
  store %struct.Memory* %call_48cb97, %struct.Memory** %MEMORY

  br label %block_.L_48cb46

  ; Code: .L_48cb9c:	 RIP: 48cb9c	 Bytes: 0
block_.L_48cb9c:

  ; Code: jmpq .L_48cba1	 RIP: 48cb9c	 Bytes: 5
  %loadMem_48cb9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cb9c = call %struct.Memory* @routine_jmpq_.L_48cba1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cb9c, i64 5, i64 5)
  store %struct.Memory* %call_48cb9c, %struct.Memory** %MEMORY

  br label %block_.L_48cba1

  ; Code: .L_48cba1:	 RIP: 48cba1	 Bytes: 0
block_.L_48cba1:

  ; Code: movl -0x28(%rbp), %eax	 RIP: 48cba1	 Bytes: 3
  %loadMem_48cba1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cba1 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cba1)
  store %struct.Memory* %call_48cba1, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 48cba4	 Bytes: 3
  %loadMem_48cba4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cba4 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cba4)
  store %struct.Memory* %call_48cba4, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x28(%rbp)	 RIP: 48cba7	 Bytes: 3
  %loadMem_48cba7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cba7 = call %struct.Memory* @routine_movl__eax__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cba7)
  store %struct.Memory* %call_48cba7, %struct.Memory** %MEMORY

  ; Code: jmpq .L_48cb35	 RIP: 48cbaa	 Bytes: 5
  %loadMem_48cbaa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cbaa = call %struct.Memory* @routine_jmpq_.L_48cb35(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cbaa, i64 -117, i64 5)
  store %struct.Memory* %call_48cbaa, %struct.Memory** %MEMORY

  br label %block_.L_48cb35

  ; Code: .L_48cbaf:	 RIP: 48cbaf	 Bytes: 0
block_.L_48cbaf:

  ; Code: jmpq .L_48cbb4	 RIP: 48cbaf	 Bytes: 5
  %loadMem_48cbaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cbaf = call %struct.Memory* @routine_jmpq_.L_48cbb4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cbaf, i64 5, i64 5)
  store %struct.Memory* %call_48cbaf, %struct.Memory** %MEMORY

  br label %block_.L_48cbb4

  ; Code: .L_48cbb4:	 RIP: 48cbb4	 Bytes: 0
block_.L_48cbb4:

  ; Code: movq 0x6cb900, %rax	 RIP: 48cbb4	 Bytes: 8
  %loadMem_48cbb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cbb4 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cbb4)
  store %struct.Memory* %call_48cbb4, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x11abc(%rax)	 RIP: 48cbbc	 Bytes: 10
  %loadMem_48cbbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cbbc = call %struct.Memory* @routine_movl__0x0__0x11abc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cbbc)
  store %struct.Memory* %call_48cbbc, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x6c(%rbp)	 RIP: 48cbc6	 Bytes: 7
  %loadMem_48cbc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cbc6 = call %struct.Memory* @routine_movl__0x0__MINUS0x6c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cbc6)
  store %struct.Memory* %call_48cbc6, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 48cbcd	 Bytes: 8
  %loadMem_48cbcd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cbcd = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cbcd)
  store %struct.Memory* %call_48cbcd, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x11c14(%rax)	 RIP: 48cbd5	 Bytes: 7
  %loadMem_48cbd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cbd5 = call %struct.Memory* @routine_cmpl__0x0__0x11c14__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cbd5)
  store %struct.Memory* %call_48cbd5, %struct.Memory** %MEMORY

  ; Code: je .L_48cc00	 RIP: 48cbdc	 Bytes: 6
  %loadMem_48cbdc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cbdc = call %struct.Memory* @routine_je_.L_48cc00(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cbdc, i8* %BRANCH_TAKEN, i64 36, i64 6, i64 6)
  store %struct.Memory* %call_48cbdc, %struct.Memory** %MEMORY

  %loadBr_48cbdc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48cbdc = icmp eq i8 %loadBr_48cbdc, 1
  br i1 %cmpBr_48cbdc, label %block_.L_48cc00, label %block_48cbe2

block_48cbe2:
  ; Code: cmpl $0x9, -0x14(%rbp)	 RIP: 48cbe2	 Bytes: 4
  %loadMem_48cbe2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cbe2 = call %struct.Memory* @routine_cmpl__0x9__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cbe2)
  store %struct.Memory* %call_48cbe2, %struct.Memory** %MEMORY

  ; Code: je .L_48cc1e	 RIP: 48cbe6	 Bytes: 6
  %loadMem_48cbe6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cbe6 = call %struct.Memory* @routine_je_.L_48cc1e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cbe6, i8* %BRANCH_TAKEN, i64 56, i64 6, i64 6)
  store %struct.Memory* %call_48cbe6, %struct.Memory** %MEMORY

  %loadBr_48cbe6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48cbe6 = icmp eq i8 %loadBr_48cbe6, 1
  br i1 %cmpBr_48cbe6, label %block_.L_48cc1e, label %block_48cbec

block_48cbec:
  ; Code: cmpl $0xa, -0x14(%rbp)	 RIP: 48cbec	 Bytes: 4
  %loadMem_48cbec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cbec = call %struct.Memory* @routine_cmpl__0xa__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cbec)
  store %struct.Memory* %call_48cbec, %struct.Memory** %MEMORY

  ; Code: je .L_48cc1e	 RIP: 48cbf0	 Bytes: 6
  %loadMem_48cbf0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cbf0 = call %struct.Memory* @routine_je_.L_48cc1e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cbf0, i8* %BRANCH_TAKEN, i64 46, i64 6, i64 6)
  store %struct.Memory* %call_48cbf0, %struct.Memory** %MEMORY

  %loadBr_48cbf0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48cbf0 = icmp eq i8 %loadBr_48cbf0, 1
  br i1 %cmpBr_48cbf0, label %block_.L_48cc1e, label %block_48cbf6

block_48cbf6:
  ; Code: cmpl $0xd, -0x14(%rbp)	 RIP: 48cbf6	 Bytes: 4
  %loadMem_48cbf6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cbf6 = call %struct.Memory* @routine_cmpl__0xd__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cbf6)
  store %struct.Memory* %call_48cbf6, %struct.Memory** %MEMORY

  ; Code: je .L_48cc1e	 RIP: 48cbfa	 Bytes: 6
  %loadMem_48cbfa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cbfa = call %struct.Memory* @routine_je_.L_48cc1e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cbfa, i8* %BRANCH_TAKEN, i64 36, i64 6, i64 6)
  store %struct.Memory* %call_48cbfa, %struct.Memory** %MEMORY

  %loadBr_48cbfa = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48cbfa = icmp eq i8 %loadBr_48cbfa, 1
  br i1 %cmpBr_48cbfa, label %block_.L_48cc1e, label %block_.L_48cc00

  ; Code: .L_48cc00:	 RIP: 48cc00	 Bytes: 0
block_.L_48cc00:

  ; Code: movq 0x6cb900, %rax	 RIP: 48cc00	 Bytes: 8
  %loadMem_48cc00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cc00 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cc00)
  store %struct.Memory* %call_48cc00, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x11bfc(%rax)	 RIP: 48cc08	 Bytes: 7
  %loadMem_48cc08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cc08 = call %struct.Memory* @routine_cmpl__0x0__0x11bfc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cc08)
  store %struct.Memory* %call_48cc08, %struct.Memory** %MEMORY

  ; Code: je .L_48cc1e	 RIP: 48cc0f	 Bytes: 6
  %loadMem_48cc0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cc0f = call %struct.Memory* @routine_je_.L_48cc1e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cc0f, i8* %BRANCH_TAKEN, i64 15, i64 6, i64 6)
  store %struct.Memory* %call_48cc0f, %struct.Memory** %MEMORY

  %loadBr_48cc0f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48cc0f = icmp eq i8 %loadBr_48cc0f, 1
  br i1 %cmpBr_48cc0f, label %block_.L_48cc1e, label %block_48cc15

block_48cc15:
  ; Code: leaq -0x6c(%rbp), %rdi	 RIP: 48cc15	 Bytes: 4
  %loadMem_48cc15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cc15 = call %struct.Memory* @routine_leaq_MINUS0x6c__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cc15)
  store %struct.Memory* %call_48cc15, %struct.Memory** %MEMORY

  ; Code: callq .ChromaResidualCoding	 RIP: 48cc19	 Bytes: 5
  %loadMem1_48cc19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_48cc19 = call %struct.Memory* @routine_callq_.ChromaResidualCoding(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_48cc19, i64 -308953, i64 5, i64 5)
  store %struct.Memory* %call1_48cc19, %struct.Memory** %MEMORY

  %loadMem2_48cc19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_48cc19 = load i64, i64* %3
  %call2_48cc19 = call %struct.Memory* @sub_441540.ChromaResidualCoding(%struct.State* %0, i64  %loadPC_48cc19, %struct.Memory* %loadMem2_48cc19)
  store %struct.Memory* %call2_48cc19, %struct.Memory** %MEMORY

  ; Code: .L_48cc1e:	 RIP: 48cc1e	 Bytes: 0
  br label %block_.L_48cc1e
block_.L_48cc1e:

  ; Code: cmpl $0xa, -0x14(%rbp)	 RIP: 48cc1e	 Bytes: 4
  %loadMem_48cc1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cc1e = call %struct.Memory* @routine_cmpl__0xa__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cc1e)
  store %struct.Memory* %call_48cc1e, %struct.Memory** %MEMORY

  ; Code: jne .L_48cc48	 RIP: 48cc22	 Bytes: 6
  %loadMem_48cc22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cc22 = call %struct.Memory* @routine_jne_.L_48cc48(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cc22, i8* %BRANCH_TAKEN, i64 38, i64 6, i64 6)
  store %struct.Memory* %call_48cc22, %struct.Memory** %MEMORY

  %loadBr_48cc22 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48cc22 = icmp eq i8 %loadBr_48cc22, 1
  br i1 %cmpBr_48cc22, label %block_.L_48cc48, label %block_48cc28

block_48cc28:
  ; Code: movq -0x50(%rbp), %rax	 RIP: 48cc28	 Bytes: 4
  %loadMem_48cc28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cc28 = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cc28)
  store %struct.Memory* %call_48cc28, %struct.Memory** %MEMORY

  ; Code: movl 0x1cc(%rax), %edi	 RIP: 48cc2c	 Bytes: 6
  %loadMem_48cc2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cc2c = call %struct.Memory* @routine_movl_0x1cc__rax____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cc2c)
  store %struct.Memory* %call_48cc2c, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %esi	 RIP: 48cc32	 Bytes: 3
  %loadMem_48cc32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cc32 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cc32)
  store %struct.Memory* %call_48cc32, %struct.Memory** %MEMORY

  ; Code: callq .I16Offset	 RIP: 48cc35	 Bytes: 5
  %loadMem1_48cc35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_48cc35 = call %struct.Memory* @routine_callq_.I16Offset(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_48cc35, i64 -19525, i64 5, i64 5)
  store %struct.Memory* %call1_48cc35, %struct.Memory** %MEMORY

  %loadMem2_48cc35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_48cc35 = load i64, i64* %3
  %call2_48cc35 = call %struct.Memory* @sub_487ff0.I16Offset(%struct.State* %0, i64  %loadPC_48cc35, %struct.Memory* %loadMem2_48cc35)
  store %struct.Memory* %call2_48cc35, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 48cc3a	 Bytes: 8
  %loadMem_48cc3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cc3a = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cc3a)
  store %struct.Memory* %call_48cc3a, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x11abc(%rcx)	 RIP: 48cc42	 Bytes: 6
  %loadMem_48cc42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cc42 = call %struct.Memory* @routine_movl__eax__0x11abc__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cc42)
  store %struct.Memory* %call_48cc42, %struct.Memory** %MEMORY

  ; Code: .L_48cc48:	 RIP: 48cc48	 Bytes: 0
  br label %block_.L_48cc48
block_.L_48cc48:

  ; Code: movq 0x6cb8f8, %rax	 RIP: 48cc48	 Bytes: 8
  %loadMem_48cc48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cc48 = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cc48)
  store %struct.Memory* %call_48cc48, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, 0x9a0(%rax)	 RIP: 48cc50	 Bytes: 7
  %loadMem_48cc50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cc50 = call %struct.Memory* @routine_cmpl__0x2__0x9a0__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cc50)
  store %struct.Memory* %call_48cc50, %struct.Memory** %MEMORY

  ; Code: jne .L_48cdb9	 RIP: 48cc57	 Bytes: 6
  %loadMem_48cc57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cc57 = call %struct.Memory* @routine_jne_.L_48cdb9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cc57, i8* %BRANCH_TAKEN, i64 354, i64 6, i64 6)
  store %struct.Memory* %call_48cc57, %struct.Memory** %MEMORY

  %loadBr_48cc57 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48cc57 = icmp eq i8 %loadBr_48cc57, 1
  br i1 %cmpBr_48cc57, label %block_.L_48cdb9, label %block_48cc5d

block_48cc5d:
  ; Code: movq 0x6cb900, %rax	 RIP: 48cc5d	 Bytes: 8
  %loadMem_48cc5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cc5d = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cc5d)
  store %struct.Memory* %call_48cc5d, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, 0x18(%rax)	 RIP: 48cc65	 Bytes: 4
  %loadMem_48cc65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cc65 = call %struct.Memory* @routine_cmpl__0x1__0x18__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cc65)
  store %struct.Memory* %call_48cc65, %struct.Memory** %MEMORY

  ; Code: je .L_48cdb9	 RIP: 48cc69	 Bytes: 6
  %loadMem_48cc69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cc69 = call %struct.Memory* @routine_je_.L_48cdb9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cc69, i8* %BRANCH_TAKEN, i64 336, i64 6, i64 6)
  store %struct.Memory* %call_48cc69, %struct.Memory** %MEMORY

  %loadBr_48cc69 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48cc69 = icmp eq i8 %loadBr_48cc69, 1
  br i1 %cmpBr_48cc69, label %block_.L_48cdb9, label %block_48cc6f

block_48cc6f:
  ; Code: movl $0x0, -0x30(%rbp)	 RIP: 48cc6f	 Bytes: 7
  %loadMem_48cc6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cc6f = call %struct.Memory* @routine_movl__0x0__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cc6f)
  store %struct.Memory* %call_48cc6f, %struct.Memory** %MEMORY

  ; Code: .L_48cc76:	 RIP: 48cc76	 Bytes: 0
  br label %block_.L_48cc76
block_.L_48cc76:

  ; Code: movl -0x30(%rbp), %eax	 RIP: 48cc76	 Bytes: 3
  %loadMem_48cc76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cc76 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cc76)
  store %struct.Memory* %call_48cc76, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rcx	 RIP: 48cc79	 Bytes: 8
  %loadMem_48cc79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cc79 = call %struct.Memory* @routine_movq_0x6cb8f8___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cc79)
  store %struct.Memory* %call_48cc79, %struct.Memory** %MEMORY

  ; Code: cmpl 0xb58(%rcx), %eax	 RIP: 48cc81	 Bytes: 6
  %loadMem_48cc81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cc81 = call %struct.Memory* @routine_cmpl_0xb58__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cc81)
  store %struct.Memory* %call_48cc81, %struct.Memory** %MEMORY

  ; Code: jge .L_48cd87	 RIP: 48cc87	 Bytes: 6
  %loadMem_48cc87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cc87 = call %struct.Memory* @routine_jge_.L_48cd87(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cc87, i8* %BRANCH_TAKEN, i64 256, i64 6, i64 6)
  store %struct.Memory* %call_48cc87, %struct.Memory** %MEMORY

  %loadBr_48cc87 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48cc87 = icmp eq i8 %loadBr_48cc87, 1
  br i1 %cmpBr_48cc87, label %block_.L_48cd87, label %block_48cc8d

block_48cc8d:
  ; Code: movl -0x30(%rbp), %edi	 RIP: 48cc8d	 Bytes: 3
  %loadMem_48cc8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cc8d = call %struct.Memory* @routine_movl_MINUS0x30__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cc8d)
  store %struct.Memory* %call_48cc8d, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rsi	 RIP: 48cc90	 Bytes: 4
  %loadMem_48cc90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cc90 = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cc90)
  store %struct.Memory* %call_48cc90, %struct.Memory** %MEMORY

  ; Code: callq .decode_one_mb	 RIP: 48cc94	 Bytes: 5
  %loadMem1_48cc94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_48cc94 = call %struct.Memory* @routine_callq_.decode_one_mb(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_48cc94, i64 -459380, i64 5, i64 5)
  store %struct.Memory* %call1_48cc94, %struct.Memory** %MEMORY

  %loadMem2_48cc94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_48cc94 = load i64, i64* %3
  %call2_48cc94 = call %struct.Memory* @sub_41ca20.decode_one_mb(%struct.State* %0, i64  %loadPC_48cc94, %struct.Memory* %loadMem2_48cc94)
  store %struct.Memory* %call2_48cc94, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x2c(%rbp)	 RIP: 48cc99	 Bytes: 7
  %loadMem_48cc99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cc99 = call %struct.Memory* @routine_movl__0x0__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cc99)
  store %struct.Memory* %call_48cc99, %struct.Memory** %MEMORY

  ; Code: .L_48cca0:	 RIP: 48cca0	 Bytes: 0
  br label %block_.L_48cca0
block_.L_48cca0:

  ; Code: cmpl $0x10, -0x2c(%rbp)	 RIP: 48cca0	 Bytes: 4
  %loadMem_48cca0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cca0 = call %struct.Memory* @routine_cmpl__0x10__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cca0)
  store %struct.Memory* %call_48cca0, %struct.Memory** %MEMORY

  ; Code: jge .L_48cd74	 RIP: 48cca4	 Bytes: 6
  %loadMem_48cca4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cca4 = call %struct.Memory* @routine_jge_.L_48cd74(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cca4, i8* %BRANCH_TAKEN, i64 208, i64 6, i64 6)
  store %struct.Memory* %call_48cca4, %struct.Memory** %MEMORY

  %loadBr_48cca4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48cca4 = icmp eq i8 %loadBr_48cca4, 1
  br i1 %cmpBr_48cca4, label %block_.L_48cd74, label %block_48ccaa

block_48ccaa:
  ; Code: movq 0x6cb900, %rax	 RIP: 48ccaa	 Bytes: 8
  %loadMem_48ccaa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ccaa = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ccaa)
  store %struct.Memory* %call_48ccaa, %struct.Memory** %MEMORY

  ; Code: movl 0xa8(%rax), %ecx	 RIP: 48ccb2	 Bytes: 6
  %loadMem_48ccb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ccb2 = call %struct.Memory* @routine_movl_0xa8__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ccb2)
  store %struct.Memory* %call_48ccb2, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x28(%rbp)	 RIP: 48ccb8	 Bytes: 3
  %loadMem_48ccb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ccb8 = call %struct.Memory* @routine_movl__ecx__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ccb8)
  store %struct.Memory* %call_48ccb8, %struct.Memory** %MEMORY

  ; Code: .L_48ccbb:	 RIP: 48ccbb	 Bytes: 0
  br label %block_.L_48ccbb
block_.L_48ccbb:

  ; Code: movl -0x28(%rbp), %eax	 RIP: 48ccbb	 Bytes: 3
  %loadMem_48ccbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ccbb = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ccbb)
  store %struct.Memory* %call_48ccbb, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 48ccbe	 Bytes: 8
  %loadMem_48ccbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ccbe = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ccbe)
  store %struct.Memory* %call_48ccbe, %struct.Memory** %MEMORY

  ; Code: movl 0xa8(%rcx), %edx	 RIP: 48ccc6	 Bytes: 6
  %loadMem_48ccc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ccc6 = call %struct.Memory* @routine_movl_0xa8__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ccc6)
  store %struct.Memory* %call_48ccc6, %struct.Memory** %MEMORY

  ; Code: addl $0x10, %edx	 RIP: 48cccc	 Bytes: 3
  %loadMem_48cccc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cccc = call %struct.Memory* @routine_addl__0x10___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cccc)
  store %struct.Memory* %call_48cccc, %struct.Memory** %MEMORY

  ; Code: cmpl %edx, %eax	 RIP: 48cccf	 Bytes: 2
  %loadMem_48cccf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cccf = call %struct.Memory* @routine_cmpl__edx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cccf)
  store %struct.Memory* %call_48cccf, %struct.Memory** %MEMORY

  ; Code: jge .L_48cd61	 RIP: 48ccd1	 Bytes: 6
  %loadMem_48ccd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ccd1 = call %struct.Memory* @routine_jge_.L_48cd61(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ccd1, i8* %BRANCH_TAKEN, i64 144, i64 6, i64 6)
  store %struct.Memory* %call_48ccd1, %struct.Memory** %MEMORY

  %loadBr_48ccd1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48ccd1 = icmp eq i8 %loadBr_48ccd1, 1
  br i1 %cmpBr_48ccd1, label %block_.L_48cd61, label %block_48ccd7

block_48ccd7:
  ; Code: movq 0x6cb900, %rax	 RIP: 48ccd7	 Bytes: 8
  %loadMem_48ccd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ccd7 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ccd7)
  store %struct.Memory* %call_48ccd7, %struct.Memory** %MEMORY

  ; Code: movq 0x11860(%rax), %rax	 RIP: 48ccdf	 Bytes: 7
  %loadMem_48ccdf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ccdf = call %struct.Memory* @routine_movq_0x11860__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ccdf)
  store %struct.Memory* %call_48ccdf, %struct.Memory** %MEMORY

  ; Code: movq 0x726418, %rcx	 RIP: 48cce6	 Bytes: 8
  %loadMem_48cce6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cce6 = call %struct.Memory* @routine_movq_0x726418___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cce6)
  store %struct.Memory* %call_48cce6, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rdx	 RIP: 48ccee	 Bytes: 8
  %loadMem_48ccee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ccee = call %struct.Memory* @routine_movq_0x6cb900___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ccee)
  store %struct.Memory* %call_48ccee, %struct.Memory** %MEMORY

  ; Code: movl 0xac(%rdx), %esi	 RIP: 48ccf6	 Bytes: 6
  %loadMem_48ccf6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ccf6 = call %struct.Memory* @routine_movl_0xac__rdx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ccf6)
  store %struct.Memory* %call_48ccf6, %struct.Memory** %MEMORY

  ; Code: addl -0x2c(%rbp), %esi	 RIP: 48ccfc	 Bytes: 3
  %loadMem_48ccfc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ccfc = call %struct.Memory* @routine_addl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ccfc)
  store %struct.Memory* %call_48ccfc, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rdx	 RIP: 48ccff	 Bytes: 3
  %loadMem_48ccff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ccff = call %struct.Memory* @routine_movslq__esi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ccff)
  store %struct.Memory* %call_48ccff, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 48cd02	 Bytes: 4
  %loadMem_48cd02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cd02 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cd02)
  store %struct.Memory* %call_48cd02, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdx	 RIP: 48cd06	 Bytes: 4
  %loadMem_48cd06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cd06 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cd06)
  store %struct.Memory* %call_48cd06, %struct.Memory** %MEMORY

  ; Code: movzwl (%rcx,%rdx,2), %esi	 RIP: 48cd0a	 Bytes: 4
  %loadMem_48cd0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cd0a = call %struct.Memory* @routine_movzwl___rcx__rdx_2____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cd0a)
  store %struct.Memory* %call_48cd0a, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb918, %rcx	 RIP: 48cd0e	 Bytes: 8
  %loadMem_48cd0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cd0e = call %struct.Memory* @routine_movq_0x6cb918___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cd0e)
  store %struct.Memory* %call_48cd0e, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rcx), %rcx	 RIP: 48cd16	 Bytes: 4
  %loadMem_48cd16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cd16 = call %struct.Memory* @routine_movq_0x8__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cd16)
  store %struct.Memory* %call_48cd16, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rdx	 RIP: 48cd1a	 Bytes: 4
  %loadMem_48cd1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cd1a = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cd1a)
  store %struct.Memory* %call_48cd1a, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 48cd1e	 Bytes: 4
  %loadMem_48cd1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cd1e = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cd1e)
  store %struct.Memory* %call_48cd1e, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rdx	 RIP: 48cd22	 Bytes: 8
  %loadMem_48cd22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cd22 = call %struct.Memory* @routine_movq_0x6cb900___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cd22)
  store %struct.Memory* %call_48cd22, %struct.Memory** %MEMORY

  ; Code: movl 0xac(%rdx), %edi	 RIP: 48cd2a	 Bytes: 6
  %loadMem_48cd2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cd2a = call %struct.Memory* @routine_movl_0xac__rdx____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cd2a)
  store %struct.Memory* %call_48cd2a, %struct.Memory** %MEMORY

  ; Code: addl -0x2c(%rbp), %edi	 RIP: 48cd30	 Bytes: 3
  %loadMem_48cd30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cd30 = call %struct.Memory* @routine_addl_MINUS0x2c__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cd30)
  store %struct.Memory* %call_48cd30, %struct.Memory** %MEMORY

  ; Code: movslq %edi, %rdx	 RIP: 48cd33	 Bytes: 3
  %loadMem_48cd33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cd33 = call %struct.Memory* @routine_movslq__edi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cd33)
  store %struct.Memory* %call_48cd33, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 48cd36	 Bytes: 4
  %loadMem_48cd36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cd36 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cd36)
  store %struct.Memory* %call_48cd36, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdx	 RIP: 48cd3a	 Bytes: 4
  %loadMem_48cd3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cd3a = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cd3a)
  store %struct.Memory* %call_48cd3a, %struct.Memory** %MEMORY

  ; Code: movzwl (%rcx,%rdx,2), %edi	 RIP: 48cd3e	 Bytes: 4
  %loadMem_48cd3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cd3e = call %struct.Memory* @routine_movzwl___rcx__rdx_2____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cd3e)
  store %struct.Memory* %call_48cd3e, %struct.Memory** %MEMORY

  ; Code: subl %edi, %esi	 RIP: 48cd42	 Bytes: 2
  %loadMem_48cd42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cd42 = call %struct.Memory* @routine_subl__edi___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cd42)
  store %struct.Memory* %call_48cd42, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rcx	 RIP: 48cd44	 Bytes: 3
  %loadMem_48cd44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cd44 = call %struct.Memory* @routine_movslq__esi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cd44)
  store %struct.Memory* %call_48cd44, %struct.Memory** %MEMORY

  ; Code: movslq (%rax,%rcx,4), %rax	 RIP: 48cd47	 Bytes: 4
  %loadMem_48cd47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cd47 = call %struct.Memory* @routine_movslq___rax__rcx_4____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cd47)
  store %struct.Memory* %call_48cd47, %struct.Memory** %MEMORY

  ; Code: addq -0x40(%rbp), %rax	 RIP: 48cd4b	 Bytes: 4
  %loadMem_48cd4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cd4b = call %struct.Memory* @routine_addq_MINUS0x40__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cd4b)
  store %struct.Memory* %call_48cd4b, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x40(%rbp)	 RIP: 48cd4f	 Bytes: 4
  %loadMem_48cd4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cd4f = call %struct.Memory* @routine_movq__rax__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cd4f)
  store %struct.Memory* %call_48cd4f, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %eax	 RIP: 48cd53	 Bytes: 3
  %loadMem_48cd53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cd53 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cd53)
  store %struct.Memory* %call_48cd53, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 48cd56	 Bytes: 3
  %loadMem_48cd56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cd56 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cd56)
  store %struct.Memory* %call_48cd56, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x28(%rbp)	 RIP: 48cd59	 Bytes: 3
  %loadMem_48cd59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cd59 = call %struct.Memory* @routine_movl__eax__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cd59)
  store %struct.Memory* %call_48cd59, %struct.Memory** %MEMORY

  ; Code: jmpq .L_48ccbb	 RIP: 48cd5c	 Bytes: 5
  %loadMem_48cd5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cd5c = call %struct.Memory* @routine_jmpq_.L_48ccbb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cd5c, i64 -161, i64 5)
  store %struct.Memory* %call_48cd5c, %struct.Memory** %MEMORY

  br label %block_.L_48ccbb

  ; Code: .L_48cd61:	 RIP: 48cd61	 Bytes: 0
block_.L_48cd61:

  ; Code: jmpq .L_48cd66	 RIP: 48cd61	 Bytes: 5
  %loadMem_48cd61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cd61 = call %struct.Memory* @routine_jmpq_.L_48cd66(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cd61, i64 5, i64 5)
  store %struct.Memory* %call_48cd61, %struct.Memory** %MEMORY

  br label %block_.L_48cd66

  ; Code: .L_48cd66:	 RIP: 48cd66	 Bytes: 0
block_.L_48cd66:

  ; Code: movl -0x2c(%rbp), %eax	 RIP: 48cd66	 Bytes: 3
  %loadMem_48cd66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cd66 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cd66)
  store %struct.Memory* %call_48cd66, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 48cd69	 Bytes: 3
  %loadMem_48cd69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cd69 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cd69)
  store %struct.Memory* %call_48cd69, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2c(%rbp)	 RIP: 48cd6c	 Bytes: 3
  %loadMem_48cd6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cd6c = call %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cd6c)
  store %struct.Memory* %call_48cd6c, %struct.Memory** %MEMORY

  ; Code: jmpq .L_48cca0	 RIP: 48cd6f	 Bytes: 5
  %loadMem_48cd6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cd6f = call %struct.Memory* @routine_jmpq_.L_48cca0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cd6f, i64 -207, i64 5)
  store %struct.Memory* %call_48cd6f, %struct.Memory** %MEMORY

  br label %block_.L_48cca0

  ; Code: .L_48cd74:	 RIP: 48cd74	 Bytes: 0
block_.L_48cd74:

  ; Code: jmpq .L_48cd79	 RIP: 48cd74	 Bytes: 5
  %loadMem_48cd74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cd74 = call %struct.Memory* @routine_jmpq_.L_48cd79(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cd74, i64 5, i64 5)
  store %struct.Memory* %call_48cd74, %struct.Memory** %MEMORY

  br label %block_.L_48cd79

  ; Code: .L_48cd79:	 RIP: 48cd79	 Bytes: 0
block_.L_48cd79:

  ; Code: movl -0x30(%rbp), %eax	 RIP: 48cd79	 Bytes: 3
  %loadMem_48cd79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cd79 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cd79)
  store %struct.Memory* %call_48cd79, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 48cd7c	 Bytes: 3
  %loadMem_48cd7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cd7c = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cd7c)
  store %struct.Memory* %call_48cd7c, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x30(%rbp)	 RIP: 48cd7f	 Bytes: 3
  %loadMem_48cd7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cd7f = call %struct.Memory* @routine_movl__eax__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cd7f)
  store %struct.Memory* %call_48cd7f, %struct.Memory** %MEMORY

  ; Code: jmpq .L_48cc76	 RIP: 48cd82	 Bytes: 5
  %loadMem_48cd82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cd82 = call %struct.Memory* @routine_jmpq_.L_48cc76(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cd82, i64 -268, i64 5)
  store %struct.Memory* %call_48cd82, %struct.Memory** %MEMORY

  br label %block_.L_48cc76

  ; Code: .L_48cd87:	 RIP: 48cd87	 Bytes: 0
block_.L_48cd87:

  ; Code: movq 0x6cb8f8, %rax	 RIP: 48cd87	 Bytes: 8
  %loadMem_48cd87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cd87 = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cd87)
  store %struct.Memory* %call_48cd87, %struct.Memory** %MEMORY

  ; Code: movslq 0xb58(%rax), %rax	 RIP: 48cd8f	 Bytes: 7
  %loadMem_48cd8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cd8f = call %struct.Memory* @routine_movslq_0xb58__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cd8f)
  store %struct.Memory* %call_48cd8f, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rcx	 RIP: 48cd96	 Bytes: 4
  %loadMem_48cd96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cd96 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cd96)
  store %struct.Memory* %call_48cd96, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x98(%rbp)	 RIP: 48cd9a	 Bytes: 7
  %loadMem_48cd9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cd9a = call %struct.Memory* @routine_movq__rax__MINUS0x98__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cd9a)
  store %struct.Memory* %call_48cd9a, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rax	 RIP: 48cda1	 Bytes: 3
  %loadMem_48cda1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cda1 = call %struct.Memory* @routine_movq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cda1)
  store %struct.Memory* %call_48cda1, %struct.Memory** %MEMORY

  ; Code: cqto	 RIP: 48cda4	 Bytes: 2
  %loadMem_48cda4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cda4 = call %struct.Memory* @routine_cqto(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cda4)
  store %struct.Memory* %call_48cda4, %struct.Memory** %MEMORY

  ; Code: movq -0x98(%rbp), %rcx	 RIP: 48cda6	 Bytes: 7
  %loadMem_48cda6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cda6 = call %struct.Memory* @routine_movq_MINUS0x98__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cda6)
  store %struct.Memory* %call_48cda6, %struct.Memory** %MEMORY

  ; Code: idivq %rcx	 RIP: 48cdad	 Bytes: 3
  %loadMem_48cdad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cdad = call %struct.Memory* @routine_idivq__rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cdad)
  store %struct.Memory* %call_48cdad, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x40(%rbp)	 RIP: 48cdb0	 Bytes: 4
  %loadMem_48cdb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cdb0 = call %struct.Memory* @routine_movq__rax__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cdb0)
  store %struct.Memory* %call_48cdb0, %struct.Memory** %MEMORY

  ; Code: jmpq .L_48ce94	 RIP: 48cdb4	 Bytes: 5
  %loadMem_48cdb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cdb4 = call %struct.Memory* @routine_jmpq_.L_48ce94(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cdb4, i64 224, i64 5)
  store %struct.Memory* %call_48cdb4, %struct.Memory** %MEMORY

  br label %block_.L_48ce94

  ; Code: .L_48cdb9:	 RIP: 48cdb9	 Bytes: 0
block_.L_48cdb9:

  ; Code: movl $0x0, -0x2c(%rbp)	 RIP: 48cdb9	 Bytes: 7
  %loadMem_48cdb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cdb9 = call %struct.Memory* @routine_movl__0x0__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cdb9)
  store %struct.Memory* %call_48cdb9, %struct.Memory** %MEMORY

  ; Code: .L_48cdc0:	 RIP: 48cdc0	 Bytes: 0
  br label %block_.L_48cdc0
block_.L_48cdc0:

  ; Code: cmpl $0x10, -0x2c(%rbp)	 RIP: 48cdc0	 Bytes: 4
  %loadMem_48cdc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cdc0 = call %struct.Memory* @routine_cmpl__0x10__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cdc0)
  store %struct.Memory* %call_48cdc0, %struct.Memory** %MEMORY

  ; Code: jge .L_48ce8f	 RIP: 48cdc4	 Bytes: 6
  %loadMem_48cdc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cdc4 = call %struct.Memory* @routine_jge_.L_48ce8f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cdc4, i8* %BRANCH_TAKEN, i64 203, i64 6, i64 6)
  store %struct.Memory* %call_48cdc4, %struct.Memory** %MEMORY

  %loadBr_48cdc4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48cdc4 = icmp eq i8 %loadBr_48cdc4, 1
  br i1 %cmpBr_48cdc4, label %block_.L_48ce8f, label %block_48cdca

block_48cdca:
  ; Code: movq 0x6cb900, %rax	 RIP: 48cdca	 Bytes: 8
  %loadMem_48cdca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cdca = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cdca)
  store %struct.Memory* %call_48cdca, %struct.Memory** %MEMORY

  ; Code: movl 0xa8(%rax), %ecx	 RIP: 48cdd2	 Bytes: 6
  %loadMem_48cdd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cdd2 = call %struct.Memory* @routine_movl_0xa8__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cdd2)
  store %struct.Memory* %call_48cdd2, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x28(%rbp)	 RIP: 48cdd8	 Bytes: 3
  %loadMem_48cdd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cdd8 = call %struct.Memory* @routine_movl__ecx__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cdd8)
  store %struct.Memory* %call_48cdd8, %struct.Memory** %MEMORY

  ; Code: .L_48cddb:	 RIP: 48cddb	 Bytes: 0
  br label %block_.L_48cddb
block_.L_48cddb:

  ; Code: movl -0x28(%rbp), %eax	 RIP: 48cddb	 Bytes: 3
  %loadMem_48cddb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cddb = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cddb)
  store %struct.Memory* %call_48cddb, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 48cdde	 Bytes: 8
  %loadMem_48cdde = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cdde = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cdde)
  store %struct.Memory* %call_48cdde, %struct.Memory** %MEMORY

  ; Code: movl 0xa8(%rcx), %edx	 RIP: 48cde6	 Bytes: 6
  %loadMem_48cde6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cde6 = call %struct.Memory* @routine_movl_0xa8__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cde6)
  store %struct.Memory* %call_48cde6, %struct.Memory** %MEMORY

  ; Code: addl $0x10, %edx	 RIP: 48cdec	 Bytes: 3
  %loadMem_48cdec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cdec = call %struct.Memory* @routine_addl__0x10___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cdec)
  store %struct.Memory* %call_48cdec, %struct.Memory** %MEMORY

  ; Code: cmpl %edx, %eax	 RIP: 48cdef	 Bytes: 2
  %loadMem_48cdef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cdef = call %struct.Memory* @routine_cmpl__edx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cdef)
  store %struct.Memory* %call_48cdef, %struct.Memory** %MEMORY

  ; Code: jge .L_48ce7c	 RIP: 48cdf1	 Bytes: 6
  %loadMem_48cdf1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cdf1 = call %struct.Memory* @routine_jge_.L_48ce7c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cdf1, i8* %BRANCH_TAKEN, i64 139, i64 6, i64 6)
  store %struct.Memory* %call_48cdf1, %struct.Memory** %MEMORY

  %loadBr_48cdf1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48cdf1 = icmp eq i8 %loadBr_48cdf1, 1
  br i1 %cmpBr_48cdf1, label %block_.L_48ce7c, label %block_48cdf7

block_48cdf7:
  ; Code: movq 0x6cb900, %rax	 RIP: 48cdf7	 Bytes: 8
  %loadMem_48cdf7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cdf7 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cdf7)
  store %struct.Memory* %call_48cdf7, %struct.Memory** %MEMORY

  ; Code: movq 0x11860(%rax), %rax	 RIP: 48cdff	 Bytes: 7
  %loadMem_48cdff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cdff = call %struct.Memory* @routine_movq_0x11860__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cdff)
  store %struct.Memory* %call_48cdff, %struct.Memory** %MEMORY

  ; Code: movq 0x726418, %rcx	 RIP: 48ce06	 Bytes: 8
  %loadMem_48ce06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ce06 = call %struct.Memory* @routine_movq_0x726418___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ce06)
  store %struct.Memory* %call_48ce06, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %edx	 RIP: 48ce0e	 Bytes: 3
  %loadMem_48ce0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ce0e = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ce0e)
  store %struct.Memory* %call_48ce0e, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rsi	 RIP: 48ce11	 Bytes: 8
  %loadMem_48ce11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ce11 = call %struct.Memory* @routine_movq_0x6cb900___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ce11)
  store %struct.Memory* %call_48ce11, %struct.Memory** %MEMORY

  ; Code: addl 0xac(%rsi), %edx	 RIP: 48ce19	 Bytes: 6
  %loadMem_48ce19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ce19 = call %struct.Memory* @routine_addl_0xac__rsi____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ce19)
  store %struct.Memory* %call_48ce19, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rsi	 RIP: 48ce1f	 Bytes: 3
  %loadMem_48ce1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ce1f = call %struct.Memory* @routine_movslq__edx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ce1f)
  store %struct.Memory* %call_48ce1f, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rsi,8), %rcx	 RIP: 48ce22	 Bytes: 4
  %loadMem_48ce22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ce22 = call %struct.Memory* @routine_movq___rcx__rsi_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ce22)
  store %struct.Memory* %call_48ce22, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rsi	 RIP: 48ce26	 Bytes: 4
  %loadMem_48ce26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ce26 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ce26)
  store %struct.Memory* %call_48ce26, %struct.Memory** %MEMORY

  ; Code: movzwl (%rcx,%rsi,2), %edx	 RIP: 48ce2a	 Bytes: 4
  %loadMem_48ce2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ce2a = call %struct.Memory* @routine_movzwl___rcx__rsi_2____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ce2a)
  store %struct.Memory* %call_48ce2a, %struct.Memory** %MEMORY

  ; Code: movq 0x70fcf0, %rcx	 RIP: 48ce2e	 Bytes: 8
  %loadMem_48ce2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ce2e = call %struct.Memory* @routine_movq_0x70fcf0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ce2e)
  store %struct.Memory* %call_48ce2e, %struct.Memory** %MEMORY

  ; Code: movq 0x1918(%rcx), %rcx	 RIP: 48ce36	 Bytes: 7
  %loadMem_48ce36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ce36 = call %struct.Memory* @routine_movq_0x1918__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ce36)
  store %struct.Memory* %call_48ce36, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rsi	 RIP: 48ce3d	 Bytes: 8
  %loadMem_48ce3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ce3d = call %struct.Memory* @routine_movq_0x6cb900___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ce3d)
  store %struct.Memory* %call_48ce3d, %struct.Memory** %MEMORY

  ; Code: movl 0x9c(%rsi), %edi	 RIP: 48ce45	 Bytes: 6
  %loadMem_48ce45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ce45 = call %struct.Memory* @routine_movl_0x9c__rsi____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ce45)
  store %struct.Memory* %call_48ce45, %struct.Memory** %MEMORY

  ; Code: addl -0x2c(%rbp), %edi	 RIP: 48ce4b	 Bytes: 3
  %loadMem_48ce4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ce4b = call %struct.Memory* @routine_addl_MINUS0x2c__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ce4b)
  store %struct.Memory* %call_48ce4b, %struct.Memory** %MEMORY

  ; Code: movslq %edi, %rsi	 RIP: 48ce4e	 Bytes: 3
  %loadMem_48ce4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ce4e = call %struct.Memory* @routine_movslq__edi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ce4e)
  store %struct.Memory* %call_48ce4e, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rsi,8), %rcx	 RIP: 48ce51	 Bytes: 4
  %loadMem_48ce51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ce51 = call %struct.Memory* @routine_movq___rcx__rsi_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ce51)
  store %struct.Memory* %call_48ce51, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rsi	 RIP: 48ce55	 Bytes: 4
  %loadMem_48ce55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ce55 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ce55)
  store %struct.Memory* %call_48ce55, %struct.Memory** %MEMORY

  ; Code: movzwl (%rcx,%rsi,2), %edi	 RIP: 48ce59	 Bytes: 4
  %loadMem_48ce59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ce59 = call %struct.Memory* @routine_movzwl___rcx__rsi_2____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ce59)
  store %struct.Memory* %call_48ce59, %struct.Memory** %MEMORY

  ; Code: subl %edi, %edx	 RIP: 48ce5d	 Bytes: 2
  %loadMem_48ce5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ce5d = call %struct.Memory* @routine_subl__edi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ce5d)
  store %struct.Memory* %call_48ce5d, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 48ce5f	 Bytes: 3
  %loadMem_48ce5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ce5f = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ce5f)
  store %struct.Memory* %call_48ce5f, %struct.Memory** %MEMORY

  ; Code: movslq (%rax,%rcx,4), %rax	 RIP: 48ce62	 Bytes: 4
  %loadMem_48ce62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ce62 = call %struct.Memory* @routine_movslq___rax__rcx_4____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ce62)
  store %struct.Memory* %call_48ce62, %struct.Memory** %MEMORY

  ; Code: addq -0x40(%rbp), %rax	 RIP: 48ce66	 Bytes: 4
  %loadMem_48ce66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ce66 = call %struct.Memory* @routine_addq_MINUS0x40__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ce66)
  store %struct.Memory* %call_48ce66, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x40(%rbp)	 RIP: 48ce6a	 Bytes: 4
  %loadMem_48ce6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ce6a = call %struct.Memory* @routine_movq__rax__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ce6a)
  store %struct.Memory* %call_48ce6a, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %eax	 RIP: 48ce6e	 Bytes: 3
  %loadMem_48ce6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ce6e = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ce6e)
  store %struct.Memory* %call_48ce6e, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 48ce71	 Bytes: 3
  %loadMem_48ce71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ce71 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ce71)
  store %struct.Memory* %call_48ce71, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x28(%rbp)	 RIP: 48ce74	 Bytes: 3
  %loadMem_48ce74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ce74 = call %struct.Memory* @routine_movl__eax__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ce74)
  store %struct.Memory* %call_48ce74, %struct.Memory** %MEMORY

  ; Code: jmpq .L_48cddb	 RIP: 48ce77	 Bytes: 5
  %loadMem_48ce77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ce77 = call %struct.Memory* @routine_jmpq_.L_48cddb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ce77, i64 -156, i64 5)
  store %struct.Memory* %call_48ce77, %struct.Memory** %MEMORY

  br label %block_.L_48cddb

  ; Code: .L_48ce7c:	 RIP: 48ce7c	 Bytes: 0
block_.L_48ce7c:

  ; Code: jmpq .L_48ce81	 RIP: 48ce7c	 Bytes: 5
  %loadMem_48ce7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ce7c = call %struct.Memory* @routine_jmpq_.L_48ce81(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ce7c, i64 5, i64 5)
  store %struct.Memory* %call_48ce7c, %struct.Memory** %MEMORY

  br label %block_.L_48ce81

  ; Code: .L_48ce81:	 RIP: 48ce81	 Bytes: 0
block_.L_48ce81:

  ; Code: movl -0x2c(%rbp), %eax	 RIP: 48ce81	 Bytes: 3
  %loadMem_48ce81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ce81 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ce81)
  store %struct.Memory* %call_48ce81, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 48ce84	 Bytes: 3
  %loadMem_48ce84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ce84 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ce84)
  store %struct.Memory* %call_48ce84, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2c(%rbp)	 RIP: 48ce87	 Bytes: 3
  %loadMem_48ce87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ce87 = call %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ce87)
  store %struct.Memory* %call_48ce87, %struct.Memory** %MEMORY

  ; Code: jmpq .L_48cdc0	 RIP: 48ce8a	 Bytes: 5
  %loadMem_48ce8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ce8a = call %struct.Memory* @routine_jmpq_.L_48cdc0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ce8a, i64 -202, i64 5)
  store %struct.Memory* %call_48ce8a, %struct.Memory** %MEMORY

  br label %block_.L_48cdc0

  ; Code: .L_48ce8f:	 RIP: 48ce8f	 Bytes: 0
block_.L_48ce8f:

  ; Code: jmpq .L_48ce94	 RIP: 48ce8f	 Bytes: 5
  %loadMem_48ce8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ce8f = call %struct.Memory* @routine_jmpq_.L_48ce94(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ce8f, i64 5, i64 5)
  store %struct.Memory* %call_48ce8f, %struct.Memory** %MEMORY

  br label %block_.L_48ce94

  ; Code: .L_48ce94:	 RIP: 48ce94	 Bytes: 0
block_.L_48ce94:

  ; Code: movq 0x6cb900, %rax	 RIP: 48ce94	 Bytes: 8
  %loadMem_48ce94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ce94 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ce94)
  store %struct.Memory* %call_48ce94, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x11bfc(%rax)	 RIP: 48ce9c	 Bytes: 7
  %loadMem_48ce9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ce9c = call %struct.Memory* @routine_cmpl__0x0__0x11bfc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ce9c)
  store %struct.Memory* %call_48ce9c, %struct.Memory** %MEMORY

  ; Code: je .L_48d021	 RIP: 48cea3	 Bytes: 6
  %loadMem_48cea3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cea3 = call %struct.Memory* @routine_je_.L_48d021(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cea3, i8* %BRANCH_TAKEN, i64 382, i64 6, i64 6)
  store %struct.Memory* %call_48cea3, %struct.Memory** %MEMORY

  %loadBr_48cea3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48cea3 = icmp eq i8 %loadBr_48cea3, 1
  br i1 %cmpBr_48cea3, label %block_.L_48d021, label %block_48cea9

block_48cea9:
  ; Code: movl $0x0, -0x2c(%rbp)	 RIP: 48cea9	 Bytes: 7
  %loadMem_48cea9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cea9 = call %struct.Memory* @routine_movl__0x0__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cea9)
  store %struct.Memory* %call_48cea9, %struct.Memory** %MEMORY

  ; Code: .L_48ceb0:	 RIP: 48ceb0	 Bytes: 0
  br label %block_.L_48ceb0
block_.L_48ceb0:

  ; Code: movl -0x2c(%rbp), %eax	 RIP: 48ceb0	 Bytes: 3
  %loadMem_48ceb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ceb0 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ceb0)
  store %struct.Memory* %call_48ceb0, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 48ceb3	 Bytes: 8
  %loadMem_48ceb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ceb3 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ceb3)
  store %struct.Memory* %call_48ceb3, %struct.Memory** %MEMORY

  ; Code: cmpl 0x11c08(%rcx), %eax	 RIP: 48cebb	 Bytes: 6
  %loadMem_48cebb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cebb = call %struct.Memory* @routine_cmpl_0x11c08__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cebb)
  store %struct.Memory* %call_48cebb, %struct.Memory** %MEMORY

  ; Code: jge .L_48d01c	 RIP: 48cec1	 Bytes: 6
  %loadMem_48cec1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cec1 = call %struct.Memory* @routine_jge_.L_48d01c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cec1, i8* %BRANCH_TAKEN, i64 347, i64 6, i64 6)
  store %struct.Memory* %call_48cec1, %struct.Memory** %MEMORY

  %loadBr_48cec1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48cec1 = icmp eq i8 %loadBr_48cec1, 1
  br i1 %cmpBr_48cec1, label %block_.L_48d01c, label %block_48cec7

block_48cec7:
  ; Code: movq 0x6cb900, %rax	 RIP: 48cec7	 Bytes: 8
  %loadMem_48cec7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cec7 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cec7)
  store %struct.Memory* %call_48cec7, %struct.Memory** %MEMORY

  ; Code: movl 0xb0(%rax), %ecx	 RIP: 48cecf	 Bytes: 6
  %loadMem_48cecf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cecf = call %struct.Memory* @routine_movl_0xb0__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cecf)
  store %struct.Memory* %call_48cecf, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x28(%rbp)	 RIP: 48ced5	 Bytes: 3
  %loadMem_48ced5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ced5 = call %struct.Memory* @routine_movl__ecx__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ced5)
  store %struct.Memory* %call_48ced5, %struct.Memory** %MEMORY

  ; Code: .L_48ced8:	 RIP: 48ced8	 Bytes: 0
  br label %block_.L_48ced8
block_.L_48ced8:

  ; Code: movl -0x28(%rbp), %eax	 RIP: 48ced8	 Bytes: 3
  %loadMem_48ced8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ced8 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ced8)
  store %struct.Memory* %call_48ced8, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 48cedb	 Bytes: 8
  %loadMem_48cedb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cedb = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cedb)
  store %struct.Memory* %call_48cedb, %struct.Memory** %MEMORY

  ; Code: movl 0xb0(%rcx), %edx	 RIP: 48cee3	 Bytes: 6
  %loadMem_48cee3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cee3 = call %struct.Memory* @routine_movl_0xb0__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cee3)
  store %struct.Memory* %call_48cee3, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 48cee9	 Bytes: 8
  %loadMem_48cee9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cee9 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cee9)
  store %struct.Memory* %call_48cee9, %struct.Memory** %MEMORY

  ; Code: addl 0x11c04(%rcx), %edx	 RIP: 48cef1	 Bytes: 6
  %loadMem_48cef1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cef1 = call %struct.Memory* @routine_addl_0x11c04__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cef1)
  store %struct.Memory* %call_48cef1, %struct.Memory** %MEMORY

  ; Code: cmpl %edx, %eax	 RIP: 48cef7	 Bytes: 2
  %loadMem_48cef7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cef7 = call %struct.Memory* @routine_cmpl__edx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cef7)
  store %struct.Memory* %call_48cef7, %struct.Memory** %MEMORY

  ; Code: jge .L_48d009	 RIP: 48cef9	 Bytes: 6
  %loadMem_48cef9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cef9 = call %struct.Memory* @routine_jge_.L_48d009(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cef9, i8* %BRANCH_TAKEN, i64 272, i64 6, i64 6)
  store %struct.Memory* %call_48cef9, %struct.Memory** %MEMORY

  %loadBr_48cef9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48cef9 = icmp eq i8 %loadBr_48cef9, 1
  br i1 %cmpBr_48cef9, label %block_.L_48d009, label %block_48ceff

block_48ceff:
  ; Code: movq 0x6cb900, %rax	 RIP: 48ceff	 Bytes: 8
  %loadMem_48ceff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48ceff = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48ceff)
  store %struct.Memory* %call_48ceff, %struct.Memory** %MEMORY

  ; Code: movq 0x11860(%rax), %rax	 RIP: 48cf07	 Bytes: 7
  %loadMem_48cf07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cf07 = call %struct.Memory* @routine_movq_0x11860__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cf07)
  store %struct.Memory* %call_48cf07, %struct.Memory** %MEMORY

  ; Code: movq 0x6f6f90, %rcx	 RIP: 48cf0e	 Bytes: 8
  %loadMem_48cf0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cf0e = call %struct.Memory* @routine_movq_0x6f6f90___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cf0e)
  store %struct.Memory* %call_48cf0e, %struct.Memory** %MEMORY

  ; Code: movq (%rcx), %rcx	 RIP: 48cf16	 Bytes: 3
  %loadMem_48cf16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cf16 = call %struct.Memory* @routine_movq___rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cf16)
  store %struct.Memory* %call_48cf16, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %edx	 RIP: 48cf19	 Bytes: 3
  %loadMem_48cf19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cf19 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cf19)
  store %struct.Memory* %call_48cf19, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rsi	 RIP: 48cf1c	 Bytes: 8
  %loadMem_48cf1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cf1c = call %struct.Memory* @routine_movq_0x6cb900___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cf1c)
  store %struct.Memory* %call_48cf1c, %struct.Memory** %MEMORY

  ; Code: addl 0xb4(%rsi), %edx	 RIP: 48cf24	 Bytes: 6
  %loadMem_48cf24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cf24 = call %struct.Memory* @routine_addl_0xb4__rsi____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cf24)
  store %struct.Memory* %call_48cf24, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rsi	 RIP: 48cf2a	 Bytes: 3
  %loadMem_48cf2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cf2a = call %struct.Memory* @routine_movslq__edx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cf2a)
  store %struct.Memory* %call_48cf2a, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rsi,8), %rcx	 RIP: 48cf2d	 Bytes: 4
  %loadMem_48cf2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cf2d = call %struct.Memory* @routine_movq___rcx__rsi_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cf2d)
  store %struct.Memory* %call_48cf2d, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rsi	 RIP: 48cf31	 Bytes: 4
  %loadMem_48cf31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cf31 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cf31)
  store %struct.Memory* %call_48cf31, %struct.Memory** %MEMORY

  ; Code: movzwl (%rcx,%rsi,2), %edx	 RIP: 48cf35	 Bytes: 4
  %loadMem_48cf35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cf35 = call %struct.Memory* @routine_movzwl___rcx__rsi_2____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cf35)
  store %struct.Memory* %call_48cf35, %struct.Memory** %MEMORY

  ; Code: movq 0x70fcf0, %rcx	 RIP: 48cf39	 Bytes: 8
  %loadMem_48cf39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cf39 = call %struct.Memory* @routine_movq_0x70fcf0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cf39)
  store %struct.Memory* %call_48cf39, %struct.Memory** %MEMORY

  ; Code: movq 0x1940(%rcx), %rcx	 RIP: 48cf41	 Bytes: 7
  %loadMem_48cf41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cf41 = call %struct.Memory* @routine_movq_0x1940__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cf41)
  store %struct.Memory* %call_48cf41, %struct.Memory** %MEMORY

  ; Code: movq (%rcx), %rcx	 RIP: 48cf48	 Bytes: 3
  %loadMem_48cf48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cf48 = call %struct.Memory* @routine_movq___rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cf48)
  store %struct.Memory* %call_48cf48, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rsi	 RIP: 48cf4b	 Bytes: 8
  %loadMem_48cf4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cf4b = call %struct.Memory* @routine_movq_0x6cb900___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cf4b)
  store %struct.Memory* %call_48cf4b, %struct.Memory** %MEMORY

  ; Code: movl 0xa4(%rsi), %edi	 RIP: 48cf53	 Bytes: 6
  %loadMem_48cf53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cf53 = call %struct.Memory* @routine_movl_0xa4__rsi____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cf53)
  store %struct.Memory* %call_48cf53, %struct.Memory** %MEMORY

  ; Code: addl -0x2c(%rbp), %edi	 RIP: 48cf59	 Bytes: 3
  %loadMem_48cf59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cf59 = call %struct.Memory* @routine_addl_MINUS0x2c__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cf59)
  store %struct.Memory* %call_48cf59, %struct.Memory** %MEMORY

  ; Code: movslq %edi, %rsi	 RIP: 48cf5c	 Bytes: 3
  %loadMem_48cf5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cf5c = call %struct.Memory* @routine_movslq__edi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cf5c)
  store %struct.Memory* %call_48cf5c, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rsi,8), %rcx	 RIP: 48cf5f	 Bytes: 4
  %loadMem_48cf5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cf5f = call %struct.Memory* @routine_movq___rcx__rsi_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cf5f)
  store %struct.Memory* %call_48cf5f, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rsi	 RIP: 48cf63	 Bytes: 4
  %loadMem_48cf63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cf63 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cf63)
  store %struct.Memory* %call_48cf63, %struct.Memory** %MEMORY

  ; Code: movzwl (%rcx,%rsi,2), %edi	 RIP: 48cf67	 Bytes: 4
  %loadMem_48cf67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cf67 = call %struct.Memory* @routine_movzwl___rcx__rsi_2____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cf67)
  store %struct.Memory* %call_48cf67, %struct.Memory** %MEMORY

  ; Code: subl %edi, %edx	 RIP: 48cf6b	 Bytes: 2
  %loadMem_48cf6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cf6b = call %struct.Memory* @routine_subl__edi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cf6b)
  store %struct.Memory* %call_48cf6b, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 48cf6d	 Bytes: 3
  %loadMem_48cf6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cf6d = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cf6d)
  store %struct.Memory* %call_48cf6d, %struct.Memory** %MEMORY

  ; Code: movslq (%rax,%rcx,4), %rax	 RIP: 48cf70	 Bytes: 4
  %loadMem_48cf70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cf70 = call %struct.Memory* @routine_movslq___rax__rcx_4____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cf70)
  store %struct.Memory* %call_48cf70, %struct.Memory** %MEMORY

  ; Code: addq -0x40(%rbp), %rax	 RIP: 48cf74	 Bytes: 4
  %loadMem_48cf74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cf74 = call %struct.Memory* @routine_addq_MINUS0x40__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cf74)
  store %struct.Memory* %call_48cf74, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x40(%rbp)	 RIP: 48cf78	 Bytes: 4
  %loadMem_48cf78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cf78 = call %struct.Memory* @routine_movq__rax__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cf78)
  store %struct.Memory* %call_48cf78, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 48cf7c	 Bytes: 8
  %loadMem_48cf7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cf7c = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cf7c)
  store %struct.Memory* %call_48cf7c, %struct.Memory** %MEMORY

  ; Code: movq 0x11860(%rax), %rax	 RIP: 48cf84	 Bytes: 7
  %loadMem_48cf84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cf84 = call %struct.Memory* @routine_movq_0x11860__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cf84)
  store %struct.Memory* %call_48cf84, %struct.Memory** %MEMORY

  ; Code: movq 0x6f6f90, %rcx	 RIP: 48cf8b	 Bytes: 8
  %loadMem_48cf8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cf8b = call %struct.Memory* @routine_movq_0x6f6f90___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cf8b)
  store %struct.Memory* %call_48cf8b, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rcx), %rcx	 RIP: 48cf93	 Bytes: 4
  %loadMem_48cf93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cf93 = call %struct.Memory* @routine_movq_0x8__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cf93)
  store %struct.Memory* %call_48cf93, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %edx	 RIP: 48cf97	 Bytes: 3
  %loadMem_48cf97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cf97 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cf97)
  store %struct.Memory* %call_48cf97, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rsi	 RIP: 48cf9a	 Bytes: 8
  %loadMem_48cf9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cf9a = call %struct.Memory* @routine_movq_0x6cb900___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cf9a)
  store %struct.Memory* %call_48cf9a, %struct.Memory** %MEMORY

  ; Code: addl 0xb4(%rsi), %edx	 RIP: 48cfa2	 Bytes: 6
  %loadMem_48cfa2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cfa2 = call %struct.Memory* @routine_addl_0xb4__rsi____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cfa2)
  store %struct.Memory* %call_48cfa2, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rsi	 RIP: 48cfa8	 Bytes: 3
  %loadMem_48cfa8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cfa8 = call %struct.Memory* @routine_movslq__edx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cfa8)
  store %struct.Memory* %call_48cfa8, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rsi,8), %rcx	 RIP: 48cfab	 Bytes: 4
  %loadMem_48cfab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cfab = call %struct.Memory* @routine_movq___rcx__rsi_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cfab)
  store %struct.Memory* %call_48cfab, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rsi	 RIP: 48cfaf	 Bytes: 4
  %loadMem_48cfaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cfaf = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cfaf)
  store %struct.Memory* %call_48cfaf, %struct.Memory** %MEMORY

  ; Code: movzwl (%rcx,%rsi,2), %edx	 RIP: 48cfb3	 Bytes: 4
  %loadMem_48cfb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cfb3 = call %struct.Memory* @routine_movzwl___rcx__rsi_2____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cfb3)
  store %struct.Memory* %call_48cfb3, %struct.Memory** %MEMORY

  ; Code: movq 0x70fcf0, %rcx	 RIP: 48cfb7	 Bytes: 8
  %loadMem_48cfb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cfb7 = call %struct.Memory* @routine_movq_0x70fcf0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cfb7)
  store %struct.Memory* %call_48cfb7, %struct.Memory** %MEMORY

  ; Code: movq 0x1940(%rcx), %rcx	 RIP: 48cfbf	 Bytes: 7
  %loadMem_48cfbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cfbf = call %struct.Memory* @routine_movq_0x1940__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cfbf)
  store %struct.Memory* %call_48cfbf, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rcx), %rcx	 RIP: 48cfc6	 Bytes: 4
  %loadMem_48cfc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cfc6 = call %struct.Memory* @routine_movq_0x8__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cfc6)
  store %struct.Memory* %call_48cfc6, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rsi	 RIP: 48cfca	 Bytes: 8
  %loadMem_48cfca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cfca = call %struct.Memory* @routine_movq_0x6cb900___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cfca)
  store %struct.Memory* %call_48cfca, %struct.Memory** %MEMORY

  ; Code: movl 0xa4(%rsi), %edi	 RIP: 48cfd2	 Bytes: 6
  %loadMem_48cfd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cfd2 = call %struct.Memory* @routine_movl_0xa4__rsi____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cfd2)
  store %struct.Memory* %call_48cfd2, %struct.Memory** %MEMORY

  ; Code: addl -0x2c(%rbp), %edi	 RIP: 48cfd8	 Bytes: 3
  %loadMem_48cfd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cfd8 = call %struct.Memory* @routine_addl_MINUS0x2c__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cfd8)
  store %struct.Memory* %call_48cfd8, %struct.Memory** %MEMORY

  ; Code: movslq %edi, %rsi	 RIP: 48cfdb	 Bytes: 3
  %loadMem_48cfdb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cfdb = call %struct.Memory* @routine_movslq__edi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cfdb)
  store %struct.Memory* %call_48cfdb, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rsi,8), %rcx	 RIP: 48cfde	 Bytes: 4
  %loadMem_48cfde = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cfde = call %struct.Memory* @routine_movq___rcx__rsi_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cfde)
  store %struct.Memory* %call_48cfde, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rsi	 RIP: 48cfe2	 Bytes: 4
  %loadMem_48cfe2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cfe2 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cfe2)
  store %struct.Memory* %call_48cfe2, %struct.Memory** %MEMORY

  ; Code: movzwl (%rcx,%rsi,2), %edi	 RIP: 48cfe6	 Bytes: 4
  %loadMem_48cfe6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cfe6 = call %struct.Memory* @routine_movzwl___rcx__rsi_2____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cfe6)
  store %struct.Memory* %call_48cfe6, %struct.Memory** %MEMORY

  ; Code: subl %edi, %edx	 RIP: 48cfea	 Bytes: 2
  %loadMem_48cfea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cfea = call %struct.Memory* @routine_subl__edi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cfea)
  store %struct.Memory* %call_48cfea, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 48cfec	 Bytes: 3
  %loadMem_48cfec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cfec = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cfec)
  store %struct.Memory* %call_48cfec, %struct.Memory** %MEMORY

  ; Code: movslq (%rax,%rcx,4), %rax	 RIP: 48cfef	 Bytes: 4
  %loadMem_48cfef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cfef = call %struct.Memory* @routine_movslq___rax__rcx_4____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cfef)
  store %struct.Memory* %call_48cfef, %struct.Memory** %MEMORY

  ; Code: addq -0x40(%rbp), %rax	 RIP: 48cff3	 Bytes: 4
  %loadMem_48cff3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cff3 = call %struct.Memory* @routine_addq_MINUS0x40__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cff3)
  store %struct.Memory* %call_48cff3, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x40(%rbp)	 RIP: 48cff7	 Bytes: 4
  %loadMem_48cff7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cff7 = call %struct.Memory* @routine_movq__rax__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cff7)
  store %struct.Memory* %call_48cff7, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %eax	 RIP: 48cffb	 Bytes: 3
  %loadMem_48cffb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cffb = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cffb)
  store %struct.Memory* %call_48cffb, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 48cffe	 Bytes: 3
  %loadMem_48cffe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48cffe = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48cffe)
  store %struct.Memory* %call_48cffe, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x28(%rbp)	 RIP: 48d001	 Bytes: 3
  %loadMem_48d001 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d001 = call %struct.Memory* @routine_movl__eax__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d001)
  store %struct.Memory* %call_48d001, %struct.Memory** %MEMORY

  ; Code: jmpq .L_48ced8	 RIP: 48d004	 Bytes: 5
  %loadMem_48d004 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d004 = call %struct.Memory* @routine_jmpq_.L_48ced8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d004, i64 -300, i64 5)
  store %struct.Memory* %call_48d004, %struct.Memory** %MEMORY

  br label %block_.L_48ced8

  ; Code: .L_48d009:	 RIP: 48d009	 Bytes: 0
block_.L_48d009:

  ; Code: jmpq .L_48d00e	 RIP: 48d009	 Bytes: 5
  %loadMem_48d009 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d009 = call %struct.Memory* @routine_jmpq_.L_48d00e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d009, i64 5, i64 5)
  store %struct.Memory* %call_48d009, %struct.Memory** %MEMORY

  br label %block_.L_48d00e

  ; Code: .L_48d00e:	 RIP: 48d00e	 Bytes: 0
block_.L_48d00e:

  ; Code: movl -0x2c(%rbp), %eax	 RIP: 48d00e	 Bytes: 3
  %loadMem_48d00e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d00e = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d00e)
  store %struct.Memory* %call_48d00e, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 48d011	 Bytes: 3
  %loadMem_48d011 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d011 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d011)
  store %struct.Memory* %call_48d011, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2c(%rbp)	 RIP: 48d014	 Bytes: 3
  %loadMem_48d014 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d014 = call %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d014)
  store %struct.Memory* %call_48d014, %struct.Memory** %MEMORY

  ; Code: jmpq .L_48ceb0	 RIP: 48d017	 Bytes: 5
  %loadMem_48d017 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d017 = call %struct.Memory* @routine_jmpq_.L_48ceb0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d017, i64 -359, i64 5)
  store %struct.Memory* %call_48d017, %struct.Memory** %MEMORY

  br label %block_.L_48ceb0

  ; Code: .L_48d01c:	 RIP: 48d01c	 Bytes: 0
block_.L_48d01c:

  ; Code: jmpq .L_48d021	 RIP: 48d01c	 Bytes: 5
  %loadMem_48d01c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d01c = call %struct.Memory* @routine_jmpq_.L_48d021(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d01c, i64 5, i64 5)
  store %struct.Memory* %call_48d01c, %struct.Memory** %MEMORY

  br label %block_.L_48d021

  ; Code: .L_48d021:	 RIP: 48d021	 Bytes: 0
block_.L_48d021:

  ; Code: movq 0x6cc628, %rdi	 RIP: 48d021	 Bytes: 8
  %loadMem_48d021 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d021 = call %struct.Memory* @routine_movq_0x6cc628___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d021)
  store %struct.Memory* %call_48d021, %struct.Memory** %MEMORY

  ; Code: callq .store_coding_state	 RIP: 48d029	 Bytes: 5
  %loadMem1_48d029 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_48d029 = call %struct.Memory* @routine_callq_.store_coding_state(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_48d029, i64 67735, i64 5, i64 5)
  store %struct.Memory* %call1_48d029, %struct.Memory** %MEMORY

  %loadMem2_48d029 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_48d029 = load i64, i64* %3
  %call2_48d029 = call %struct.Memory* @sub_49d8c0.store_coding_state(%struct.State* %0, i64  %loadPC_48d029, %struct.Memory* %loadMem2_48d029)
  store %struct.Memory* %call2_48d029, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0x64(%rbp)	 RIP: 48d02e	 Bytes: 4
  %loadMem_48d02e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d02e = call %struct.Memory* @routine_cmpl__0x0__MINUS0x64__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d02e)
  store %struct.Memory* %call_48d02e, %struct.Memory** %MEMORY

  ; Code: je .L_48d104	 RIP: 48d032	 Bytes: 6
  %loadMem_48d032 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d032 = call %struct.Memory* @routine_je_.L_48d104(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d032, i8* %BRANCH_TAKEN, i64 210, i64 6, i64 6)
  store %struct.Memory* %call_48d032, %struct.Memory** %MEMORY

  %loadBr_48d032 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48d032 = icmp eq i8 %loadBr_48d032, 1
  br i1 %cmpBr_48d032, label %block_.L_48d104, label %block_48d038

block_48d038:
  ; Code: movq -0x50(%rbp), %rax	 RIP: 48d038	 Bytes: 4
  %loadMem_48d038 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d038 = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d038)
  store %struct.Memory* %call_48d038, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x48(%rax)	 RIP: 48d03c	 Bytes: 4
  %loadMem_48d03c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d03c = call %struct.Memory* @routine_cmpl__0x0__0x48__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d03c)
  store %struct.Memory* %call_48d03c, %struct.Memory** %MEMORY

  ; Code: jne .L_48d061	 RIP: 48d040	 Bytes: 6
  %loadMem_48d040 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d040 = call %struct.Memory* @routine_jne_.L_48d061(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d040, i8* %BRANCH_TAKEN, i64 33, i64 6, i64 6)
  store %struct.Memory* %call_48d040, %struct.Memory** %MEMORY

  %loadBr_48d040 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48d040 = icmp eq i8 %loadBr_48d040, 1
  br i1 %cmpBr_48d040, label %block_.L_48d061, label %block_48d046

block_48d046:
  ; Code: cmpl $0x0, -0x5c(%rbp)	 RIP: 48d046	 Bytes: 4
  %loadMem_48d046 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d046 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x5c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d046)
  store %struct.Memory* %call_48d046, %struct.Memory** %MEMORY

  ; Code: je .L_48d0ad	 RIP: 48d04a	 Bytes: 6
  %loadMem_48d04a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d04a = call %struct.Memory* @routine_je_.L_48d0ad(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d04a, i8* %BRANCH_TAKEN, i64 99, i64 6, i64 6)
  store %struct.Memory* %call_48d04a, %struct.Memory** %MEMORY

  %loadBr_48d04a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48d04a = icmp eq i8 %loadBr_48d04a, 1
  br i1 %cmpBr_48d04a, label %block_.L_48d0ad, label %block_48d050

block_48d050:
  ; Code: movq -0x50(%rbp), %rax	 RIP: 48d050	 Bytes: 4
  %loadMem_48d050 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d050 = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d050)
  store %struct.Memory* %call_48d050, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x1cc(%rax)	 RIP: 48d054	 Bytes: 7
  %loadMem_48d054 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d054 = call %struct.Memory* @routine_cmpl__0x0__0x1cc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d054)
  store %struct.Memory* %call_48d054, %struct.Memory** %MEMORY

  ; Code: je .L_48d0ad	 RIP: 48d05b	 Bytes: 6
  %loadMem_48d05b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d05b = call %struct.Memory* @routine_je_.L_48d0ad(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d05b, i8* %BRANCH_TAKEN, i64 82, i64 6, i64 6)
  store %struct.Memory* %call_48d05b, %struct.Memory** %MEMORY

  %loadBr_48d05b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48d05b = icmp eq i8 %loadBr_48d05b, 1
  br i1 %cmpBr_48d05b, label %block_.L_48d0ad, label %block_.L_48d061

  ; Code: .L_48d061:	 RIP: 48d061	 Bytes: 0
block_.L_48d061:

  ; Code: movl $0x1, %edi	 RIP: 48d061	 Bytes: 5
  %loadMem_48d061 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d061 = call %struct.Memory* @routine_movl__0x1___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d061)
  store %struct.Memory* %call_48d061, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 48d066	 Bytes: 8
  %loadMem_48d066 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d066 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d066)
  store %struct.Memory* %call_48d066, %struct.Memory** %MEMORY

  ; Code: movl 0x78(%rax), %ecx	 RIP: 48d06e	 Bytes: 3
  %loadMem_48d06e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d06e = call %struct.Memory* @routine_movl_0x78__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d06e)
  store %struct.Memory* %call_48d06e, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x60(%rbp)	 RIP: 48d071	 Bytes: 3
  %loadMem_48d071 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d071 = call %struct.Memory* @routine_movl__ecx__MINUS0x60__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d071)
  store %struct.Memory* %call_48d071, %struct.Memory** %MEMORY

  ; Code: callq .writeMBLayer	 RIP: 48d074	 Bytes: 5
  %loadMem1_48d074 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_48d074 = call %struct.Memory* @routine_callq_.writeMBLayer(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_48d074, i64 -299284, i64 5, i64 5)
  store %struct.Memory* %call1_48d074, %struct.Memory** %MEMORY

  %loadMem2_48d074 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_48d074 = load i64, i64* %3
  %call2_48d074 = call %struct.Memory* @sub_443f60.writeMBLayer(%struct.State* %0, i64  %loadPC_48d074, %struct.Memory* %loadMem2_48d074)
  store %struct.Memory* %call2_48d074, %struct.Memory** %MEMORY

  ; Code: leaq -0x68(%rbp), %rdx	 RIP: 48d079	 Bytes: 4
  %loadMem_48d079 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d079 = call %struct.Memory* @routine_leaq_MINUS0x68__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d079)
  store %struct.Memory* %call_48d079, %struct.Memory** %MEMORY

  ; Code: leaq -0x6c(%rbp), %rcx	 RIP: 48d07d	 Bytes: 4
  %loadMem_48d07d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d07d = call %struct.Memory* @routine_leaq_MINUS0x6c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d07d)
  store %struct.Memory* %call_48d07d, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x34(%rbp)	 RIP: 48d081	 Bytes: 3
  %loadMem_48d081 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d081 = call %struct.Memory* @routine_movl__eax__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d081)
  store %struct.Memory* %call_48d081, %struct.Memory** %MEMORY

  ; Code: movl -0x60(%rbp), %edi	 RIP: 48d084	 Bytes: 3
  %loadMem_48d084 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d084 = call %struct.Memory* @routine_movl_MINUS0x60__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d084)
  store %struct.Memory* %call_48d084, %struct.Memory** %MEMORY

  ; Code: movl -0x6c(%rbp), %esi	 RIP: 48d087	 Bytes: 3
  %loadMem_48d087 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d087 = call %struct.Memory* @routine_movl_MINUS0x6c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d087)
  store %struct.Memory* %call_48d087, %struct.Memory** %MEMORY

  ; Code: callq .ue_linfo	 RIP: 48d08a	 Bytes: 5
  %loadMem1_48d08a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_48d08a = call %struct.Memory* @routine_callq_.ue_linfo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_48d08a, i64 128630, i64 5, i64 5)
  store %struct.Memory* %call1_48d08a, %struct.Memory** %MEMORY

  %loadMem2_48d08a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_48d08a = load i64, i64* %3
  %call2_48d08a = call %struct.Memory* @sub_4ac700.ue_linfo(%struct.State* %0, i64  %loadPC_48d08a, %struct.Memory* %loadMem2_48d08a)
  store %struct.Memory* %call2_48d08a, %struct.Memory** %MEMORY

  ; Code: movl -0x68(%rbp), %eax	 RIP: 48d08f	 Bytes: 3
  %loadMem_48d08f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d08f = call %struct.Memory* @routine_movl_MINUS0x68__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d08f)
  store %struct.Memory* %call_48d08f, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %esi	 RIP: 48d092	 Bytes: 3
  %loadMem_48d092 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d092 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d092)
  store %struct.Memory* %call_48d092, %struct.Memory** %MEMORY

  ; Code: subl %eax, %esi	 RIP: 48d095	 Bytes: 2
  %loadMem_48d095 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d095 = call %struct.Memory* @routine_subl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d095)
  store %struct.Memory* %call_48d095, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x34(%rbp)	 RIP: 48d097	 Bytes: 3
  %loadMem_48d097 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d097 = call %struct.Memory* @routine_movl__esi__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d097)
  store %struct.Memory* %call_48d097, %struct.Memory** %MEMORY

  ; Code: movl -0x60(%rbp), %eax	 RIP: 48d09a	 Bytes: 3
  %loadMem_48d09a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d09a = call %struct.Memory* @routine_movl_MINUS0x60__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d09a)
  store %struct.Memory* %call_48d09a, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 48d09d	 Bytes: 8
  %loadMem_48d09d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d09d = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d09d)
  store %struct.Memory* %call_48d09d, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x78(%rcx)	 RIP: 48d0a5	 Bytes: 3
  %loadMem_48d0a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d0a5 = call %struct.Memory* @routine_movl__eax__0x78__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d0a5)
  store %struct.Memory* %call_48d0a5, %struct.Memory** %MEMORY

  ; Code: jmpq .L_48d0ff	 RIP: 48d0a8	 Bytes: 5
  %loadMem_48d0a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d0a8 = call %struct.Memory* @routine_jmpq_.L_48d0ff(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d0a8, i64 87, i64 5)
  store %struct.Memory* %call_48d0a8, %struct.Memory** %MEMORY

  br label %block_.L_48d0ff

  ; Code: .L_48d0ad:	 RIP: 48d0ad	 Bytes: 0
block_.L_48d0ad:

  ; Code: leaq -0x34(%rbp), %rdx	 RIP: 48d0ad	 Bytes: 4
  %loadMem_48d0ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d0ad = call %struct.Memory* @routine_leaq_MINUS0x34__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d0ad)
  store %struct.Memory* %call_48d0ad, %struct.Memory** %MEMORY

  ; Code: leaq -0x6c(%rbp), %rcx	 RIP: 48d0b1	 Bytes: 4
  %loadMem_48d0b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d0b1 = call %struct.Memory* @routine_leaq_MINUS0x6c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d0b1)
  store %struct.Memory* %call_48d0b1, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 48d0b5	 Bytes: 8
  %loadMem_48d0b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d0b5 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d0b5)
  store %struct.Memory* %call_48d0b5, %struct.Memory** %MEMORY

  ; Code: movl 0x78(%rax), %esi	 RIP: 48d0bd	 Bytes: 3
  %loadMem_48d0bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d0bd = call %struct.Memory* @routine_movl_0x78__rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d0bd)
  store %struct.Memory* %call_48d0bd, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %esi	 RIP: 48d0c0	 Bytes: 3
  %loadMem_48d0c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d0c0 = call %struct.Memory* @routine_addl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d0c0)
  store %struct.Memory* %call_48d0c0, %struct.Memory** %MEMORY

  ; Code: movl -0x6c(%rbp), %edi	 RIP: 48d0c3	 Bytes: 3
  %loadMem_48d0c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d0c3 = call %struct.Memory* @routine_movl_MINUS0x6c__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d0c3)
  store %struct.Memory* %call_48d0c3, %struct.Memory** %MEMORY

  ; Code: movl %edi, -0x9c(%rbp)	 RIP: 48d0c6	 Bytes: 6
  %loadMem_48d0c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d0c6 = call %struct.Memory* @routine_movl__edi__MINUS0x9c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d0c6)
  store %struct.Memory* %call_48d0c6, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edi	 RIP: 48d0cc	 Bytes: 2
  %loadMem_48d0cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d0cc = call %struct.Memory* @routine_movl__esi___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d0cc)
  store %struct.Memory* %call_48d0cc, %struct.Memory** %MEMORY

  ; Code: movl -0x9c(%rbp), %esi	 RIP: 48d0ce	 Bytes: 6
  %loadMem_48d0ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d0ce = call %struct.Memory* @routine_movl_MINUS0x9c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d0ce)
  store %struct.Memory* %call_48d0ce, %struct.Memory** %MEMORY

  ; Code: callq .ue_linfo	 RIP: 48d0d4	 Bytes: 5
  %loadMem1_48d0d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_48d0d4 = call %struct.Memory* @routine_callq_.ue_linfo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_48d0d4, i64 128556, i64 5, i64 5)
  store %struct.Memory* %call1_48d0d4, %struct.Memory** %MEMORY

  %loadMem2_48d0d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_48d0d4 = load i64, i64* %3
  %call2_48d0d4 = call %struct.Memory* @sub_4ac700.ue_linfo(%struct.State* %0, i64  %loadPC_48d0d4, %struct.Memory* %loadMem2_48d0d4)
  store %struct.Memory* %call2_48d0d4, %struct.Memory** %MEMORY

  ; Code: leaq -0x68(%rbp), %rdx	 RIP: 48d0d9	 Bytes: 4
  %loadMem_48d0d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d0d9 = call %struct.Memory* @routine_leaq_MINUS0x68__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d0d9)
  store %struct.Memory* %call_48d0d9, %struct.Memory** %MEMORY

  ; Code: leaq -0x6c(%rbp), %rcx	 RIP: 48d0dd	 Bytes: 4
  %loadMem_48d0dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d0dd = call %struct.Memory* @routine_leaq_MINUS0x6c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d0dd)
  store %struct.Memory* %call_48d0dd, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 48d0e1	 Bytes: 8
  %loadMem_48d0e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d0e1 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d0e1)
  store %struct.Memory* %call_48d0e1, %struct.Memory** %MEMORY

  ; Code: movl 0x78(%rax), %edi	 RIP: 48d0e9	 Bytes: 3
  %loadMem_48d0e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d0e9 = call %struct.Memory* @routine_movl_0x78__rax____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d0e9)
  store %struct.Memory* %call_48d0e9, %struct.Memory** %MEMORY

  ; Code: movl -0x6c(%rbp), %esi	 RIP: 48d0ec	 Bytes: 3
  %loadMem_48d0ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d0ec = call %struct.Memory* @routine_movl_MINUS0x6c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d0ec)
  store %struct.Memory* %call_48d0ec, %struct.Memory** %MEMORY

  ; Code: callq .ue_linfo	 RIP: 48d0ef	 Bytes: 5
  %loadMem1_48d0ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_48d0ef = call %struct.Memory* @routine_callq_.ue_linfo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_48d0ef, i64 128529, i64 5, i64 5)
  store %struct.Memory* %call1_48d0ef, %struct.Memory** %MEMORY

  %loadMem2_48d0ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_48d0ef = load i64, i64* %3
  %call2_48d0ef = call %struct.Memory* @sub_4ac700.ue_linfo(%struct.State* %0, i64  %loadPC_48d0ef, %struct.Memory* %loadMem2_48d0ef)
  store %struct.Memory* %call2_48d0ef, %struct.Memory** %MEMORY

  ; Code: movl -0x68(%rbp), %esi	 RIP: 48d0f4	 Bytes: 3
  %loadMem_48d0f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d0f4 = call %struct.Memory* @routine_movl_MINUS0x68__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d0f4)
  store %struct.Memory* %call_48d0f4, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %edi	 RIP: 48d0f7	 Bytes: 3
  %loadMem_48d0f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d0f7 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d0f7)
  store %struct.Memory* %call_48d0f7, %struct.Memory** %MEMORY

  ; Code: subl %esi, %edi	 RIP: 48d0fa	 Bytes: 2
  %loadMem_48d0fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d0fa = call %struct.Memory* @routine_subl__esi___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d0fa)
  store %struct.Memory* %call_48d0fa, %struct.Memory** %MEMORY

  ; Code: movl %edi, -0x34(%rbp)	 RIP: 48d0fc	 Bytes: 3
  %loadMem_48d0fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d0fc = call %struct.Memory* @routine_movl__edi__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d0fc)
  store %struct.Memory* %call_48d0fc, %struct.Memory** %MEMORY

  ; Code: .L_48d0ff:	 RIP: 48d0ff	 Bytes: 0
  br label %block_.L_48d0ff
block_.L_48d0ff:

  ; Code: jmpq .L_48d111	 RIP: 48d0ff	 Bytes: 5
  %loadMem_48d0ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d0ff = call %struct.Memory* @routine_jmpq_.L_48d111(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d0ff, i64 18, i64 5)
  store %struct.Memory* %call_48d0ff, %struct.Memory** %MEMORY

  br label %block_.L_48d111

  ; Code: .L_48d104:	 RIP: 48d104	 Bytes: 0
block_.L_48d104:

  ; Code: movl $0x1, %edi	 RIP: 48d104	 Bytes: 5
  %loadMem_48d104 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d104 = call %struct.Memory* @routine_movl__0x1___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d104)
  store %struct.Memory* %call_48d104, %struct.Memory** %MEMORY

  ; Code: callq .writeMBLayer	 RIP: 48d109	 Bytes: 5
  %loadMem1_48d109 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_48d109 = call %struct.Memory* @routine_callq_.writeMBLayer(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_48d109, i64 -299433, i64 5, i64 5)
  store %struct.Memory* %call1_48d109, %struct.Memory** %MEMORY

  %loadMem2_48d109 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_48d109 = load i64, i64* %3
  %call2_48d109 = call %struct.Memory* @sub_443f60.writeMBLayer(%struct.State* %0, i64  %loadPC_48d109, %struct.Memory* %loadMem2_48d109)
  store %struct.Memory* %call2_48d109, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x34(%rbp)	 RIP: 48d10e	 Bytes: 3
  %loadMem_48d10e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d10e = call %struct.Memory* @routine_movl__eax__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d10e)
  store %struct.Memory* %call_48d10e, %struct.Memory** %MEMORY

  ; Code: .L_48d111:	 RIP: 48d111	 Bytes: 0
  br label %block_.L_48d111
block_.L_48d111:

  ; Code: movq 0x6cc628, %rdi	 RIP: 48d111	 Bytes: 8
  %loadMem_48d111 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d111 = call %struct.Memory* @routine_movq_0x6cc628___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d111)
  store %struct.Memory* %call_48d111, %struct.Memory** %MEMORY

  ; Code: callq .reset_coding_state	 RIP: 48d119	 Bytes: 5
  %loadMem1_48d119 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_48d119 = call %struct.Memory* @routine_callq_.reset_coding_state(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_48d119, i64 68327, i64 5, i64 5)
  store %struct.Memory* %call1_48d119, %struct.Memory** %MEMORY

  %loadMem2_48d119 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_48d119 = load i64, i64* %3
  %call2_48d119 = call %struct.Memory* @sub_49dc00.reset_coding_state(%struct.State* %0, i64  %loadPC_48d119, %struct.Memory* %loadMem2_48d119)
  store %struct.Memory* %call2_48d119, %struct.Memory** %MEMORY

  ; Code: movsd 0x24762(%rip), %xmm0	 RIP: 48d11e	 Bytes: 8
  %loadMem_48d11e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d11e = call %struct.Memory* @routine_movsd_0x24762__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d11e)
  store %struct.Memory* %call_48d11e, %struct.Memory** %MEMORY

  ; Code: cvtsi2sdq -0x40(%rbp), %xmm1	 RIP: 48d126	 Bytes: 6
  %loadMem_48d126 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d126 = call %struct.Memory* @routine_cvtsi2sdq_MINUS0x40__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d126)
  store %struct.Memory* %call_48d126, %struct.Memory** %MEMORY

  ; Code: movsd -0x10(%rbp), %xmm2	 RIP: 48d12c	 Bytes: 5
  %loadMem_48d12c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d12c = call %struct.Memory* @routine_movsd_MINUS0x10__rbp____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d12c)
  store %struct.Memory* %call_48d12c, %struct.Memory** %MEMORY

  ; Code: cvtsi2sdl -0x34(%rbp), %xmm3	 RIP: 48d131	 Bytes: 5
  %loadMem_48d131 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d131 = call %struct.Memory* @routine_cvtsi2sdl_MINUS0x34__rbp____xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d131)
  store %struct.Memory* %call_48d131, %struct.Memory** %MEMORY

  ; Code: ucomisd %xmm3, %xmm0	 RIP: 48d136	 Bytes: 4
  %loadMem_48d136 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d136 = call %struct.Memory* @routine_ucomisd__xmm3___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d136)
  store %struct.Memory* %call_48d136, %struct.Memory** %MEMORY

  ; Code: movsd %xmm2, -0xa8(%rbp)	 RIP: 48d13a	 Bytes: 8
  %loadMem_48d13a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d13a = call %struct.Memory* @routine_movsd__xmm2__MINUS0xa8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d13a)
  store %struct.Memory* %call_48d13a, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, -0xb0(%rbp)	 RIP: 48d142	 Bytes: 8
  %loadMem_48d142 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d142 = call %struct.Memory* @routine_movsd__xmm1__MINUS0xb0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d142)
  store %struct.Memory* %call_48d142, %struct.Memory** %MEMORY

  ; Code: jbe .L_48d165	 RIP: 48d14a	 Bytes: 6
  %loadMem_48d14a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d14a = call %struct.Memory* @routine_jbe_.L_48d165(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d14a, i8* %BRANCH_TAKEN, i64 27, i64 6, i64 6)
  store %struct.Memory* %call_48d14a, %struct.Memory** %MEMORY

  %loadBr_48d14a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48d14a = icmp eq i8 %loadBr_48d14a, 1
  br i1 %cmpBr_48d14a, label %block_.L_48d165, label %block_48d150

block_48d150:
  ; Code: movsd 0x24730(%rip), %xmm0	 RIP: 48d150	 Bytes: 8
  %loadMem_48d150 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d150 = call %struct.Memory* @routine_movsd_0x24730__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d150)
  store %struct.Memory* %call_48d150, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0xb8(%rbp)	 RIP: 48d158	 Bytes: 8
  %loadMem_48d158 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d158 = call %struct.Memory* @routine_movsd__xmm0__MINUS0xb8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d158)
  store %struct.Memory* %call_48d158, %struct.Memory** %MEMORY

  ; Code: jmpq .L_48d172	 RIP: 48d160	 Bytes: 5
  %loadMem_48d160 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d160 = call %struct.Memory* @routine_jmpq_.L_48d172(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d160, i64 18, i64 5)
  store %struct.Memory* %call_48d160, %struct.Memory** %MEMORY

  br label %block_.L_48d172

  ; Code: .L_48d165:	 RIP: 48d165	 Bytes: 0
block_.L_48d165:

  ; Code: cvtsi2sdl -0x34(%rbp), %xmm0	 RIP: 48d165	 Bytes: 5
  %loadMem_48d165 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d165 = call %struct.Memory* @routine_cvtsi2sdl_MINUS0x34__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d165)
  store %struct.Memory* %call_48d165, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0xb8(%rbp)	 RIP: 48d16a	 Bytes: 8
  %loadMem_48d16a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d16a = call %struct.Memory* @routine_movsd__xmm0__MINUS0xb8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d16a)
  store %struct.Memory* %call_48d16a, %struct.Memory** %MEMORY

  ; Code: .L_48d172:	 RIP: 48d172	 Bytes: 0
  br label %block_.L_48d172
block_.L_48d172:

  ; Code: movsd -0xb8(%rbp), %xmm0	 RIP: 48d172	 Bytes: 8
  %loadMem_48d172 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d172 = call %struct.Memory* @routine_movsd_MINUS0xb8__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d172)
  store %struct.Memory* %call_48d172, %struct.Memory** %MEMORY

  ; Code: movsd 0x2483e(%rip), %xmm1	 RIP: 48d17a	 Bytes: 8
  %loadMem_48d17a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d17a = call %struct.Memory* @routine_movsd_0x2483e__rip____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d17a)
  store %struct.Memory* %call_48d17a, %struct.Memory** %MEMORY

  ; Code: movsd -0xa8(%rbp), %xmm2	 RIP: 48d182	 Bytes: 8
  %loadMem_48d182 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d182 = call %struct.Memory* @routine_movsd_MINUS0xa8__rbp____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d182)
  store %struct.Memory* %call_48d182, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm0, %xmm2	 RIP: 48d18a	 Bytes: 4
  %loadMem_48d18a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d18a = call %struct.Memory* @routine_mulsd__xmm0___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d18a)
  store %struct.Memory* %call_48d18a, %struct.Memory** %MEMORY

  ; Code: movsd -0xb0(%rbp), %xmm0	 RIP: 48d18e	 Bytes: 8
  %loadMem_48d18e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d18e = call %struct.Memory* @routine_movsd_MINUS0xb0__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d18e)
  store %struct.Memory* %call_48d18e, %struct.Memory** %MEMORY

  ; Code: addsd %xmm2, %xmm0	 RIP: 48d196	 Bytes: 4
  %loadMem_48d196 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d196 = call %struct.Memory* @routine_addsd__xmm2___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d196)
  store %struct.Memory* %call_48d196, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x48(%rbp)	 RIP: 48d19a	 Bytes: 5
  %loadMem_48d19a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d19a = call %struct.Memory* @routine_movsd__xmm0__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d19a)
  store %struct.Memory* %call_48d19a, %struct.Memory** %MEMORY

  ; Code: movsd -0x48(%rbp), %xmm0	 RIP: 48d19f	 Bytes: 5
  %loadMem_48d19f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d19f = call %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d19f)
  store %struct.Memory* %call_48d19f, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 48d1a4	 Bytes: 4
  %loadMem_48d1a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d1a4 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d1a4)
  store %struct.Memory* %call_48d1a4, %struct.Memory** %MEMORY

  ; Code: subsd (%rax), %xmm0	 RIP: 48d1a8	 Bytes: 4
  %loadMem_48d1a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d1a8 = call %struct.Memory* @routine_subsd___rax____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d1a8)
  store %struct.Memory* %call_48d1a8, %struct.Memory** %MEMORY

  ; Code: ucomisd %xmm1, %xmm0	 RIP: 48d1ac	 Bytes: 4
  %loadMem_48d1ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d1ac = call %struct.Memory* @routine_ucomisd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d1ac)
  store %struct.Memory* %call_48d1ac, %struct.Memory** %MEMORY

  ; Code: jae .L_48d1f8	 RIP: 48d1b0	 Bytes: 6
  %loadMem_48d1b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d1b0 = call %struct.Memory* @routine_jae_.L_48d1f8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d1b0, i8* %BRANCH_TAKEN, i64 72, i64 6, i64 6)
  store %struct.Memory* %call_48d1b0, %struct.Memory** %MEMORY

  %loadBr_48d1b0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48d1b0 = icmp eq i8 %loadBr_48d1b0, 1
  br i1 %cmpBr_48d1b0, label %block_.L_48d1f8, label %block_48d1b6

block_48d1b6:
  ; Code: movq 0x6cb900, %rax	 RIP: 48d1b6	 Bytes: 8
  %loadMem_48d1b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d1b6 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d1b6)
  store %struct.Memory* %call_48d1b6, %struct.Memory** %MEMORY

  ; Code: movl 0x28(%rax), %ecx	 RIP: 48d1be	 Bytes: 3
  %loadMem_48d1be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d1be = call %struct.Memory* @routine_movl_0x28__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d1be)
  store %struct.Memory* %call_48d1be, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 48d1c1	 Bytes: 8
  %loadMem_48d1c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d1c1 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d1c1)
  store %struct.Memory* %call_48d1c1, %struct.Memory** %MEMORY

  ; Code: addl 0x11bdc(%rax), %ecx	 RIP: 48d1c9	 Bytes: 6
  %loadMem_48d1c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d1c9 = call %struct.Memory* @routine_addl_0x11bdc__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d1c9)
  store %struct.Memory* %call_48d1c9, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %ecx	 RIP: 48d1cf	 Bytes: 3
  %loadMem_48d1cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d1cf = call %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d1cf)
  store %struct.Memory* %call_48d1cf, %struct.Memory** %MEMORY

  ; Code: jne .L_48d204	 RIP: 48d1d2	 Bytes: 6
  %loadMem_48d1d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d1d2 = call %struct.Memory* @routine_jne_.L_48d204(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d1d2, i8* %BRANCH_TAKEN, i64 50, i64 6, i64 6)
  store %struct.Memory* %call_48d1d2, %struct.Memory** %MEMORY

  %loadBr_48d1d2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48d1d2 = icmp eq i8 %loadBr_48d1d2, 1
  br i1 %cmpBr_48d1d2, label %block_.L_48d204, label %block_48d1d8

block_48d1d8:
  ; Code: movq 0x6cb900, %rax	 RIP: 48d1d8	 Bytes: 8
  %loadMem_48d1d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d1d8 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d1d8)
  store %struct.Memory* %call_48d1d8, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, 0x11c00(%rax)	 RIP: 48d1e0	 Bytes: 7
  %loadMem_48d1e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d1e0 = call %struct.Memory* @routine_cmpl__0x1__0x11c00__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d1e0)
  store %struct.Memory* %call_48d1e0, %struct.Memory** %MEMORY

  ; Code: jne .L_48d204	 RIP: 48d1e7	 Bytes: 6
  %loadMem_48d1e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d1e7 = call %struct.Memory* @routine_jne_.L_48d204(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d1e7, i8* %BRANCH_TAKEN, i64 29, i64 6, i64 6)
  store %struct.Memory* %call_48d1e7, %struct.Memory** %MEMORY

  %loadBr_48d1e7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48d1e7 = icmp eq i8 %loadBr_48d1e7, 1
  br i1 %cmpBr_48d1e7, label %block_.L_48d204, label %block_48d1ed

block_48d1ed:
  ; Code: cmpq $0x0, -0x40(%rbp)	 RIP: 48d1ed	 Bytes: 5
  %loadMem_48d1ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d1ed = call %struct.Memory* @routine_cmpq__0x0__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d1ed)
  store %struct.Memory* %call_48d1ed, %struct.Memory** %MEMORY

  ; Code: je .L_48d204	 RIP: 48d1f2	 Bytes: 6
  %loadMem_48d1f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d1f2 = call %struct.Memory* @routine_je_.L_48d204(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d1f2, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_48d1f2, %struct.Memory** %MEMORY

  %loadBr_48d1f2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48d1f2 = icmp eq i8 %loadBr_48d1f2, 1
  br i1 %cmpBr_48d1f2, label %block_.L_48d204, label %block_.L_48d1f8

  ; Code: .L_48d1f8:	 RIP: 48d1f8	 Bytes: 0
block_.L_48d1f8:

  ; Code: movl $0x0, -0x4(%rbp)	 RIP: 48d1f8	 Bytes: 7
  %loadMem_48d1f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d1f8 = call %struct.Memory* @routine_movl__0x0__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d1f8)
  store %struct.Memory* %call_48d1f8, %struct.Memory** %MEMORY

  ; Code: jmpq .L_48d331	 RIP: 48d1ff	 Bytes: 5
  %loadMem_48d1ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d1ff = call %struct.Memory* @routine_jmpq_.L_48d331(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d1ff, i64 306, i64 5)
  store %struct.Memory* %call_48d1ff, %struct.Memory** %MEMORY

  br label %block_.L_48d331

  ; Code: .L_48d204:	 RIP: 48d204	 Bytes: 0
block_.L_48d204:

  ; Code: movq 0x6cb900, %rax	 RIP: 48d204	 Bytes: 8
  %loadMem_48d204 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d204 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d204)
  store %struct.Memory* %call_48d204, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x11ad0(%rax)	 RIP: 48d20c	 Bytes: 7
  %loadMem_48d20c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d20c = call %struct.Memory* @routine_cmpl__0x0__0x11ad0__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d20c)
  store %struct.Memory* %call_48d20c, %struct.Memory** %MEMORY

  ; Code: je .L_48d31d	 RIP: 48d213	 Bytes: 6
  %loadMem_48d213 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d213 = call %struct.Memory* @routine_je_.L_48d31d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d213, i8* %BRANCH_TAKEN, i64 266, i64 6, i64 6)
  store %struct.Memory* %call_48d213, %struct.Memory** %MEMORY

  %loadBr_48d213 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48d213 = icmp eq i8 %loadBr_48d213, 1
  br i1 %cmpBr_48d213, label %block_.L_48d31d, label %block_48d219

block_48d219:
  ; Code: cmpl $0x0, -0x14(%rbp)	 RIP: 48d219	 Bytes: 4
  %loadMem_48d219 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d219 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d219)
  store %struct.Memory* %call_48d219, %struct.Memory** %MEMORY

  ; Code: je .L_48d235	 RIP: 48d21d	 Bytes: 6
  %loadMem_48d21d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d21d = call %struct.Memory* @routine_je_.L_48d235(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d21d, i8* %BRANCH_TAKEN, i64 24, i64 6, i64 6)
  store %struct.Memory* %call_48d21d, %struct.Memory** %MEMORY

  %loadBr_48d21d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48d21d = icmp eq i8 %loadBr_48d21d, 1
  br i1 %cmpBr_48d21d, label %block_.L_48d235, label %block_48d223

block_48d223:
  ; Code: xorl %eax, %eax	 RIP: 48d223	 Bytes: 2
  %loadMem_48d223 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d223 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d223)
  store %struct.Memory* %call_48d223, %struct.Memory** %MEMORY

  ; Code: movb %al, %cl	 RIP: 48d225	 Bytes: 2
  %loadMem_48d225 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d225 = call %struct.Memory* @routine_movb__al___cl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d225)
  store %struct.Memory* %call_48d225, %struct.Memory** %MEMORY

  ; Code: testb $0x1, %cl	 RIP: 48d227	 Bytes: 3
  %loadMem_48d227 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d227 = call %struct.Memory* @routine_testb__0x1___cl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d227)
  store %struct.Memory* %call_48d227, %struct.Memory** %MEMORY

  ; Code: jne .L_48d26c	 RIP: 48d22a	 Bytes: 6
  %loadMem_48d22a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d22a = call %struct.Memory* @routine_jne_.L_48d26c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d22a, i8* %BRANCH_TAKEN, i64 66, i64 6, i64 6)
  store %struct.Memory* %call_48d22a, %struct.Memory** %MEMORY

  %loadBr_48d22a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48d22a = icmp eq i8 %loadBr_48d22a, 1
  br i1 %cmpBr_48d22a, label %block_.L_48d26c, label %block_48d230

block_48d230:
  ; Code: jmpq .L_48d31d	 RIP: 48d230	 Bytes: 5
  %loadMem_48d230 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d230 = call %struct.Memory* @routine_jmpq_.L_48d31d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d230, i64 237, i64 5)
  store %struct.Memory* %call_48d230, %struct.Memory** %MEMORY

  br label %block_.L_48d31d

  ; Code: .L_48d235:	 RIP: 48d235	 Bytes: 0
block_.L_48d235:

  ; Code: movq 0x6cb900, %rax	 RIP: 48d235	 Bytes: 8
  %loadMem_48d235 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d235 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d235)
  store %struct.Memory* %call_48d235, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, 0x18(%rax)	 RIP: 48d23d	 Bytes: 4
  %loadMem_48d23d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d23d = call %struct.Memory* @routine_cmpl__0x1__0x18__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d23d)
  store %struct.Memory* %call_48d23d, %struct.Memory** %MEMORY

  ; Code: jne .L_48d25d	 RIP: 48d241	 Bytes: 6
  %loadMem_48d241 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d241 = call %struct.Memory* @routine_jne_.L_48d25d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d241, i8* %BRANCH_TAKEN, i64 28, i64 6, i64 6)
  store %struct.Memory* %call_48d241, %struct.Memory** %MEMORY

  %loadBr_48d241 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48d241 = icmp eq i8 %loadBr_48d241, 1
  br i1 %cmpBr_48d241, label %block_.L_48d25d, label %block_48d247

block_48d247:
  ; Code: movq -0x50(%rbp), %rax	 RIP: 48d247	 Bytes: 4
  %loadMem_48d247 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d247 = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d247)
  store %struct.Memory* %call_48d247, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x1cc(%rax)	 RIP: 48d24b	 Bytes: 7
  %loadMem_48d24b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d24b = call %struct.Memory* @routine_cmpl__0x0__0x1cc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d24b)
  store %struct.Memory* %call_48d24b, %struct.Memory** %MEMORY

  ; Code: jne .L_48d31d	 RIP: 48d252	 Bytes: 6
  %loadMem_48d252 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d252 = call %struct.Memory* @routine_jne_.L_48d31d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d252, i8* %BRANCH_TAKEN, i64 203, i64 6, i64 6)
  store %struct.Memory* %call_48d252, %struct.Memory** %MEMORY

  %loadBr_48d252 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48d252 = icmp eq i8 %loadBr_48d252, 1
  br i1 %cmpBr_48d252, label %block_.L_48d31d, label %block_48d258

block_48d258:
  ; Code: jmpq .L_48d26c	 RIP: 48d258	 Bytes: 5
  %loadMem_48d258 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d258 = call %struct.Memory* @routine_jmpq_.L_48d26c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d258, i64 20, i64 5)
  store %struct.Memory* %call_48d258, %struct.Memory** %MEMORY

  br label %block_.L_48d26c

  ; Code: .L_48d25d:	 RIP: 48d25d	 Bytes: 0
block_.L_48d25d:

  ; Code: movb $0x1, %al	 RIP: 48d25d	 Bytes: 2
  %loadMem_48d25d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d25d = call %struct.Memory* @routine_movb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d25d)
  store %struct.Memory* %call_48d25d, %struct.Memory** %MEMORY

  ; Code: testb $0x1, %al	 RIP: 48d25f	 Bytes: 2
  %loadMem_48d25f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d25f = call %struct.Memory* @routine_testb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d25f)
  store %struct.Memory* %call_48d25f, %struct.Memory** %MEMORY

  ; Code: jne .L_48d26c	 RIP: 48d261	 Bytes: 6
  %loadMem_48d261 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d261 = call %struct.Memory* @routine_jne_.L_48d26c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d261, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_48d261, %struct.Memory** %MEMORY

  %loadBr_48d261 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48d261 = icmp eq i8 %loadBr_48d261, 1
  br i1 %cmpBr_48d261, label %block_.L_48d26c, label %block_48d267

block_48d267:
  ; Code: jmpq .L_48d31d	 RIP: 48d267	 Bytes: 5
  %loadMem_48d267 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d267 = call %struct.Memory* @routine_jmpq_.L_48d31d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d267, i64 182, i64 5)
  store %struct.Memory* %call_48d267, %struct.Memory** %MEMORY

  br label %block_.L_48d31d

  ; Code: .L_48d26c:	 RIP: 48d26c	 Bytes: 0
block_.L_48d26c:

  ; Code: movl $0x2, %eax	 RIP: 48d26c	 Bytes: 5
  %loadMem_48d26c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d26c = call %struct.Memory* @routine_movl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d26c)
  store %struct.Memory* %call_48d26c, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 48d271	 Bytes: 8
  %loadMem_48d271 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d271 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d271)
  store %struct.Memory* %call_48d271, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%rcx), %edx	 RIP: 48d279	 Bytes: 3
  %loadMem_48d279 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d279 = call %struct.Memory* @routine_movl_0xc__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d279)
  store %struct.Memory* %call_48d279, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xbc(%rbp)	 RIP: 48d27c	 Bytes: 6
  %loadMem_48d27c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d27c = call %struct.Memory* @routine_movl__eax__MINUS0xbc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d27c)
  store %struct.Memory* %call_48d27c, %struct.Memory** %MEMORY

  ; Code: movl %edx, %eax	 RIP: 48d282	 Bytes: 2
  %loadMem_48d282 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d282 = call %struct.Memory* @routine_movl__edx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d282)
  store %struct.Memory* %call_48d282, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 48d284	 Bytes: 1
  %loadMem_48d284 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d284 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d284)
  store %struct.Memory* %call_48d284, %struct.Memory** %MEMORY

  ; Code: movl -0xbc(%rbp), %esi	 RIP: 48d285	 Bytes: 6
  %loadMem_48d285 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d285 = call %struct.Memory* @routine_movl_MINUS0xbc__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d285)
  store %struct.Memory* %call_48d285, %struct.Memory** %MEMORY

  ; Code: idivl %esi	 RIP: 48d28b	 Bytes: 2
  %loadMem_48d28b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d28b = call %struct.Memory* @routine_idivl__esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d28b)
  store %struct.Memory* %call_48d28b, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %edx	 RIP: 48d28d	 Bytes: 3
  %loadMem_48d28d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d28d = call %struct.Memory* @routine_cmpl__0x0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d28d)
  store %struct.Memory* %call_48d28d, %struct.Memory** %MEMORY

  ; Code: je .L_48d318	 RIP: 48d290	 Bytes: 6
  %loadMem_48d290 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d290 = call %struct.Memory* @routine_je_.L_48d318(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d290, i8* %BRANCH_TAKEN, i64 136, i64 6, i64 6)
  store %struct.Memory* %call_48d290, %struct.Memory** %MEMORY

  %loadBr_48d290 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48d290 = icmp eq i8 %loadBr_48d290, 1
  br i1 %cmpBr_48d290, label %block_.L_48d318, label %block_48d296

block_48d296:
  ; Code: movq -0x58(%rbp), %rax	 RIP: 48d296	 Bytes: 4
  %loadMem_48d296 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d296 = call %struct.Memory* @routine_movq_MINUS0x58__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d296)
  store %struct.Memory* %call_48d296, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x48(%rax)	 RIP: 48d29a	 Bytes: 4
  %loadMem_48d29a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d29a = call %struct.Memory* @routine_cmpl__0x0__0x48__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d29a)
  store %struct.Memory* %call_48d29a, %struct.Memory** %MEMORY

  ; Code: je .L_48d2b6	 RIP: 48d29e	 Bytes: 6
  %loadMem_48d29e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d29e = call %struct.Memory* @routine_je_.L_48d2b6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d29e, i8* %BRANCH_TAKEN, i64 24, i64 6, i64 6)
  store %struct.Memory* %call_48d29e, %struct.Memory** %MEMORY

  %loadBr_48d29e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48d29e = icmp eq i8 %loadBr_48d29e, 1
  br i1 %cmpBr_48d29e, label %block_.L_48d2b6, label %block_48d2a4

block_48d2a4:
  ; Code: xorl %eax, %eax	 RIP: 48d2a4	 Bytes: 2
  %loadMem_48d2a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d2a4 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d2a4)
  store %struct.Memory* %call_48d2a4, %struct.Memory** %MEMORY

  ; Code: movb %al, %cl	 RIP: 48d2a6	 Bytes: 2
  %loadMem_48d2a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d2a6 = call %struct.Memory* @routine_movb__al___cl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d2a6)
  store %struct.Memory* %call_48d2a6, %struct.Memory** %MEMORY

  ; Code: testb $0x1, %cl	 RIP: 48d2a8	 Bytes: 3
  %loadMem_48d2a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d2a8 = call %struct.Memory* @routine_testb__0x1___cl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d2a8)
  store %struct.Memory* %call_48d2a8, %struct.Memory** %MEMORY

  ; Code: jne .L_48d2ed	 RIP: 48d2ab	 Bytes: 6
  %loadMem_48d2ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d2ab = call %struct.Memory* @routine_jne_.L_48d2ed(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d2ab, i8* %BRANCH_TAKEN, i64 66, i64 6, i64 6)
  store %struct.Memory* %call_48d2ab, %struct.Memory** %MEMORY

  %loadBr_48d2ab = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48d2ab = icmp eq i8 %loadBr_48d2ab, 1
  br i1 %cmpBr_48d2ab, label %block_.L_48d2ed, label %block_48d2b1

block_48d2b1:
  ; Code: jmpq .L_48d313	 RIP: 48d2b1	 Bytes: 5
  %loadMem_48d2b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d2b1 = call %struct.Memory* @routine_jmpq_.L_48d313(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d2b1, i64 98, i64 5)
  store %struct.Memory* %call_48d2b1, %struct.Memory** %MEMORY

  br label %block_.L_48d313

  ; Code: .L_48d2b6:	 RIP: 48d2b6	 Bytes: 0
block_.L_48d2b6:

  ; Code: movq 0x6cb900, %rax	 RIP: 48d2b6	 Bytes: 8
  %loadMem_48d2b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d2b6 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d2b6)
  store %struct.Memory* %call_48d2b6, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, 0x18(%rax)	 RIP: 48d2be	 Bytes: 4
  %loadMem_48d2be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d2be = call %struct.Memory* @routine_cmpl__0x1__0x18__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d2be)
  store %struct.Memory* %call_48d2be, %struct.Memory** %MEMORY

  ; Code: jne .L_48d2de	 RIP: 48d2c2	 Bytes: 6
  %loadMem_48d2c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d2c2 = call %struct.Memory* @routine_jne_.L_48d2de(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d2c2, i8* %BRANCH_TAKEN, i64 28, i64 6, i64 6)
  store %struct.Memory* %call_48d2c2, %struct.Memory** %MEMORY

  %loadBr_48d2c2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48d2c2 = icmp eq i8 %loadBr_48d2c2, 1
  br i1 %cmpBr_48d2c2, label %block_.L_48d2de, label %block_48d2c8

block_48d2c8:
  ; Code: movq -0x58(%rbp), %rax	 RIP: 48d2c8	 Bytes: 4
  %loadMem_48d2c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d2c8 = call %struct.Memory* @routine_movq_MINUS0x58__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d2c8)
  store %struct.Memory* %call_48d2c8, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x1cc(%rax)	 RIP: 48d2cc	 Bytes: 7
  %loadMem_48d2cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d2cc = call %struct.Memory* @routine_cmpl__0x0__0x1cc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d2cc)
  store %struct.Memory* %call_48d2cc, %struct.Memory** %MEMORY

  ; Code: jne .L_48d313	 RIP: 48d2d3	 Bytes: 6
  %loadMem_48d2d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d2d3 = call %struct.Memory* @routine_jne_.L_48d313(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d2d3, i8* %BRANCH_TAKEN, i64 64, i64 6, i64 6)
  store %struct.Memory* %call_48d2d3, %struct.Memory** %MEMORY

  %loadBr_48d2d3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48d2d3 = icmp eq i8 %loadBr_48d2d3, 1
  br i1 %cmpBr_48d2d3, label %block_.L_48d313, label %block_48d2d9

block_48d2d9:
  ; Code: jmpq .L_48d2ed	 RIP: 48d2d9	 Bytes: 5
  %loadMem_48d2d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d2d9 = call %struct.Memory* @routine_jmpq_.L_48d2ed(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d2d9, i64 20, i64 5)
  store %struct.Memory* %call_48d2d9, %struct.Memory** %MEMORY

  br label %block_.L_48d2ed

  ; Code: .L_48d2de:	 RIP: 48d2de	 Bytes: 0
block_.L_48d2de:

  ; Code: movb $0x1, %al	 RIP: 48d2de	 Bytes: 2
  %loadMem_48d2de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d2de = call %struct.Memory* @routine_movb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d2de)
  store %struct.Memory* %call_48d2de, %struct.Memory** %MEMORY

  ; Code: testb $0x1, %al	 RIP: 48d2e0	 Bytes: 2
  %loadMem_48d2e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d2e0 = call %struct.Memory* @routine_testb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d2e0)
  store %struct.Memory* %call_48d2e0, %struct.Memory** %MEMORY

  ; Code: jne .L_48d2ed	 RIP: 48d2e2	 Bytes: 6
  %loadMem_48d2e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d2e2 = call %struct.Memory* @routine_jne_.L_48d2ed(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d2e2, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_48d2e2, %struct.Memory** %MEMORY

  %loadBr_48d2e2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48d2e2 = icmp eq i8 %loadBr_48d2e2, 1
  br i1 %cmpBr_48d2e2, label %block_.L_48d2ed, label %block_48d2e8

block_48d2e8:
  ; Code: jmpq .L_48d313	 RIP: 48d2e8	 Bytes: 5
  %loadMem_48d2e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d2e8 = call %struct.Memory* @routine_jmpq_.L_48d313(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d2e8, i64 43, i64 5)
  store %struct.Memory* %call_48d2e8, %struct.Memory** %MEMORY

  br label %block_.L_48d313

  ; Code: .L_48d2ed:	 RIP: 48d2ed	 Bytes: 0
block_.L_48d2ed:

  ; Code: callq .field_flag_inference	 RIP: 48d2ed	 Bytes: 5
  %loadMem1_48d2ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_48d2ed = call %struct.Memory* @routine_callq_.field_flag_inference(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_48d2ed, i64 83, i64 5, i64 5)
  store %struct.Memory* %call1_48d2ed, %struct.Memory** %MEMORY

  %loadMem2_48d2ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_48d2ed = load i64, i64* %3
  %call2_48d2ed = call %struct.Memory* @sub_48d340.field_flag_inference(%struct.State* %0, i64  %loadPC_48d2ed, %struct.Memory* %loadMem2_48d2ed)
  store %struct.Memory* %call2_48d2ed, %struct.Memory** %MEMORY

  ; Code: movq -0x50(%rbp), %rcx	 RIP: 48d2f2	 Bytes: 4
  %loadMem_48d2f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d2f2 = call %struct.Memory* @routine_movq_MINUS0x50__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d2f2)
  store %struct.Memory* %call_48d2f2, %struct.Memory** %MEMORY

  ; Code: cmpl 0x214(%rcx), %eax	 RIP: 48d2f6	 Bytes: 6
  %loadMem_48d2f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d2f6 = call %struct.Memory* @routine_cmpl_0x214__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d2f6)
  store %struct.Memory* %call_48d2f6, %struct.Memory** %MEMORY

  ; Code: je .L_48d30e	 RIP: 48d2fc	 Bytes: 6
  %loadMem_48d2fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d2fc = call %struct.Memory* @routine_je_.L_48d30e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d2fc, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_48d2fc, %struct.Memory** %MEMORY

  %loadBr_48d2fc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48d2fc = icmp eq i8 %loadBr_48d2fc, 1
  br i1 %cmpBr_48d2fc, label %block_.L_48d30e, label %block_48d302

block_48d302:
  ; Code: movl $0x0, -0x4(%rbp)	 RIP: 48d302	 Bytes: 7
  %loadMem_48d302 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d302 = call %struct.Memory* @routine_movl__0x0__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d302)
  store %struct.Memory* %call_48d302, %struct.Memory** %MEMORY

  ; Code: jmpq .L_48d331	 RIP: 48d309	 Bytes: 5
  %loadMem_48d309 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d309 = call %struct.Memory* @routine_jmpq_.L_48d331(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d309, i64 40, i64 5)
  store %struct.Memory* %call_48d309, %struct.Memory** %MEMORY

  br label %block_.L_48d331

  ; Code: .L_48d30e:	 RIP: 48d30e	 Bytes: 0
block_.L_48d30e:

  ; Code: jmpq .L_48d313	 RIP: 48d30e	 Bytes: 5
  %loadMem_48d30e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d30e = call %struct.Memory* @routine_jmpq_.L_48d313(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d30e, i64 5, i64 5)
  store %struct.Memory* %call_48d30e, %struct.Memory** %MEMORY

  br label %block_.L_48d313

  ; Code: .L_48d313:	 RIP: 48d313	 Bytes: 0
block_.L_48d313:

  ; Code: jmpq .L_48d318	 RIP: 48d313	 Bytes: 5
  %loadMem_48d313 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d313 = call %struct.Memory* @routine_jmpq_.L_48d318(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d313, i64 5, i64 5)
  store %struct.Memory* %call_48d313, %struct.Memory** %MEMORY

  br label %block_.L_48d318

  ; Code: .L_48d318:	 RIP: 48d318	 Bytes: 0
block_.L_48d318:

  ; Code: jmpq .L_48d31d	 RIP: 48d318	 Bytes: 5
  %loadMem_48d318 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d318 = call %struct.Memory* @routine_jmpq_.L_48d31d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d318, i64 5, i64 5)
  store %struct.Memory* %call_48d318, %struct.Memory** %MEMORY

  br label %block_.L_48d31d

  ; Code: .L_48d31d:	 RIP: 48d31d	 Bytes: 0
block_.L_48d31d:

  ; Code: movsd -0x48(%rbp), %xmm0	 RIP: 48d31d	 Bytes: 5
  %loadMem_48d31d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d31d = call %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d31d)
  store %struct.Memory* %call_48d31d, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 48d322	 Bytes: 4
  %loadMem_48d322 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d322 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d322)
  store %struct.Memory* %call_48d322, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax)	 RIP: 48d326	 Bytes: 4
  %loadMem_48d326 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d326 = call %struct.Memory* @routine_movsd__xmm0____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d326)
  store %struct.Memory* %call_48d326, %struct.Memory** %MEMORY

  ; Code: movl $0x1, -0x4(%rbp)	 RIP: 48d32a	 Bytes: 7
  %loadMem_48d32a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d32a = call %struct.Memory* @routine_movl__0x1__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d32a)
  store %struct.Memory* %call_48d32a, %struct.Memory** %MEMORY

  ; Code: .L_48d331:	 RIP: 48d331	 Bytes: 0
  br label %block_.L_48d331
block_.L_48d331:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 48d331	 Bytes: 3
  %loadMem_48d331 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d331 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d331)
  store %struct.Memory* %call_48d331, %struct.Memory** %MEMORY

  ; Code: addq $0xc0, %rsp	 RIP: 48d334	 Bytes: 7
  %loadMem_48d334 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d334 = call %struct.Memory* @routine_addq__0xc0___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d334)
  store %struct.Memory* %call_48d334, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 48d33b	 Bytes: 1
  %loadMem_48d33b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d33b = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d33b)
  store %struct.Memory* %call_48d33b, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 48d33c	 Bytes: 1
  %loadMem_48d33c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48d33c = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48d33c)
  store %struct.Memory* %call_48d33c, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_48d33c
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

define %struct.Memory* @routine_subq__0xc0___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 192)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i8* nocapture readonly) #7 {
  %5 = bitcast i8* %3 to double*
  %6 = load double, double* %5, align 1
  %7 = inttoptr i64 %2 to double*
  store double %6, double* %7
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x10__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 16
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__edi__MINUS0x14__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 20
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0x0__MINUS0x34__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 52
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = inttoptr i64 %2 to i64*
  store i64 %3, i64* %5
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__0x0__MINUS0x40__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 64
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


define %struct.Memory* @routine_movq_0x3758__rsi____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 14168
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %10)
  ret %struct.Memory* %13
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = sext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movslq_0xc__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 12
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
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

define %struct.Memory* @routine_imulq__0x278___rax___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 632)
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

define %struct.Memory* @routine_addq__rax___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %RAX
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__rsi__MINUS0x50__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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

define %struct.Memory* @routine_cmpl__0x0__0xc__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 12
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
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

define %struct.Memory* @routine_je_.L_48c61a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl_0xc__rcx____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64) #2 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2, i64* %4, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jmpq_.L_48c62a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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


define %struct.Memory* @routine_movq__rcx__MINUS0x88__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RCX
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

define %struct.Memory* @routine_movb__cl___dl(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = bitcast %union.anon* %12 to %struct.anon.2*
  %DL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %13, i32 0, i32 0
  %14 = load i8, i8* %CL
  %15 = zext i8 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 2
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %DL, i64 %15)
  ret %struct.Memory* %18
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L4SETZI3RnWIhEEEP6MemoryS4_R5StateT_(%struct.Memory* readnone returned, %struct.State* nocapture readonly dereferenceable(3376), i8* nocapture) #2 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %2, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_sete__sil(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4SETZI3RnWIhEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i8* %SIL)
  ret %struct.Memory* %12
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

define %struct.Memory* @routine_andb__0x1___sil(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = load i8, i8* %SIL
  %11 = zext i8 %10 to i64
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWIhE2RnIhE2InIhEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %SIL, i64 %11, i64 1)
  ret %struct.Memory* %14
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 255
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movzbl__sil___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 5
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RCX = bitcast %union.anon* %12 to i64*
  %13 = load i8, i8* %SIL
  %14 = zext i8 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__ecx__MINUS0x5c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 92
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i8
  %6 = inttoptr i64 %2 to i8*
  store i8 %5, i8* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movb__dl__MINUS0x89__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 137
  %15 = load i8, i8* %DL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 6
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_je_.L_48c684(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x1__0x934__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 2356
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
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


define %struct.Memory* @routine_movb__cl__MINUS0x89__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 137
  %15 = load i8, i8* %CL
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

define %struct.Memory* @routine_movb_MINUS0x89__rbp____al(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 137
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %AL, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_movl__ecx__MINUS0x64__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 100
  %14 = load i32, i32* %ECX
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


define %struct.Memory* @routine_movl_MINUS0x14__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
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

define %struct.Memory* @routine_callq_.SetModesAndRefframeForBlocks(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_je_.L_48c761(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x0__MINUS0x14__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
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

define %struct.Memory* @routine_jne_.L_48c761(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl_0x98__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 152
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
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


define %struct.Memory* @routine_movl__ecx__MINUS0x78__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 120
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movl_0x9c__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 156
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__ecx__MINUS0x7c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 124
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__0x0__MINUS0x28__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 40
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_cmpl__0x4__MINUS0x28__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 40
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

define %struct.Memory* @routine_jge_.L_48c75c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x4__MINUS0x2c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 4)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_48c749(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq_0x722cb8___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x722cb8_type* @G_0x722cb8 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl_MINUS0x78__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 120
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

define %struct.Memory* @routine_addl_MINUS0x28__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 40
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


define %struct.Memory* @routine_movl_MINUS0x7c__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 124
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addl_MINUS0x2c__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 44
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnItEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i16*
  %6 = load i16, i16* %5
  %7 = sext i16 %6 to i64
  %8 = and i64 %7, 4294967295
  store i64 %8, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movswl___rax__rdx_2____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnItEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %18)
  ret %struct.Memory* %21
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


define %struct.Memory* @routine_jge_.L_48c736(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_48d331(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_48c73b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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


define %struct.Memory* @routine_jmpq_.L_48c6f5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_48c74e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 40
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_jmpq_.L_48c6e4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_48c761(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_cmpl__0x8__MINUS0x14__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 8)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_48c7af(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_callq_.LumaResidualCoding(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jne_.L_48c7aa(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq_MINUS0x50__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_cmpl__0x0__0x1cc__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 460
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}






define %struct.Memory* @routine_cmpl__0x1__0x23c__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 572
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}








define %struct.Memory* @routine_jmpq_.L_48ca37(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_jne_.L_48c7c7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_callq_.SetCoeffAndReconstruction8x8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_48ca32(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_cmpl__0x9__MINUS0x14__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 9)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_48c8e7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_leaq_MINUS0x6c__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 108
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
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

define %struct.Memory* @routine_movsd_MINUS0x10__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.Mode_Decision_for_Intra4x4Macroblock(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl__eax__0x1cc__rdi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 460
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movq_0x6cb900___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G_0x6cb900_type* @G_0x6cb900 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_cmpl__0x0__0x11c14__rdi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 72724
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_48c8e2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpl__0x2__MINUS0x28__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 40
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 2)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_48c89f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jge_.L_48c88c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x0__MINUS0x30__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_cmpl__0x4__MINUS0x30__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 4)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_48c879(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq__0x6d0920___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x6d0920_type* @G__0x6d0920 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
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




define %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_shlq__0x4___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 4)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_cmpl__0x0____rax__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %15, i64 0)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_je_.L_48c866(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x2__MINUS0x70__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 2)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jmpq_.L_48c86b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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




define %struct.Memory* @routine_movl__eax__MINUS0x30__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 48
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_48c827(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_48c87e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_48c816(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_48c891(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_48c805(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movl__0x0__MINUS0x74__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_cmpl__0x2__MINUS0x74__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 2)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_48c8cc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_MINUS0x74__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 116
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x70__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 112
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.dct_chroma_DC(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__eax__MINUS0x70__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 112
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x74__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 116
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__eax__MINUS0x74__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 116
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_48c8a6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movl_MINUS0x70__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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

define %struct.Memory* @routine_shll__0x4___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 4)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movq_MINUS0x50__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 80
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addl_0x1cc__rcx____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 460
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__eax__0x1cc__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 460
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_48ca2d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_cmpl__0xa__MINUS0x14__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_48c903(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_leaq_MINUS0x24__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_callq_.Intra16x16_Mode_Decision(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_48ca28(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_cmpl__0xd__MINUS0x14__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 13)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_48ca23(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_callq_.Mode_Decision_for_new_Intra8x8Macroblock(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_je_.L_48ca1e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jge_.L_48c9db(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jge_.L_48c9c8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jge_.L_48c9b5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




















define %struct.Memory* @routine_je_.L_48c9a2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jmpq_.L_48c9a7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_48c963(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_48c9ba(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_48c952(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_48c9cd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_48c941(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_jge_.L_48ca08(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
















define %struct.Memory* @routine_jmpq_.L_48c9e2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}












define %struct.Memory* @routine_jmpq_.L_48ca23(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}












define %struct.Memory* @routine_cmpl__0x2__0x9a0__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 2464
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 2)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_48ca93(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_je_.L_48ca93(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jne_.L_48ca76(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__eax__MINUS0x90__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 144
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_48ca86(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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

define %struct.Memory* @routine_movl__0xffffffff___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 4294967295)
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movl_MINUS0x90__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 144
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_callq_.compute_residue_mb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jne_.L_48cb2e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpl__0x10__MINUS0x28__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 40
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 16)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_48cb29(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpl__0x10__MINUS0x2c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 16)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_48cb16(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x6cc660___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x6cc660_type* @G__0x6cc660 to i64))
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

define %struct.Memory* @routine_addq__0x12b8___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 4792)
  ret %struct.Memory* %12
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


define %struct.Memory* @routine_shlq__0x9___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 9)
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


define %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 44
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
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




define %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i16*
  %6 = load i16, i16* %5
  %7 = zext i16 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movzwl___rcx__rdx_2____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %17 = mul i64 %16, 2
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 4
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %18)
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








define %struct.Memory* @routine_jmpq_.L_48cab5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_48cb1b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_48caa4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_48cbb4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_jge_.L_48cbaf(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jge_.L_48cb9c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




























define %struct.Memory* @routine_jmpq_.L_48cb46(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_48cba1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_48cb35(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_movl__0x0__0x11abc__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 72380
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
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


define %struct.Memory* @routine_je_.L_48cc00(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_je_.L_48cc1e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_cmpl__0x0__0x11bfc__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 72700
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}






define %struct.Memory* @routine_callq_.ChromaResidualCoding(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jne_.L_48cc48(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl_0x1cc__rax____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 460
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_callq_.I16Offset(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl__eax__0x11abc__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 72380
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_jne_.L_48cdb9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_je_.L_48cdb9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_cmpl_0xb58__rcx____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 2904
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_48cd87(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_callq_.decode_one_mb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jge_.L_48cd74(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__ecx__MINUS0x28__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 40
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_movl_0xa8__rcx____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 168
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addl__0x10___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 16)
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


define %struct.Memory* @routine_jge_.L_48cd61(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movq_0x11860__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 71776
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movq_0x726418___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G_0x726418_type* @G_0x726418 to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_movl_0xac__rdx____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 172
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addl_MINUS0x2c__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 44
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






define %struct.Memory* @routine_movq_0x6cb918___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G_0x6cb918_type* @G_0x6cb918 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq_0x8__rcx____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 8
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movslq_MINUS0x30__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movl_0xac__rdx____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 172
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addl_MINUS0x2c__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 44
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movslq__edi___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movzwl___rcx__rdx_2____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 11
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RDX
  %17 = mul i64 %16, 2
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 4
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %18)
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

define %struct.Memory* @routine_subl__edi___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSI
  %13 = load i32, i32* %EDI
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12, i64 %14)
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


define %struct.Memory* @routine_movslq___rax__rcx_4____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %15)
  ret %struct.Memory* %18
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2MnImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory*, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6
  %8 = add i64 %7, %3
  store i64 %8, i64* %2, align 8
  %9 = icmp ult i64 %8, %3
  %10 = icmp ult i64 %8, %7
  %11 = or i1 %9, %10
  %12 = zext i1 %11 to i8
  %13 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 %12, i8* %13, align 1
  %14 = trunc i64 %8 to i32
  %15 = and i32 %14, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15) #22
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i64 %7, %3
  %22 = xor i64 %21, %8
  %23 = lshr i64 %22, 4
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i64 %8, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i64 %8, 63
  %31 = trunc i64 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i64 %3, 63
  %34 = lshr i64 %7, 63
  %35 = xor i64 %30, %33
  %36 = xor i64 %30, %34
  %37 = add   i64 %35, %36
  %38 = icmp eq i64 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_addq_MINUS0x40__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2MnImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
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








define %struct.Memory* @routine_jmpq_.L_48ccbb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_48cd66(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_48cca0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_48cd79(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_48cc76(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_movslq_0xb58__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 2904
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movq_MINUS0x40__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__rax__MINUS0x98__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 152
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__rcx___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12)
  ret %struct.Memory* %15
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L7CQO_RAXEP6MemoryR5State(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376)) #2 {
  %3 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 1, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = ashr i64 %5, 63
  store i64 %6, i64* %3, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_cqto(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L7CQO_RAXEP6MemoryR5State(%struct.Memory* %2, %struct.State* %0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movq_MINUS0x98__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 152
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_(%struct.Memory*, %struct.State* dereferenceable(3376), i64) #0 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 1, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 7, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = sext i64 %2 to i128
  %9 = and i128 %8, -18446744073709551616
  %10 = zext i64 %7 to i128
  %11 = shl  i128 %10, 64
  %12 = zext i64 %5 to i128
  %13 = or i128 %11, %12
  %14 = zext i64 %2 to i128
  %15 = or i128 %9, %14
  %16 = sdiv i128 %13, %15
  %17 = trunc i128 %16 to i64
  %18 = and i128 %16, 18446744073709551615
  %19 = sext i64 %17 to i128
  %20 = and i128 %19, -18446744073709551616
  %21 = or i128 %20, %18
  %22 = icmp eq i128 %16, %21
  br i1 %22, label %27, label %23

; <label>:23:                                     ; preds = %3
  %24 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %1, i64 %25, %struct.Memory* %0) #21
  br label %36

; <label>:27:                                     ; preds = %3
  %28 = srem i128 %13, %15
  %29 = trunc i128 %28 to i64
  store i64 %17, i64* %4, align 8
  store i64 %29, i64* %6, align 8
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

; <label>:36:                                     ; preds = %27, %23
  %37 = phi %struct.Memory* [ %26, %23 ], [ %0, %27 ]
  ret %struct.Memory* %37
}

define %struct.Memory* @routine_idivq__rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %9)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_jmpq_.L_48ce94(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_jge_.L_48ce8f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


















define %struct.Memory* @routine_jge_.L_48ce7c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_movl_MINUS0x2c__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 44
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_addl_0xac__rsi____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 172
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_movq___rcx__rsi_8____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = mul i64 %13, 8
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movslq_MINUS0x28__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 40
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movq_0x70fcf0___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G_0x70fcf0_type* @G_0x70fcf0 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq_0x1918__rcx____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 6424
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %10)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movl_0x9c__rsi____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 156
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movslq__edi___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EDI
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movzwl___rcx__rsi_2____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 11
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RSI
  %17 = mul i64 %16, 2
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 4
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %18)
  ret %struct.Memory* %21
}


define %struct.Memory* @routine_subl__edi___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RDX
  %13 = load i32, i32* %EDI
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}
















define %struct.Memory* @routine_jmpq_.L_48cddb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_48ce81(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_48cdc0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_je_.L_48d021(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_cmpl_0x11c08__rcx____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 72712
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_48d01c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl_0xb0__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 176
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_movl_0xb0__rcx____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 176
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_addl_0x11c04__rcx____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 72708
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_jge_.L_48d009(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movq_0x6f6f90___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G_0x6f6f90_type* @G_0x6f6f90 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq___rcx____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9)
  ret %struct.Memory* %12
}






define %struct.Memory* @routine_addl_0xb4__rsi____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 180
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}












define %struct.Memory* @routine_movq_0x1940__rcx____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 6464
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %10)
  ret %struct.Memory* %13
}






define %struct.Memory* @routine_movl_0xa4__rsi____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 164
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}
















































































define %struct.Memory* @routine_jmpq_.L_48ced8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_48d00e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_48ceb0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_48d021(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movq_0x6cc628___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G_0x6cc628_type* @G_0x6cc628 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_callq_.store_coding_state(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x0__MINUS0x64__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 100
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_48d104(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpl__0x0__0x48__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 72
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_48d061(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_je_.L_48d0ad(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl_0x78__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 120
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__ecx__MINUS0x60__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 96
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_callq_.writeMBLayer(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_leaq_MINUS0x68__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 104
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_leaq_MINUS0x6c__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 108
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__eax__MINUS0x34__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 52
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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


define %struct.Memory* @routine_movl_MINUS0x6c__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 108
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.ue_linfo(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_MINUS0x34__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 52
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_subl__eax___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i32, i32* %EAX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__esi__MINUS0x34__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 52
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
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




define %struct.Memory* @routine_movl__eax__0x78__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 120
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_48d0ff(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_leaq_MINUS0x34__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 52
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movl_0x78__rax____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 120
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
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


define %struct.Memory* @routine_movl_MINUS0x6c__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 108
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__edi__MINUS0x9c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 156
  %14 = load i32, i32* %EDI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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


define %struct.Memory* @routine_movl_MINUS0x9c__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 156
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_movl_0x78__rax____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 120
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movl_MINUS0x68__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x34__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 52
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_subl__esi___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RDI
  %13 = load i32, i32* %ESI
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__edi__MINUS0x34__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 52
  %14 = load i32, i32* %EDI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_48d111(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}










define %struct.Memory* @routine_callq_.reset_coding_state(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movsd_0x24762__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0x24762__rip__type* @G_0x24762__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SDI2MnImEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory*, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i64*
  %6 = load i64, i64* %5
  %7 = sitofp i64 %6 to double
  %8 = bitcast i8* %2 to double*
  store double %7, double* %8, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_cvtsi2sdq_MINUS0x40__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SDI2MnImEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movsd_MINUS0x10__rbp____xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %YMM2 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
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

define %struct.Memory* @routine_cvtsi2sdl_MINUS0x34__rbp____xmm3(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 52
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SDI2MnIjEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
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

define %struct.Memory* @routine_ucomisd__xmm3___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 3
  %XMM3 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %union.vec128_t* %XMM0 to i8*
  %11 = bitcast %union.vec128_t* %XMM3 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11)
  ret %struct.Memory* %14
}


define %struct.Memory* @routine_movsd__xmm2__MINUS0xa8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 168
  %13 = bitcast %union.vec128_t* %XMM2 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movsd__xmm1__MINUS0xb0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 176
  %13 = bitcast %union.vec128_t* %XMM1 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
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

define %struct.Memory* @routine_jbe_.L_48d165(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movsd_0x24730__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0x24730__rip__type* @G_0x24730__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movsd__xmm0__MINUS0xb8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 184
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_jmpq_.L_48d172(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_cvtsi2sdl_MINUS0x34__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 52
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SDI2MnIjEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movsd_MINUS0xb8__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 184
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movsd_0x2483e__rip____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0x2483e__rip__type* @G_0x2483e__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movsd_MINUS0xa8__rbp____xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %YMM2 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 168
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
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

define %struct.Memory* @routine_mulsd__xmm0___xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = bitcast %union.vec128_t* %XMM0 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_movsd_MINUS0xb0__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 176
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i8* nocapture readonly) #0 {
  %6 = bitcast i8* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = getelementptr inbounds i8, i8* %3, i64 8
  %9 = bitcast i8* %8 to i64*
  %10 = load i64, i64* %9, align 1
  %11 = bitcast i8* %4 to double*
  %12 = load double, double* %11, align 1
  %13 = fadd double %7, %12
  %14 = bitcast i8* %2 to double*
  store double %13, double* %14, align 1
  %15 = getelementptr inbounds i8, i8* %2, i64 8
  %16 = bitcast i8* %15 to i64*
  store i64 %10, i64* %16, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_addsd__xmm2___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = bitcast %union.vec128_t* %XMM2 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_movsd__xmm0__MINUS0x48__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 72
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 72
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5SUBSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i64) #0 {
  %6 = bitcast i8* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = getelementptr inbounds i8, i8* %3, i64 8
  %9 = bitcast i8* %8 to i64*
  %10 = load i64, i64* %9, align 1
  %11 = inttoptr i64 %4 to double*
  %12 = load double, double* %11
  %13 = fsub double %7, %12
  %14 = bitcast i8* %2 to double*
  store double %13, double* %14, align 1
  %15 = getelementptr inbounds i8, i8* %2, i64 8
  %16 = bitcast i8* %15 to i64*
  store i64 %10, i64* %16, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_subsd___rax____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RAX
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5SUBSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_ucomisd__xmm1___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = bitcast %union.vec128_t* %XMM0 to i8*
  %11 = bitcast %union.vec128_t* %XMM1 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11)
  ret %struct.Memory* %14
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JNBEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i8* nocapture, i64, i64) #2 {
  %6 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  %7 = load i8, i8* %6, align 1
  %8 = icmp eq i8 %7, 0
  %9 = zext i1 %8 to i8
  store i8 %9, i8* %2, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  %11 = select i1 %8, i64 %3, i64 %4
  store i64 %11, i64* %10, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jae_.L_48d1f8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JNBEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
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




define %struct.Memory* @routine_jne_.L_48d204(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpl__0x1__0x11c00__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
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

define %struct.Memory* @routine_cmpq__0x0__MINUS0x40__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 64
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 5
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_48d204(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_je_.L_48d31d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_je_.L_48d235(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_testb__0x1___cl(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = load i8, i8* %CL
  %11 = zext i8 %10 to i64
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 3
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4TESTI2RnIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %11, i64 1)
  ret %struct.Memory* %14
}


define %struct.Memory* @routine_jne_.L_48d26c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_48d31d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_jne_.L_48d25d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jne_.L_48d31d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_48d26c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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






define %struct.Memory* @routine_movl__eax__MINUS0xbc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 188
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__edx___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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


define %struct.Memory* @routine_movl_MINUS0xbc__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 188
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
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

define %struct.Memory* @routine_idivl__esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 2
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %10)
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


define %struct.Memory* @routine_je_.L_48d318(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq_MINUS0x58__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_je_.L_48d2b6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jne_.L_48d2ed(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_48d313(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_jne_.L_48d2de(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jne_.L_48d313(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_48d2ed(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}










define %struct.Memory* @routine_callq_.field_flag_inference(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpl_0x214__rcx____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 532
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_je_.L_48d30e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jmpq_.L_48d318(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_movsd__xmm0____rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %11, i8* %12)
  ret %struct.Memory* %15
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


define %struct.Memory* @routine_addq__0xc0___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 192)
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

