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

declare %struct.Memory* @sub_48aa10.StoreMV8x8(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_48aaa0.RestoreMV8x8(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Data Access Globals
%G_0x6cb900_type = type <{ [8 x i8] }>
@G_0x6cb900= global %G_0x6cb900_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x6cc5f8_type = type <{ [8 x i8] }>
@G_0x6cc5f8= global %G_0x6cc5f8_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x6cc650_type = type <{ [8 x i8] }>
@G_0x6cc650= global %G_0x6cc650_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x6ce9f8_type = type <{ [1 x i8] }>
@G_0x6ce9f8= global %G_0x6ce9f8_type <{ [1 x i8] c"\00" }>
%G_0x6d1f8c_type = type <{ [1 x i8] }>
@G_0x6d1f8c= global %G_0x6d1f8c_type <{ [1 x i8] c"\00" }>
%G_0x6d32c0_type = type <{ [4 x i8] }>
@G_0x6d32c0= global %G_0x6d32c0_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x70d1a8_type = type <{ [4 x i8] }>
@G_0x70d1a8= global %G_0x70d1a8_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x70fcf0_type = type <{ [8 x i8] }>
@G_0x70fcf0= global %G_0x70fcf0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x710778_type = type <{ [8 x i8] }>
@G_0x710778= global %G_0x710778_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x726848_type = type <{ [4 x i8] }>
@G_0x726848= global %G_0x726848_type <{ [4 x i8] c"\00\00\00\00" }>
%G__0x6ce5a0_type = type <{ [8 x i8] }>
@G__0x6ce5a0= global %G__0x6ce5a0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x6cea50_type = type <{ [8 x i8] }>
@G__0x6cea50= global %G__0x6cea50_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x6d0290_type = type <{ [8 x i8] }>
@G__0x6d0290= global %G__0x6d0290_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x6d40f0_type = type <{ [8 x i8] }>
@G__0x6d40f0= global %G__0x6d40f0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x6f6fa0_type = type <{ [8 x i8] }>
@G__0x6f6fa0= global %G__0x6f6fa0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x6f7ea0_type = type <{ [8 x i8] }>
@G__0x6f7ea0= global %G__0x6f7ea0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x70d650_type = type <{ [8 x i8] }>
@G__0x70d650= global %G__0x70d650_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x70ead0_type = type <{ [8 x i8] }>
@G__0x70ead0= global %G__0x70ead0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x710370_type = type <{ [8 x i8] }>
@G__0x710370= global %G__0x710370_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x711840_type = type <{ [8 x i8] }>
@G__0x711840= global %G__0x711840_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x721aa0_type = type <{ [8 x i8] }>
@G__0x721aa0= global %G__0x721aa0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x722ff0_type = type <{ [8 x i8] }>
@G__0x722ff0= global %G__0x722ff0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x723430_type = type <{ [8 x i8] }>
@G__0x723430= global %G__0x723430_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x724340_type = type <{ [8 x i8] }>
@G__0x724340= global %G__0x724340_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x7247d0_type = type <{ [8 x i8] }>
@G__0x7247d0= global %G__0x7247d0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x725610_type = type <{ [8 x i8] }>
@G__0x725610= global %G__0x725610_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>


define %struct.Memory* @SetCoeffAndReconstruction8x8(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .SetCoeffAndReconstruction8x8:	 RIP: 489ab0	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 489ab0	 Bytes: 1
  %loadMem_489ab0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489ab0 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489ab0)
  store %struct.Memory* %call_489ab0, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 489ab1	 Bytes: 3
  %loadMem_489ab1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489ab1 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489ab1)
  store %struct.Memory* %call_489ab1, %struct.Memory** %MEMORY

  ; Code: pushq %r15	 RIP: 489ab4	 Bytes: 2
  %loadMem_489ab4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489ab4 = call %struct.Memory* @routine_pushq__r15(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489ab4)
  store %struct.Memory* %call_489ab4, %struct.Memory** %MEMORY

  ; Code: pushq %r14	 RIP: 489ab6	 Bytes: 2
  %loadMem_489ab6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489ab6 = call %struct.Memory* @routine_pushq__r14(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489ab6)
  store %struct.Memory* %call_489ab6, %struct.Memory** %MEMORY

  ; Code: pushq %rbx	 RIP: 489ab8	 Bytes: 1
  %loadMem_489ab8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489ab8 = call %struct.Memory* @routine_pushq__rbx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489ab8)
  store %struct.Memory* %call_489ab8, %struct.Memory** %MEMORY

  ; Code: subq $0x58, %rsp	 RIP: 489ab9	 Bytes: 4
  %loadMem_489ab9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489ab9 = call %struct.Memory* @routine_subq__0x58___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489ab9)
  store %struct.Memory* %call_489ab9, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x20(%rbp)	 RIP: 489abd	 Bytes: 4
  %loadMem_489abd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489abd = call %struct.Memory* @routine_movq__rdi__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489abd)
  store %struct.Memory* %call_489abd, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rdi	 RIP: 489ac1	 Bytes: 8
  %loadMem_489ac1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489ac1 = call %struct.Memory* @routine_movq_0x6cb900___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489ac1)
  store %struct.Memory* %call_489ac1, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, 0x18(%rdi)	 RIP: 489ac9	 Bytes: 4
  %loadMem_489ac9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489ac9 = call %struct.Memory* @routine_cmpl__0x1__0x18__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489ac9)
  store %struct.Memory* %call_489ac9, %struct.Memory** %MEMORY

  ; Code: sete %al	 RIP: 489acd	 Bytes: 3
  %loadMem_489acd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489acd = call %struct.Memory* @routine_sete__al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489acd)
  store %struct.Memory* %call_489acd, %struct.Memory** %MEMORY

  ; Code: andb $0x1, %al	 RIP: 489ad0	 Bytes: 2
  %loadMem_489ad0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489ad0 = call %struct.Memory* @routine_andb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489ad0)
  store %struct.Memory* %call_489ad0, %struct.Memory** %MEMORY

  ; Code: movzbl %al, %ecx	 RIP: 489ad2	 Bytes: 3
  %loadMem_489ad2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489ad2 = call %struct.Memory* @routine_movzbl__al___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489ad2)
  store %struct.Memory* %call_489ad2, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x38(%rbp)	 RIP: 489ad5	 Bytes: 3
  %loadMem_489ad5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489ad5 = call %struct.Memory* @routine_movl__ecx__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489ad5)
  store %struct.Memory* %call_489ad5, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rdi	 RIP: 489ad8	 Bytes: 8
  %loadMem_489ad8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489ad8 = call %struct.Memory* @routine_movq_0x6cb900___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489ad8)
  store %struct.Memory* %call_489ad8, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x11ad0(%rdi)	 RIP: 489ae0	 Bytes: 7
  %loadMem_489ae0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489ae0 = call %struct.Memory* @routine_cmpl__0x0__0x11ad0__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489ae0)
  store %struct.Memory* %call_489ae0, %struct.Memory** %MEMORY

  ; Code: je .L_489b2c	 RIP: 489ae7	 Bytes: 6
  %loadMem_489ae7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489ae7 = call %struct.Memory* @routine_je_.L_489b2c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489ae7, i8* %BRANCH_TAKEN, i64 69, i64 6, i64 6)
  store %struct.Memory* %call_489ae7, %struct.Memory** %MEMORY

  %loadBr_489ae7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_489ae7 = icmp eq i8 %loadBr_489ae7, 1
  br i1 %cmpBr_489ae7, label %block_.L_489b2c, label %block_489aed

block_489aed:
  ; Code: movq -0x20(%rbp), %rax	 RIP: 489aed	 Bytes: 4
  %loadMem_489aed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489aed = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489aed)
  store %struct.Memory* %call_489aed, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x214(%rax)	 RIP: 489af1	 Bytes: 7
  %loadMem_489af1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489af1 = call %struct.Memory* @routine_cmpl__0x0__0x214__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489af1)
  store %struct.Memory* %call_489af1, %struct.Memory** %MEMORY

  ; Code: je .L_489b2c	 RIP: 489af8	 Bytes: 6
  %loadMem_489af8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489af8 = call %struct.Memory* @routine_je_.L_489b2c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489af8, i8* %BRANCH_TAKEN, i64 52, i64 6, i64 6)
  store %struct.Memory* %call_489af8, %struct.Memory** %MEMORY

  %loadBr_489af8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_489af8 = icmp eq i8 %loadBr_489af8, 1
  br i1 %cmpBr_489af8, label %block_.L_489b2c, label %block_489afe

block_489afe:
  ; Code: movl $0x2, %eax	 RIP: 489afe	 Bytes: 5
  %loadMem_489afe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489afe = call %struct.Memory* @routine_movl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489afe)
  store %struct.Memory* %call_489afe, %struct.Memory** %MEMORY

  ; Code: movl $0x4, %ecx	 RIP: 489b03	 Bytes: 5
  %loadMem_489b03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489b03 = call %struct.Memory* @routine_movl__0x4___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489b03)
  store %struct.Memory* %call_489b03, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rdx	 RIP: 489b08	 Bytes: 8
  %loadMem_489b08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489b08 = call %struct.Memory* @routine_movq_0x6cb900___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489b08)
  store %struct.Memory* %call_489b08, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%rdx), %esi	 RIP: 489b10	 Bytes: 3
  %loadMem_489b10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489b10 = call %struct.Memory* @routine_movl_0xc__rdx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489b10)
  store %struct.Memory* %call_489b10, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x40(%rbp)	 RIP: 489b13	 Bytes: 3
  %loadMem_489b13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489b13 = call %struct.Memory* @routine_movl__eax__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489b13)
  store %struct.Memory* %call_489b13, %struct.Memory** %MEMORY

  ; Code: movl %esi, %eax	 RIP: 489b16	 Bytes: 2
  %loadMem_489b16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489b16 = call %struct.Memory* @routine_movl__esi___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489b16)
  store %struct.Memory* %call_489b16, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 489b18	 Bytes: 1
  %loadMem_489b18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489b18 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489b18)
  store %struct.Memory* %call_489b18, %struct.Memory** %MEMORY

  ; Code: movl -0x40(%rbp), %esi	 RIP: 489b19	 Bytes: 3
  %loadMem_489b19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489b19 = call %struct.Memory* @routine_movl_MINUS0x40__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489b19)
  store %struct.Memory* %call_489b19, %struct.Memory** %MEMORY

  ; Code: idivl %esi	 RIP: 489b1c	 Bytes: 2
  %loadMem_489b1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489b1c = call %struct.Memory* @routine_idivl__esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489b1c)
  store %struct.Memory* %call_489b1c, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %edx	 RIP: 489b1e	 Bytes: 3
  %loadMem_489b1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489b1e = call %struct.Memory* @routine_cmpl__0x0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489b1e)
  store %struct.Memory* %call_489b1e, %struct.Memory** %MEMORY

  ; Code: cmovnel %ecx, %esi	 RIP: 489b21	 Bytes: 3
  %loadMem_489b21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489b21 = call %struct.Memory* @routine_cmovnel__ecx___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489b21)
  store %struct.Memory* %call_489b21, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x44(%rbp)	 RIP: 489b24	 Bytes: 3
  %loadMem_489b24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489b24 = call %struct.Memory* @routine_movl__esi__MINUS0x44__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489b24)
  store %struct.Memory* %call_489b24, %struct.Memory** %MEMORY

  ; Code: jmpq .L_489b36	 RIP: 489b27	 Bytes: 5
  %loadMem_489b27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489b27 = call %struct.Memory* @routine_jmpq_.L_489b36(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489b27, i64 15, i64 5)
  store %struct.Memory* %call_489b27, %struct.Memory** %MEMORY

  br label %block_.L_489b36

  ; Code: .L_489b2c:	 RIP: 489b2c	 Bytes: 0
block_.L_489b2c:

  ; Code: xorl %eax, %eax	 RIP: 489b2c	 Bytes: 2
  %loadMem_489b2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489b2c = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489b2c)
  store %struct.Memory* %call_489b2c, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x44(%rbp)	 RIP: 489b2e	 Bytes: 3
  %loadMem_489b2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489b2e = call %struct.Memory* @routine_movl__eax__MINUS0x44__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489b2e)
  store %struct.Memory* %call_489b2e, %struct.Memory** %MEMORY

  ; Code: jmpq .L_489b36	 RIP: 489b31	 Bytes: 5
  %loadMem_489b31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489b31 = call %struct.Memory* @routine_jmpq_.L_489b36(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489b31, i64 5, i64 5)
  store %struct.Memory* %call_489b31, %struct.Memory** %MEMORY

  br label %block_.L_489b36

  ; Code: .L_489b36:	 RIP: 489b36	 Bytes: 0
block_.L_489b36:

  ; Code: movl -0x44(%rbp), %eax	 RIP: 489b36	 Bytes: 3
  %loadMem_489b36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489b36 = call %struct.Memory* @routine_movl_MINUS0x44__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489b36)
  store %struct.Memory* %call_489b36, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x3c(%rbp)	 RIP: 489b39	 Bytes: 3
  %loadMem_489b39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489b39 = call %struct.Memory* @routine_movl__eax__MINUS0x3c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489b39)
  store %struct.Memory* %call_489b39, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 489b3c	 Bytes: 4
  %loadMem_489b3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489b3c = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489b3c)
  store %struct.Memory* %call_489b3c, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x23c(%rcx)	 RIP: 489b40	 Bytes: 7
  %loadMem_489b40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489b40 = call %struct.Memory* @routine_cmpl__0x0__0x23c__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489b40)
  store %struct.Memory* %call_489b40, %struct.Memory** %MEMORY

  ; Code: je .L_48a533	 RIP: 489b47	 Bytes: 6
  %loadMem_489b47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489b47 = call %struct.Memory* @routine_je_.L_48a533(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489b47, i8* %BRANCH_TAKEN, i64 2540, i64 6, i64 6)
  store %struct.Memory* %call_489b47, %struct.Memory** %MEMORY

  %loadBr_489b47 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_489b47 = icmp eq i8 %loadBr_489b47, 1
  br i1 %cmpBr_489b47, label %block_.L_48a533, label %block_489b4d

block_489b4d:
  ; Code: movl $0x0, -0x30(%rbp)	 RIP: 489b4d	 Bytes: 7
  %loadMem_489b4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489b4d = call %struct.Memory* @routine_movl__0x0__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489b4d)
  store %struct.Memory* %call_489b4d, %struct.Memory** %MEMORY

  ; Code: .L_489b54:	 RIP: 489b54	 Bytes: 0
  br label %block_.L_489b54
block_.L_489b54:

  ; Code: cmpl $0x4, -0x30(%rbp)	 RIP: 489b54	 Bytes: 4
  %loadMem_489b54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489b54 = call %struct.Memory* @routine_cmpl__0x4__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489b54)
  store %struct.Memory* %call_489b54, %struct.Memory** %MEMORY

  ; Code: jge .L_489ba1	 RIP: 489b58	 Bytes: 6
  %loadMem_489b58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489b58 = call %struct.Memory* @routine_jge_.L_489ba1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489b58, i8* %BRANCH_TAKEN, i64 73, i64 6, i64 6)
  store %struct.Memory* %call_489b58, %struct.Memory** %MEMORY

  %loadBr_489b58 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_489b58 = icmp eq i8 %loadBr_489b58, 1
  br i1 %cmpBr_489b58, label %block_.L_489ba1, label %block_489b5e

block_489b5e:
  ; Code: movslq -0x30(%rbp), %rax	 RIP: 489b5e	 Bytes: 4
  %loadMem_489b5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489b5e = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489b5e)
  store %struct.Memory* %call_489b5e, %struct.Memory** %MEMORY

  ; Code: movl 0x6cea10(,%rax,4), %ecx	 RIP: 489b62	 Bytes: 7
  %loadMem_489b62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489b62 = call %struct.Memory* @routine_movl_0x6cea10___rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489b62)
  store %struct.Memory* %call_489b62, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 489b69	 Bytes: 4
  %loadMem_489b69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489b69 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489b69)
  store %struct.Memory* %call_489b69, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rdx	 RIP: 489b6d	 Bytes: 4
  %loadMem_489b6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489b6d = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489b6d)
  store %struct.Memory* %call_489b6d, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x1d8(%rax,%rdx,4)	 RIP: 489b71	 Bytes: 7
  %loadMem_489b71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489b71 = call %struct.Memory* @routine_movl__ecx__0x1d8__rax__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489b71)
  store %struct.Memory* %call_489b71, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rax	 RIP: 489b78	 Bytes: 4
  %loadMem_489b78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489b78 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489b78)
  store %struct.Memory* %call_489b78, %struct.Memory** %MEMORY

  ; Code: movswl 0x710780(,%rax,2), %ecx	 RIP: 489b7c	 Bytes: 8
  %loadMem_489b7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489b7c = call %struct.Memory* @routine_movswl_0x710780___rax_2____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489b7c)
  store %struct.Memory* %call_489b7c, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 489b84	 Bytes: 4
  %loadMem_489b84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489b84 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489b84)
  store %struct.Memory* %call_489b84, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rdx	 RIP: 489b88	 Bytes: 4
  %loadMem_489b88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489b88 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489b88)
  store %struct.Memory* %call_489b88, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x1e8(%rax,%rdx,4)	 RIP: 489b8c	 Bytes: 7
  %loadMem_489b8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489b8c = call %struct.Memory* @routine_movl__ecx__0x1e8__rax__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489b8c)
  store %struct.Memory* %call_489b8c, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %eax	 RIP: 489b93	 Bytes: 3
  %loadMem_489b93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489b93 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489b93)
  store %struct.Memory* %call_489b93, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 489b96	 Bytes: 3
  %loadMem_489b96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489b96 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489b96)
  store %struct.Memory* %call_489b96, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x30(%rbp)	 RIP: 489b99	 Bytes: 3
  %loadMem_489b99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489b99 = call %struct.Memory* @routine_movl__eax__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489b99)
  store %struct.Memory* %call_489b99, %struct.Memory** %MEMORY

  ; Code: jmpq .L_489b54	 RIP: 489b9c	 Bytes: 5
  %loadMem_489b9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489b9c = call %struct.Memory* @routine_jmpq_.L_489b54(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489b9c, i64 -72, i64 5)
  store %struct.Memory* %call_489b9c, %struct.Memory** %MEMORY

  br label %block_.L_489b54

  ; Code: .L_489ba1:	 RIP: 489ba1	 Bytes: 0
block_.L_489ba1:

  ; Code: cmpl $0x0, -0x38(%rbp)	 RIP: 489ba1	 Bytes: 4
  %loadMem_489ba1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489ba1 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489ba1)
  store %struct.Memory* %call_489ba1, %struct.Memory** %MEMORY

  ; Code: je .L_489cdd	 RIP: 489ba5	 Bytes: 6
  %loadMem_489ba5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489ba5 = call %struct.Memory* @routine_je_.L_489cdd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489ba5, i8* %BRANCH_TAKEN, i64 312, i64 6, i64 6)
  store %struct.Memory* %call_489ba5, %struct.Memory** %MEMORY

  %loadBr_489ba5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_489ba5 = icmp eq i8 %loadBr_489ba5, 1
  br i1 %cmpBr_489ba5, label %block_.L_489cdd, label %block_489bab

block_489bab:
  ; Code: movl $0x0, -0x2c(%rbp)	 RIP: 489bab	 Bytes: 7
  %loadMem_489bab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489bab = call %struct.Memory* @routine_movl__0x0__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489bab)
  store %struct.Memory* %call_489bab, %struct.Memory** %MEMORY

  ; Code: .L_489bb2:	 RIP: 489bb2	 Bytes: 0
  br label %block_.L_489bb2
block_.L_489bb2:

  ; Code: cmpl $0x4, -0x2c(%rbp)	 RIP: 489bb2	 Bytes: 4
  %loadMem_489bb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489bb2 = call %struct.Memory* @routine_cmpl__0x4__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489bb2)
  store %struct.Memory* %call_489bb2, %struct.Memory** %MEMORY

  ; Code: jge .L_489cd8	 RIP: 489bb6	 Bytes: 6
  %loadMem_489bb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489bb6 = call %struct.Memory* @routine_jge_.L_489cd8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489bb6, i8* %BRANCH_TAKEN, i64 290, i64 6, i64 6)
  store %struct.Memory* %call_489bb6, %struct.Memory** %MEMORY

  %loadBr_489bb6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_489bb6 = icmp eq i8 %loadBr_489bb6, 1
  br i1 %cmpBr_489bb6, label %block_.L_489cd8, label %block_489bbc

block_489bbc:
  ; Code: movl $0x0, -0x30(%rbp)	 RIP: 489bbc	 Bytes: 7
  %loadMem_489bbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489bbc = call %struct.Memory* @routine_movl__0x0__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489bbc)
  store %struct.Memory* %call_489bbc, %struct.Memory** %MEMORY

  ; Code: .L_489bc3:	 RIP: 489bc3	 Bytes: 0
  br label %block_.L_489bc3
block_.L_489bc3:

  ; Code: cmpl $0x4, -0x30(%rbp)	 RIP: 489bc3	 Bytes: 4
  %loadMem_489bc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489bc3 = call %struct.Memory* @routine_cmpl__0x4__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489bc3)
  store %struct.Memory* %call_489bc3, %struct.Memory** %MEMORY

  ; Code: jge .L_489cc5	 RIP: 489bc7	 Bytes: 6
  %loadMem_489bc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489bc7 = call %struct.Memory* @routine_jge_.L_489cc5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489bc7, i8* %BRANCH_TAKEN, i64 254, i64 6, i64 6)
  store %struct.Memory* %call_489bc7, %struct.Memory** %MEMORY

  %loadBr_489bc7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_489bc7 = icmp eq i8 %loadBr_489bc7, 1
  br i1 %cmpBr_489bc7, label %block_.L_489cc5, label %block_489bcd

block_489bcd:
  ; Code: movl $0x2, %eax	 RIP: 489bcd	 Bytes: 5
  %loadMem_489bcd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489bcd = call %struct.Memory* @routine_movl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489bcd)
  store %struct.Memory* %call_489bcd, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %ecx	 RIP: 489bd2	 Bytes: 3
  %loadMem_489bd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489bd2 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489bd2)
  store %struct.Memory* %call_489bd2, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x48(%rbp)	 RIP: 489bd5	 Bytes: 3
  %loadMem_489bd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489bd5 = call %struct.Memory* @routine_movl__eax__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489bd5)
  store %struct.Memory* %call_489bd5, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %eax	 RIP: 489bd8	 Bytes: 2
  %loadMem_489bd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489bd8 = call %struct.Memory* @routine_movl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489bd8)
  store %struct.Memory* %call_489bd8, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 489bda	 Bytes: 1
  %loadMem_489bda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489bda = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489bda)
  store %struct.Memory* %call_489bda, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %ecx	 RIP: 489bdb	 Bytes: 3
  %loadMem_489bdb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489bdb = call %struct.Memory* @routine_movl_MINUS0x48__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489bdb)
  store %struct.Memory* %call_489bdb, %struct.Memory** %MEMORY

  ; Code: idivl %ecx	 RIP: 489bde	 Bytes: 2
  %loadMem_489bde = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489bde = call %struct.Memory* @routine_idivl__ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489bde)
  store %struct.Memory* %call_489bde, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %eax	 RIP: 489be0	 Bytes: 3
  %loadMem_489be0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489be0 = call %struct.Memory* @routine_shll__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489be0)
  store %struct.Memory* %call_489be0, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %esi	 RIP: 489be3	 Bytes: 3
  %loadMem_489be3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489be3 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489be3)
  store %struct.Memory* %call_489be3, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4c(%rbp)	 RIP: 489be6	 Bytes: 3
  %loadMem_489be6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489be6 = call %struct.Memory* @routine_movl__eax__MINUS0x4c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489be6)
  store %struct.Memory* %call_489be6, %struct.Memory** %MEMORY

  ; Code: movl %esi, %eax	 RIP: 489be9	 Bytes: 2
  %loadMem_489be9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489be9 = call %struct.Memory* @routine_movl__esi___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489be9)
  store %struct.Memory* %call_489be9, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 489beb	 Bytes: 1
  %loadMem_489beb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489beb = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489beb)
  store %struct.Memory* %call_489beb, %struct.Memory** %MEMORY

  ; Code: idivl %ecx	 RIP: 489bec	 Bytes: 2
  %loadMem_489bec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489bec = call %struct.Memory* @routine_idivl__ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489bec)
  store %struct.Memory* %call_489bec, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %esi	 RIP: 489bee	 Bytes: 3
  %loadMem_489bee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489bee = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489bee)
  store %struct.Memory* %call_489bee, %struct.Memory** %MEMORY

  ; Code: addl %eax, %esi	 RIP: 489bf1	 Bytes: 2
  %loadMem_489bf1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489bf1 = call %struct.Memory* @routine_addl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489bf1)
  store %struct.Memory* %call_489bf1, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x28(%rbp)	 RIP: 489bf3	 Bytes: 3
  %loadMem_489bf3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489bf3 = call %struct.Memory* @routine_movl__esi__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489bf3)
  store %struct.Memory* %call_489bf3, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %eax	 RIP: 489bf6	 Bytes: 3
  %loadMem_489bf6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489bf6 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489bf6)
  store %struct.Memory* %call_489bf6, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 489bf9	 Bytes: 1
  %loadMem_489bf9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489bf9 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489bf9)
  store %struct.Memory* %call_489bf9, %struct.Memory** %MEMORY

  ; Code: idivl %ecx	 RIP: 489bfa	 Bytes: 2
  %loadMem_489bfa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489bfa = call %struct.Memory* @routine_idivl__ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489bfa)
  store %struct.Memory* %call_489bfa, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %edx	 RIP: 489bfc	 Bytes: 3
  %loadMem_489bfc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489bfc = call %struct.Memory* @routine_shll__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489bfc)
  store %struct.Memory* %call_489bfc, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %esi	 RIP: 489bff	 Bytes: 3
  %loadMem_489bff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489bff = call %struct.Memory* @routine_movl_MINUS0x30__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489bff)
  store %struct.Memory* %call_489bff, %struct.Memory** %MEMORY

  ; Code: movl %esi, %eax	 RIP: 489c02	 Bytes: 2
  %loadMem_489c02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489c02 = call %struct.Memory* @routine_movl__esi___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489c02)
  store %struct.Memory* %call_489c02, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x50(%rbp)	 RIP: 489c04	 Bytes: 3
  %loadMem_489c04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489c04 = call %struct.Memory* @routine_movl__edx__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489c04)
  store %struct.Memory* %call_489c04, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 489c07	 Bytes: 1
  %loadMem_489c07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489c07 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489c07)
  store %struct.Memory* %call_489c07, %struct.Memory** %MEMORY

  ; Code: idivl %ecx	 RIP: 489c08	 Bytes: 2
  %loadMem_489c08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489c08 = call %struct.Memory* @routine_idivl__ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489c08)
  store %struct.Memory* %call_489c08, %struct.Memory** %MEMORY

  ; Code: movl -0x50(%rbp), %esi	 RIP: 489c0a	 Bytes: 3
  %loadMem_489c0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489c0a = call %struct.Memory* @routine_movl_MINUS0x50__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489c0a)
  store %struct.Memory* %call_489c0a, %struct.Memory** %MEMORY

  ; Code: addl %edx, %esi	 RIP: 489c0d	 Bytes: 2
  %loadMem_489c0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489c0d = call %struct.Memory* @routine_addl__edx___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489c0d)
  store %struct.Memory* %call_489c0d, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x34(%rbp)	 RIP: 489c0f	 Bytes: 3
  %loadMem_489c0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489c0f = call %struct.Memory* @routine_movl__esi__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489c0f)
  store %struct.Memory* %call_489c0f, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdi	 RIP: 489c12	 Bytes: 4
  %loadMem_489c12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489c12 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489c12)
  store %struct.Memory* %call_489c12, %struct.Memory** %MEMORY

  ; Code: movw 0x7236c4(,%rdi,2), %r8w	 RIP: 489c16	 Bytes: 9
  %loadMem_489c16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489c16 = call %struct.Memory* @routine_movw_0x7236c4___rdi_2____r8w(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489c16)
  store %struct.Memory* %call_489c16, %struct.Memory** %MEMORY

  ; Code: movq 0x70fcf0, %rdi	 RIP: 489c1f	 Bytes: 8
  %loadMem_489c1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489c1f = call %struct.Memory* @routine_movq_0x70fcf0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489c1f)
  store %struct.Memory* %call_489c1f, %struct.Memory** %MEMORY

  ; Code: movq 0x1950(%rdi), %rdi	 RIP: 489c27	 Bytes: 7
  %loadMem_489c27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489c27 = call %struct.Memory* @routine_movq_0x1950__rdi____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489c27)
  store %struct.Memory* %call_489c27, %struct.Memory** %MEMORY

  ; Code: movq (%rdi), %rdi	 RIP: 489c2e	 Bytes: 3
  %loadMem_489c2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489c2e = call %struct.Memory* @routine_movq___rdi____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489c2e)
  store %struct.Memory* %call_489c2e, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %r9	 RIP: 489c31	 Bytes: 8
  %loadMem_489c31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489c31 = call %struct.Memory* @routine_movq_0x6cb900___r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489c31)
  store %struct.Memory* %call_489c31, %struct.Memory** %MEMORY

  ; Code: movl 0x90(%r9), %edx	 RIP: 489c39	 Bytes: 7
  %loadMem_489c39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489c39 = call %struct.Memory* @routine_movl_0x90__r9____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489c39)
  store %struct.Memory* %call_489c39, %struct.Memory** %MEMORY

  ; Code: addl -0x30(%rbp), %edx	 RIP: 489c40	 Bytes: 3
  %loadMem_489c40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489c40 = call %struct.Memory* @routine_addl_MINUS0x30__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489c40)
  store %struct.Memory* %call_489c40, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %r9	 RIP: 489c43	 Bytes: 3
  %loadMem_489c43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489c43 = call %struct.Memory* @routine_movslq__edx___r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489c43)
  store %struct.Memory* %call_489c43, %struct.Memory** %MEMORY

  ; Code: movq (%rdi,%r9,8), %rdi	 RIP: 489c46	 Bytes: 4
  %loadMem_489c46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489c46 = call %struct.Memory* @routine_movq___rdi__r9_8____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489c46)
  store %struct.Memory* %call_489c46, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %r9	 RIP: 489c4a	 Bytes: 8
  %loadMem_489c4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489c4a = call %struct.Memory* @routine_movq_0x6cb900___r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489c4a)
  store %struct.Memory* %call_489c4a, %struct.Memory** %MEMORY

  ; Code: movl 0x94(%r9), %edx	 RIP: 489c52	 Bytes: 7
  %loadMem_489c52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489c52 = call %struct.Memory* @routine_movl_0x94__r9____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489c52)
  store %struct.Memory* %call_489c52, %struct.Memory** %MEMORY

  ; Code: addl -0x2c(%rbp), %edx	 RIP: 489c59	 Bytes: 3
  %loadMem_489c59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489c59 = call %struct.Memory* @routine_addl_MINUS0x2c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489c59)
  store %struct.Memory* %call_489c59, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %r9	 RIP: 489c5c	 Bytes: 3
  %loadMem_489c5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489c5c = call %struct.Memory* @routine_movslq__edx___r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489c5c)
  store %struct.Memory* %call_489c5c, %struct.Memory** %MEMORY

  ; Code: movw %r8w, (%rdi,%r9,2)	 RIP: 489c5f	 Bytes: 5
  %loadMem_489c5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489c5f = call %struct.Memory* @routine_movw__r8w____rdi__r9_2_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489c5f)
  store %struct.Memory* %call_489c5f, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdi	 RIP: 489c64	 Bytes: 4
  %loadMem_489c64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489c64 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489c64)
  store %struct.Memory* %call_489c64, %struct.Memory** %MEMORY

  ; Code: movw 0x725268(,%rdi,2), %r8w	 RIP: 489c68	 Bytes: 9
  %loadMem_489c68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489c68 = call %struct.Memory* @routine_movw_0x725268___rdi_2____r8w(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489c68)
  store %struct.Memory* %call_489c68, %struct.Memory** %MEMORY

  ; Code: movq 0x70fcf0, %rdi	 RIP: 489c71	 Bytes: 8
  %loadMem_489c71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489c71 = call %struct.Memory* @routine_movq_0x70fcf0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489c71)
  store %struct.Memory* %call_489c71, %struct.Memory** %MEMORY

  ; Code: movq 0x1950(%rdi), %rdi	 RIP: 489c79	 Bytes: 7
  %loadMem_489c79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489c79 = call %struct.Memory* @routine_movq_0x1950__rdi____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489c79)
  store %struct.Memory* %call_489c79, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rdi), %rdi	 RIP: 489c80	 Bytes: 4
  %loadMem_489c80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489c80 = call %struct.Memory* @routine_movq_0x8__rdi____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489c80)
  store %struct.Memory* %call_489c80, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %r9	 RIP: 489c84	 Bytes: 8
  %loadMem_489c84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489c84 = call %struct.Memory* @routine_movq_0x6cb900___r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489c84)
  store %struct.Memory* %call_489c84, %struct.Memory** %MEMORY

  ; Code: movl 0x90(%r9), %edx	 RIP: 489c8c	 Bytes: 7
  %loadMem_489c8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489c8c = call %struct.Memory* @routine_movl_0x90__r9____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489c8c)
  store %struct.Memory* %call_489c8c, %struct.Memory** %MEMORY

  ; Code: addl -0x30(%rbp), %edx	 RIP: 489c93	 Bytes: 3
  %loadMem_489c93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489c93 = call %struct.Memory* @routine_addl_MINUS0x30__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489c93)
  store %struct.Memory* %call_489c93, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %r9	 RIP: 489c96	 Bytes: 3
  %loadMem_489c96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489c96 = call %struct.Memory* @routine_movslq__edx___r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489c96)
  store %struct.Memory* %call_489c96, %struct.Memory** %MEMORY

  ; Code: movq (%rdi,%r9,8), %rdi	 RIP: 489c99	 Bytes: 4
  %loadMem_489c99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489c99 = call %struct.Memory* @routine_movq___rdi__r9_8____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489c99)
  store %struct.Memory* %call_489c99, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %r9	 RIP: 489c9d	 Bytes: 8
  %loadMem_489c9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489c9d = call %struct.Memory* @routine_movq_0x6cb900___r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489c9d)
  store %struct.Memory* %call_489c9d, %struct.Memory** %MEMORY

  ; Code: movl 0x94(%r9), %edx	 RIP: 489ca5	 Bytes: 7
  %loadMem_489ca5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489ca5 = call %struct.Memory* @routine_movl_0x94__r9____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489ca5)
  store %struct.Memory* %call_489ca5, %struct.Memory** %MEMORY

  ; Code: addl -0x2c(%rbp), %edx	 RIP: 489cac	 Bytes: 3
  %loadMem_489cac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489cac = call %struct.Memory* @routine_addl_MINUS0x2c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489cac)
  store %struct.Memory* %call_489cac, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %r9	 RIP: 489caf	 Bytes: 3
  %loadMem_489caf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489caf = call %struct.Memory* @routine_movslq__edx___r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489caf)
  store %struct.Memory* %call_489caf, %struct.Memory** %MEMORY

  ; Code: movw %r8w, (%rdi,%r9,2)	 RIP: 489cb2	 Bytes: 5
  %loadMem_489cb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489cb2 = call %struct.Memory* @routine_movw__r8w____rdi__r9_2_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489cb2)
  store %struct.Memory* %call_489cb2, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %eax	 RIP: 489cb7	 Bytes: 3
  %loadMem_489cb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489cb7 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489cb7)
  store %struct.Memory* %call_489cb7, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 489cba	 Bytes: 3
  %loadMem_489cba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489cba = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489cba)
  store %struct.Memory* %call_489cba, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x30(%rbp)	 RIP: 489cbd	 Bytes: 3
  %loadMem_489cbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489cbd = call %struct.Memory* @routine_movl__eax__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489cbd)
  store %struct.Memory* %call_489cbd, %struct.Memory** %MEMORY

  ; Code: jmpq .L_489bc3	 RIP: 489cc0	 Bytes: 5
  %loadMem_489cc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489cc0 = call %struct.Memory* @routine_jmpq_.L_489bc3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489cc0, i64 -253, i64 5)
  store %struct.Memory* %call_489cc0, %struct.Memory** %MEMORY

  br label %block_.L_489bc3

  ; Code: .L_489cc5:	 RIP: 489cc5	 Bytes: 0
