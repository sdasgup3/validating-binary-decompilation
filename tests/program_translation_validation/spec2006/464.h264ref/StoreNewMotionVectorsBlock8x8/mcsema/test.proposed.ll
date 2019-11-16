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
%G_0x6cb900_type = type <{ [8 x i8] }>
@G_0x6cb900= global %G_0x6cb900_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x6d2090_type = type <{ [8 x i8] }>
@G__0x6d2090= global %G__0x6d2090_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x6d32e0_type = type <{ [8 x i8] }>
@G__0x6d32e0= global %G__0x6d32e0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>


define %struct.Memory* @StoreNewMotionVectorsBlock8x8(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .StoreNewMotionVectorsBlock8x8:	 RIP: 490c60	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 490c60	 Bytes: 1
  %loadMem_490c60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490c60 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490c60)
  store %struct.Memory* %call_490c60, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 490c61	 Bytes: 3
  %loadMem_490c61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490c61 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490c61)
  store %struct.Memory* %call_490c61, %struct.Memory** %MEMORY

  ; Code: movl 0x10(%rbp), %eax	 RIP: 490c64	 Bytes: 3
  %loadMem_490c64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490c64 = call %struct.Memory* @routine_movl_0x10__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490c64)
  store %struct.Memory* %call_490c64, %struct.Memory** %MEMORY

  ; Code: movl $0x2, %r10d	 RIP: 490c67	 Bytes: 6
  %loadMem_490c67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490c67 = call %struct.Memory* @routine_movl__0x2___r10d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490c67)
  store %struct.Memory* %call_490c67, %struct.Memory** %MEMORY

  ; Code: movl %edi, -0x4(%rbp)	 RIP: 490c6d	 Bytes: 3
  %loadMem_490c6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490c6d = call %struct.Memory* @routine_movl__edi__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490c6d)
  store %struct.Memory* %call_490c6d, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x8(%rbp)	 RIP: 490c70	 Bytes: 3
  %loadMem_490c70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490c70 = call %struct.Memory* @routine_movl__esi__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490c70)
  store %struct.Memory* %call_490c70, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0xc(%rbp)	 RIP: 490c73	 Bytes: 3
  %loadMem_490c73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490c73 = call %struct.Memory* @routine_movl__edx__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490c73)
  store %struct.Memory* %call_490c73, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x10(%rbp)	 RIP: 490c76	 Bytes: 3
  %loadMem_490c76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490c76 = call %struct.Memory* @routine_movl__ecx__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490c76)
  store %struct.Memory* %call_490c76, %struct.Memory** %MEMORY

  ; Code: movl %r8d, -0x14(%rbp)	 RIP: 490c79	 Bytes: 4
  %loadMem_490c79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490c79 = call %struct.Memory* @routine_movl__r8d__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490c79)
  store %struct.Memory* %call_490c79, %struct.Memory** %MEMORY

  ; Code: movl %r9d, -0x18(%rbp)	 RIP: 490c7d	 Bytes: 4
  %loadMem_490c7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490c7d = call %struct.Memory* @routine_movl__r9d__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490c7d)
  store %struct.Memory* %call_490c7d, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 490c81	 Bytes: 3
  %loadMem_490c81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490c81 = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490c81)
  store %struct.Memory* %call_490c81, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %r11	 RIP: 490c84	 Bytes: 8
  %loadMem_490c84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490c84 = call %struct.Memory* @routine_movq_0x6cb900___r11(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490c84)
  store %struct.Memory* %call_490c84, %struct.Memory** %MEMORY

  ; Code: movq 0x118f8(%r11), %r11	 RIP: 490c8c	 Bytes: 7
  %loadMem_490c8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490c8c = call %struct.Memory* @routine_movq_0x118f8__r11____r11(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490c8c)
  store %struct.Memory* %call_490c8c, %struct.Memory** %MEMORY

  ; Code: movq %r11, -0x40(%rbp)	 RIP: 490c93	 Bytes: 4
  %loadMem_490c93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490c93 = call %struct.Memory* @routine_movq__r11__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490c93)
  store %struct.Memory* %call_490c93, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %r11	 RIP: 490c97	 Bytes: 8
  %loadMem_490c97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490c97 = call %struct.Memory* @routine_movq_0x6cb900___r11(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490c97)
  store %struct.Memory* %call_490c97, %struct.Memory** %MEMORY

  ; Code: movq 0x118f0(%r11), %r11	 RIP: 490c9f	 Bytes: 7
  %loadMem_490c9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490c9f = call %struct.Memory* @routine_movq_0x118f0__r11____r11(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490c9f)
  store %struct.Memory* %call_490c9f, %struct.Memory** %MEMORY

  ; Code: movq %r11, -0x48(%rbp)	 RIP: 490ca6	 Bytes: 4
  %loadMem_490ca6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490ca6 = call %struct.Memory* @routine_movq__r11__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490ca6)
  store %struct.Memory* %call_490ca6, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %eax	 RIP: 490caa	 Bytes: 3
  %loadMem_490caa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490caa = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490caa)
  store %struct.Memory* %call_490caa, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 490cad	 Bytes: 1
  %loadMem_490cad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490cad = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490cad)
  store %struct.Memory* %call_490cad, %struct.Memory** %MEMORY

  ; Code: idivl %r10d	 RIP: 490cae	 Bytes: 3
  %loadMem_490cae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490cae = call %struct.Memory* @routine_idivl__r10d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490cae)
  store %struct.Memory* %call_490cae, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %edx	 RIP: 490cb1	 Bytes: 3
  %loadMem_490cb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490cb1 = call %struct.Memory* @routine_shll__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490cb1)
  store %struct.Memory* %call_490cb1, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x28(%rbp)	 RIP: 490cb4	 Bytes: 3
  %loadMem_490cb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490cb4 = call %struct.Memory* @routine_movl__edx__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490cb4)
  store %struct.Memory* %call_490cb4, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %ecx	 RIP: 490cb7	 Bytes: 3
  %loadMem_490cb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490cb7 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490cb7)
  store %struct.Memory* %call_490cb7, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %eax	 RIP: 490cba	 Bytes: 2
  %loadMem_490cba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490cba = call %struct.Memory* @routine_movl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490cba)
  store %struct.Memory* %call_490cba, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 490cbc	 Bytes: 1
  %loadMem_490cbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490cbc = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490cbc)
  store %struct.Memory* %call_490cbc, %struct.Memory** %MEMORY

  ; Code: idivl %r10d	 RIP: 490cbd	 Bytes: 3
  %loadMem_490cbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490cbd = call %struct.Memory* @routine_idivl__r10d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490cbd)
  store %struct.Memory* %call_490cbd, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %eax	 RIP: 490cc0	 Bytes: 3
  %loadMem_490cc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490cc0 = call %struct.Memory* @routine_shll__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490cc0)
  store %struct.Memory* %call_490cc0, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2c(%rbp)	 RIP: 490cc3	 Bytes: 3
  %loadMem_490cc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490cc3 = call %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490cc3)
  store %struct.Memory* %call_490cc3, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %eax	 RIP: 490cc6	 Bytes: 3
  %loadMem_490cc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490cc6 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490cc6)
  store %struct.Memory* %call_490cc6, %struct.Memory** %MEMORY

  ; Code: addl $0x2, %eax	 RIP: 490cc9	 Bytes: 3
  %loadMem_490cc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490cc9 = call %struct.Memory* @routine_addl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490cc9)
  store %struct.Memory* %call_490cc9, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x30(%rbp)	 RIP: 490ccc	 Bytes: 3
  %loadMem_490ccc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490ccc = call %struct.Memory* @routine_movl__eax__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490ccc)
  store %struct.Memory* %call_490ccc, %struct.Memory** %MEMORY

  ; Code: movl -0x2c(%rbp), %eax	 RIP: 490ccf	 Bytes: 3
  %loadMem_490ccf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490ccf = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490ccf)
  store %struct.Memory* %call_490ccf, %struct.Memory** %MEMORY

  ; Code: addl $0x2, %eax	 RIP: 490cd2	 Bytes: 3
  %loadMem_490cd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490cd2 = call %struct.Memory* @routine_addl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490cd2)
  store %struct.Memory* %call_490cd2, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x34(%rbp)	 RIP: 490cd5	 Bytes: 3
  %loadMem_490cd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490cd5 = call %struct.Memory* @routine_movl__eax__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490cd5)
  store %struct.Memory* %call_490cd5, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0x18(%rbp)	 RIP: 490cd8	 Bytes: 4
  %loadMem_490cd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490cd8 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490cd8)
  store %struct.Memory* %call_490cd8, %struct.Memory** %MEMORY

  ; Code: jge .L_490dc9	 RIP: 490cdc	 Bytes: 6
  %loadMem_490cdc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490cdc = call %struct.Memory* @routine_jge_.L_490dc9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490cdc, i8* %BRANCH_TAKEN, i64 237, i64 6, i64 6)
  store %struct.Memory* %call_490cdc, %struct.Memory** %MEMORY

  %loadBr_490cdc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_490cdc = icmp eq i8 %loadBr_490cdc, 1
  br i1 %cmpBr_490cdc, label %block_.L_490dc9, label %block_490ce2

block_490ce2:
  ; Code: movl -0x2c(%rbp), %eax	 RIP: 490ce2	 Bytes: 3
  %loadMem_490ce2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490ce2 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490ce2)
  store %struct.Memory* %call_490ce2, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x24(%rbp)	 RIP: 490ce5	 Bytes: 3
  %loadMem_490ce5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490ce5 = call %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490ce5)
  store %struct.Memory* %call_490ce5, %struct.Memory** %MEMORY

  ; Code: .L_490ce8:	 RIP: 490ce8	 Bytes: 0
  br label %block_.L_490ce8
block_.L_490ce8:

  ; Code: movl -0x24(%rbp), %eax	 RIP: 490ce8	 Bytes: 3
  %loadMem_490ce8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490ce8 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490ce8)
  store %struct.Memory* %call_490ce8, %struct.Memory** %MEMORY

  ; Code: cmpl -0x34(%rbp), %eax	 RIP: 490ceb	 Bytes: 3
  %loadMem_490ceb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490ceb = call %struct.Memory* @routine_cmpl_MINUS0x34__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490ceb)
  store %struct.Memory* %call_490ceb, %struct.Memory** %MEMORY

  ; Code: jge .L_490dc4	 RIP: 490cee	 Bytes: 6
  %loadMem_490cee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490cee = call %struct.Memory* @routine_jge_.L_490dc4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490cee, i8* %BRANCH_TAKEN, i64 214, i64 6, i64 6)
  store %struct.Memory* %call_490cee, %struct.Memory** %MEMORY

  %loadBr_490cee = load i8, i8* %BRANCH_TAKEN
  %cmpBr_490cee = icmp eq i8 %loadBr_490cee, 1
  br i1 %cmpBr_490cee, label %block_.L_490dc4, label %block_490cf4

block_490cf4:
  ; Code: movl -0x28(%rbp), %eax	 RIP: 490cf4	 Bytes: 3
  %loadMem_490cf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490cf4 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490cf4)
  store %struct.Memory* %call_490cf4, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x20(%rbp)	 RIP: 490cf7	 Bytes: 3
  %loadMem_490cf7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490cf7 = call %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490cf7)
  store %struct.Memory* %call_490cf7, %struct.Memory** %MEMORY

  ; Code: .L_490cfa:	 RIP: 490cfa	 Bytes: 0
  br label %block_.L_490cfa
block_.L_490cfa:

  ; Code: movl -0x20(%rbp), %eax	 RIP: 490cfa	 Bytes: 3
  %loadMem_490cfa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490cfa = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490cfa)
  store %struct.Memory* %call_490cfa, %struct.Memory** %MEMORY

  ; Code: cmpl -0x30(%rbp), %eax	 RIP: 490cfd	 Bytes: 3
  %loadMem_490cfd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490cfd = call %struct.Memory* @routine_cmpl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490cfd)
  store %struct.Memory* %call_490cfd, %struct.Memory** %MEMORY

  ; Code: jge .L_490db1	 RIP: 490d00	 Bytes: 6
  %loadMem_490d00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490d00 = call %struct.Memory* @routine_jge_.L_490db1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490d00, i8* %BRANCH_TAKEN, i64 177, i64 6, i64 6)
  store %struct.Memory* %call_490d00, %struct.Memory** %MEMORY

  %loadBr_490d00 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_490d00 = icmp eq i8 %loadBr_490d00, 1
  br i1 %cmpBr_490d00, label %block_.L_490db1, label %block_490d06

block_490d06:
  ; Code: movq $0x6d2090, %rax	 RIP: 490d06	 Bytes: 10
  %loadMem_490d06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490d06 = call %struct.Memory* @routine_movq__0x6d2090___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490d06)
  store %struct.Memory* %call_490d06, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rcx	 RIP: 490d10	 Bytes: 4
  %loadMem_490d10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490d10 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490d10)
  store %struct.Memory* %call_490d10, %struct.Memory** %MEMORY

  ; Code: shlq $0x7, %rcx	 RIP: 490d14	 Bytes: 4
  %loadMem_490d14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490d14 = call %struct.Memory* @routine_shlq__0x7___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490d14)
  store %struct.Memory* %call_490d14, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 490d18	 Bytes: 3
  %loadMem_490d18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490d18 = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490d18)
  store %struct.Memory* %call_490d18, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdx	 RIP: 490d1b	 Bytes: 3
  %loadMem_490d1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490d1b = call %struct.Memory* @routine_addq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490d1b)
  store %struct.Memory* %call_490d1b, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rcx	 RIP: 490d1e	 Bytes: 4
  %loadMem_490d1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490d1e = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490d1e)
  store %struct.Memory* %call_490d1e, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rcx	 RIP: 490d22	 Bytes: 4
  %loadMem_490d22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490d22 = call %struct.Memory* @routine_shlq__0x4___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490d22)
  store %struct.Memory* %call_490d22, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdx	 RIP: 490d26	 Bytes: 3
  %loadMem_490d26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490d26 = call %struct.Memory* @routine_addq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490d26)
  store %struct.Memory* %call_490d26, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rcx	 RIP: 490d29	 Bytes: 4
  %loadMem_490d29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490d29 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490d29)
  store %struct.Memory* %call_490d29, %struct.Memory** %MEMORY

  ; Code: movw $0x0, (%rdx,%rcx,4)	 RIP: 490d2d	 Bytes: 6
  %loadMem_490d2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490d2d = call %struct.Memory* @routine_movw__0x0____rdx__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490d2d)
  store %struct.Memory* %call_490d2d, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rcx	 RIP: 490d33	 Bytes: 4
  %loadMem_490d33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490d33 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490d33)
  store %struct.Memory* %call_490d33, %struct.Memory** %MEMORY

  ; Code: shlq $0x7, %rcx	 RIP: 490d37	 Bytes: 4
  %loadMem_490d37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490d37 = call %struct.Memory* @routine_shlq__0x7___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490d37)
  store %struct.Memory* %call_490d37, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 490d3b	 Bytes: 3
  %loadMem_490d3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490d3b = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490d3b)
  store %struct.Memory* %call_490d3b, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdx	 RIP: 490d3e	 Bytes: 3
  %loadMem_490d3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490d3e = call %struct.Memory* @routine_addq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490d3e)
  store %struct.Memory* %call_490d3e, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rcx	 RIP: 490d41	 Bytes: 4
  %loadMem_490d41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490d41 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490d41)
  store %struct.Memory* %call_490d41, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rcx	 RIP: 490d45	 Bytes: 4
  %loadMem_490d45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490d45 = call %struct.Memory* @routine_shlq__0x4___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490d45)
  store %struct.Memory* %call_490d45, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdx	 RIP: 490d49	 Bytes: 3
  %loadMem_490d49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490d49 = call %struct.Memory* @routine_addq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490d49)
  store %struct.Memory* %call_490d49, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rcx	 RIP: 490d4c	 Bytes: 4
  %loadMem_490d4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490d4c = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490d4c)
  store %struct.Memory* %call_490d4c, %struct.Memory** %MEMORY

  ; Code: movw $0x0, 0x2(%rdx,%rcx,4)	 RIP: 490d50	 Bytes: 7
  %loadMem_490d50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490d50 = call %struct.Memory* @routine_movw__0x0__0x2__rdx__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490d50)
  store %struct.Memory* %call_490d50, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rcx	 RIP: 490d57	 Bytes: 4
  %loadMem_490d57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490d57 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490d57)
  store %struct.Memory* %call_490d57, %struct.Memory** %MEMORY

  ; Code: shlq $0x7, %rcx	 RIP: 490d5b	 Bytes: 4
  %loadMem_490d5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490d5b = call %struct.Memory* @routine_shlq__0x7___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490d5b)
  store %struct.Memory* %call_490d5b, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 490d5f	 Bytes: 3
  %loadMem_490d5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490d5f = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490d5f)
  store %struct.Memory* %call_490d5f, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdx	 RIP: 490d62	 Bytes: 3
  %loadMem_490d62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490d62 = call %struct.Memory* @routine_addq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490d62)
  store %struct.Memory* %call_490d62, %struct.Memory** %MEMORY

  ; Code: addq $0x40, %rdx	 RIP: 490d65	 Bytes: 4
  %loadMem_490d65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490d65 = call %struct.Memory* @routine_addq__0x40___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490d65)
  store %struct.Memory* %call_490d65, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rcx	 RIP: 490d69	 Bytes: 4
  %loadMem_490d69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490d69 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490d69)
  store %struct.Memory* %call_490d69, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rcx	 RIP: 490d6d	 Bytes: 4
  %loadMem_490d6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490d6d = call %struct.Memory* @routine_shlq__0x4___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490d6d)
  store %struct.Memory* %call_490d6d, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdx	 RIP: 490d71	 Bytes: 3
  %loadMem_490d71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490d71 = call %struct.Memory* @routine_addq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490d71)
  store %struct.Memory* %call_490d71, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rcx	 RIP: 490d74	 Bytes: 4
  %loadMem_490d74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490d74 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490d74)
  store %struct.Memory* %call_490d74, %struct.Memory** %MEMORY

  ; Code: movw $0x0, (%rdx,%rcx,4)	 RIP: 490d78	 Bytes: 6
  %loadMem_490d78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490d78 = call %struct.Memory* @routine_movw__0x0____rdx__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490d78)
  store %struct.Memory* %call_490d78, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rcx	 RIP: 490d7e	 Bytes: 4
  %loadMem_490d7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490d7e = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490d7e)
  store %struct.Memory* %call_490d7e, %struct.Memory** %MEMORY

  ; Code: shlq $0x7, %rcx	 RIP: 490d82	 Bytes: 4
  %loadMem_490d82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490d82 = call %struct.Memory* @routine_shlq__0x7___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490d82)
  store %struct.Memory* %call_490d82, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 490d86	 Bytes: 3
  %loadMem_490d86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490d86 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490d86)
  store %struct.Memory* %call_490d86, %struct.Memory** %MEMORY

  ; Code: addq $0x40, %rax	 RIP: 490d89	 Bytes: 4
  %loadMem_490d89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490d89 = call %struct.Memory* @routine_addq__0x40___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490d89)
  store %struct.Memory* %call_490d89, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rcx	 RIP: 490d8d	 Bytes: 4
  %loadMem_490d8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490d8d = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490d8d)
  store %struct.Memory* %call_490d8d, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rcx	 RIP: 490d91	 Bytes: 4
  %loadMem_490d91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490d91 = call %struct.Memory* @routine_shlq__0x4___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490d91)
  store %struct.Memory* %call_490d91, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 490d95	 Bytes: 3
  %loadMem_490d95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490d95 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490d95)
  store %struct.Memory* %call_490d95, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rcx	 RIP: 490d98	 Bytes: 4
  %loadMem_490d98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490d98 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490d98)
  store %struct.Memory* %call_490d98, %struct.Memory** %MEMORY

  ; Code: movw $0x0, 0x2(%rax,%rcx,4)	 RIP: 490d9c	 Bytes: 7
  %loadMem_490d9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490d9c = call %struct.Memory* @routine_movw__0x0__0x2__rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490d9c)
  store %struct.Memory* %call_490d9c, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %eax	 RIP: 490da3	 Bytes: 3
  %loadMem_490da3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490da3 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490da3)
  store %struct.Memory* %call_490da3, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 490da6	 Bytes: 3
  %loadMem_490da6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490da6 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490da6)
  store %struct.Memory* %call_490da6, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x20(%rbp)	 RIP: 490da9	 Bytes: 3
  %loadMem_490da9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490da9 = call %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490da9)
  store %struct.Memory* %call_490da9, %struct.Memory** %MEMORY

  ; Code: jmpq .L_490cfa	 RIP: 490dac	 Bytes: 5
  %loadMem_490dac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490dac = call %struct.Memory* @routine_jmpq_.L_490cfa(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490dac, i64 -178, i64 5)
  store %struct.Memory* %call_490dac, %struct.Memory** %MEMORY

  br label %block_.L_490cfa

  ; Code: .L_490db1:	 RIP: 490db1	 Bytes: 0
block_.L_490db1:

  ; Code: jmpq .L_490db6	 RIP: 490db1	 Bytes: 5
  %loadMem_490db1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490db1 = call %struct.Memory* @routine_jmpq_.L_490db6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490db1, i64 5, i64 5)
  store %struct.Memory* %call_490db1, %struct.Memory** %MEMORY

  br label %block_.L_490db6

  ; Code: .L_490db6:	 RIP: 490db6	 Bytes: 0
block_.L_490db6:

  ; Code: movl -0x24(%rbp), %eax	 RIP: 490db6	 Bytes: 3
  %loadMem_490db6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490db6 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490db6)
  store %struct.Memory* %call_490db6, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 490db9	 Bytes: 3
  %loadMem_490db9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490db9 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490db9)
  store %struct.Memory* %call_490db9, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x24(%rbp)	 RIP: 490dbc	 Bytes: 3
  %loadMem_490dbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490dbc = call %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490dbc)
  store %struct.Memory* %call_490dbc, %struct.Memory** %MEMORY

  ; Code: jmpq .L_490ce8	 RIP: 490dbf	 Bytes: 5
  %loadMem_490dbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490dbf = call %struct.Memory* @routine_jmpq_.L_490ce8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490dbf, i64 -215, i64 5)
  store %struct.Memory* %call_490dbf, %struct.Memory** %MEMORY

  br label %block_.L_490ce8

  ; Code: .L_490dc4:	 RIP: 490dc4	 Bytes: 0
block_.L_490dc4:

  ; Code: jmpq .L_4913d4	 RIP: 490dc4	 Bytes: 5
  %loadMem_490dc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490dc4 = call %struct.Memory* @routine_jmpq_.L_4913d4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490dc4, i64 1552, i64 5)
  store %struct.Memory* %call_490dc4, %struct.Memory** %MEMORY

  br label %block_.L_4913d4

  ; Code: .L_490dc9:	 RIP: 490dc9	 Bytes: 0
block_.L_490dc9:

  ; Code: cmpl $0x0, -0x1c(%rbp)	 RIP: 490dc9	 Bytes: 4
  %loadMem_490dc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490dc9 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490dc9)
  store %struct.Memory* %call_490dc9, %struct.Memory** %MEMORY

  ; Code: jne .L_490f4b	 RIP: 490dcd	 Bytes: 6
  %loadMem_490dcd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490dcd = call %struct.Memory* @routine_jne_.L_490f4b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490dcd, i8* %BRANCH_TAKEN, i64 382, i64 6, i64 6)
  store %struct.Memory* %call_490dcd, %struct.Memory** %MEMORY

  %loadBr_490dcd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_490dcd = icmp eq i8 %loadBr_490dcd, 1
  br i1 %cmpBr_490dcd, label %block_.L_490f4b, label %block_490dd3

block_490dd3:
  ; Code: movl -0x2c(%rbp), %eax	 RIP: 490dd3	 Bytes: 3
  %loadMem_490dd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490dd3 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490dd3)
  store %struct.Memory* %call_490dd3, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x24(%rbp)	 RIP: 490dd6	 Bytes: 3
  %loadMem_490dd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490dd6 = call %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490dd6)
  store %struct.Memory* %call_490dd6, %struct.Memory** %MEMORY

  ; Code: .L_490dd9:	 RIP: 490dd9	 Bytes: 0
  br label %block_.L_490dd9
block_.L_490dd9:

  ; Code: movl -0x24(%rbp), %eax	 RIP: 490dd9	 Bytes: 3
  %loadMem_490dd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490dd9 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490dd9)
  store %struct.Memory* %call_490dd9, %struct.Memory** %MEMORY

  ; Code: cmpl -0x34(%rbp), %eax	 RIP: 490ddc	 Bytes: 3
  %loadMem_490ddc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490ddc = call %struct.Memory* @routine_cmpl_MINUS0x34__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490ddc)
  store %struct.Memory* %call_490ddc, %struct.Memory** %MEMORY

  ; Code: jge .L_490f46	 RIP: 490ddf	 Bytes: 6
  %loadMem_490ddf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490ddf = call %struct.Memory* @routine_jge_.L_490f46(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490ddf, i8* %BRANCH_TAKEN, i64 359, i64 6, i64 6)
  store %struct.Memory* %call_490ddf, %struct.Memory** %MEMORY

  %loadBr_490ddf = load i8, i8* %BRANCH_TAKEN
  %cmpBr_490ddf = icmp eq i8 %loadBr_490ddf, 1
  br i1 %cmpBr_490ddf, label %block_.L_490f46, label %block_490de5

block_490de5:
  ; Code: movl -0x28(%rbp), %eax	 RIP: 490de5	 Bytes: 3
  %loadMem_490de5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490de5 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490de5)
  store %struct.Memory* %call_490de5, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x20(%rbp)	 RIP: 490de8	 Bytes: 3
  %loadMem_490de8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490de8 = call %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490de8)
  store %struct.Memory* %call_490de8, %struct.Memory** %MEMORY

  ; Code: .L_490deb:	 RIP: 490deb	 Bytes: 0
  br label %block_.L_490deb
block_.L_490deb:

  ; Code: movl -0x20(%rbp), %eax	 RIP: 490deb	 Bytes: 3
  %loadMem_490deb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490deb = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490deb)
  store %struct.Memory* %call_490deb, %struct.Memory** %MEMORY

  ; Code: cmpl -0x30(%rbp), %eax	 RIP: 490dee	 Bytes: 3
  %loadMem_490dee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490dee = call %struct.Memory* @routine_cmpl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490dee)
  store %struct.Memory* %call_490dee, %struct.Memory** %MEMORY

  ; Code: jge .L_490f33	 RIP: 490df1	 Bytes: 6
  %loadMem_490df1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490df1 = call %struct.Memory* @routine_jge_.L_490f33(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490df1, i8* %BRANCH_TAKEN, i64 322, i64 6, i64 6)
  store %struct.Memory* %call_490df1, %struct.Memory** %MEMORY

  %loadBr_490df1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_490df1 = icmp eq i8 %loadBr_490df1, 1
  br i1 %cmpBr_490df1, label %block_.L_490f33, label %block_490df7