block_.L_489cc5:

  ; Code: jmpq .L_489cca	 RIP: 489cc5	 Bytes: 5
  %loadMem_489cc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489cc5 = call %struct.Memory* @routine_jmpq_.L_489cca(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489cc5, i64 5, i64 5)
  store %struct.Memory* %call_489cc5, %struct.Memory** %MEMORY

  br label %block_.L_489cca

  ; Code: .L_489cca:	 RIP: 489cca	 Bytes: 0
block_.L_489cca:

  ; Code: movl -0x2c(%rbp), %eax	 RIP: 489cca	 Bytes: 3
  %loadMem_489cca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489cca = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489cca)
  store %struct.Memory* %call_489cca, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 489ccd	 Bytes: 3
  %loadMem_489ccd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489ccd = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489ccd)
  store %struct.Memory* %call_489ccd, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2c(%rbp)	 RIP: 489cd0	 Bytes: 3
  %loadMem_489cd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489cd0 = call %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489cd0)
  store %struct.Memory* %call_489cd0, %struct.Memory** %MEMORY

  ; Code: jmpq .L_489bb2	 RIP: 489cd3	 Bytes: 5
  %loadMem_489cd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489cd3 = call %struct.Memory* @routine_jmpq_.L_489bb2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489cd3, i64 -289, i64 5)
  store %struct.Memory* %call_489cd3, %struct.Memory** %MEMORY

  br label %block_.L_489bb2

  ; Code: .L_489cd8:	 RIP: 489cd8	 Bytes: 0
block_.L_489cd8:

  ; Code: jmpq .L_489dbc	 RIP: 489cd8	 Bytes: 5
  %loadMem_489cd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489cd8 = call %struct.Memory* @routine_jmpq_.L_489dbc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489cd8, i64 228, i64 5)
  store %struct.Memory* %call_489cd8, %struct.Memory** %MEMORY

  br label %block_.L_489dbc

  ; Code: .L_489cdd:	 RIP: 489cdd	 Bytes: 0
block_.L_489cdd:

  ; Code: movl $0x0, -0x2c(%rbp)	 RIP: 489cdd	 Bytes: 7
  %loadMem_489cdd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489cdd = call %struct.Memory* @routine_movl__0x0__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489cdd)
  store %struct.Memory* %call_489cdd, %struct.Memory** %MEMORY

  ; Code: .L_489ce4:	 RIP: 489ce4	 Bytes: 0
  br label %block_.L_489ce4
block_.L_489ce4:

  ; Code: cmpl $0x4, -0x2c(%rbp)	 RIP: 489ce4	 Bytes: 4
  %loadMem_489ce4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489ce4 = call %struct.Memory* @routine_cmpl__0x4__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489ce4)
  store %struct.Memory* %call_489ce4, %struct.Memory** %MEMORY

  ; Code: jge .L_489db7	 RIP: 489ce8	 Bytes: 6
  %loadMem_489ce8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489ce8 = call %struct.Memory* @routine_jge_.L_489db7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489ce8, i8* %BRANCH_TAKEN, i64 207, i64 6, i64 6)
  store %struct.Memory* %call_489ce8, %struct.Memory** %MEMORY

  %loadBr_489ce8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_489ce8 = icmp eq i8 %loadBr_489ce8, 1
  br i1 %cmpBr_489ce8, label %block_.L_489db7, label %block_489cee

block_489cee:
  ; Code: movl $0x0, -0x30(%rbp)	 RIP: 489cee	 Bytes: 7
  %loadMem_489cee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489cee = call %struct.Memory* @routine_movl__0x0__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489cee)
  store %struct.Memory* %call_489cee, %struct.Memory** %MEMORY

  ; Code: .L_489cf5:	 RIP: 489cf5	 Bytes: 0
  br label %block_.L_489cf5
block_.L_489cf5:

  ; Code: cmpl $0x4, -0x30(%rbp)	 RIP: 489cf5	 Bytes: 4
  %loadMem_489cf5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489cf5 = call %struct.Memory* @routine_cmpl__0x4__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489cf5)
  store %struct.Memory* %call_489cf5, %struct.Memory** %MEMORY

  ; Code: jge .L_489da4	 RIP: 489cf9	 Bytes: 6
  %loadMem_489cf9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489cf9 = call %struct.Memory* @routine_jge_.L_489da4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489cf9, i8* %BRANCH_TAKEN, i64 171, i64 6, i64 6)
  store %struct.Memory* %call_489cf9, %struct.Memory** %MEMORY

  %loadBr_489cf9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_489cf9 = icmp eq i8 %loadBr_489cf9, 1
  br i1 %cmpBr_489cf9, label %block_.L_489da4, label %block_489cff

block_489cff:
  ; Code: movl $0x2, %eax	 RIP: 489cff	 Bytes: 5
  %loadMem_489cff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489cff = call %struct.Memory* @routine_movl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489cff)
  store %struct.Memory* %call_489cff, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %ecx	 RIP: 489d04	 Bytes: 3
  %loadMem_489d04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489d04 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489d04)
  store %struct.Memory* %call_489d04, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x54(%rbp)	 RIP: 489d07	 Bytes: 3
  %loadMem_489d07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489d07 = call %struct.Memory* @routine_movl__eax__MINUS0x54__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489d07)
  store %struct.Memory* %call_489d07, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %eax	 RIP: 489d0a	 Bytes: 2
  %loadMem_489d0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489d0a = call %struct.Memory* @routine_movl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489d0a)
  store %struct.Memory* %call_489d0a, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 489d0c	 Bytes: 1
  %loadMem_489d0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489d0c = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489d0c)
  store %struct.Memory* %call_489d0c, %struct.Memory** %MEMORY

  ; Code: movl -0x54(%rbp), %ecx	 RIP: 489d0d	 Bytes: 3
  %loadMem_489d0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489d0d = call %struct.Memory* @routine_movl_MINUS0x54__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489d0d)
  store %struct.Memory* %call_489d0d, %struct.Memory** %MEMORY

  ; Code: idivl %ecx	 RIP: 489d10	 Bytes: 2
  %loadMem_489d10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489d10 = call %struct.Memory* @routine_idivl__ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489d10)
  store %struct.Memory* %call_489d10, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %eax	 RIP: 489d12	 Bytes: 3
  %loadMem_489d12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489d12 = call %struct.Memory* @routine_shll__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489d12)
  store %struct.Memory* %call_489d12, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %esi	 RIP: 489d15	 Bytes: 3
  %loadMem_489d15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489d15 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489d15)
  store %struct.Memory* %call_489d15, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x58(%rbp)	 RIP: 489d18	 Bytes: 3
  %loadMem_489d18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489d18 = call %struct.Memory* @routine_movl__eax__MINUS0x58__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489d18)
  store %struct.Memory* %call_489d18, %struct.Memory** %MEMORY

  ; Code: movl %esi, %eax	 RIP: 489d1b	 Bytes: 2
  %loadMem_489d1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489d1b = call %struct.Memory* @routine_movl__esi___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489d1b)
  store %struct.Memory* %call_489d1b, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 489d1d	 Bytes: 1
  %loadMem_489d1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489d1d = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489d1d)
  store %struct.Memory* %call_489d1d, %struct.Memory** %MEMORY

  ; Code: idivl %ecx	 RIP: 489d1e	 Bytes: 2
  %loadMem_489d1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489d1e = call %struct.Memory* @routine_idivl__ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489d1e)
  store %struct.Memory* %call_489d1e, %struct.Memory** %MEMORY

  ; Code: movl -0x58(%rbp), %esi	 RIP: 489d20	 Bytes: 3
  %loadMem_489d20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489d20 = call %struct.Memory* @routine_movl_MINUS0x58__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489d20)
  store %struct.Memory* %call_489d20, %struct.Memory** %MEMORY

  ; Code: addl %eax, %esi	 RIP: 489d23	 Bytes: 2
  %loadMem_489d23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489d23 = call %struct.Memory* @routine_addl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489d23)
  store %struct.Memory* %call_489d23, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x28(%rbp)	 RIP: 489d25	 Bytes: 3
  %loadMem_489d25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489d25 = call %struct.Memory* @routine_movl__esi__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489d25)
  store %struct.Memory* %call_489d25, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %eax	 RIP: 489d28	 Bytes: 3
  %loadMem_489d28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489d28 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489d28)
  store %struct.Memory* %call_489d28, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 489d2b	 Bytes: 1
  %loadMem_489d2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489d2b = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489d2b)
  store %struct.Memory* %call_489d2b, %struct.Memory** %MEMORY

  ; Code: idivl %ecx	 RIP: 489d2c	 Bytes: 2
  %loadMem_489d2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489d2c = call %struct.Memory* @routine_idivl__ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489d2c)
  store %struct.Memory* %call_489d2c, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %edx	 RIP: 489d2e	 Bytes: 3
  %loadMem_489d2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489d2e = call %struct.Memory* @routine_shll__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489d2e)
  store %struct.Memory* %call_489d2e, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %esi	 RIP: 489d31	 Bytes: 3
  %loadMem_489d31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489d31 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489d31)
  store %struct.Memory* %call_489d31, %struct.Memory** %MEMORY

  ; Code: movl %esi, %eax	 RIP: 489d34	 Bytes: 2
  %loadMem_489d34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489d34 = call %struct.Memory* @routine_movl__esi___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489d34)
  store %struct.Memory* %call_489d34, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x5c(%rbp)	 RIP: 489d36	 Bytes: 3
  %loadMem_489d36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489d36 = call %struct.Memory* @routine_movl__edx__MINUS0x5c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489d36)
  store %struct.Memory* %call_489d36, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 489d39	 Bytes: 1
  %loadMem_489d39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489d39 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489d39)
  store %struct.Memory* %call_489d39, %struct.Memory** %MEMORY

  ; Code: idivl %ecx	 RIP: 489d3a	 Bytes: 2
  %loadMem_489d3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489d3a = call %struct.Memory* @routine_idivl__ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489d3a)
  store %struct.Memory* %call_489d3a, %struct.Memory** %MEMORY

  ; Code: movl -0x5c(%rbp), %esi	 RIP: 489d3c	 Bytes: 3
  %loadMem_489d3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489d3c = call %struct.Memory* @routine_movl_MINUS0x5c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489d3c)
  store %struct.Memory* %call_489d3c, %struct.Memory** %MEMORY

  ; Code: addl %edx, %esi	 RIP: 489d3f	 Bytes: 2
  %loadMem_489d3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489d3f = call %struct.Memory* @routine_addl__edx___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489d3f)
  store %struct.Memory* %call_489d3f, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x34(%rbp)	 RIP: 489d41	 Bytes: 3
  %loadMem_489d41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489d41 = call %struct.Memory* @routine_movl__esi__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489d41)
  store %struct.Memory* %call_489d41, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdi	 RIP: 489d44	 Bytes: 4
  %loadMem_489d44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489d44 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489d44)
  store %struct.Memory* %call_489d44, %struct.Memory** %MEMORY

  ; Code: movw 0x7236c4(,%rdi,2), %r8w	 RIP: 489d48	 Bytes: 9
  %loadMem_489d48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489d48 = call %struct.Memory* @routine_movw_0x7236c4___rdi_2____r8w(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489d48)
  store %struct.Memory* %call_489d48, %struct.Memory** %MEMORY

  ; Code: movq 0x70fcf0, %rdi	 RIP: 489d51	 Bytes: 8
  %loadMem_489d51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489d51 = call %struct.Memory* @routine_movq_0x70fcf0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489d51)
  store %struct.Memory* %call_489d51, %struct.Memory** %MEMORY

  ; Code: movq 0x1950(%rdi), %rdi	 RIP: 489d59	 Bytes: 7
  %loadMem_489d59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489d59 = call %struct.Memory* @routine_movq_0x1950__rdi____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489d59)
  store %struct.Memory* %call_489d59, %struct.Memory** %MEMORY

  ; Code: movq (%rdi), %rdi	 RIP: 489d60	 Bytes: 3
  %loadMem_489d60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489d60 = call %struct.Memory* @routine_movq___rdi____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489d60)
  store %struct.Memory* %call_489d60, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %r9	 RIP: 489d63	 Bytes: 8
  %loadMem_489d63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489d63 = call %struct.Memory* @routine_movq_0x6cb900___r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489d63)
  store %struct.Memory* %call_489d63, %struct.Memory** %MEMORY

  ; Code: movl 0x90(%r9), %edx	 RIP: 489d6b	 Bytes: 7
  %loadMem_489d6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489d6b = call %struct.Memory* @routine_movl_0x90__r9____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489d6b)
  store %struct.Memory* %call_489d6b, %struct.Memory** %MEMORY

  ; Code: addl -0x30(%rbp), %edx	 RIP: 489d72	 Bytes: 3
  %loadMem_489d72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489d72 = call %struct.Memory* @routine_addl_MINUS0x30__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489d72)
  store %struct.Memory* %call_489d72, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %r9	 RIP: 489d75	 Bytes: 3
  %loadMem_489d75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489d75 = call %struct.Memory* @routine_movslq__edx___r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489d75)
  store %struct.Memory* %call_489d75, %struct.Memory** %MEMORY

  ; Code: movq (%rdi,%r9,8), %rdi	 RIP: 489d78	 Bytes: 4
  %loadMem_489d78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489d78 = call %struct.Memory* @routine_movq___rdi__r9_8____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489d78)
  store %struct.Memory* %call_489d78, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %r9	 RIP: 489d7c	 Bytes: 8
  %loadMem_489d7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489d7c = call %struct.Memory* @routine_movq_0x6cb900___r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489d7c)
  store %struct.Memory* %call_489d7c, %struct.Memory** %MEMORY

  ; Code: movl 0x94(%r9), %edx	 RIP: 489d84	 Bytes: 7
  %loadMem_489d84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489d84 = call %struct.Memory* @routine_movl_0x94__r9____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489d84)
  store %struct.Memory* %call_489d84, %struct.Memory** %MEMORY

  ; Code: addl -0x2c(%rbp), %edx	 RIP: 489d8b	 Bytes: 3
  %loadMem_489d8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489d8b = call %struct.Memory* @routine_addl_MINUS0x2c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489d8b)
  store %struct.Memory* %call_489d8b, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %r9	 RIP: 489d8e	 Bytes: 3
  %loadMem_489d8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489d8e = call %struct.Memory* @routine_movslq__edx___r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489d8e)
  store %struct.Memory* %call_489d8e, %struct.Memory** %MEMORY

  ; Code: movw %r8w, (%rdi,%r9,2)	 RIP: 489d91	 Bytes: 5
  %loadMem_489d91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489d91 = call %struct.Memory* @routine_movw__r8w____rdi__r9_2_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489d91)
  store %struct.Memory* %call_489d91, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %eax	 RIP: 489d96	 Bytes: 3
  %loadMem_489d96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489d96 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489d96)
  store %struct.Memory* %call_489d96, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 489d99	 Bytes: 3
  %loadMem_489d99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489d99 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489d99)
  store %struct.Memory* %call_489d99, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x30(%rbp)	 RIP: 489d9c	 Bytes: 3
  %loadMem_489d9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489d9c = call %struct.Memory* @routine_movl__eax__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489d9c)
  store %struct.Memory* %call_489d9c, %struct.Memory** %MEMORY

  ; Code: jmpq .L_489cf5	 RIP: 489d9f	 Bytes: 5
  %loadMem_489d9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489d9f = call %struct.Memory* @routine_jmpq_.L_489cf5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489d9f, i64 -170, i64 5)
  store %struct.Memory* %call_489d9f, %struct.Memory** %MEMORY

  br label %block_.L_489cf5

  ; Code: .L_489da4:	 RIP: 489da4	 Bytes: 0
block_.L_489da4:

  ; Code: jmpq .L_489da9	 RIP: 489da4	 Bytes: 5
  %loadMem_489da4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489da4 = call %struct.Memory* @routine_jmpq_.L_489da9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489da4, i64 5, i64 5)
  store %struct.Memory* %call_489da4, %struct.Memory** %MEMORY

  br label %block_.L_489da9

  ; Code: .L_489da9:	 RIP: 489da9	 Bytes: 0
block_.L_489da9:

  ; Code: movl -0x2c(%rbp), %eax	 RIP: 489da9	 Bytes: 3
  %loadMem_489da9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489da9 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489da9)
  store %struct.Memory* %call_489da9, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 489dac	 Bytes: 3
  %loadMem_489dac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489dac = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489dac)
  store %struct.Memory* %call_489dac, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2c(%rbp)	 RIP: 489daf	 Bytes: 3
  %loadMem_489daf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489daf = call %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489daf)
  store %struct.Memory* %call_489daf, %struct.Memory** %MEMORY

  ; Code: jmpq .L_489ce4	 RIP: 489db2	 Bytes: 5
  %loadMem_489db2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489db2 = call %struct.Memory* @routine_jmpq_.L_489ce4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489db2, i64 -206, i64 5)
  store %struct.Memory* %call_489db2, %struct.Memory** %MEMORY

  br label %block_.L_489ce4

  ; Code: .L_489db7:	 RIP: 489db7	 Bytes: 0
block_.L_489db7:

  ; Code: jmpq .L_489dbc	 RIP: 489db7	 Bytes: 5
  %loadMem_489db7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489db7 = call %struct.Memory* @routine_jmpq_.L_489dbc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489db7, i64 5, i64 5)
  store %struct.Memory* %call_489db7, %struct.Memory** %MEMORY

  br label %block_.L_489dbc

  ; Code: .L_489dbc:	 RIP: 489dbc	 Bytes: 0
block_.L_489dbc:

  ; Code: movl $0x0, -0x2c(%rbp)	 RIP: 489dbc	 Bytes: 7
  %loadMem_489dbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489dbc = call %struct.Memory* @routine_movl__0x0__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489dbc)
  store %struct.Memory* %call_489dbc, %struct.Memory** %MEMORY

  ; Code: .L_489dc3:	 RIP: 489dc3	 Bytes: 0
  br label %block_.L_489dc3
block_.L_489dc3:

  ; Code: cmpl $0x4, -0x2c(%rbp)	 RIP: 489dc3	 Bytes: 4
  %loadMem_489dc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489dc3 = call %struct.Memory* @routine_cmpl__0x4__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489dc3)
  store %struct.Memory* %call_489dc3, %struct.Memory** %MEMORY

  ; Code: jge .L_489f0f	 RIP: 489dc7	 Bytes: 6
  %loadMem_489dc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489dc7 = call %struct.Memory* @routine_jge_.L_489f0f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489dc7, i8* %BRANCH_TAKEN, i64 328, i64 6, i64 6)
  store %struct.Memory* %call_489dc7, %struct.Memory** %MEMORY

  %loadBr_489dc7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_489dc7 = icmp eq i8 %loadBr_489dc7, 1
  br i1 %cmpBr_489dc7, label %block_.L_489f0f, label %block_489dcd

block_489dcd:
  ; Code: movl $0x0, -0x30(%rbp)	 RIP: 489dcd	 Bytes: 7
  %loadMem_489dcd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489dcd = call %struct.Memory* @routine_movl__0x0__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489dcd)
  store %struct.Memory* %call_489dcd, %struct.Memory** %MEMORY

  ; Code: .L_489dd4:	 RIP: 489dd4	 Bytes: 0
  br label %block_.L_489dd4
block_.L_489dd4:

  ; Code: cmpl $0x4, -0x30(%rbp)	 RIP: 489dd4	 Bytes: 4
  %loadMem_489dd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489dd4 = call %struct.Memory* @routine_cmpl__0x4__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489dd4)
  store %struct.Memory* %call_489dd4, %struct.Memory** %MEMORY

  ; Code: jge .L_489efc	 RIP: 489dd8	 Bytes: 6
  %loadMem_489dd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489dd8 = call %struct.Memory* @routine_jge_.L_489efc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489dd8, i8* %BRANCH_TAKEN, i64 292, i64 6, i64 6)
  store %struct.Memory* %call_489dd8, %struct.Memory** %MEMORY

  %loadBr_489dd8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_489dd8 = icmp eq i8 %loadBr_489dd8, 1
  br i1 %cmpBr_489dd8, label %block_.L_489efc, label %block_489dde

block_489dde:
  ; Code: movq 0x70fcf0, %rax	 RIP: 489dde	 Bytes: 8
  %loadMem_489dde = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489dde = call %struct.Memory* @routine_movq_0x70fcf0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489dde)
  store %struct.Memory* %call_489dde, %struct.Memory** %MEMORY

  ; Code: movq 0x1950(%rax), %rax	 RIP: 489de6	 Bytes: 7
  %loadMem_489de6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489de6 = call %struct.Memory* @routine_movq_0x1950__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489de6)
  store %struct.Memory* %call_489de6, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 489ded	 Bytes: 3
  %loadMem_489ded = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489ded = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489ded)
  store %struct.Memory* %call_489ded, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 489df0	 Bytes: 8
  %loadMem_489df0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489df0 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489df0)
  store %struct.Memory* %call_489df0, %struct.Memory** %MEMORY

  ; Code: movl 0x90(%rcx), %edx	 RIP: 489df8	 Bytes: 6
  %loadMem_489df8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489df8 = call %struct.Memory* @routine_movl_0x90__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489df8)
  store %struct.Memory* %call_489df8, %struct.Memory** %MEMORY

  ; Code: addl -0x30(%rbp), %edx	 RIP: 489dfe	 Bytes: 3
  %loadMem_489dfe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489dfe = call %struct.Memory* @routine_addl_MINUS0x30__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489dfe)
  store %struct.Memory* %call_489dfe, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 489e01	 Bytes: 3
  %loadMem_489e01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489e01 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489e01)
  store %struct.Memory* %call_489e01, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 489e04	 Bytes: 4
  %loadMem_489e04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489e04 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489e04)
  store %struct.Memory* %call_489e04, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 489e08	 Bytes: 8
  %loadMem_489e08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489e08 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489e08)
  store %struct.Memory* %call_489e08, %struct.Memory** %MEMORY

  ; Code: movl 0x94(%rcx), %edx	 RIP: 489e10	 Bytes: 6
  %loadMem_489e10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489e10 = call %struct.Memory* @routine_movl_0x94__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489e10)
  store %struct.Memory* %call_489e10, %struct.Memory** %MEMORY

  ; Code: addl -0x2c(%rbp), %edx	 RIP: 489e16	 Bytes: 3
  %loadMem_489e16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489e16 = call %struct.Memory* @routine_addl_MINUS0x2c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489e16)
  store %struct.Memory* %call_489e16, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 489e19	 Bytes: 3
  %loadMem_489e19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489e19 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489e19)
  store %struct.Memory* %call_489e19, %struct.Memory** %MEMORY

  ; Code: movswl (%rax,%rcx,2), %edx	 RIP: 489e1c	 Bytes: 4
  %loadMem_489e1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489e1c = call %struct.Memory* @routine_movswl___rax__rcx_2____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489e1c)
  store %struct.Memory* %call_489e1c, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %edx	 RIP: 489e20	 Bytes: 3
  %loadMem_489e20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489e20 = call %struct.Memory* @routine_cmpl__0x0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489e20)
  store %struct.Memory* %call_489e20, %struct.Memory** %MEMORY

  ; Code: jl .L_489e98	 RIP: 489e23	 Bytes: 6
  %loadMem_489e23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489e23 = call %struct.Memory* @routine_jl_.L_489e98(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489e23, i8* %BRANCH_TAKEN, i64 117, i64 6, i64 6)
  store %struct.Memory* %call_489e23, %struct.Memory** %MEMORY

  %loadBr_489e23 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_489e23 = icmp eq i8 %loadBr_489e23, 1
  br i1 %cmpBr_489e23, label %block_.L_489e98, label %block_489e29