block_490df7:
  ; Code: movq $0x6d32e0, %rax	 RIP: 490df7	 Bytes: 10
  %loadMem_490df7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490df7 = call %struct.Memory* @routine_movq__0x6d32e0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490df7)
  store %struct.Memory* %call_490df7, %struct.Memory** %MEMORY

  ; Code: movq $0x6d2090, %rcx	 RIP: 490e01	 Bytes: 10
  %loadMem_490e01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490e01 = call %struct.Memory* @routine_movq__0x6d2090___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490e01)
  store %struct.Memory* %call_490e01, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rdx	 RIP: 490e0b	 Bytes: 4
  %loadMem_490e0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490e0b = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490e0b)
  store %struct.Memory* %call_490e0b, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rsi	 RIP: 490e0f	 Bytes: 4
  %loadMem_490e0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490e0f = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490e0f)
  store %struct.Memory* %call_490e0f, %struct.Memory** %MEMORY

  ; Code: movq (%rdx,%rsi,8), %rdx	 RIP: 490e13	 Bytes: 4
  %loadMem_490e13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490e13 = call %struct.Memory* @routine_movq___rdx__rsi_8____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490e13)
  store %struct.Memory* %call_490e13, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rsi	 RIP: 490e17	 Bytes: 4
  %loadMem_490e17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490e17 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490e17)
  store %struct.Memory* %call_490e17, %struct.Memory** %MEMORY

  ; Code: movq (%rdx,%rsi,8), %rdx	 RIP: 490e1b	 Bytes: 4
  %loadMem_490e1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490e1b = call %struct.Memory* @routine_movq___rdx__rsi_8____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490e1b)
  store %struct.Memory* %call_490e1b, %struct.Memory** %MEMORY

  ; Code: movq (%rdx), %rdx	 RIP: 490e1f	 Bytes: 3
  %loadMem_490e1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490e1f = call %struct.Memory* @routine_movq___rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490e1f)
  store %struct.Memory* %call_490e1f, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rsi	 RIP: 490e22	 Bytes: 4
  %loadMem_490e22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490e22 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490e22)
  store %struct.Memory* %call_490e22, %struct.Memory** %MEMORY

  ; Code: movq (%rdx,%rsi,8), %rdx	 RIP: 490e26	 Bytes: 4
  %loadMem_490e26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490e26 = call %struct.Memory* @routine_movq___rdx__rsi_8____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490e26)
  store %struct.Memory* %call_490e26, %struct.Memory** %MEMORY

  ; Code: movq 0x20(%rdx), %rdx	 RIP: 490e2a	 Bytes: 4
  %loadMem_490e2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490e2a = call %struct.Memory* @routine_movq_0x20__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490e2a)
  store %struct.Memory* %call_490e2a, %struct.Memory** %MEMORY

  ; Code: movw (%rdx), %di	 RIP: 490e2e	 Bytes: 3
  %loadMem_490e2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490e2e = call %struct.Memory* @routine_movw___rdx____di(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490e2e)
  store %struct.Memory* %call_490e2e, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rdx	 RIP: 490e31	 Bytes: 4
  %loadMem_490e31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490e31 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490e31)
  store %struct.Memory* %call_490e31, %struct.Memory** %MEMORY

  ; Code: shlq $0x7, %rdx	 RIP: 490e35	 Bytes: 4
  %loadMem_490e35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490e35 = call %struct.Memory* @routine_shlq__0x7___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490e35)
  store %struct.Memory* %call_490e35, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rsi	 RIP: 490e39	 Bytes: 3
  %loadMem_490e39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490e39 = call %struct.Memory* @routine_movq__rcx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490e39)
  store %struct.Memory* %call_490e39, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rsi	 RIP: 490e3c	 Bytes: 3
  %loadMem_490e3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490e3c = call %struct.Memory* @routine_addq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490e3c)
  store %struct.Memory* %call_490e3c, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 490e3f	 Bytes: 4
  %loadMem_490e3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490e3f = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490e3f)
  store %struct.Memory* %call_490e3f, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rdx	 RIP: 490e43	 Bytes: 4
  %loadMem_490e43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490e43 = call %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490e43)
  store %struct.Memory* %call_490e43, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rsi	 RIP: 490e47	 Bytes: 3
  %loadMem_490e47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490e47 = call %struct.Memory* @routine_addq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490e47)
  store %struct.Memory* %call_490e47, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 490e4a	 Bytes: 4
  %loadMem_490e4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490e4a = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490e4a)
  store %struct.Memory* %call_490e4a, %struct.Memory** %MEMORY

  ; Code: movw %di, (%rsi,%rdx,4)	 RIP: 490e4e	 Bytes: 4
  %loadMem_490e4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490e4e = call %struct.Memory* @routine_movw__di____rsi__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490e4e)
  store %struct.Memory* %call_490e4e, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rdx	 RIP: 490e52	 Bytes: 4
  %loadMem_490e52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490e52 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490e52)
  store %struct.Memory* %call_490e52, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rsi	 RIP: 490e56	 Bytes: 4
  %loadMem_490e56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490e56 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490e56)
  store %struct.Memory* %call_490e56, %struct.Memory** %MEMORY

  ; Code: movq (%rdx,%rsi,8), %rdx	 RIP: 490e5a	 Bytes: 4
  %loadMem_490e5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490e5a = call %struct.Memory* @routine_movq___rdx__rsi_8____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490e5a)
  store %struct.Memory* %call_490e5a, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rsi	 RIP: 490e5e	 Bytes: 4
  %loadMem_490e5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490e5e = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490e5e)
  store %struct.Memory* %call_490e5e, %struct.Memory** %MEMORY

  ; Code: movq (%rdx,%rsi,8), %rdx	 RIP: 490e62	 Bytes: 4
  %loadMem_490e62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490e62 = call %struct.Memory* @routine_movq___rdx__rsi_8____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490e62)
  store %struct.Memory* %call_490e62, %struct.Memory** %MEMORY

  ; Code: movq (%rdx), %rdx	 RIP: 490e66	 Bytes: 3
  %loadMem_490e66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490e66 = call %struct.Memory* @routine_movq___rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490e66)
  store %struct.Memory* %call_490e66, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rsi	 RIP: 490e69	 Bytes: 4
  %loadMem_490e69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490e69 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490e69)
  store %struct.Memory* %call_490e69, %struct.Memory** %MEMORY

  ; Code: movq (%rdx,%rsi,8), %rdx	 RIP: 490e6d	 Bytes: 4
  %loadMem_490e6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490e6d = call %struct.Memory* @routine_movq___rdx__rsi_8____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490e6d)
  store %struct.Memory* %call_490e6d, %struct.Memory** %MEMORY

  ; Code: movq 0x20(%rdx), %rdx	 RIP: 490e71	 Bytes: 4
  %loadMem_490e71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490e71 = call %struct.Memory* @routine_movq_0x20__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490e71)
  store %struct.Memory* %call_490e71, %struct.Memory** %MEMORY

  ; Code: movw 0x2(%rdx), %di	 RIP: 490e75	 Bytes: 4
  %loadMem_490e75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490e75 = call %struct.Memory* @routine_movw_0x2__rdx____di(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490e75)
  store %struct.Memory* %call_490e75, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rdx	 RIP: 490e79	 Bytes: 4
  %loadMem_490e79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490e79 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490e79)
  store %struct.Memory* %call_490e79, %struct.Memory** %MEMORY

  ; Code: shlq $0x7, %rdx	 RIP: 490e7d	 Bytes: 4
  %loadMem_490e7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490e7d = call %struct.Memory* @routine_shlq__0x7___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490e7d)
  store %struct.Memory* %call_490e7d, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 490e81	 Bytes: 3
  %loadMem_490e81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490e81 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490e81)
  store %struct.Memory* %call_490e81, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 490e84	 Bytes: 4
  %loadMem_490e84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490e84 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490e84)
  store %struct.Memory* %call_490e84, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rdx	 RIP: 490e88	 Bytes: 4
  %loadMem_490e88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490e88 = call %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490e88)
  store %struct.Memory* %call_490e88, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 490e8c	 Bytes: 3
  %loadMem_490e8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490e8c = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490e8c)
  store %struct.Memory* %call_490e8c, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 490e8f	 Bytes: 4
  %loadMem_490e8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490e8f = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490e8f)
  store %struct.Memory* %call_490e8f, %struct.Memory** %MEMORY

  ; Code: movw %di, 0x2(%rcx,%rdx,4)	 RIP: 490e93	 Bytes: 5
  %loadMem_490e93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490e93 = call %struct.Memory* @routine_movw__di__0x2__rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490e93)
  store %struct.Memory* %call_490e93, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rcx	 RIP: 490e98	 Bytes: 4
  %loadMem_490e98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490e98 = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490e98)
  store %struct.Memory* %call_490e98, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 490e9c	 Bytes: 4
  %loadMem_490e9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490e9c = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490e9c)
  store %struct.Memory* %call_490e9c, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 490ea0	 Bytes: 4
  %loadMem_490ea0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490ea0 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490ea0)
  store %struct.Memory* %call_490ea0, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 490ea4	 Bytes: 4
  %loadMem_490ea4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490ea4 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490ea4)
  store %struct.Memory* %call_490ea4, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 490ea8	 Bytes: 4
  %loadMem_490ea8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490ea8 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490ea8)
  store %struct.Memory* %call_490ea8, %struct.Memory** %MEMORY

  ; Code: movq (%rcx), %rcx	 RIP: 490eac	 Bytes: 3
  %loadMem_490eac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490eac = call %struct.Memory* @routine_movq___rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490eac)
  store %struct.Memory* %call_490eac, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rdx	 RIP: 490eaf	 Bytes: 4
  %loadMem_490eaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490eaf = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490eaf)
  store %struct.Memory* %call_490eaf, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 490eb3	 Bytes: 4
  %loadMem_490eb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490eb3 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490eb3)
  store %struct.Memory* %call_490eb3, %struct.Memory** %MEMORY

  ; Code: movq 0x20(%rcx), %rcx	 RIP: 490eb7	 Bytes: 4
  %loadMem_490eb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490eb7 = call %struct.Memory* @routine_movq_0x20__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490eb7)
  store %struct.Memory* %call_490eb7, %struct.Memory** %MEMORY

  ; Code: movw (%rcx), %di	 RIP: 490ebb	 Bytes: 3
  %loadMem_490ebb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490ebb = call %struct.Memory* @routine_movw___rcx____di(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490ebb)
  store %struct.Memory* %call_490ebb, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rcx	 RIP: 490ebe	 Bytes: 4
  %loadMem_490ebe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490ebe = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490ebe)
  store %struct.Memory* %call_490ebe, %struct.Memory** %MEMORY

  ; Code: shlq $0x7, %rcx	 RIP: 490ec2	 Bytes: 4
  %loadMem_490ec2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490ec2 = call %struct.Memory* @routine_shlq__0x7___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490ec2)
  store %struct.Memory* %call_490ec2, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 490ec6	 Bytes: 3
  %loadMem_490ec6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490ec6 = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490ec6)
  store %struct.Memory* %call_490ec6, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdx	 RIP: 490ec9	 Bytes: 3
  %loadMem_490ec9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490ec9 = call %struct.Memory* @routine_addq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490ec9)
  store %struct.Memory* %call_490ec9, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rcx	 RIP: 490ecc	 Bytes: 4
  %loadMem_490ecc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490ecc = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490ecc)
  store %struct.Memory* %call_490ecc, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rcx	 RIP: 490ed0	 Bytes: 4
  %loadMem_490ed0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490ed0 = call %struct.Memory* @routine_shlq__0x4___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490ed0)
  store %struct.Memory* %call_490ed0, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdx	 RIP: 490ed4	 Bytes: 3
  %loadMem_490ed4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490ed4 = call %struct.Memory* @routine_addq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490ed4)
  store %struct.Memory* %call_490ed4, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rcx	 RIP: 490ed7	 Bytes: 4
  %loadMem_490ed7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490ed7 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490ed7)
  store %struct.Memory* %call_490ed7, %struct.Memory** %MEMORY

  ; Code: movw %di, (%rdx,%rcx,4)	 RIP: 490edb	 Bytes: 4
  %loadMem_490edb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490edb = call %struct.Memory* @routine_movw__di____rdx__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490edb)
  store %struct.Memory* %call_490edb, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rcx	 RIP: 490edf	 Bytes: 4
  %loadMem_490edf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490edf = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490edf)
  store %struct.Memory* %call_490edf, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 490ee3	 Bytes: 4
  %loadMem_490ee3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490ee3 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490ee3)
  store %struct.Memory* %call_490ee3, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 490ee7	 Bytes: 4
  %loadMem_490ee7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490ee7 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490ee7)
  store %struct.Memory* %call_490ee7, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 490eeb	 Bytes: 4
  %loadMem_490eeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490eeb = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490eeb)
  store %struct.Memory* %call_490eeb, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 490eef	 Bytes: 4
  %loadMem_490eef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490eef = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490eef)
  store %struct.Memory* %call_490eef, %struct.Memory** %MEMORY

  ; Code: movq (%rcx), %rcx	 RIP: 490ef3	 Bytes: 3
  %loadMem_490ef3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490ef3 = call %struct.Memory* @routine_movq___rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490ef3)
  store %struct.Memory* %call_490ef3, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rdx	 RIP: 490ef6	 Bytes: 4
  %loadMem_490ef6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490ef6 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490ef6)
  store %struct.Memory* %call_490ef6, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 490efa	 Bytes: 4
  %loadMem_490efa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490efa = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490efa)
  store %struct.Memory* %call_490efa, %struct.Memory** %MEMORY

  ; Code: movq 0x20(%rcx), %rcx	 RIP: 490efe	 Bytes: 4
  %loadMem_490efe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490efe = call %struct.Memory* @routine_movq_0x20__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490efe)
  store %struct.Memory* %call_490efe, %struct.Memory** %MEMORY

  ; Code: movw 0x2(%rcx), %di	 RIP: 490f02	 Bytes: 4
  %loadMem_490f02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490f02 = call %struct.Memory* @routine_movw_0x2__rcx____di(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490f02)
  store %struct.Memory* %call_490f02, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rcx	 RIP: 490f06	 Bytes: 4
  %loadMem_490f06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490f06 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490f06)
  store %struct.Memory* %call_490f06, %struct.Memory** %MEMORY

  ; Code: shlq $0x7, %rcx	 RIP: 490f0a	 Bytes: 4
  %loadMem_490f0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490f0a = call %struct.Memory* @routine_shlq__0x7___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490f0a)
  store %struct.Memory* %call_490f0a, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 490f0e	 Bytes: 3
  %loadMem_490f0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490f0e = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490f0e)
  store %struct.Memory* %call_490f0e, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rcx	 RIP: 490f11	 Bytes: 4
  %loadMem_490f11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490f11 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490f11)
  store %struct.Memory* %call_490f11, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rcx	 RIP: 490f15	 Bytes: 4
  %loadMem_490f15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490f15 = call %struct.Memory* @routine_shlq__0x4___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490f15)
  store %struct.Memory* %call_490f15, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 490f19	 Bytes: 3
  %loadMem_490f19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490f19 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490f19)
  store %struct.Memory* %call_490f19, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rcx	 RIP: 490f1c	 Bytes: 4
  %loadMem_490f1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490f1c = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490f1c)
  store %struct.Memory* %call_490f1c, %struct.Memory** %MEMORY

  ; Code: movw %di, 0x2(%rax,%rcx,4)	 RIP: 490f20	 Bytes: 5
  %loadMem_490f20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490f20 = call %struct.Memory* @routine_movw__di__0x2__rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490f20)
  store %struct.Memory* %call_490f20, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %eax	 RIP: 490f25	 Bytes: 3
  %loadMem_490f25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490f25 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490f25)
  store %struct.Memory* %call_490f25, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 490f28	 Bytes: 3
  %loadMem_490f28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490f28 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490f28)
  store %struct.Memory* %call_490f28, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x20(%rbp)	 RIP: 490f2b	 Bytes: 3
  %loadMem_490f2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490f2b = call %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490f2b)
  store %struct.Memory* %call_490f2b, %struct.Memory** %MEMORY

  ; Code: jmpq .L_490deb	 RIP: 490f2e	 Bytes: 5
  %loadMem_490f2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490f2e = call %struct.Memory* @routine_jmpq_.L_490deb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490f2e, i64 -323, i64 5)
  store %struct.Memory* %call_490f2e, %struct.Memory** %MEMORY

  br label %block_.L_490deb

  ; Code: .L_490f33:	 RIP: 490f33	 Bytes: 0
block_.L_490f33:

  ; Code: jmpq .L_490f38	 RIP: 490f33	 Bytes: 5
  %loadMem_490f33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490f33 = call %struct.Memory* @routine_jmpq_.L_490f38(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490f33, i64 5, i64 5)
  store %struct.Memory* %call_490f33, %struct.Memory** %MEMORY

  br label %block_.L_490f38

  ; Code: .L_490f38:	 RIP: 490f38	 Bytes: 0
block_.L_490f38:

  ; Code: movl -0x24(%rbp), %eax	 RIP: 490f38	 Bytes: 3
  %loadMem_490f38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490f38 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490f38)
  store %struct.Memory* %call_490f38, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 490f3b	 Bytes: 3
  %loadMem_490f3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490f3b = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490f3b)
  store %struct.Memory* %call_490f3b, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x24(%rbp)	 RIP: 490f3e	 Bytes: 3
  %loadMem_490f3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490f3e = call %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490f3e)
  store %struct.Memory* %call_490f3e, %struct.Memory** %MEMORY

  ; Code: jmpq .L_490dd9	 RIP: 490f41	 Bytes: 5
  %loadMem_490f41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490f41 = call %struct.Memory* @routine_jmpq_.L_490dd9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490f41, i64 -360, i64 5)
  store %struct.Memory* %call_490f41, %struct.Memory** %MEMORY

  br label %block_.L_490dd9

  ; Code: .L_490f46:	 RIP: 490f46	 Bytes: 0
block_.L_490f46:

  ; Code: jmpq .L_4913d4	 RIP: 490f46	 Bytes: 5
  %loadMem_490f46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490f46 = call %struct.Memory* @routine_jmpq_.L_4913d4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490f46, i64 1166, i64 5)
  store %struct.Memory* %call_490f46, %struct.Memory** %MEMORY

  br label %block_.L_4913d4

  ; Code: .L_490f4b:	 RIP: 490f4b	 Bytes: 0
block_.L_490f4b:

  ; Code: cmpl $0x0, -0x18(%rbp)	 RIP: 490f4b	 Bytes: 4
  %loadMem_490f4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490f4b = call %struct.Memory* @routine_cmpl__0x0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490f4b)
  store %struct.Memory* %call_490f4b, %struct.Memory** %MEMORY

  ; Code: je .L_490f5f	 RIP: 490f4f	 Bytes: 6
  %loadMem_490f4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490f4f = call %struct.Memory* @routine_je_.L_490f5f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490f4f, i8* %BRANCH_TAKEN, i64 16, i64 6, i64 6)
  store %struct.Memory* %call_490f4f, %struct.Memory** %MEMORY

  %loadBr_490f4f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_490f4f = icmp eq i8 %loadBr_490f4f, 1
  br i1 %cmpBr_490f4f, label %block_.L_490f5f, label %block_490f55

block_490f55:
  ; Code: cmpl $0x2, -0x18(%rbp)	 RIP: 490f55	 Bytes: 4
  %loadMem_490f55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490f55 = call %struct.Memory* @routine_cmpl__0x2__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490f55)
  store %struct.Memory* %call_490f55, %struct.Memory** %MEMORY

  ; Code: jne .L_4910e7	 RIP: 490f59	 Bytes: 6
  %loadMem_490f59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490f59 = call %struct.Memory* @routine_jne_.L_4910e7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490f59, i8* %BRANCH_TAKEN, i64 398, i64 6, i64 6)
  store %struct.Memory* %call_490f59, %struct.Memory** %MEMORY

  %loadBr_490f59 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_490f59 = icmp eq i8 %loadBr_490f59, 1
  br i1 %cmpBr_490f59, label %block_.L_4910e7, label %block_.L_490f5f

  ; Code: .L_490f5f:	 RIP: 490f5f	 Bytes: 0
block_.L_490f5f:

  ; Code: movl -0x2c(%rbp), %eax	 RIP: 490f5f	 Bytes: 3
  %loadMem_490f5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490f5f = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490f5f)
  store %struct.Memory* %call_490f5f, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x24(%rbp)	 RIP: 490f62	 Bytes: 3
  %loadMem_490f62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490f62 = call %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490f62)
  store %struct.Memory* %call_490f62, %struct.Memory** %MEMORY

  ; Code: .L_490f65:	 RIP: 490f65	 Bytes: 0
  br label %block_.L_490f65
block_.L_490f65:

  ; Code: movl -0x24(%rbp), %eax	 RIP: 490f65	 Bytes: 3
  %loadMem_490f65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490f65 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490f65)
  store %struct.Memory* %call_490f65, %struct.Memory** %MEMORY

  ; Code: cmpl -0x34(%rbp), %eax	 RIP: 490f68	 Bytes: 3
  %loadMem_490f68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490f68 = call %struct.Memory* @routine_cmpl_MINUS0x34__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490f68)
  store %struct.Memory* %call_490f68, %struct.Memory** %MEMORY

  ; Code: jge .L_4910e2	 RIP: 490f6b	 Bytes: 6
  %loadMem_490f6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490f6b = call %struct.Memory* @routine_jge_.L_4910e2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490f6b, i8* %BRANCH_TAKEN, i64 375, i64 6, i64 6)
  store %struct.Memory* %call_490f6b, %struct.Memory** %MEMORY

  %loadBr_490f6b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_490f6b = icmp eq i8 %loadBr_490f6b, 1
  br i1 %cmpBr_490f6b, label %block_.L_4910e2, label %block_490f71

block_490f71:
  ; Code: movl -0x28(%rbp), %eax	 RIP: 490f71	 Bytes: 3
  %loadMem_490f71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490f71 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490f71)
  store %struct.Memory* %call_490f71, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x20(%rbp)	 RIP: 490f74	 Bytes: 3
  %loadMem_490f74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490f74 = call %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490f74)
  store %struct.Memory* %call_490f74, %struct.Memory** %MEMORY

  ; Code: .L_490f77:	 RIP: 490f77	 Bytes: 0
  br label %block_.L_490f77
block_.L_490f77:

  ; Code: movl -0x20(%rbp), %eax	 RIP: 490f77	 Bytes: 3
  %loadMem_490f77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490f77 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490f77)
  store %struct.Memory* %call_490f77, %struct.Memory** %MEMORY

  ; Code: cmpl -0x30(%rbp), %eax	 RIP: 490f7a	 Bytes: 3
  %loadMem_490f7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490f7a = call %struct.Memory* @routine_cmpl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490f7a)
  store %struct.Memory* %call_490f7a, %struct.Memory** %MEMORY

  ; Code: jge .L_4910cf	 RIP: 490f7d	 Bytes: 6
  %loadMem_490f7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490f7d = call %struct.Memory* @routine_jge_.L_4910cf(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490f7d, i8* %BRANCH_TAKEN, i64 338, i64 6, i64 6)
  store %struct.Memory* %call_490f7d, %struct.Memory** %MEMORY

  %loadBr_490f7d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_490f7d = icmp eq i8 %loadBr_490f7d, 1
  br i1 %cmpBr_490f7d, label %block_.L_4910cf, label %block_490f83

block_490f83:
  ; Code: movq $0x6d32e0, %rax	 RIP: 490f83	 Bytes: 10
  %loadMem_490f83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490f83 = call %struct.Memory* @routine_movq__0x6d32e0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490f83)
  store %struct.Memory* %call_490f83, %struct.Memory** %MEMORY

  ; Code: movq $0x6d2090, %rcx	 RIP: 490f8d	 Bytes: 10
  %loadMem_490f8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490f8d = call %struct.Memory* @routine_movq__0x6d2090___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490f8d)
  store %struct.Memory* %call_490f8d, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rdx	 RIP: 490f97	 Bytes: 4
  %loadMem_490f97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490f97 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490f97)
  store %struct.Memory* %call_490f97, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rsi	 RIP: 490f9b	 Bytes: 4
  %loadMem_490f9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490f9b = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490f9b)
  store %struct.Memory* %call_490f9b, %struct.Memory** %MEMORY

  ; Code: movq (%rdx,%rsi,8), %rdx	 RIP: 490f9f	 Bytes: 4
  %loadMem_490f9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490f9f = call %struct.Memory* @routine_movq___rdx__rsi_8____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490f9f)
  store %struct.Memory* %call_490f9f, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rsi	 RIP: 490fa3	 Bytes: 4
  %loadMem_490fa3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490fa3 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490fa3)
  store %struct.Memory* %call_490fa3, %struct.Memory** %MEMORY

  ; Code: movq (%rdx,%rsi,8), %rdx	 RIP: 490fa7	 Bytes: 4
  %loadMem_490fa7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490fa7 = call %struct.Memory* @routine_movq___rdx__rsi_8____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490fa7)
  store %struct.Memory* %call_490fa7, %struct.Memory** %MEMORY

  ; Code: movq (%rdx), %rdx	 RIP: 490fab	 Bytes: 3
  %loadMem_490fab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490fab = call %struct.Memory* @routine_movq___rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490fab)
  store %struct.Memory* %call_490fab, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rsi	 RIP: 490fae	 Bytes: 4
  %loadMem_490fae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490fae = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490fae)
  store %struct.Memory* %call_490fae, %struct.Memory** %MEMORY

  ; Code: movq (%rdx,%rsi,8), %rdx	 RIP: 490fb2	 Bytes: 4
  %loadMem_490fb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490fb2 = call %struct.Memory* @routine_movq___rdx__rsi_8____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490fb2)
  store %struct.Memory* %call_490fb2, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rsi	 RIP: 490fb6	 Bytes: 4
  %loadMem_490fb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490fb6 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490fb6)
  store %struct.Memory* %call_490fb6, %struct.Memory** %MEMORY

  ; Code: movq (%rdx,%rsi,8), %rdx	 RIP: 490fba	 Bytes: 4
  %loadMem_490fba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490fba = call %struct.Memory* @routine_movq___rdx__rsi_8____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490fba)
  store %struct.Memory* %call_490fba, %struct.Memory** %MEMORY

  ; Code: movw (%rdx), %di	 RIP: 490fbe	 Bytes: 3
  %loadMem_490fbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490fbe = call %struct.Memory* @routine_movw___rdx____di(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490fbe)
  store %struct.Memory* %call_490fbe, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rdx	 RIP: 490fc1	 Bytes: 4
  %loadMem_490fc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490fc1 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490fc1)
  store %struct.Memory* %call_490fc1, %struct.Memory** %MEMORY

  ; Code: shlq $0x7, %rdx	 RIP: 490fc5	 Bytes: 4
  %loadMem_490fc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490fc5 = call %struct.Memory* @routine_shlq__0x7___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490fc5)
  store %struct.Memory* %call_490fc5, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rsi	 RIP: 490fc9	 Bytes: 3
  %loadMem_490fc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490fc9 = call %struct.Memory* @routine_movq__rcx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490fc9)
  store %struct.Memory* %call_490fc9, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rsi	 RIP: 490fcc	 Bytes: 3
  %loadMem_490fcc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490fcc = call %struct.Memory* @routine_addq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490fcc)
  store %struct.Memory* %call_490fcc, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 490fcf	 Bytes: 4
  %loadMem_490fcf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490fcf = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490fcf)
  store %struct.Memory* %call_490fcf, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rdx	 RIP: 490fd3	 Bytes: 4
  %loadMem_490fd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490fd3 = call %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490fd3)
  store %struct.Memory* %call_490fd3, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rsi	 RIP: 490fd7	 Bytes: 3
  %loadMem_490fd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490fd7 = call %struct.Memory* @routine_addq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490fd7)
  store %struct.Memory* %call_490fd7, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 490fda	 Bytes: 4
  %loadMem_490fda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490fda = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490fda)
  store %struct.Memory* %call_490fda, %struct.Memory** %MEMORY

  ; Code: movw %di, (%rsi,%rdx,4)	 RIP: 490fde	 Bytes: 4
  %loadMem_490fde = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490fde = call %struct.Memory* @routine_movw__di____rsi__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490fde)
  store %struct.Memory* %call_490fde, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rdx	 RIP: 490fe2	 Bytes: 4
  %loadMem_490fe2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490fe2 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490fe2)
  store %struct.Memory* %call_490fe2, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rsi	 RIP: 490fe6	 Bytes: 4
  %loadMem_490fe6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490fe6 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490fe6)
  store %struct.Memory* %call_490fe6, %struct.Memory** %MEMORY

  ; Code: movq (%rdx,%rsi,8), %rdx	 RIP: 490fea	 Bytes: 4
  %loadMem_490fea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490fea = call %struct.Memory* @routine_movq___rdx__rsi_8____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490fea)
  store %struct.Memory* %call_490fea, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rsi	 RIP: 490fee	 Bytes: 4
  %loadMem_490fee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490fee = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490fee)
  store %struct.Memory* %call_490fee, %struct.Memory** %MEMORY

  ; Code: movq (%rdx,%rsi,8), %rdx	 RIP: 490ff2	 Bytes: 4
  %loadMem_490ff2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490ff2 = call %struct.Memory* @routine_movq___rdx__rsi_8____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490ff2)
  store %struct.Memory* %call_490ff2, %struct.Memory** %MEMORY

  ; Code: movq (%rdx), %rdx	 RIP: 490ff6	 Bytes: 3
  %loadMem_490ff6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490ff6 = call %struct.Memory* @routine_movq___rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490ff6)
  store %struct.Memory* %call_490ff6, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rsi	 RIP: 490ff9	 Bytes: 4
  %loadMem_490ff9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490ff9 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490ff9)
  store %struct.Memory* %call_490ff9, %struct.Memory** %MEMORY

  ; Code: movq (%rdx,%rsi,8), %rdx	 RIP: 490ffd	 Bytes: 4
  %loadMem_490ffd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_490ffd = call %struct.Memory* @routine_movq___rdx__rsi_8____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_490ffd)
  store %struct.Memory* %call_490ffd, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rsi	 RIP: 491001	 Bytes: 4
  %loadMem_491001 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491001 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491001)
  store %struct.Memory* %call_491001, %struct.Memory** %MEMORY

  ; Code: movq (%rdx,%rsi,8), %rdx	 RIP: 491005	 Bytes: 4
  %loadMem_491005 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491005 = call %struct.Memory* @routine_movq___rdx__rsi_8____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491005)
  store %struct.Memory* %call_491005, %struct.Memory** %MEMORY

  ; Code: movw 0x2(%rdx), %di	 RIP: 491009	 Bytes: 4
  %loadMem_491009 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491009 = call %struct.Memory* @routine_movw_0x2__rdx____di(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491009)
  store %struct.Memory* %call_491009, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rdx	 RIP: 49100d	 Bytes: 4
  %loadMem_49100d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49100d = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49100d)
  store %struct.Memory* %call_49100d, %struct.Memory** %MEMORY

  ; Code: shlq $0x7, %rdx	 RIP: 491011	 Bytes: 4
  %loadMem_491011 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491011 = call %struct.Memory* @routine_shlq__0x7___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491011)
  store %struct.Memory* %call_491011, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 491015	 Bytes: 3
  %loadMem_491015 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491015 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491015)
  store %struct.Memory* %call_491015, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 491018	 Bytes: 4
  %loadMem_491018 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491018 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491018)
  store %struct.Memory* %call_491018, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rdx	 RIP: 49101c	 Bytes: 4
  %loadMem_49101c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49101c = call %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49101c)
  store %struct.Memory* %call_49101c, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 491020	 Bytes: 3
  %loadMem_491020 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491020 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491020)
  store %struct.Memory* %call_491020, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 491023	 Bytes: 4
  %loadMem_491023 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491023 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491023)
  store %struct.Memory* %call_491023, %struct.Memory** %MEMORY

  ; Code: movw %di, 0x2(%rcx,%rdx,4)	 RIP: 491027	 Bytes: 5
  %loadMem_491027 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491027 = call %struct.Memory* @routine_movw__di__0x2__rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491027)
  store %struct.Memory* %call_491027, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rcx	 RIP: 49102c	 Bytes: 4
  %loadMem_49102c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49102c = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49102c)
  store %struct.Memory* %call_49102c, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 491030	 Bytes: 4
  %loadMem_491030 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491030 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491030)
  store %struct.Memory* %call_491030, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 491034	 Bytes: 4
  %loadMem_491034 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491034 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491034)
  store %struct.Memory* %call_491034, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 491038	 Bytes: 4
  %loadMem_491038 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491038 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491038)
  store %struct.Memory* %call_491038, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 49103c	 Bytes: 4
  %loadMem_49103c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49103c = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49103c)
  store %struct.Memory* %call_49103c, %struct.Memory** %MEMORY

  ; Code: movq (%rcx), %rcx	 RIP: 491040	 Bytes: 3
  %loadMem_491040 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491040 = call %struct.Memory* @routine_movq___rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491040)
  store %struct.Memory* %call_491040, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rdx	 RIP: 491043	 Bytes: 4
  %loadMem_491043 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491043 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491043)
  store %struct.Memory* %call_491043, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 491047	 Bytes: 4
  %loadMem_491047 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491047 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491047)
  store %struct.Memory* %call_491047, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rdx	 RIP: 49104b	 Bytes: 4
  %loadMem_49104b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49104b = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49104b)
  store %struct.Memory* %call_49104b, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 49104f	 Bytes: 4
  %loadMem_49104f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49104f = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49104f)
  store %struct.Memory* %call_49104f, %struct.Memory** %MEMORY

  ; Code: movw (%rcx), %di	 RIP: 491053	 Bytes: 3
  %loadMem_491053 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491053 = call %struct.Memory* @routine_movw___rcx____di(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491053)
  store %struct.Memory* %call_491053, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rcx	 RIP: 491056	 Bytes: 4
  %loadMem_491056 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491056 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491056)
  store %struct.Memory* %call_491056, %struct.Memory** %MEMORY

  ; Code: shlq $0x7, %rcx	 RIP: 49105a	 Bytes: 4
  %loadMem_49105a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49105a = call %struct.Memory* @routine_shlq__0x7___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49105a)
  store %struct.Memory* %call_49105a, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 49105e	 Bytes: 3
  %loadMem_49105e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49105e = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49105e)
  store %struct.Memory* %call_49105e, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdx	 RIP: 491061	 Bytes: 3
  %loadMem_491061 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491061 = call %struct.Memory* @routine_addq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491061)
  store %struct.Memory* %call_491061, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rcx	 RIP: 491064	 Bytes: 4
  %loadMem_491064 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491064 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491064)
  store %struct.Memory* %call_491064, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rcx	 RIP: 491068	 Bytes: 4
  %loadMem_491068 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491068 = call %struct.Memory* @routine_shlq__0x4___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491068)
  store %struct.Memory* %call_491068, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdx	 RIP: 49106c	 Bytes: 3
  %loadMem_49106c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49106c = call %struct.Memory* @routine_addq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49106c)
  store %struct.Memory* %call_49106c, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rcx	 RIP: 49106f	 Bytes: 4
  %loadMem_49106f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49106f = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49106f)
  store %struct.Memory* %call_49106f, %struct.Memory** %MEMORY

  ; Code: movw %di, (%rdx,%rcx,4)	 RIP: 491073	 Bytes: 4
  %loadMem_491073 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491073 = call %struct.Memory* @routine_movw__di____rdx__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491073)
  store %struct.Memory* %call_491073, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rcx	 RIP: 491077	 Bytes: 4
  %loadMem_491077 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491077 = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491077)
  store %struct.Memory* %call_491077, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 49107b	 Bytes: 4
  %loadMem_49107b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49107b = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49107b)
  store %struct.Memory* %call_49107b, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 49107f	 Bytes: 4
  %loadMem_49107f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49107f = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49107f)
  store %struct.Memory* %call_49107f, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 491083	 Bytes: 4
  %loadMem_491083 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491083 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491083)
  store %struct.Memory* %call_491083, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 491087	 Bytes: 4
  %loadMem_491087 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491087 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491087)
  store %struct.Memory* %call_491087, %struct.Memory** %MEMORY

  ; Code: movq (%rcx), %rcx	 RIP: 49108b	 Bytes: 3
  %loadMem_49108b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49108b = call %struct.Memory* @routine_movq___rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49108b)
  store %struct.Memory* %call_49108b, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rdx	 RIP: 49108e	 Bytes: 4
  %loadMem_49108e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49108e = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49108e)
  store %struct.Memory* %call_49108e, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 491092	 Bytes: 4
  %loadMem_491092 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491092 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491092)
  store %struct.Memory* %call_491092, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rdx	 RIP: 491096	 Bytes: 4
  %loadMem_491096 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491096 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491096)
  store %struct.Memory* %call_491096, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 49109a	 Bytes: 4
  %loadMem_49109a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49109a = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49109a)
  store %struct.Memory* %call_49109a, %struct.Memory** %MEMORY

  ; Code: movw 0x2(%rcx), %di	 RIP: 49109e	 Bytes: 4
  %loadMem_49109e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49109e = call %struct.Memory* @routine_movw_0x2__rcx____di(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49109e)
  store %struct.Memory* %call_49109e, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rcx	 RIP: 4910a2	 Bytes: 4
  %loadMem_4910a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4910a2 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4910a2)
  store %struct.Memory* %call_4910a2, %struct.Memory** %MEMORY

  ; Code: shlq $0x7, %rcx	 RIP: 4910a6	 Bytes: 4
  %loadMem_4910a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4910a6 = call %struct.Memory* @routine_shlq__0x7___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4910a6)
  store %struct.Memory* %call_4910a6, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4910aa	 Bytes: 3
  %loadMem_4910aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4910aa = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4910aa)
  store %struct.Memory* %call_4910aa, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rcx	 RIP: 4910ad	 Bytes: 4
  %loadMem_4910ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4910ad = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4910ad)
  store %struct.Memory* %call_4910ad, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rcx	 RIP: 4910b1	 Bytes: 4
  %loadMem_4910b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4910b1 = call %struct.Memory* @routine_shlq__0x4___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4910b1)
  store %struct.Memory* %call_4910b1, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4910b5	 Bytes: 3
  %loadMem_4910b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4910b5 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4910b5)
  store %struct.Memory* %call_4910b5, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rcx	 RIP: 4910b8	 Bytes: 4
  %loadMem_4910b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4910b8 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4910b8)
  store %struct.Memory* %call_4910b8, %struct.Memory** %MEMORY

  ; Code: movw %di, 0x2(%rax,%rcx,4)	 RIP: 4910bc	 Bytes: 5
  %loadMem_4910bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4910bc = call %struct.Memory* @routine_movw__di__0x2__rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4910bc)
  store %struct.Memory* %call_4910bc, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %eax	 RIP: 4910c1	 Bytes: 3
  %loadMem_4910c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4910c1 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4910c1)
  store %struct.Memory* %call_4910c1, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4910c4	 Bytes: 3
  %loadMem_4910c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4910c4 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4910c4)
  store %struct.Memory* %call_4910c4, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x20(%rbp)	 RIP: 4910c7	 Bytes: 3
  %loadMem_4910c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4910c7 = call %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4910c7)
  store %struct.Memory* %call_4910c7, %struct.Memory** %MEMORY

  ; Code: jmpq .L_490f77	 RIP: 4910ca	 Bytes: 5
  %loadMem_4910ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4910ca = call %struct.Memory* @routine_jmpq_.L_490f77(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4910ca, i64 -339, i64 5)
  store %struct.Memory* %call_4910ca, %struct.Memory** %MEMORY

  br label %block_.L_490f77

  ; Code: .L_4910cf:	 RIP: 4910cf	 Bytes: 0