block_489e29:
  ; Code: movq 0x70fcf0, %rax	 RIP: 489e29	 Bytes: 8
  %loadMem_489e29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489e29 = call %struct.Memory* @routine_movq_0x70fcf0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489e29)
  store %struct.Memory* %call_489e29, %struct.Memory** %MEMORY

  ; Code: addq $0x18, %rax	 RIP: 489e31	 Bytes: 4
  %loadMem_489e31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489e31 = call %struct.Memory* @routine_addq__0x18___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489e31)
  store %struct.Memory* %call_489e31, %struct.Memory** %MEMORY

  ; Code: movl -0x3c(%rbp), %ecx	 RIP: 489e35	 Bytes: 3
  %loadMem_489e35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489e35 = call %struct.Memory* @routine_movl_MINUS0x3c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489e35)
  store %struct.Memory* %call_489e35, %struct.Memory** %MEMORY

  ; Code: addl $0x0, %ecx	 RIP: 489e38	 Bytes: 3
  %loadMem_489e38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489e38 = call %struct.Memory* @routine_addl__0x0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489e38)
  store %struct.Memory* %call_489e38, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 489e3b	 Bytes: 3
  %loadMem_489e3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489e3b = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489e3b)
  store %struct.Memory* %call_489e3b, %struct.Memory** %MEMORY

  ; Code: imulq $0x108, %rdx, %rdx	 RIP: 489e3e	 Bytes: 7
  %loadMem_489e3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489e3e = call %struct.Memory* @routine_imulq__0x108___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489e3e)
  store %struct.Memory* %call_489e3e, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 489e45	 Bytes: 3
  %loadMem_489e45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489e45 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489e45)
  store %struct.Memory* %call_489e45, %struct.Memory** %MEMORY

  ; Code: movq 0x70fcf0, %rdx	 RIP: 489e48	 Bytes: 8
  %loadMem_489e48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489e48 = call %struct.Memory* @routine_movq_0x70fcf0___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489e48)
  store %struct.Memory* %call_489e48, %struct.Memory** %MEMORY

  ; Code: movq 0x1950(%rdx), %rdx	 RIP: 489e50	 Bytes: 7
  %loadMem_489e50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489e50 = call %struct.Memory* @routine_movq_0x1950__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489e50)
  store %struct.Memory* %call_489e50, %struct.Memory** %MEMORY

  ; Code: movq (%rdx), %rdx	 RIP: 489e57	 Bytes: 3
  %loadMem_489e57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489e57 = call %struct.Memory* @routine_movq___rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489e57)
  store %struct.Memory* %call_489e57, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rsi	 RIP: 489e5a	 Bytes: 8
  %loadMem_489e5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489e5a = call %struct.Memory* @routine_movq_0x6cb900___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489e5a)
  store %struct.Memory* %call_489e5a, %struct.Memory** %MEMORY

  ; Code: movl 0x90(%rsi), %ecx	 RIP: 489e62	 Bytes: 6
  %loadMem_489e62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489e62 = call %struct.Memory* @routine_movl_0x90__rsi____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489e62)
  store %struct.Memory* %call_489e62, %struct.Memory** %MEMORY

  ; Code: addl -0x30(%rbp), %ecx	 RIP: 489e68	 Bytes: 3
  %loadMem_489e68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489e68 = call %struct.Memory* @routine_addl_MINUS0x30__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489e68)
  store %struct.Memory* %call_489e68, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 489e6b	 Bytes: 3
  %loadMem_489e6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489e6b = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489e6b)
  store %struct.Memory* %call_489e6b, %struct.Memory** %MEMORY

  ; Code: movq (%rdx,%rsi,8), %rdx	 RIP: 489e6e	 Bytes: 4
  %loadMem_489e6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489e6e = call %struct.Memory* @routine_movq___rdx__rsi_8____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489e6e)
  store %struct.Memory* %call_489e6e, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rsi	 RIP: 489e72	 Bytes: 8
  %loadMem_489e72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489e72 = call %struct.Memory* @routine_movq_0x6cb900___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489e72)
  store %struct.Memory* %call_489e72, %struct.Memory** %MEMORY

  ; Code: movl 0x94(%rsi), %ecx	 RIP: 489e7a	 Bytes: 6
  %loadMem_489e7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489e7a = call %struct.Memory* @routine_movl_0x94__rsi____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489e7a)
  store %struct.Memory* %call_489e7a, %struct.Memory** %MEMORY

  ; Code: addl -0x2c(%rbp), %ecx	 RIP: 489e80	 Bytes: 3
  %loadMem_489e80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489e80 = call %struct.Memory* @routine_addl_MINUS0x2c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489e80)
  store %struct.Memory* %call_489e80, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 489e83	 Bytes: 3
  %loadMem_489e83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489e83 = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489e83)
  store %struct.Memory* %call_489e83, %struct.Memory** %MEMORY

  ; Code: movswq (%rdx,%rsi,2), %rdx	 RIP: 489e86	 Bytes: 5
  %loadMem_489e86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489e86 = call %struct.Memory* @routine_movswq___rdx__rsi_2____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489e86)
  store %struct.Memory* %call_489e86, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 489e8b	 Bytes: 4
  %loadMem_489e8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489e8b = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489e8b)
  store %struct.Memory* %call_489e8b, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x68(%rbp)	 RIP: 489e8f	 Bytes: 4
  %loadMem_489e8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489e8f = call %struct.Memory* @routine_movq__rax__MINUS0x68__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489e8f)
  store %struct.Memory* %call_489e8f, %struct.Memory** %MEMORY

  ; Code: jmpq .L_489ea8	 RIP: 489e93	 Bytes: 5
  %loadMem_489e93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489e93 = call %struct.Memory* @routine_jmpq_.L_489ea8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489e93, i64 21, i64 5)
  store %struct.Memory* %call_489e93, %struct.Memory** %MEMORY

  br label %block_.L_489ea8

  ; Code: .L_489e98:	 RIP: 489e98	 Bytes: 0
block_.L_489e98:

  ; Code: movq $0xffffffffffffffff, %rax	 RIP: 489e98	 Bytes: 7
  %loadMem_489e98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489e98 = call %struct.Memory* @routine_movq__0xffffffffffffffff___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489e98)
  store %struct.Memory* %call_489e98, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x68(%rbp)	 RIP: 489e9f	 Bytes: 4
  %loadMem_489e9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489e9f = call %struct.Memory* @routine_movq__rax__MINUS0x68__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489e9f)
  store %struct.Memory* %call_489e9f, %struct.Memory** %MEMORY

  ; Code: jmpq .L_489ea8	 RIP: 489ea3	 Bytes: 5
  %loadMem_489ea3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489ea3 = call %struct.Memory* @routine_jmpq_.L_489ea8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489ea3, i64 5, i64 5)
  store %struct.Memory* %call_489ea3, %struct.Memory** %MEMORY

  br label %block_.L_489ea8

  ; Code: .L_489ea8:	 RIP: 489ea8	 Bytes: 0
block_.L_489ea8:

  ; Code: movq -0x68(%rbp), %rax	 RIP: 489ea8	 Bytes: 4
  %loadMem_489ea8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489ea8 = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489ea8)
  store %struct.Memory* %call_489ea8, %struct.Memory** %MEMORY

  ; Code: movq 0x70fcf0, %rcx	 RIP: 489eac	 Bytes: 8
  %loadMem_489eac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489eac = call %struct.Memory* @routine_movq_0x70fcf0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489eac)
  store %struct.Memory* %call_489eac, %struct.Memory** %MEMORY

  ; Code: movq 0x1958(%rcx), %rcx	 RIP: 489eb4	 Bytes: 7
  %loadMem_489eb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489eb4 = call %struct.Memory* @routine_movq_0x1958__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489eb4)
  store %struct.Memory* %call_489eb4, %struct.Memory** %MEMORY

  ; Code: movq (%rcx), %rcx	 RIP: 489ebb	 Bytes: 3
  %loadMem_489ebb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489ebb = call %struct.Memory* @routine_movq___rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489ebb)
  store %struct.Memory* %call_489ebb, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rdx	 RIP: 489ebe	 Bytes: 8
  %loadMem_489ebe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489ebe = call %struct.Memory* @routine_movq_0x6cb900___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489ebe)
  store %struct.Memory* %call_489ebe, %struct.Memory** %MEMORY

  ; Code: movl 0x90(%rdx), %esi	 RIP: 489ec6	 Bytes: 6
  %loadMem_489ec6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489ec6 = call %struct.Memory* @routine_movl_0x90__rdx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489ec6)
  store %struct.Memory* %call_489ec6, %struct.Memory** %MEMORY

  ; Code: addl -0x30(%rbp), %esi	 RIP: 489ecc	 Bytes: 3
  %loadMem_489ecc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489ecc = call %struct.Memory* @routine_addl_MINUS0x30__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489ecc)
  store %struct.Memory* %call_489ecc, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rdx	 RIP: 489ecf	 Bytes: 3
  %loadMem_489ecf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489ecf = call %struct.Memory* @routine_movslq__esi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489ecf)
  store %struct.Memory* %call_489ecf, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 489ed2	 Bytes: 4
  %loadMem_489ed2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489ed2 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489ed2)
  store %struct.Memory* %call_489ed2, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rdx	 RIP: 489ed6	 Bytes: 8
  %loadMem_489ed6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489ed6 = call %struct.Memory* @routine_movq_0x6cb900___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489ed6)
  store %struct.Memory* %call_489ed6, %struct.Memory** %MEMORY

  ; Code: movl 0x94(%rdx), %esi	 RIP: 489ede	 Bytes: 6
  %loadMem_489ede = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489ede = call %struct.Memory* @routine_movl_0x94__rdx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489ede)
  store %struct.Memory* %call_489ede, %struct.Memory** %MEMORY

  ; Code: addl -0x2c(%rbp), %esi	 RIP: 489ee4	 Bytes: 3
  %loadMem_489ee4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489ee4 = call %struct.Memory* @routine_addl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489ee4)
  store %struct.Memory* %call_489ee4, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rdx	 RIP: 489ee7	 Bytes: 3
  %loadMem_489ee7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489ee7 = call %struct.Memory* @routine_movslq__esi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489ee7)
  store %struct.Memory* %call_489ee7, %struct.Memory** %MEMORY

  ; Code: movq %rax, (%rcx,%rdx,8)	 RIP: 489eea	 Bytes: 4
  %loadMem_489eea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489eea = call %struct.Memory* @routine_movq__rax____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489eea)
  store %struct.Memory* %call_489eea, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %eax	 RIP: 489eee	 Bytes: 3
  %loadMem_489eee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489eee = call %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489eee)
  store %struct.Memory* %call_489eee, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 489ef1	 Bytes: 3
  %loadMem_489ef1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489ef1 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489ef1)
  store %struct.Memory* %call_489ef1, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x30(%rbp)	 RIP: 489ef4	 Bytes: 3
  %loadMem_489ef4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489ef4 = call %struct.Memory* @routine_movl__eax__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489ef4)
  store %struct.Memory* %call_489ef4, %struct.Memory** %MEMORY

  ; Code: jmpq .L_489dd4	 RIP: 489ef7	 Bytes: 5
  %loadMem_489ef7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489ef7 = call %struct.Memory* @routine_jmpq_.L_489dd4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489ef7, i64 -291, i64 5)
  store %struct.Memory* %call_489ef7, %struct.Memory** %MEMORY

  br label %block_.L_489dd4

  ; Code: .L_489efc:	 RIP: 489efc	 Bytes: 0
block_.L_489efc:

  ; Code: jmpq .L_489f01	 RIP: 489efc	 Bytes: 5
  %loadMem_489efc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489efc = call %struct.Memory* @routine_jmpq_.L_489f01(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489efc, i64 5, i64 5)
  store %struct.Memory* %call_489efc, %struct.Memory** %MEMORY

  br label %block_.L_489f01

  ; Code: .L_489f01:	 RIP: 489f01	 Bytes: 0
block_.L_489f01:

  ; Code: movl -0x2c(%rbp), %eax	 RIP: 489f01	 Bytes: 3
  %loadMem_489f01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489f01 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489f01)
  store %struct.Memory* %call_489f01, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 489f04	 Bytes: 3
  %loadMem_489f04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489f04 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489f04)
  store %struct.Memory* %call_489f04, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2c(%rbp)	 RIP: 489f07	 Bytes: 3
  %loadMem_489f07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489f07 = call %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489f07)
  store %struct.Memory* %call_489f07, %struct.Memory** %MEMORY

  ; Code: jmpq .L_489dc3	 RIP: 489f0a	 Bytes: 5
  %loadMem_489f0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489f0a = call %struct.Memory* @routine_jmpq_.L_489dc3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489f0a, i64 -327, i64 5)
  store %struct.Memory* %call_489f0a, %struct.Memory** %MEMORY

  br label %block_.L_489dc3

  ; Code: .L_489f0f:	 RIP: 489f0f	 Bytes: 0
block_.L_489f0f:

  ; Code: cmpl $0x0, -0x38(%rbp)	 RIP: 489f0f	 Bytes: 4
  %loadMem_489f0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489f0f = call %struct.Memory* @routine_cmpl__0x0__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489f0f)
  store %struct.Memory* %call_489f0f, %struct.Memory** %MEMORY

  ; Code: je .L_48a074	 RIP: 489f13	 Bytes: 6
  %loadMem_489f13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489f13 = call %struct.Memory* @routine_je_.L_48a074(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489f13, i8* %BRANCH_TAKEN, i64 353, i64 6, i64 6)
  store %struct.Memory* %call_489f13, %struct.Memory** %MEMORY

  %loadBr_489f13 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_489f13 = icmp eq i8 %loadBr_489f13, 1
  br i1 %cmpBr_489f13, label %block_.L_48a074, label %block_489f19

block_489f19:
  ; Code: movl $0x0, -0x2c(%rbp)	 RIP: 489f19	 Bytes: 7
  %loadMem_489f19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489f19 = call %struct.Memory* @routine_movl__0x0__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489f19)
  store %struct.Memory* %call_489f19, %struct.Memory** %MEMORY

  ; Code: .L_489f20:	 RIP: 489f20	 Bytes: 0
  br label %block_.L_489f20
block_.L_489f20:

  ; Code: cmpl $0x4, -0x2c(%rbp)	 RIP: 489f20	 Bytes: 4
  %loadMem_489f20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489f20 = call %struct.Memory* @routine_cmpl__0x4__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489f20)
  store %struct.Memory* %call_489f20, %struct.Memory** %MEMORY

  ; Code: jge .L_48a06f	 RIP: 489f24	 Bytes: 6
  %loadMem_489f24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489f24 = call %struct.Memory* @routine_jge_.L_48a06f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489f24, i8* %BRANCH_TAKEN, i64 331, i64 6, i64 6)
  store %struct.Memory* %call_489f24, %struct.Memory** %MEMORY

  %loadBr_489f24 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_489f24 = icmp eq i8 %loadBr_489f24, 1
  br i1 %cmpBr_489f24, label %block_.L_48a06f, label %block_489f2a

block_489f2a:
  ; Code: movl $0x0, -0x30(%rbp)	 RIP: 489f2a	 Bytes: 7
  %loadMem_489f2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489f2a = call %struct.Memory* @routine_movl__0x0__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489f2a)
  store %struct.Memory* %call_489f2a, %struct.Memory** %MEMORY

  ; Code: .L_489f31:	 RIP: 489f31	 Bytes: 0
  br label %block_.L_489f31
block_.L_489f31:

  ; Code: cmpl $0x4, -0x30(%rbp)	 RIP: 489f31	 Bytes: 4
  %loadMem_489f31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489f31 = call %struct.Memory* @routine_cmpl__0x4__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489f31)
  store %struct.Memory* %call_489f31, %struct.Memory** %MEMORY

  ; Code: jge .L_48a05c	 RIP: 489f35	 Bytes: 6
  %loadMem_489f35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489f35 = call %struct.Memory* @routine_jge_.L_48a05c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489f35, i8* %BRANCH_TAKEN, i64 295, i64 6, i64 6)
  store %struct.Memory* %call_489f35, %struct.Memory** %MEMORY

  %loadBr_489f35 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_489f35 = icmp eq i8 %loadBr_489f35, 1
  br i1 %cmpBr_489f35, label %block_.L_48a05c, label %block_489f3b

block_489f3b:
  ; Code: movq 0x70fcf0, %rax	 RIP: 489f3b	 Bytes: 8
  %loadMem_489f3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489f3b = call %struct.Memory* @routine_movq_0x70fcf0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489f3b)
  store %struct.Memory* %call_489f3b, %struct.Memory** %MEMORY

  ; Code: movq 0x1950(%rax), %rax	 RIP: 489f43	 Bytes: 7
  %loadMem_489f43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489f43 = call %struct.Memory* @routine_movq_0x1950__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489f43)
  store %struct.Memory* %call_489f43, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rax), %rax	 RIP: 489f4a	 Bytes: 4
  %loadMem_489f4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489f4a = call %struct.Memory* @routine_movq_0x8__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489f4a)
  store %struct.Memory* %call_489f4a, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 489f4e	 Bytes: 8
  %loadMem_489f4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489f4e = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489f4e)
  store %struct.Memory* %call_489f4e, %struct.Memory** %MEMORY

  ; Code: movl 0x90(%rcx), %edx	 RIP: 489f56	 Bytes: 6
  %loadMem_489f56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489f56 = call %struct.Memory* @routine_movl_0x90__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489f56)
  store %struct.Memory* %call_489f56, %struct.Memory** %MEMORY

  ; Code: addl -0x30(%rbp), %edx	 RIP: 489f5c	 Bytes: 3
  %loadMem_489f5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489f5c = call %struct.Memory* @routine_addl_MINUS0x30__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489f5c)
  store %struct.Memory* %call_489f5c, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 489f5f	 Bytes: 3
  %loadMem_489f5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489f5f = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489f5f)
  store %struct.Memory* %call_489f5f, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 489f62	 Bytes: 4
  %loadMem_489f62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489f62 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489f62)
  store %struct.Memory* %call_489f62, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 489f66	 Bytes: 8
  %loadMem_489f66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489f66 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489f66)
  store %struct.Memory* %call_489f66, %struct.Memory** %MEMORY

  ; Code: movl 0x94(%rcx), %edx	 RIP: 489f6e	 Bytes: 6
  %loadMem_489f6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489f6e = call %struct.Memory* @routine_movl_0x94__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489f6e)
  store %struct.Memory* %call_489f6e, %struct.Memory** %MEMORY

  ; Code: addl -0x2c(%rbp), %edx	 RIP: 489f74	 Bytes: 3
  %loadMem_489f74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489f74 = call %struct.Memory* @routine_addl_MINUS0x2c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489f74)
  store %struct.Memory* %call_489f74, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 489f77	 Bytes: 3
  %loadMem_489f77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489f77 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489f77)
  store %struct.Memory* %call_489f77, %struct.Memory** %MEMORY

  ; Code: movswl (%rax,%rcx,2), %edx	 RIP: 489f7a	 Bytes: 4
  %loadMem_489f7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489f7a = call %struct.Memory* @routine_movswl___rax__rcx_2____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489f7a)
  store %struct.Memory* %call_489f7a, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %edx	 RIP: 489f7e	 Bytes: 3
  %loadMem_489f7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489f7e = call %struct.Memory* @routine_cmpl__0x0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489f7e)
  store %struct.Memory* %call_489f7e, %struct.Memory** %MEMORY

  ; Code: jl .L_489ff7	 RIP: 489f81	 Bytes: 6
  %loadMem_489f81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489f81 = call %struct.Memory* @routine_jl_.L_489ff7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489f81, i8* %BRANCH_TAKEN, i64 118, i64 6, i64 6)
  store %struct.Memory* %call_489f81, %struct.Memory** %MEMORY

  %loadBr_489f81 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_489f81 = icmp eq i8 %loadBr_489f81, 1
  br i1 %cmpBr_489f81, label %block_.L_489ff7, label %block_489f87

block_489f87:
  ; Code: movq 0x70fcf0, %rax	 RIP: 489f87	 Bytes: 8
  %loadMem_489f87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489f87 = call %struct.Memory* @routine_movq_0x70fcf0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489f87)
  store %struct.Memory* %call_489f87, %struct.Memory** %MEMORY

  ; Code: addq $0x18, %rax	 RIP: 489f8f	 Bytes: 4
  %loadMem_489f8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489f8f = call %struct.Memory* @routine_addq__0x18___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489f8f)
  store %struct.Memory* %call_489f8f, %struct.Memory** %MEMORY

  ; Code: movl -0x3c(%rbp), %ecx	 RIP: 489f93	 Bytes: 3
  %loadMem_489f93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489f93 = call %struct.Memory* @routine_movl_MINUS0x3c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489f93)
  store %struct.Memory* %call_489f93, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 489f96	 Bytes: 3
  %loadMem_489f96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489f96 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489f96)
  store %struct.Memory* %call_489f96, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 489f99	 Bytes: 3
  %loadMem_489f99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489f99 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489f99)
  store %struct.Memory* %call_489f99, %struct.Memory** %MEMORY

  ; Code: imulq $0x108, %rdx, %rdx	 RIP: 489f9c	 Bytes: 7
  %loadMem_489f9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489f9c = call %struct.Memory* @routine_imulq__0x108___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489f9c)
  store %struct.Memory* %call_489f9c, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 489fa3	 Bytes: 3
  %loadMem_489fa3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489fa3 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489fa3)
  store %struct.Memory* %call_489fa3, %struct.Memory** %MEMORY

  ; Code: movq 0x70fcf0, %rdx	 RIP: 489fa6	 Bytes: 8
  %loadMem_489fa6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489fa6 = call %struct.Memory* @routine_movq_0x70fcf0___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489fa6)
  store %struct.Memory* %call_489fa6, %struct.Memory** %MEMORY

  ; Code: movq 0x1950(%rdx), %rdx	 RIP: 489fae	 Bytes: 7
  %loadMem_489fae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489fae = call %struct.Memory* @routine_movq_0x1950__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489fae)
  store %struct.Memory* %call_489fae, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rdx), %rdx	 RIP: 489fb5	 Bytes: 4
  %loadMem_489fb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489fb5 = call %struct.Memory* @routine_movq_0x8__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489fb5)
  store %struct.Memory* %call_489fb5, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rsi	 RIP: 489fb9	 Bytes: 8
  %loadMem_489fb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489fb9 = call %struct.Memory* @routine_movq_0x6cb900___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489fb9)
  store %struct.Memory* %call_489fb9, %struct.Memory** %MEMORY

  ; Code: movl 0x90(%rsi), %ecx	 RIP: 489fc1	 Bytes: 6
  %loadMem_489fc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489fc1 = call %struct.Memory* @routine_movl_0x90__rsi____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489fc1)
  store %struct.Memory* %call_489fc1, %struct.Memory** %MEMORY

  ; Code: addl -0x30(%rbp), %ecx	 RIP: 489fc7	 Bytes: 3
  %loadMem_489fc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489fc7 = call %struct.Memory* @routine_addl_MINUS0x30__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489fc7)
  store %struct.Memory* %call_489fc7, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 489fca	 Bytes: 3
  %loadMem_489fca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489fca = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489fca)
  store %struct.Memory* %call_489fca, %struct.Memory** %MEMORY

  ; Code: movq (%rdx,%rsi,8), %rdx	 RIP: 489fcd	 Bytes: 4
  %loadMem_489fcd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489fcd = call %struct.Memory* @routine_movq___rdx__rsi_8____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489fcd)
  store %struct.Memory* %call_489fcd, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rsi	 RIP: 489fd1	 Bytes: 8
  %loadMem_489fd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489fd1 = call %struct.Memory* @routine_movq_0x6cb900___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489fd1)
  store %struct.Memory* %call_489fd1, %struct.Memory** %MEMORY

  ; Code: movl 0x94(%rsi), %ecx	 RIP: 489fd9	 Bytes: 6
  %loadMem_489fd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489fd9 = call %struct.Memory* @routine_movl_0x94__rsi____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489fd9)
  store %struct.Memory* %call_489fd9, %struct.Memory** %MEMORY

  ; Code: addl -0x2c(%rbp), %ecx	 RIP: 489fdf	 Bytes: 3
  %loadMem_489fdf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489fdf = call %struct.Memory* @routine_addl_MINUS0x2c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489fdf)
  store %struct.Memory* %call_489fdf, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 489fe2	 Bytes: 3
  %loadMem_489fe2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489fe2 = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489fe2)
  store %struct.Memory* %call_489fe2, %struct.Memory** %MEMORY

  ; Code: movswq (%rdx,%rsi,2), %rdx	 RIP: 489fe5	 Bytes: 5
  %loadMem_489fe5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489fe5 = call %struct.Memory* @routine_movswq___rdx__rsi_2____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489fe5)
  store %struct.Memory* %call_489fe5, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 489fea	 Bytes: 4
  %loadMem_489fea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489fea = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489fea)
  store %struct.Memory* %call_489fea, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x70(%rbp)	 RIP: 489fee	 Bytes: 4
  %loadMem_489fee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489fee = call %struct.Memory* @routine_movq__rax__MINUS0x70__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489fee)
  store %struct.Memory* %call_489fee, %struct.Memory** %MEMORY

  ; Code: jmpq .L_48a007	 RIP: 489ff2	 Bytes: 5
  %loadMem_489ff2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489ff2 = call %struct.Memory* @routine_jmpq_.L_48a007(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489ff2, i64 21, i64 5)
  store %struct.Memory* %call_489ff2, %struct.Memory** %MEMORY

  br label %block_.L_48a007

  ; Code: .L_489ff7:	 RIP: 489ff7	 Bytes: 0
block_.L_489ff7:

  ; Code: movq $0xffffffffffffffff, %rax	 RIP: 489ff7	 Bytes: 7
  %loadMem_489ff7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489ff7 = call %struct.Memory* @routine_movq__0xffffffffffffffff___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489ff7)
  store %struct.Memory* %call_489ff7, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x70(%rbp)	 RIP: 489ffe	 Bytes: 4
  %loadMem_489ffe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_489ffe = call %struct.Memory* @routine_movq__rax__MINUS0x70__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_489ffe)
  store %struct.Memory* %call_489ffe, %struct.Memory** %MEMORY

  ; Code: jmpq .L_48a007	 RIP: 48a002	 Bytes: 5
  %loadMem_48a002 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a002 = call %struct.Memory* @routine_jmpq_.L_48a007(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a002, i64 5, i64 5)
  store %struct.Memory* %call_48a002, %struct.Memory** %MEMORY

  br label %block_.L_48a007

  ; Code: .L_48a007:	 RIP: 48a007	 Bytes: 0
block_.L_48a007:

  ; Code: movq -0x70(%rbp), %rax	 RIP: 48a007	 Bytes: 4
  %loadMem_48a007 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a007 = call %struct.Memory* @routine_movq_MINUS0x70__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a007)
  store %struct.Memory* %call_48a007, %struct.Memory** %MEMORY

  ; Code: movq 0x70fcf0, %rcx	 RIP: 48a00b	 Bytes: 8
  %loadMem_48a00b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a00b = call %struct.Memory* @routine_movq_0x70fcf0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a00b)
  store %struct.Memory* %call_48a00b, %struct.Memory** %MEMORY

  ; Code: movq 0x1958(%rcx), %rcx	 RIP: 48a013	 Bytes: 7
  %loadMem_48a013 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a013 = call %struct.Memory* @routine_movq_0x1958__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a013)
  store %struct.Memory* %call_48a013, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rcx), %rcx	 RIP: 48a01a	 Bytes: 4
  %loadMem_48a01a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a01a = call %struct.Memory* @routine_movq_0x8__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a01a)
  store %struct.Memory* %call_48a01a, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rdx	 RIP: 48a01e	 Bytes: 8
  %loadMem_48a01e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a01e = call %struct.Memory* @routine_movq_0x6cb900___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a01e)
  store %struct.Memory* %call_48a01e, %struct.Memory** %MEMORY

  ; Code: movl 0x90(%rdx), %esi	 RIP: 48a026	 Bytes: 6
  %loadMem_48a026 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a026 = call %struct.Memory* @routine_movl_0x90__rdx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a026)
  store %struct.Memory* %call_48a026, %struct.Memory** %MEMORY

  ; Code: addl -0x30(%rbp), %esi	 RIP: 48a02c	 Bytes: 3
  %loadMem_48a02c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a02c = call %struct.Memory* @routine_addl_MINUS0x30__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a02c)
  store %struct.Memory* %call_48a02c, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rdx	 RIP: 48a02f	 Bytes: 3
  %loadMem_48a02f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a02f = call %struct.Memory* @routine_movslq__esi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a02f)
  store %struct.Memory* %call_48a02f, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 48a032	 Bytes: 4
  %loadMem_48a032 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a032 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a032)
  store %struct.Memory* %call_48a032, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rdx	 RIP: 48a036	 Bytes: 8
  %loadMem_48a036 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a036 = call %struct.Memory* @routine_movq_0x6cb900___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a036)
  store %struct.Memory* %call_48a036, %struct.Memory** %MEMORY

  ; Code: movl 0x94(%rdx), %esi	 RIP: 48a03e	 Bytes: 6
  %loadMem_48a03e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a03e = call %struct.Memory* @routine_movl_0x94__rdx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a03e)
  store %struct.Memory* %call_48a03e, %struct.Memory** %MEMORY

  ; Code: addl -0x2c(%rbp), %esi	 RIP: 48a044	 Bytes: 3
  %loadMem_48a044 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a044 = call %struct.Memory* @routine_addl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a044)
  store %struct.Memory* %call_48a044, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rdx	 RIP: 48a047	 Bytes: 3
  %loadMem_48a047 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a047 = call %struct.Memory* @routine_movslq__esi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a047)
  store %struct.Memory* %call_48a047, %struct.Memory** %MEMORY

  ; Code: movq %rax, (%rcx,%rdx,8)	 RIP: 48a04a	 Bytes: 4
  %loadMem_48a04a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a04a = call %struct.Memory* @routine_movq__rax____rcx__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a04a)
  store %struct.Memory* %call_48a04a, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %eax	 RIP: 48a04e	 Bytes: 3
  %loadMem_48a04e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a04e = call %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a04e)
  store %struct.Memory* %call_48a04e, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 48a051	 Bytes: 3
  %loadMem_48a051 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a051 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a051)
  store %struct.Memory* %call_48a051, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x30(%rbp)	 RIP: 48a054	 Bytes: 3
  %loadMem_48a054 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a054 = call %struct.Memory* @routine_movl__eax__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a054)
  store %struct.Memory* %call_48a054, %struct.Memory** %MEMORY

  ; Code: jmpq .L_489f31	 RIP: 48a057	 Bytes: 5
  %loadMem_48a057 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a057 = call %struct.Memory* @routine_jmpq_.L_489f31(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a057, i64 -294, i64 5)
  store %struct.Memory* %call_48a057, %struct.Memory** %MEMORY

  br label %block_.L_489f31

  ; Code: .L_48a05c:	 RIP: 48a05c	 Bytes: 0
block_.L_48a05c:

  ; Code: jmpq .L_48a061	 RIP: 48a05c	 Bytes: 5
  %loadMem_48a05c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a05c = call %struct.Memory* @routine_jmpq_.L_48a061(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a05c, i64 5, i64 5)
  store %struct.Memory* %call_48a05c, %struct.Memory** %MEMORY

  br label %block_.L_48a061

  ; Code: .L_48a061:	 RIP: 48a061	 Bytes: 0
block_.L_48a061:

  ; Code: movl -0x2c(%rbp), %eax	 RIP: 48a061	 Bytes: 3
  %loadMem_48a061 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a061 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a061)
  store %struct.Memory* %call_48a061, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 48a064	 Bytes: 3
  %loadMem_48a064 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a064 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a064)
  store %struct.Memory* %call_48a064, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2c(%rbp)	 RIP: 48a067	 Bytes: 3
  %loadMem_48a067 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a067 = call %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a067)
  store %struct.Memory* %call_48a067, %struct.Memory** %MEMORY

  ; Code: jmpq .L_489f20	 RIP: 48a06a	 Bytes: 5
  %loadMem_48a06a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a06a = call %struct.Memory* @routine_jmpq_.L_489f20(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a06a, i64 -330, i64 5)
  store %struct.Memory* %call_48a06a, %struct.Memory** %MEMORY

  br label %block_.L_489f20

  ; Code: .L_48a06f:	 RIP: 48a06f	 Bytes: 0
block_.L_48a06f:

  ; Code: jmpq .L_48a074	 RIP: 48a06f	 Bytes: 5
  %loadMem_48a06f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a06f = call %struct.Memory* @routine_jmpq_.L_48a074(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a06f, i64 5, i64 5)
  store %struct.Memory* %call_48a06f, %struct.Memory** %MEMORY

  br label %block_.L_48a074

  ; Code: .L_48a074:	 RIP: 48a074	 Bytes: 0
block_.L_48a074:

  ; Code: movl $0x1, %edi	 RIP: 48a074	 Bytes: 5
  %loadMem_48a074 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a074 = call %struct.Memory* @routine_movl__0x1___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a074)
  store %struct.Memory* %call_48a074, %struct.Memory** %MEMORY

  ; Code: callq .StoreMV8x8	 RIP: 48a079	 Bytes: 5
  %loadMem1_48a079 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_48a079 = call %struct.Memory* @routine_callq_.StoreMV8x8(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_48a079, i64 2455, i64 5, i64 5)
  store %struct.Memory* %call1_48a079, %struct.Memory** %MEMORY

  %loadMem2_48a079 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_48a079 = load i64, i64* %3
  %call2_48a079 = call %struct.Memory* @sub_48aa10.StoreMV8x8(%struct.State* %0, i64  %loadPC_48a079, %struct.Memory* %loadMem2_48a079)
  store %struct.Memory* %call2_48a079, %struct.Memory** %MEMORY

  ; Code: xorl %edi, %edi	 RIP: 48a07e	 Bytes: 2
  %loadMem_48a07e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a07e = call %struct.Memory* @routine_xorl__edi___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a07e)
  store %struct.Memory* %call_48a07e, %struct.Memory** %MEMORY

  ; Code: callq .RestoreMV8x8	 RIP: 48a080	 Bytes: 5
  %loadMem1_48a080 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_48a080 = call %struct.Memory* @routine_callq_.RestoreMV8x8(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_48a080, i64 2592, i64 5, i64 5)
  store %struct.Memory* %call1_48a080, %struct.Memory** %MEMORY

  %loadMem2_48a080 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_48a080 = load i64, i64* %3
  %call2_48a080 = call %struct.Memory* @sub_48aaa0.RestoreMV8x8(%struct.State* %0, i64  %loadPC_48a080, %struct.Memory* %loadMem2_48a080)
  store %struct.Memory* %call2_48a080, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x24(%rbp)	 RIP: 48a085	 Bytes: 7
  %loadMem_48a085 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a085 = call %struct.Memory* @routine_movl__0x0__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a085)
  store %struct.Memory* %call_48a085, %struct.Memory** %MEMORY

  ; Code: .L_48a08c:	 RIP: 48a08c	 Bytes: 0
  br label %block_.L_48a08c
block_.L_48a08c:

  ; Code: cmpl $0x4, -0x24(%rbp)	 RIP: 48a08c	 Bytes: 4
  %loadMem_48a08c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a08c = call %struct.Memory* @routine_cmpl__0x4__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a08c)
  store %struct.Memory* %call_48a08c, %struct.Memory** %MEMORY

  ; Code: jge .L_48a165	 RIP: 48a090	 Bytes: 6
  %loadMem_48a090 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a090 = call %struct.Memory* @routine_jge_.L_48a165(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a090, i8* %BRANCH_TAKEN, i64 213, i64 6, i64 6)
  store %struct.Memory* %call_48a090, %struct.Memory** %MEMORY

  %loadBr_48a090 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48a090 = icmp eq i8 %loadBr_48a090, 1
  br i1 %cmpBr_48a090, label %block_.L_48a165, label %block_48a096

block_48a096:
  ; Code: movl $0x0, -0x28(%rbp)	 RIP: 48a096	 Bytes: 7
  %loadMem_48a096 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a096 = call %struct.Memory* @routine_movl__0x0__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a096)
  store %struct.Memory* %call_48a096, %struct.Memory** %MEMORY

  ; Code: .L_48a09d:	 RIP: 48a09d	 Bytes: 0
  br label %block_.L_48a09d
block_.L_48a09d:

  ; Code: cmpl $0x4, -0x28(%rbp)	 RIP: 48a09d	 Bytes: 4
  %loadMem_48a09d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a09d = call %struct.Memory* @routine_cmpl__0x4__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a09d)
  store %struct.Memory* %call_48a09d, %struct.Memory** %MEMORY

  ; Code: jge .L_48a152	 RIP: 48a0a1	 Bytes: 6
  %loadMem_48a0a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a0a1 = call %struct.Memory* @routine_jge_.L_48a152(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a0a1, i8* %BRANCH_TAKEN, i64 177, i64 6, i64 6)
  store %struct.Memory* %call_48a0a1, %struct.Memory** %MEMORY

  %loadBr_48a0a1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48a0a1 = icmp eq i8 %loadBr_48a0a1, 1
  br i1 %cmpBr_48a0a1, label %block_.L_48a152, label %block_48a0a7

block_48a0a7:
  ; Code: movl $0x0, -0x2c(%rbp)	 RIP: 48a0a7	 Bytes: 7
  %loadMem_48a0a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a0a7 = call %struct.Memory* @routine_movl__0x0__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a0a7)
  store %struct.Memory* %call_48a0a7, %struct.Memory** %MEMORY

  ; Code: .L_48a0ae:	 RIP: 48a0ae	 Bytes: 0
  br label %block_.L_48a0ae
block_.L_48a0ae:

  ; Code: cmpl $0x2, -0x2c(%rbp)	 RIP: 48a0ae	 Bytes: 4
  %loadMem_48a0ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a0ae = call %struct.Memory* @routine_cmpl__0x2__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a0ae)
  store %struct.Memory* %call_48a0ae, %struct.Memory** %MEMORY

  ; Code: jge .L_48a13f	 RIP: 48a0b2	 Bytes: 6
  %loadMem_48a0b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a0b2 = call %struct.Memory* @routine_jge_.L_48a13f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a0b2, i8* %BRANCH_TAKEN, i64 141, i64 6, i64 6)
  store %struct.Memory* %call_48a0b2, %struct.Memory** %MEMORY

  %loadBr_48a0b2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48a0b2 = icmp eq i8 %loadBr_48a0b2, 1
  br i1 %cmpBr_48a0b2, label %block_.L_48a13f, label %block_48a0b8

block_48a0b8:
  ; Code: movl $0x0, -0x30(%rbp)	 RIP: 48a0b8	 Bytes: 7
  %loadMem_48a0b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a0b8 = call %struct.Memory* @routine_movl__0x0__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a0b8)
  store %struct.Memory* %call_48a0b8, %struct.Memory** %MEMORY

  ; Code: .L_48a0bf:	 RIP: 48a0bf	 Bytes: 0
  br label %block_.L_48a0bf
block_.L_48a0bf:

  ; Code: cmpl $0x41, -0x30(%rbp)	 RIP: 48a0bf	 Bytes: 4
  %loadMem_48a0bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a0bf = call %struct.Memory* @routine_cmpl__0x41__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a0bf)
  store %struct.Memory* %call_48a0bf, %struct.Memory** %MEMORY

  ; Code: jge .L_48a12c	 RIP: 48a0c3	 Bytes: 6
  %loadMem_48a0c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a0c3 = call %struct.Memory* @routine_jge_.L_48a12c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a0c3, i8* %BRANCH_TAKEN, i64 105, i64 6, i64 6)
  store %struct.Memory* %call_48a0c3, %struct.Memory** %MEMORY

  %loadBr_48a0c3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48a0c3 = icmp eq i8 %loadBr_48a0c3, 1
  br i1 %cmpBr_48a0c3, label %block_.L_48a12c, label %block_48a0c9

block_48a0c9:
  ; Code: movq 0x6cc650, %rax	 RIP: 48a0c9	 Bytes: 8
  %loadMem_48a0c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a0c9 = call %struct.Memory* @routine_movq_0x6cc650___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a0c9)
  store %struct.Memory* %call_48a0c9, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rcx	 RIP: 48a0d1	 Bytes: 4
  %loadMem_48a0d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a0d1 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a0d1)
  store %struct.Memory* %call_48a0d1, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 48a0d5	 Bytes: 4
  %loadMem_48a0d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a0d5 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a0d5)
  store %struct.Memory* %call_48a0d5, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 48a0d9	 Bytes: 4
  %loadMem_48a0d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a0d9 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a0d9)
  store %struct.Memory* %call_48a0d9, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 48a0dd	 Bytes: 4
  %loadMem_48a0dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a0dd = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a0dd)
  store %struct.Memory* %call_48a0dd, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 48a0e1	 Bytes: 4
  %loadMem_48a0e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a0e1 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a0e1)
  store %struct.Memory* %call_48a0e1, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 48a0e5	 Bytes: 4
  %loadMem_48a0e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a0e5 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a0e5)
  store %struct.Memory* %call_48a0e5, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 48a0e9	 Bytes: 4
  %loadMem_48a0e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a0e9 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a0e9)
  store %struct.Memory* %call_48a0e9, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rcx,4), %edx	 RIP: 48a0ed	 Bytes: 3
  %loadMem_48a0ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a0ed = call %struct.Memory* @routine_movl___rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a0ed)
  store %struct.Memory* %call_48a0ed, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 48a0f0	 Bytes: 8
  %loadMem_48a0f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a0f0 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a0f0)
  store %struct.Memory* %call_48a0f0, %struct.Memory** %MEMORY

  ; Code: movq 0x3738(%rax), %rax	 RIP: 48a0f8	 Bytes: 7
  %loadMem_48a0f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a0f8 = call %struct.Memory* @routine_movq_0x3738__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a0f8)
  store %struct.Memory* %call_48a0f8, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rcx	 RIP: 48a0ff	 Bytes: 4
  %loadMem_48a0ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a0ff = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a0ff)
  store %struct.Memory* %call_48a0ff, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 48a103	 Bytes: 4
  %loadMem_48a103 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a103 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a103)
  store %struct.Memory* %call_48a103, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 48a107	 Bytes: 4
  %loadMem_48a107 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a107 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a107)
  store %struct.Memory* %call_48a107, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 48a10b	 Bytes: 4
  %loadMem_48a10b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a10b = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a10b)
  store %struct.Memory* %call_48a10b, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 48a10f	 Bytes: 4
  %loadMem_48a10f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a10f = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a10f)
  store %struct.Memory* %call_48a10f, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 48a113	 Bytes: 4
  %loadMem_48a113 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a113 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a113)
  store %struct.Memory* %call_48a113, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 48a117	 Bytes: 4
  %loadMem_48a117 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a117 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a117)
  store %struct.Memory* %call_48a117, %struct.Memory** %MEMORY

  ; Code: movl %edx, (%rax,%rcx,4)	 RIP: 48a11b	 Bytes: 3
  %loadMem_48a11b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a11b = call %struct.Memory* @routine_movl__edx____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a11b)
  store %struct.Memory* %call_48a11b, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %eax	 RIP: 48a11e	 Bytes: 3
  %loadMem_48a11e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a11e = call %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a11e)
  store %struct.Memory* %call_48a11e, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 48a121	 Bytes: 3
  %loadMem_48a121 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a121 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a121)
  store %struct.Memory* %call_48a121, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x30(%rbp)	 RIP: 48a124	 Bytes: 3
  %loadMem_48a124 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a124 = call %struct.Memory* @routine_movl__eax__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a124)
  store %struct.Memory* %call_48a124, %struct.Memory** %MEMORY

  ; Code: jmpq .L_48a0bf	 RIP: 48a127	 Bytes: 5
  %loadMem_48a127 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a127 = call %struct.Memory* @routine_jmpq_.L_48a0bf(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a127, i64 -104, i64 5)
  store %struct.Memory* %call_48a127, %struct.Memory** %MEMORY

  br label %block_.L_48a0bf

  ; Code: .L_48a12c:	 RIP: 48a12c	 Bytes: 0
block_.L_48a12c:

  ; Code: jmpq .L_48a131	 RIP: 48a12c	 Bytes: 5
  %loadMem_48a12c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a12c = call %struct.Memory* @routine_jmpq_.L_48a131(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a12c, i64 5, i64 5)
  store %struct.Memory* %call_48a12c, %struct.Memory** %MEMORY

  br label %block_.L_48a131

  ; Code: .L_48a131:	 RIP: 48a131	 Bytes: 0
block_.L_48a131:

  ; Code: movl -0x2c(%rbp), %eax	 RIP: 48a131	 Bytes: 3
  %loadMem_48a131 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a131 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a131)
  store %struct.Memory* %call_48a131, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 48a134	 Bytes: 3
  %loadMem_48a134 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a134 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a134)
  store %struct.Memory* %call_48a134, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2c(%rbp)	 RIP: 48a137	 Bytes: 3
  %loadMem_48a137 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a137 = call %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a137)
  store %struct.Memory* %call_48a137, %struct.Memory** %MEMORY

  ; Code: jmpq .L_48a0ae	 RIP: 48a13a	 Bytes: 5
  %loadMem_48a13a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a13a = call %struct.Memory* @routine_jmpq_.L_48a0ae(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a13a, i64 -140, i64 5)
  store %struct.Memory* %call_48a13a, %struct.Memory** %MEMORY

  br label %block_.L_48a0ae

  ; Code: .L_48a13f:	 RIP: 48a13f	 Bytes: 0
block_.L_48a13f:

  ; Code: jmpq .L_48a144	 RIP: 48a13f	 Bytes: 5
  %loadMem_48a13f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a13f = call %struct.Memory* @routine_jmpq_.L_48a144(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a13f, i64 5, i64 5)
  store %struct.Memory* %call_48a13f, %struct.Memory** %MEMORY

  br label %block_.L_48a144

  ; Code: .L_48a144:	 RIP: 48a144	 Bytes: 0
block_.L_48a144:

  ; Code: movl -0x28(%rbp), %eax	 RIP: 48a144	 Bytes: 3
  %loadMem_48a144 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a144 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a144)
  store %struct.Memory* %call_48a144, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 48a147	 Bytes: 3
  %loadMem_48a147 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a147 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a147)
  store %struct.Memory* %call_48a147, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x28(%rbp)	 RIP: 48a14a	 Bytes: 3
  %loadMem_48a14a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a14a = call %struct.Memory* @routine_movl__eax__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a14a)
  store %struct.Memory* %call_48a14a, %struct.Memory** %MEMORY

  ; Code: jmpq .L_48a09d	 RIP: 48a14d	 Bytes: 5
  %loadMem_48a14d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a14d = call %struct.Memory* @routine_jmpq_.L_48a09d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a14d, i64 -176, i64 5)
  store %struct.Memory* %call_48a14d, %struct.Memory** %MEMORY

  br label %block_.L_48a09d

  ; Code: .L_48a152:	 RIP: 48a152	 Bytes: 0
block_.L_48a152:

  ; Code: jmpq .L_48a157	 RIP: 48a152	 Bytes: 5
  %loadMem_48a152 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a152 = call %struct.Memory* @routine_jmpq_.L_48a157(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a152, i64 5, i64 5)
  store %struct.Memory* %call_48a152, %struct.Memory** %MEMORY

  br label %block_.L_48a157

  ; Code: .L_48a157:	 RIP: 48a157	 Bytes: 0
block_.L_48a157:

  ; Code: movl -0x24(%rbp), %eax	 RIP: 48a157	 Bytes: 3
  %loadMem_48a157 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a157 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a157)
  store %struct.Memory* %call_48a157, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 48a15a	 Bytes: 3
  %loadMem_48a15a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a15a = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a15a)
  store %struct.Memory* %call_48a15a, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x24(%rbp)	 RIP: 48a15d	 Bytes: 3
  %loadMem_48a15d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a15d = call %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a15d)
  store %struct.Memory* %call_48a15d, %struct.Memory** %MEMORY

  ; Code: jmpq .L_48a08c	 RIP: 48a160	 Bytes: 5
  %loadMem_48a160 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a160 = call %struct.Memory* @routine_jmpq_.L_48a08c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a160, i64 -212, i64 5)
  store %struct.Memory* %call_48a160, %struct.Memory** %MEMORY

  br label %block_.L_48a08c

  ; Code: .L_48a165:	 RIP: 48a165	 Bytes: 0
block_.L_48a165:

  ; Code: cmpl $0x5, 0x6ce9f8	 RIP: 48a165	 Bytes: 8
  %loadMem_48a165 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a165 = call %struct.Memory* @routine_cmpl__0x5__0x6ce9f8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a165)
  store %struct.Memory* %call_48a165, %struct.Memory** %MEMORY

  ; Code: jg .L_48a2aa	 RIP: 48a16d	 Bytes: 6
  %loadMem_48a16d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a16d = call %struct.Memory* @routine_jg_.L_48a2aa(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a16d, i8* %BRANCH_TAKEN, i64 317, i64 6, i64 6)
  store %struct.Memory* %call_48a16d, %struct.Memory** %MEMORY

  %loadBr_48a16d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48a16d = icmp eq i8 %loadBr_48a16d, 1
  br i1 %cmpBr_48a16d, label %block_.L_48a2aa, label %block_48a173

block_48a173:
  ; Code: movq 0x6cb900, %rax	 RIP: 48a173	 Bytes: 8
  %loadMem_48a173 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a173 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a173)
  store %struct.Memory* %call_48a173, %struct.Memory** %MEMORY

  ; Code: movl 0x28(%rax), %ecx	 RIP: 48a17b	 Bytes: 3
  %loadMem_48a17b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a17b = call %struct.Memory* @routine_movl_0x28__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a17b)
  store %struct.Memory* %call_48a17b, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 48a17e	 Bytes: 8
  %loadMem_48a17e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a17e = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a17e)
  store %struct.Memory* %call_48a17e, %struct.Memory** %MEMORY

  ; Code: addl 0x11bdc(%rax), %ecx	 RIP: 48a186	 Bytes: 6
  %loadMem_48a186 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a186 = call %struct.Memory* @routine_addl_0x11bdc__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a186)
  store %struct.Memory* %call_48a186, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %ecx	 RIP: 48a18c	 Bytes: 3
  %loadMem_48a18c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a18c = call %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a18c)
  store %struct.Memory* %call_48a18c, %struct.Memory** %MEMORY

  ; Code: jne .L_48a1aa	 RIP: 48a18f	 Bytes: 6
  %loadMem_48a18f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a18f = call %struct.Memory* @routine_jne_.L_48a1aa(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a18f, i8* %BRANCH_TAKEN, i64 27, i64 6, i64 6)
  store %struct.Memory* %call_48a18f, %struct.Memory** %MEMORY

  %loadBr_48a18f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48a18f = icmp eq i8 %loadBr_48a18f, 1
  br i1 %cmpBr_48a18f, label %block_.L_48a1aa, label %block_48a195

block_48a195:
  ; Code: movq 0x6cb900, %rax	 RIP: 48a195	 Bytes: 8
  %loadMem_48a195 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a195 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a195)
  store %struct.Memory* %call_48a195, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x11c00(%rax)	 RIP: 48a19d	 Bytes: 7
  %loadMem_48a19d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a19d = call %struct.Memory* @routine_cmpl__0x0__0x11c00__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a19d)
  store %struct.Memory* %call_48a19d, %struct.Memory** %MEMORY

  ; Code: jne .L_48a2aa	 RIP: 48a1a4	 Bytes: 6
  %loadMem_48a1a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a1a4 = call %struct.Memory* @routine_jne_.L_48a2aa(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a1a4, i8* %BRANCH_TAKEN, i64 262, i64 6, i64 6)
  store %struct.Memory* %call_48a1a4, %struct.Memory** %MEMORY

  %loadBr_48a1a4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48a1a4 = icmp eq i8 %loadBr_48a1a4, 1
  br i1 %cmpBr_48a1a4, label %block_.L_48a2aa, label %block_.L_48a1aa

  ; Code: .L_48a1aa:	 RIP: 48a1aa	 Bytes: 0
block_.L_48a1aa:

  ; Code: movq -0x20(%rbp), %rax	 RIP: 48a1aa	 Bytes: 4
  %loadMem_48a1aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a1aa = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a1aa)
  store %struct.Memory* %call_48a1aa, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x1cc(%rax)	 RIP: 48a1ae	 Bytes: 10
  %loadMem_48a1ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a1ae = call %struct.Memory* @routine_movl__0x0__0x1cc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a1ae)
  store %struct.Memory* %call_48a1ae, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 48a1b8	 Bytes: 4
  %loadMem_48a1b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a1b8 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a1b8)
  store %struct.Memory* %call_48a1b8, %struct.Memory** %MEMORY

  ; Code: movq $0x0, 0x1d0(%rax)	 RIP: 48a1bc	 Bytes: 11
  %loadMem_48a1bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a1bc = call %struct.Memory* @routine_movq__0x0__0x1d0__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a1bc)
  store %struct.Memory* %call_48a1bc, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x2c(%rbp)	 RIP: 48a1c7	 Bytes: 7
  %loadMem_48a1c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a1c7 = call %struct.Memory* @routine_movl__0x0__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a1c7)
  store %struct.Memory* %call_48a1c7, %struct.Memory** %MEMORY

  ; Code: .L_48a1ce:	 RIP: 48a1ce	 Bytes: 0
  br label %block_.L_48a1ce
block_.L_48a1ce:

  ; Code: cmpl $0x10, -0x2c(%rbp)	 RIP: 48a1ce	 Bytes: 4
  %loadMem_48a1ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a1ce = call %struct.Memory* @routine_cmpl__0x10__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a1ce)
  store %struct.Memory* %call_48a1ce, %struct.Memory** %MEMORY

  ; Code: jge .L_48a2a5	 RIP: 48a1d2	 Bytes: 6
  %loadMem_48a1d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a1d2 = call %struct.Memory* @routine_jge_.L_48a2a5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a1d2, i8* %BRANCH_TAKEN, i64 211, i64 6, i64 6)
  store %struct.Memory* %call_48a1d2, %struct.Memory** %MEMORY

  %loadBr_48a1d2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48a1d2 = icmp eq i8 %loadBr_48a1d2, 1
  br i1 %cmpBr_48a1d2, label %block_.L_48a2a5, label %block_48a1d8

block_48a1d8:
  ; Code: movl $0x0, -0x30(%rbp)	 RIP: 48a1d8	 Bytes: 7
  %loadMem_48a1d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a1d8 = call %struct.Memory* @routine_movl__0x0__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a1d8)
  store %struct.Memory* %call_48a1d8, %struct.Memory** %MEMORY

  ; Code: .L_48a1df:	 RIP: 48a1df	 Bytes: 0
  br label %block_.L_48a1df
block_.L_48a1df:

  ; Code: cmpl $0x10, -0x30(%rbp)	 RIP: 48a1df	 Bytes: 4
  %loadMem_48a1df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a1df = call %struct.Memory* @routine_cmpl__0x10__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a1df)
  store %struct.Memory* %call_48a1df, %struct.Memory** %MEMORY

  ; Code: jge .L_48a292	 RIP: 48a1e3	 Bytes: 6
  %loadMem_48a1e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a1e3 = call %struct.Memory* @routine_jge_.L_48a292(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a1e3, i8* %BRANCH_TAKEN, i64 175, i64 6, i64 6)
  store %struct.Memory* %call_48a1e3, %struct.Memory** %MEMORY

  %loadBr_48a1e3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48a1e3 = icmp eq i8 %loadBr_48a1e3, 1
  br i1 %cmpBr_48a1e3, label %block_.L_48a292, label %block_48a1e9

block_48a1e9:
  ; Code: movq 0x6cb900, %rax	 RIP: 48a1e9	 Bytes: 8
  %loadMem_48a1e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a1e9 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a1e9)
  store %struct.Memory* %call_48a1e9, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x11c14(%rax)	 RIP: 48a1f1	 Bytes: 7
  %loadMem_48a1f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a1f1 = call %struct.Memory* @routine_cmpl__0x0__0x11c14__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a1f1)
  store %struct.Memory* %call_48a1f1, %struct.Memory** %MEMORY

  ; Code: jne .L_48a25f	 RIP: 48a1f8	 Bytes: 6
  %loadMem_48a1f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a1f8 = call %struct.Memory* @routine_jne_.L_48a25f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a1f8, i8* %BRANCH_TAKEN, i64 103, i64 6, i64 6)
  store %struct.Memory* %call_48a1f8, %struct.Memory** %MEMORY

  %loadBr_48a1f8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48a1f8 = icmp eq i8 %loadBr_48a1f8, 1
  br i1 %cmpBr_48a1f8, label %block_.L_48a25f, label %block_48a1fe

block_48a1fe:
  ; Code: movq $0x721aa0, %rax	 RIP: 48a1fe	 Bytes: 10
  %loadMem_48a1fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a1fe = call %struct.Memory* @routine_movq__0x721aa0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a1fe)
  store %struct.Memory* %call_48a1fe, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 48a208	 Bytes: 4
  %loadMem_48a208 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a208 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a208)
  store %struct.Memory* %call_48a208, %struct.Memory** %MEMORY

  ; Code: shlq $0x5, %rcx	 RIP: 48a20c	 Bytes: 4
  %loadMem_48a20c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a20c = call %struct.Memory* @routine_shlq__0x5___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a20c)
  store %struct.Memory* %call_48a20c, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 48a210	 Bytes: 3
  %loadMem_48a210 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a210 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a210)
  store %struct.Memory* %call_48a210, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 48a213	 Bytes: 4
  %loadMem_48a213 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a213 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a213)
  store %struct.Memory* %call_48a213, %struct.Memory** %MEMORY

  ; Code: movw (%rax,%rcx,2), %dx	 RIP: 48a217	 Bytes: 4
  %loadMem_48a217 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a217 = call %struct.Memory* @routine_movw___rax__rcx_2____dx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a217)
  store %struct.Memory* %call_48a217, %struct.Memory** %MEMORY

  ; Code: movq 0x70fcf0, %rax	 RIP: 48a21b	 Bytes: 8
  %loadMem_48a21b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a21b = call %struct.Memory* @routine_movq_0x70fcf0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a21b)
  store %struct.Memory* %call_48a21b, %struct.Memory** %MEMORY

  ; Code: movq 0x1918(%rax), %rax	 RIP: 48a223	 Bytes: 7
  %loadMem_48a223 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a223 = call %struct.Memory* @routine_movq_0x1918__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a223)
  store %struct.Memory* %call_48a223, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 48a22a	 Bytes: 8
  %loadMem_48a22a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a22a = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a22a)
  store %struct.Memory* %call_48a22a, %struct.Memory** %MEMORY

  ; Code: movl 0x9c(%rcx), %esi	 RIP: 48a232	 Bytes: 6
  %loadMem_48a232 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a232 = call %struct.Memory* @routine_movl_0x9c__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a232)
  store %struct.Memory* %call_48a232, %struct.Memory** %MEMORY

  ; Code: addl -0x2c(%rbp), %esi	 RIP: 48a238	 Bytes: 3
  %loadMem_48a238 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a238 = call %struct.Memory* @routine_addl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a238)
  store %struct.Memory* %call_48a238, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rcx	 RIP: 48a23b	 Bytes: 3
  %loadMem_48a23b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a23b = call %struct.Memory* @routine_movslq__esi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a23b)
  store %struct.Memory* %call_48a23b, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 48a23e	 Bytes: 4
  %loadMem_48a23e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a23e = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a23e)
  store %struct.Memory* %call_48a23e, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 48a242	 Bytes: 8
  %loadMem_48a242 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a242 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a242)
  store %struct.Memory* %call_48a242, %struct.Memory** %MEMORY

  ; Code: movl 0x98(%rcx), %esi	 RIP: 48a24a	 Bytes: 6
  %loadMem_48a24a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a24a = call %struct.Memory* @routine_movl_0x98__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a24a)
  store %struct.Memory* %call_48a24a, %struct.Memory** %MEMORY

  ; Code: addl -0x30(%rbp), %esi	 RIP: 48a250	 Bytes: 3
  %loadMem_48a250 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a250 = call %struct.Memory* @routine_addl_MINUS0x30__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a250)
  store %struct.Memory* %call_48a250, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rcx	 RIP: 48a253	 Bytes: 3
  %loadMem_48a253 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a253 = call %struct.Memory* @routine_movslq__esi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a253)
  store %struct.Memory* %call_48a253, %struct.Memory** %MEMORY

  ; Code: movw %dx, (%rax,%rcx,2)	 RIP: 48a256	 Bytes: 4
  %loadMem_48a256 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a256 = call %struct.Memory* @routine_movw__dx____rax__rcx_2_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a256)
  store %struct.Memory* %call_48a256, %struct.Memory** %MEMORY

  ; Code: jmpq .L_48a27f	 RIP: 48a25a	 Bytes: 5
  %loadMem_48a25a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a25a = call %struct.Memory* @routine_jmpq_.L_48a27f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a25a, i64 37, i64 5)
  store %struct.Memory* %call_48a25a, %struct.Memory** %MEMORY

  br label %block_.L_48a27f

  ; Code: .L_48a25f:	 RIP: 48a25f	 Bytes: 0
block_.L_48a25f:

  ; Code: movq $0x722ff0, %rax	 RIP: 48a25f	 Bytes: 10
  %loadMem_48a25f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a25f = call %struct.Memory* @routine_movq__0x722ff0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a25f)
  store %struct.Memory* %call_48a25f, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 48a269	 Bytes: 4
  %loadMem_48a269 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a269 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a269)
  store %struct.Memory* %call_48a269, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rcx	 RIP: 48a26d	 Bytes: 4
  %loadMem_48a26d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a26d = call %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a26d)
  store %struct.Memory* %call_48a26d, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 48a271	 Bytes: 3
  %loadMem_48a271 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a271 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a271)
  store %struct.Memory* %call_48a271, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 48a274	 Bytes: 4
  %loadMem_48a274 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a274 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a274)
  store %struct.Memory* %call_48a274, %struct.Memory** %MEMORY

  ; Code: movl $0x0, (%rax,%rcx,4)	 RIP: 48a278	 Bytes: 7
  %loadMem_48a278 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a278 = call %struct.Memory* @routine_movl__0x0____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a278)
  store %struct.Memory* %call_48a278, %struct.Memory** %MEMORY

  ; Code: .L_48a27f:	 RIP: 48a27f	 Bytes: 0
  br label %block_.L_48a27f
block_.L_48a27f:

  ; Code: jmpq .L_48a284	 RIP: 48a27f	 Bytes: 5
  %loadMem_48a27f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a27f = call %struct.Memory* @routine_jmpq_.L_48a284(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a27f, i64 5, i64 5)
  store %struct.Memory* %call_48a27f, %struct.Memory** %MEMORY

  br label %block_.L_48a284

  ; Code: .L_48a284:	 RIP: 48a284	 Bytes: 0
block_.L_48a284:

  ; Code: movl -0x30(%rbp), %eax	 RIP: 48a284	 Bytes: 3
  %loadMem_48a284 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a284 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a284)
  store %struct.Memory* %call_48a284, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 48a287	 Bytes: 3
  %loadMem_48a287 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a287 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a287)
  store %struct.Memory* %call_48a287, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x30(%rbp)	 RIP: 48a28a	 Bytes: 3
  %loadMem_48a28a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a28a = call %struct.Memory* @routine_movl__eax__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a28a)
  store %struct.Memory* %call_48a28a, %struct.Memory** %MEMORY

  ; Code: jmpq .L_48a1df	 RIP: 48a28d	 Bytes: 5
  %loadMem_48a28d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a28d = call %struct.Memory* @routine_jmpq_.L_48a1df(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a28d, i64 -174, i64 5)
  store %struct.Memory* %call_48a28d, %struct.Memory** %MEMORY

  br label %block_.L_48a1df

  ; Code: .L_48a292:	 RIP: 48a292	 Bytes: 0
block_.L_48a292:

  ; Code: jmpq .L_48a297	 RIP: 48a292	 Bytes: 5
  %loadMem_48a292 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a292 = call %struct.Memory* @routine_jmpq_.L_48a297(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a292, i64 5, i64 5)
  store %struct.Memory* %call_48a292, %struct.Memory** %MEMORY

  br label %block_.L_48a297

  ; Code: .L_48a297:	 RIP: 48a297	 Bytes: 0
block_.L_48a297:

  ; Code: movl -0x2c(%rbp), %eax	 RIP: 48a297	 Bytes: 3
  %loadMem_48a297 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a297 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a297)
  store %struct.Memory* %call_48a297, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 48a29a	 Bytes: 3
  %loadMem_48a29a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a29a = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a29a)
  store %struct.Memory* %call_48a29a, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2c(%rbp)	 RIP: 48a29d	 Bytes: 3
  %loadMem_48a29d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a29d = call %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a29d)
  store %struct.Memory* %call_48a29d, %struct.Memory** %MEMORY

  ; Code: jmpq .L_48a1ce	 RIP: 48a2a0	 Bytes: 5
  %loadMem_48a2a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a2a0 = call %struct.Memory* @routine_jmpq_.L_48a1ce(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a2a0, i64 -210, i64 5)
  store %struct.Memory* %call_48a2a0, %struct.Memory** %MEMORY

  br label %block_.L_48a1ce

  ; Code: .L_48a2a5:	 RIP: 48a2a5	 Bytes: 0