block_.L_4910cf:

  ; Code: jmpq .L_4910d4	 RIP: 4910cf	 Bytes: 5
  %loadMem_4910cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4910cf = call %struct.Memory* @routine_jmpq_.L_4910d4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4910cf, i64 5, i64 5)
  store %struct.Memory* %call_4910cf, %struct.Memory** %MEMORY

  br label %block_.L_4910d4

  ; Code: .L_4910d4:	 RIP: 4910d4	 Bytes: 0
block_.L_4910d4:

  ; Code: movl -0x24(%rbp), %eax	 RIP: 4910d4	 Bytes: 3
  %loadMem_4910d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4910d4 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4910d4)
  store %struct.Memory* %call_4910d4, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4910d7	 Bytes: 3
  %loadMem_4910d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4910d7 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4910d7)
  store %struct.Memory* %call_4910d7, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x24(%rbp)	 RIP: 4910da	 Bytes: 3
  %loadMem_4910da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4910da = call %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4910da)
  store %struct.Memory* %call_4910da, %struct.Memory** %MEMORY

  ; Code: jmpq .L_490f65	 RIP: 4910dd	 Bytes: 5
  %loadMem_4910dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4910dd = call %struct.Memory* @routine_jmpq_.L_490f65(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4910dd, i64 -376, i64 5)
  store %struct.Memory* %call_4910dd, %struct.Memory** %MEMORY

  br label %block_.L_490f65

  ; Code: .L_4910e2:	 RIP: 4910e2	 Bytes: 0
block_.L_4910e2:

  ; Code: jmpq .L_49117f	 RIP: 4910e2	 Bytes: 5
  %loadMem_4910e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4910e2 = call %struct.Memory* @routine_jmpq_.L_49117f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4910e2, i64 157, i64 5)
  store %struct.Memory* %call_4910e2, %struct.Memory** %MEMORY

  br label %block_.L_49117f

  ; Code: .L_4910e7:	 RIP: 4910e7	 Bytes: 0
block_.L_4910e7:

  ; Code: movl -0x2c(%rbp), %eax	 RIP: 4910e7	 Bytes: 3
  %loadMem_4910e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4910e7 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4910e7)
  store %struct.Memory* %call_4910e7, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x24(%rbp)	 RIP: 4910ea	 Bytes: 3
  %loadMem_4910ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4910ea = call %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4910ea)
  store %struct.Memory* %call_4910ea, %struct.Memory** %MEMORY

  ; Code: .L_4910ed:	 RIP: 4910ed	 Bytes: 0
  br label %block_.L_4910ed
block_.L_4910ed:

  ; Code: movl -0x24(%rbp), %eax	 RIP: 4910ed	 Bytes: 3
  %loadMem_4910ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4910ed = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4910ed)
  store %struct.Memory* %call_4910ed, %struct.Memory** %MEMORY

  ; Code: cmpl -0x34(%rbp), %eax	 RIP: 4910f0	 Bytes: 3
  %loadMem_4910f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4910f0 = call %struct.Memory* @routine_cmpl_MINUS0x34__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4910f0)
  store %struct.Memory* %call_4910f0, %struct.Memory** %MEMORY

  ; Code: jge .L_49117a	 RIP: 4910f3	 Bytes: 6
  %loadMem_4910f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4910f3 = call %struct.Memory* @routine_jge_.L_49117a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4910f3, i8* %BRANCH_TAKEN, i64 135, i64 6, i64 6)
  store %struct.Memory* %call_4910f3, %struct.Memory** %MEMORY

  %loadBr_4910f3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4910f3 = icmp eq i8 %loadBr_4910f3, 1
  br i1 %cmpBr_4910f3, label %block_.L_49117a, label %block_4910f9

block_4910f9:
  ; Code: movl -0x28(%rbp), %eax	 RIP: 4910f9	 Bytes: 3
  %loadMem_4910f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4910f9 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4910f9)
  store %struct.Memory* %call_4910f9, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x20(%rbp)	 RIP: 4910fc	 Bytes: 3
  %loadMem_4910fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4910fc = call %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4910fc)
  store %struct.Memory* %call_4910fc, %struct.Memory** %MEMORY

  ; Code: .L_4910ff:	 RIP: 4910ff	 Bytes: 0
  br label %block_.L_4910ff
block_.L_4910ff:

  ; Code: movl -0x20(%rbp), %eax	 RIP: 4910ff	 Bytes: 3
  %loadMem_4910ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4910ff = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4910ff)
  store %struct.Memory* %call_4910ff, %struct.Memory** %MEMORY

  ; Code: cmpl -0x30(%rbp), %eax	 RIP: 491102	 Bytes: 3
  %loadMem_491102 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491102 = call %struct.Memory* @routine_cmpl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491102)
  store %struct.Memory* %call_491102, %struct.Memory** %MEMORY

  ; Code: jge .L_491167	 RIP: 491105	 Bytes: 6
  %loadMem_491105 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491105 = call %struct.Memory* @routine_jge_.L_491167(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491105, i8* %BRANCH_TAKEN, i64 98, i64 6, i64 6)
  store %struct.Memory* %call_491105, %struct.Memory** %MEMORY

  %loadBr_491105 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_491105 = icmp eq i8 %loadBr_491105, 1
  br i1 %cmpBr_491105, label %block_.L_491167, label %block_49110b

block_49110b:
  ; Code: movq $0x6d2090, %rax	 RIP: 49110b	 Bytes: 10
  %loadMem_49110b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49110b = call %struct.Memory* @routine_movq__0x6d2090___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49110b)
  store %struct.Memory* %call_49110b, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rcx	 RIP: 491115	 Bytes: 4
  %loadMem_491115 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491115 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491115)
  store %struct.Memory* %call_491115, %struct.Memory** %MEMORY

  ; Code: shlq $0x7, %rcx	 RIP: 491119	 Bytes: 4
  %loadMem_491119 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491119 = call %struct.Memory* @routine_shlq__0x7___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491119)
  store %struct.Memory* %call_491119, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 49111d	 Bytes: 3
  %loadMem_49111d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49111d = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49111d)
  store %struct.Memory* %call_49111d, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdx	 RIP: 491120	 Bytes: 3
  %loadMem_491120 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491120 = call %struct.Memory* @routine_addq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491120)
  store %struct.Memory* %call_491120, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rcx	 RIP: 491123	 Bytes: 4
  %loadMem_491123 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491123 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491123)
  store %struct.Memory* %call_491123, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rcx	 RIP: 491127	 Bytes: 4
  %loadMem_491127 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491127 = call %struct.Memory* @routine_shlq__0x4___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491127)
  store %struct.Memory* %call_491127, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdx	 RIP: 49112b	 Bytes: 3
  %loadMem_49112b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49112b = call %struct.Memory* @routine_addq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49112b)
  store %struct.Memory* %call_49112b, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rcx	 RIP: 49112e	 Bytes: 4
  %loadMem_49112e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49112e = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49112e)
  store %struct.Memory* %call_49112e, %struct.Memory** %MEMORY

  ; Code: movw $0x0, (%rdx,%rcx,4)	 RIP: 491132	 Bytes: 6
  %loadMem_491132 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491132 = call %struct.Memory* @routine_movw__0x0____rdx__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491132)
  store %struct.Memory* %call_491132, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rcx	 RIP: 491138	 Bytes: 4
  %loadMem_491138 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491138 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491138)
  store %struct.Memory* %call_491138, %struct.Memory** %MEMORY

  ; Code: shlq $0x7, %rcx	 RIP: 49113c	 Bytes: 4
  %loadMem_49113c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49113c = call %struct.Memory* @routine_shlq__0x7___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49113c)
  store %struct.Memory* %call_49113c, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 491140	 Bytes: 3
  %loadMem_491140 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491140 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491140)
  store %struct.Memory* %call_491140, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rcx	 RIP: 491143	 Bytes: 4
  %loadMem_491143 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491143 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491143)
  store %struct.Memory* %call_491143, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rcx	 RIP: 491147	 Bytes: 4
  %loadMem_491147 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491147 = call %struct.Memory* @routine_shlq__0x4___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491147)
  store %struct.Memory* %call_491147, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 49114b	 Bytes: 3
  %loadMem_49114b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49114b = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49114b)
  store %struct.Memory* %call_49114b, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rcx	 RIP: 49114e	 Bytes: 4
  %loadMem_49114e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49114e = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49114e)
  store %struct.Memory* %call_49114e, %struct.Memory** %MEMORY

  ; Code: movw $0x0, 0x2(%rax,%rcx,4)	 RIP: 491152	 Bytes: 7
  %loadMem_491152 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491152 = call %struct.Memory* @routine_movw__0x0__0x2__rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491152)
  store %struct.Memory* %call_491152, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %eax	 RIP: 491159	 Bytes: 3
  %loadMem_491159 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491159 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491159)
  store %struct.Memory* %call_491159, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 49115c	 Bytes: 3
  %loadMem_49115c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49115c = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49115c)
  store %struct.Memory* %call_49115c, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x20(%rbp)	 RIP: 49115f	 Bytes: 3
  %loadMem_49115f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49115f = call %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49115f)
  store %struct.Memory* %call_49115f, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4910ff	 RIP: 491162	 Bytes: 5
  %loadMem_491162 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491162 = call %struct.Memory* @routine_jmpq_.L_4910ff(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491162, i64 -99, i64 5)
  store %struct.Memory* %call_491162, %struct.Memory** %MEMORY

  br label %block_.L_4910ff

  ; Code: .L_491167:	 RIP: 491167	 Bytes: 0