block_.L_48a2a5:

  ; Code: jmpq .L_48a3c9	 RIP: 48a2a5	 Bytes: 5
  %loadMem_48a2a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a2a5 = call %struct.Memory* @routine_jmpq_.L_48a3c9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a2a5, i64 292, i64 5)
  store %struct.Memory* %call_48a2a5, %struct.Memory** %MEMORY

  br label %block_.L_48a3c9

  ; Code: .L_48a2aa:	 RIP: 48a2aa	 Bytes: 0
block_.L_48a2aa:

  ; Code: movl 0x6d32c0, %eax	 RIP: 48a2aa	 Bytes: 7
  %loadMem_48a2aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a2aa = call %struct.Memory* @routine_movl_0x6d32c0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a2aa)
  store %struct.Memory* %call_48a2aa, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 48a2b1	 Bytes: 4
  %loadMem_48a2b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a2b1 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a2b1)
  store %struct.Memory* %call_48a2b1, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x1cc(%rcx)	 RIP: 48a2b5	 Bytes: 6
  %loadMem_48a2b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a2b5 = call %struct.Memory* @routine_movl__eax__0x1cc__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a2b5)
  store %struct.Memory* %call_48a2b5, %struct.Memory** %MEMORY

  ; Code: movq 0x710778, %rcx	 RIP: 48a2bb	 Bytes: 8
  %loadMem_48a2bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a2bb = call %struct.Memory* @routine_movq_0x710778___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a2bb)
  store %struct.Memory* %call_48a2bb, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rdx	 RIP: 48a2c3	 Bytes: 4
  %loadMem_48a2c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a2c3 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a2c3)
  store %struct.Memory* %call_48a2c3, %struct.Memory** %MEMORY

  ; Code: movq %rcx, 0x1d0(%rdx)	 RIP: 48a2c7	 Bytes: 7
  %loadMem_48a2c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a2c7 = call %struct.Memory* @routine_movq__rcx__0x1d0__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a2c7)
  store %struct.Memory* %call_48a2c7, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x2c(%rbp)	 RIP: 48a2ce	 Bytes: 7
  %loadMem_48a2ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a2ce = call %struct.Memory* @routine_movl__0x0__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a2ce)
  store %struct.Memory* %call_48a2ce, %struct.Memory** %MEMORY

  ; Code: .L_48a2d5:	 RIP: 48a2d5	 Bytes: 0
  br label %block_.L_48a2d5
block_.L_48a2d5:

  ; Code: cmpl $0x10, -0x2c(%rbp)	 RIP: 48a2d5	 Bytes: 4
  %loadMem_48a2d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a2d5 = call %struct.Memory* @routine_cmpl__0x10__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a2d5)
  store %struct.Memory* %call_48a2d5, %struct.Memory** %MEMORY

  ; Code: jge .L_48a3c4	 RIP: 48a2d9	 Bytes: 6
  %loadMem_48a2d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a2d9 = call %struct.Memory* @routine_jge_.L_48a3c4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a2d9, i8* %BRANCH_TAKEN, i64 235, i64 6, i64 6)
  store %struct.Memory* %call_48a2d9, %struct.Memory** %MEMORY

  %loadBr_48a2d9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48a2d9 = icmp eq i8 %loadBr_48a2d9, 1
  br i1 %cmpBr_48a2d9, label %block_.L_48a3c4, label %block_48a2df

block_48a2df:
  ; Code: movl $0x0, -0x30(%rbp)	 RIP: 48a2df	 Bytes: 7
  %loadMem_48a2df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a2df = call %struct.Memory* @routine_movl__0x0__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a2df)
  store %struct.Memory* %call_48a2df, %struct.Memory** %MEMORY

  ; Code: .L_48a2e6:	 RIP: 48a2e6	 Bytes: 0
  br label %block_.L_48a2e6
block_.L_48a2e6:

  ; Code: cmpl $0x10, -0x30(%rbp)	 RIP: 48a2e6	 Bytes: 4
  %loadMem_48a2e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a2e6 = call %struct.Memory* @routine_cmpl__0x10__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a2e6)
  store %struct.Memory* %call_48a2e6, %struct.Memory** %MEMORY

  ; Code: jge .L_48a3b1	 RIP: 48a2ea	 Bytes: 6
  %loadMem_48a2ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a2ea = call %struct.Memory* @routine_jge_.L_48a3b1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a2ea, i8* %BRANCH_TAKEN, i64 199, i64 6, i64 6)
  store %struct.Memory* %call_48a2ea, %struct.Memory** %MEMORY

  %loadBr_48a2ea = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48a2ea = icmp eq i8 %loadBr_48a2ea, 1
  br i1 %cmpBr_48a2ea, label %block_.L_48a3b1, label %block_48a2f0

block_48a2f0:
  ; Code: movq 0x6cb900, %rax	 RIP: 48a2f0	 Bytes: 8
  %loadMem_48a2f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a2f0 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a2f0)
  store %struct.Memory* %call_48a2f0, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x11c14(%rax)	 RIP: 48a2f8	 Bytes: 7
  %loadMem_48a2f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a2f8 = call %struct.Memory* @routine_cmpl__0x0__0x11c14__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a2f8)
  store %struct.Memory* %call_48a2f8, %struct.Memory** %MEMORY

  ; Code: jne .L_48a366	 RIP: 48a2ff	 Bytes: 6
  %loadMem_48a2ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a2ff = call %struct.Memory* @routine_jne_.L_48a366(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a2ff, i8* %BRANCH_TAKEN, i64 103, i64 6, i64 6)
  store %struct.Memory* %call_48a2ff, %struct.Memory** %MEMORY

  %loadBr_48a2ff = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48a2ff = icmp eq i8 %loadBr_48a2ff, 1
  br i1 %cmpBr_48a2ff, label %block_.L_48a366, label %block_48a305

block_48a305:
  ; Code: movq $0x711840, %rax	 RIP: 48a305	 Bytes: 10
  %loadMem_48a305 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a305 = call %struct.Memory* @routine_movq__0x711840___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a305)
  store %struct.Memory* %call_48a305, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 48a30f	 Bytes: 4
  %loadMem_48a30f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a30f = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a30f)
  store %struct.Memory* %call_48a30f, %struct.Memory** %MEMORY

  ; Code: shlq $0x5, %rcx	 RIP: 48a313	 Bytes: 4
  %loadMem_48a313 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a313 = call %struct.Memory* @routine_shlq__0x5___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a313)
  store %struct.Memory* %call_48a313, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 48a317	 Bytes: 3
  %loadMem_48a317 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a317 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a317)
  store %struct.Memory* %call_48a317, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 48a31a	 Bytes: 4
  %loadMem_48a31a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a31a = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a31a)
  store %struct.Memory* %call_48a31a, %struct.Memory** %MEMORY

  ; Code: movw (%rax,%rcx,2), %dx	 RIP: 48a31e	 Bytes: 4
  %loadMem_48a31e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a31e = call %struct.Memory* @routine_movw___rax__rcx_2____dx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a31e)
  store %struct.Memory* %call_48a31e, %struct.Memory** %MEMORY

  ; Code: movq 0x70fcf0, %rax	 RIP: 48a322	 Bytes: 8
  %loadMem_48a322 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a322 = call %struct.Memory* @routine_movq_0x70fcf0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a322)
  store %struct.Memory* %call_48a322, %struct.Memory** %MEMORY

  ; Code: movq 0x1918(%rax), %rax	 RIP: 48a32a	 Bytes: 7
  %loadMem_48a32a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a32a = call %struct.Memory* @routine_movq_0x1918__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a32a)
  store %struct.Memory* %call_48a32a, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 48a331	 Bytes: 8
  %loadMem_48a331 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a331 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a331)
  store %struct.Memory* %call_48a331, %struct.Memory** %MEMORY

  ; Code: movl 0x9c(%rcx), %esi	 RIP: 48a339	 Bytes: 6
  %loadMem_48a339 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a339 = call %struct.Memory* @routine_movl_0x9c__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a339)
  store %struct.Memory* %call_48a339, %struct.Memory** %MEMORY

  ; Code: addl -0x2c(%rbp), %esi	 RIP: 48a33f	 Bytes: 3
  %loadMem_48a33f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a33f = call %struct.Memory* @routine_addl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a33f)
  store %struct.Memory* %call_48a33f, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rcx	 RIP: 48a342	 Bytes: 3
  %loadMem_48a342 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a342 = call %struct.Memory* @routine_movslq__esi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a342)
  store %struct.Memory* %call_48a342, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 48a345	 Bytes: 4
  %loadMem_48a345 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a345 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a345)
  store %struct.Memory* %call_48a345, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 48a349	 Bytes: 8
  %loadMem_48a349 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a349 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a349)
  store %struct.Memory* %call_48a349, %struct.Memory** %MEMORY

  ; Code: movl 0x98(%rcx), %esi	 RIP: 48a351	 Bytes: 6
  %loadMem_48a351 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a351 = call %struct.Memory* @routine_movl_0x98__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a351)
  store %struct.Memory* %call_48a351, %struct.Memory** %MEMORY

  ; Code: addl -0x30(%rbp), %esi	 RIP: 48a357	 Bytes: 3
  %loadMem_48a357 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a357 = call %struct.Memory* @routine_addl_MINUS0x30__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a357)
  store %struct.Memory* %call_48a357, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rcx	 RIP: 48a35a	 Bytes: 3
  %loadMem_48a35a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a35a = call %struct.Memory* @routine_movslq__esi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a35a)
  store %struct.Memory* %call_48a35a, %struct.Memory** %MEMORY

  ; Code: movw %dx, (%rax,%rcx,2)	 RIP: 48a35d	 Bytes: 4
  %loadMem_48a35d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a35d = call %struct.Memory* @routine_movw__dx____rax__rcx_2_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a35d)
  store %struct.Memory* %call_48a35d, %struct.Memory** %MEMORY

  ; Code: jmpq .L_48a39e	 RIP: 48a361	 Bytes: 5
  %loadMem_48a361 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a361 = call %struct.Memory* @routine_jmpq_.L_48a39e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a361, i64 61, i64 5)
  store %struct.Memory* %call_48a361, %struct.Memory** %MEMORY

  br label %block_.L_48a39e

  ; Code: .L_48a366:	 RIP: 48a366	 Bytes: 0
block_.L_48a366:

  ; Code: movq $0x722ff0, %rax	 RIP: 48a366	 Bytes: 10
  %loadMem_48a366 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a366 = call %struct.Memory* @routine_movq__0x722ff0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a366)
  store %struct.Memory* %call_48a366, %struct.Memory** %MEMORY

  ; Code: movq $0x6cea50, %rcx	 RIP: 48a370	 Bytes: 10
  %loadMem_48a370 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a370 = call %struct.Memory* @routine_movq__0x6cea50___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a370)
  store %struct.Memory* %call_48a370, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rdx	 RIP: 48a37a	 Bytes: 4
  %loadMem_48a37a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a37a = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a37a)
  store %struct.Memory* %call_48a37a, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rdx	 RIP: 48a37e	 Bytes: 4
  %loadMem_48a37e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a37e = call %struct.Memory* @routine_shlq__0x6___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a37e)
  store %struct.Memory* %call_48a37e, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 48a382	 Bytes: 3
  %loadMem_48a382 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a382 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a382)
  store %struct.Memory* %call_48a382, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rdx	 RIP: 48a385	 Bytes: 4
  %loadMem_48a385 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a385 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a385)
  store %struct.Memory* %call_48a385, %struct.Memory** %MEMORY

  ; Code: movl (%rcx,%rdx,4), %esi	 RIP: 48a389	 Bytes: 3
  %loadMem_48a389 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a389 = call %struct.Memory* @routine_movl___rcx__rdx_4____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a389)
  store %struct.Memory* %call_48a389, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 48a38c	 Bytes: 4
  %loadMem_48a38c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a38c = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a38c)
  store %struct.Memory* %call_48a38c, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rcx	 RIP: 48a390	 Bytes: 4
  %loadMem_48a390 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a390 = call %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a390)
  store %struct.Memory* %call_48a390, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 48a394	 Bytes: 3
  %loadMem_48a394 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a394 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a394)
  store %struct.Memory* %call_48a394, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 48a397	 Bytes: 4
  %loadMem_48a397 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a397 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a397)
  store %struct.Memory* %call_48a397, %struct.Memory** %MEMORY

  ; Code: movl %esi, (%rax,%rcx,4)	 RIP: 48a39b	 Bytes: 3
  %loadMem_48a39b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a39b = call %struct.Memory* @routine_movl__esi____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a39b)
  store %struct.Memory* %call_48a39b, %struct.Memory** %MEMORY

  ; Code: .L_48a39e:	 RIP: 48a39e	 Bytes: 0
  br label %block_.L_48a39e
block_.L_48a39e:

  ; Code: jmpq .L_48a3a3	 RIP: 48a39e	 Bytes: 5
  %loadMem_48a39e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a39e = call %struct.Memory* @routine_jmpq_.L_48a3a3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a39e, i64 5, i64 5)
  store %struct.Memory* %call_48a39e, %struct.Memory** %MEMORY

  br label %block_.L_48a3a3

  ; Code: .L_48a3a3:	 RIP: 48a3a3	 Bytes: 0
block_.L_48a3a3:

  ; Code: movl -0x30(%rbp), %eax	 RIP: 48a3a3	 Bytes: 3
  %loadMem_48a3a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a3a3 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a3a3)
  store %struct.Memory* %call_48a3a3, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 48a3a6	 Bytes: 3
  %loadMem_48a3a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a3a6 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a3a6)
  store %struct.Memory* %call_48a3a6, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x30(%rbp)	 RIP: 48a3a9	 Bytes: 3
  %loadMem_48a3a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a3a9 = call %struct.Memory* @routine_movl__eax__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a3a9)
  store %struct.Memory* %call_48a3a9, %struct.Memory** %MEMORY

  ; Code: jmpq .L_48a2e6	 RIP: 48a3ac	 Bytes: 5
  %loadMem_48a3ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a3ac = call %struct.Memory* @routine_jmpq_.L_48a2e6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a3ac, i64 -198, i64 5)
  store %struct.Memory* %call_48a3ac, %struct.Memory** %MEMORY

  br label %block_.L_48a2e6

  ; Code: .L_48a3b1:	 RIP: 48a3b1	 Bytes: 0
block_.L_48a3b1:

  ; Code: jmpq .L_48a3b6	 RIP: 48a3b1	 Bytes: 5
  %loadMem_48a3b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a3b1 = call %struct.Memory* @routine_jmpq_.L_48a3b6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a3b1, i64 5, i64 5)
  store %struct.Memory* %call_48a3b1, %struct.Memory** %MEMORY

  br label %block_.L_48a3b6

  ; Code: .L_48a3b6:	 RIP: 48a3b6	 Bytes: 0
block_.L_48a3b6:

  ; Code: movl -0x2c(%rbp), %eax	 RIP: 48a3b6	 Bytes: 3
  %loadMem_48a3b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a3b6 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a3b6)
  store %struct.Memory* %call_48a3b6, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 48a3b9	 Bytes: 3
  %loadMem_48a3b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a3b9 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a3b9)
  store %struct.Memory* %call_48a3b9, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2c(%rbp)	 RIP: 48a3bc	 Bytes: 3
  %loadMem_48a3bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a3bc = call %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a3bc)
  store %struct.Memory* %call_48a3bc, %struct.Memory** %MEMORY

  ; Code: jmpq .L_48a2d5	 RIP: 48a3bf	 Bytes: 5
  %loadMem_48a3bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a3bf = call %struct.Memory* @routine_jmpq_.L_48a2d5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a3bf, i64 -234, i64 5)
  store %struct.Memory* %call_48a3bf, %struct.Memory** %MEMORY

  br label %block_.L_48a2d5

  ; Code: .L_48a3c4:	 RIP: 48a3c4	 Bytes: 0
block_.L_48a3c4:

  ; Code: jmpq .L_48a3c9	 RIP: 48a3c4	 Bytes: 5
  %loadMem_48a3c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a3c4 = call %struct.Memory* @routine_jmpq_.L_48a3c9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a3c4, i64 5, i64 5)
  store %struct.Memory* %call_48a3c4, %struct.Memory** %MEMORY

  br label %block_.L_48a3c9

  ; Code: .L_48a3c9:	 RIP: 48a3c9	 Bytes: 0
block_.L_48a3c9:

  ; Code: movl $0x0, -0x2c(%rbp)	 RIP: 48a3c9	 Bytes: 7
  %loadMem_48a3c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a3c9 = call %struct.Memory* @routine_movl__0x0__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a3c9)
  store %struct.Memory* %call_48a3c9, %struct.Memory** %MEMORY

  ; Code: .L_48a3d0:	 RIP: 48a3d0	 Bytes: 0
  br label %block_.L_48a3d0
block_.L_48a3d0:

  ; Code: cmpl $0x10, -0x2c(%rbp)	 RIP: 48a3d0	 Bytes: 4
  %loadMem_48a3d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a3d0 = call %struct.Memory* @routine_cmpl__0x10__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a3d0)
  store %struct.Memory* %call_48a3d0, %struct.Memory** %MEMORY

  ; Code: jge .L_48a52e	 RIP: 48a3d4	 Bytes: 6
  %loadMem_48a3d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a3d4 = call %struct.Memory* @routine_jge_.L_48a52e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a3d4, i8* %BRANCH_TAKEN, i64 346, i64 6, i64 6)
  store %struct.Memory* %call_48a3d4, %struct.Memory** %MEMORY

  %loadBr_48a3d4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48a3d4 = icmp eq i8 %loadBr_48a3d4, 1
  br i1 %cmpBr_48a3d4, label %block_.L_48a52e, label %block_48a3da

block_48a3da:
  ; Code: movl $0x0, -0x30(%rbp)	 RIP: 48a3da	 Bytes: 7
  %loadMem_48a3da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a3da = call %struct.Memory* @routine_movl__0x0__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a3da)
  store %struct.Memory* %call_48a3da, %struct.Memory** %MEMORY

  ; Code: .L_48a3e1:	 RIP: 48a3e1	 Bytes: 0
  br label %block_.L_48a3e1
block_.L_48a3e1:

  ; Code: cmpl $0x10, -0x30(%rbp)	 RIP: 48a3e1	 Bytes: 4
  %loadMem_48a3e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a3e1 = call %struct.Memory* @routine_cmpl__0x10__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a3e1)
  store %struct.Memory* %call_48a3e1, %struct.Memory** %MEMORY

  ; Code: jge .L_48a51b	 RIP: 48a3e5	 Bytes: 6
  %loadMem_48a3e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a3e5 = call %struct.Memory* @routine_jge_.L_48a51b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a3e5, i8* %BRANCH_TAKEN, i64 310, i64 6, i64 6)
  store %struct.Memory* %call_48a3e5, %struct.Memory** %MEMORY

  %loadBr_48a3e5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48a3e5 = icmp eq i8 %loadBr_48a3e5, 1
  br i1 %cmpBr_48a3e5, label %block_.L_48a51b, label %block_48a3eb

block_48a3eb:
  ; Code: movq $0x6d40f0, %rax	 RIP: 48a3eb	 Bytes: 10
  %loadMem_48a3eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a3eb = call %struct.Memory* @routine_movq__0x6d40f0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a3eb)
  store %struct.Memory* %call_48a3eb, %struct.Memory** %MEMORY

  ; Code: movq $0x7247d0, %rcx	 RIP: 48a3f5	 Bytes: 10
  %loadMem_48a3f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a3f5 = call %struct.Memory* @routine_movq__0x7247d0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a3f5)
  store %struct.Memory* %call_48a3f5, %struct.Memory** %MEMORY

  ; Code: movq $0x6f6fa0, %rdx	 RIP: 48a3ff	 Bytes: 10
  %loadMem_48a3ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a3ff = call %struct.Memory* @routine_movq__0x6f6fa0___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a3ff)
  store %struct.Memory* %call_48a3ff, %struct.Memory** %MEMORY

  ; Code: movq $0x6ce5a0, %rsi	 RIP: 48a409	 Bytes: 10
  %loadMem_48a409 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a409 = call %struct.Memory* @routine_movq__0x6ce5a0___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a409)
  store %struct.Memory* %call_48a409, %struct.Memory** %MEMORY

  ; Code: movq $0x725610, %rdi	 RIP: 48a413	 Bytes: 10
  %loadMem_48a413 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a413 = call %struct.Memory* @routine_movq__0x725610___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a413)
  store %struct.Memory* %call_48a413, %struct.Memory** %MEMORY

  ; Code: movq %rdi, %r8	 RIP: 48a41d	 Bytes: 3
  %loadMem_48a41d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a41d = call %struct.Memory* @routine_movq__rdi___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a41d)
  store %struct.Memory* %call_48a41d, %struct.Memory** %MEMORY

  ; Code: addq $0x800, %r8	 RIP: 48a420	 Bytes: 7
  %loadMem_48a420 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a420 = call %struct.Memory* @routine_addq__0x800___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a420)
  store %struct.Memory* %call_48a420, %struct.Memory** %MEMORY

  ; Code: movq $0x70d650, %r9	 RIP: 48a427	 Bytes: 10
  %loadMem_48a427 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a427 = call %struct.Memory* @routine_movq__0x70d650___r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a427)
  store %struct.Memory* %call_48a427, %struct.Memory** %MEMORY

  ; Code: movq %r9, %r10	 RIP: 48a431	 Bytes: 3
  %loadMem_48a431 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a431 = call %struct.Memory* @routine_movq__r9___r10(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a431)
  store %struct.Memory* %call_48a431, %struct.Memory** %MEMORY

  ; Code: addq $0x800, %r10	 RIP: 48a434	 Bytes: 7
  %loadMem_48a434 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a434 = call %struct.Memory* @routine_addq__0x800___r10(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a434)
  store %struct.Memory* %call_48a434, %struct.Memory** %MEMORY

  ; Code: movq %rdi, %r11	 RIP: 48a43b	 Bytes: 3
  %loadMem_48a43b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a43b = call %struct.Memory* @routine_movq__rdi___r11(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a43b)
  store %struct.Memory* %call_48a43b, %struct.Memory** %MEMORY

  ; Code: addq $0x400, %r11	 RIP: 48a43e	 Bytes: 7
  %loadMem_48a43e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a43e = call %struct.Memory* @routine_addq__0x400___r11(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a43e)
  store %struct.Memory* %call_48a43e, %struct.Memory** %MEMORY

  ; Code: movq %r9, %rbx	 RIP: 48a445	 Bytes: 3
  %loadMem_48a445 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a445 = call %struct.Memory* @routine_movq__r9___rbx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a445)
  store %struct.Memory* %call_48a445, %struct.Memory** %MEMORY

  ; Code: addq $0x400, %rbx	 RIP: 48a448	 Bytes: 7
  %loadMem_48a448 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a448 = call %struct.Memory* @routine_addq__0x400___rbx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a448)
  store %struct.Memory* %call_48a448, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %r14	 RIP: 48a44f	 Bytes: 4
  %loadMem_48a44f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a44f = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____r14(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a44f)
  store %struct.Memory* %call_48a44f, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %r14	 RIP: 48a453	 Bytes: 4
  %loadMem_48a453 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a453 = call %struct.Memory* @routine_shlq__0x6___r14(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a453)
  store %struct.Memory* %call_48a453, %struct.Memory** %MEMORY

  ; Code: addq %r14, %r9	 RIP: 48a457	 Bytes: 3
  %loadMem_48a457 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a457 = call %struct.Memory* @routine_addq__r14___r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a457)
  store %struct.Memory* %call_48a457, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %r14	 RIP: 48a45a	 Bytes: 4
  %loadMem_48a45a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a45a = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____r14(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a45a)
  store %struct.Memory* %call_48a45a, %struct.Memory** %MEMORY

  ; Code: movl (%r9,%r14,4), %r15d	 RIP: 48a45e	 Bytes: 4
  %loadMem_48a45e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a45e = call %struct.Memory* @routine_movl___r9__r14_4____r15d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a45e)
  store %struct.Memory* %call_48a45e, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %r9	 RIP: 48a462	 Bytes: 4
  %loadMem_48a462 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a462 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a462)
  store %struct.Memory* %call_48a462, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %r9	 RIP: 48a466	 Bytes: 4
  %loadMem_48a466 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a466 = call %struct.Memory* @routine_shlq__0x6___r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a466)
  store %struct.Memory* %call_48a466, %struct.Memory** %MEMORY

  ; Code: addq %r9, %rdi	 RIP: 48a46a	 Bytes: 3
  %loadMem_48a46a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a46a = call %struct.Memory* @routine_addq__r9___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a46a)
  store %struct.Memory* %call_48a46a, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %r9	 RIP: 48a46d	 Bytes: 4
  %loadMem_48a46d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a46d = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a46d)
  store %struct.Memory* %call_48a46d, %struct.Memory** %MEMORY

  ; Code: movl %r15d, (%rdi,%r9,4)	 RIP: 48a471	 Bytes: 4
  %loadMem_48a471 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a471 = call %struct.Memory* @routine_movl__r15d____rdi__r9_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a471)
  store %struct.Memory* %call_48a471, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rdi	 RIP: 48a475	 Bytes: 4
  %loadMem_48a475 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a475 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a475)
  store %struct.Memory* %call_48a475, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rdi	 RIP: 48a479	 Bytes: 4
  %loadMem_48a479 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a479 = call %struct.Memory* @routine_shlq__0x6___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a479)
  store %struct.Memory* %call_48a479, %struct.Memory** %MEMORY

  ; Code: addq %rdi, %rbx	 RIP: 48a47d	 Bytes: 3
  %loadMem_48a47d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a47d = call %struct.Memory* @routine_addq__rdi___rbx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a47d)
  store %struct.Memory* %call_48a47d, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rdi	 RIP: 48a480	 Bytes: 4
  %loadMem_48a480 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a480 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a480)
  store %struct.Memory* %call_48a480, %struct.Memory** %MEMORY

  ; Code: movl (%rbx,%rdi,4), %r15d	 RIP: 48a484	 Bytes: 4
  %loadMem_48a484 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a484 = call %struct.Memory* @routine_movl___rbx__rdi_4____r15d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a484)
  store %struct.Memory* %call_48a484, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rdi	 RIP: 48a488	 Bytes: 4
  %loadMem_48a488 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a488 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a488)
  store %struct.Memory* %call_48a488, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rdi	 RIP: 48a48c	 Bytes: 4
  %loadMem_48a48c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a48c = call %struct.Memory* @routine_shlq__0x6___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a48c)
  store %struct.Memory* %call_48a48c, %struct.Memory** %MEMORY

  ; Code: addq %rdi, %r11	 RIP: 48a490	 Bytes: 3
  %loadMem_48a490 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a490 = call %struct.Memory* @routine_addq__rdi___r11(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a490)
  store %struct.Memory* %call_48a490, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rdi	 RIP: 48a493	 Bytes: 4
  %loadMem_48a493 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a493 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a493)
  store %struct.Memory* %call_48a493, %struct.Memory** %MEMORY

  ; Code: movl %r15d, (%r11,%rdi,4)	 RIP: 48a497	 Bytes: 4
  %loadMem_48a497 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a497 = call %struct.Memory* @routine_movl__r15d____r11__rdi_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a497)
  store %struct.Memory* %call_48a497, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rdi	 RIP: 48a49b	 Bytes: 4
  %loadMem_48a49b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a49b = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a49b)
  store %struct.Memory* %call_48a49b, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rdi	 RIP: 48a49f	 Bytes: 4
  %loadMem_48a49f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a49f = call %struct.Memory* @routine_shlq__0x6___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a49f)
  store %struct.Memory* %call_48a49f, %struct.Memory** %MEMORY

  ; Code: addq %rdi, %r10	 RIP: 48a4a3	 Bytes: 3
  %loadMem_48a4a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a4a3 = call %struct.Memory* @routine_addq__rdi___r10(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a4a3)
  store %struct.Memory* %call_48a4a3, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rdi	 RIP: 48a4a6	 Bytes: 4
  %loadMem_48a4a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a4a6 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a4a6)
  store %struct.Memory* %call_48a4a6, %struct.Memory** %MEMORY

  ; Code: movl (%r10,%rdi,4), %r15d	 RIP: 48a4aa	 Bytes: 4
  %loadMem_48a4aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a4aa = call %struct.Memory* @routine_movl___r10__rdi_4____r15d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a4aa)
  store %struct.Memory* %call_48a4aa, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rdi	 RIP: 48a4ae	 Bytes: 4
  %loadMem_48a4ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a4ae = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a4ae)
  store %struct.Memory* %call_48a4ae, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rdi	 RIP: 48a4b2	 Bytes: 4
  %loadMem_48a4b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a4b2 = call %struct.Memory* @routine_shlq__0x6___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a4b2)
  store %struct.Memory* %call_48a4b2, %struct.Memory** %MEMORY

  ; Code: addq %rdi, %r8	 RIP: 48a4b6	 Bytes: 3
  %loadMem_48a4b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a4b6 = call %struct.Memory* @routine_addq__rdi___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a4b6)
  store %struct.Memory* %call_48a4b6, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rdi	 RIP: 48a4b9	 Bytes: 4
  %loadMem_48a4b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a4b9 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a4b9)
  store %struct.Memory* %call_48a4b9, %struct.Memory** %MEMORY

  ; Code: movl %r15d, (%r8,%rdi,4)	 RIP: 48a4bd	 Bytes: 4
  %loadMem_48a4bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a4bd = call %struct.Memory* @routine_movl__r15d____r8__rdi_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a4bd)
  store %struct.Memory* %call_48a4bd, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rdi	 RIP: 48a4c1	 Bytes: 4
  %loadMem_48a4c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a4c1 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a4c1)
  store %struct.Memory* %call_48a4c1, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rdi	 RIP: 48a4c5	 Bytes: 4
  %loadMem_48a4c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a4c5 = call %struct.Memory* @routine_shlq__0x6___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a4c5)
  store %struct.Memory* %call_48a4c5, %struct.Memory** %MEMORY

  ; Code: addq %rdi, %rsi	 RIP: 48a4c9	 Bytes: 3
  %loadMem_48a4c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a4c9 = call %struct.Memory* @routine_addq__rdi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a4c9)
  store %struct.Memory* %call_48a4c9, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rdi	 RIP: 48a4cc	 Bytes: 4
  %loadMem_48a4cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a4cc = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a4cc)
  store %struct.Memory* %call_48a4cc, %struct.Memory** %MEMORY

  ; Code: movl (%rsi,%rdi,4), %r15d	 RIP: 48a4d0	 Bytes: 4
  %loadMem_48a4d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a4d0 = call %struct.Memory* @routine_movl___rsi__rdi_4____r15d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a4d0)
  store %struct.Memory* %call_48a4d0, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rsi	 RIP: 48a4d4	 Bytes: 4
  %loadMem_48a4d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a4d4 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a4d4)
  store %struct.Memory* %call_48a4d4, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rsi	 RIP: 48a4d8	 Bytes: 4
  %loadMem_48a4d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a4d8 = call %struct.Memory* @routine_shlq__0x6___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a4d8)
  store %struct.Memory* %call_48a4d8, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rdx	 RIP: 48a4dc	 Bytes: 3
  %loadMem_48a4dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a4dc = call %struct.Memory* @routine_addq__rsi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a4dc)
  store %struct.Memory* %call_48a4dc, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rsi	 RIP: 48a4df	 Bytes: 4
  %loadMem_48a4df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a4df = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a4df)
  store %struct.Memory* %call_48a4df, %struct.Memory** %MEMORY

  ; Code: movl %r15d, (%rdx,%rsi,4)	 RIP: 48a4e3	 Bytes: 4
  %loadMem_48a4e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a4e3 = call %struct.Memory* @routine_movl__r15d____rdx__rsi_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a4e3)
  store %struct.Memory* %call_48a4e3, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rdx	 RIP: 48a4e7	 Bytes: 4
  %loadMem_48a4e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a4e7 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a4e7)
  store %struct.Memory* %call_48a4e7, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rdx	 RIP: 48a4eb	 Bytes: 4
  %loadMem_48a4eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a4eb = call %struct.Memory* @routine_shlq__0x6___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a4eb)
  store %struct.Memory* %call_48a4eb, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 48a4ef	 Bytes: 3
  %loadMem_48a4ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a4ef = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a4ef)
  store %struct.Memory* %call_48a4ef, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rdx	 RIP: 48a4f2	 Bytes: 4
  %loadMem_48a4f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a4f2 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a4f2)
  store %struct.Memory* %call_48a4f2, %struct.Memory** %MEMORY

  ; Code: movl (%rcx,%rdx,4), %r15d	 RIP: 48a4f6	 Bytes: 4
  %loadMem_48a4f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a4f6 = call %struct.Memory* @routine_movl___rcx__rdx_4____r15d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a4f6)
  store %struct.Memory* %call_48a4f6, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 48a4fa	 Bytes: 4
  %loadMem_48a4fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a4fa = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a4fa)
  store %struct.Memory* %call_48a4fa, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rcx	 RIP: 48a4fe	 Bytes: 4
  %loadMem_48a4fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a4fe = call %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a4fe)
  store %struct.Memory* %call_48a4fe, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 48a502	 Bytes: 3
  %loadMem_48a502 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a502 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a502)
  store %struct.Memory* %call_48a502, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 48a505	 Bytes: 4
  %loadMem_48a505 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a505 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a505)
  store %struct.Memory* %call_48a505, %struct.Memory** %MEMORY

  ; Code: movl %r15d, (%rax,%rcx,4)	 RIP: 48a509	 Bytes: 4
  %loadMem_48a509 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a509 = call %struct.Memory* @routine_movl__r15d____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a509)
  store %struct.Memory* %call_48a509, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %eax	 RIP: 48a50d	 Bytes: 3
  %loadMem_48a50d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a50d = call %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a50d)
  store %struct.Memory* %call_48a50d, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 48a510	 Bytes: 3
  %loadMem_48a510 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a510 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a510)
  store %struct.Memory* %call_48a510, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x30(%rbp)	 RIP: 48a513	 Bytes: 3
  %loadMem_48a513 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a513 = call %struct.Memory* @routine_movl__eax__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a513)
  store %struct.Memory* %call_48a513, %struct.Memory** %MEMORY

  ; Code: jmpq .L_48a3e1	 RIP: 48a516	 Bytes: 5
  %loadMem_48a516 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a516 = call %struct.Memory* @routine_jmpq_.L_48a3e1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a516, i64 -309, i64 5)
  store %struct.Memory* %call_48a516, %struct.Memory** %MEMORY

  br label %block_.L_48a3e1

  ; Code: .L_48a51b:	 RIP: 48a51b	 Bytes: 0