block_.L_491167:

  ; Code: jmpq .L_49116c	 RIP: 491167	 Bytes: 5
  %loadMem_491167 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491167 = call %struct.Memory* @routine_jmpq_.L_49116c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491167, i64 5, i64 5)
  store %struct.Memory* %call_491167, %struct.Memory** %MEMORY

  br label %block_.L_49116c

  ; Code: .L_49116c:	 RIP: 49116c	 Bytes: 0
block_.L_49116c:

  ; Code: movl -0x24(%rbp), %eax	 RIP: 49116c	 Bytes: 3
  %loadMem_49116c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49116c = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49116c)
  store %struct.Memory* %call_49116c, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 49116f	 Bytes: 3
  %loadMem_49116f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49116f = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49116f)
  store %struct.Memory* %call_49116f, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x24(%rbp)	 RIP: 491172	 Bytes: 3
  %loadMem_491172 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491172 = call %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491172)
  store %struct.Memory* %call_491172, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4910ed	 RIP: 491175	 Bytes: 5
  %loadMem_491175 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491175 = call %struct.Memory* @routine_jmpq_.L_4910ed(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491175, i64 -136, i64 5)
  store %struct.Memory* %call_491175, %struct.Memory** %MEMORY

  br label %block_.L_4910ed

  ; Code: .L_49117a:	 RIP: 49117a	 Bytes: 0
block_.L_49117a:

  ; Code: jmpq .L_49117f	 RIP: 49117a	 Bytes: 5
  %loadMem_49117a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49117a = call %struct.Memory* @routine_jmpq_.L_49117f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49117a, i64 5, i64 5)
  store %struct.Memory* %call_49117a, %struct.Memory** %MEMORY

  br label %block_.L_49117f

  ; Code: .L_49117f:	 RIP: 49117f	 Bytes: 0
block_.L_49117f:

  ; Code: cmpl $0x1, -0x18(%rbp)	 RIP: 49117f	 Bytes: 4
  %loadMem_49117f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49117f = call %struct.Memory* @routine_cmpl__0x1__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49117f)
  store %struct.Memory* %call_49117f, %struct.Memory** %MEMORY

  ; Code: je .L_491193	 RIP: 491183	 Bytes: 6
  %loadMem_491183 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491183 = call %struct.Memory* @routine_je_.L_491193(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491183, i8* %BRANCH_TAKEN, i64 16, i64 6, i64 6)
  store %struct.Memory* %call_491183, %struct.Memory** %MEMORY

  %loadBr_491183 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_491183 = icmp eq i8 %loadBr_491183, 1
  br i1 %cmpBr_491183, label %block_.L_491193, label %block_491189

block_491189:
  ; Code: cmpl $0x2, -0x18(%rbp)	 RIP: 491189	 Bytes: 4
  %loadMem_491189 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491189 = call %struct.Memory* @routine_cmpl__0x2__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491189)
  store %struct.Memory* %call_491189, %struct.Memory** %MEMORY

  ; Code: jne .L_49132f	 RIP: 49118d	 Bytes: 6
  %loadMem_49118d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49118d = call %struct.Memory* @routine_jne_.L_49132f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49118d, i8* %BRANCH_TAKEN, i64 418, i64 6, i64 6)
  store %struct.Memory* %call_49118d, %struct.Memory** %MEMORY

  %loadBr_49118d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_49118d = icmp eq i8 %loadBr_49118d, 1
  br i1 %cmpBr_49118d, label %block_.L_49132f, label %block_.L_491193

  ; Code: .L_491193:	 RIP: 491193	 Bytes: 0
block_.L_491193:

  ; Code: movl -0x2c(%rbp), %eax	 RIP: 491193	 Bytes: 3
  %loadMem_491193 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491193 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491193)
  store %struct.Memory* %call_491193, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x24(%rbp)	 RIP: 491196	 Bytes: 3
  %loadMem_491196 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491196 = call %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491196)
  store %struct.Memory* %call_491196, %struct.Memory** %MEMORY

  ; Code: .L_491199:	 RIP: 491199	 Bytes: 0
  br label %block_.L_491199
block_.L_491199:

  ; Code: movl -0x24(%rbp), %eax	 RIP: 491199	 Bytes: 3
  %loadMem_491199 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491199 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491199)
  store %struct.Memory* %call_491199, %struct.Memory** %MEMORY

  ; Code: cmpl -0x34(%rbp), %eax	 RIP: 49119c	 Bytes: 3
  %loadMem_49119c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49119c = call %struct.Memory* @routine_cmpl_MINUS0x34__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49119c)
  store %struct.Memory* %call_49119c, %struct.Memory** %MEMORY

  ; Code: jge .L_49132a	 RIP: 49119f	 Bytes: 6
  %loadMem_49119f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49119f = call %struct.Memory* @routine_jge_.L_49132a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49119f, i8* %BRANCH_TAKEN, i64 395, i64 6, i64 6)
  store %struct.Memory* %call_49119f, %struct.Memory** %MEMORY

  %loadBr_49119f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_49119f = icmp eq i8 %loadBr_49119f, 1
  br i1 %cmpBr_49119f, label %block_.L_49132a, label %block_4911a5

block_4911a5:
  ; Code: movl -0x28(%rbp), %eax	 RIP: 4911a5	 Bytes: 3
  %loadMem_4911a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4911a5 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4911a5)
  store %struct.Memory* %call_4911a5, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x20(%rbp)	 RIP: 4911a8	 Bytes: 3
  %loadMem_4911a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4911a8 = call %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4911a8)
  store %struct.Memory* %call_4911a8, %struct.Memory** %MEMORY

  ; Code: .L_4911ab:	 RIP: 4911ab	 Bytes: 0
  br label %block_.L_4911ab
block_.L_4911ab:

  ; Code: movl -0x20(%rbp), %eax	 RIP: 4911ab	 Bytes: 3
  %loadMem_4911ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4911ab = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4911ab)
  store %struct.Memory* %call_4911ab, %struct.Memory** %MEMORY

  ; Code: cmpl -0x30(%rbp), %eax	 RIP: 4911ae	 Bytes: 3
  %loadMem_4911ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4911ae = call %struct.Memory* @routine_cmpl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4911ae)
  store %struct.Memory* %call_4911ae, %struct.Memory** %MEMORY

  ; Code: jge .L_491317	 RIP: 4911b1	 Bytes: 6
  %loadMem_4911b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4911b1 = call %struct.Memory* @routine_jge_.L_491317(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4911b1, i8* %BRANCH_TAKEN, i64 358, i64 6, i64 6)
  store %struct.Memory* %call_4911b1, %struct.Memory** %MEMORY

  %loadBr_4911b1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4911b1 = icmp eq i8 %loadBr_4911b1, 1
  br i1 %cmpBr_4911b1, label %block_.L_491317, label %block_4911b7