block_.L_48a51b:

  ; Code: jmpq .L_48a520	 RIP: 48a51b	 Bytes: 5
  %loadMem_48a51b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a51b = call %struct.Memory* @routine_jmpq_.L_48a520(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a51b, i64 5, i64 5)
  store %struct.Memory* %call_48a51b, %struct.Memory** %MEMORY

  br label %block_.L_48a520

  ; Code: .L_48a520:	 RIP: 48a520	 Bytes: 0
block_.L_48a520:

  ; Code: movl -0x2c(%rbp), %eax	 RIP: 48a520	 Bytes: 3
  %loadMem_48a520 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a520 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a520)
  store %struct.Memory* %call_48a520, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 48a523	 Bytes: 3
  %loadMem_48a523 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a523 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a523)
  store %struct.Memory* %call_48a523, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2c(%rbp)	 RIP: 48a526	 Bytes: 3
  %loadMem_48a526 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a526 = call %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a526)
  store %struct.Memory* %call_48a526, %struct.Memory** %MEMORY

  ; Code: jmpq .L_48a3d0	 RIP: 48a529	 Bytes: 5
  %loadMem_48a529 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a529 = call %struct.Memory* @routine_jmpq_.L_48a3d0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a529, i64 -345, i64 5)
  store %struct.Memory* %call_48a529, %struct.Memory** %MEMORY

  br label %block_.L_48a3d0

  ; Code: .L_48a52e:	 RIP: 48a52e	 Bytes: 0
block_.L_48a52e:

  ; Code: jmpq .L_48aa05	 RIP: 48a52e	 Bytes: 5
  %loadMem_48a52e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a52e = call %struct.Memory* @routine_jmpq_.L_48aa05(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a52e, i64 1239, i64 5)
  store %struct.Memory* %call_48a52e, %struct.Memory** %MEMORY

  br label %block_.L_48aa05

  ; Code: .L_48a533:	 RIP: 48a533	 Bytes: 0
block_.L_48a533:

  ; Code: movl $0x0, -0x24(%rbp)	 RIP: 48a533	 Bytes: 7
  %loadMem_48a533 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a533 = call %struct.Memory* @routine_movl__0x0__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a533)
  store %struct.Memory* %call_48a533, %struct.Memory** %MEMORY

  ; Code: .L_48a53a:	 RIP: 48a53a	 Bytes: 0
  br label %block_.L_48a53a
block_.L_48a53a:

  ; Code: movl -0x24(%rbp), %eax	 RIP: 48a53a	 Bytes: 3
  %loadMem_48a53a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a53a = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a53a)
  store %struct.Memory* %call_48a53a, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 48a53d	 Bytes: 8
  %loadMem_48a53d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a53d = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a53d)
  store %struct.Memory* %call_48a53d, %struct.Memory** %MEMORY

  ; Code: movl 0x11bf4(%rcx), %edx	 RIP: 48a545	 Bytes: 6
  %loadMem_48a545 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a545 = call %struct.Memory* @routine_movl_0x11bf4__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a545)
  store %struct.Memory* %call_48a545, %struct.Memory** %MEMORY

  ; Code: addl $0x4, %edx	 RIP: 48a54b	 Bytes: 3
  %loadMem_48a54b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a54b = call %struct.Memory* @routine_addl__0x4___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a54b)
  store %struct.Memory* %call_48a54b, %struct.Memory** %MEMORY

  ; Code: cmpl %edx, %eax	 RIP: 48a54e	 Bytes: 2
  %loadMem_48a54e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a54e = call %struct.Memory* @routine_cmpl__edx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a54e)
  store %struct.Memory* %call_48a54e, %struct.Memory** %MEMORY

  ; Code: jge .L_48a625	 RIP: 48a550	 Bytes: 6
  %loadMem_48a550 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a550 = call %struct.Memory* @routine_jge_.L_48a625(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a550, i8* %BRANCH_TAKEN, i64 213, i64 6, i64 6)
  store %struct.Memory* %call_48a550, %struct.Memory** %MEMORY

  %loadBr_48a550 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48a550 = icmp eq i8 %loadBr_48a550, 1
  br i1 %cmpBr_48a550, label %block_.L_48a625, label %block_48a556

block_48a556:
  ; Code: movl $0x0, -0x28(%rbp)	 RIP: 48a556	 Bytes: 7
  %loadMem_48a556 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a556 = call %struct.Memory* @routine_movl__0x0__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a556)
  store %struct.Memory* %call_48a556, %struct.Memory** %MEMORY

  ; Code: .L_48a55d:	 RIP: 48a55d	 Bytes: 0
  br label %block_.L_48a55d
block_.L_48a55d:

  ; Code: cmpl $0x4, -0x28(%rbp)	 RIP: 48a55d	 Bytes: 4
  %loadMem_48a55d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a55d = call %struct.Memory* @routine_cmpl__0x4__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a55d)
  store %struct.Memory* %call_48a55d, %struct.Memory** %MEMORY

  ; Code: jge .L_48a612	 RIP: 48a561	 Bytes: 6
  %loadMem_48a561 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a561 = call %struct.Memory* @routine_jge_.L_48a612(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a561, i8* %BRANCH_TAKEN, i64 177, i64 6, i64 6)
  store %struct.Memory* %call_48a561, %struct.Memory** %MEMORY

  %loadBr_48a561 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48a561 = icmp eq i8 %loadBr_48a561, 1
  br i1 %cmpBr_48a561, label %block_.L_48a612, label %block_48a567

block_48a567:
  ; Code: movl $0x0, -0x2c(%rbp)	 RIP: 48a567	 Bytes: 7
  %loadMem_48a567 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a567 = call %struct.Memory* @routine_movl__0x0__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a567)
  store %struct.Memory* %call_48a567, %struct.Memory** %MEMORY

  ; Code: .L_48a56e:	 RIP: 48a56e	 Bytes: 0
  br label %block_.L_48a56e
block_.L_48a56e:

  ; Code: cmpl $0x2, -0x2c(%rbp)	 RIP: 48a56e	 Bytes: 4
  %loadMem_48a56e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a56e = call %struct.Memory* @routine_cmpl__0x2__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a56e)
  store %struct.Memory* %call_48a56e, %struct.Memory** %MEMORY

  ; Code: jge .L_48a5ff	 RIP: 48a572	 Bytes: 6
  %loadMem_48a572 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a572 = call %struct.Memory* @routine_jge_.L_48a5ff(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a572, i8* %BRANCH_TAKEN, i64 141, i64 6, i64 6)
  store %struct.Memory* %call_48a572, %struct.Memory** %MEMORY

  %loadBr_48a572 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48a572 = icmp eq i8 %loadBr_48a572, 1
  br i1 %cmpBr_48a572, label %block_.L_48a5ff, label %block_48a578

block_48a578:
  ; Code: movl $0x0, -0x30(%rbp)	 RIP: 48a578	 Bytes: 7
  %loadMem_48a578 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a578 = call %struct.Memory* @routine_movl__0x0__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a578)
  store %struct.Memory* %call_48a578, %struct.Memory** %MEMORY

  ; Code: .L_48a57f:	 RIP: 48a57f	 Bytes: 0
  br label %block_.L_48a57f
block_.L_48a57f:

  ; Code: cmpl $0x41, -0x30(%rbp)	 RIP: 48a57f	 Bytes: 4
  %loadMem_48a57f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a57f = call %struct.Memory* @routine_cmpl__0x41__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a57f)
  store %struct.Memory* %call_48a57f, %struct.Memory** %MEMORY

  ; Code: jge .L_48a5ec	 RIP: 48a583	 Bytes: 6
  %loadMem_48a583 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a583 = call %struct.Memory* @routine_jge_.L_48a5ec(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a583, i8* %BRANCH_TAKEN, i64 105, i64 6, i64 6)
  store %struct.Memory* %call_48a583, %struct.Memory** %MEMORY

  %loadBr_48a583 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48a583 = icmp eq i8 %loadBr_48a583, 1
  br i1 %cmpBr_48a583, label %block_.L_48a5ec, label %block_48a589

block_48a589:
  ; Code: movq 0x6cc5f8, %rax	 RIP: 48a589	 Bytes: 8
  %loadMem_48a589 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a589 = call %struct.Memory* @routine_movq_0x6cc5f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a589)
  store %struct.Memory* %call_48a589, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rcx	 RIP: 48a591	 Bytes: 4
  %loadMem_48a591 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a591 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a591)
  store %struct.Memory* %call_48a591, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 48a595	 Bytes: 4
  %loadMem_48a595 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a595 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a595)
  store %struct.Memory* %call_48a595, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 48a599	 Bytes: 4
  %loadMem_48a599 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a599 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a599)
  store %struct.Memory* %call_48a599, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 48a59d	 Bytes: 4
  %loadMem_48a59d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a59d = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a59d)
  store %struct.Memory* %call_48a59d, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 48a5a1	 Bytes: 4
  %loadMem_48a5a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a5a1 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a5a1)
  store %struct.Memory* %call_48a5a1, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 48a5a5	 Bytes: 4
  %loadMem_48a5a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a5a5 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a5a5)
  store %struct.Memory* %call_48a5a5, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 48a5a9	 Bytes: 4
  %loadMem_48a5a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a5a9 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a5a9)
  store %struct.Memory* %call_48a5a9, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rcx,4), %edx	 RIP: 48a5ad	 Bytes: 3
  %loadMem_48a5ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a5ad = call %struct.Memory* @routine_movl___rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a5ad)
  store %struct.Memory* %call_48a5ad, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 48a5b0	 Bytes: 8
  %loadMem_48a5b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a5b0 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a5b0)
  store %struct.Memory* %call_48a5b0, %struct.Memory** %MEMORY

  ; Code: movq 0x3738(%rax), %rax	 RIP: 48a5b8	 Bytes: 7
  %loadMem_48a5b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a5b8 = call %struct.Memory* @routine_movq_0x3738__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a5b8)
  store %struct.Memory* %call_48a5b8, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rcx	 RIP: 48a5bf	 Bytes: 4
  %loadMem_48a5bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a5bf = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a5bf)
  store %struct.Memory* %call_48a5bf, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 48a5c3	 Bytes: 4
  %loadMem_48a5c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a5c3 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a5c3)
  store %struct.Memory* %call_48a5c3, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 48a5c7	 Bytes: 4
  %loadMem_48a5c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a5c7 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a5c7)
  store %struct.Memory* %call_48a5c7, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 48a5cb	 Bytes: 4
  %loadMem_48a5cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a5cb = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a5cb)
  store %struct.Memory* %call_48a5cb, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 48a5cf	 Bytes: 4
  %loadMem_48a5cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a5cf = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a5cf)
  store %struct.Memory* %call_48a5cf, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 48a5d3	 Bytes: 4
  %loadMem_48a5d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a5d3 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a5d3)
  store %struct.Memory* %call_48a5d3, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 48a5d7	 Bytes: 4
  %loadMem_48a5d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a5d7 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a5d7)
  store %struct.Memory* %call_48a5d7, %struct.Memory** %MEMORY

  ; Code: movl %edx, (%rax,%rcx,4)	 RIP: 48a5db	 Bytes: 3
  %loadMem_48a5db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a5db = call %struct.Memory* @routine_movl__edx____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a5db)
  store %struct.Memory* %call_48a5db, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %eax	 RIP: 48a5de	 Bytes: 3
  %loadMem_48a5de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a5de = call %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a5de)
  store %struct.Memory* %call_48a5de, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 48a5e1	 Bytes: 3
  %loadMem_48a5e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a5e1 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a5e1)
  store %struct.Memory* %call_48a5e1, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x30(%rbp)	 RIP: 48a5e4	 Bytes: 3
  %loadMem_48a5e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a5e4 = call %struct.Memory* @routine_movl__eax__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a5e4)
  store %struct.Memory* %call_48a5e4, %struct.Memory** %MEMORY

  ; Code: jmpq .L_48a57f	 RIP: 48a5e7	 Bytes: 5
  %loadMem_48a5e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a5e7 = call %struct.Memory* @routine_jmpq_.L_48a57f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a5e7, i64 -104, i64 5)
  store %struct.Memory* %call_48a5e7, %struct.Memory** %MEMORY

  br label %block_.L_48a57f

  ; Code: .L_48a5ec:	 RIP: 48a5ec	 Bytes: 0
block_.L_48a5ec:

  ; Code: jmpq .L_48a5f1	 RIP: 48a5ec	 Bytes: 5
  %loadMem_48a5ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a5ec = call %struct.Memory* @routine_jmpq_.L_48a5f1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a5ec, i64 5, i64 5)
  store %struct.Memory* %call_48a5ec, %struct.Memory** %MEMORY

  br label %block_.L_48a5f1

  ; Code: .L_48a5f1:	 RIP: 48a5f1	 Bytes: 0
block_.L_48a5f1:

  ; Code: movl -0x2c(%rbp), %eax	 RIP: 48a5f1	 Bytes: 3
  %loadMem_48a5f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a5f1 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a5f1)
  store %struct.Memory* %call_48a5f1, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 48a5f4	 Bytes: 3
  %loadMem_48a5f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a5f4 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a5f4)
  store %struct.Memory* %call_48a5f4, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2c(%rbp)	 RIP: 48a5f7	 Bytes: 3
  %loadMem_48a5f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a5f7 = call %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a5f7)
  store %struct.Memory* %call_48a5f7, %struct.Memory** %MEMORY

  ; Code: jmpq .L_48a56e	 RIP: 48a5fa	 Bytes: 5
  %loadMem_48a5fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a5fa = call %struct.Memory* @routine_jmpq_.L_48a56e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a5fa, i64 -140, i64 5)
  store %struct.Memory* %call_48a5fa, %struct.Memory** %MEMORY

  br label %block_.L_48a56e

  ; Code: .L_48a5ff:	 RIP: 48a5ff	 Bytes: 0
block_.L_48a5ff:

  ; Code: jmpq .L_48a604	 RIP: 48a5ff	 Bytes: 5
  %loadMem_48a5ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a5ff = call %struct.Memory* @routine_jmpq_.L_48a604(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a5ff, i64 5, i64 5)
  store %struct.Memory* %call_48a5ff, %struct.Memory** %MEMORY

  br label %block_.L_48a604

  ; Code: .L_48a604:	 RIP: 48a604	 Bytes: 0
block_.L_48a604:

  ; Code: movl -0x28(%rbp), %eax	 RIP: 48a604	 Bytes: 3
  %loadMem_48a604 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a604 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a604)
  store %struct.Memory* %call_48a604, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 48a607	 Bytes: 3
  %loadMem_48a607 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a607 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a607)
  store %struct.Memory* %call_48a607, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x28(%rbp)	 RIP: 48a60a	 Bytes: 3
  %loadMem_48a60a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a60a = call %struct.Memory* @routine_movl__eax__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a60a)
  store %struct.Memory* %call_48a60a, %struct.Memory** %MEMORY

  ; Code: jmpq .L_48a55d	 RIP: 48a60d	 Bytes: 5
  %loadMem_48a60d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a60d = call %struct.Memory* @routine_jmpq_.L_48a55d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a60d, i64 -176, i64 5)
  store %struct.Memory* %call_48a60d, %struct.Memory** %MEMORY

  br label %block_.L_48a55d

  ; Code: .L_48a612:	 RIP: 48a612	 Bytes: 0
block_.L_48a612:

  ; Code: jmpq .L_48a617	 RIP: 48a612	 Bytes: 5
  %loadMem_48a612 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a612 = call %struct.Memory* @routine_jmpq_.L_48a617(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a612, i64 5, i64 5)
  store %struct.Memory* %call_48a612, %struct.Memory** %MEMORY

  br label %block_.L_48a617

  ; Code: .L_48a617:	 RIP: 48a617	 Bytes: 0
block_.L_48a617:

  ; Code: movl -0x24(%rbp), %eax	 RIP: 48a617	 Bytes: 3
  %loadMem_48a617 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a617 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a617)
  store %struct.Memory* %call_48a617, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 48a61a	 Bytes: 3
  %loadMem_48a61a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a61a = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a61a)
  store %struct.Memory* %call_48a61a, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x24(%rbp)	 RIP: 48a61d	 Bytes: 3
  %loadMem_48a61d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a61d = call %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a61d)
  store %struct.Memory* %call_48a61d, %struct.Memory** %MEMORY

  ; Code: jmpq .L_48a53a	 RIP: 48a620	 Bytes: 5
  %loadMem_48a620 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a620 = call %struct.Memory* @routine_jmpq_.L_48a53a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a620, i64 -230, i64 5)
  store %struct.Memory* %call_48a620, %struct.Memory** %MEMORY

  br label %block_.L_48a53a

  ; Code: .L_48a625:	 RIP: 48a625	 Bytes: 0
block_.L_48a625:

  ; Code: cmpl $0x5, 0x6d1f8c	 RIP: 48a625	 Bytes: 8
  %loadMem_48a625 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a625 = call %struct.Memory* @routine_cmpl__0x5__0x6d1f8c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a625)
  store %struct.Memory* %call_48a625, %struct.Memory** %MEMORY

  ; Code: jg .L_48a77c	 RIP: 48a62d	 Bytes: 6
  %loadMem_48a62d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a62d = call %struct.Memory* @routine_jg_.L_48a77c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a62d, i8* %BRANCH_TAKEN, i64 335, i64 6, i64 6)
  store %struct.Memory* %call_48a62d, %struct.Memory** %MEMORY

  %loadBr_48a62d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48a62d = icmp eq i8 %loadBr_48a62d, 1
  br i1 %cmpBr_48a62d, label %block_.L_48a77c, label %block_48a633

block_48a633:
  ; Code: movq 0x6cb900, %rax	 RIP: 48a633	 Bytes: 8
  %loadMem_48a633 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a633 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a633)
  store %struct.Memory* %call_48a633, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, 0x18(%rax)	 RIP: 48a63b	 Bytes: 4
  %loadMem_48a63b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a63b = call %struct.Memory* @routine_cmpl__0x3__0x18__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a63b)
  store %struct.Memory* %call_48a63b, %struct.Memory** %MEMORY

  ; Code: je .L_48a77c	 RIP: 48a63f	 Bytes: 6
  %loadMem_48a63f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a63f = call %struct.Memory* @routine_je_.L_48a77c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a63f, i8* %BRANCH_TAKEN, i64 317, i64 6, i64 6)
  store %struct.Memory* %call_48a63f, %struct.Memory** %MEMORY

  %loadBr_48a63f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48a63f = icmp eq i8 %loadBr_48a63f, 1
  br i1 %cmpBr_48a63f, label %block_.L_48a77c, label %block_48a645

block_48a645:
  ; Code: movq 0x6cb900, %rax	 RIP: 48a645	 Bytes: 8
  %loadMem_48a645 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a645 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a645)
  store %struct.Memory* %call_48a645, %struct.Memory** %MEMORY

  ; Code: movl 0x28(%rax), %ecx	 RIP: 48a64d	 Bytes: 3
  %loadMem_48a64d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a64d = call %struct.Memory* @routine_movl_0x28__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a64d)
  store %struct.Memory* %call_48a64d, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 48a650	 Bytes: 8
  %loadMem_48a650 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a650 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a650)
  store %struct.Memory* %call_48a650, %struct.Memory** %MEMORY

  ; Code: addl 0x11bdc(%rax), %ecx	 RIP: 48a658	 Bytes: 6
  %loadMem_48a658 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a658 = call %struct.Memory* @routine_addl_0x11bdc__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a658)
  store %struct.Memory* %call_48a658, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %ecx	 RIP: 48a65e	 Bytes: 3
  %loadMem_48a65e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a65e = call %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a65e)
  store %struct.Memory* %call_48a65e, %struct.Memory** %MEMORY

  ; Code: jne .L_48a67c	 RIP: 48a661	 Bytes: 6
  %loadMem_48a661 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a661 = call %struct.Memory* @routine_jne_.L_48a67c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a661, i8* %BRANCH_TAKEN, i64 27, i64 6, i64 6)
  store %struct.Memory* %call_48a661, %struct.Memory** %MEMORY

  %loadBr_48a661 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48a661 = icmp eq i8 %loadBr_48a661, 1
  br i1 %cmpBr_48a661, label %block_.L_48a67c, label %block_48a667

block_48a667:
  ; Code: movq 0x6cb900, %rax	 RIP: 48a667	 Bytes: 8
  %loadMem_48a667 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a667 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a667)
  store %struct.Memory* %call_48a667, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x11c00(%rax)	 RIP: 48a66f	 Bytes: 7
  %loadMem_48a66f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a66f = call %struct.Memory* @routine_cmpl__0x0__0x11c00__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a66f)
  store %struct.Memory* %call_48a66f, %struct.Memory** %MEMORY

  ; Code: jne .L_48a77c	 RIP: 48a676	 Bytes: 6
  %loadMem_48a676 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a676 = call %struct.Memory* @routine_jne_.L_48a77c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a676, i8* %BRANCH_TAKEN, i64 262, i64 6, i64 6)
  store %struct.Memory* %call_48a676, %struct.Memory** %MEMORY

  %loadBr_48a676 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48a676 = icmp eq i8 %loadBr_48a676, 1
  br i1 %cmpBr_48a676, label %block_.L_48a77c, label %block_.L_48a67c

  ; Code: .L_48a67c:	 RIP: 48a67c	 Bytes: 0
block_.L_48a67c:

  ; Code: movq -0x20(%rbp), %rax	 RIP: 48a67c	 Bytes: 4
  %loadMem_48a67c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a67c = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a67c)
  store %struct.Memory* %call_48a67c, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x1cc(%rax)	 RIP: 48a680	 Bytes: 10
  %loadMem_48a680 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a680 = call %struct.Memory* @routine_movl__0x0__0x1cc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a680)
  store %struct.Memory* %call_48a680, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rax	 RIP: 48a68a	 Bytes: 4
  %loadMem_48a68a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a68a = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a68a)
  store %struct.Memory* %call_48a68a, %struct.Memory** %MEMORY

  ; Code: movq $0x0, 0x1d0(%rax)	 RIP: 48a68e	 Bytes: 11
  %loadMem_48a68e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a68e = call %struct.Memory* @routine_movq__0x0__0x1d0__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a68e)
  store %struct.Memory* %call_48a68e, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x2c(%rbp)	 RIP: 48a699	 Bytes: 7
  %loadMem_48a699 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a699 = call %struct.Memory* @routine_movl__0x0__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a699)
  store %struct.Memory* %call_48a699, %struct.Memory** %MEMORY

  ; Code: .L_48a6a0:	 RIP: 48a6a0	 Bytes: 0
  br label %block_.L_48a6a0
block_.L_48a6a0:

  ; Code: cmpl $0x10, -0x2c(%rbp)	 RIP: 48a6a0	 Bytes: 4
  %loadMem_48a6a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a6a0 = call %struct.Memory* @routine_cmpl__0x10__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a6a0)
  store %struct.Memory* %call_48a6a0, %struct.Memory** %MEMORY

  ; Code: jge .L_48a777	 RIP: 48a6a4	 Bytes: 6
  %loadMem_48a6a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a6a4 = call %struct.Memory* @routine_jge_.L_48a777(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a6a4, i8* %BRANCH_TAKEN, i64 211, i64 6, i64 6)
  store %struct.Memory* %call_48a6a4, %struct.Memory** %MEMORY

  %loadBr_48a6a4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48a6a4 = icmp eq i8 %loadBr_48a6a4, 1
  br i1 %cmpBr_48a6a4, label %block_.L_48a777, label %block_48a6aa

block_48a6aa:
  ; Code: movl $0x0, -0x30(%rbp)	 RIP: 48a6aa	 Bytes: 7
  %loadMem_48a6aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a6aa = call %struct.Memory* @routine_movl__0x0__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a6aa)
  store %struct.Memory* %call_48a6aa, %struct.Memory** %MEMORY

  ; Code: .L_48a6b1:	 RIP: 48a6b1	 Bytes: 0
  br label %block_.L_48a6b1
block_.L_48a6b1:

  ; Code: cmpl $0x10, -0x30(%rbp)	 RIP: 48a6b1	 Bytes: 4
  %loadMem_48a6b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a6b1 = call %struct.Memory* @routine_cmpl__0x10__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a6b1)
  store %struct.Memory* %call_48a6b1, %struct.Memory** %MEMORY

  ; Code: jge .L_48a764	 RIP: 48a6b5	 Bytes: 6
  %loadMem_48a6b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a6b5 = call %struct.Memory* @routine_jge_.L_48a764(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a6b5, i8* %BRANCH_TAKEN, i64 175, i64 6, i64 6)
  store %struct.Memory* %call_48a6b5, %struct.Memory** %MEMORY

  %loadBr_48a6b5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48a6b5 = icmp eq i8 %loadBr_48a6b5, 1
  br i1 %cmpBr_48a6b5, label %block_.L_48a764, label %block_48a6bb

block_48a6bb:
  ; Code: movq 0x6cb900, %rax	 RIP: 48a6bb	 Bytes: 8
  %loadMem_48a6bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a6bb = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a6bb)
  store %struct.Memory* %call_48a6bb, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x11c14(%rax)	 RIP: 48a6c3	 Bytes: 7
  %loadMem_48a6c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a6c3 = call %struct.Memory* @routine_cmpl__0x0__0x11c14__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a6c3)
  store %struct.Memory* %call_48a6c3, %struct.Memory** %MEMORY

  ; Code: jne .L_48a731	 RIP: 48a6ca	 Bytes: 6
  %loadMem_48a6ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a6ca = call %struct.Memory* @routine_jne_.L_48a731(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a6ca, i8* %BRANCH_TAKEN, i64 103, i64 6, i64 6)
  store %struct.Memory* %call_48a6ca, %struct.Memory** %MEMORY

  %loadBr_48a6ca = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48a6ca = icmp eq i8 %loadBr_48a6ca, 1
  br i1 %cmpBr_48a6ca, label %block_.L_48a731, label %block_48a6d0

block_48a6d0:
  ; Code: movq $0x6f7ea0, %rax	 RIP: 48a6d0	 Bytes: 10
  %loadMem_48a6d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a6d0 = call %struct.Memory* @routine_movq__0x6f7ea0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a6d0)
  store %struct.Memory* %call_48a6d0, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 48a6da	 Bytes: 4
  %loadMem_48a6da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a6da = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a6da)
  store %struct.Memory* %call_48a6da, %struct.Memory** %MEMORY

  ; Code: shlq $0x5, %rcx	 RIP: 48a6de	 Bytes: 4
  %loadMem_48a6de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a6de = call %struct.Memory* @routine_shlq__0x5___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a6de)
  store %struct.Memory* %call_48a6de, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 48a6e2	 Bytes: 3
  %loadMem_48a6e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a6e2 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a6e2)
  store %struct.Memory* %call_48a6e2, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 48a6e5	 Bytes: 4
  %loadMem_48a6e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a6e5 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a6e5)
  store %struct.Memory* %call_48a6e5, %struct.Memory** %MEMORY

  ; Code: movw (%rax,%rcx,2), %dx	 RIP: 48a6e9	 Bytes: 4
  %loadMem_48a6e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a6e9 = call %struct.Memory* @routine_movw___rax__rcx_2____dx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a6e9)
  store %struct.Memory* %call_48a6e9, %struct.Memory** %MEMORY

  ; Code: movq 0x70fcf0, %rax	 RIP: 48a6ed	 Bytes: 8
  %loadMem_48a6ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a6ed = call %struct.Memory* @routine_movq_0x70fcf0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a6ed)
  store %struct.Memory* %call_48a6ed, %struct.Memory** %MEMORY

  ; Code: movq 0x1918(%rax), %rax	 RIP: 48a6f5	 Bytes: 7
  %loadMem_48a6f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a6f5 = call %struct.Memory* @routine_movq_0x1918__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a6f5)
  store %struct.Memory* %call_48a6f5, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 48a6fc	 Bytes: 8
  %loadMem_48a6fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a6fc = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a6fc)
  store %struct.Memory* %call_48a6fc, %struct.Memory** %MEMORY

  ; Code: movl 0x9c(%rcx), %esi	 RIP: 48a704	 Bytes: 6
  %loadMem_48a704 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a704 = call %struct.Memory* @routine_movl_0x9c__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a704)
  store %struct.Memory* %call_48a704, %struct.Memory** %MEMORY

  ; Code: addl -0x2c(%rbp), %esi	 RIP: 48a70a	 Bytes: 3
  %loadMem_48a70a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a70a = call %struct.Memory* @routine_addl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a70a)
  store %struct.Memory* %call_48a70a, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rcx	 RIP: 48a70d	 Bytes: 3
  %loadMem_48a70d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a70d = call %struct.Memory* @routine_movslq__esi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a70d)
  store %struct.Memory* %call_48a70d, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 48a710	 Bytes: 4
  %loadMem_48a710 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a710 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a710)
  store %struct.Memory* %call_48a710, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 48a714	 Bytes: 8
  %loadMem_48a714 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a714 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a714)
  store %struct.Memory* %call_48a714, %struct.Memory** %MEMORY

  ; Code: movl 0x98(%rcx), %esi	 RIP: 48a71c	 Bytes: 6
  %loadMem_48a71c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a71c = call %struct.Memory* @routine_movl_0x98__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a71c)
  store %struct.Memory* %call_48a71c, %struct.Memory** %MEMORY

  ; Code: addl -0x30(%rbp), %esi	 RIP: 48a722	 Bytes: 3
  %loadMem_48a722 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a722 = call %struct.Memory* @routine_addl_MINUS0x30__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a722)
  store %struct.Memory* %call_48a722, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rcx	 RIP: 48a725	 Bytes: 3
  %loadMem_48a725 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a725 = call %struct.Memory* @routine_movslq__esi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a725)
  store %struct.Memory* %call_48a725, %struct.Memory** %MEMORY

  ; Code: movw %dx, (%rax,%rcx,2)	 RIP: 48a728	 Bytes: 4
  %loadMem_48a728 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a728 = call %struct.Memory* @routine_movw__dx____rax__rcx_2_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a728)
  store %struct.Memory* %call_48a728, %struct.Memory** %MEMORY

  ; Code: jmpq .L_48a751	 RIP: 48a72c	 Bytes: 5
  %loadMem_48a72c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a72c = call %struct.Memory* @routine_jmpq_.L_48a751(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a72c, i64 37, i64 5)
  store %struct.Memory* %call_48a72c, %struct.Memory** %MEMORY

  br label %block_.L_48a751

  ; Code: .L_48a731:	 RIP: 48a731	 Bytes: 0
block_.L_48a731:

  ; Code: movq $0x722ff0, %rax	 RIP: 48a731	 Bytes: 10
  %loadMem_48a731 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a731 = call %struct.Memory* @routine_movq__0x722ff0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a731)
  store %struct.Memory* %call_48a731, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 48a73b	 Bytes: 4
  %loadMem_48a73b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a73b = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a73b)
  store %struct.Memory* %call_48a73b, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rcx	 RIP: 48a73f	 Bytes: 4
  %loadMem_48a73f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a73f = call %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a73f)
  store %struct.Memory* %call_48a73f, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 48a743	 Bytes: 3
  %loadMem_48a743 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a743 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a743)
  store %struct.Memory* %call_48a743, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 48a746	 Bytes: 4
  %loadMem_48a746 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a746 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a746)
  store %struct.Memory* %call_48a746, %struct.Memory** %MEMORY

  ; Code: movl $0x0, (%rax,%rcx,4)	 RIP: 48a74a	 Bytes: 7
  %loadMem_48a74a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a74a = call %struct.Memory* @routine_movl__0x0____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a74a)
  store %struct.Memory* %call_48a74a, %struct.Memory** %MEMORY

  ; Code: .L_48a751:	 RIP: 48a751	 Bytes: 0
  br label %block_.L_48a751
block_.L_48a751:

  ; Code: jmpq .L_48a756	 RIP: 48a751	 Bytes: 5
  %loadMem_48a751 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a751 = call %struct.Memory* @routine_jmpq_.L_48a756(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a751, i64 5, i64 5)
  store %struct.Memory* %call_48a751, %struct.Memory** %MEMORY

  br label %block_.L_48a756

  ; Code: .L_48a756:	 RIP: 48a756	 Bytes: 0
block_.L_48a756:

  ; Code: movl -0x30(%rbp), %eax	 RIP: 48a756	 Bytes: 3
  %loadMem_48a756 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a756 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a756)
  store %struct.Memory* %call_48a756, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 48a759	 Bytes: 3
  %loadMem_48a759 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a759 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a759)
  store %struct.Memory* %call_48a759, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x30(%rbp)	 RIP: 48a75c	 Bytes: 3
  %loadMem_48a75c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a75c = call %struct.Memory* @routine_movl__eax__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a75c)
  store %struct.Memory* %call_48a75c, %struct.Memory** %MEMORY

  ; Code: jmpq .L_48a6b1	 RIP: 48a75f	 Bytes: 5
  %loadMem_48a75f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a75f = call %struct.Memory* @routine_jmpq_.L_48a6b1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a75f, i64 -174, i64 5)
  store %struct.Memory* %call_48a75f, %struct.Memory** %MEMORY

  br label %block_.L_48a6b1

  ; Code: .L_48a764:	 RIP: 48a764	 Bytes: 0
block_.L_48a764:

  ; Code: jmpq .L_48a769	 RIP: 48a764	 Bytes: 5
  %loadMem_48a764 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a764 = call %struct.Memory* @routine_jmpq_.L_48a769(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a764, i64 5, i64 5)
  store %struct.Memory* %call_48a764, %struct.Memory** %MEMORY

  br label %block_.L_48a769

  ; Code: .L_48a769:	 RIP: 48a769	 Bytes: 0
block_.L_48a769:

  ; Code: movl -0x2c(%rbp), %eax	 RIP: 48a769	 Bytes: 3
  %loadMem_48a769 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a769 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a769)
  store %struct.Memory* %call_48a769, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 48a76c	 Bytes: 3
  %loadMem_48a76c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a76c = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a76c)
  store %struct.Memory* %call_48a76c, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2c(%rbp)	 RIP: 48a76f	 Bytes: 3
  %loadMem_48a76f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a76f = call %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a76f)
  store %struct.Memory* %call_48a76f, %struct.Memory** %MEMORY

  ; Code: jmpq .L_48a6a0	 RIP: 48a772	 Bytes: 5
  %loadMem_48a772 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a772 = call %struct.Memory* @routine_jmpq_.L_48a6a0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a772, i64 -210, i64 5)
  store %struct.Memory* %call_48a772, %struct.Memory** %MEMORY

  br label %block_.L_48a6a0

  ; Code: .L_48a777:	 RIP: 48a777	 Bytes: 0
block_.L_48a777:

  ; Code: jmpq .L_48a89b	 RIP: 48a777	 Bytes: 5
  %loadMem_48a777 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a777 = call %struct.Memory* @routine_jmpq_.L_48a89b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a777, i64 292, i64 5)
  store %struct.Memory* %call_48a777, %struct.Memory** %MEMORY

  br label %block_.L_48a89b

  ; Code: .L_48a77c:	 RIP: 48a77c	 Bytes: 0
block_.L_48a77c:

  ; Code: movl 0x70d1a8, %eax	 RIP: 48a77c	 Bytes: 7
  %loadMem_48a77c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a77c = call %struct.Memory* @routine_movl_0x70d1a8___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a77c)
  store %struct.Memory* %call_48a77c, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 48a783	 Bytes: 4
  %loadMem_48a783 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a783 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a783)
  store %struct.Memory* %call_48a783, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x1cc(%rcx)	 RIP: 48a787	 Bytes: 6
  %loadMem_48a787 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a787 = call %struct.Memory* @routine_movl__eax__0x1cc__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a787)
  store %struct.Memory* %call_48a787, %struct.Memory** %MEMORY

  ; Code: movslq 0x726848, %rcx	 RIP: 48a78d	 Bytes: 8
  %loadMem_48a78d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a78d = call %struct.Memory* @routine_movslq_0x726848___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a78d)
  store %struct.Memory* %call_48a78d, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rdx	 RIP: 48a795	 Bytes: 4
  %loadMem_48a795 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a795 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a795)
  store %struct.Memory* %call_48a795, %struct.Memory** %MEMORY

  ; Code: movq %rcx, 0x1d0(%rdx)	 RIP: 48a799	 Bytes: 7
  %loadMem_48a799 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a799 = call %struct.Memory* @routine_movq__rcx__0x1d0__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a799)
  store %struct.Memory* %call_48a799, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x2c(%rbp)	 RIP: 48a7a0	 Bytes: 7
  %loadMem_48a7a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a7a0 = call %struct.Memory* @routine_movl__0x0__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a7a0)
  store %struct.Memory* %call_48a7a0, %struct.Memory** %MEMORY

  ; Code: .L_48a7a7:	 RIP: 48a7a7	 Bytes: 0
  br label %block_.L_48a7a7
block_.L_48a7a7:

  ; Code: cmpl $0x10, -0x2c(%rbp)	 RIP: 48a7a7	 Bytes: 4
  %loadMem_48a7a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a7a7 = call %struct.Memory* @routine_cmpl__0x10__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a7a7)
  store %struct.Memory* %call_48a7a7, %struct.Memory** %MEMORY

  ; Code: jge .L_48a896	 RIP: 48a7ab	 Bytes: 6
  %loadMem_48a7ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a7ab = call %struct.Memory* @routine_jge_.L_48a896(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a7ab, i8* %BRANCH_TAKEN, i64 235, i64 6, i64 6)
  store %struct.Memory* %call_48a7ab, %struct.Memory** %MEMORY

  %loadBr_48a7ab = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48a7ab = icmp eq i8 %loadBr_48a7ab, 1
  br i1 %cmpBr_48a7ab, label %block_.L_48a896, label %block_48a7b1

block_48a7b1:
  ; Code: movl $0x0, -0x30(%rbp)	 RIP: 48a7b1	 Bytes: 7
  %loadMem_48a7b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a7b1 = call %struct.Memory* @routine_movl__0x0__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a7b1)
  store %struct.Memory* %call_48a7b1, %struct.Memory** %MEMORY

  ; Code: .L_48a7b8:	 RIP: 48a7b8	 Bytes: 0
  br label %block_.L_48a7b8
block_.L_48a7b8:

  ; Code: cmpl $0x10, -0x30(%rbp)	 RIP: 48a7b8	 Bytes: 4
  %loadMem_48a7b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a7b8 = call %struct.Memory* @routine_cmpl__0x10__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a7b8)
  store %struct.Memory* %call_48a7b8, %struct.Memory** %MEMORY

  ; Code: jge .L_48a883	 RIP: 48a7bc	 Bytes: 6
  %loadMem_48a7bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a7bc = call %struct.Memory* @routine_jge_.L_48a883(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a7bc, i8* %BRANCH_TAKEN, i64 199, i64 6, i64 6)
  store %struct.Memory* %call_48a7bc, %struct.Memory** %MEMORY

  %loadBr_48a7bc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48a7bc = icmp eq i8 %loadBr_48a7bc, 1
  br i1 %cmpBr_48a7bc, label %block_.L_48a883, label %block_48a7c2

block_48a7c2:
  ; Code: movq 0x6cb900, %rax	 RIP: 48a7c2	 Bytes: 8
  %loadMem_48a7c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a7c2 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a7c2)
  store %struct.Memory* %call_48a7c2, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x11c14(%rax)	 RIP: 48a7ca	 Bytes: 7
  %loadMem_48a7ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a7ca = call %struct.Memory* @routine_cmpl__0x0__0x11c14__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a7ca)
  store %struct.Memory* %call_48a7ca, %struct.Memory** %MEMORY

  ; Code: jne .L_48a838	 RIP: 48a7d1	 Bytes: 6
  %loadMem_48a7d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a7d1 = call %struct.Memory* @routine_jne_.L_48a838(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a7d1, i8* %BRANCH_TAKEN, i64 103, i64 6, i64 6)
  store %struct.Memory* %call_48a7d1, %struct.Memory** %MEMORY

  %loadBr_48a7d1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48a7d1 = icmp eq i8 %loadBr_48a7d1, 1
  br i1 %cmpBr_48a7d1, label %block_.L_48a838, label %block_48a7d7

block_48a7d7:
  ; Code: movq $0x723430, %rax	 RIP: 48a7d7	 Bytes: 10
  %loadMem_48a7d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a7d7 = call %struct.Memory* @routine_movq__0x723430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a7d7)
  store %struct.Memory* %call_48a7d7, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 48a7e1	 Bytes: 4
  %loadMem_48a7e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a7e1 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a7e1)
  store %struct.Memory* %call_48a7e1, %struct.Memory** %MEMORY

  ; Code: shlq $0x5, %rcx	 RIP: 48a7e5	 Bytes: 4
  %loadMem_48a7e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a7e5 = call %struct.Memory* @routine_shlq__0x5___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a7e5)
  store %struct.Memory* %call_48a7e5, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 48a7e9	 Bytes: 3
  %loadMem_48a7e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a7e9 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a7e9)
  store %struct.Memory* %call_48a7e9, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 48a7ec	 Bytes: 4
  %loadMem_48a7ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a7ec = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a7ec)
  store %struct.Memory* %call_48a7ec, %struct.Memory** %MEMORY

  ; Code: movw (%rax,%rcx,2), %dx	 RIP: 48a7f0	 Bytes: 4
  %loadMem_48a7f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a7f0 = call %struct.Memory* @routine_movw___rax__rcx_2____dx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a7f0)
  store %struct.Memory* %call_48a7f0, %struct.Memory** %MEMORY

  ; Code: movq 0x70fcf0, %rax	 RIP: 48a7f4	 Bytes: 8
  %loadMem_48a7f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a7f4 = call %struct.Memory* @routine_movq_0x70fcf0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a7f4)
  store %struct.Memory* %call_48a7f4, %struct.Memory** %MEMORY

  ; Code: movq 0x1918(%rax), %rax	 RIP: 48a7fc	 Bytes: 7
  %loadMem_48a7fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a7fc = call %struct.Memory* @routine_movq_0x1918__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a7fc)
  store %struct.Memory* %call_48a7fc, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 48a803	 Bytes: 8
  %loadMem_48a803 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a803 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a803)
  store %struct.Memory* %call_48a803, %struct.Memory** %MEMORY

  ; Code: movl 0x9c(%rcx), %esi	 RIP: 48a80b	 Bytes: 6
  %loadMem_48a80b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a80b = call %struct.Memory* @routine_movl_0x9c__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a80b)
  store %struct.Memory* %call_48a80b, %struct.Memory** %MEMORY

  ; Code: addl -0x2c(%rbp), %esi	 RIP: 48a811	 Bytes: 3
  %loadMem_48a811 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a811 = call %struct.Memory* @routine_addl_MINUS0x2c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a811)
  store %struct.Memory* %call_48a811, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rcx	 RIP: 48a814	 Bytes: 3
  %loadMem_48a814 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a814 = call %struct.Memory* @routine_movslq__esi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a814)
  store %struct.Memory* %call_48a814, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 48a817	 Bytes: 4
  %loadMem_48a817 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a817 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a817)
  store %struct.Memory* %call_48a817, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 48a81b	 Bytes: 8
  %loadMem_48a81b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a81b = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a81b)
  store %struct.Memory* %call_48a81b, %struct.Memory** %MEMORY

  ; Code: movl 0x98(%rcx), %esi	 RIP: 48a823	 Bytes: 6
  %loadMem_48a823 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a823 = call %struct.Memory* @routine_movl_0x98__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a823)
  store %struct.Memory* %call_48a823, %struct.Memory** %MEMORY

  ; Code: addl -0x30(%rbp), %esi	 RIP: 48a829	 Bytes: 3
  %loadMem_48a829 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a829 = call %struct.Memory* @routine_addl_MINUS0x30__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a829)
  store %struct.Memory* %call_48a829, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rcx	 RIP: 48a82c	 Bytes: 3
  %loadMem_48a82c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a82c = call %struct.Memory* @routine_movslq__esi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a82c)
  store %struct.Memory* %call_48a82c, %struct.Memory** %MEMORY

  ; Code: movw %dx, (%rax,%rcx,2)	 RIP: 48a82f	 Bytes: 4
  %loadMem_48a82f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a82f = call %struct.Memory* @routine_movw__dx____rax__rcx_2_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a82f)
  store %struct.Memory* %call_48a82f, %struct.Memory** %MEMORY

  ; Code: jmpq .L_48a870	 RIP: 48a833	 Bytes: 5
  %loadMem_48a833 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a833 = call %struct.Memory* @routine_jmpq_.L_48a870(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a833, i64 61, i64 5)
  store %struct.Memory* %call_48a833, %struct.Memory** %MEMORY

  br label %block_.L_48a870

  ; Code: .L_48a838:	 RIP: 48a838	 Bytes: 0
block_.L_48a838:

  ; Code: movq $0x722ff0, %rax	 RIP: 48a838	 Bytes: 10
  %loadMem_48a838 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a838 = call %struct.Memory* @routine_movq__0x722ff0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a838)
  store %struct.Memory* %call_48a838, %struct.Memory** %MEMORY

  ; Code: movq $0x6d0290, %rcx	 RIP: 48a842	 Bytes: 10
  %loadMem_48a842 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a842 = call %struct.Memory* @routine_movq__0x6d0290___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a842)
  store %struct.Memory* %call_48a842, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rdx	 RIP: 48a84c	 Bytes: 4
  %loadMem_48a84c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a84c = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a84c)
  store %struct.Memory* %call_48a84c, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rdx	 RIP: 48a850	 Bytes: 4
  %loadMem_48a850 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a850 = call %struct.Memory* @routine_shlq__0x6___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a850)
  store %struct.Memory* %call_48a850, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 48a854	 Bytes: 3
  %loadMem_48a854 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a854 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a854)
  store %struct.Memory* %call_48a854, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rdx	 RIP: 48a857	 Bytes: 4
  %loadMem_48a857 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a857 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a857)
  store %struct.Memory* %call_48a857, %struct.Memory** %MEMORY

  ; Code: movl (%rcx,%rdx,4), %esi	 RIP: 48a85b	 Bytes: 3
  %loadMem_48a85b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a85b = call %struct.Memory* @routine_movl___rcx__rdx_4____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a85b)
  store %struct.Memory* %call_48a85b, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 48a85e	 Bytes: 4
  %loadMem_48a85e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a85e = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a85e)
  store %struct.Memory* %call_48a85e, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rcx	 RIP: 48a862	 Bytes: 4
  %loadMem_48a862 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a862 = call %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a862)
  store %struct.Memory* %call_48a862, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 48a866	 Bytes: 3
  %loadMem_48a866 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a866 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a866)
  store %struct.Memory* %call_48a866, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 48a869	 Bytes: 4
  %loadMem_48a869 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a869 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a869)
  store %struct.Memory* %call_48a869, %struct.Memory** %MEMORY

  ; Code: movl %esi, (%rax,%rcx,4)	 RIP: 48a86d	 Bytes: 3
  %loadMem_48a86d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a86d = call %struct.Memory* @routine_movl__esi____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a86d)
  store %struct.Memory* %call_48a86d, %struct.Memory** %MEMORY

  ; Code: .L_48a870:	 RIP: 48a870	 Bytes: 0
  br label %block_.L_48a870
block_.L_48a870:

  ; Code: jmpq .L_48a875	 RIP: 48a870	 Bytes: 5
  %loadMem_48a870 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a870 = call %struct.Memory* @routine_jmpq_.L_48a875(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a870, i64 5, i64 5)
  store %struct.Memory* %call_48a870, %struct.Memory** %MEMORY

  br label %block_.L_48a875

  ; Code: .L_48a875:	 RIP: 48a875	 Bytes: 0
block_.L_48a875:

  ; Code: movl -0x30(%rbp), %eax	 RIP: 48a875	 Bytes: 3
  %loadMem_48a875 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a875 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a875)
  store %struct.Memory* %call_48a875, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 48a878	 Bytes: 3
  %loadMem_48a878 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a878 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a878)
  store %struct.Memory* %call_48a878, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x30(%rbp)	 RIP: 48a87b	 Bytes: 3
  %loadMem_48a87b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a87b = call %struct.Memory* @routine_movl__eax__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a87b)
  store %struct.Memory* %call_48a87b, %struct.Memory** %MEMORY

  ; Code: jmpq .L_48a7b8	 RIP: 48a87e	 Bytes: 5
  %loadMem_48a87e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a87e = call %struct.Memory* @routine_jmpq_.L_48a7b8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a87e, i64 -198, i64 5)
  store %struct.Memory* %call_48a87e, %struct.Memory** %MEMORY

  br label %block_.L_48a7b8

  ; Code: .L_48a883:	 RIP: 48a883	 Bytes: 0
block_.L_48a883:

  ; Code: jmpq .L_48a888	 RIP: 48a883	 Bytes: 5
  %loadMem_48a883 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a883 = call %struct.Memory* @routine_jmpq_.L_48a888(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a883, i64 5, i64 5)
  store %struct.Memory* %call_48a883, %struct.Memory** %MEMORY

  br label %block_.L_48a888

  ; Code: .L_48a888:	 RIP: 48a888	 Bytes: 0
block_.L_48a888:

  ; Code: movl -0x2c(%rbp), %eax	 RIP: 48a888	 Bytes: 3
  %loadMem_48a888 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a888 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a888)
  store %struct.Memory* %call_48a888, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 48a88b	 Bytes: 3
  %loadMem_48a88b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a88b = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a88b)
  store %struct.Memory* %call_48a88b, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2c(%rbp)	 RIP: 48a88e	 Bytes: 3
  %loadMem_48a88e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a88e = call %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a88e)
  store %struct.Memory* %call_48a88e, %struct.Memory** %MEMORY

  ; Code: jmpq .L_48a7a7	 RIP: 48a891	 Bytes: 5
  %loadMem_48a891 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a891 = call %struct.Memory* @routine_jmpq_.L_48a7a7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a891, i64 -234, i64 5)
  store %struct.Memory* %call_48a891, %struct.Memory** %MEMORY

  br label %block_.L_48a7a7

  ; Code: .L_48a896:	 RIP: 48a896	 Bytes: 0
block_.L_48a896:

  ; Code: jmpq .L_48a89b	 RIP: 48a896	 Bytes: 5
  %loadMem_48a896 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a896 = call %struct.Memory* @routine_jmpq_.L_48a89b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a896, i64 5, i64 5)
  store %struct.Memory* %call_48a896, %struct.Memory** %MEMORY

  br label %block_.L_48a89b

  ; Code: .L_48a89b:	 RIP: 48a89b	 Bytes: 0
block_.L_48a89b:

  ; Code: movl $0x0, -0x2c(%rbp)	 RIP: 48a89b	 Bytes: 7
  %loadMem_48a89b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a89b = call %struct.Memory* @routine_movl__0x0__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a89b)
  store %struct.Memory* %call_48a89b, %struct.Memory** %MEMORY

  ; Code: .L_48a8a2:	 RIP: 48a8a2	 Bytes: 0
  br label %block_.L_48a8a2
block_.L_48a8a2:

  ; Code: cmpl $0x10, -0x2c(%rbp)	 RIP: 48a8a2	 Bytes: 4
  %loadMem_48a8a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a8a2 = call %struct.Memory* @routine_cmpl__0x10__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a8a2)
  store %struct.Memory* %call_48a8a2, %struct.Memory** %MEMORY

  ; Code: jge .L_48aa00	 RIP: 48a8a6	 Bytes: 6
  %loadMem_48a8a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a8a6 = call %struct.Memory* @routine_jge_.L_48aa00(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a8a6, i8* %BRANCH_TAKEN, i64 346, i64 6, i64 6)
  store %struct.Memory* %call_48a8a6, %struct.Memory** %MEMORY

  %loadBr_48a8a6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48a8a6 = icmp eq i8 %loadBr_48a8a6, 1
  br i1 %cmpBr_48a8a6, label %block_.L_48aa00, label %block_48a8ac

block_48a8ac:
  ; Code: movl $0x0, -0x30(%rbp)	 RIP: 48a8ac	 Bytes: 7
  %loadMem_48a8ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a8ac = call %struct.Memory* @routine_movl__0x0__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a8ac)
  store %struct.Memory* %call_48a8ac, %struct.Memory** %MEMORY

  ; Code: .L_48a8b3:	 RIP: 48a8b3	 Bytes: 0
  br label %block_.L_48a8b3
block_.L_48a8b3:

  ; Code: cmpl $0x10, -0x30(%rbp)	 RIP: 48a8b3	 Bytes: 4
  %loadMem_48a8b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a8b3 = call %struct.Memory* @routine_cmpl__0x10__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a8b3)
  store %struct.Memory* %call_48a8b3, %struct.Memory** %MEMORY

  ; Code: jge .L_48a9ed	 RIP: 48a8b7	 Bytes: 6
  %loadMem_48a8b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a8b7 = call %struct.Memory* @routine_jge_.L_48a9ed(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a8b7, i8* %BRANCH_TAKEN, i64 310, i64 6, i64 6)
  store %struct.Memory* %call_48a8b7, %struct.Memory** %MEMORY

  %loadBr_48a8b7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_48a8b7 = icmp eq i8 %loadBr_48a8b7, 1
  br i1 %cmpBr_48a8b7, label %block_.L_48a9ed, label %block_48a8bd