block_4911b7:
  ; Code: movq $0x6d32e0, %rax	 RIP: 4911b7	 Bytes: 10
  %loadMem_4911b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4911b7 = call %struct.Memory* @routine_movq__0x6d32e0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4911b7)
  store %struct.Memory* %call_4911b7, %struct.Memory** %MEMORY

  ; Code: movq $0x6d2090, %rcx	 RIP: 4911c1	 Bytes: 10
  %loadMem_4911c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4911c1 = call %struct.Memory* @routine_movq__0x6d2090___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4911c1)
  store %struct.Memory* %call_4911c1, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rdx	 RIP: 4911cb	 Bytes: 4
  %loadMem_4911cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4911cb = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4911cb)
  store %struct.Memory* %call_4911cb, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rsi	 RIP: 4911cf	 Bytes: 4
  %loadMem_4911cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4911cf = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4911cf)
  store %struct.Memory* %call_4911cf, %struct.Memory** %MEMORY

  ; Code: movq (%rdx,%rsi,8), %rdx	 RIP: 4911d3	 Bytes: 4
  %loadMem_4911d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4911d3 = call %struct.Memory* @routine_movq___rdx__rsi_8____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4911d3)
  store %struct.Memory* %call_4911d3, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rsi	 RIP: 4911d7	 Bytes: 4
  %loadMem_4911d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4911d7 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4911d7)
  store %struct.Memory* %call_4911d7, %struct.Memory** %MEMORY

  ; Code: movq (%rdx,%rsi,8), %rdx	 RIP: 4911db	 Bytes: 4
  %loadMem_4911db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4911db = call %struct.Memory* @routine_movq___rdx__rsi_8____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4911db)
  store %struct.Memory* %call_4911db, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rdx), %rdx	 RIP: 4911df	 Bytes: 4
  %loadMem_4911df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4911df = call %struct.Memory* @routine_movq_0x8__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4911df)
  store %struct.Memory* %call_4911df, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rsi	 RIP: 4911e3	 Bytes: 4
  %loadMem_4911e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4911e3 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4911e3)
  store %struct.Memory* %call_4911e3, %struct.Memory** %MEMORY

  ; Code: movq (%rdx,%rsi,8), %rdx	 RIP: 4911e7	 Bytes: 4
  %loadMem_4911e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4911e7 = call %struct.Memory* @routine_movq___rdx__rsi_8____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4911e7)
  store %struct.Memory* %call_4911e7, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rsi	 RIP: 4911eb	 Bytes: 4
  %loadMem_4911eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4911eb = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4911eb)
  store %struct.Memory* %call_4911eb, %struct.Memory** %MEMORY

  ; Code: movq (%rdx,%rsi,8), %rdx	 RIP: 4911ef	 Bytes: 4
  %loadMem_4911ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4911ef = call %struct.Memory* @routine_movq___rdx__rsi_8____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4911ef)
  store %struct.Memory* %call_4911ef, %struct.Memory** %MEMORY

  ; Code: movw (%rdx), %di	 RIP: 4911f3	 Bytes: 3
  %loadMem_4911f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4911f3 = call %struct.Memory* @routine_movw___rdx____di(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4911f3)
  store %struct.Memory* %call_4911f3, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rdx	 RIP: 4911f6	 Bytes: 4
  %loadMem_4911f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4911f6 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4911f6)
  store %struct.Memory* %call_4911f6, %struct.Memory** %MEMORY

  ; Code: shlq $0x7, %rdx	 RIP: 4911fa	 Bytes: 4
  %loadMem_4911fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4911fa = call %struct.Memory* @routine_shlq__0x7___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4911fa)
  store %struct.Memory* %call_4911fa, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rsi	 RIP: 4911fe	 Bytes: 3
  %loadMem_4911fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4911fe = call %struct.Memory* @routine_movq__rcx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4911fe)
  store %struct.Memory* %call_4911fe, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rsi	 RIP: 491201	 Bytes: 3
  %loadMem_491201 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491201 = call %struct.Memory* @routine_addq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491201)
  store %struct.Memory* %call_491201, %struct.Memory** %MEMORY

  ; Code: addq $0x40, %rsi	 RIP: 491204	 Bytes: 4
  %loadMem_491204 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491204 = call %struct.Memory* @routine_addq__0x40___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491204)
  store %struct.Memory* %call_491204, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 491208	 Bytes: 4
  %loadMem_491208 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491208 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491208)
  store %struct.Memory* %call_491208, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rdx	 RIP: 49120c	 Bytes: 4
  %loadMem_49120c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49120c = call %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49120c)
  store %struct.Memory* %call_49120c, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rsi	 RIP: 491210	 Bytes: 3
  %loadMem_491210 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491210 = call %struct.Memory* @routine_addq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491210)
  store %struct.Memory* %call_491210, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 491213	 Bytes: 4
  %loadMem_491213 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491213 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491213)
  store %struct.Memory* %call_491213, %struct.Memory** %MEMORY

  ; Code: movw %di, (%rsi,%rdx,4)	 RIP: 491217	 Bytes: 4
  %loadMem_491217 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491217 = call %struct.Memory* @routine_movw__di____rsi__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491217)
  store %struct.Memory* %call_491217, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rdx	 RIP: 49121b	 Bytes: 4
  %loadMem_49121b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49121b = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49121b)
  store %struct.Memory* %call_49121b, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rsi	 RIP: 49121f	 Bytes: 4
  %loadMem_49121f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49121f = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49121f)
  store %struct.Memory* %call_49121f, %struct.Memory** %MEMORY

  ; Code: movq (%rdx,%rsi,8), %rdx	 RIP: 491223	 Bytes: 4
  %loadMem_491223 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491223 = call %struct.Memory* @routine_movq___rdx__rsi_8____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491223)
  store %struct.Memory* %call_491223, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rsi	 RIP: 491227	 Bytes: 4
  %loadMem_491227 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491227 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491227)
  store %struct.Memory* %call_491227, %struct.Memory** %MEMORY

  ; Code: movq (%rdx,%rsi,8), %rdx	 RIP: 49122b	 Bytes: 4
  %loadMem_49122b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49122b = call %struct.Memory* @routine_movq___rdx__rsi_8____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49122b)
  store %struct.Memory* %call_49122b, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rdx), %rdx	 RIP: 49122f	 Bytes: 4
  %loadMem_49122f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49122f = call %struct.Memory* @routine_movq_0x8__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49122f)
  store %struct.Memory* %call_49122f, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rsi	 RIP: 491233	 Bytes: 4
  %loadMem_491233 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491233 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491233)
  store %struct.Memory* %call_491233, %struct.Memory** %MEMORY

  ; Code: movq (%rdx,%rsi,8), %rdx	 RIP: 491237	 Bytes: 4
  %loadMem_491237 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491237 = call %struct.Memory* @routine_movq___rdx__rsi_8____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491237)
  store %struct.Memory* %call_491237, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rsi	 RIP: 49123b	 Bytes: 4
  %loadMem_49123b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49123b = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49123b)
  store %struct.Memory* %call_49123b, %struct.Memory** %MEMORY

  ; Code: movq (%rdx,%rsi,8), %rdx	 RIP: 49123f	 Bytes: 4
  %loadMem_49123f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49123f = call %struct.Memory* @routine_movq___rdx__rsi_8____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49123f)
  store %struct.Memory* %call_49123f, %struct.Memory** %MEMORY

  ; Code: movw 0x2(%rdx), %di	 RIP: 491243	 Bytes: 4
  %loadMem_491243 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491243 = call %struct.Memory* @routine_movw_0x2__rdx____di(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491243)
  store %struct.Memory* %call_491243, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rdx	 RIP: 491247	 Bytes: 4
  %loadMem_491247 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491247 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491247)
  store %struct.Memory* %call_491247, %struct.Memory** %MEMORY

  ; Code: shlq $0x7, %rdx	 RIP: 49124b	 Bytes: 4
  %loadMem_49124b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49124b = call %struct.Memory* @routine_shlq__0x7___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49124b)
  store %struct.Memory* %call_49124b, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 49124f	 Bytes: 3
  %loadMem_49124f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49124f = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49124f)
  store %struct.Memory* %call_49124f, %struct.Memory** %MEMORY

  ; Code: addq $0x40, %rcx	 RIP: 491252	 Bytes: 4
  %loadMem_491252 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491252 = call %struct.Memory* @routine_addq__0x40___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491252)
  store %struct.Memory* %call_491252, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 491256	 Bytes: 4
  %loadMem_491256 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491256 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491256)
  store %struct.Memory* %call_491256, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rdx	 RIP: 49125a	 Bytes: 4
  %loadMem_49125a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49125a = call %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49125a)
  store %struct.Memory* %call_49125a, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 49125e	 Bytes: 3
  %loadMem_49125e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49125e = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49125e)
  store %struct.Memory* %call_49125e, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 491261	 Bytes: 4
  %loadMem_491261 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491261 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491261)
  store %struct.Memory* %call_491261, %struct.Memory** %MEMORY

  ; Code: movw %di, 0x2(%rcx,%rdx,4)	 RIP: 491265	 Bytes: 5
  %loadMem_491265 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491265 = call %struct.Memory* @routine_movw__di__0x2__rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491265)
  store %struct.Memory* %call_491265, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rcx	 RIP: 49126a	 Bytes: 4
  %loadMem_49126a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49126a = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49126a)
  store %struct.Memory* %call_49126a, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 49126e	 Bytes: 4
  %loadMem_49126e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49126e = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49126e)
  store %struct.Memory* %call_49126e, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 491272	 Bytes: 4
  %loadMem_491272 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491272 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491272)
  store %struct.Memory* %call_491272, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 491276	 Bytes: 4
  %loadMem_491276 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491276 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491276)
  store %struct.Memory* %call_491276, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 49127a	 Bytes: 4
  %loadMem_49127a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49127a = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49127a)
  store %struct.Memory* %call_49127a, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rcx), %rcx	 RIP: 49127e	 Bytes: 4
  %loadMem_49127e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49127e = call %struct.Memory* @routine_movq_0x8__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49127e)
  store %struct.Memory* %call_49127e, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 491282	 Bytes: 4
  %loadMem_491282 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491282 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491282)
  store %struct.Memory* %call_491282, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 491286	 Bytes: 4
  %loadMem_491286 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491286 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491286)
  store %struct.Memory* %call_491286, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rdx	 RIP: 49128a	 Bytes: 4
  %loadMem_49128a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49128a = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49128a)
  store %struct.Memory* %call_49128a, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 49128e	 Bytes: 4
  %loadMem_49128e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49128e = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49128e)
  store %struct.Memory* %call_49128e, %struct.Memory** %MEMORY

  ; Code: movw (%rcx), %di	 RIP: 491292	 Bytes: 3
  %loadMem_491292 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491292 = call %struct.Memory* @routine_movw___rcx____di(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491292)
  store %struct.Memory* %call_491292, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rcx	 RIP: 491295	 Bytes: 4
  %loadMem_491295 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491295 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491295)
  store %struct.Memory* %call_491295, %struct.Memory** %MEMORY

  ; Code: shlq $0x7, %rcx	 RIP: 491299	 Bytes: 4
  %loadMem_491299 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491299 = call %struct.Memory* @routine_shlq__0x7___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491299)
  store %struct.Memory* %call_491299, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 49129d	 Bytes: 3
  %loadMem_49129d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49129d = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49129d)
  store %struct.Memory* %call_49129d, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdx	 RIP: 4912a0	 Bytes: 3
  %loadMem_4912a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4912a0 = call %struct.Memory* @routine_addq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4912a0)
  store %struct.Memory* %call_4912a0, %struct.Memory** %MEMORY

  ; Code: addq $0x40, %rdx	 RIP: 4912a3	 Bytes: 4
  %loadMem_4912a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4912a3 = call %struct.Memory* @routine_addq__0x40___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4912a3)
  store %struct.Memory* %call_4912a3, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rcx	 RIP: 4912a7	 Bytes: 4
  %loadMem_4912a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4912a7 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4912a7)
  store %struct.Memory* %call_4912a7, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rcx	 RIP: 4912ab	 Bytes: 4
  %loadMem_4912ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4912ab = call %struct.Memory* @routine_shlq__0x4___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4912ab)
  store %struct.Memory* %call_4912ab, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdx	 RIP: 4912af	 Bytes: 3
  %loadMem_4912af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4912af = call %struct.Memory* @routine_addq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4912af)
  store %struct.Memory* %call_4912af, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rcx	 RIP: 4912b2	 Bytes: 4
  %loadMem_4912b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4912b2 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4912b2)
  store %struct.Memory* %call_4912b2, %struct.Memory** %MEMORY

  ; Code: movw %di, (%rdx,%rcx,4)	 RIP: 4912b6	 Bytes: 4
  %loadMem_4912b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4912b6 = call %struct.Memory* @routine_movw__di____rdx__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4912b6)
  store %struct.Memory* %call_4912b6, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rcx	 RIP: 4912ba	 Bytes: 4
  %loadMem_4912ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4912ba = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4912ba)
  store %struct.Memory* %call_4912ba, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 4912be	 Bytes: 4
  %loadMem_4912be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4912be = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4912be)
  store %struct.Memory* %call_4912be, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 4912c2	 Bytes: 4
  %loadMem_4912c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4912c2 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4912c2)
  store %struct.Memory* %call_4912c2, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 4912c6	 Bytes: 4
  %loadMem_4912c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4912c6 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4912c6)
  store %struct.Memory* %call_4912c6, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 4912ca	 Bytes: 4
  %loadMem_4912ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4912ca = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4912ca)
  store %struct.Memory* %call_4912ca, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rcx), %rcx	 RIP: 4912ce	 Bytes: 4
  %loadMem_4912ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4912ce = call %struct.Memory* @routine_movq_0x8__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4912ce)
  store %struct.Memory* %call_4912ce, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 4912d2	 Bytes: 4
  %loadMem_4912d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4912d2 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4912d2)
  store %struct.Memory* %call_4912d2, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 4912d6	 Bytes: 4
  %loadMem_4912d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4912d6 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4912d6)
  store %struct.Memory* %call_4912d6, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rdx	 RIP: 4912da	 Bytes: 4
  %loadMem_4912da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4912da = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4912da)
  store %struct.Memory* %call_4912da, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 4912de	 Bytes: 4
  %loadMem_4912de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4912de = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4912de)
  store %struct.Memory* %call_4912de, %struct.Memory** %MEMORY

  ; Code: movw 0x2(%rcx), %di	 RIP: 4912e2	 Bytes: 4
  %loadMem_4912e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4912e2 = call %struct.Memory* @routine_movw_0x2__rcx____di(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4912e2)
  store %struct.Memory* %call_4912e2, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rcx	 RIP: 4912e6	 Bytes: 4
  %loadMem_4912e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4912e6 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4912e6)
  store %struct.Memory* %call_4912e6, %struct.Memory** %MEMORY

  ; Code: shlq $0x7, %rcx	 RIP: 4912ea	 Bytes: 4
  %loadMem_4912ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4912ea = call %struct.Memory* @routine_shlq__0x7___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4912ea)
  store %struct.Memory* %call_4912ea, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4912ee	 Bytes: 3
  %loadMem_4912ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4912ee = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4912ee)
  store %struct.Memory* %call_4912ee, %struct.Memory** %MEMORY

  ; Code: addq $0x40, %rax	 RIP: 4912f1	 Bytes: 4
  %loadMem_4912f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4912f1 = call %struct.Memory* @routine_addq__0x40___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4912f1)
  store %struct.Memory* %call_4912f1, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rcx	 RIP: 4912f5	 Bytes: 4
  %loadMem_4912f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4912f5 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4912f5)
  store %struct.Memory* %call_4912f5, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rcx	 RIP: 4912f9	 Bytes: 4
  %loadMem_4912f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4912f9 = call %struct.Memory* @routine_shlq__0x4___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4912f9)
  store %struct.Memory* %call_4912f9, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4912fd	 Bytes: 3
  %loadMem_4912fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4912fd = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4912fd)
  store %struct.Memory* %call_4912fd, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rcx	 RIP: 491300	 Bytes: 4
  %loadMem_491300 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491300 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491300)
  store %struct.Memory* %call_491300, %struct.Memory** %MEMORY

  ; Code: movw %di, 0x2(%rax,%rcx,4)	 RIP: 491304	 Bytes: 5
  %loadMem_491304 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491304 = call %struct.Memory* @routine_movw__di__0x2__rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491304)
  store %struct.Memory* %call_491304, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %eax	 RIP: 491309	 Bytes: 3
  %loadMem_491309 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491309 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491309)
  store %struct.Memory* %call_491309, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 49130c	 Bytes: 3
  %loadMem_49130c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49130c = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49130c)
  store %struct.Memory* %call_49130c, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x20(%rbp)	 RIP: 49130f	 Bytes: 3
  %loadMem_49130f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49130f = call %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49130f)
  store %struct.Memory* %call_49130f, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4911ab	 RIP: 491312	 Bytes: 5
  %loadMem_491312 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491312 = call %struct.Memory* @routine_jmpq_.L_4911ab(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491312, i64 -359, i64 5)
  store %struct.Memory* %call_491312, %struct.Memory** %MEMORY

  br label %block_.L_4911ab

  ; Code: .L_491317:	 RIP: 491317	 Bytes: 0
block_.L_491317:

  ; Code: jmpq .L_49131c	 RIP: 491317	 Bytes: 5
  %loadMem_491317 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491317 = call %struct.Memory* @routine_jmpq_.L_49131c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491317, i64 5, i64 5)
  store %struct.Memory* %call_491317, %struct.Memory** %MEMORY

  br label %block_.L_49131c

  ; Code: .L_49131c:	 RIP: 49131c	 Bytes: 0
block_.L_49131c:

  ; Code: movl -0x24(%rbp), %eax	 RIP: 49131c	 Bytes: 3
  %loadMem_49131c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49131c = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49131c)
  store %struct.Memory* %call_49131c, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 49131f	 Bytes: 3
  %loadMem_49131f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49131f = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49131f)
  store %struct.Memory* %call_49131f, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x24(%rbp)	 RIP: 491322	 Bytes: 3
  %loadMem_491322 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491322 = call %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491322)
  store %struct.Memory* %call_491322, %struct.Memory** %MEMORY

  ; Code: jmpq .L_491199	 RIP: 491325	 Bytes: 5
  %loadMem_491325 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491325 = call %struct.Memory* @routine_jmpq_.L_491199(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491325, i64 -396, i64 5)
  store %struct.Memory* %call_491325, %struct.Memory** %MEMORY

  br label %block_.L_491199

  ; Code: .L_49132a:	 RIP: 49132a	 Bytes: 0
block_.L_49132a:

  ; Code: jmpq .L_4913cf	 RIP: 49132a	 Bytes: 5
  %loadMem_49132a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49132a = call %struct.Memory* @routine_jmpq_.L_4913cf(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49132a, i64 165, i64 5)
  store %struct.Memory* %call_49132a, %struct.Memory** %MEMORY

  br label %block_.L_4913cf

  ; Code: .L_49132f:	 RIP: 49132f	 Bytes: 0
block_.L_49132f:

  ; Code: movl -0x2c(%rbp), %eax	 RIP: 49132f	 Bytes: 3
  %loadMem_49132f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49132f = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49132f)
  store %struct.Memory* %call_49132f, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x24(%rbp)	 RIP: 491332	 Bytes: 3
  %loadMem_491332 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491332 = call %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491332)
  store %struct.Memory* %call_491332, %struct.Memory** %MEMORY

  ; Code: .L_491335:	 RIP: 491335	 Bytes: 0
  br label %block_.L_491335
block_.L_491335:

  ; Code: movl -0x24(%rbp), %eax	 RIP: 491335	 Bytes: 3
  %loadMem_491335 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491335 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491335)
  store %struct.Memory* %call_491335, %struct.Memory** %MEMORY

  ; Code: cmpl -0x34(%rbp), %eax	 RIP: 491338	 Bytes: 3
  %loadMem_491338 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491338 = call %struct.Memory* @routine_cmpl_MINUS0x34__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491338)
  store %struct.Memory* %call_491338, %struct.Memory** %MEMORY

  ; Code: jge .L_4913ca	 RIP: 49133b	 Bytes: 6
  %loadMem_49133b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49133b = call %struct.Memory* @routine_jge_.L_4913ca(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49133b, i8* %BRANCH_TAKEN, i64 143, i64 6, i64 6)
  store %struct.Memory* %call_49133b, %struct.Memory** %MEMORY

  %loadBr_49133b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_49133b = icmp eq i8 %loadBr_49133b, 1
  br i1 %cmpBr_49133b, label %block_.L_4913ca, label %block_491341

block_491341:
  ; Code: movl -0x28(%rbp), %eax	 RIP: 491341	 Bytes: 3
  %loadMem_491341 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491341 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491341)
  store %struct.Memory* %call_491341, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x20(%rbp)	 RIP: 491344	 Bytes: 3
  %loadMem_491344 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491344 = call %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491344)
  store %struct.Memory* %call_491344, %struct.Memory** %MEMORY

  ; Code: .L_491347:	 RIP: 491347	 Bytes: 0
  br label %block_.L_491347
block_.L_491347:

  ; Code: movl -0x20(%rbp), %eax	 RIP: 491347	 Bytes: 3
  %loadMem_491347 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491347 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491347)
  store %struct.Memory* %call_491347, %struct.Memory** %MEMORY

  ; Code: cmpl -0x30(%rbp), %eax	 RIP: 49134a	 Bytes: 3
  %loadMem_49134a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49134a = call %struct.Memory* @routine_cmpl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49134a)
  store %struct.Memory* %call_49134a, %struct.Memory** %MEMORY

  ; Code: jge .L_4913b7	 RIP: 49134d	 Bytes: 6
  %loadMem_49134d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49134d = call %struct.Memory* @routine_jge_.L_4913b7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49134d, i8* %BRANCH_TAKEN, i64 106, i64 6, i64 6)
  store %struct.Memory* %call_49134d, %struct.Memory** %MEMORY

  %loadBr_49134d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_49134d = icmp eq i8 %loadBr_49134d, 1
  br i1 %cmpBr_49134d, label %block_.L_4913b7, label %block_491353