block_48a8bd:
  ; Code: movq $0x6d40f0, %rax	 RIP: 48a8bd	 Bytes: 10
  %loadMem_48a8bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a8bd = call %struct.Memory* @routine_movq__0x6d40f0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a8bd)
  store %struct.Memory* %call_48a8bd, %struct.Memory** %MEMORY

  ; Code: movq $0x724340, %rcx	 RIP: 48a8c7	 Bytes: 10
  %loadMem_48a8c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a8c7 = call %struct.Memory* @routine_movq__0x724340___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a8c7)
  store %struct.Memory* %call_48a8c7, %struct.Memory** %MEMORY

  ; Code: movq $0x6f6fa0, %rdx	 RIP: 48a8d1	 Bytes: 10
  %loadMem_48a8d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a8d1 = call %struct.Memory* @routine_movq__0x6f6fa0___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a8d1)
  store %struct.Memory* %call_48a8d1, %struct.Memory** %MEMORY

  ; Code: movq $0x710370, %rsi	 RIP: 48a8db	 Bytes: 10
  %loadMem_48a8db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a8db = call %struct.Memory* @routine_movq__0x710370___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a8db)
  store %struct.Memory* %call_48a8db, %struct.Memory** %MEMORY

  ; Code: movq $0x725610, %rdi	 RIP: 48a8e5	 Bytes: 10
  %loadMem_48a8e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a8e5 = call %struct.Memory* @routine_movq__0x725610___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a8e5)
  store %struct.Memory* %call_48a8e5, %struct.Memory** %MEMORY

  ; Code: movq %rdi, %r8	 RIP: 48a8ef	 Bytes: 3
  %loadMem_48a8ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a8ef = call %struct.Memory* @routine_movq__rdi___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a8ef)
  store %struct.Memory* %call_48a8ef, %struct.Memory** %MEMORY

  ; Code: addq $0x800, %r8	 RIP: 48a8f2	 Bytes: 7
  %loadMem_48a8f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a8f2 = call %struct.Memory* @routine_addq__0x800___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a8f2)
  store %struct.Memory* %call_48a8f2, %struct.Memory** %MEMORY

  ; Code: movq $0x70ead0, %r9	 RIP: 48a8f9	 Bytes: 10
  %loadMem_48a8f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a8f9 = call %struct.Memory* @routine_movq__0x70ead0___r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a8f9)
  store %struct.Memory* %call_48a8f9, %struct.Memory** %MEMORY

  ; Code: movq %r9, %r10	 RIP: 48a903	 Bytes: 3
  %loadMem_48a903 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a903 = call %struct.Memory* @routine_movq__r9___r10(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a903)
  store %struct.Memory* %call_48a903, %struct.Memory** %MEMORY

  ; Code: addq $0x800, %r10	 RIP: 48a906	 Bytes: 7
  %loadMem_48a906 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a906 = call %struct.Memory* @routine_addq__0x800___r10(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a906)
  store %struct.Memory* %call_48a906, %struct.Memory** %MEMORY

  ; Code: movq %rdi, %r11	 RIP: 48a90d	 Bytes: 3
  %loadMem_48a90d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a90d = call %struct.Memory* @routine_movq__rdi___r11(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a90d)
  store %struct.Memory* %call_48a90d, %struct.Memory** %MEMORY

  ; Code: addq $0x400, %r11	 RIP: 48a910	 Bytes: 7
  %loadMem_48a910 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a910 = call %struct.Memory* @routine_addq__0x400___r11(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a910)
  store %struct.Memory* %call_48a910, %struct.Memory** %MEMORY

  ; Code: movq %r9, %rbx	 RIP: 48a917	 Bytes: 3
  %loadMem_48a917 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a917 = call %struct.Memory* @routine_movq__r9___rbx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a917)
  store %struct.Memory* %call_48a917, %struct.Memory** %MEMORY

  ; Code: addq $0x400, %rbx	 RIP: 48a91a	 Bytes: 7
  %loadMem_48a91a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a91a = call %struct.Memory* @routine_addq__0x400___rbx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a91a)
  store %struct.Memory* %call_48a91a, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %r14	 RIP: 48a921	 Bytes: 4
  %loadMem_48a921 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a921 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____r14(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a921)
  store %struct.Memory* %call_48a921, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %r14	 RIP: 48a925	 Bytes: 4
  %loadMem_48a925 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a925 = call %struct.Memory* @routine_shlq__0x6___r14(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a925)
  store %struct.Memory* %call_48a925, %struct.Memory** %MEMORY

  ; Code: addq %r14, %r9	 RIP: 48a929	 Bytes: 3
  %loadMem_48a929 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a929 = call %struct.Memory* @routine_addq__r14___r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a929)
  store %struct.Memory* %call_48a929, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %r14	 RIP: 48a92c	 Bytes: 4
  %loadMem_48a92c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a92c = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____r14(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a92c)
  store %struct.Memory* %call_48a92c, %struct.Memory** %MEMORY

  ; Code: movl (%r9,%r14,4), %r15d	 RIP: 48a930	 Bytes: 4
  %loadMem_48a930 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a930 = call %struct.Memory* @routine_movl___r9__r14_4____r15d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a930)
  store %struct.Memory* %call_48a930, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %r9	 RIP: 48a934	 Bytes: 4
  %loadMem_48a934 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a934 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a934)
  store %struct.Memory* %call_48a934, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %r9	 RIP: 48a938	 Bytes: 4
  %loadMem_48a938 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a938 = call %struct.Memory* @routine_shlq__0x6___r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a938)
  store %struct.Memory* %call_48a938, %struct.Memory** %MEMORY

  ; Code: addq %r9, %rdi	 RIP: 48a93c	 Bytes: 3
  %loadMem_48a93c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a93c = call %struct.Memory* @routine_addq__r9___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a93c)
  store %struct.Memory* %call_48a93c, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %r9	 RIP: 48a93f	 Bytes: 4
  %loadMem_48a93f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a93f = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a93f)
  store %struct.Memory* %call_48a93f, %struct.Memory** %MEMORY

  ; Code: movl %r15d, (%rdi,%r9,4)	 RIP: 48a943	 Bytes: 4
  %loadMem_48a943 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a943 = call %struct.Memory* @routine_movl__r15d____rdi__r9_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a943)
  store %struct.Memory* %call_48a943, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rdi	 RIP: 48a947	 Bytes: 4
  %loadMem_48a947 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a947 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a947)
  store %struct.Memory* %call_48a947, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rdi	 RIP: 48a94b	 Bytes: 4
  %loadMem_48a94b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a94b = call %struct.Memory* @routine_shlq__0x6___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a94b)
  store %struct.Memory* %call_48a94b, %struct.Memory** %MEMORY

  ; Code: addq %rdi, %rbx	 RIP: 48a94f	 Bytes: 3
  %loadMem_48a94f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a94f = call %struct.Memory* @routine_addq__rdi___rbx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a94f)
  store %struct.Memory* %call_48a94f, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rdi	 RIP: 48a952	 Bytes: 4
  %loadMem_48a952 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a952 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a952)
  store %struct.Memory* %call_48a952, %struct.Memory** %MEMORY

  ; Code: movl (%rbx,%rdi,4), %r15d	 RIP: 48a956	 Bytes: 4
  %loadMem_48a956 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a956 = call %struct.Memory* @routine_movl___rbx__rdi_4____r15d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a956)
  store %struct.Memory* %call_48a956, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rdi	 RIP: 48a95a	 Bytes: 4
  %loadMem_48a95a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a95a = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a95a)
  store %struct.Memory* %call_48a95a, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rdi	 RIP: 48a95e	 Bytes: 4
  %loadMem_48a95e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a95e = call %struct.Memory* @routine_shlq__0x6___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a95e)
  store %struct.Memory* %call_48a95e, %struct.Memory** %MEMORY

  ; Code: addq %rdi, %r11	 RIP: 48a962	 Bytes: 3
  %loadMem_48a962 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a962 = call %struct.Memory* @routine_addq__rdi___r11(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a962)
  store %struct.Memory* %call_48a962, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rdi	 RIP: 48a965	 Bytes: 4
  %loadMem_48a965 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a965 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a965)
  store %struct.Memory* %call_48a965, %struct.Memory** %MEMORY

  ; Code: movl %r15d, (%r11,%rdi,4)	 RIP: 48a969	 Bytes: 4
  %loadMem_48a969 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a969 = call %struct.Memory* @routine_movl__r15d____r11__rdi_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a969)
  store %struct.Memory* %call_48a969, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rdi	 RIP: 48a96d	 Bytes: 4
  %loadMem_48a96d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a96d = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a96d)
  store %struct.Memory* %call_48a96d, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rdi	 RIP: 48a971	 Bytes: 4
  %loadMem_48a971 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a971 = call %struct.Memory* @routine_shlq__0x6___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a971)
  store %struct.Memory* %call_48a971, %struct.Memory** %MEMORY

  ; Code: addq %rdi, %r10	 RIP: 48a975	 Bytes: 3
  %loadMem_48a975 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a975 = call %struct.Memory* @routine_addq__rdi___r10(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a975)
  store %struct.Memory* %call_48a975, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rdi	 RIP: 48a978	 Bytes: 4
  %loadMem_48a978 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a978 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a978)
  store %struct.Memory* %call_48a978, %struct.Memory** %MEMORY

  ; Code: movl (%r10,%rdi,4), %r15d	 RIP: 48a97c	 Bytes: 4
  %loadMem_48a97c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a97c = call %struct.Memory* @routine_movl___r10__rdi_4____r15d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a97c)
  store %struct.Memory* %call_48a97c, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rdi	 RIP: 48a980	 Bytes: 4
  %loadMem_48a980 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a980 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a980)
  store %struct.Memory* %call_48a980, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rdi	 RIP: 48a984	 Bytes: 4
  %loadMem_48a984 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a984 = call %struct.Memory* @routine_shlq__0x6___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a984)
  store %struct.Memory* %call_48a984, %struct.Memory** %MEMORY

  ; Code: addq %rdi, %r8	 RIP: 48a988	 Bytes: 3
  %loadMem_48a988 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a988 = call %struct.Memory* @routine_addq__rdi___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a988)
  store %struct.Memory* %call_48a988, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rdi	 RIP: 48a98b	 Bytes: 4
  %loadMem_48a98b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a98b = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a98b)
  store %struct.Memory* %call_48a98b, %struct.Memory** %MEMORY

  ; Code: movl %r15d, (%r8,%rdi,4)	 RIP: 48a98f	 Bytes: 4
  %loadMem_48a98f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a98f = call %struct.Memory* @routine_movl__r15d____r8__rdi_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a98f)
  store %struct.Memory* %call_48a98f, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rdi	 RIP: 48a993	 Bytes: 4
  %loadMem_48a993 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a993 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a993)
  store %struct.Memory* %call_48a993, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rdi	 RIP: 48a997	 Bytes: 4
  %loadMem_48a997 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a997 = call %struct.Memory* @routine_shlq__0x6___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a997)
  store %struct.Memory* %call_48a997, %struct.Memory** %MEMORY

  ; Code: addq %rdi, %rsi	 RIP: 48a99b	 Bytes: 3
  %loadMem_48a99b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a99b = call %struct.Memory* @routine_addq__rdi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a99b)
  store %struct.Memory* %call_48a99b, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rdi	 RIP: 48a99e	 Bytes: 4
  %loadMem_48a99e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a99e = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a99e)
  store %struct.Memory* %call_48a99e, %struct.Memory** %MEMORY

  ; Code: movl (%rsi,%rdi,4), %r15d	 RIP: 48a9a2	 Bytes: 4
  %loadMem_48a9a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a9a2 = call %struct.Memory* @routine_movl___rsi__rdi_4____r15d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a9a2)
  store %struct.Memory* %call_48a9a2, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rsi	 RIP: 48a9a6	 Bytes: 4
  %loadMem_48a9a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a9a6 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a9a6)
  store %struct.Memory* %call_48a9a6, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rsi	 RIP: 48a9aa	 Bytes: 4
  %loadMem_48a9aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a9aa = call %struct.Memory* @routine_shlq__0x6___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a9aa)
  store %struct.Memory* %call_48a9aa, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rdx	 RIP: 48a9ae	 Bytes: 3
  %loadMem_48a9ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a9ae = call %struct.Memory* @routine_addq__rsi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a9ae)
  store %struct.Memory* %call_48a9ae, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rsi	 RIP: 48a9b1	 Bytes: 4
  %loadMem_48a9b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a9b1 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a9b1)
  store %struct.Memory* %call_48a9b1, %struct.Memory** %MEMORY

  ; Code: movl %r15d, (%rdx,%rsi,4)	 RIP: 48a9b5	 Bytes: 4
  %loadMem_48a9b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a9b5 = call %struct.Memory* @routine_movl__r15d____rdx__rsi_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a9b5)
  store %struct.Memory* %call_48a9b5, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rdx	 RIP: 48a9b9	 Bytes: 4
  %loadMem_48a9b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a9b9 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a9b9)
  store %struct.Memory* %call_48a9b9, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rdx	 RIP: 48a9bd	 Bytes: 4
  %loadMem_48a9bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a9bd = call %struct.Memory* @routine_shlq__0x6___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a9bd)
  store %struct.Memory* %call_48a9bd, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 48a9c1	 Bytes: 3
  %loadMem_48a9c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a9c1 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a9c1)
  store %struct.Memory* %call_48a9c1, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rdx	 RIP: 48a9c4	 Bytes: 4
  %loadMem_48a9c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a9c4 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a9c4)
  store %struct.Memory* %call_48a9c4, %struct.Memory** %MEMORY

  ; Code: movl (%rcx,%rdx,4), %r15d	 RIP: 48a9c8	 Bytes: 4
  %loadMem_48a9c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a9c8 = call %struct.Memory* @routine_movl___rcx__rdx_4____r15d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a9c8)
  store %struct.Memory* %call_48a9c8, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rcx	 RIP: 48a9cc	 Bytes: 4
  %loadMem_48a9cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a9cc = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a9cc)
  store %struct.Memory* %call_48a9cc, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rcx	 RIP: 48a9d0	 Bytes: 4
  %loadMem_48a9d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a9d0 = call %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a9d0)
  store %struct.Memory* %call_48a9d0, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 48a9d4	 Bytes: 3
  %loadMem_48a9d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a9d4 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a9d4)
  store %struct.Memory* %call_48a9d4, %struct.Memory** %MEMORY

  ; Code: movslq -0x2c(%rbp), %rcx	 RIP: 48a9d7	 Bytes: 4
  %loadMem_48a9d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a9d7 = call %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a9d7)
  store %struct.Memory* %call_48a9d7, %struct.Memory** %MEMORY

  ; Code: movl %r15d, (%rax,%rcx,4)	 RIP: 48a9db	 Bytes: 4
  %loadMem_48a9db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a9db = call %struct.Memory* @routine_movl__r15d____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a9db)
  store %struct.Memory* %call_48a9db, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %eax	 RIP: 48a9df	 Bytes: 3
  %loadMem_48a9df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a9df = call %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a9df)
  store %struct.Memory* %call_48a9df, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 48a9e2	 Bytes: 3
  %loadMem_48a9e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a9e2 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a9e2)
  store %struct.Memory* %call_48a9e2, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x30(%rbp)	 RIP: 48a9e5	 Bytes: 3
  %loadMem_48a9e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a9e5 = call %struct.Memory* @routine_movl__eax__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a9e5)
  store %struct.Memory* %call_48a9e5, %struct.Memory** %MEMORY

  ; Code: jmpq .L_48a8b3	 RIP: 48a9e8	 Bytes: 5
  %loadMem_48a9e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a9e8 = call %struct.Memory* @routine_jmpq_.L_48a8b3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a9e8, i64 -309, i64 5)
  store %struct.Memory* %call_48a9e8, %struct.Memory** %MEMORY

  br label %block_.L_48a8b3

  ; Code: .L_48a9ed:	 RIP: 48a9ed	 Bytes: 0
block_.L_48a9ed:

  ; Code: jmpq .L_48a9f2	 RIP: 48a9ed	 Bytes: 5
  %loadMem_48a9ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a9ed = call %struct.Memory* @routine_jmpq_.L_48a9f2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a9ed, i64 5, i64 5)
  store %struct.Memory* %call_48a9ed, %struct.Memory** %MEMORY

  br label %block_.L_48a9f2

  ; Code: .L_48a9f2:	 RIP: 48a9f2	 Bytes: 0
block_.L_48a9f2:

  ; Code: movl -0x2c(%rbp), %eax	 RIP: 48a9f2	 Bytes: 3
  %loadMem_48a9f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a9f2 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a9f2)
  store %struct.Memory* %call_48a9f2, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 48a9f5	 Bytes: 3
  %loadMem_48a9f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a9f5 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a9f5)
  store %struct.Memory* %call_48a9f5, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2c(%rbp)	 RIP: 48a9f8	 Bytes: 3
  %loadMem_48a9f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a9f8 = call %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a9f8)
  store %struct.Memory* %call_48a9f8, %struct.Memory** %MEMORY

  ; Code: jmpq .L_48a8a2	 RIP: 48a9fb	 Bytes: 5
  %loadMem_48a9fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48a9fb = call %struct.Memory* @routine_jmpq_.L_48a8a2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48a9fb, i64 -345, i64 5)
  store %struct.Memory* %call_48a9fb, %struct.Memory** %MEMORY

  br label %block_.L_48a8a2

  ; Code: .L_48aa00:	 RIP: 48aa00	 Bytes: 0
block_.L_48aa00:

  ; Code: jmpq .L_48aa05	 RIP: 48aa00	 Bytes: 5
  %loadMem_48aa00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48aa00 = call %struct.Memory* @routine_jmpq_.L_48aa05(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48aa00, i64 5, i64 5)
  store %struct.Memory* %call_48aa00, %struct.Memory** %MEMORY

  br label %block_.L_48aa05

  ; Code: .L_48aa05:	 RIP: 48aa05	 Bytes: 0
block_.L_48aa05:

  ; Code: addq $0x58, %rsp	 RIP: 48aa05	 Bytes: 4
  %loadMem_48aa05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48aa05 = call %struct.Memory* @routine_addq__0x58___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48aa05)
  store %struct.Memory* %call_48aa05, %struct.Memory** %MEMORY

  ; Code: popq %rbx	 RIP: 48aa09	 Bytes: 1
  %loadMem_48aa09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48aa09 = call %struct.Memory* @routine_popq__rbx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48aa09)
  store %struct.Memory* %call_48aa09, %struct.Memory** %MEMORY

  ; Code: popq %r14	 RIP: 48aa0a	 Bytes: 2
  %loadMem_48aa0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48aa0a = call %struct.Memory* @routine_popq__r14(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48aa0a)
  store %struct.Memory* %call_48aa0a, %struct.Memory** %MEMORY

  ; Code: popq %r15	 RIP: 48aa0c	 Bytes: 2
  %loadMem_48aa0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48aa0c = call %struct.Memory* @routine_popq__r15(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48aa0c)
  store %struct.Memory* %call_48aa0c, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 48aa0e	 Bytes: 1
  %loadMem_48aa0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48aa0e = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48aa0e)
  store %struct.Memory* %call_48aa0e, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 48aa0f	 Bytes: 1
  %loadMem_48aa0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_48aa0f = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_48aa0f)
  store %struct.Memory* %call_48aa0f, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_48aa0f
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


define %struct.Memory* @routine_pushq__r15(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 31
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R15 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %R15
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 2
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4PUSHI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %9)
  ret %struct.Memory* %12
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

define %struct.Memory* @routine_subq__0x58___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 88)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = inttoptr i64 %2 to i64*
  store i64 %3, i64* %5
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__rdi__MINUS0x20__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RDI
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

define %struct.Memory* @routine_cmpl__0x1__0x18__rdi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L4SETZI3RnWIhEEEP6MemoryS4_R5StateT_(%struct.Memory* readnone returned, %struct.State* nocapture readonly dereferenceable(3376), i8* nocapture) #2 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %2, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_sete__al(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4SETZI3RnWIhEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i8* %AL)
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__ecx__MINUS0x38__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 56
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_cmpl__0x0__0x11ad0__rdi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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

define %struct.Memory* @routine_je_.L_489b2c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x0__0x214__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 532
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
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


define %struct.Memory* @routine_movl__0x4___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 4)
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl_0xc__rdx____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__eax__MINUS0x40__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 64
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


define %struct.Memory* @routine_movl_MINUS0x40__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L6CMOVNZI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readonly dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  %6 = load i8, i8* %5, align 1
  %7 = icmp eq i8 %6, 0
  %8 = load i64, i64* %2, align 8
  %9 = select i1 %7, i64 %3, i64 %8
  %10 = and i64 %9, 4294967295
  store i64 %10, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_cmovnel__ecx___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %ECX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L6CMOVNZI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__esi__MINUS0x44__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 68
  %14 = load i32, i32* %ESI
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

define %struct.Memory* @routine_jmpq_.L_489b36(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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


define %struct.Memory* @routine_movl__eax__MINUS0x44__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 68
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movl_MINUS0x44__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 68
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_cmpl__0x0__0x23c__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 572
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_48a533(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jge_.L_489ba1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movslq_MINUS0x30__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_0x6cea10___rax_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 7137808
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_movl__ecx__0x1d8__rax__rdx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %18 = add i64 %15, 472
  %19 = add i64 %18, %17
  %20 = load i32, i32* %ECX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %21)
  ret %struct.Memory* %24
}



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnItEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i16*
  %6 = load i16, i16* %5
  %7 = sext i16 %6 to i64
  %8 = and i64 %7, 4294967295
  store i64 %8, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movswl_0x710780___rax_2____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = mul i64 %12, 2
  %14 = add i64 %13, 7407488
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnItEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %14)
  ret %struct.Memory* %17
}






define %struct.Memory* @routine_movl__ecx__0x1e8__rax__rdx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %18 = add i64 %15, 488
  %19 = add i64 %18, %17
  %20 = load i32, i32* %ECX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %21)
  ret %struct.Memory* %24
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


define %struct.Memory* @routine_jmpq_.L_489b54(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_cmpl__0x0__MINUS0x38__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 56
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_489cdd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jge_.L_489cd8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jge_.L_489cc5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_MINUS0x30__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 48
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
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

define %struct.Memory* @routine_addl__eax___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__esi__MINUS0x28__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 40
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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






define %struct.Memory* @routine_movl__edx__MINUS0x50__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 80
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_movl_MINUS0x50__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addl__edx___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12, i64 %14)
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


define %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 40
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWItE2MnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i16* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i16*
  %6 = load i16, i16* %5
  store i16 %6, i16* %2, align 2
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movw_0x7236c4___rdi_2____r8w(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R8W = bitcast %union.anon* %8 to i16*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDI
  %13 = mul i64 %12, 2
  %14 = add i64 %13, 7485124
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 9
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWItE2MnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i16* %R8W, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq_0x70fcf0___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G_0x70fcf0_type* @G_0x70fcf0 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq_0x1950__rdi____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 6480
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movq___rdi____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movq_0x6cb900___r9(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R9, i64 ptrtoint( %G_0x6cb900_type* @G_0x6cb900 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl_0x90__r9____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R9
  %13 = add i64 %12, 144
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
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

define %struct.Memory* @routine_addl_MINUS0x30__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 48
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

define %struct.Memory* @routine_movslq__edx___r9(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9 = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EDX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R9, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq___rdi__r9_8____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDI
  %13 = load i64, i64* %R9
  %14 = mul i64 %13, 8
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movl_0x94__r9____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R9
  %13 = add i64 %12, 148
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addl_MINUS0x2c__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 44
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWItE2RnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i16
  %6 = inttoptr i64 %2 to i16*
  store i16 %5, i16* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movw__r8w____rdi__r9_2_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R8W = bitcast %union.anon* %8 to i16*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 19
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %R9 = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RDI
  %16 = load i64, i64* %R9
  %17 = mul i64 %16, 2
  %18 = add i64 %17, %15
  %19 = load i16, i16* %R8W
  %20 = zext i16 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 5
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWItE2RnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %18, i64 %20)
  ret %struct.Memory* %23
}




define %struct.Memory* @routine_movw_0x725268___rdi_2____r8w(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R8W = bitcast %union.anon* %8 to i16*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDI
  %13 = mul i64 %12, 2
  %14 = add i64 %13, 7492200
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 9
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWItE2MnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i16* %R8W, i64 %14)
  ret %struct.Memory* %17
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




























define %struct.Memory* @routine_jmpq_.L_489bc3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_489cca(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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


define %struct.Memory* @routine_jmpq_.L_489bb2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_489dbc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_jge_.L_489db7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jge_.L_489da4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movl__eax__MINUS0x54__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 84
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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








define %struct.Memory* @routine_movl__eax__MINUS0x58__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 88
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}








define %struct.Memory* @routine_movl_MINUS0x58__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


















define %struct.Memory* @routine_movl__edx__MINUS0x5c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 92
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_movl_MINUS0x5c__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 92
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}










































define %struct.Memory* @routine_jmpq_.L_489cf5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_489da9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_489ce4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jge_.L_489f0f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jge_.L_489efc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq_0x1950__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 6480
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
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


define %struct.Memory* @routine_movl_0x90__rcx____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 144
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
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




define %struct.Memory* @routine_movl_0x94__rcx____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 148
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movswl___rax__rcx_2____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnItEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %18)
  ret %struct.Memory* %21
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

define %struct.Memory* @routine_jl_.L_489e98(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_addq__0x18___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 24)
  ret %struct.Memory* %12
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


define %struct.Memory* @routine_addl__0x0___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 0)
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


define %struct.Memory* @routine_movq_0x70fcf0___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G_0x70fcf0_type* @G_0x70fcf0 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq_0x1950__rdx____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 6480
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movq___rdx____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9)
  ret %struct.Memory* %12
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


define %struct.Memory* @routine_movl_0x90__rsi____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RSI
  %13 = add i64 %12, 144
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addl_MINUS0x30__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 48
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movslq__ecx___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %ECX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq___rdx__rsi_8____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = mul i64 %13, 8
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movl_0x94__rsi____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RSI
  %13 = add i64 %12, 148
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
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



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnItElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i16*
  %6 = load i16, i16* %5
  %7 = sext i16 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movswq___rdx__rsi_2____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = mul i64 %13, 2
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 5
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnItElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %15)
  ret %struct.Memory* %18
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


define %struct.Memory* @routine_movq__rax__MINUS0x68__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_jmpq_.L_489ea8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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

define %struct.Memory* @routine_movq__0xffffffffffffffff___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 -1)
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movq_MINUS0x68__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movq_0x1958__rcx____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 6488
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %10)
  ret %struct.Memory* %13
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




define %struct.Memory* @routine_movl_0x90__rdx____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 144
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addl_MINUS0x30__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 48
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




define %struct.Memory* @routine_movl_0x94__rdx____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 148
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




define %struct.Memory* @routine_movq__rax____rcx__rdx_8_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = load i64, i64* %RCX
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








define %struct.Memory* @routine_jmpq_.L_489dd4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_489f01(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_489dc3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_je_.L_48a074(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jge_.L_48a06f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jge_.L_48a05c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
























define %struct.Memory* @routine_jl_.L_489ff7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_movq_0x8__rdx____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 8
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %10)
  ret %struct.Memory* %13
}
























define %struct.Memory* @routine_movq__rax__MINUS0x70__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_jmpq_.L_48a007(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_movq_MINUS0x70__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
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




























define %struct.Memory* @routine_jmpq_.L_489f31(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_48a061(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_489f20(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_48a074(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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

define %struct.Memory* @routine_callq_.StoreMV8x8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_callq_.RestoreMV8x8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x4__MINUS0x24__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 4)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_48a165(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jge_.L_48a152(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpl__0x2__MINUS0x2c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 2)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_48a13f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpl__0x41__MINUS0x30__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 65)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_48a12c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq_0x6cc650___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x6cc650_type* @G_0x6cc650 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movl___rax__rcx_4____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 3
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %18)
  ret %struct.Memory* %21
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


define %struct.Memory* @routine_movq_0x3738__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 14136
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
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








define %struct.Memory* @routine_jmpq_.L_48a0bf(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_48a131(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_48a0ae(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_48a144(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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


define %struct.Memory* @routine_jmpq_.L_48a09d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_48a157(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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


define %struct.Memory* @routine_jmpq_.L_48a08c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_cmpl__0x5__0x6ce9f8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x6ce9f8_type* @G_0x6ce9f8 to i64), i64 5)
  ret %struct.Memory* %8
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

define %struct.Memory* @routine_jg_.L_48a2aa(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jne_.L_48a1aa(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jne_.L_48a2aa(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl__0x0__0x1cc__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = inttoptr i64 %2 to i64*
  store i64 %3, i64* %5
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__0x0__0x1d0__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 464
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 11
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
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


define %struct.Memory* @routine_jge_.L_48a2a5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpl__0x10__MINUS0x30__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 16)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_48a292(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jne_.L_48a25f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x721aa0___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x721aa0_type* @G__0x721aa0 to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_jmpq_.L_48a27f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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


define %struct.Memory* @routine_jmpq_.L_48a284(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_48a1df(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_48a297(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_48a1ce(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_48a3c9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movl_0x6d32c0___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x6d32c0_type* @G_0x6d32c0 to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_movq_0x710778___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G_0x710778_type* @G_0x710778 to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_movq__rcx__0x1d0__rdx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 464
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}






define %struct.Memory* @routine_jge_.L_48a3c4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jge_.L_48a3b1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jne_.L_48a366(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x711840___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x711840_type* @G__0x711840 to i64))
  ret %struct.Memory* %11
}




































define %struct.Memory* @routine_jmpq_.L_48a39e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_movq__0x6cea50___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G__0x6cea50_type* @G__0x6cea50 to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_jmpq_.L_48a3a3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_48a2e6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_48a3b6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_48a2d5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jge_.L_48a52e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jge_.L_48a51b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x6d40f0___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x6d40f0_type* @G__0x6d40f0 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__0x7247d0___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G__0x7247d0_type* @G__0x7247d0 to i64))
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


define %struct.Memory* @routine_movq__0x6ce5a0___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x6ce5a0_type* @G__0x6ce5a0 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__0x725610___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x725610_type* @G__0x725610 to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_addq__0x800___r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %9, i64 2048)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movq__0x70d650___r9(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R9, i64 ptrtoint( %G__0x70d650_type* @G__0x70d650 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__r9___r10(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 21
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R10 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R9
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R10, i64 %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_addq__0x800___r10(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 21
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R10 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %R10
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %R10, i64 %9, i64 2048)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movq__rdi___r11(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 23
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R11 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDI
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R11, i64 %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_addq__0x400___r11(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %R11, i64 %9, i64 1024)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movq__r9___rbx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R9
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RBX, i64 %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_addq__0x400___rbx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RBX, i64 %9, i64 1024)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movslq_MINUS0x30__rbp____r14(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 29
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R14 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 48
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R14, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_shlq__0x6___r14(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %R14, i64 %9, i64 6)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_addq__r14___r9(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 29
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R14 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R9
  %13 = load i64, i64* %R14
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %R9, i64 %12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movslq_MINUS0x2c__rbp____r14(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 29
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R14 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 44
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R14, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl___r9__r14_4____r15d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 31
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R15D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9 = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 29
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %R14 = bitcast %union.anon* %14 to i64*
  %15 = bitcast i32* %R15D to i64*
  %16 = load i64, i64* %R9
  %17 = load i64, i64* %R14
  %18 = mul i64 %17, 4
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 4
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %15, i64 %19)
  ret %struct.Memory* %22
}


define %struct.Memory* @routine_movslq_MINUS0x30__rbp____r9(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 48
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R9, i64 %13)
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


define %struct.Memory* @routine_addq__r9___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDI
  %13 = load i64, i64* %R9
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movslq_MINUS0x2c__rbp____r9(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 44
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R9, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__r15d____rdi__r9_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 31
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R15D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 19
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %R9 = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RDI
  %16 = load i64, i64* %R9
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i32, i32* %R15D
  %20 = zext i32 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 4
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %18, i64 %20)
  ret %struct.Memory* %23
}


define %struct.Memory* @routine_movslq_MINUS0x30__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_shlq__0x6___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %9, i64 6)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_addq__rdi___rbx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBX
  %13 = load i64, i64* %RDI
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RBX, i64 %12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 44
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl___rbx__rdi_4____r15d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 31
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R15D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBX = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 11
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDI = bitcast %union.anon* %14 to i64*
  %15 = bitcast i32* %R15D to i64*
  %16 = load i64, i64* %RBX
  %17 = load i64, i64* %RDI
  %18 = mul i64 %17, 4
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 4
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %15, i64 %19)
  ret %struct.Memory* %22
}






define %struct.Memory* @routine_addq__rdi___r11(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 23
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R11 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R11
  %13 = load i64, i64* %RDI
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %R11, i64 %12, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__r15d____r11__rdi_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 31
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R15D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 23
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %R11 = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %R11
  %16 = load i64, i64* %RDI
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i32, i32* %R15D
  %20 = zext i32 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 4
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %18, i64 %20)
  ret %struct.Memory* %23
}






define %struct.Memory* @routine_addq__rdi___r10(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 21
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R10 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R10
  %13 = load i64, i64* %RDI
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %R10, i64 %12, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl___r10__rdi_4____r15d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 31
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R15D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 21
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %R10 = bitcast %union.anon* %14 to i64*
  %15 = bitcast i32* %R15D to i64*
  %16 = load i64, i64* %R10
  %17 = load i64, i64* %RDI
  %18 = mul i64 %17, 4
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 4
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %15, i64 %19)
  ret %struct.Memory* %22
}






define %struct.Memory* @routine_addq__rdi___r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %12, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__r15d____r8__rdi_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 31
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R15D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 17
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %R8 = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %R8
  %16 = load i64, i64* %RDI
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i32, i32* %R15D
  %20 = zext i32 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 4
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %18, i64 %20)
  ret %struct.Memory* %23
}






define %struct.Memory* @routine_addq__rdi___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl___rsi__rdi_4____r15d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 31
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R15D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 11
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDI = bitcast %union.anon* %14 to i64*
  %15 = bitcast i32* %R15D to i64*
  %16 = load i64, i64* %RSI
  %17 = load i64, i64* %RDI
  %18 = mul i64 %17, 4
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 4
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %15, i64 %19)
  ret %struct.Memory* %22
}


define %struct.Memory* @routine_movslq_MINUS0x30__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 48
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
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


define %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 44
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__r15d____rdx__rsi_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 31
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R15D = bitcast %union.anon* %8 to i32*
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
  %19 = load i32, i32* %R15D
  %20 = zext i32 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 4
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %18, i64 %20)
  ret %struct.Memory* %23
}










define %struct.Memory* @routine_movl___rcx__rdx_4____r15d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 31
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R15D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 7
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDX = bitcast %union.anon* %14 to i64*
  %15 = bitcast i32* %R15D to i64*
  %16 = load i64, i64* %RCX
  %17 = load i64, i64* %RDX
  %18 = mul i64 %17, 4
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 4
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %15, i64 %19)
  ret %struct.Memory* %22
}










define %struct.Memory* @routine_movl__r15d____rax__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 31
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R15D = bitcast %union.anon* %8 to i32*
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
  %19 = load i32, i32* %R15D
  %20 = zext i32 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 4
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %18, i64 %20)
  ret %struct.Memory* %23
}








define %struct.Memory* @routine_jmpq_.L_48a3e1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_48a520(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_48a3d0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_48aa05(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_movl_0x11bf4__rcx____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 72692
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addl__0x4___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 4)
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


define %struct.Memory* @routine_jge_.L_48a625(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jge_.L_48a612(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jge_.L_48a5ff(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jge_.L_48a5ec(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq_0x6cc5f8___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x6cc5f8_type* @G_0x6cc5f8 to i64))
  ret %struct.Memory* %11
}












































define %struct.Memory* @routine_jmpq_.L_48a57f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_48a5f1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_48a56e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_48a604(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_48a55d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_48a617(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_48a53a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_cmpl__0x5__0x6d1f8c(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x6d1f8c_type* @G_0x6d1f8c to i64), i64 5)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_jg_.L_48a77c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_je_.L_48a77c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_jne_.L_48a67c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jne_.L_48a77c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_jge_.L_48a777(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jge_.L_48a764(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jne_.L_48a731(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x6f7ea0___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x6f7ea0_type* @G__0x6f7ea0 to i64))
  ret %struct.Memory* %11
}




































define %struct.Memory* @routine_jmpq_.L_48a751(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}














define %struct.Memory* @routine_jmpq_.L_48a756(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_48a6b1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_48a769(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_48a6a0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_48a89b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movl_0x70d1a8___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x70d1a8_type* @G_0x70d1a8 to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movslq_0x726848___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G_0x726848_type* @G_0x726848 to i64))
  ret %struct.Memory* %11
}










define %struct.Memory* @routine_jge_.L_48a896(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jge_.L_48a883(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jne_.L_48a838(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x723430___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x723430_type* @G__0x723430 to i64))
  ret %struct.Memory* %11
}




































define %struct.Memory* @routine_jmpq_.L_48a870(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_movq__0x6d0290___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G__0x6d0290_type* @G__0x6d0290 to i64))
  ret %struct.Memory* %11
}






















define %struct.Memory* @routine_jmpq_.L_48a875(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_48a7b8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_48a888(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_48a7a7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jge_.L_48aa00(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jge_.L_48a9ed(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movq__0x724340___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G__0x724340_type* @G__0x724340 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movq__0x710370___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x710370_type* @G__0x710370 to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_movq__0x70ead0___r9(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R9, i64 ptrtoint( %G__0x70ead0_type* @G__0x70ead0 to i64))
  ret %struct.Memory* %11
}
























































































































define %struct.Memory* @routine_jmpq_.L_48a8b3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_48a9f2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_48a8a2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_addq__0x58___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 88)
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


define %struct.Memory* @routine_popq__r15(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 31
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R15 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 2
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3POPI3RnWImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64* %R15)
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