block_491353:
  ; Code: movq $0x6d2090, %rax	 RIP: 491353	 Bytes: 10
  %loadMem_491353 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491353 = call %struct.Memory* @routine_movq__0x6d2090___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491353)
  store %struct.Memory* %call_491353, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rcx	 RIP: 49135d	 Bytes: 4
  %loadMem_49135d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49135d = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49135d)
  store %struct.Memory* %call_49135d, %struct.Memory** %MEMORY

  ; Code: shlq $0x7, %rcx	 RIP: 491361	 Bytes: 4
  %loadMem_491361 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491361 = call %struct.Memory* @routine_shlq__0x7___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491361)
  store %struct.Memory* %call_491361, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 491365	 Bytes: 3
  %loadMem_491365 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491365 = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491365)
  store %struct.Memory* %call_491365, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdx	 RIP: 491368	 Bytes: 3
  %loadMem_491368 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491368 = call %struct.Memory* @routine_addq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491368)
  store %struct.Memory* %call_491368, %struct.Memory** %MEMORY

  ; Code: addq $0x40, %rdx	 RIP: 49136b	 Bytes: 4
  %loadMem_49136b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49136b = call %struct.Memory* @routine_addq__0x40___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49136b)
  store %struct.Memory* %call_49136b, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rcx	 RIP: 49136f	 Bytes: 4
  %loadMem_49136f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49136f = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49136f)
  store %struct.Memory* %call_49136f, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rcx	 RIP: 491373	 Bytes: 4
  %loadMem_491373 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491373 = call %struct.Memory* @routine_shlq__0x4___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491373)
  store %struct.Memory* %call_491373, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdx	 RIP: 491377	 Bytes: 3
  %loadMem_491377 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491377 = call %struct.Memory* @routine_addq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491377)
  store %struct.Memory* %call_491377, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rcx	 RIP: 49137a	 Bytes: 4
  %loadMem_49137a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49137a = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49137a)
  store %struct.Memory* %call_49137a, %struct.Memory** %MEMORY

  ; Code: movw $0x0, (%rdx,%rcx,4)	 RIP: 49137e	 Bytes: 6
  %loadMem_49137e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49137e = call %struct.Memory* @routine_movw__0x0____rdx__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49137e)
  store %struct.Memory* %call_49137e, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rcx	 RIP: 491384	 Bytes: 4
  %loadMem_491384 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491384 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491384)
  store %struct.Memory* %call_491384, %struct.Memory** %MEMORY

  ; Code: shlq $0x7, %rcx	 RIP: 491388	 Bytes: 4
  %loadMem_491388 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491388 = call %struct.Memory* @routine_shlq__0x7___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491388)
  store %struct.Memory* %call_491388, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 49138c	 Bytes: 3
  %loadMem_49138c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49138c = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49138c)
  store %struct.Memory* %call_49138c, %struct.Memory** %MEMORY

  ; Code: addq $0x40, %rax	 RIP: 49138f	 Bytes: 4
  %loadMem_49138f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49138f = call %struct.Memory* @routine_addq__0x40___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49138f)
  store %struct.Memory* %call_49138f, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rcx	 RIP: 491393	 Bytes: 4
  %loadMem_491393 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491393 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491393)
  store %struct.Memory* %call_491393, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rcx	 RIP: 491397	 Bytes: 4
  %loadMem_491397 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_491397 = call %struct.Memory* @routine_shlq__0x4___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_491397)
  store %struct.Memory* %call_491397, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 49139b	 Bytes: 3
  %loadMem_49139b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49139b = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49139b)
  store %struct.Memory* %call_49139b, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rcx	 RIP: 49139e	 Bytes: 4
  %loadMem_49139e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_49139e = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_49139e)
  store %struct.Memory* %call_49139e, %struct.Memory** %MEMORY

  ; Code: movw $0x0, 0x2(%rax,%rcx,4)	 RIP: 4913a2	 Bytes: 7
  %loadMem_4913a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4913a2 = call %struct.Memory* @routine_movw__0x0__0x2__rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4913a2)
  store %struct.Memory* %call_4913a2, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %eax	 RIP: 4913a9	 Bytes: 3
  %loadMem_4913a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4913a9 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4913a9)
  store %struct.Memory* %call_4913a9, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4913ac	 Bytes: 3
  %loadMem_4913ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4913ac = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4913ac)
  store %struct.Memory* %call_4913ac, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x20(%rbp)	 RIP: 4913af	 Bytes: 3
  %loadMem_4913af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4913af = call %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4913af)
  store %struct.Memory* %call_4913af, %struct.Memory** %MEMORY

  ; Code: jmpq .L_491347	 RIP: 4913b2	 Bytes: 5
  %loadMem_4913b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4913b2 = call %struct.Memory* @routine_jmpq_.L_491347(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4913b2, i64 -107, i64 5)
  store %struct.Memory* %call_4913b2, %struct.Memory** %MEMORY

  br label %block_.L_491347

  ; Code: .L_4913b7:	 RIP: 4913b7	 Bytes: 0
block_.L_4913b7:

  ; Code: jmpq .L_4913bc	 RIP: 4913b7	 Bytes: 5
  %loadMem_4913b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4913b7 = call %struct.Memory* @routine_jmpq_.L_4913bc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4913b7, i64 5, i64 5)
  store %struct.Memory* %call_4913b7, %struct.Memory** %MEMORY

  br label %block_.L_4913bc

  ; Code: .L_4913bc:	 RIP: 4913bc	 Bytes: 0
block_.L_4913bc:

  ; Code: movl -0x24(%rbp), %eax	 RIP: 4913bc	 Bytes: 3
  %loadMem_4913bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4913bc = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4913bc)
  store %struct.Memory* %call_4913bc, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4913bf	 Bytes: 3
  %loadMem_4913bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4913bf = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4913bf)
  store %struct.Memory* %call_4913bf, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x24(%rbp)	 RIP: 4913c2	 Bytes: 3
  %loadMem_4913c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4913c2 = call %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4913c2)
  store %struct.Memory* %call_4913c2, %struct.Memory** %MEMORY

  ; Code: jmpq .L_491335	 RIP: 4913c5	 Bytes: 5
  %loadMem_4913c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4913c5 = call %struct.Memory* @routine_jmpq_.L_491335(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4913c5, i64 -144, i64 5)
  store %struct.Memory* %call_4913c5, %struct.Memory** %MEMORY

  br label %block_.L_491335

  ; Code: .L_4913ca:	 RIP: 4913ca	 Bytes: 0
block_.L_4913ca:

  ; Code: jmpq .L_4913cf	 RIP: 4913ca	 Bytes: 5
  %loadMem_4913ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4913ca = call %struct.Memory* @routine_jmpq_.L_4913cf(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4913ca, i64 5, i64 5)
  store %struct.Memory* %call_4913ca, %struct.Memory** %MEMORY

  br label %block_.L_4913cf

  ; Code: .L_4913cf:	 RIP: 4913cf	 Bytes: 0
block_.L_4913cf:

  ; Code: jmpq .L_4913d4	 RIP: 4913cf	 Bytes: 5
  %loadMem_4913cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4913cf = call %struct.Memory* @routine_jmpq_.L_4913d4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4913cf, i64 5, i64 5)
  store %struct.Memory* %call_4913cf, %struct.Memory** %MEMORY

  br label %block_.L_4913d4

  ; Code: .L_4913d4:	 RIP: 4913d4	 Bytes: 0
block_.L_4913d4:

  ; Code: popq %rbp	 RIP: 4913d4	 Bytes: 1
  %loadMem_4913d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4913d4 = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4913d4)
  store %struct.Memory* %call_4913d4, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 4913d5	 Bytes: 1
  %loadMem_4913d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4913d5 = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4913d5)
  store %struct.Memory* %call_4913d5, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_4913d5
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl_0x10__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0x2___r10d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 21
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R10D = bitcast %union.anon* %8 to i32*
  %9 = bitcast i32* %R10D to i64*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %9, i64 2)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__edi__MINUS0x4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4
  %14 = load i32, i32* %EDI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__esi__MINUS0x8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 8
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__edx__MINUS0xc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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


define %struct.Memory* @routine_movl__r8d__MINUS0x14__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 20
  %14 = load i32, i32* %R8D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__r9d__MINUS0x18__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 24
  %14 = load i32, i32* %R9D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i64*
  %6 = load i64, i64* %5
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
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


define %struct.Memory* @routine_movq_0x118f8__r11____r11(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 71928
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R11, i64 %10)
  ret %struct.Memory* %13
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = inttoptr i64 %2 to i64*
  store i64 %3, i64* %5
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__r11__MINUS0x40__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 23
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R11 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 64
  %14 = load i64, i64* %R11
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq_0x118f0__r11____r11(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 71920
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R11, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movq__r11__MINUS0x48__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 23
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R11 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 72
  %14 = load i64, i64* %R11
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
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

define %struct.Memory* @routine_idivl__r10d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 21
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R10D = bitcast %union.anon* %8 to i32*
  %9 = load i32, i32* %R10D
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


define %struct.Memory* @routine_movl__edx__MINUS0x28__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 40
  %14 = load i32, i32* %EDX
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

define %struct.Memory* @routine_addl__0x2___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 2)
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

define %struct.Memory* @routine_jge_.L_490dc9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_cmpl_MINUS0x34__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 52
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_490dc4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl_MINUS0x30__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 48
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_490db1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq__0x6d2090___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x6d2090_type* @G__0x6d2090 to i64))
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = sext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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

define %struct.Memory* @routine_shlq__0x7___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 7)
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


define %struct.Memory* @routine_movslq_MINUS0x20__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWItE2InItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i16
  %6 = inttoptr i64 %2 to i16*
  store i16 %5, i16* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movw__0x0____rdx__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = mul i64 %13, 4
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWItE2InItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %15, i64 0)
  ret %struct.Memory* %18
}


















define %struct.Memory* @routine_movw__0x0__0x2__rdx__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = mul i64 %13, 4
  %15 = add i64 %12, 2
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 7
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWItE2InItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %16, i64 0)
  ret %struct.Memory* %19
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

define %struct.Memory* @routine_addq__0x40___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 64)
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


define %struct.Memory* @routine_addq__0x40___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 64)
  ret %struct.Memory* %12
}










define %struct.Memory* @routine_movw__0x0__0x2__rax__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %12, 2
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 7
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWItE2InItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %16, i64 0)
  ret %struct.Memory* %19
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



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64) #2 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2, i64* %4, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jmpq_.L_490cfa(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_490db6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_490ce8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_4913d4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_cmpl__0x0__MINUS0x1c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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

define %struct.Memory* @routine_jne_.L_490f4b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_jge_.L_490f46(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_jge_.L_490f33(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x6d32e0___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x6d32e0_type* @G__0x6d32e0 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__0x6d2090___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G__0x6d2090_type* @G__0x6d2090 to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_movslq_MINUS0x20__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
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


define %struct.Memory* @routine_movslq_MINUS0x24__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
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




define %struct.Memory* @routine_movq_0x20__rdx____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 32
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %10)
  ret %struct.Memory* %13
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWItE2MnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i16* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i16*
  %6 = load i16, i16* %5
  store i16 %6, i16* %2, align 2
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movw___rdx____di(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %DI = bitcast %union.anon* %8 to i16*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDX
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWItE2MnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i16* %DI, i64 %12)
  ret %struct.Memory* %15
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


define %struct.Memory* @routine_shlq__0x7___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 7)
  ret %struct.Memory* %12
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWItE2RnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i16
  %6 = inttoptr i64 %2 to i16*
  store i16 %5, i16* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movw__di____rsi__rdx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %DI = bitcast %union.anon* %8 to i16*
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
  %19 = load i16, i16* %DI
  %20 = zext i16 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 4
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWItE2RnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %18, i64 %20)
  ret %struct.Memory* %23
}




















define %struct.Memory* @routine_movw_0x2__rdx____di(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %DI = bitcast %union.anon* %8 to i16*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDX
  %13 = add i64 %12, 2
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWItE2MnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i16* %DI, i64 %13)
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










define %struct.Memory* @routine_movw__di__0x2__rcx__rdx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %DI = bitcast %union.anon* %8 to i16*
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
  %18 = add i64 %15, 2
  %19 = add i64 %18, %17
  %20 = load i16, i16* %DI
  %21 = zext i16 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 5
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWItE2RnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %21)
  ret %struct.Memory* %24
}


define %struct.Memory* @routine_movq_MINUS0x48__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
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




define %struct.Memory* @routine_movq_0x20__rcx____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 32
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movw___rcx____di(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %DI = bitcast %union.anon* %8 to i16*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RCX
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWItE2MnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i16* %DI, i64 %12)
  ret %struct.Memory* %15
}


















define %struct.Memory* @routine_movw__di____rdx__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %DI = bitcast %union.anon* %8 to i16*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 7
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDX = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RDX
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i16, i16* %DI
  %20 = zext i16 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 4
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWItE2RnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %18, i64 %20)
  ret %struct.Memory* %23
}




















define %struct.Memory* @routine_movw_0x2__rcx____di(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %DI = bitcast %union.anon* %8 to i16*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RCX
  %13 = add i64 %12, 2
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWItE2MnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i16* %DI, i64 %13)
  ret %struct.Memory* %16
}
















define %struct.Memory* @routine_movw__di__0x2__rax__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %DI = bitcast %union.anon* %8 to i16*
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
  %18 = add i64 %15, 2
  %19 = add i64 %18, %17
  %20 = load i16, i16* %DI
  %21 = zext i16 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 5
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWItE2RnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %21)
  ret %struct.Memory* %24
}








define %struct.Memory* @routine_jmpq_.L_490deb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_490f38(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_490dd9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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

define %struct.Memory* @routine_je_.L_490f5f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jne_.L_4910e7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_jge_.L_4910e2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_jge_.L_4910cf(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




































































define %struct.Memory* @routine_jmpq_.L_490f77(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_4910d4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_490f65(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_49117f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}










define %struct.Memory* @routine_jge_.L_49117a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_jge_.L_491167(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












































define %struct.Memory* @routine_jmpq_.L_4910ff(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_49116c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_4910ed(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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


define %struct.Memory* @routine_je_.L_491193(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jne_.L_49132f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_jge_.L_49132a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_jge_.L_491317(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movslq_MINUS0x14__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


















define %struct.Memory* @routine_addq__0x40___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 64)
  ret %struct.Memory* %12
}








































define %struct.Memory* @routine_addq__0x40___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 64)
  ret %struct.Memory* %12
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


define %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}












































































define %struct.Memory* @routine_jmpq_.L_4911ab(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_49131c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_491199(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_4913cf(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}










define %struct.Memory* @routine_jge_.L_4913ca(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_jge_.L_4913b7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
















































define %struct.Memory* @routine_jmpq_.L_491347(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_4913bc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_491335(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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

