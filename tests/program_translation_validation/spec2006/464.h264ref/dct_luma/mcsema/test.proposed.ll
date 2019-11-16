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

declare %struct.Memory* @sub_475150.sign(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Data Access Globals
%G_0x6cb8f8_type = type <{ [8 x i8] }>
@G_0x6cb8f8= global %G_0x6cb8f8_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x6cb900_type = type <{ [8 x i8] }>
@G_0x6cb900= global %G_0x6cb900_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x70fcf0_type = type <{ [8 x i8] }>
@G_0x70fcf0= global %G_0x70fcf0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4b23a0_type = type <{ [8 x i8] }>
@G__0x4b23a0= global %G__0x4b23a0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x6d09f0_type = type <{ [8 x i8] }>
@G__0x6d09f0= global %G__0x6d09f0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x70d010_type = type <{ [8 x i8] }>
@G__0x70d010= global %G__0x70d010_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x70e8f0_type = type <{ [8 x i8] }>
@G__0x70e8f0= global %G__0x70e8f0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x70fe80_type = type <{ [8 x i8] }>
@G__0x70fe80= global %G__0x70fe80_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>


define %struct.Memory* @dct_luma(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .dct_luma:	 RIP: 406250	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 406250	 Bytes: 1
  %loadMem_406250 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406250 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406250)
  store %struct.Memory* %call_406250, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 406251	 Bytes: 3
  %loadMem_406251 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406251 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406251)
  store %struct.Memory* %call_406251, %struct.Memory** %MEMORY

  ; Code: subq $0x100, %rsp	 RIP: 406254	 Bytes: 7
  %loadMem_406254 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406254 = call %struct.Memory* @routine_subq__0x100___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406254)
  store %struct.Memory* %call_406254, %struct.Memory** %MEMORY

  ; Code: xorl %eax, %eax	 RIP: 40625b	 Bytes: 2
  %loadMem_40625b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40625b = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40625b)
  store %struct.Memory* %call_40625b, %struct.Memory** %MEMORY

  ; Code: movb %al, %r8b	 RIP: 40625d	 Bytes: 3
  %loadMem_40625d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40625d = call %struct.Memory* @routine_movb__al___r8b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40625d)
  store %struct.Memory* %call_40625d, %struct.Memory** %MEMORY

  ; Code: movl $0x2, %eax	 RIP: 406260	 Bytes: 5
  %loadMem_406260 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406260 = call %struct.Memory* @routine_movl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406260)
  store %struct.Memory* %call_406260, %struct.Memory** %MEMORY

  ; Code: movl $0x4, %r9d	 RIP: 406265	 Bytes: 6
  %loadMem_406265 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406265 = call %struct.Memory* @routine_movl__0x4___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406265)
  store %struct.Memory* %call_406265, %struct.Memory** %MEMORY

  ; Code: movl %edi, -0x4(%rbp)	 RIP: 40626b	 Bytes: 3
  %loadMem_40626b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40626b = call %struct.Memory* @routine_movl__edi__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40626b)
  store %struct.Memory* %call_40626b, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x8(%rbp)	 RIP: 40626e	 Bytes: 3
  %loadMem_40626e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40626e = call %struct.Memory* @routine_movl__esi__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40626e)
  store %struct.Memory* %call_40626e, %struct.Memory** %MEMORY

  ; Code: movq %rdx, -0x10(%rbp)	 RIP: 406271	 Bytes: 4
  %loadMem_406271 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406271 = call %struct.Memory* @routine_movq__rdx__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406271)
  store %struct.Memory* %call_406271, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x14(%rbp)	 RIP: 406275	 Bytes: 3
  %loadMem_406275 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406275 = call %struct.Memory* @routine_movl__ecx__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406275)
  store %struct.Memory* %call_406275, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %ecx	 RIP: 406278	 Bytes: 3
  %loadMem_406278 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406278 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406278)
  store %struct.Memory* %call_406278, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xa0(%rbp)	 RIP: 40627b	 Bytes: 6
  %loadMem_40627b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40627b = call %struct.Memory* @routine_movl__eax__MINUS0xa0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40627b)
  store %struct.Memory* %call_40627b, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %eax	 RIP: 406281	 Bytes: 2
  %loadMem_406281 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406281 = call %struct.Memory* @routine_movl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406281)
  store %struct.Memory* %call_406281, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 406283	 Bytes: 1
  %loadMem_406283 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406283 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406283)
  store %struct.Memory* %call_406283, %struct.Memory** %MEMORY

  ; Code: idivl %r9d	 RIP: 406284	 Bytes: 3
  %loadMem_406284 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406284 = call %struct.Memory* @routine_idivl__r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406284)
  store %struct.Memory* %call_406284, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x74(%rbp)	 RIP: 406287	 Bytes: 3
  %loadMem_406287 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406287 = call %struct.Memory* @routine_movl__eax__MINUS0x74__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406287)
  store %struct.Memory* %call_406287, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %eax	 RIP: 40628a	 Bytes: 3
  %loadMem_40628a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40628a = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40628a)
  store %struct.Memory* %call_40628a, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 40628d	 Bytes: 1
  %loadMem_40628d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40628d = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40628d)
  store %struct.Memory* %call_40628d, %struct.Memory** %MEMORY

  ; Code: idivl %r9d	 RIP: 40628e	 Bytes: 3
  %loadMem_40628e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40628e = call %struct.Memory* @routine_idivl__r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40628e)
  store %struct.Memory* %call_40628e, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x78(%rbp)	 RIP: 406291	 Bytes: 3
  %loadMem_406291 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406291 = call %struct.Memory* @routine_movl__eax__MINUS0x78__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406291)
  store %struct.Memory* %call_406291, %struct.Memory** %MEMORY

  ; Code: movl -0x78(%rbp), %eax	 RIP: 406294	 Bytes: 3
  %loadMem_406294 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406294 = call %struct.Memory* @routine_movl_MINUS0x78__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406294)
  store %struct.Memory* %call_406294, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 406297	 Bytes: 1
  %loadMem_406297 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406297 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406297)
  store %struct.Memory* %call_406297, %struct.Memory** %MEMORY

  ; Code: movl -0xa0(%rbp), %ecx	 RIP: 406298	 Bytes: 6
  %loadMem_406298 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406298 = call %struct.Memory* @routine_movl_MINUS0xa0__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406298)
  store %struct.Memory* %call_406298, %struct.Memory** %MEMORY

  ; Code: idivl %ecx	 RIP: 40629e	 Bytes: 2
  %loadMem_40629e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40629e = call %struct.Memory* @routine_idivl__ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40629e)
  store %struct.Memory* %call_40629e, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %eax	 RIP: 4062a0	 Bytes: 3
  %loadMem_4062a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4062a0 = call %struct.Memory* @routine_shll__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4062a0)
  store %struct.Memory* %call_4062a0, %struct.Memory** %MEMORY

  ; Code: movl -0x74(%rbp), %esi	 RIP: 4062a3	 Bytes: 3
  %loadMem_4062a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4062a3 = call %struct.Memory* @routine_movl_MINUS0x74__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4062a3)
  store %struct.Memory* %call_4062a3, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xa4(%rbp)	 RIP: 4062a6	 Bytes: 6
  %loadMem_4062a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4062a6 = call %struct.Memory* @routine_movl__eax__MINUS0xa4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4062a6)
  store %struct.Memory* %call_4062a6, %struct.Memory** %MEMORY

  ; Code: movl %esi, %eax	 RIP: 4062ac	 Bytes: 2
  %loadMem_4062ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4062ac = call %struct.Memory* @routine_movl__esi___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4062ac)
  store %struct.Memory* %call_4062ac, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 4062ae	 Bytes: 1
  %loadMem_4062ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4062ae = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4062ae)
  store %struct.Memory* %call_4062ae, %struct.Memory** %MEMORY

  ; Code: idivl %ecx	 RIP: 4062af	 Bytes: 2
  %loadMem_4062af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4062af = call %struct.Memory* @routine_idivl__ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4062af)
  store %struct.Memory* %call_4062af, %struct.Memory** %MEMORY

  ; Code: movl -0xa4(%rbp), %esi	 RIP: 4062b1	 Bytes: 6
  %loadMem_4062b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4062b1 = call %struct.Memory* @routine_movl_MINUS0xa4__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4062b1)
  store %struct.Memory* %call_4062b1, %struct.Memory** %MEMORY

  ; Code: addl %eax, %esi	 RIP: 4062b7	 Bytes: 2
  %loadMem_4062b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4062b7 = call %struct.Memory* @routine_addl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4062b7)
  store %struct.Memory* %call_4062b7, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x7c(%rbp)	 RIP: 4062b9	 Bytes: 3
  %loadMem_4062b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4062b9 = call %struct.Memory* @routine_movl__esi__MINUS0x7c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4062b9)
  store %struct.Memory* %call_4062b9, %struct.Memory** %MEMORY

  ; Code: movl -0x78(%rbp), %eax	 RIP: 4062bc	 Bytes: 3
  %loadMem_4062bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4062bc = call %struct.Memory* @routine_movl_MINUS0x78__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4062bc)
  store %struct.Memory* %call_4062bc, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 4062bf	 Bytes: 1
  %loadMem_4062bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4062bf = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4062bf)
  store %struct.Memory* %call_4062bf, %struct.Memory** %MEMORY

  ; Code: idivl %ecx	 RIP: 4062c0	 Bytes: 2
  %loadMem_4062c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4062c0 = call %struct.Memory* @routine_idivl__ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4062c0)
  store %struct.Memory* %call_4062c0, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %edx	 RIP: 4062c2	 Bytes: 3
  %loadMem_4062c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4062c2 = call %struct.Memory* @routine_shll__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4062c2)
  store %struct.Memory* %call_4062c2, %struct.Memory** %MEMORY

  ; Code: movl -0x74(%rbp), %esi	 RIP: 4062c5	 Bytes: 3
  %loadMem_4062c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4062c5 = call %struct.Memory* @routine_movl_MINUS0x74__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4062c5)
  store %struct.Memory* %call_4062c5, %struct.Memory** %MEMORY

  ; Code: movl %esi, %eax	 RIP: 4062c8	 Bytes: 2
  %loadMem_4062c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4062c8 = call %struct.Memory* @routine_movl__esi___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4062c8)
  store %struct.Memory* %call_4062c8, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0xa8(%rbp)	 RIP: 4062ca	 Bytes: 6
  %loadMem_4062ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4062ca = call %struct.Memory* @routine_movl__edx__MINUS0xa8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4062ca)
  store %struct.Memory* %call_4062ca, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 4062d0	 Bytes: 1
  %loadMem_4062d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4062d0 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4062d0)
  store %struct.Memory* %call_4062d0, %struct.Memory** %MEMORY

  ; Code: idivl %ecx	 RIP: 4062d1	 Bytes: 2
  %loadMem_4062d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4062d1 = call %struct.Memory* @routine_idivl__ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4062d1)
  store %struct.Memory* %call_4062d1, %struct.Memory** %MEMORY

  ; Code: movl -0xa8(%rbp), %esi	 RIP: 4062d3	 Bytes: 6
  %loadMem_4062d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4062d3 = call %struct.Memory* @routine_movl_MINUS0xa8__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4062d3)
  store %struct.Memory* %call_4062d3, %struct.Memory** %MEMORY

  ; Code: addl %edx, %esi	 RIP: 4062d9	 Bytes: 2
  %loadMem_4062d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4062d9 = call %struct.Memory* @routine_addl__edx___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4062d9)
  store %struct.Memory* %call_4062d9, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x80(%rbp)	 RIP: 4062db	 Bytes: 3
  %loadMem_4062db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4062db = call %struct.Memory* @routine_movl__esi__MINUS0x80__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4062db)
  store %struct.Memory* %call_4062db, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %r10	 RIP: 4062de	 Bytes: 8
  %loadMem_4062de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4062de = call %struct.Memory* @routine_movq_0x6cb900___r10(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4062de)
  store %struct.Memory* %call_4062de, %struct.Memory** %MEMORY

  ; Code: movq 0x3738(%r10), %r10	 RIP: 4062e6	 Bytes: 7
  %loadMem_4062e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4062e6 = call %struct.Memory* @routine_movq_0x3738__r10____r10(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4062e6)
  store %struct.Memory* %call_4062e6, %struct.Memory** %MEMORY

  ; Code: movslq -0x7c(%rbp), %r11	 RIP: 4062ed	 Bytes: 4
  %loadMem_4062ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4062ed = call %struct.Memory* @routine_movslq_MINUS0x7c__rbp____r11(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4062ed)
  store %struct.Memory* %call_4062ed, %struct.Memory** %MEMORY

  ; Code: movq (%r10,%r11,8), %r10	 RIP: 4062f1	 Bytes: 4
  %loadMem_4062f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4062f1 = call %struct.Memory* @routine_movq___r10__r11_8____r10(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4062f1)
  store %struct.Memory* %call_4062f1, %struct.Memory** %MEMORY

  ; Code: movslq -0x80(%rbp), %r11	 RIP: 4062f5	 Bytes: 4
  %loadMem_4062f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4062f5 = call %struct.Memory* @routine_movslq_MINUS0x80__rbp____r11(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4062f5)
  store %struct.Memory* %call_4062f5, %struct.Memory** %MEMORY

  ; Code: movq (%r10,%r11,8), %r10	 RIP: 4062f9	 Bytes: 4
  %loadMem_4062f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4062f9 = call %struct.Memory* @routine_movq___r10__r11_8____r10(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4062f9)
  store %struct.Memory* %call_4062f9, %struct.Memory** %MEMORY

  ; Code: movq (%r10), %r10	 RIP: 4062fd	 Bytes: 3
  %loadMem_4062fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4062fd = call %struct.Memory* @routine_movq___r10____r10(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4062fd)
  store %struct.Memory* %call_4062fd, %struct.Memory** %MEMORY

  ; Code: movq %r10, -0x88(%rbp)	 RIP: 406300	 Bytes: 7
  %loadMem_406300 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406300 = call %struct.Memory* @routine_movq__r10__MINUS0x88__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406300)
  store %struct.Memory* %call_406300, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %r10	 RIP: 406307	 Bytes: 8
  %loadMem_406307 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406307 = call %struct.Memory* @routine_movq_0x6cb900___r10(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406307)
  store %struct.Memory* %call_406307, %struct.Memory** %MEMORY

  ; Code: movq 0x3738(%r10), %r10	 RIP: 40630f	 Bytes: 7
  %loadMem_40630f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40630f = call %struct.Memory* @routine_movq_0x3738__r10____r10(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40630f)
  store %struct.Memory* %call_40630f, %struct.Memory** %MEMORY

  ; Code: movslq -0x7c(%rbp), %r11	 RIP: 406316	 Bytes: 4
  %loadMem_406316 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406316 = call %struct.Memory* @routine_movslq_MINUS0x7c__rbp____r11(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406316)
  store %struct.Memory* %call_406316, %struct.Memory** %MEMORY

  ; Code: movq (%r10,%r11,8), %r10	 RIP: 40631a	 Bytes: 4
  %loadMem_40631a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40631a = call %struct.Memory* @routine_movq___r10__r11_8____r10(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40631a)
  store %struct.Memory* %call_40631a, %struct.Memory** %MEMORY

  ; Code: movslq -0x80(%rbp), %r11	 RIP: 40631e	 Bytes: 4
  %loadMem_40631e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40631e = call %struct.Memory* @routine_movslq_MINUS0x80__rbp____r11(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40631e)
  store %struct.Memory* %call_40631e, %struct.Memory** %MEMORY

  ; Code: movq (%r10,%r11,8), %r10	 RIP: 406322	 Bytes: 4
  %loadMem_406322 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406322 = call %struct.Memory* @routine_movq___r10__r11_8____r10(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406322)
  store %struct.Memory* %call_406322, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%r10), %r10	 RIP: 406326	 Bytes: 4
  %loadMem_406326 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406326 = call %struct.Memory* @routine_movq_0x8__r10____r10(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406326)
  store %struct.Memory* %call_406326, %struct.Memory** %MEMORY

  ; Code: movq %r10, -0x90(%rbp)	 RIP: 40632a	 Bytes: 7
  %loadMem_40632a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40632a = call %struct.Memory* @routine_movq__r10__MINUS0x90__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40632a)
  store %struct.Memory* %call_40632a, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %r10	 RIP: 406331	 Bytes: 8
  %loadMem_406331 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406331 = call %struct.Memory* @routine_movq_0x6cb900___r10(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406331)
  store %struct.Memory* %call_406331, %struct.Memory** %MEMORY

  ; Code: movq 0x3758(%r10), %r10	 RIP: 406339	 Bytes: 7
  %loadMem_406339 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406339 = call %struct.Memory* @routine_movq_0x3758__r10____r10(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406339)
  store %struct.Memory* %call_406339, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %r11	 RIP: 406340	 Bytes: 8
  %loadMem_406340 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406340 = call %struct.Memory* @routine_movq_0x6cb900___r11(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406340)
  store %struct.Memory* %call_406340, %struct.Memory** %MEMORY

  ; Code: movslq 0xc(%r11), %r11	 RIP: 406348	 Bytes: 4
  %loadMem_406348 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406348 = call %struct.Memory* @routine_movslq_0xc__r11____r11(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406348)
  store %struct.Memory* %call_406348, %struct.Memory** %MEMORY

  ; Code: imulq $0x278, %r11, %r11	 RIP: 40634c	 Bytes: 7
  %loadMem_40634c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40634c = call %struct.Memory* @routine_imulq__0x278___r11___r11(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40634c)
  store %struct.Memory* %call_40634c, %struct.Memory** %MEMORY

  ; Code: addq %r11, %r10	 RIP: 406353	 Bytes: 3
  %loadMem_406353 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406353 = call %struct.Memory* @routine_addq__r11___r10(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406353)
  store %struct.Memory* %call_406353, %struct.Memory** %MEMORY

  ; Code: movq %r10, -0x98(%rbp)	 RIP: 406356	 Bytes: 7
  %loadMem_406356 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406356 = call %struct.Memory* @routine_movq__r10__MINUS0x98__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406356)
  store %struct.Memory* %call_406356, %struct.Memory** %MEMORY

  ; Code: movq -0x98(%rbp), %r10	 RIP: 40635d	 Bytes: 7
  %loadMem_40635d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40635d = call %struct.Memory* @routine_movq_MINUS0x98__rbp____r10(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40635d)
  store %struct.Memory* %call_40635d, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%r10), %edx	 RIP: 406364	 Bytes: 4
  %loadMem_406364 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406364 = call %struct.Memory* @routine_movl_0xc__r10____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406364)
  store %struct.Memory* %call_406364, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %r10	 RIP: 406368	 Bytes: 8
  %loadMem_406368 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406368 = call %struct.Memory* @routine_movq_0x6cb900___r10(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406368)
  store %struct.Memory* %call_406368, %struct.Memory** %MEMORY

  ; Code: addl 0x11bdc(%r10), %edx	 RIP: 406370	 Bytes: 7
  %loadMem_406370 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406370 = call %struct.Memory* @routine_addl_0x11bdc__r10____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406370)
  store %struct.Memory* %call_406370, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %edx	 RIP: 406377	 Bytes: 3
  %loadMem_406377 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406377 = call %struct.Memory* @routine_cmpl__0x0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406377)
  store %struct.Memory* %call_406377, %struct.Memory** %MEMORY

  ; Code: movb %r8b, -0xa9(%rbp)	 RIP: 40637a	 Bytes: 7
  %loadMem_40637a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40637a = call %struct.Memory* @routine_movb__r8b__MINUS0xa9__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40637a)
  store %struct.Memory* %call_40637a, %struct.Memory** %MEMORY

  ; Code: jne .L_40639f	 RIP: 406381	 Bytes: 6
  %loadMem_406381 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406381 = call %struct.Memory* @routine_jne_.L_40639f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406381, i8* %BRANCH_TAKEN, i64 30, i64 6, i64 6)
  store %struct.Memory* %call_406381, %struct.Memory** %MEMORY

  %loadBr_406381 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_406381 = icmp eq i8 %loadBr_406381, 1
  br i1 %cmpBr_406381, label %block_.L_40639f, label %block_406387

block_406387:
  ; Code: movq 0x6cb900, %rax	 RIP: 406387	 Bytes: 8
  %loadMem_406387 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406387 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406387)
  store %struct.Memory* %call_406387, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, 0x11c00(%rax)	 RIP: 40638f	 Bytes: 7
  %loadMem_40638f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40638f = call %struct.Memory* @routine_cmpl__0x1__0x11c00__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40638f)
  store %struct.Memory* %call_40638f, %struct.Memory** %MEMORY

  ; Code: sete %cl	 RIP: 406396	 Bytes: 3
  %loadMem_406396 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406396 = call %struct.Memory* @routine_sete__cl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406396)
  store %struct.Memory* %call_406396, %struct.Memory** %MEMORY

  ; Code: movb %cl, -0xa9(%rbp)	 RIP: 406399	 Bytes: 6
  %loadMem_406399 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406399 = call %struct.Memory* @routine_movb__cl__MINUS0xa9__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406399)
  store %struct.Memory* %call_406399, %struct.Memory** %MEMORY

  ; Code: .L_40639f:	 RIP: 40639f	 Bytes: 0
  br label %block_.L_40639f
block_.L_40639f:

  ; Code: movb -0xa9(%rbp), %al	 RIP: 40639f	 Bytes: 6
  %loadMem_40639f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40639f = call %struct.Memory* @routine_movb_MINUS0xa9__rbp____al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40639f)
  store %struct.Memory* %call_40639f, %struct.Memory** %MEMORY

  ; Code: movl $0x6, %ecx	 RIP: 4063a5	 Bytes: 5
  %loadMem_4063a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4063a5 = call %struct.Memory* @routine_movl__0x6___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4063a5)
  store %struct.Memory* %call_4063a5, %struct.Memory** %MEMORY

  ; Code: andb $0x1, %al	 RIP: 4063aa	 Bytes: 2
  %loadMem_4063aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4063aa = call %struct.Memory* @routine_andb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4063aa)
  store %struct.Memory* %call_4063aa, %struct.Memory** %MEMORY

  ; Code: movzbl %al, %edx	 RIP: 4063ac	 Bytes: 3
  %loadMem_4063ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4063ac = call %struct.Memory* @routine_movzbl__al___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4063ac)
  store %struct.Memory* %call_4063ac, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x9c(%rbp)	 RIP: 4063af	 Bytes: 6
  %loadMem_4063af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4063af = call %struct.Memory* @routine_movl__edx__MINUS0x9c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4063af)
  store %struct.Memory* %call_4063af, %struct.Memory** %MEMORY

  ; Code: movq -0x98(%rbp), %rsi	 RIP: 4063b5	 Bytes: 7
  %loadMem_4063b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4063b5 = call %struct.Memory* @routine_movq_MINUS0x98__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4063b5)
  store %struct.Memory* %call_4063b5, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%rsi), %edx	 RIP: 4063bc	 Bytes: 3
  %loadMem_4063bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4063bc = call %struct.Memory* @routine_movl_0xc__rsi____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4063bc)
  store %struct.Memory* %call_4063bc, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rsi	 RIP: 4063bf	 Bytes: 8
  %loadMem_4063bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4063bf = call %struct.Memory* @routine_movq_0x6cb900___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4063bf)
  store %struct.Memory* %call_4063bf, %struct.Memory** %MEMORY

  ; Code: addl 0x11bdc(%rsi), %edx	 RIP: 4063c7	 Bytes: 6
  %loadMem_4063c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4063c7 = call %struct.Memory* @routine_addl_0x11bdc__rsi____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4063c7)
  store %struct.Memory* %call_4063c7, %struct.Memory** %MEMORY

  ; Code: subl $0x0, %edx	 RIP: 4063cd	 Bytes: 3
  %loadMem_4063cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4063cd = call %struct.Memory* @routine_subl__0x0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4063cd)
  store %struct.Memory* %call_4063cd, %struct.Memory** %MEMORY

  ; Code: movl %edx, %eax	 RIP: 4063d0	 Bytes: 2
  %loadMem_4063d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4063d0 = call %struct.Memory* @routine_movl__edx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4063d0)
  store %struct.Memory* %call_4063d0, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 4063d2	 Bytes: 1
  %loadMem_4063d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4063d2 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4063d2)
  store %struct.Memory* %call_4063d2, %struct.Memory** %MEMORY

  ; Code: idivl %ecx	 RIP: 4063d3	 Bytes: 2
  %loadMem_4063d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4063d3 = call %struct.Memory* @routine_idivl__ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4063d3)
  store %struct.Memory* %call_4063d3, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x68(%rbp)	 RIP: 4063d5	 Bytes: 3
  %loadMem_4063d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4063d5 = call %struct.Memory* @routine_movl__eax__MINUS0x68__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4063d5)
  store %struct.Memory* %call_4063d5, %struct.Memory** %MEMORY

  ; Code: movq -0x98(%rbp), %rsi	 RIP: 4063d8	 Bytes: 7
  %loadMem_4063d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4063d8 = call %struct.Memory* @routine_movq_MINUS0x98__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4063d8)
  store %struct.Memory* %call_4063d8, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%rsi), %eax	 RIP: 4063df	 Bytes: 3
  %loadMem_4063df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4063df = call %struct.Memory* @routine_movl_0xc__rsi____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4063df)
  store %struct.Memory* %call_4063df, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rsi	 RIP: 4063e2	 Bytes: 8
  %loadMem_4063e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4063e2 = call %struct.Memory* @routine_movq_0x6cb900___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4063e2)
  store %struct.Memory* %call_4063e2, %struct.Memory** %MEMORY

  ; Code: addl 0x11bdc(%rsi), %eax	 RIP: 4063ea	 Bytes: 6
  %loadMem_4063ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4063ea = call %struct.Memory* @routine_addl_0x11bdc__rsi____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4063ea)
  store %struct.Memory* %call_4063ea, %struct.Memory** %MEMORY

  ; Code: subl $0x0, %eax	 RIP: 4063f0	 Bytes: 3
  %loadMem_4063f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4063f0 = call %struct.Memory* @routine_subl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4063f0)
  store %struct.Memory* %call_4063f0, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 4063f3	 Bytes: 1
  %loadMem_4063f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4063f3 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4063f3)
  store %struct.Memory* %call_4063f3, %struct.Memory** %MEMORY

  ; Code: idivl %ecx	 RIP: 4063f4	 Bytes: 2
  %loadMem_4063f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4063f4 = call %struct.Memory* @routine_idivl__ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4063f4)
  store %struct.Memory* %call_4063f4, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x6c(%rbp)	 RIP: 4063f6	 Bytes: 3
  %loadMem_4063f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4063f6 = call %struct.Memory* @routine_movl__edx__MINUS0x6c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4063f6)
  store %struct.Memory* %call_4063f6, %struct.Memory** %MEMORY

  ; Code: movl -0x68(%rbp), %ecx	 RIP: 4063f9	 Bytes: 3
  %loadMem_4063f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4063f9 = call %struct.Memory* @routine_movl_MINUS0x68__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4063f9)
  store %struct.Memory* %call_4063f9, %struct.Memory** %MEMORY

  ; Code: addl $0xf, %ecx	 RIP: 4063fc	 Bytes: 3
  %loadMem_4063fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4063fc = call %struct.Memory* @routine_addl__0xf___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4063fc)
  store %struct.Memory* %call_4063fc, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x70(%rbp)	 RIP: 4063ff	 Bytes: 3
  %loadMem_4063ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4063ff = call %struct.Memory* @routine_movl__ecx__MINUS0x70__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4063ff)
  store %struct.Memory* %call_4063ff, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x1c(%rbp)	 RIP: 406402	 Bytes: 7
  %loadMem_406402 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406402 = call %struct.Memory* @routine_movl__0x0__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406402)
  store %struct.Memory* %call_406402, %struct.Memory** %MEMORY

  ; Code: .L_406409:	 RIP: 406409	 Bytes: 0
  br label %block_.L_406409
block_.L_406409:

  ; Code: xorl %eax, %eax	 RIP: 406409	 Bytes: 2
  %loadMem_406409 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406409 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406409)
  store %struct.Memory* %call_406409, %struct.Memory** %MEMORY

  ; Code: movb %al, %cl	 RIP: 40640b	 Bytes: 2
  %loadMem_40640b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40640b = call %struct.Memory* @routine_movb__al___cl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40640b)
  store %struct.Memory* %call_40640b, %struct.Memory** %MEMORY

  ; Code: cmpl $0x4, -0x1c(%rbp)	 RIP: 40640d	 Bytes: 4
  %loadMem_40640d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40640d = call %struct.Memory* @routine_cmpl__0x4__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40640d)
  store %struct.Memory* %call_40640d, %struct.Memory** %MEMORY

  ; Code: movb %cl, -0xaa(%rbp)	 RIP: 406411	 Bytes: 6
  %loadMem_406411 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406411 = call %struct.Memory* @routine_movb__cl__MINUS0xaa__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406411)
  store %struct.Memory* %call_406411, %struct.Memory** %MEMORY

  ; Code: jge .L_40642f	 RIP: 406417	 Bytes: 6
  %loadMem_406417 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406417 = call %struct.Memory* @routine_jge_.L_40642f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406417, i8* %BRANCH_TAKEN, i64 24, i64 6, i64 6)
  store %struct.Memory* %call_406417, %struct.Memory** %MEMORY

  %loadBr_406417 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_406417 = icmp eq i8 %loadBr_406417, 1
  br i1 %cmpBr_406417, label %block_.L_40642f, label %block_40641d

block_40641d:
  ; Code: cmpl $0x0, -0x9c(%rbp)	 RIP: 40641d	 Bytes: 7
  %loadMem_40641d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40641d = call %struct.Memory* @routine_cmpl__0x0__MINUS0x9c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40641d)
  store %struct.Memory* %call_40641d, %struct.Memory** %MEMORY

  ; Code: setne %al	 RIP: 406424	 Bytes: 3
  %loadMem_406424 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406424 = call %struct.Memory* @routine_setne__al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406424)
  store %struct.Memory* %call_406424, %struct.Memory** %MEMORY

  ; Code: xorb $0xff, %al	 RIP: 406427	 Bytes: 2
  %loadMem_406427 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406427 = call %struct.Memory* @routine_xorb__0xff___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406427)
  store %struct.Memory* %call_406427, %struct.Memory** %MEMORY

  ; Code: movb %al, -0xaa(%rbp)	 RIP: 406429	 Bytes: 6
  %loadMem_406429 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406429 = call %struct.Memory* @routine_movb__al__MINUS0xaa__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406429)
  store %struct.Memory* %call_406429, %struct.Memory** %MEMORY

  ; Code: .L_40642f:	 RIP: 40642f	 Bytes: 0
  br label %block_.L_40642f
block_.L_40642f:

  ; Code: movb -0xaa(%rbp), %al	 RIP: 40642f	 Bytes: 6
  %loadMem_40642f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40642f = call %struct.Memory* @routine_movb_MINUS0xaa__rbp____al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40642f)
  store %struct.Memory* %call_40642f, %struct.Memory** %MEMORY

  ; Code: testb $0x1, %al	 RIP: 406435	 Bytes: 2
  %loadMem_406435 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406435 = call %struct.Memory* @routine_testb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406435)
  store %struct.Memory* %call_406435, %struct.Memory** %MEMORY

  ; Code: jne .L_406442	 RIP: 406437	 Bytes: 6
  %loadMem_406437 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406437 = call %struct.Memory* @routine_jne_.L_406442(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406437, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_406437, %struct.Memory** %MEMORY

  %loadBr_406437 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_406437 = icmp eq i8 %loadBr_406437, 1
  br i1 %cmpBr_406437, label %block_.L_406442, label %block_40643d

block_40643d:
  ; Code: jmpq .L_40657a	 RIP: 40643d	 Bytes: 5
  %loadMem_40643d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40643d = call %struct.Memory* @routine_jmpq_.L_40657a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40643d, i64 317, i64 5)
  store %struct.Memory* %call_40643d, %struct.Memory** %MEMORY

  br label %block_.L_40657a

  ; Code: .L_406442:	 RIP: 406442	 Bytes: 0
block_.L_406442:

  ; Code: movl $0x0, -0x18(%rbp)	 RIP: 406442	 Bytes: 7
  %loadMem_406442 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406442 = call %struct.Memory* @routine_movl__0x0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406442)
  store %struct.Memory* %call_406442, %struct.Memory** %MEMORY

  ; Code: .L_406449:	 RIP: 406449	 Bytes: 0
  br label %block_.L_406449
block_.L_406449:

  ; Code: cmpl $0x2, -0x18(%rbp)	 RIP: 406449	 Bytes: 4
  %loadMem_406449 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406449 = call %struct.Memory* @routine_cmpl__0x2__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406449)
  store %struct.Memory* %call_406449, %struct.Memory** %MEMORY

  ; Code: jge .L_406500	 RIP: 40644d	 Bytes: 6
  %loadMem_40644d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40644d = call %struct.Memory* @routine_jge_.L_406500(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40644d, i8* %BRANCH_TAKEN, i64 179, i64 6, i64 6)
  store %struct.Memory* %call_40644d, %struct.Memory** %MEMORY

  %loadBr_40644d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40644d = icmp eq i8 %loadBr_40644d, 1
  br i1 %cmpBr_40644d, label %block_.L_406500, label %block_406453

block_406453:
  ; Code: movl $0x3, %eax	 RIP: 406453	 Bytes: 5
  %loadMem_406453 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406453 = call %struct.Memory* @routine_movl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406453)
  store %struct.Memory* %call_406453, %struct.Memory** %MEMORY

  ; Code: subl -0x18(%rbp), %eax	 RIP: 406458	 Bytes: 3
  %loadMem_406458 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406458 = call %struct.Memory* @routine_subl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406458)
  store %struct.Memory* %call_406458, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x20(%rbp)	 RIP: 40645b	 Bytes: 3
  %loadMem_40645b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40645b = call %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40645b)
  store %struct.Memory* %call_40645b, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 40645e	 Bytes: 8
  %loadMem_40645e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40645e = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40645e)
  store %struct.Memory* %call_40645e, %struct.Memory** %MEMORY

  ; Code: addq $0x3338, %rcx	 RIP: 406466	 Bytes: 7
  %loadMem_406466 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406466 = call %struct.Memory* @routine_addq__0x3338___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406466)
  store %struct.Memory* %call_406466, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rdx	 RIP: 40646d	 Bytes: 4
  %loadMem_40646d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40646d = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40646d)
  store %struct.Memory* %call_40646d, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rdx	 RIP: 406471	 Bytes: 4
  %loadMem_406471 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406471 = call %struct.Memory* @routine_shlq__0x6___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406471)
  store %struct.Memory* %call_406471, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 406475	 Bytes: 3
  %loadMem_406475 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406475 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406475)
  store %struct.Memory* %call_406475, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rdx	 RIP: 406478	 Bytes: 4
  %loadMem_406478 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406478 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406478)
  store %struct.Memory* %call_406478, %struct.Memory** %MEMORY

  ; Code: movl (%rcx,%rdx,4), %eax	 RIP: 40647c	 Bytes: 3
  %loadMem_40647c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40647c = call %struct.Memory* @routine_movl___rcx__rdx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40647c)
  store %struct.Memory* %call_40647c, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 40647f	 Bytes: 8
  %loadMem_40647f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40647f = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40647f)
  store %struct.Memory* %call_40647f, %struct.Memory** %MEMORY

  ; Code: addq $0x3338, %rcx	 RIP: 406487	 Bytes: 7
  %loadMem_406487 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406487 = call %struct.Memory* @routine_addq__0x3338___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406487)
  store %struct.Memory* %call_406487, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 40648e	 Bytes: 4
  %loadMem_40648e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40648e = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40648e)
  store %struct.Memory* %call_40648e, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rdx	 RIP: 406492	 Bytes: 4
  %loadMem_406492 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406492 = call %struct.Memory* @routine_shlq__0x6___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406492)
  store %struct.Memory* %call_406492, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 406496	 Bytes: 3
  %loadMem_406496 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406496 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406496)
  store %struct.Memory* %call_406496, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rdx	 RIP: 406499	 Bytes: 4
  %loadMem_406499 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406499 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406499)
  store %struct.Memory* %call_406499, %struct.Memory** %MEMORY

  ; Code: addl (%rcx,%rdx,4), %eax	 RIP: 40649d	 Bytes: 3
  %loadMem_40649d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40649d = call %struct.Memory* @routine_addl___rcx__rdx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40649d)
  store %struct.Memory* %call_40649d, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 4064a0	 Bytes: 4
  %loadMem_4064a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4064a0 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4064a0)
  store %struct.Memory* %call_4064a0, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x40(%rbp,%rcx,4)	 RIP: 4064a4	 Bytes: 4
  %loadMem_4064a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4064a4 = call %struct.Memory* @routine_movl__eax__MINUS0x40__rbp__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4064a4)
  store %struct.Memory* %call_4064a4, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 4064a8	 Bytes: 8
  %loadMem_4064a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4064a8 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4064a8)
  store %struct.Memory* %call_4064a8, %struct.Memory** %MEMORY

  ; Code: addq $0x3338, %rcx	 RIP: 4064b0	 Bytes: 7
  %loadMem_4064b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4064b0 = call %struct.Memory* @routine_addq__0x3338___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4064b0)
  store %struct.Memory* %call_4064b0, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rdx	 RIP: 4064b7	 Bytes: 4
  %loadMem_4064b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4064b7 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4064b7)
  store %struct.Memory* %call_4064b7, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rdx	 RIP: 4064bb	 Bytes: 4
  %loadMem_4064bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4064bb = call %struct.Memory* @routine_shlq__0x6___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4064bb)
  store %struct.Memory* %call_4064bb, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 4064bf	 Bytes: 3
  %loadMem_4064bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4064bf = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4064bf)
  store %struct.Memory* %call_4064bf, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rdx	 RIP: 4064c2	 Bytes: 4
  %loadMem_4064c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4064c2 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4064c2)
  store %struct.Memory* %call_4064c2, %struct.Memory** %MEMORY

  ; Code: movl (%rcx,%rdx,4), %eax	 RIP: 4064c6	 Bytes: 3
  %loadMem_4064c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4064c6 = call %struct.Memory* @routine_movl___rcx__rdx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4064c6)
  store %struct.Memory* %call_4064c6, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 4064c9	 Bytes: 8
  %loadMem_4064c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4064c9 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4064c9)
  store %struct.Memory* %call_4064c9, %struct.Memory** %MEMORY

  ; Code: addq $0x3338, %rcx	 RIP: 4064d1	 Bytes: 7
  %loadMem_4064d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4064d1 = call %struct.Memory* @routine_addq__0x3338___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4064d1)
  store %struct.Memory* %call_4064d1, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 4064d8	 Bytes: 4
  %loadMem_4064d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4064d8 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4064d8)
  store %struct.Memory* %call_4064d8, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rdx	 RIP: 4064dc	 Bytes: 4
  %loadMem_4064dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4064dc = call %struct.Memory* @routine_shlq__0x6___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4064dc)
  store %struct.Memory* %call_4064dc, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 4064e0	 Bytes: 3
  %loadMem_4064e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4064e0 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4064e0)
  store %struct.Memory* %call_4064e0, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rdx	 RIP: 4064e3	 Bytes: 4
  %loadMem_4064e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4064e3 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4064e3)
  store %struct.Memory* %call_4064e3, %struct.Memory** %MEMORY

  ; Code: subl (%rcx,%rdx,4), %eax	 RIP: 4064e7	 Bytes: 3
  %loadMem_4064e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4064e7 = call %struct.Memory* @routine_subl___rcx__rdx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4064e7)
  store %struct.Memory* %call_4064e7, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rcx	 RIP: 4064ea	 Bytes: 4
  %loadMem_4064ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4064ea = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4064ea)
  store %struct.Memory* %call_4064ea, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x40(%rbp,%rcx,4)	 RIP: 4064ee	 Bytes: 4
  %loadMem_4064ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4064ee = call %struct.Memory* @routine_movl__eax__MINUS0x40__rbp__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4064ee)
  store %struct.Memory* %call_4064ee, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %eax	 RIP: 4064f2	 Bytes: 3
  %loadMem_4064f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4064f2 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4064f2)
  store %struct.Memory* %call_4064f2, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4064f5	 Bytes: 3
  %loadMem_4064f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4064f5 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4064f5)
  store %struct.Memory* %call_4064f5, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x18(%rbp)	 RIP: 4064f8	 Bytes: 3
  %loadMem_4064f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4064f8 = call %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4064f8)
  store %struct.Memory* %call_4064f8, %struct.Memory** %MEMORY

  ; Code: jmpq .L_406449	 RIP: 4064fb	 Bytes: 5
  %loadMem_4064fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4064fb = call %struct.Memory* @routine_jmpq_.L_406449(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4064fb, i64 -178, i64 5)
  store %struct.Memory* %call_4064fb, %struct.Memory** %MEMORY

  br label %block_.L_406449

  ; Code: .L_406500:	 RIP: 406500	 Bytes: 0
block_.L_406500:

  ; Code: movl -0x40(%rbp), %eax	 RIP: 406500	 Bytes: 3
  %loadMem_406500 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406500 = call %struct.Memory* @routine_movl_MINUS0x40__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406500)
  store %struct.Memory* %call_406500, %struct.Memory** %MEMORY

  ; Code: addl -0x3c(%rbp), %eax	 RIP: 406503	 Bytes: 3
  %loadMem_406503 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406503 = call %struct.Memory* @routine_addl_MINUS0x3c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406503)
  store %struct.Memory* %call_406503, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 406506	 Bytes: 8
  %loadMem_406506 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406506 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406506)
  store %struct.Memory* %call_406506, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rdx	 RIP: 40650e	 Bytes: 4
  %loadMem_40650e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40650e = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40650e)
  store %struct.Memory* %call_40650e, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x3338(%rcx,%rdx,4)	 RIP: 406512	 Bytes: 7
  %loadMem_406512 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406512 = call %struct.Memory* @routine_movl__eax__0x3338__rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406512)
  store %struct.Memory* %call_406512, %struct.Memory** %MEMORY

  ; Code: movl -0x40(%rbp), %eax	 RIP: 406519	 Bytes: 3
  %loadMem_406519 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406519 = call %struct.Memory* @routine_movl_MINUS0x40__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406519)
  store %struct.Memory* %call_406519, %struct.Memory** %MEMORY

  ; Code: subl -0x3c(%rbp), %eax	 RIP: 40651c	 Bytes: 3
  %loadMem_40651c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40651c = call %struct.Memory* @routine_subl_MINUS0x3c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40651c)
  store %struct.Memory* %call_40651c, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 40651f	 Bytes: 8
  %loadMem_40651f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40651f = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40651f)
  store %struct.Memory* %call_40651f, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rdx	 RIP: 406527	 Bytes: 4
  %loadMem_406527 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406527 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406527)
  store %struct.Memory* %call_406527, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x33b8(%rcx,%rdx,4)	 RIP: 40652b	 Bytes: 7
  %loadMem_40652b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40652b = call %struct.Memory* @routine_movl__eax__0x33b8__rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40652b)
  store %struct.Memory* %call_40652b, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %eax	 RIP: 406532	 Bytes: 3
  %loadMem_406532 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406532 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406532)
  store %struct.Memory* %call_406532, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %eax	 RIP: 406535	 Bytes: 3
  %loadMem_406535 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406535 = call %struct.Memory* @routine_shll__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406535)
  store %struct.Memory* %call_406535, %struct.Memory** %MEMORY

  ; Code: addl -0x38(%rbp), %eax	 RIP: 406538	 Bytes: 3
  %loadMem_406538 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406538 = call %struct.Memory* @routine_addl_MINUS0x38__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406538)
  store %struct.Memory* %call_406538, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 40653b	 Bytes: 8
  %loadMem_40653b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40653b = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40653b)
  store %struct.Memory* %call_40653b, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rdx	 RIP: 406543	 Bytes: 4
  %loadMem_406543 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406543 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406543)
  store %struct.Memory* %call_406543, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x3378(%rcx,%rdx,4)	 RIP: 406547	 Bytes: 7
  %loadMem_406547 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406547 = call %struct.Memory* @routine_movl__eax__0x3378__rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406547)
  store %struct.Memory* %call_406547, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %eax	 RIP: 40654e	 Bytes: 3
  %loadMem_40654e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40654e = call %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40654e)
  store %struct.Memory* %call_40654e, %struct.Memory** %MEMORY

  ; Code: movl -0x38(%rbp), %esi	 RIP: 406551	 Bytes: 3
  %loadMem_406551 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406551 = call %struct.Memory* @routine_movl_MINUS0x38__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406551)
  store %struct.Memory* %call_406551, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %esi	 RIP: 406554	 Bytes: 3
  %loadMem_406554 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406554 = call %struct.Memory* @routine_shll__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406554)
  store %struct.Memory* %call_406554, %struct.Memory** %MEMORY

  ; Code: subl %esi, %eax	 RIP: 406557	 Bytes: 2
  %loadMem_406557 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406557 = call %struct.Memory* @routine_subl__esi___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406557)
  store %struct.Memory* %call_406557, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 406559	 Bytes: 8
  %loadMem_406559 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406559 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406559)
  store %struct.Memory* %call_406559, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rdx	 RIP: 406561	 Bytes: 4
  %loadMem_406561 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406561 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406561)
  store %struct.Memory* %call_406561, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x33f8(%rcx,%rdx,4)	 RIP: 406565	 Bytes: 7
  %loadMem_406565 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406565 = call %struct.Memory* @routine_movl__eax__0x33f8__rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406565)
  store %struct.Memory* %call_406565, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 40656c	 Bytes: 3
  %loadMem_40656c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40656c = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40656c)
  store %struct.Memory* %call_40656c, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40656f	 Bytes: 3
  %loadMem_40656f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40656f = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40656f)
  store %struct.Memory* %call_40656f, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 406572	 Bytes: 3
  %loadMem_406572 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406572 = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406572)
  store %struct.Memory* %call_406572, %struct.Memory** %MEMORY

  ; Code: jmpq .L_406409	 RIP: 406575	 Bytes: 5
  %loadMem_406575 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406575 = call %struct.Memory* @routine_jmpq_.L_406409(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406575, i64 -364, i64 5)
  store %struct.Memory* %call_406575, %struct.Memory** %MEMORY

  br label %block_.L_406409

  ; Code: .L_40657a:	 RIP: 40657a	 Bytes: 0
block_.L_40657a:

  ; Code: movl $0x0, -0x18(%rbp)	 RIP: 40657a	 Bytes: 7
  %loadMem_40657a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40657a = call %struct.Memory* @routine_movl__0x0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40657a)
  store %struct.Memory* %call_40657a, %struct.Memory** %MEMORY

  ; Code: .L_406581:	 RIP: 406581	 Bytes: 0
  br label %block_.L_406581
block_.L_406581:

  ; Code: xorl %eax, %eax	 RIP: 406581	 Bytes: 2
  %loadMem_406581 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406581 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406581)
  store %struct.Memory* %call_406581, %struct.Memory** %MEMORY

  ; Code: movb %al, %cl	 RIP: 406583	 Bytes: 2
  %loadMem_406583 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406583 = call %struct.Memory* @routine_movb__al___cl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406583)
  store %struct.Memory* %call_406583, %struct.Memory** %MEMORY

  ; Code: cmpl $0x4, -0x18(%rbp)	 RIP: 406585	 Bytes: 4
  %loadMem_406585 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406585 = call %struct.Memory* @routine_cmpl__0x4__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406585)
  store %struct.Memory* %call_406585, %struct.Memory** %MEMORY

  ; Code: movb %cl, -0xab(%rbp)	 RIP: 406589	 Bytes: 6
  %loadMem_406589 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406589 = call %struct.Memory* @routine_movb__cl__MINUS0xab__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406589)
  store %struct.Memory* %call_406589, %struct.Memory** %MEMORY

  ; Code: jge .L_4065a7	 RIP: 40658f	 Bytes: 6
  %loadMem_40658f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40658f = call %struct.Memory* @routine_jge_.L_4065a7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40658f, i8* %BRANCH_TAKEN, i64 24, i64 6, i64 6)
  store %struct.Memory* %call_40658f, %struct.Memory** %MEMORY

  %loadBr_40658f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40658f = icmp eq i8 %loadBr_40658f, 1
  br i1 %cmpBr_40658f, label %block_.L_4065a7, label %block_406595

block_406595:
  ; Code: cmpl $0x0, -0x9c(%rbp)	 RIP: 406595	 Bytes: 7
  %loadMem_406595 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406595 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x9c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406595)
  store %struct.Memory* %call_406595, %struct.Memory** %MEMORY

  ; Code: setne %al	 RIP: 40659c	 Bytes: 3
  %loadMem_40659c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40659c = call %struct.Memory* @routine_setne__al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40659c)
  store %struct.Memory* %call_40659c, %struct.Memory** %MEMORY

  ; Code: xorb $0xff, %al	 RIP: 40659f	 Bytes: 2
  %loadMem_40659f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40659f = call %struct.Memory* @routine_xorb__0xff___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40659f)
  store %struct.Memory* %call_40659f, %struct.Memory** %MEMORY

  ; Code: movb %al, -0xab(%rbp)	 RIP: 4065a1	 Bytes: 6
  %loadMem_4065a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4065a1 = call %struct.Memory* @routine_movb__al__MINUS0xab__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4065a1)
  store %struct.Memory* %call_4065a1, %struct.Memory** %MEMORY

  ; Code: .L_4065a7:	 RIP: 4065a7	 Bytes: 0
  br label %block_.L_4065a7
block_.L_4065a7:

  ; Code: movb -0xab(%rbp), %al	 RIP: 4065a7	 Bytes: 6
  %loadMem_4065a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4065a7 = call %struct.Memory* @routine_movb_MINUS0xab__rbp____al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4065a7)
  store %struct.Memory* %call_4065a7, %struct.Memory** %MEMORY

  ; Code: testb $0x1, %al	 RIP: 4065ad	 Bytes: 2
  %loadMem_4065ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4065ad = call %struct.Memory* @routine_testb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4065ad)
  store %struct.Memory* %call_4065ad, %struct.Memory** %MEMORY

  ; Code: jne .L_4065ba	 RIP: 4065af	 Bytes: 6
  %loadMem_4065af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4065af = call %struct.Memory* @routine_jne_.L_4065ba(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4065af, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_4065af, %struct.Memory** %MEMORY

  %loadBr_4065af = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4065af = icmp eq i8 %loadBr_4065af, 1
  br i1 %cmpBr_4065af, label %block_.L_4065ba, label %block_4065b5

block_4065b5:
  ; Code: jmpq .L_406719	 RIP: 4065b5	 Bytes: 5
  %loadMem_4065b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4065b5 = call %struct.Memory* @routine_jmpq_.L_406719(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4065b5, i64 356, i64 5)
  store %struct.Memory* %call_4065b5, %struct.Memory** %MEMORY

  br label %block_.L_406719

  ; Code: .L_4065ba:	 RIP: 4065ba	 Bytes: 0
block_.L_4065ba:

  ; Code: movl $0x0, -0x1c(%rbp)	 RIP: 4065ba	 Bytes: 7
  %loadMem_4065ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4065ba = call %struct.Memory* @routine_movl__0x0__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4065ba)
  store %struct.Memory* %call_4065ba, %struct.Memory** %MEMORY

  ; Code: .L_4065c1:	 RIP: 4065c1	 Bytes: 0
  br label %block_.L_4065c1
block_.L_4065c1:

  ; Code: cmpl $0x2, -0x1c(%rbp)	 RIP: 4065c1	 Bytes: 4
  %loadMem_4065c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4065c1 = call %struct.Memory* @routine_cmpl__0x2__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4065c1)
  store %struct.Memory* %call_4065c1, %struct.Memory** %MEMORY

  ; Code: jge .L_406678	 RIP: 4065c5	 Bytes: 6
  %loadMem_4065c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4065c5 = call %struct.Memory* @routine_jge_.L_406678(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4065c5, i8* %BRANCH_TAKEN, i64 179, i64 6, i64 6)
  store %struct.Memory* %call_4065c5, %struct.Memory** %MEMORY

  %loadBr_4065c5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4065c5 = icmp eq i8 %loadBr_4065c5, 1
  br i1 %cmpBr_4065c5, label %block_.L_406678, label %block_4065cb

block_4065cb:
  ; Code: movl $0x3, %eax	 RIP: 4065cb	 Bytes: 5
  %loadMem_4065cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4065cb = call %struct.Memory* @routine_movl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4065cb)
  store %struct.Memory* %call_4065cb, %struct.Memory** %MEMORY

  ; Code: subl -0x1c(%rbp), %eax	 RIP: 4065d0	 Bytes: 3
  %loadMem_4065d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4065d0 = call %struct.Memory* @routine_subl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4065d0)
  store %struct.Memory* %call_4065d0, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x24(%rbp)	 RIP: 4065d3	 Bytes: 3
  %loadMem_4065d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4065d3 = call %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4065d3)
  store %struct.Memory* %call_4065d3, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 4065d6	 Bytes: 8
  %loadMem_4065d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4065d6 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4065d6)
  store %struct.Memory* %call_4065d6, %struct.Memory** %MEMORY

  ; Code: addq $0x3338, %rcx	 RIP: 4065de	 Bytes: 7
  %loadMem_4065de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4065de = call %struct.Memory* @routine_addq__0x3338___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4065de)
  store %struct.Memory* %call_4065de, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rdx	 RIP: 4065e5	 Bytes: 4
  %loadMem_4065e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4065e5 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4065e5)
  store %struct.Memory* %call_4065e5, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rdx	 RIP: 4065e9	 Bytes: 4
  %loadMem_4065e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4065e9 = call %struct.Memory* @routine_shlq__0x6___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4065e9)
  store %struct.Memory* %call_4065e9, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 4065ed	 Bytes: 3
  %loadMem_4065ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4065ed = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4065ed)
  store %struct.Memory* %call_4065ed, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rdx	 RIP: 4065f0	 Bytes: 4
  %loadMem_4065f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4065f0 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4065f0)
  store %struct.Memory* %call_4065f0, %struct.Memory** %MEMORY

  ; Code: movl (%rcx,%rdx,4), %eax	 RIP: 4065f4	 Bytes: 3
  %loadMem_4065f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4065f4 = call %struct.Memory* @routine_movl___rcx__rdx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4065f4)
  store %struct.Memory* %call_4065f4, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 4065f7	 Bytes: 8
  %loadMem_4065f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4065f7 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4065f7)
  store %struct.Memory* %call_4065f7, %struct.Memory** %MEMORY

  ; Code: addq $0x3338, %rcx	 RIP: 4065ff	 Bytes: 7
  %loadMem_4065ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4065ff = call %struct.Memory* @routine_addq__0x3338___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4065ff)
  store %struct.Memory* %call_4065ff, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rdx	 RIP: 406606	 Bytes: 4
  %loadMem_406606 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406606 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406606)
  store %struct.Memory* %call_406606, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rdx	 RIP: 40660a	 Bytes: 4
  %loadMem_40660a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40660a = call %struct.Memory* @routine_shlq__0x6___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40660a)
  store %struct.Memory* %call_40660a, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 40660e	 Bytes: 3
  %loadMem_40660e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40660e = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40660e)
  store %struct.Memory* %call_40660e, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 406611	 Bytes: 4
  %loadMem_406611 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406611 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406611)
  store %struct.Memory* %call_406611, %struct.Memory** %MEMORY

  ; Code: addl (%rcx,%rdx,4), %eax	 RIP: 406615	 Bytes: 3
  %loadMem_406615 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406615 = call %struct.Memory* @routine_addl___rcx__rdx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406615)
  store %struct.Memory* %call_406615, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rcx	 RIP: 406618	 Bytes: 4
  %loadMem_406618 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406618 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406618)
  store %struct.Memory* %call_406618, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x40(%rbp,%rcx,4)	 RIP: 40661c	 Bytes: 4
  %loadMem_40661c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40661c = call %struct.Memory* @routine_movl__eax__MINUS0x40__rbp__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40661c)
  store %struct.Memory* %call_40661c, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 406620	 Bytes: 8
  %loadMem_406620 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406620 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406620)
  store %struct.Memory* %call_406620, %struct.Memory** %MEMORY

  ; Code: addq $0x3338, %rcx	 RIP: 406628	 Bytes: 7
  %loadMem_406628 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406628 = call %struct.Memory* @routine_addq__0x3338___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406628)
  store %struct.Memory* %call_406628, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rdx	 RIP: 40662f	 Bytes: 4
  %loadMem_40662f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40662f = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40662f)
  store %struct.Memory* %call_40662f, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rdx	 RIP: 406633	 Bytes: 4
  %loadMem_406633 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406633 = call %struct.Memory* @routine_shlq__0x6___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406633)
  store %struct.Memory* %call_406633, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 406637	 Bytes: 3
  %loadMem_406637 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406637 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406637)
  store %struct.Memory* %call_406637, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rdx	 RIP: 40663a	 Bytes: 4
  %loadMem_40663a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40663a = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40663a)
  store %struct.Memory* %call_40663a, %struct.Memory** %MEMORY

  ; Code: movl (%rcx,%rdx,4), %eax	 RIP: 40663e	 Bytes: 3
  %loadMem_40663e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40663e = call %struct.Memory* @routine_movl___rcx__rdx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40663e)
  store %struct.Memory* %call_40663e, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 406641	 Bytes: 8
  %loadMem_406641 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406641 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406641)
  store %struct.Memory* %call_406641, %struct.Memory** %MEMORY

  ; Code: addq $0x3338, %rcx	 RIP: 406649	 Bytes: 7
  %loadMem_406649 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406649 = call %struct.Memory* @routine_addq__0x3338___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406649)
  store %struct.Memory* %call_406649, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rdx	 RIP: 406650	 Bytes: 4
  %loadMem_406650 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406650 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406650)
  store %struct.Memory* %call_406650, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rdx	 RIP: 406654	 Bytes: 4
  %loadMem_406654 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406654 = call %struct.Memory* @routine_shlq__0x6___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406654)
  store %struct.Memory* %call_406654, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 406658	 Bytes: 3
  %loadMem_406658 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406658 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406658)
  store %struct.Memory* %call_406658, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 40665b	 Bytes: 4
  %loadMem_40665b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40665b = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40665b)
  store %struct.Memory* %call_40665b, %struct.Memory** %MEMORY

  ; Code: subl (%rcx,%rdx,4), %eax	 RIP: 40665f	 Bytes: 3
  %loadMem_40665f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40665f = call %struct.Memory* @routine_subl___rcx__rdx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40665f)
  store %struct.Memory* %call_40665f, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rcx	 RIP: 406662	 Bytes: 4
  %loadMem_406662 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406662 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406662)
  store %struct.Memory* %call_406662, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x40(%rbp,%rcx,4)	 RIP: 406666	 Bytes: 4
  %loadMem_406666 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406666 = call %struct.Memory* @routine_movl__eax__MINUS0x40__rbp__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406666)
  store %struct.Memory* %call_406666, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 40666a	 Bytes: 3
  %loadMem_40666a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40666a = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40666a)
  store %struct.Memory* %call_40666a, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40666d	 Bytes: 3
  %loadMem_40666d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40666d = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40666d)
  store %struct.Memory* %call_40666d, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 406670	 Bytes: 3
  %loadMem_406670 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406670 = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406670)
  store %struct.Memory* %call_406670, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4065c1	 RIP: 406673	 Bytes: 5
  %loadMem_406673 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406673 = call %struct.Memory* @routine_jmpq_.L_4065c1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406673, i64 -178, i64 5)
  store %struct.Memory* %call_406673, %struct.Memory** %MEMORY

  br label %block_.L_4065c1

  ; Code: .L_406678:	 RIP: 406678	 Bytes: 0
block_.L_406678:

  ; Code: movl -0x40(%rbp), %eax	 RIP: 406678	 Bytes: 3
  %loadMem_406678 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406678 = call %struct.Memory* @routine_movl_MINUS0x40__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406678)
  store %struct.Memory* %call_406678, %struct.Memory** %MEMORY

  ; Code: addl -0x3c(%rbp), %eax	 RIP: 40667b	 Bytes: 3
  %loadMem_40667b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40667b = call %struct.Memory* @routine_addl_MINUS0x3c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40667b)
  store %struct.Memory* %call_40667b, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 40667e	 Bytes: 8
  %loadMem_40667e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40667e = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40667e)
  store %struct.Memory* %call_40667e, %struct.Memory** %MEMORY

  ; Code: addq $0x3338, %rcx	 RIP: 406686	 Bytes: 7
  %loadMem_406686 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406686 = call %struct.Memory* @routine_addq__0x3338___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406686)
  store %struct.Memory* %call_406686, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rdx	 RIP: 40668d	 Bytes: 4
  %loadMem_40668d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40668d = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40668d)
  store %struct.Memory* %call_40668d, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rdx	 RIP: 406691	 Bytes: 4
  %loadMem_406691 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406691 = call %struct.Memory* @routine_shlq__0x6___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406691)
  store %struct.Memory* %call_406691, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 406695	 Bytes: 3
  %loadMem_406695 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406695 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406695)
  store %struct.Memory* %call_406695, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx)	 RIP: 406698	 Bytes: 2
  %loadMem_406698 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406698 = call %struct.Memory* @routine_movl__eax____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406698)
  store %struct.Memory* %call_406698, %struct.Memory** %MEMORY

  ; Code: movl -0x40(%rbp), %eax	 RIP: 40669a	 Bytes: 3
  %loadMem_40669a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40669a = call %struct.Memory* @routine_movl_MINUS0x40__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40669a)
  store %struct.Memory* %call_40669a, %struct.Memory** %MEMORY

  ; Code: subl -0x3c(%rbp), %eax	 RIP: 40669d	 Bytes: 3
  %loadMem_40669d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40669d = call %struct.Memory* @routine_subl_MINUS0x3c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40669d)
  store %struct.Memory* %call_40669d, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 4066a0	 Bytes: 8
  %loadMem_4066a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4066a0 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4066a0)
  store %struct.Memory* %call_4066a0, %struct.Memory** %MEMORY

  ; Code: addq $0x3338, %rcx	 RIP: 4066a8	 Bytes: 7
  %loadMem_4066a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4066a8 = call %struct.Memory* @routine_addq__0x3338___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4066a8)
  store %struct.Memory* %call_4066a8, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rdx	 RIP: 4066af	 Bytes: 4
  %loadMem_4066af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4066af = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4066af)
  store %struct.Memory* %call_4066af, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rdx	 RIP: 4066b3	 Bytes: 4
  %loadMem_4066b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4066b3 = call %struct.Memory* @routine_shlq__0x6___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4066b3)
  store %struct.Memory* %call_4066b3, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 4066b7	 Bytes: 3
  %loadMem_4066b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4066b7 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4066b7)
  store %struct.Memory* %call_4066b7, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x8(%rcx)	 RIP: 4066ba	 Bytes: 3
  %loadMem_4066ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4066ba = call %struct.Memory* @routine_movl__eax__0x8__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4066ba)
  store %struct.Memory* %call_4066ba, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %eax	 RIP: 4066bd	 Bytes: 3
  %loadMem_4066bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4066bd = call %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4066bd)
  store %struct.Memory* %call_4066bd, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %eax	 RIP: 4066c0	 Bytes: 3
  %loadMem_4066c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4066c0 = call %struct.Memory* @routine_shll__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4066c0)
  store %struct.Memory* %call_4066c0, %struct.Memory** %MEMORY

  ; Code: addl -0x38(%rbp), %eax	 RIP: 4066c3	 Bytes: 3
  %loadMem_4066c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4066c3 = call %struct.Memory* @routine_addl_MINUS0x38__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4066c3)
  store %struct.Memory* %call_4066c3, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 4066c6	 Bytes: 8
  %loadMem_4066c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4066c6 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4066c6)
  store %struct.Memory* %call_4066c6, %struct.Memory** %MEMORY

  ; Code: addq $0x3338, %rcx	 RIP: 4066ce	 Bytes: 7
  %loadMem_4066ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4066ce = call %struct.Memory* @routine_addq__0x3338___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4066ce)
  store %struct.Memory* %call_4066ce, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rdx	 RIP: 4066d5	 Bytes: 4
  %loadMem_4066d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4066d5 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4066d5)
  store %struct.Memory* %call_4066d5, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rdx	 RIP: 4066d9	 Bytes: 4
  %loadMem_4066d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4066d9 = call %struct.Memory* @routine_shlq__0x6___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4066d9)
  store %struct.Memory* %call_4066d9, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 4066dd	 Bytes: 3
  %loadMem_4066dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4066dd = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4066dd)
  store %struct.Memory* %call_4066dd, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x4(%rcx)	 RIP: 4066e0	 Bytes: 3
  %loadMem_4066e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4066e0 = call %struct.Memory* @routine_movl__eax__0x4__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4066e0)
  store %struct.Memory* %call_4066e0, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %eax	 RIP: 4066e3	 Bytes: 3
  %loadMem_4066e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4066e3 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4066e3)
  store %struct.Memory* %call_4066e3, %struct.Memory** %MEMORY

  ; Code: movl -0x38(%rbp), %esi	 RIP: 4066e6	 Bytes: 3
  %loadMem_4066e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4066e6 = call %struct.Memory* @routine_movl_MINUS0x38__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4066e6)
  store %struct.Memory* %call_4066e6, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %esi	 RIP: 4066e9	 Bytes: 3
  %loadMem_4066e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4066e9 = call %struct.Memory* @routine_shll__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4066e9)
  store %struct.Memory* %call_4066e9, %struct.Memory** %MEMORY

  ; Code: subl %esi, %eax	 RIP: 4066ec	 Bytes: 2
  %loadMem_4066ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4066ec = call %struct.Memory* @routine_subl__esi___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4066ec)
  store %struct.Memory* %call_4066ec, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 4066ee	 Bytes: 8
  %loadMem_4066ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4066ee = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4066ee)
  store %struct.Memory* %call_4066ee, %struct.Memory** %MEMORY

  ; Code: addq $0x3338, %rcx	 RIP: 4066f6	 Bytes: 7
  %loadMem_4066f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4066f6 = call %struct.Memory* @routine_addq__0x3338___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4066f6)
  store %struct.Memory* %call_4066f6, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rdx	 RIP: 4066fd	 Bytes: 4
  %loadMem_4066fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4066fd = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4066fd)
  store %struct.Memory* %call_4066fd, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rdx	 RIP: 406701	 Bytes: 4
  %loadMem_406701 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406701 = call %struct.Memory* @routine_shlq__0x6___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406701)
  store %struct.Memory* %call_406701, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 406705	 Bytes: 3
  %loadMem_406705 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406705 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406705)
  store %struct.Memory* %call_406705, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0xc(%rcx)	 RIP: 406708	 Bytes: 3
  %loadMem_406708 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406708 = call %struct.Memory* @routine_movl__eax__0xc__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406708)
  store %struct.Memory* %call_406708, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %eax	 RIP: 40670b	 Bytes: 3
  %loadMem_40670b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40670b = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40670b)
  store %struct.Memory* %call_40670b, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40670e	 Bytes: 3
  %loadMem_40670e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40670e = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40670e)
  store %struct.Memory* %call_40670e, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x18(%rbp)	 RIP: 406711	 Bytes: 3
  %loadMem_406711 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406711 = call %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406711)
  store %struct.Memory* %call_406711, %struct.Memory** %MEMORY

  ; Code: jmpq .L_406581	 RIP: 406714	 Bytes: 5
  %loadMem_406714 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406714 = call %struct.Memory* @routine_jmpq_.L_406581(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406714, i64 -403, i64 5)
  store %struct.Memory* %call_406714, %struct.Memory** %MEMORY

  br label %block_.L_406581

  ; Code: .L_406719:	 RIP: 406719	 Bytes: 0
block_.L_406719:

  ; Code: movl $0x0, -0x64(%rbp)	 RIP: 406719	 Bytes: 7
  %loadMem_406719 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406719 = call %struct.Memory* @routine_movl__0x0__MINUS0x64__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406719)
  store %struct.Memory* %call_406719, %struct.Memory** %MEMORY

  ; Code: movl $0xffffffff, -0x60(%rbp)	 RIP: 406720	 Bytes: 7
  %loadMem_406720 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406720 = call %struct.Memory* @routine_movl__0xffffffff__MINUS0x60__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406720)
  store %struct.Memory* %call_406720, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x5c(%rbp)	 RIP: 406727	 Bytes: 7
  %loadMem_406727 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406727 = call %struct.Memory* @routine_movl__0x0__MINUS0x5c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406727)
  store %struct.Memory* %call_406727, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x54(%rbp)	 RIP: 40672e	 Bytes: 7
  %loadMem_40672e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40672e = call %struct.Memory* @routine_movl__0x0__MINUS0x54__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40672e)
  store %struct.Memory* %call_40672e, %struct.Memory** %MEMORY

  ; Code: .L_406735:	 RIP: 406735	 Bytes: 0
  br label %block_.L_406735
block_.L_406735:

  ; Code: cmpl $0x10, -0x54(%rbp)	 RIP: 406735	 Bytes: 4
  %loadMem_406735 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406735 = call %struct.Memory* @routine_cmpl__0x10__MINUS0x54__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406735)
  store %struct.Memory* %call_406735, %struct.Memory** %MEMORY

  ; Code: jge .L_406bd6	 RIP: 406739	 Bytes: 6
  %loadMem_406739 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406739 = call %struct.Memory* @routine_jge_.L_406bd6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406739, i8* %BRANCH_TAKEN, i64 1181, i64 6, i64 6)
  store %struct.Memory* %call_406739, %struct.Memory** %MEMORY

  %loadBr_406739 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_406739 = icmp eq i8 %loadBr_406739, 1
  br i1 %cmpBr_406739, label %block_.L_406bd6, label %block_40673f

block_40673f:
  ; Code: movq 0x6cb900, %rax	 RIP: 40673f	 Bytes: 8
  %loadMem_40673f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40673f = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40673f)
  store %struct.Memory* %call_40673f, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x11afc(%rax)	 RIP: 406747	 Bytes: 7
  %loadMem_406747 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406747 = call %struct.Memory* @routine_cmpl__0x0__0x11afc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406747)
  store %struct.Memory* %call_406747, %struct.Memory** %MEMORY

  ; Code: jne .L_40677d	 RIP: 40674e	 Bytes: 6
  %loadMem_40674e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40674e = call %struct.Memory* @routine_jne_.L_40677d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40674e, i8* %BRANCH_TAKEN, i64 47, i64 6, i64 6)
  store %struct.Memory* %call_40674e, %struct.Memory** %MEMORY

  %loadBr_40674e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40674e = icmp eq i8 %loadBr_40674e, 1
  br i1 %cmpBr_40674e, label %block_.L_40677d, label %block_406754

block_406754:
  ; Code: movq 0x6cb900, %rax	 RIP: 406754	 Bytes: 8
  %loadMem_406754 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406754 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406754)
  store %struct.Memory* %call_406754, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x11ad0(%rax)	 RIP: 40675c	 Bytes: 7
  %loadMem_40675c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40675c = call %struct.Memory* @routine_cmpl__0x0__0x11ad0__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40675c)
  store %struct.Memory* %call_40675c, %struct.Memory** %MEMORY

  ; Code: je .L_4067a0	 RIP: 406763	 Bytes: 6
  %loadMem_406763 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406763 = call %struct.Memory* @routine_je_.L_4067a0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406763, i8* %BRANCH_TAKEN, i64 61, i64 6, i64 6)
  store %struct.Memory* %call_406763, %struct.Memory** %MEMORY

  %loadBr_406763 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_406763 = icmp eq i8 %loadBr_406763, 1
  br i1 %cmpBr_406763, label %block_.L_4067a0, label %block_406769

block_406769:
  ; Code: movq -0x98(%rbp), %rax	 RIP: 406769	 Bytes: 7
  %loadMem_406769 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406769 = call %struct.Memory* @routine_movq_MINUS0x98__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406769)
  store %struct.Memory* %call_406769, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x214(%rax)	 RIP: 406770	 Bytes: 7
  %loadMem_406770 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406770 = call %struct.Memory* @routine_cmpl__0x0__0x214__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406770)
  store %struct.Memory* %call_406770, %struct.Memory** %MEMORY

  ; Code: je .L_4067a0	 RIP: 406777	 Bytes: 6
  %loadMem_406777 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406777 = call %struct.Memory* @routine_je_.L_4067a0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406777, i8* %BRANCH_TAKEN, i64 41, i64 6, i64 6)
  store %struct.Memory* %call_406777, %struct.Memory** %MEMORY

  %loadBr_406777 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_406777 = icmp eq i8 %loadBr_406777, 1
  br i1 %cmpBr_406777, label %block_.L_4067a0, label %block_.L_40677d

  ; Code: .L_40677d:	 RIP: 40677d	 Bytes: 0
block_.L_40677d:

  ; Code: movslq -0x54(%rbp), %rax	 RIP: 40677d	 Bytes: 4
  %loadMem_40677d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40677d = call %struct.Memory* @routine_movslq_MINUS0x54__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40677d)
  store %struct.Memory* %call_40677d, %struct.Memory** %MEMORY

  ; Code: movzbl 0x4b2380(,%rax,2), %ecx	 RIP: 406781	 Bytes: 8
  %loadMem_406781 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406781 = call %struct.Memory* @routine_movzbl_0x4b2380___rax_2____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406781)
  store %struct.Memory* %call_406781, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x18(%rbp)	 RIP: 406789	 Bytes: 3
  %loadMem_406789 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406789 = call %struct.Memory* @routine_movl__ecx__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406789)
  store %struct.Memory* %call_406789, %struct.Memory** %MEMORY

  ; Code: movslq -0x54(%rbp), %rax	 RIP: 40678c	 Bytes: 4
  %loadMem_40678c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40678c = call %struct.Memory* @routine_movslq_MINUS0x54__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40678c)
  store %struct.Memory* %call_40678c, %struct.Memory** %MEMORY

  ; Code: movzbl 0x4b2381(,%rax,2), %ecx	 RIP: 406790	 Bytes: 8
  %loadMem_406790 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406790 = call %struct.Memory* @routine_movzbl_0x4b2381___rax_2____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406790)
  store %struct.Memory* %call_406790, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x1c(%rbp)	 RIP: 406798	 Bytes: 3
  %loadMem_406798 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406798 = call %struct.Memory* @routine_movl__ecx__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406798)
  store %struct.Memory* %call_406798, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4067be	 RIP: 40679b	 Bytes: 5
  %loadMem_40679b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40679b = call %struct.Memory* @routine_jmpq_.L_4067be(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40679b, i64 35, i64 5)
  store %struct.Memory* %call_40679b, %struct.Memory** %MEMORY

  br label %block_.L_4067be

  ; Code: .L_4067a0:	 RIP: 4067a0	 Bytes: 0
block_.L_4067a0:

  ; Code: movslq -0x54(%rbp), %rax	 RIP: 4067a0	 Bytes: 4
  %loadMem_4067a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4067a0 = call %struct.Memory* @routine_movslq_MINUS0x54__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4067a0)
  store %struct.Memory* %call_4067a0, %struct.Memory** %MEMORY

  ; Code: movzbl 0x4b2360(,%rax,2), %ecx	 RIP: 4067a4	 Bytes: 8
  %loadMem_4067a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4067a4 = call %struct.Memory* @routine_movzbl_0x4b2360___rax_2____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4067a4)
  store %struct.Memory* %call_4067a4, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x18(%rbp)	 RIP: 4067ac	 Bytes: 3
  %loadMem_4067ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4067ac = call %struct.Memory* @routine_movl__ecx__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4067ac)
  store %struct.Memory* %call_4067ac, %struct.Memory** %MEMORY

  ; Code: movslq -0x54(%rbp), %rax	 RIP: 4067af	 Bytes: 4
  %loadMem_4067af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4067af = call %struct.Memory* @routine_movslq_MINUS0x54__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4067af)
  store %struct.Memory* %call_4067af, %struct.Memory** %MEMORY

  ; Code: movzbl 0x4b2361(,%rax,2), %ecx	 RIP: 4067b3	 Bytes: 8
  %loadMem_4067b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4067b3 = call %struct.Memory* @routine_movzbl_0x4b2361___rax_2____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4067b3)
  store %struct.Memory* %call_4067b3, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x1c(%rbp)	 RIP: 4067bb	 Bytes: 3
  %loadMem_4067bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4067bb = call %struct.Memory* @routine_movl__ecx__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4067bb)
  store %struct.Memory* %call_4067bb, %struct.Memory** %MEMORY

  ; Code: .L_4067be:	 RIP: 4067be	 Bytes: 0
  br label %block_.L_4067be
block_.L_4067be:

  ; Code: movl -0x60(%rbp), %eax	 RIP: 4067be	 Bytes: 3
  %loadMem_4067be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4067be = call %struct.Memory* @routine_movl_MINUS0x60__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4067be)
  store %struct.Memory* %call_4067be, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4067c1	 Bytes: 3
  %loadMem_4067c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4067c1 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4067c1)
  store %struct.Memory* %call_4067c1, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x60(%rbp)	 RIP: 4067c4	 Bytes: 3
  %loadMem_4067c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4067c4 = call %struct.Memory* @routine_movl__eax__MINUS0x60__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4067c4)
  store %struct.Memory* %call_4067c4, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x28(%rbp)	 RIP: 4067c7	 Bytes: 7
  %loadMem_4067c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4067c7 = call %struct.Memory* @routine_movl__0x0__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4067c7)
  store %struct.Memory* %call_4067c7, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0x9c(%rbp)	 RIP: 4067ce	 Bytes: 7
  %loadMem_4067ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4067ce = call %struct.Memory* @routine_cmpl__0x0__MINUS0x9c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4067ce)
  store %struct.Memory* %call_4067ce, %struct.Memory** %MEMORY

  ; Code: je .L_406808	 RIP: 4067d5	 Bytes: 6
  %loadMem_4067d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4067d5 = call %struct.Memory* @routine_je_.L_406808(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4067d5, i8* %BRANCH_TAKEN, i64 51, i64 6, i64 6)
  store %struct.Memory* %call_4067d5, %struct.Memory** %MEMORY

  %loadBr_4067d5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4067d5 = icmp eq i8 %loadBr_4067d5, 1
  br i1 %cmpBr_4067d5, label %block_.L_406808, label %block_4067db

block_4067db:
  ; Code: movq 0x6cb900, %rax	 RIP: 4067db	 Bytes: 8
  %loadMem_4067db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4067db = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4067db)
  store %struct.Memory* %call_4067db, %struct.Memory** %MEMORY

  ; Code: addq $0x3338, %rax	 RIP: 4067e3	 Bytes: 6
  %loadMem_4067e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4067e3 = call %struct.Memory* @routine_addq__0x3338___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4067e3)
  store %struct.Memory* %call_4067e3, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 4067e9	 Bytes: 4
  %loadMem_4067e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4067e9 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4067e9)
  store %struct.Memory* %call_4067e9, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rcx	 RIP: 4067ed	 Bytes: 4
  %loadMem_4067ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4067ed = call %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4067ed)
  store %struct.Memory* %call_4067ed, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4067f1	 Bytes: 3
  %loadMem_4067f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4067f1 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4067f1)
  store %struct.Memory* %call_4067f1, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rcx	 RIP: 4067f4	 Bytes: 4
  %loadMem_4067f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4067f4 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4067f4)
  store %struct.Memory* %call_4067f4, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rcx,4), %edi	 RIP: 4067f8	 Bytes: 3
  %loadMem_4067f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4067f8 = call %struct.Memory* @routine_movl___rax__rcx_4____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4067f8)
  store %struct.Memory* %call_4067f8, %struct.Memory** %MEMORY

  ; Code: callq .abs_plt	 RIP: 4067fb	 Bytes: 5
  %loadMem1_4067fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4067fb = call %struct.Memory* @routine_callq_.abs_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4067fb, i64 -22523, i64 5, i64 5)
  store %struct.Memory* %call1_4067fb, %struct.Memory** %MEMORY

  %loadMem2_4067fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4067fb = load i64, i64* %3
  %call2_4067fb = call %struct.Memory* @ext_abs(%struct.State* %0, i64  %loadPC_4067fb, %struct.Memory* %loadMem2_4067fb)
  store %struct.Memory* %call2_4067fb, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x58(%rbp)	 RIP: 406800	 Bytes: 3
  %loadMem_406800 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406800 = call %struct.Memory* @routine_movl__eax__MINUS0x58__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406800)
  store %struct.Memory* %call_406800, %struct.Memory** %MEMORY

  ; Code: jmpq .L_406914	 RIP: 406803	 Bytes: 5
  %loadMem_406803 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406803 = call %struct.Memory* @routine_jmpq_.L_406914(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406803, i64 273, i64 5)
  store %struct.Memory* %call_406803, %struct.Memory** %MEMORY

  br label %block_.L_406914

  ; Code: .L_406808:	 RIP: 406808	 Bytes: 0
block_.L_406808:

  ; Code: cmpl $0x1, -0x14(%rbp)	 RIP: 406808	 Bytes: 4
  %loadMem_406808 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406808 = call %struct.Memory* @routine_cmpl__0x1__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406808)
  store %struct.Memory* %call_406808, %struct.Memory** %MEMORY

  ; Code: jne .L_406893	 RIP: 40680c	 Bytes: 6
  %loadMem_40680c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40680c = call %struct.Memory* @routine_jne_.L_406893(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40680c, i8* %BRANCH_TAKEN, i64 135, i64 6, i64 6)
  store %struct.Memory* %call_40680c, %struct.Memory** %MEMORY

  %loadBr_40680c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40680c = icmp eq i8 %loadBr_40680c, 1
  br i1 %cmpBr_40680c, label %block_.L_406893, label %block_406812

block_406812:
  ; Code: movq 0x6cb900, %rax	 RIP: 406812	 Bytes: 8
  %loadMem_406812 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406812 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406812)
  store %struct.Memory* %call_406812, %struct.Memory** %MEMORY

  ; Code: addq $0x3338, %rax	 RIP: 40681a	 Bytes: 6
  %loadMem_40681a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40681a = call %struct.Memory* @routine_addq__0x3338___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40681a)
  store %struct.Memory* %call_40681a, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 406820	 Bytes: 4
  %loadMem_406820 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406820 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406820)
  store %struct.Memory* %call_406820, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rcx	 RIP: 406824	 Bytes: 4
  %loadMem_406824 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406824 = call %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406824)
  store %struct.Memory* %call_406824, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 406828	 Bytes: 3
  %loadMem_406828 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406828 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406828)
  store %struct.Memory* %call_406828, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rcx	 RIP: 40682b	 Bytes: 4
  %loadMem_40682b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40682b = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40682b)
  store %struct.Memory* %call_40682b, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rcx,4), %edi	 RIP: 40682f	 Bytes: 3
  %loadMem_40682f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40682f = call %struct.Memory* @routine_movl___rax__rcx_4____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40682f)
  store %struct.Memory* %call_40682f, %struct.Memory** %MEMORY

  ; Code: callq .abs_plt	 RIP: 406832	 Bytes: 5
  %loadMem1_406832 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_406832 = call %struct.Memory* @routine_callq_.abs_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_406832, i64 -22578, i64 5, i64 5)
  store %struct.Memory* %call1_406832, %struct.Memory** %MEMORY

  %loadMem2_406832 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_406832 = load i64, i64* %3
  %call2_406832 = call %struct.Memory* @ext_abs(%struct.State* %0, i64  %loadPC_406832, %struct.Memory* %loadMem2_406832)
  store %struct.Memory* %call2_406832, %struct.Memory** %MEMORY

  ; Code: movq $0x710020, %rcx	 RIP: 406837	 Bytes: 10
  %loadMem_406837 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406837 = call %struct.Memory* @routine_movq__0x710020___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406837)
  store %struct.Memory* %call_406837, %struct.Memory** %MEMORY

  ; Code: movq $0x70e8f0, %rdx	 RIP: 406841	 Bytes: 10
  %loadMem_406841 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406841 = call %struct.Memory* @routine_movq__0x70e8f0___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406841)
  store %struct.Memory* %call_406841, %struct.Memory** %MEMORY

  ; Code: movslq -0x6c(%rbp), %rsi	 RIP: 40684b	 Bytes: 4
  %loadMem_40684b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40684b = call %struct.Memory* @routine_movslq_MINUS0x6c__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40684b)
  store %struct.Memory* %call_40684b, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rsi	 RIP: 40684f	 Bytes: 4
  %loadMem_40684f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40684f = call %struct.Memory* @routine_shlq__0x6___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40684f)
  store %struct.Memory* %call_40684f, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rdx	 RIP: 406853	 Bytes: 3
  %loadMem_406853 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406853 = call %struct.Memory* @routine_addq__rsi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406853)
  store %struct.Memory* %call_406853, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rsi	 RIP: 406856	 Bytes: 4
  %loadMem_406856 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406856 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406856)
  store %struct.Memory* %call_406856, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rsi	 RIP: 40685a	 Bytes: 4
  %loadMem_40685a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40685a = call %struct.Memory* @routine_shlq__0x4___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40685a)
  store %struct.Memory* %call_40685a, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rdx	 RIP: 40685e	 Bytes: 3
  %loadMem_40685e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40685e = call %struct.Memory* @routine_addq__rsi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40685e)
  store %struct.Memory* %call_40685e, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rsi	 RIP: 406861	 Bytes: 4
  %loadMem_406861 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406861 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406861)
  store %struct.Memory* %call_406861, %struct.Memory** %MEMORY

  ; Code: imull (%rdx,%rsi,4), %eax	 RIP: 406865	 Bytes: 4
  %loadMem_406865 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406865 = call %struct.Memory* @routine_imull___rdx__rsi_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406865)
  store %struct.Memory* %call_406865, %struct.Memory** %MEMORY

  ; Code: movslq -0x68(%rbp), %rdx	 RIP: 406869	 Bytes: 4
  %loadMem_406869 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406869 = call %struct.Memory* @routine_movslq_MINUS0x68__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406869)
  store %struct.Memory* %call_406869, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rdx	 RIP: 40686d	 Bytes: 4
  %loadMem_40686d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40686d = call %struct.Memory* @routine_shlq__0x6___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40686d)
  store %struct.Memory* %call_40686d, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 406871	 Bytes: 3
  %loadMem_406871 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406871 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406871)
  store %struct.Memory* %call_406871, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rdx	 RIP: 406874	 Bytes: 4
  %loadMem_406874 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406874 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406874)
  store %struct.Memory* %call_406874, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rdx	 RIP: 406878	 Bytes: 4
  %loadMem_406878 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406878 = call %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406878)
  store %struct.Memory* %call_406878, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 40687c	 Bytes: 3
  %loadMem_40687c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40687c = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40687c)
  store %struct.Memory* %call_40687c, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rdx	 RIP: 40687f	 Bytes: 4
  %loadMem_40687f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40687f = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40687f)
  store %struct.Memory* %call_40687f, %struct.Memory** %MEMORY

  ; Code: addl (%rcx,%rdx,4), %eax	 RIP: 406883	 Bytes: 3
  %loadMem_406883 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406883 = call %struct.Memory* @routine_addl___rcx__rdx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406883)
  store %struct.Memory* %call_406883, %struct.Memory** %MEMORY

  ; Code: movl -0x70(%rbp), %ecx	 RIP: 406886	 Bytes: 3
  %loadMem_406886 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406886 = call %struct.Memory* @routine_movl_MINUS0x70__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406886)
  store %struct.Memory* %call_406886, %struct.Memory** %MEMORY

  ; Code: sarl %cl, %eax	 RIP: 406889	 Bytes: 2
  %loadMem_406889 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406889 = call %struct.Memory* @routine_sarl__cl___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406889)
  store %struct.Memory* %call_406889, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x58(%rbp)	 RIP: 40688b	 Bytes: 3
  %loadMem_40688b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40688b = call %struct.Memory* @routine_movl__eax__MINUS0x58__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40688b)
  store %struct.Memory* %call_40688b, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40690f	 RIP: 40688e	 Bytes: 5
  %loadMem_40688e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40688e = call %struct.Memory* @routine_jmpq_.L_40690f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40688e, i64 129, i64 5)
  store %struct.Memory* %call_40688e, %struct.Memory** %MEMORY

  br label %block_.L_40690f

  ; Code: .L_406893:	 RIP: 406893	 Bytes: 0
block_.L_406893:

  ; Code: movq 0x6cb900, %rax	 RIP: 406893	 Bytes: 8
  %loadMem_406893 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406893 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406893)
  store %struct.Memory* %call_406893, %struct.Memory** %MEMORY

  ; Code: addq $0x3338, %rax	 RIP: 40689b	 Bytes: 6
  %loadMem_40689b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40689b = call %struct.Memory* @routine_addq__0x3338___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40689b)
  store %struct.Memory* %call_40689b, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 4068a1	 Bytes: 4
  %loadMem_4068a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4068a1 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4068a1)
  store %struct.Memory* %call_4068a1, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rcx	 RIP: 4068a5	 Bytes: 4
  %loadMem_4068a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4068a5 = call %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4068a5)
  store %struct.Memory* %call_4068a5, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4068a9	 Bytes: 3
  %loadMem_4068a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4068a9 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4068a9)
  store %struct.Memory* %call_4068a9, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rcx	 RIP: 4068ac	 Bytes: 4
  %loadMem_4068ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4068ac = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4068ac)
  store %struct.Memory* %call_4068ac, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rcx,4), %edi	 RIP: 4068b0	 Bytes: 3
  %loadMem_4068b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4068b0 = call %struct.Memory* @routine_movl___rax__rcx_4____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4068b0)
  store %struct.Memory* %call_4068b0, %struct.Memory** %MEMORY

  ; Code: callq .abs_plt	 RIP: 4068b3	 Bytes: 5
  %loadMem1_4068b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4068b3 = call %struct.Memory* @routine_callq_.abs_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4068b3, i64 -22707, i64 5, i64 5)
  store %struct.Memory* %call1_4068b3, %struct.Memory** %MEMORY

  %loadMem2_4068b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4068b3 = load i64, i64* %3
  %call2_4068b3 = call %struct.Memory* @ext_abs(%struct.State* %0, i64  %loadPC_4068b3, %struct.Memory* %loadMem2_4068b3)
  store %struct.Memory* %call2_4068b3, %struct.Memory** %MEMORY

  ; Code: movq $0x6ccf90, %rcx	 RIP: 4068b8	 Bytes: 10
  %loadMem_4068b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4068b8 = call %struct.Memory* @routine_movq__0x6ccf90___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4068b8)
  store %struct.Memory* %call_4068b8, %struct.Memory** %MEMORY

  ; Code: movq $0x70fe80, %rdx	 RIP: 4068c2	 Bytes: 10
  %loadMem_4068c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4068c2 = call %struct.Memory* @routine_movq__0x70fe80___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4068c2)
  store %struct.Memory* %call_4068c2, %struct.Memory** %MEMORY

  ; Code: movslq -0x6c(%rbp), %rsi	 RIP: 4068cc	 Bytes: 4
  %loadMem_4068cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4068cc = call %struct.Memory* @routine_movslq_MINUS0x6c__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4068cc)
  store %struct.Memory* %call_4068cc, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rsi	 RIP: 4068d0	 Bytes: 4
  %loadMem_4068d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4068d0 = call %struct.Memory* @routine_shlq__0x6___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4068d0)
  store %struct.Memory* %call_4068d0, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rdx	 RIP: 4068d4	 Bytes: 3
  %loadMem_4068d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4068d4 = call %struct.Memory* @routine_addq__rsi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4068d4)
  store %struct.Memory* %call_4068d4, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rsi	 RIP: 4068d7	 Bytes: 4
  %loadMem_4068d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4068d7 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4068d7)
  store %struct.Memory* %call_4068d7, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rsi	 RIP: 4068db	 Bytes: 4
  %loadMem_4068db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4068db = call %struct.Memory* @routine_shlq__0x4___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4068db)
  store %struct.Memory* %call_4068db, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rdx	 RIP: 4068df	 Bytes: 3
  %loadMem_4068df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4068df = call %struct.Memory* @routine_addq__rsi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4068df)
  store %struct.Memory* %call_4068df, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rsi	 RIP: 4068e2	 Bytes: 4
  %loadMem_4068e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4068e2 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4068e2)
  store %struct.Memory* %call_4068e2, %struct.Memory** %MEMORY

  ; Code: imull (%rdx,%rsi,4), %eax	 RIP: 4068e6	 Bytes: 4
  %loadMem_4068e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4068e6 = call %struct.Memory* @routine_imull___rdx__rsi_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4068e6)
  store %struct.Memory* %call_4068e6, %struct.Memory** %MEMORY

  ; Code: movslq -0x68(%rbp), %rdx	 RIP: 4068ea	 Bytes: 4
  %loadMem_4068ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4068ea = call %struct.Memory* @routine_movslq_MINUS0x68__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4068ea)
  store %struct.Memory* %call_4068ea, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rdx	 RIP: 4068ee	 Bytes: 4
  %loadMem_4068ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4068ee = call %struct.Memory* @routine_shlq__0x6___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4068ee)
  store %struct.Memory* %call_4068ee, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 4068f2	 Bytes: 3
  %loadMem_4068f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4068f2 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4068f2)
  store %struct.Memory* %call_4068f2, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rdx	 RIP: 4068f5	 Bytes: 4
  %loadMem_4068f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4068f5 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4068f5)
  store %struct.Memory* %call_4068f5, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rdx	 RIP: 4068f9	 Bytes: 4
  %loadMem_4068f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4068f9 = call %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4068f9)
  store %struct.Memory* %call_4068f9, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 4068fd	 Bytes: 3
  %loadMem_4068fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4068fd = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4068fd)
  store %struct.Memory* %call_4068fd, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rdx	 RIP: 406900	 Bytes: 4
  %loadMem_406900 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406900 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406900)
  store %struct.Memory* %call_406900, %struct.Memory** %MEMORY

  ; Code: addl (%rcx,%rdx,4), %eax	 RIP: 406904	 Bytes: 3
  %loadMem_406904 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406904 = call %struct.Memory* @routine_addl___rcx__rdx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406904)
  store %struct.Memory* %call_406904, %struct.Memory** %MEMORY

  ; Code: movl -0x70(%rbp), %ecx	 RIP: 406907	 Bytes: 3
  %loadMem_406907 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406907 = call %struct.Memory* @routine_movl_MINUS0x70__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406907)
  store %struct.Memory* %call_406907, %struct.Memory** %MEMORY

  ; Code: sarl %cl, %eax	 RIP: 40690a	 Bytes: 2
  %loadMem_40690a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40690a = call %struct.Memory* @routine_sarl__cl___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40690a)
  store %struct.Memory* %call_40690a, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x58(%rbp)	 RIP: 40690c	 Bytes: 3
  %loadMem_40690c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40690c = call %struct.Memory* @routine_movl__eax__MINUS0x58__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40690c)
  store %struct.Memory* %call_40690c, %struct.Memory** %MEMORY

  ; Code: .L_40690f:	 RIP: 40690f	 Bytes: 0
  br label %block_.L_40690f
block_.L_40690f:

  ; Code: jmpq .L_406914	 RIP: 40690f	 Bytes: 5
  %loadMem_40690f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40690f = call %struct.Memory* @routine_jmpq_.L_406914(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40690f, i64 5, i64 5)
  store %struct.Memory* %call_40690f, %struct.Memory** %MEMORY

  br label %block_.L_406914

  ; Code: .L_406914:	 RIP: 406914	 Bytes: 0
block_.L_406914:

  ; Code: cmpl $0x0, -0x58(%rbp)	 RIP: 406914	 Bytes: 4
  %loadMem_406914 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406914 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x58__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406914)
  store %struct.Memory* %call_406914, %struct.Memory** %MEMORY

  ; Code: je .L_406b92	 RIP: 406918	 Bytes: 6
  %loadMem_406918 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406918 = call %struct.Memory* @routine_je_.L_406b92(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406918, i8* %BRANCH_TAKEN, i64 634, i64 6, i64 6)
  store %struct.Memory* %call_406918, %struct.Memory** %MEMORY

  %loadBr_406918 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_406918 = icmp eq i8 %loadBr_406918, 1
  br i1 %cmpBr_406918, label %block_.L_406b92, label %block_40691e

block_40691e:
  ; Code: movl $0x1, -0x64(%rbp)	 RIP: 40691e	 Bytes: 7
  %loadMem_40691e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40691e = call %struct.Memory* @routine_movl__0x1__MINUS0x64__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40691e)
  store %struct.Memory* %call_40691e, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, -0x58(%rbp)	 RIP: 406925	 Bytes: 4
  %loadMem_406925 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406925 = call %struct.Memory* @routine_cmpl__0x1__MINUS0x58__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406925)
  store %struct.Memory* %call_406925, %struct.Memory** %MEMORY

  ; Code: jg .L_40693c	 RIP: 406929	 Bytes: 6
  %loadMem_406929 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406929 = call %struct.Memory* @routine_jg_.L_40693c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406929, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_406929, %struct.Memory** %MEMORY

  %loadBr_406929 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_406929 = icmp eq i8 %loadBr_406929, 1
  br i1 %cmpBr_406929, label %block_.L_40693c, label %block_40692f

block_40692f:
  ; Code: cmpl $0x0, -0x9c(%rbp)	 RIP: 40692f	 Bytes: 7
  %loadMem_40692f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40692f = call %struct.Memory* @routine_cmpl__0x0__MINUS0x9c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40692f)
  store %struct.Memory* %call_40692f, %struct.Memory** %MEMORY

  ; Code: je .L_40694f	 RIP: 406936	 Bytes: 6
  %loadMem_406936 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406936 = call %struct.Memory* @routine_je_.L_40694f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406936, i8* %BRANCH_TAKEN, i64 25, i64 6, i64 6)
  store %struct.Memory* %call_406936, %struct.Memory** %MEMORY

  %loadBr_406936 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_406936 = icmp eq i8 %loadBr_406936, 1
  br i1 %cmpBr_406936, label %block_.L_40694f, label %block_.L_40693c

  ; Code: .L_40693c:	 RIP: 40693c	 Bytes: 0
block_.L_40693c:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 40693c	 Bytes: 4
  %loadMem_40693c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40693c = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40693c)
  store %struct.Memory* %call_40693c, %struct.Memory** %MEMORY

  ; Code: movl (%rax), %ecx	 RIP: 406940	 Bytes: 2
  %loadMem_406940 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406940 = call %struct.Memory* @routine_movl___rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406940)
  store %struct.Memory* %call_406940, %struct.Memory** %MEMORY

  ; Code: addl $0xf423f, %ecx	 RIP: 406942	 Bytes: 6
  %loadMem_406942 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406942 = call %struct.Memory* @routine_addl__0xf423f___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406942)
  store %struct.Memory* %call_406942, %struct.Memory** %MEMORY

  ; Code: movl %ecx, (%rax)	 RIP: 406948	 Bytes: 2
  %loadMem_406948 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406948 = call %struct.Memory* @routine_movl__ecx____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406948)
  store %struct.Memory* %call_406948, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40697f	 RIP: 40694a	 Bytes: 5
  %loadMem_40694a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40694a = call %struct.Memory* @routine_jmpq_.L_40697f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40694a, i64 53, i64 5)
  store %struct.Memory* %call_40694a, %struct.Memory** %MEMORY

  br label %block_.L_40697f

  ; Code: .L_40694f:	 RIP: 40694f	 Bytes: 0
block_.L_40694f:

  ; Code: movq $0x4b23a0, %rax	 RIP: 40694f	 Bytes: 10
  %loadMem_40694f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40694f = call %struct.Memory* @routine_movq__0x4b23a0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40694f)
  store %struct.Memory* %call_40694f, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rcx	 RIP: 406959	 Bytes: 8
  %loadMem_406959 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406959 = call %struct.Memory* @routine_movq_0x6cb8f8___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406959)
  store %struct.Memory* %call_406959, %struct.Memory** %MEMORY

  ; Code: movslq 0x9a4(%rcx), %rcx	 RIP: 406961	 Bytes: 7
  %loadMem_406961 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406961 = call %struct.Memory* @routine_movslq_0x9a4__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406961)
  store %struct.Memory* %call_406961, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rcx	 RIP: 406968	 Bytes: 4
  %loadMem_406968 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406968 = call %struct.Memory* @routine_shlq__0x4___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406968)
  store %struct.Memory* %call_406968, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 40696c	 Bytes: 3
  %loadMem_40696c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40696c = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40696c)
  store %struct.Memory* %call_40696c, %struct.Memory** %MEMORY

  ; Code: movslq -0x60(%rbp), %rcx	 RIP: 40696f	 Bytes: 4
  %loadMem_40696f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40696f = call %struct.Memory* @routine_movslq_MINUS0x60__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40696f)
  store %struct.Memory* %call_40696f, %struct.Memory** %MEMORY

  ; Code: movzbl (%rax,%rcx,1), %edx	 RIP: 406973	 Bytes: 4
  %loadMem_406973 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406973 = call %struct.Memory* @routine_movzbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406973)
  store %struct.Memory* %call_406973, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 406977	 Bytes: 4
  %loadMem_406977 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406977 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406977)
  store %struct.Memory* %call_406977, %struct.Memory** %MEMORY

  ; Code: addl (%rax), %edx	 RIP: 40697b	 Bytes: 2
  %loadMem_40697b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40697b = call %struct.Memory* @routine_addl___rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40697b)
  store %struct.Memory* %call_40697b, %struct.Memory** %MEMORY

  ; Code: movl %edx, (%rax)	 RIP: 40697d	 Bytes: 2
  %loadMem_40697d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40697d = call %struct.Memory* @routine_movl__edx____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40697d)
  store %struct.Memory* %call_40697d, %struct.Memory** %MEMORY

  ; Code: .L_40697f:	 RIP: 40697f	 Bytes: 0
  br label %block_.L_40697f
block_.L_40697f:

  ; Code: movl -0x58(%rbp), %edi	 RIP: 40697f	 Bytes: 3
  %loadMem_40697f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40697f = call %struct.Memory* @routine_movl_MINUS0x58__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40697f)
  store %struct.Memory* %call_40697f, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 406982	 Bytes: 8
  %loadMem_406982 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406982 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406982)
  store %struct.Memory* %call_406982, %struct.Memory** %MEMORY

  ; Code: addq $0x3338, %rax	 RIP: 40698a	 Bytes: 6
  %loadMem_40698a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40698a = call %struct.Memory* @routine_addq__0x3338___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40698a)
  store %struct.Memory* %call_40698a, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 406990	 Bytes: 4
  %loadMem_406990 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406990 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406990)
  store %struct.Memory* %call_406990, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rcx	 RIP: 406994	 Bytes: 4
  %loadMem_406994 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406994 = call %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406994)
  store %struct.Memory* %call_406994, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 406998	 Bytes: 3
  %loadMem_406998 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406998 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406998)
  store %struct.Memory* %call_406998, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rcx	 RIP: 40699b	 Bytes: 4
  %loadMem_40699b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40699b = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40699b)
  store %struct.Memory* %call_40699b, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rcx,4), %esi	 RIP: 40699f	 Bytes: 3
  %loadMem_40699f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40699f = call %struct.Memory* @routine_movl___rax__rcx_4____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40699f)
  store %struct.Memory* %call_40699f, %struct.Memory** %MEMORY

  ; Code: callq .sign	 RIP: 4069a2	 Bytes: 5
  %loadMem1_4069a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4069a2 = call %struct.Memory* @routine_callq_.sign(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4069a2, i64 452526, i64 5, i64 5)
  store %struct.Memory* %call1_4069a2, %struct.Memory** %MEMORY

  %loadMem2_4069a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4069a2 = load i64, i64* %3
  %call2_4069a2 = call %struct.Memory* @sub_475150.sign(%struct.State* %0, i64  %loadPC_4069a2, %struct.Memory* %loadMem2_4069a2)
  store %struct.Memory* %call2_4069a2, %struct.Memory** %MEMORY

  ; Code: movq -0x88(%rbp), %rcx	 RIP: 4069a7	 Bytes: 7
  %loadMem_4069a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4069a7 = call %struct.Memory* @routine_movq_MINUS0x88__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4069a7)
  store %struct.Memory* %call_4069a7, %struct.Memory** %MEMORY

  ; Code: movslq -0x5c(%rbp), %rdx	 RIP: 4069ae	 Bytes: 4
  %loadMem_4069ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4069ae = call %struct.Memory* @routine_movslq_MINUS0x5c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4069ae)
  store %struct.Memory* %call_4069ae, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx,%rdx,4)	 RIP: 4069b2	 Bytes: 3
  %loadMem_4069b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4069b2 = call %struct.Memory* @routine_movl__eax____rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4069b2)
  store %struct.Memory* %call_4069b2, %struct.Memory** %MEMORY

  ; Code: movl -0x60(%rbp), %eax	 RIP: 4069b5	 Bytes: 3
  %loadMem_4069b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4069b5 = call %struct.Memory* @routine_movl_MINUS0x60__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4069b5)
  store %struct.Memory* %call_4069b5, %struct.Memory** %MEMORY

  ; Code: movq -0x90(%rbp), %rcx	 RIP: 4069b8	 Bytes: 7
  %loadMem_4069b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4069b8 = call %struct.Memory* @routine_movq_MINUS0x90__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4069b8)
  store %struct.Memory* %call_4069b8, %struct.Memory** %MEMORY

  ; Code: movslq -0x5c(%rbp), %rdx	 RIP: 4069bf	 Bytes: 4
  %loadMem_4069bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4069bf = call %struct.Memory* @routine_movslq_MINUS0x5c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4069bf)
  store %struct.Memory* %call_4069bf, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx,%rdx,4)	 RIP: 4069c3	 Bytes: 3
  %loadMem_4069c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4069c3 = call %struct.Memory* @routine_movl__eax____rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4069c3)
  store %struct.Memory* %call_4069c3, %struct.Memory** %MEMORY

  ; Code: movl -0x5c(%rbp), %eax	 RIP: 4069c6	 Bytes: 3
  %loadMem_4069c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4069c6 = call %struct.Memory* @routine_movl_MINUS0x5c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4069c6)
  store %struct.Memory* %call_4069c6, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4069c9	 Bytes: 3
  %loadMem_4069c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4069c9 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4069c9)
  store %struct.Memory* %call_4069c9, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x5c(%rbp)	 RIP: 4069cc	 Bytes: 3
  %loadMem_4069cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4069cc = call %struct.Memory* @routine_movl__eax__MINUS0x5c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4069cc)
  store %struct.Memory* %call_4069cc, %struct.Memory** %MEMORY

  ; Code: movl $0xffffffff, -0x60(%rbp)	 RIP: 4069cf	 Bytes: 7
  %loadMem_4069cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4069cf = call %struct.Memory* @routine_movl__0xffffffff__MINUS0x60__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4069cf)
  store %struct.Memory* %call_4069cf, %struct.Memory** %MEMORY

  ; Code: movl -0x58(%rbp), %edi	 RIP: 4069d6	 Bytes: 3
  %loadMem_4069d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4069d6 = call %struct.Memory* @routine_movl_MINUS0x58__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4069d6)
  store %struct.Memory* %call_4069d6, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 4069d9	 Bytes: 8
  %loadMem_4069d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4069d9 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4069d9)
  store %struct.Memory* %call_4069d9, %struct.Memory** %MEMORY

  ; Code: addq $0x3338, %rcx	 RIP: 4069e1	 Bytes: 7
  %loadMem_4069e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4069e1 = call %struct.Memory* @routine_addq__0x3338___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4069e1)
  store %struct.Memory* %call_4069e1, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rdx	 RIP: 4069e8	 Bytes: 4
  %loadMem_4069e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4069e8 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4069e8)
  store %struct.Memory* %call_4069e8, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rdx	 RIP: 4069ec	 Bytes: 4
  %loadMem_4069ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4069ec = call %struct.Memory* @routine_shlq__0x6___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4069ec)
  store %struct.Memory* %call_4069ec, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 4069f0	 Bytes: 3
  %loadMem_4069f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4069f0 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4069f0)
  store %struct.Memory* %call_4069f0, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rdx	 RIP: 4069f3	 Bytes: 4
  %loadMem_4069f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4069f3 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4069f3)
  store %struct.Memory* %call_4069f3, %struct.Memory** %MEMORY

  ; Code: movl (%rcx,%rdx,4), %esi	 RIP: 4069f7	 Bytes: 3
  %loadMem_4069f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4069f7 = call %struct.Memory* @routine_movl___rcx__rdx_4____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4069f7)
  store %struct.Memory* %call_4069f7, %struct.Memory** %MEMORY

  ; Code: callq .sign	 RIP: 4069fa	 Bytes: 5
  %loadMem1_4069fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4069fa = call %struct.Memory* @routine_callq_.sign(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4069fa, i64 452438, i64 5, i64 5)
  store %struct.Memory* %call1_4069fa, %struct.Memory** %MEMORY

  %loadMem2_4069fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4069fa = load i64, i64* %3
  %call2_4069fa = call %struct.Memory* @sub_475150.sign(%struct.State* %0, i64  %loadPC_4069fa, %struct.Memory* %loadMem2_4069fa)
  store %struct.Memory* %call2_4069fa, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x58(%rbp)	 RIP: 4069ff	 Bytes: 3
  %loadMem_4069ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4069ff = call %struct.Memory* @routine_movl__eax__MINUS0x58__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4069ff)
  store %struct.Memory* %call_4069ff, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0x9c(%rbp)	 RIP: 406a02	 Bytes: 7
  %loadMem_406a02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406a02 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x9c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406a02)
  store %struct.Memory* %call_406a02, %struct.Memory** %MEMORY

  ; Code: je .L_406a1a	 RIP: 406a09	 Bytes: 6
  %loadMem_406a09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406a09 = call %struct.Memory* @routine_je_.L_406a1a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406a09, i8* %BRANCH_TAKEN, i64 17, i64 6, i64 6)
  store %struct.Memory* %call_406a09, %struct.Memory** %MEMORY

  %loadBr_406a09 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_406a09 = icmp eq i8 %loadBr_406a09, 1
  br i1 %cmpBr_406a09, label %block_.L_406a1a, label %block_406a0f

block_406a0f:
  ; Code: movl -0x58(%rbp), %eax	 RIP: 406a0f	 Bytes: 3
  %loadMem_406a0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406a0f = call %struct.Memory* @routine_movl_MINUS0x58__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406a0f)
  store %struct.Memory* %call_406a0f, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x28(%rbp)	 RIP: 406a12	 Bytes: 3
  %loadMem_406a12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406a12 = call %struct.Memory* @routine_movl__eax__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406a12)
  store %struct.Memory* %call_406a12, %struct.Memory** %MEMORY

  ; Code: jmpq .L_406b8d	 RIP: 406a15	 Bytes: 5
  %loadMem_406a15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406a15 = call %struct.Memory* @routine_jmpq_.L_406b8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406a15, i64 376, i64 5)
  store %struct.Memory* %call_406a15, %struct.Memory** %MEMORY

  br label %block_.L_406b8d

  ; Code: .L_406a1a:	 RIP: 406a1a	 Bytes: 0
block_.L_406a1a:

  ; Code: cmpl $0x4, -0x68(%rbp)	 RIP: 406a1a	 Bytes: 4
  %loadMem_406a1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406a1a = call %struct.Memory* @routine_cmpl__0x4__MINUS0x68__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406a1a)
  store %struct.Memory* %call_406a1a, %struct.Memory** %MEMORY

  ; Code: jge .L_406aec	 RIP: 406a1e	 Bytes: 6
  %loadMem_406a1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406a1e = call %struct.Memory* @routine_jge_.L_406aec(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406a1e, i8* %BRANCH_TAKEN, i64 206, i64 6, i64 6)
  store %struct.Memory* %call_406a1e, %struct.Memory** %MEMORY

  %loadBr_406a1e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_406a1e = icmp eq i8 %loadBr_406a1e, 1
  br i1 %cmpBr_406a1e, label %block_.L_406aec, label %block_406a24

block_406a24:
  ; Code: cmpl $0x1, -0x14(%rbp)	 RIP: 406a24	 Bytes: 4
  %loadMem_406a24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406a24 = call %struct.Memory* @routine_cmpl__0x1__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406a24)
  store %struct.Memory* %call_406a24, %struct.Memory** %MEMORY

  ; Code: jne .L_406a8d	 RIP: 406a28	 Bytes: 6
  %loadMem_406a28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406a28 = call %struct.Memory* @routine_jne_.L_406a8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406a28, i8* %BRANCH_TAKEN, i64 101, i64 6, i64 6)
  store %struct.Memory* %call_406a28, %struct.Memory** %MEMORY

  %loadBr_406a28 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_406a28 = icmp eq i8 %loadBr_406a28, 1
  br i1 %cmpBr_406a28, label %block_.L_406a8d, label %block_406a2e

block_406a2e:
  ; Code: movl $0x4, %eax	 RIP: 406a2e	 Bytes: 5
  %loadMem_406a2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406a2e = call %struct.Memory* @routine_movl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406a2e)
  store %struct.Memory* %call_406a2e, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %ecx	 RIP: 406a33	 Bytes: 5
  %loadMem_406a33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406a33 = call %struct.Memory* @routine_movl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406a33)
  store %struct.Memory* %call_406a33, %struct.Memory** %MEMORY

  ; Code: movl $0x3, %edx	 RIP: 406a38	 Bytes: 5
  %loadMem_406a38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406a38 = call %struct.Memory* @routine_movl__0x3___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406a38)
  store %struct.Memory* %call_406a38, %struct.Memory** %MEMORY

  ; Code: movq $0x70d010, %rsi	 RIP: 406a3d	 Bytes: 10
  %loadMem_406a3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406a3d = call %struct.Memory* @routine_movq__0x70d010___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406a3d)
  store %struct.Memory* %call_406a3d, %struct.Memory** %MEMORY

  ; Code: movl -0x58(%rbp), %edi	 RIP: 406a47	 Bytes: 3
  %loadMem_406a47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406a47 = call %struct.Memory* @routine_movl_MINUS0x58__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406a47)
  store %struct.Memory* %call_406a47, %struct.Memory** %MEMORY

  ; Code: movslq -0x6c(%rbp), %r8	 RIP: 406a4a	 Bytes: 4
  %loadMem_406a4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406a4a = call %struct.Memory* @routine_movslq_MINUS0x6c__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406a4a)
  store %struct.Memory* %call_406a4a, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %r8	 RIP: 406a4e	 Bytes: 4
  %loadMem_406a4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406a4e = call %struct.Memory* @routine_shlq__0x6___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406a4e)
  store %struct.Memory* %call_406a4e, %struct.Memory** %MEMORY

  ; Code: addq %r8, %rsi	 RIP: 406a52	 Bytes: 3
  %loadMem_406a52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406a52 = call %struct.Memory* @routine_addq__r8___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406a52)
  store %struct.Memory* %call_406a52, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %r8	 RIP: 406a55	 Bytes: 4
  %loadMem_406a55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406a55 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406a55)
  store %struct.Memory* %call_406a55, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %r8	 RIP: 406a59	 Bytes: 4
  %loadMem_406a59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406a59 = call %struct.Memory* @routine_shlq__0x4___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406a59)
  store %struct.Memory* %call_406a59, %struct.Memory** %MEMORY

  ; Code: addq %r8, %rsi	 RIP: 406a5d	 Bytes: 3
  %loadMem_406a5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406a5d = call %struct.Memory* @routine_addq__r8___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406a5d)
  store %struct.Memory* %call_406a5d, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %r8	 RIP: 406a60	 Bytes: 4
  %loadMem_406a60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406a60 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406a60)
  store %struct.Memory* %call_406a60, %struct.Memory** %MEMORY

  ; Code: imull (%rsi,%r8,4), %edi	 RIP: 406a64	 Bytes: 5
  %loadMem_406a64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406a64 = call %struct.Memory* @routine_imull___rsi__r8_4____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406a64)
  store %struct.Memory* %call_406a64, %struct.Memory** %MEMORY

  ; Code: subl -0x68(%rbp), %edx	 RIP: 406a69	 Bytes: 3
  %loadMem_406a69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406a69 = call %struct.Memory* @routine_subl_MINUS0x68__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406a69)
  store %struct.Memory* %call_406a69, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0xb0(%rbp)	 RIP: 406a6c	 Bytes: 6
  %loadMem_406a6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406a6c = call %struct.Memory* @routine_movl__ecx__MINUS0xb0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406a6c)
  store %struct.Memory* %call_406a6c, %struct.Memory** %MEMORY

  ; Code: movl %edx, %ecx	 RIP: 406a72	 Bytes: 2
  %loadMem_406a72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406a72 = call %struct.Memory* @routine_movl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406a72)
  store %struct.Memory* %call_406a72, %struct.Memory** %MEMORY

  ; Code: movl -0xb0(%rbp), %edx	 RIP: 406a74	 Bytes: 6
  %loadMem_406a74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406a74 = call %struct.Memory* @routine_movl_MINUS0xb0__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406a74)
  store %struct.Memory* %call_406a74, %struct.Memory** %MEMORY

  ; Code: shll %cl, %edx	 RIP: 406a7a	 Bytes: 2
  %loadMem_406a7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406a7a = call %struct.Memory* @routine_shll__cl___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406a7a)
  store %struct.Memory* %call_406a7a, %struct.Memory** %MEMORY

  ; Code: addl %edx, %edi	 RIP: 406a7c	 Bytes: 2
  %loadMem_406a7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406a7c = call %struct.Memory* @routine_addl__edx___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406a7c)
  store %struct.Memory* %call_406a7c, %struct.Memory** %MEMORY

  ; Code: subl -0x68(%rbp), %eax	 RIP: 406a7e	 Bytes: 3
  %loadMem_406a7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406a7e = call %struct.Memory* @routine_subl_MINUS0x68__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406a7e)
  store %struct.Memory* %call_406a7e, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 406a81	 Bytes: 2
  %loadMem_406a81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406a81 = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406a81)
  store %struct.Memory* %call_406a81, %struct.Memory** %MEMORY

  ; Code: sarl %cl, %edi	 RIP: 406a83	 Bytes: 2
  %loadMem_406a83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406a83 = call %struct.Memory* @routine_sarl__cl___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406a83)
  store %struct.Memory* %call_406a83, %struct.Memory** %MEMORY

  ; Code: movl %edi, -0x28(%rbp)	 RIP: 406a85	 Bytes: 3
  %loadMem_406a85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406a85 = call %struct.Memory* @routine_movl__edi__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406a85)
  store %struct.Memory* %call_406a85, %struct.Memory** %MEMORY

  ; Code: jmpq .L_406ae7	 RIP: 406a88	 Bytes: 5
  %loadMem_406a88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406a88 = call %struct.Memory* @routine_jmpq_.L_406ae7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406a88, i64 95, i64 5)
  store %struct.Memory* %call_406a88, %struct.Memory** %MEMORY

  br label %block_.L_406ae7

  ; Code: .L_406a8d:	 RIP: 406a8d	 Bytes: 0
block_.L_406a8d:

  ; Code: movl $0x4, %eax	 RIP: 406a8d	 Bytes: 5
  %loadMem_406a8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406a8d = call %struct.Memory* @routine_movl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406a8d)
  store %struct.Memory* %call_406a8d, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %ecx	 RIP: 406a92	 Bytes: 5
  %loadMem_406a92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406a92 = call %struct.Memory* @routine_movl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406a92)
  store %struct.Memory* %call_406a92, %struct.Memory** %MEMORY

  ; Code: movl $0x3, %edx	 RIP: 406a97	 Bytes: 5
  %loadMem_406a97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406a97 = call %struct.Memory* @routine_movl__0x3___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406a97)
  store %struct.Memory* %call_406a97, %struct.Memory** %MEMORY

  ; Code: movq $0x6d09f0, %rsi	 RIP: 406a9c	 Bytes: 10
  %loadMem_406a9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406a9c = call %struct.Memory* @routine_movq__0x6d09f0___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406a9c)
  store %struct.Memory* %call_406a9c, %struct.Memory** %MEMORY

  ; Code: movl -0x58(%rbp), %edi	 RIP: 406aa6	 Bytes: 3
  %loadMem_406aa6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406aa6 = call %struct.Memory* @routine_movl_MINUS0x58__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406aa6)
  store %struct.Memory* %call_406aa6, %struct.Memory** %MEMORY

  ; Code: movslq -0x6c(%rbp), %r8	 RIP: 406aa9	 Bytes: 4
  %loadMem_406aa9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406aa9 = call %struct.Memory* @routine_movslq_MINUS0x6c__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406aa9)
  store %struct.Memory* %call_406aa9, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %r8	 RIP: 406aad	 Bytes: 4
  %loadMem_406aad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406aad = call %struct.Memory* @routine_shlq__0x6___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406aad)
  store %struct.Memory* %call_406aad, %struct.Memory** %MEMORY

  ; Code: addq %r8, %rsi	 RIP: 406ab1	 Bytes: 3
  %loadMem_406ab1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406ab1 = call %struct.Memory* @routine_addq__r8___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406ab1)
  store %struct.Memory* %call_406ab1, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %r8	 RIP: 406ab4	 Bytes: 4
  %loadMem_406ab4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406ab4 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406ab4)
  store %struct.Memory* %call_406ab4, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %r8	 RIP: 406ab8	 Bytes: 4
  %loadMem_406ab8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406ab8 = call %struct.Memory* @routine_shlq__0x4___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406ab8)
  store %struct.Memory* %call_406ab8, %struct.Memory** %MEMORY

  ; Code: addq %r8, %rsi	 RIP: 406abc	 Bytes: 3
  %loadMem_406abc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406abc = call %struct.Memory* @routine_addq__r8___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406abc)
  store %struct.Memory* %call_406abc, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %r8	 RIP: 406abf	 Bytes: 4
  %loadMem_406abf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406abf = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406abf)
  store %struct.Memory* %call_406abf, %struct.Memory** %MEMORY

  ; Code: imull (%rsi,%r8,4), %edi	 RIP: 406ac3	 Bytes: 5
  %loadMem_406ac3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406ac3 = call %struct.Memory* @routine_imull___rsi__r8_4____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406ac3)
  store %struct.Memory* %call_406ac3, %struct.Memory** %MEMORY

  ; Code: subl -0x68(%rbp), %edx	 RIP: 406ac8	 Bytes: 3
  %loadMem_406ac8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406ac8 = call %struct.Memory* @routine_subl_MINUS0x68__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406ac8)
  store %struct.Memory* %call_406ac8, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0xb4(%rbp)	 RIP: 406acb	 Bytes: 6
  %loadMem_406acb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406acb = call %struct.Memory* @routine_movl__ecx__MINUS0xb4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406acb)
  store %struct.Memory* %call_406acb, %struct.Memory** %MEMORY

  ; Code: movl %edx, %ecx	 RIP: 406ad1	 Bytes: 2
  %loadMem_406ad1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406ad1 = call %struct.Memory* @routine_movl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406ad1)
  store %struct.Memory* %call_406ad1, %struct.Memory** %MEMORY

  ; Code: movl -0xb4(%rbp), %edx	 RIP: 406ad3	 Bytes: 6
  %loadMem_406ad3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406ad3 = call %struct.Memory* @routine_movl_MINUS0xb4__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406ad3)
  store %struct.Memory* %call_406ad3, %struct.Memory** %MEMORY

  ; Code: shll %cl, %edx	 RIP: 406ad9	 Bytes: 2
  %loadMem_406ad9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406ad9 = call %struct.Memory* @routine_shll__cl___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406ad9)
  store %struct.Memory* %call_406ad9, %struct.Memory** %MEMORY

  ; Code: addl %edx, %edi	 RIP: 406adb	 Bytes: 2
  %loadMem_406adb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406adb = call %struct.Memory* @routine_addl__edx___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406adb)
  store %struct.Memory* %call_406adb, %struct.Memory** %MEMORY

  ; Code: subl -0x68(%rbp), %eax	 RIP: 406add	 Bytes: 3
  %loadMem_406add = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406add = call %struct.Memory* @routine_subl_MINUS0x68__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406add)
  store %struct.Memory* %call_406add, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 406ae0	 Bytes: 2
  %loadMem_406ae0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406ae0 = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406ae0)
  store %struct.Memory* %call_406ae0, %struct.Memory** %MEMORY

  ; Code: sarl %cl, %edi	 RIP: 406ae2	 Bytes: 2
  %loadMem_406ae2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406ae2 = call %struct.Memory* @routine_sarl__cl___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406ae2)
  store %struct.Memory* %call_406ae2, %struct.Memory** %MEMORY

  ; Code: movl %edi, -0x28(%rbp)	 RIP: 406ae4	 Bytes: 3
  %loadMem_406ae4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406ae4 = call %struct.Memory* @routine_movl__edi__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406ae4)
  store %struct.Memory* %call_406ae4, %struct.Memory** %MEMORY

  ; Code: .L_406ae7:	 RIP: 406ae7	 Bytes: 0
  br label %block_.L_406ae7
block_.L_406ae7:

  ; Code: jmpq .L_406b88	 RIP: 406ae7	 Bytes: 5
  %loadMem_406ae7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406ae7 = call %struct.Memory* @routine_jmpq_.L_406b88(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406ae7, i64 161, i64 5)
  store %struct.Memory* %call_406ae7, %struct.Memory** %MEMORY

  br label %block_.L_406b88

  ; Code: .L_406aec:	 RIP: 406aec	 Bytes: 0
block_.L_406aec:

  ; Code: cmpl $0x1, -0x14(%rbp)	 RIP: 406aec	 Bytes: 4
  %loadMem_406aec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406aec = call %struct.Memory* @routine_cmpl__0x1__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406aec)
  store %struct.Memory* %call_406aec, %struct.Memory** %MEMORY

  ; Code: jne .L_406b3f	 RIP: 406af0	 Bytes: 6
  %loadMem_406af0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406af0 = call %struct.Memory* @routine_jne_.L_406b3f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406af0, i8* %BRANCH_TAKEN, i64 79, i64 6, i64 6)
  store %struct.Memory* %call_406af0, %struct.Memory** %MEMORY

  %loadBr_406af0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_406af0 = icmp eq i8 %loadBr_406af0, 1
  br i1 %cmpBr_406af0, label %block_.L_406b3f, label %block_406af6

block_406af6:
  ; Code: movq $0x70d010, %rax	 RIP: 406af6	 Bytes: 10
  %loadMem_406af6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406af6 = call %struct.Memory* @routine_movq__0x70d010___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406af6)
  store %struct.Memory* %call_406af6, %struct.Memory** %MEMORY

  ; Code: movl -0x58(%rbp), %ecx	 RIP: 406b00	 Bytes: 3
  %loadMem_406b00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406b00 = call %struct.Memory* @routine_movl_MINUS0x58__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406b00)
  store %struct.Memory* %call_406b00, %struct.Memory** %MEMORY

  ; Code: movslq -0x6c(%rbp), %rdx	 RIP: 406b03	 Bytes: 4
  %loadMem_406b03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406b03 = call %struct.Memory* @routine_movslq_MINUS0x6c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406b03)
  store %struct.Memory* %call_406b03, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rdx	 RIP: 406b07	 Bytes: 4
  %loadMem_406b07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406b07 = call %struct.Memory* @routine_shlq__0x6___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406b07)
  store %struct.Memory* %call_406b07, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 406b0b	 Bytes: 3
  %loadMem_406b0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406b0b = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406b0b)
  store %struct.Memory* %call_406b0b, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rdx	 RIP: 406b0e	 Bytes: 4
  %loadMem_406b0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406b0e = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406b0e)
  store %struct.Memory* %call_406b0e, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rdx	 RIP: 406b12	 Bytes: 4
  %loadMem_406b12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406b12 = call %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406b12)
  store %struct.Memory* %call_406b12, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 406b16	 Bytes: 3
  %loadMem_406b16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406b16 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406b16)
  store %struct.Memory* %call_406b16, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rdx	 RIP: 406b19	 Bytes: 4
  %loadMem_406b19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406b19 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406b19)
  store %struct.Memory* %call_406b19, %struct.Memory** %MEMORY

  ; Code: imull (%rax,%rdx,4), %ecx	 RIP: 406b1d	 Bytes: 4
  %loadMem_406b1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406b1d = call %struct.Memory* @routine_imull___rax__rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406b1d)
  store %struct.Memory* %call_406b1d, %struct.Memory** %MEMORY

  ; Code: movl -0x68(%rbp), %esi	 RIP: 406b21	 Bytes: 3
  %loadMem_406b21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406b21 = call %struct.Memory* @routine_movl_MINUS0x68__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406b21)
  store %struct.Memory* %call_406b21, %struct.Memory** %MEMORY

  ; Code: subl $0x4, %esi	 RIP: 406b24	 Bytes: 3
  %loadMem_406b24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406b24 = call %struct.Memory* @routine_subl__0x4___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406b24)
  store %struct.Memory* %call_406b24, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0xb8(%rbp)	 RIP: 406b27	 Bytes: 6
  %loadMem_406b27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406b27 = call %struct.Memory* @routine_movl__ecx__MINUS0xb8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406b27)
  store %struct.Memory* %call_406b27, %struct.Memory** %MEMORY

  ; Code: movl %esi, %ecx	 RIP: 406b2d	 Bytes: 2
  %loadMem_406b2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406b2d = call %struct.Memory* @routine_movl__esi___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406b2d)
  store %struct.Memory* %call_406b2d, %struct.Memory** %MEMORY

  ; Code: movl -0xb8(%rbp), %esi	 RIP: 406b2f	 Bytes: 6
  %loadMem_406b2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406b2f = call %struct.Memory* @routine_movl_MINUS0xb8__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406b2f)
  store %struct.Memory* %call_406b2f, %struct.Memory** %MEMORY

  ; Code: shll %cl, %esi	 RIP: 406b35	 Bytes: 2
  %loadMem_406b35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406b35 = call %struct.Memory* @routine_shll__cl___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406b35)
  store %struct.Memory* %call_406b35, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x28(%rbp)	 RIP: 406b37	 Bytes: 3
  %loadMem_406b37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406b37 = call %struct.Memory* @routine_movl__esi__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406b37)
  store %struct.Memory* %call_406b37, %struct.Memory** %MEMORY

  ; Code: jmpq .L_406b83	 RIP: 406b3a	 Bytes: 5
  %loadMem_406b3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406b3a = call %struct.Memory* @routine_jmpq_.L_406b83(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406b3a, i64 73, i64 5)
  store %struct.Memory* %call_406b3a, %struct.Memory** %MEMORY

  br label %block_.L_406b83

  ; Code: .L_406b3f:	 RIP: 406b3f	 Bytes: 0
block_.L_406b3f:

  ; Code: movq $0x6d09f0, %rax	 RIP: 406b3f	 Bytes: 10
  %loadMem_406b3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406b3f = call %struct.Memory* @routine_movq__0x6d09f0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406b3f)
  store %struct.Memory* %call_406b3f, %struct.Memory** %MEMORY

  ; Code: movl -0x58(%rbp), %ecx	 RIP: 406b49	 Bytes: 3
  %loadMem_406b49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406b49 = call %struct.Memory* @routine_movl_MINUS0x58__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406b49)
  store %struct.Memory* %call_406b49, %struct.Memory** %MEMORY

  ; Code: movslq -0x6c(%rbp), %rdx	 RIP: 406b4c	 Bytes: 4
  %loadMem_406b4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406b4c = call %struct.Memory* @routine_movslq_MINUS0x6c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406b4c)
  store %struct.Memory* %call_406b4c, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rdx	 RIP: 406b50	 Bytes: 4
  %loadMem_406b50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406b50 = call %struct.Memory* @routine_shlq__0x6___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406b50)
  store %struct.Memory* %call_406b50, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 406b54	 Bytes: 3
  %loadMem_406b54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406b54 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406b54)
  store %struct.Memory* %call_406b54, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rdx	 RIP: 406b57	 Bytes: 4
  %loadMem_406b57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406b57 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406b57)
  store %struct.Memory* %call_406b57, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rdx	 RIP: 406b5b	 Bytes: 4
  %loadMem_406b5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406b5b = call %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406b5b)
  store %struct.Memory* %call_406b5b, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 406b5f	 Bytes: 3
  %loadMem_406b5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406b5f = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406b5f)
  store %struct.Memory* %call_406b5f, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rdx	 RIP: 406b62	 Bytes: 4
  %loadMem_406b62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406b62 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406b62)
  store %struct.Memory* %call_406b62, %struct.Memory** %MEMORY

  ; Code: imull (%rax,%rdx,4), %ecx	 RIP: 406b66	 Bytes: 4
  %loadMem_406b66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406b66 = call %struct.Memory* @routine_imull___rax__rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406b66)
  store %struct.Memory* %call_406b66, %struct.Memory** %MEMORY

  ; Code: movl -0x68(%rbp), %esi	 RIP: 406b6a	 Bytes: 3
  %loadMem_406b6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406b6a = call %struct.Memory* @routine_movl_MINUS0x68__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406b6a)
  store %struct.Memory* %call_406b6a, %struct.Memory** %MEMORY

  ; Code: subl $0x4, %esi	 RIP: 406b6d	 Bytes: 3
  %loadMem_406b6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406b6d = call %struct.Memory* @routine_subl__0x4___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406b6d)
  store %struct.Memory* %call_406b6d, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0xbc(%rbp)	 RIP: 406b70	 Bytes: 6
  %loadMem_406b70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406b70 = call %struct.Memory* @routine_movl__ecx__MINUS0xbc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406b70)
  store %struct.Memory* %call_406b70, %struct.Memory** %MEMORY

  ; Code: movl %esi, %ecx	 RIP: 406b76	 Bytes: 2
  %loadMem_406b76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406b76 = call %struct.Memory* @routine_movl__esi___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406b76)
  store %struct.Memory* %call_406b76, %struct.Memory** %MEMORY

  ; Code: movl -0xbc(%rbp), %esi	 RIP: 406b78	 Bytes: 6
  %loadMem_406b78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406b78 = call %struct.Memory* @routine_movl_MINUS0xbc__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406b78)
  store %struct.Memory* %call_406b78, %struct.Memory** %MEMORY

  ; Code: shll %cl, %esi	 RIP: 406b7e	 Bytes: 2
  %loadMem_406b7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406b7e = call %struct.Memory* @routine_shll__cl___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406b7e)
  store %struct.Memory* %call_406b7e, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x28(%rbp)	 RIP: 406b80	 Bytes: 3
  %loadMem_406b80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406b80 = call %struct.Memory* @routine_movl__esi__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406b80)
  store %struct.Memory* %call_406b80, %struct.Memory** %MEMORY

  ; Code: .L_406b83:	 RIP: 406b83	 Bytes: 0
  br label %block_.L_406b83
block_.L_406b83:

  ; Code: jmpq .L_406b88	 RIP: 406b83	 Bytes: 5
  %loadMem_406b83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406b83 = call %struct.Memory* @routine_jmpq_.L_406b88(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406b83, i64 5, i64 5)
  store %struct.Memory* %call_406b83, %struct.Memory** %MEMORY

  br label %block_.L_406b88

  ; Code: .L_406b88:	 RIP: 406b88	 Bytes: 0
block_.L_406b88:

  ; Code: jmpq .L_406b8d	 RIP: 406b88	 Bytes: 5
  %loadMem_406b88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406b88 = call %struct.Memory* @routine_jmpq_.L_406b8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406b88, i64 5, i64 5)
  store %struct.Memory* %call_406b88, %struct.Memory** %MEMORY

  br label %block_.L_406b8d

  ; Code: .L_406b8d:	 RIP: 406b8d	 Bytes: 0
block_.L_406b8d:

  ; Code: jmpq .L_406b92	 RIP: 406b8d	 Bytes: 5
  %loadMem_406b8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406b8d = call %struct.Memory* @routine_jmpq_.L_406b92(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406b8d, i64 5, i64 5)
  store %struct.Memory* %call_406b8d, %struct.Memory** %MEMORY

  br label %block_.L_406b92

  ; Code: .L_406b92:	 RIP: 406b92	 Bytes: 0
block_.L_406b92:

  ; Code: cmpl $0x0, -0x9c(%rbp)	 RIP: 406b92	 Bytes: 7
  %loadMem_406b92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406b92 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x9c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406b92)
  store %struct.Memory* %call_406b92, %struct.Memory** %MEMORY

  ; Code: jne .L_406bc3	 RIP: 406b99	 Bytes: 6
  %loadMem_406b99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406b99 = call %struct.Memory* @routine_jne_.L_406bc3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406b99, i8* %BRANCH_TAKEN, i64 42, i64 6, i64 6)
  store %struct.Memory* %call_406b99, %struct.Memory** %MEMORY

  %loadBr_406b99 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_406b99 = icmp eq i8 %loadBr_406b99, 1
  br i1 %cmpBr_406b99, label %block_.L_406bc3, label %block_406b9f

block_406b9f:
  ; Code: movl -0x28(%rbp), %eax	 RIP: 406b9f	 Bytes: 3
  %loadMem_406b9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406b9f = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406b9f)
  store %struct.Memory* %call_406b9f, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 406ba2	 Bytes: 8
  %loadMem_406ba2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406ba2 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406ba2)
  store %struct.Memory* %call_406ba2, %struct.Memory** %MEMORY

  ; Code: addq $0x3338, %rcx	 RIP: 406baa	 Bytes: 7
  %loadMem_406baa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406baa = call %struct.Memory* @routine_addq__0x3338___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406baa)
  store %struct.Memory* %call_406baa, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rdx	 RIP: 406bb1	 Bytes: 4
  %loadMem_406bb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406bb1 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406bb1)
  store %struct.Memory* %call_406bb1, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rdx	 RIP: 406bb5	 Bytes: 4
  %loadMem_406bb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406bb5 = call %struct.Memory* @routine_shlq__0x6___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406bb5)
  store %struct.Memory* %call_406bb5, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 406bb9	 Bytes: 3
  %loadMem_406bb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406bb9 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406bb9)
  store %struct.Memory* %call_406bb9, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rdx	 RIP: 406bbc	 Bytes: 4
  %loadMem_406bbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406bbc = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406bbc)
  store %struct.Memory* %call_406bbc, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx,%rdx,4)	 RIP: 406bc0	 Bytes: 3
  %loadMem_406bc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406bc0 = call %struct.Memory* @routine_movl__eax____rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406bc0)
  store %struct.Memory* %call_406bc0, %struct.Memory** %MEMORY

  ; Code: .L_406bc3:	 RIP: 406bc3	 Bytes: 0
  br label %block_.L_406bc3
block_.L_406bc3:

  ; Code: jmpq .L_406bc8	 RIP: 406bc3	 Bytes: 5
  %loadMem_406bc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406bc3 = call %struct.Memory* @routine_jmpq_.L_406bc8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406bc3, i64 5, i64 5)
  store %struct.Memory* %call_406bc3, %struct.Memory** %MEMORY

  br label %block_.L_406bc8

  ; Code: .L_406bc8:	 RIP: 406bc8	 Bytes: 0
block_.L_406bc8:

  ; Code: movl -0x54(%rbp), %eax	 RIP: 406bc8	 Bytes: 3
  %loadMem_406bc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406bc8 = call %struct.Memory* @routine_movl_MINUS0x54__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406bc8)
  store %struct.Memory* %call_406bc8, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 406bcb	 Bytes: 3
  %loadMem_406bcb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406bcb = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406bcb)
  store %struct.Memory* %call_406bcb, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x54(%rbp)	 RIP: 406bce	 Bytes: 3
  %loadMem_406bce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406bce = call %struct.Memory* @routine_movl__eax__MINUS0x54__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406bce)
  store %struct.Memory* %call_406bce, %struct.Memory** %MEMORY

  ; Code: jmpq .L_406735	 RIP: 406bd1	 Bytes: 5
  %loadMem_406bd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406bd1 = call %struct.Memory* @routine_jmpq_.L_406735(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406bd1, i64 -1180, i64 5)
  store %struct.Memory* %call_406bd1, %struct.Memory** %MEMORY

  br label %block_.L_406735

  ; Code: .L_406bd6:	 RIP: 406bd6	 Bytes: 0
block_.L_406bd6:

  ; Code: movq -0x88(%rbp), %rax	 RIP: 406bd6	 Bytes: 7
  %loadMem_406bd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406bd6 = call %struct.Memory* @routine_movq_MINUS0x88__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406bd6)
  store %struct.Memory* %call_406bd6, %struct.Memory** %MEMORY

  ; Code: movslq -0x5c(%rbp), %rcx	 RIP: 406bdd	 Bytes: 4
  %loadMem_406bdd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406bdd = call %struct.Memory* @routine_movslq_MINUS0x5c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406bdd)
  store %struct.Memory* %call_406bdd, %struct.Memory** %MEMORY

  ; Code: movl $0x0, (%rax,%rcx,4)	 RIP: 406be1	 Bytes: 7
  %loadMem_406be1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406be1 = call %struct.Memory* @routine_movl__0x0____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406be1)
  store %struct.Memory* %call_406be1, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x1c(%rbp)	 RIP: 406be8	 Bytes: 7
  %loadMem_406be8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406be8 = call %struct.Memory* @routine_movl__0x0__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406be8)
  store %struct.Memory* %call_406be8, %struct.Memory** %MEMORY

  ; Code: .L_406bef:	 RIP: 406bef	 Bytes: 0
  br label %block_.L_406bef
block_.L_406bef:

  ; Code: xorl %eax, %eax	 RIP: 406bef	 Bytes: 2
  %loadMem_406bef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406bef = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406bef)
  store %struct.Memory* %call_406bef, %struct.Memory** %MEMORY

  ; Code: movb %al, %cl	 RIP: 406bf1	 Bytes: 2
  %loadMem_406bf1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406bf1 = call %struct.Memory* @routine_movb__al___cl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406bf1)
  store %struct.Memory* %call_406bf1, %struct.Memory** %MEMORY

  ; Code: cmpl $0x4, -0x1c(%rbp)	 RIP: 406bf3	 Bytes: 4
  %loadMem_406bf3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406bf3 = call %struct.Memory* @routine_cmpl__0x4__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406bf3)
  store %struct.Memory* %call_406bf3, %struct.Memory** %MEMORY

  ; Code: movb %cl, -0xbd(%rbp)	 RIP: 406bf7	 Bytes: 6
  %loadMem_406bf7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406bf7 = call %struct.Memory* @routine_movb__cl__MINUS0xbd__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406bf7)
  store %struct.Memory* %call_406bf7, %struct.Memory** %MEMORY

  ; Code: jge .L_406c15	 RIP: 406bfd	 Bytes: 6
  %loadMem_406bfd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406bfd = call %struct.Memory* @routine_jge_.L_406c15(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406bfd, i8* %BRANCH_TAKEN, i64 24, i64 6, i64 6)
  store %struct.Memory* %call_406bfd, %struct.Memory** %MEMORY

  %loadBr_406bfd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_406bfd = icmp eq i8 %loadBr_406bfd, 1
  br i1 %cmpBr_406bfd, label %block_.L_406c15, label %block_406c03

block_406c03:
  ; Code: cmpl $0x0, -0x9c(%rbp)	 RIP: 406c03	 Bytes: 7
  %loadMem_406c03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406c03 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x9c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406c03)
  store %struct.Memory* %call_406c03, %struct.Memory** %MEMORY

  ; Code: setne %al	 RIP: 406c0a	 Bytes: 3
  %loadMem_406c0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406c0a = call %struct.Memory* @routine_setne__al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406c0a)
  store %struct.Memory* %call_406c0a, %struct.Memory** %MEMORY

  ; Code: xorb $0xff, %al	 RIP: 406c0d	 Bytes: 2
  %loadMem_406c0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406c0d = call %struct.Memory* @routine_xorb__0xff___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406c0d)
  store %struct.Memory* %call_406c0d, %struct.Memory** %MEMORY

  ; Code: movb %al, -0xbd(%rbp)	 RIP: 406c0f	 Bytes: 6
  %loadMem_406c0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406c0f = call %struct.Memory* @routine_movb__al__MINUS0xbd__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406c0f)
  store %struct.Memory* %call_406c0f, %struct.Memory** %MEMORY

  ; Code: .L_406c15:	 RIP: 406c15	 Bytes: 0
  br label %block_.L_406c15
block_.L_406c15:

  ; Code: movb -0xbd(%rbp), %al	 RIP: 406c15	 Bytes: 6
  %loadMem_406c15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406c15 = call %struct.Memory* @routine_movb_MINUS0xbd__rbp____al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406c15)
  store %struct.Memory* %call_406c15, %struct.Memory** %MEMORY

  ; Code: testb $0x1, %al	 RIP: 406c1b	 Bytes: 2
  %loadMem_406c1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406c1b = call %struct.Memory* @routine_testb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406c1b)
  store %struct.Memory* %call_406c1b, %struct.Memory** %MEMORY

  ; Code: jne .L_406c28	 RIP: 406c1d	 Bytes: 6
  %loadMem_406c1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406c1d = call %struct.Memory* @routine_jne_.L_406c28(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406c1d, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_406c1d, %struct.Memory** %MEMORY

  %loadBr_406c1d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_406c1d = icmp eq i8 %loadBr_406c1d, 1
  br i1 %cmpBr_406c1d, label %block_.L_406c28, label %block_406c23

block_406c23:
  ; Code: jmpq .L_406d3a	 RIP: 406c23	 Bytes: 5
  %loadMem_406c23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406c23 = call %struct.Memory* @routine_jmpq_.L_406d3a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406c23, i64 279, i64 5)
  store %struct.Memory* %call_406c23, %struct.Memory** %MEMORY

  br label %block_.L_406d3a

  ; Code: .L_406c28:	 RIP: 406c28	 Bytes: 0
block_.L_406c28:

  ; Code: movl $0x0, -0x18(%rbp)	 RIP: 406c28	 Bytes: 7
  %loadMem_406c28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406c28 = call %struct.Memory* @routine_movl__0x0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406c28)
  store %struct.Memory* %call_406c28, %struct.Memory** %MEMORY

  ; Code: .L_406c2f:	 RIP: 406c2f	 Bytes: 0
  br label %block_.L_406c2f
block_.L_406c2f:

  ; Code: cmpl $0x4, -0x18(%rbp)	 RIP: 406c2f	 Bytes: 4
  %loadMem_406c2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406c2f = call %struct.Memory* @routine_cmpl__0x4__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406c2f)
  store %struct.Memory* %call_406c2f, %struct.Memory** %MEMORY

  ; Code: jge .L_406c6f	 RIP: 406c33	 Bytes: 6
  %loadMem_406c33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406c33 = call %struct.Memory* @routine_jge_.L_406c6f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406c33, i8* %BRANCH_TAKEN, i64 60, i64 6, i64 6)
  store %struct.Memory* %call_406c33, %struct.Memory** %MEMORY

  %loadBr_406c33 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_406c33 = icmp eq i8 %loadBr_406c33, 1
  br i1 %cmpBr_406c33, label %block_.L_406c6f, label %block_406c39

block_406c39:
  ; Code: movq 0x6cb900, %rax	 RIP: 406c39	 Bytes: 8
  %loadMem_406c39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406c39 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406c39)
  store %struct.Memory* %call_406c39, %struct.Memory** %MEMORY

  ; Code: addq $0x3338, %rax	 RIP: 406c41	 Bytes: 6
  %loadMem_406c41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406c41 = call %struct.Memory* @routine_addq__0x3338___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406c41)
  store %struct.Memory* %call_406c41, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 406c47	 Bytes: 4
  %loadMem_406c47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406c47 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406c47)
  store %struct.Memory* %call_406c47, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rcx	 RIP: 406c4b	 Bytes: 4
  %loadMem_406c4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406c4b = call %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406c4b)
  store %struct.Memory* %call_406c4b, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 406c4f	 Bytes: 3
  %loadMem_406c4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406c4f = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406c4f)
  store %struct.Memory* %call_406c4f, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rcx	 RIP: 406c52	 Bytes: 4
  %loadMem_406c52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406c52 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406c52)
  store %struct.Memory* %call_406c52, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rcx,4), %edx	 RIP: 406c56	 Bytes: 3
  %loadMem_406c56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406c56 = call %struct.Memory* @routine_movl___rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406c56)
  store %struct.Memory* %call_406c56, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rax	 RIP: 406c59	 Bytes: 4
  %loadMem_406c59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406c59 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406c59)
  store %struct.Memory* %call_406c59, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x40(%rbp,%rax,4)	 RIP: 406c5d	 Bytes: 4
  %loadMem_406c5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406c5d = call %struct.Memory* @routine_movl__edx__MINUS0x40__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406c5d)
  store %struct.Memory* %call_406c5d, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %eax	 RIP: 406c61	 Bytes: 3
  %loadMem_406c61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406c61 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406c61)
  store %struct.Memory* %call_406c61, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 406c64	 Bytes: 3
  %loadMem_406c64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406c64 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406c64)
  store %struct.Memory* %call_406c64, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x18(%rbp)	 RIP: 406c67	 Bytes: 3
  %loadMem_406c67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406c67 = call %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406c67)
  store %struct.Memory* %call_406c67, %struct.Memory** %MEMORY

  ; Code: jmpq .L_406c2f	 RIP: 406c6a	 Bytes: 5
  %loadMem_406c6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406c6a = call %struct.Memory* @routine_jmpq_.L_406c2f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406c6a, i64 -59, i64 5)
  store %struct.Memory* %call_406c6a, %struct.Memory** %MEMORY

  br label %block_.L_406c2f

  ; Code: .L_406c6f:	 RIP: 406c6f	 Bytes: 0
block_.L_406c6f:

  ; Code: movl -0x40(%rbp), %eax	 RIP: 406c6f	 Bytes: 3
  %loadMem_406c6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406c6f = call %struct.Memory* @routine_movl_MINUS0x40__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406c6f)
  store %struct.Memory* %call_406c6f, %struct.Memory** %MEMORY

  ; Code: addl -0x38(%rbp), %eax	 RIP: 406c72	 Bytes: 3
  %loadMem_406c72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406c72 = call %struct.Memory* @routine_addl_MINUS0x38__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406c72)
  store %struct.Memory* %call_406c72, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x50(%rbp)	 RIP: 406c75	 Bytes: 3
  %loadMem_406c75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406c75 = call %struct.Memory* @routine_movl__eax__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406c75)
  store %struct.Memory* %call_406c75, %struct.Memory** %MEMORY

  ; Code: movl -0x40(%rbp), %eax	 RIP: 406c78	 Bytes: 3
  %loadMem_406c78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406c78 = call %struct.Memory* @routine_movl_MINUS0x40__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406c78)
  store %struct.Memory* %call_406c78, %struct.Memory** %MEMORY

  ; Code: subl -0x38(%rbp), %eax	 RIP: 406c7b	 Bytes: 3
  %loadMem_406c7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406c7b = call %struct.Memory* @routine_subl_MINUS0x38__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406c7b)
  store %struct.Memory* %call_406c7b, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4c(%rbp)	 RIP: 406c7e	 Bytes: 3
  %loadMem_406c7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406c7e = call %struct.Memory* @routine_movl__eax__MINUS0x4c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406c7e)
  store %struct.Memory* %call_406c7e, %struct.Memory** %MEMORY

  ; Code: movl -0x3c(%rbp), %eax	 RIP: 406c81	 Bytes: 3
  %loadMem_406c81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406c81 = call %struct.Memory* @routine_movl_MINUS0x3c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406c81)
  store %struct.Memory* %call_406c81, %struct.Memory** %MEMORY

  ; Code: sarl $0x1, %eax	 RIP: 406c84	 Bytes: 3
  %loadMem_406c84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406c84 = call %struct.Memory* @routine_sarl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406c84)
  store %struct.Memory* %call_406c84, %struct.Memory** %MEMORY

  ; Code: subl -0x34(%rbp), %eax	 RIP: 406c87	 Bytes: 3
  %loadMem_406c87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406c87 = call %struct.Memory* @routine_subl_MINUS0x34__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406c87)
  store %struct.Memory* %call_406c87, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x48(%rbp)	 RIP: 406c8a	 Bytes: 3
  %loadMem_406c8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406c8a = call %struct.Memory* @routine_movl__eax__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406c8a)
  store %struct.Memory* %call_406c8a, %struct.Memory** %MEMORY

  ; Code: movl -0x3c(%rbp), %eax	 RIP: 406c8d	 Bytes: 3
  %loadMem_406c8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406c8d = call %struct.Memory* @routine_movl_MINUS0x3c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406c8d)
  store %struct.Memory* %call_406c8d, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %ecx	 RIP: 406c90	 Bytes: 3
  %loadMem_406c90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406c90 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406c90)
  store %struct.Memory* %call_406c90, %struct.Memory** %MEMORY

  ; Code: sarl $0x1, %ecx	 RIP: 406c93	 Bytes: 3
  %loadMem_406c93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406c93 = call %struct.Memory* @routine_sarl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406c93)
  store %struct.Memory* %call_406c93, %struct.Memory** %MEMORY

  ; Code: addl %ecx, %eax	 RIP: 406c96	 Bytes: 2
  %loadMem_406c96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406c96 = call %struct.Memory* @routine_addl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406c96)
  store %struct.Memory* %call_406c96, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x44(%rbp)	 RIP: 406c98	 Bytes: 3
  %loadMem_406c98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406c98 = call %struct.Memory* @routine_movl__eax__MINUS0x44__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406c98)
  store %struct.Memory* %call_406c98, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x18(%rbp)	 RIP: 406c9b	 Bytes: 7
  %loadMem_406c9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406c9b = call %struct.Memory* @routine_movl__0x0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406c9b)
  store %struct.Memory* %call_406c9b, %struct.Memory** %MEMORY

  ; Code: .L_406ca2:	 RIP: 406ca2	 Bytes: 0
  br label %block_.L_406ca2
block_.L_406ca2:

  ; Code: cmpl $0x2, -0x18(%rbp)	 RIP: 406ca2	 Bytes: 4
  %loadMem_406ca2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406ca2 = call %struct.Memory* @routine_cmpl__0x2__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406ca2)
  store %struct.Memory* %call_406ca2, %struct.Memory** %MEMORY

  ; Code: jge .L_406d27	 RIP: 406ca6	 Bytes: 6
  %loadMem_406ca6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406ca6 = call %struct.Memory* @routine_jge_.L_406d27(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406ca6, i8* %BRANCH_TAKEN, i64 129, i64 6, i64 6)
  store %struct.Memory* %call_406ca6, %struct.Memory** %MEMORY

  %loadBr_406ca6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_406ca6 = icmp eq i8 %loadBr_406ca6, 1
  br i1 %cmpBr_406ca6, label %block_.L_406d27, label %block_406cac

block_406cac:
  ; Code: movl $0x3, %eax	 RIP: 406cac	 Bytes: 5
  %loadMem_406cac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406cac = call %struct.Memory* @routine_movl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406cac)
  store %struct.Memory* %call_406cac, %struct.Memory** %MEMORY

  ; Code: subl -0x18(%rbp), %eax	 RIP: 406cb1	 Bytes: 3
  %loadMem_406cb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406cb1 = call %struct.Memory* @routine_subl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406cb1)
  store %struct.Memory* %call_406cb1, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x20(%rbp)	 RIP: 406cb4	 Bytes: 3
  %loadMem_406cb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406cb4 = call %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406cb4)
  store %struct.Memory* %call_406cb4, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 406cb7	 Bytes: 4
  %loadMem_406cb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406cb7 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406cb7)
  store %struct.Memory* %call_406cb7, %struct.Memory** %MEMORY

  ; Code: movl -0x50(%rbp,%rcx,4), %eax	 RIP: 406cbb	 Bytes: 4
  %loadMem_406cbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406cbb = call %struct.Memory* @routine_movl_MINUS0x50__rbp__rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406cbb)
  store %struct.Memory* %call_406cbb, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rcx	 RIP: 406cbf	 Bytes: 4
  %loadMem_406cbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406cbf = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406cbf)
  store %struct.Memory* %call_406cbf, %struct.Memory** %MEMORY

  ; Code: addl -0x50(%rbp,%rcx,4), %eax	 RIP: 406cc3	 Bytes: 4
  %loadMem_406cc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406cc3 = call %struct.Memory* @routine_addl_MINUS0x50__rbp__rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406cc3)
  store %struct.Memory* %call_406cc3, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 406cc7	 Bytes: 8
  %loadMem_406cc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406cc7 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406cc7)
  store %struct.Memory* %call_406cc7, %struct.Memory** %MEMORY

  ; Code: addq $0x3338, %rcx	 RIP: 406ccf	 Bytes: 7
  %loadMem_406ccf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406ccf = call %struct.Memory* @routine_addq__0x3338___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406ccf)
  store %struct.Memory* %call_406ccf, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rdx	 RIP: 406cd6	 Bytes: 4
  %loadMem_406cd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406cd6 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406cd6)
  store %struct.Memory* %call_406cd6, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rdx	 RIP: 406cda	 Bytes: 4
  %loadMem_406cda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406cda = call %struct.Memory* @routine_shlq__0x6___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406cda)
  store %struct.Memory* %call_406cda, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 406cde	 Bytes: 3
  %loadMem_406cde = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406cde = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406cde)
  store %struct.Memory* %call_406cde, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rdx	 RIP: 406ce1	 Bytes: 4
  %loadMem_406ce1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406ce1 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406ce1)
  store %struct.Memory* %call_406ce1, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx,%rdx,4)	 RIP: 406ce5	 Bytes: 3
  %loadMem_406ce5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406ce5 = call %struct.Memory* @routine_movl__eax____rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406ce5)
  store %struct.Memory* %call_406ce5, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 406ce8	 Bytes: 4
  %loadMem_406ce8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406ce8 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406ce8)
  store %struct.Memory* %call_406ce8, %struct.Memory** %MEMORY

  ; Code: movl -0x50(%rbp,%rcx,4), %eax	 RIP: 406cec	 Bytes: 4
  %loadMem_406cec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406cec = call %struct.Memory* @routine_movl_MINUS0x50__rbp__rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406cec)
  store %struct.Memory* %call_406cec, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rcx	 RIP: 406cf0	 Bytes: 4
  %loadMem_406cf0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406cf0 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406cf0)
  store %struct.Memory* %call_406cf0, %struct.Memory** %MEMORY

  ; Code: subl -0x50(%rbp,%rcx,4), %eax	 RIP: 406cf4	 Bytes: 4
  %loadMem_406cf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406cf4 = call %struct.Memory* @routine_subl_MINUS0x50__rbp__rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406cf4)
  store %struct.Memory* %call_406cf4, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 406cf8	 Bytes: 8
  %loadMem_406cf8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406cf8 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406cf8)
  store %struct.Memory* %call_406cf8, %struct.Memory** %MEMORY

  ; Code: addq $0x3338, %rcx	 RIP: 406d00	 Bytes: 7
  %loadMem_406d00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406d00 = call %struct.Memory* @routine_addq__0x3338___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406d00)
  store %struct.Memory* %call_406d00, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 406d07	 Bytes: 4
  %loadMem_406d07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406d07 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406d07)
  store %struct.Memory* %call_406d07, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rdx	 RIP: 406d0b	 Bytes: 4
  %loadMem_406d0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406d0b = call %struct.Memory* @routine_shlq__0x6___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406d0b)
  store %struct.Memory* %call_406d0b, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 406d0f	 Bytes: 3
  %loadMem_406d0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406d0f = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406d0f)
  store %struct.Memory* %call_406d0f, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rdx	 RIP: 406d12	 Bytes: 4
  %loadMem_406d12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406d12 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406d12)
  store %struct.Memory* %call_406d12, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx,%rdx,4)	 RIP: 406d16	 Bytes: 3
  %loadMem_406d16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406d16 = call %struct.Memory* @routine_movl__eax____rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406d16)
  store %struct.Memory* %call_406d16, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %eax	 RIP: 406d19	 Bytes: 3
  %loadMem_406d19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406d19 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406d19)
  store %struct.Memory* %call_406d19, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 406d1c	 Bytes: 3
  %loadMem_406d1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406d1c = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406d1c)
  store %struct.Memory* %call_406d1c, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x18(%rbp)	 RIP: 406d1f	 Bytes: 3
  %loadMem_406d1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406d1f = call %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406d1f)
  store %struct.Memory* %call_406d1f, %struct.Memory** %MEMORY

  ; Code: jmpq .L_406ca2	 RIP: 406d22	 Bytes: 5
  %loadMem_406d22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406d22 = call %struct.Memory* @routine_jmpq_.L_406ca2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406d22, i64 -128, i64 5)
  store %struct.Memory* %call_406d22, %struct.Memory** %MEMORY

  br label %block_.L_406ca2

  ; Code: .L_406d27:	 RIP: 406d27	 Bytes: 0
block_.L_406d27:

  ; Code: jmpq .L_406d2c	 RIP: 406d27	 Bytes: 5
  %loadMem_406d27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406d27 = call %struct.Memory* @routine_jmpq_.L_406d2c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406d27, i64 5, i64 5)
  store %struct.Memory* %call_406d27, %struct.Memory** %MEMORY

  br label %block_.L_406d2c

  ; Code: .L_406d2c:	 RIP: 406d2c	 Bytes: 0
block_.L_406d2c:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 406d2c	 Bytes: 3
  %loadMem_406d2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406d2c = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406d2c)
  store %struct.Memory* %call_406d2c, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 406d2f	 Bytes: 3
  %loadMem_406d2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406d2f = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406d2f)
  store %struct.Memory* %call_406d2f, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 406d32	 Bytes: 3
  %loadMem_406d32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406d32 = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406d32)
  store %struct.Memory* %call_406d32, %struct.Memory** %MEMORY

  ; Code: jmpq .L_406bef	 RIP: 406d35	 Bytes: 5
  %loadMem_406d35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406d35 = call %struct.Memory* @routine_jmpq_.L_406bef(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406d35, i64 -326, i64 5)
  store %struct.Memory* %call_406d35, %struct.Memory** %MEMORY

  br label %block_.L_406bef

  ; Code: .L_406d3a:	 RIP: 406d3a	 Bytes: 0
block_.L_406d3a:

  ; Code: movl $0x0, -0x18(%rbp)	 RIP: 406d3a	 Bytes: 7
  %loadMem_406d3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406d3a = call %struct.Memory* @routine_movl__0x0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406d3a)
  store %struct.Memory* %call_406d3a, %struct.Memory** %MEMORY

  ; Code: .L_406d41:	 RIP: 406d41	 Bytes: 0
  br label %block_.L_406d41
block_.L_406d41:

  ; Code: xorl %eax, %eax	 RIP: 406d41	 Bytes: 2
  %loadMem_406d41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406d41 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406d41)
  store %struct.Memory* %call_406d41, %struct.Memory** %MEMORY

  ; Code: movb %al, %cl	 RIP: 406d43	 Bytes: 2
  %loadMem_406d43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406d43 = call %struct.Memory* @routine_movb__al___cl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406d43)
  store %struct.Memory* %call_406d43, %struct.Memory** %MEMORY

  ; Code: cmpl $0x4, -0x18(%rbp)	 RIP: 406d45	 Bytes: 4
  %loadMem_406d45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406d45 = call %struct.Memory* @routine_cmpl__0x4__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406d45)
  store %struct.Memory* %call_406d45, %struct.Memory** %MEMORY

  ; Code: movb %cl, -0xbe(%rbp)	 RIP: 406d49	 Bytes: 6
  %loadMem_406d49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406d49 = call %struct.Memory* @routine_movb__cl__MINUS0xbe__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406d49)
  store %struct.Memory* %call_406d49, %struct.Memory** %MEMORY

  ; Code: jge .L_406d67	 RIP: 406d4f	 Bytes: 6
  %loadMem_406d4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406d4f = call %struct.Memory* @routine_jge_.L_406d67(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406d4f, i8* %BRANCH_TAKEN, i64 24, i64 6, i64 6)
  store %struct.Memory* %call_406d4f, %struct.Memory** %MEMORY

  %loadBr_406d4f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_406d4f = icmp eq i8 %loadBr_406d4f, 1
  br i1 %cmpBr_406d4f, label %block_.L_406d67, label %block_406d55

block_406d55:
  ; Code: cmpl $0x0, -0x9c(%rbp)	 RIP: 406d55	 Bytes: 7
  %loadMem_406d55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406d55 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x9c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406d55)
  store %struct.Memory* %call_406d55, %struct.Memory** %MEMORY

  ; Code: setne %al	 RIP: 406d5c	 Bytes: 3
  %loadMem_406d5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406d5c = call %struct.Memory* @routine_setne__al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406d5c)
  store %struct.Memory* %call_406d5c, %struct.Memory** %MEMORY

  ; Code: xorb $0xff, %al	 RIP: 406d5f	 Bytes: 2
  %loadMem_406d5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406d5f = call %struct.Memory* @routine_xorb__0xff___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406d5f)
  store %struct.Memory* %call_406d5f, %struct.Memory** %MEMORY

  ; Code: movb %al, -0xbe(%rbp)	 RIP: 406d61	 Bytes: 6
  %loadMem_406d61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406d61 = call %struct.Memory* @routine_movb__al__MINUS0xbe__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406d61)
  store %struct.Memory* %call_406d61, %struct.Memory** %MEMORY

  ; Code: .L_406d67:	 RIP: 406d67	 Bytes: 0
  br label %block_.L_406d67
block_.L_406d67:

  ; Code: movb -0xbe(%rbp), %al	 RIP: 406d67	 Bytes: 6
  %loadMem_406d67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406d67 = call %struct.Memory* @routine_movb_MINUS0xbe__rbp____al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406d67)
  store %struct.Memory* %call_406d67, %struct.Memory** %MEMORY

  ; Code: testb $0x1, %al	 RIP: 406d6d	 Bytes: 2
  %loadMem_406d6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406d6d = call %struct.Memory* @routine_testb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406d6d)
  store %struct.Memory* %call_406d6d, %struct.Memory** %MEMORY

  ; Code: jne .L_406d7a	 RIP: 406d6f	 Bytes: 6
  %loadMem_406d6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406d6f = call %struct.Memory* @routine_jne_.L_406d7a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406d6f, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_406d6f, %struct.Memory** %MEMORY

  %loadBr_406d6f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_406d6f = icmp eq i8 %loadBr_406d6f, 1
  br i1 %cmpBr_406d6f, label %block_.L_406d7a, label %block_406d75

block_406d75:
  ; Code: jmpq .L_40733c	 RIP: 406d75	 Bytes: 5
  %loadMem_406d75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406d75 = call %struct.Memory* @routine_jmpq_.L_40733c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406d75, i64 1479, i64 5)
  store %struct.Memory* %call_406d75, %struct.Memory** %MEMORY

  br label %block_.L_40733c

  ; Code: .L_406d7a:	 RIP: 406d7a	 Bytes: 0
block_.L_406d7a:

  ; Code: movl $0x0, -0x1c(%rbp)	 RIP: 406d7a	 Bytes: 7
  %loadMem_406d7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406d7a = call %struct.Memory* @routine_movl__0x0__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406d7a)
  store %struct.Memory* %call_406d7a, %struct.Memory** %MEMORY

  ; Code: .L_406d81:	 RIP: 406d81	 Bytes: 0
  br label %block_.L_406d81
block_.L_406d81:

  ; Code: cmpl $0x4, -0x1c(%rbp)	 RIP: 406d81	 Bytes: 4
  %loadMem_406d81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406d81 = call %struct.Memory* @routine_cmpl__0x4__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406d81)
  store %struct.Memory* %call_406d81, %struct.Memory** %MEMORY

  ; Code: jge .L_406dc1	 RIP: 406d85	 Bytes: 6
  %loadMem_406d85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406d85 = call %struct.Memory* @routine_jge_.L_406dc1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406d85, i8* %BRANCH_TAKEN, i64 60, i64 6, i64 6)
  store %struct.Memory* %call_406d85, %struct.Memory** %MEMORY

  %loadBr_406d85 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_406d85 = icmp eq i8 %loadBr_406d85, 1
  br i1 %cmpBr_406d85, label %block_.L_406dc1, label %block_406d8b

block_406d8b:
  ; Code: movq 0x6cb900, %rax	 RIP: 406d8b	 Bytes: 8
  %loadMem_406d8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406d8b = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406d8b)
  store %struct.Memory* %call_406d8b, %struct.Memory** %MEMORY

  ; Code: addq $0x3338, %rax	 RIP: 406d93	 Bytes: 6
  %loadMem_406d93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406d93 = call %struct.Memory* @routine_addq__0x3338___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406d93)
  store %struct.Memory* %call_406d93, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 406d99	 Bytes: 4
  %loadMem_406d99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406d99 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406d99)
  store %struct.Memory* %call_406d99, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rcx	 RIP: 406d9d	 Bytes: 4
  %loadMem_406d9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406d9d = call %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406d9d)
  store %struct.Memory* %call_406d9d, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 406da1	 Bytes: 3
  %loadMem_406da1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406da1 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406da1)
  store %struct.Memory* %call_406da1, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rcx	 RIP: 406da4	 Bytes: 4
  %loadMem_406da4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406da4 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406da4)
  store %struct.Memory* %call_406da4, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rcx,4), %edx	 RIP: 406da8	 Bytes: 3
  %loadMem_406da8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406da8 = call %struct.Memory* @routine_movl___rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406da8)
  store %struct.Memory* %call_406da8, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rax	 RIP: 406dab	 Bytes: 4
  %loadMem_406dab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406dab = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406dab)
  store %struct.Memory* %call_406dab, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x40(%rbp,%rax,4)	 RIP: 406daf	 Bytes: 4
  %loadMem_406daf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406daf = call %struct.Memory* @routine_movl__edx__MINUS0x40__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406daf)
  store %struct.Memory* %call_406daf, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 406db3	 Bytes: 3
  %loadMem_406db3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406db3 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406db3)
  store %struct.Memory* %call_406db3, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 406db6	 Bytes: 3
  %loadMem_406db6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406db6 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406db6)
  store %struct.Memory* %call_406db6, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 406db9	 Bytes: 3
  %loadMem_406db9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406db9 = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406db9)
  store %struct.Memory* %call_406db9, %struct.Memory** %MEMORY

  ; Code: jmpq .L_406d81	 RIP: 406dbc	 Bytes: 5
  %loadMem_406dbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406dbc = call %struct.Memory* @routine_jmpq_.L_406d81(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406dbc, i64 -59, i64 5)
  store %struct.Memory* %call_406dbc, %struct.Memory** %MEMORY

  br label %block_.L_406d81

  ; Code: .L_406dc1:	 RIP: 406dc1	 Bytes: 0
block_.L_406dc1:

  ; Code: movl -0x40(%rbp), %eax	 RIP: 406dc1	 Bytes: 3
  %loadMem_406dc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406dc1 = call %struct.Memory* @routine_movl_MINUS0x40__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406dc1)
  store %struct.Memory* %call_406dc1, %struct.Memory** %MEMORY

  ; Code: addl -0x38(%rbp), %eax	 RIP: 406dc4	 Bytes: 3
  %loadMem_406dc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406dc4 = call %struct.Memory* @routine_addl_MINUS0x38__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406dc4)
  store %struct.Memory* %call_406dc4, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x50(%rbp)	 RIP: 406dc7	 Bytes: 3
  %loadMem_406dc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406dc7 = call %struct.Memory* @routine_movl__eax__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406dc7)
  store %struct.Memory* %call_406dc7, %struct.Memory** %MEMORY

  ; Code: movl -0x40(%rbp), %eax	 RIP: 406dca	 Bytes: 3
  %loadMem_406dca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406dca = call %struct.Memory* @routine_movl_MINUS0x40__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406dca)
  store %struct.Memory* %call_406dca, %struct.Memory** %MEMORY

  ; Code: subl -0x38(%rbp), %eax	 RIP: 406dcd	 Bytes: 3
  %loadMem_406dcd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406dcd = call %struct.Memory* @routine_subl_MINUS0x38__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406dcd)
  store %struct.Memory* %call_406dcd, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4c(%rbp)	 RIP: 406dd0	 Bytes: 3
  %loadMem_406dd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406dd0 = call %struct.Memory* @routine_movl__eax__MINUS0x4c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406dd0)
  store %struct.Memory* %call_406dd0, %struct.Memory** %MEMORY

  ; Code: movl -0x3c(%rbp), %eax	 RIP: 406dd3	 Bytes: 3
  %loadMem_406dd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406dd3 = call %struct.Memory* @routine_movl_MINUS0x3c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406dd3)
  store %struct.Memory* %call_406dd3, %struct.Memory** %MEMORY

  ; Code: sarl $0x1, %eax	 RIP: 406dd6	 Bytes: 3
  %loadMem_406dd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406dd6 = call %struct.Memory* @routine_sarl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406dd6)
  store %struct.Memory* %call_406dd6, %struct.Memory** %MEMORY

  ; Code: subl -0x34(%rbp), %eax	 RIP: 406dd9	 Bytes: 3
  %loadMem_406dd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406dd9 = call %struct.Memory* @routine_subl_MINUS0x34__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406dd9)
  store %struct.Memory* %call_406dd9, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x48(%rbp)	 RIP: 406ddc	 Bytes: 3
  %loadMem_406ddc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406ddc = call %struct.Memory* @routine_movl__eax__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406ddc)
  store %struct.Memory* %call_406ddc, %struct.Memory** %MEMORY

  ; Code: movl -0x3c(%rbp), %eax	 RIP: 406ddf	 Bytes: 3
  %loadMem_406ddf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406ddf = call %struct.Memory* @routine_movl_MINUS0x3c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406ddf)
  store %struct.Memory* %call_406ddf, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %ecx	 RIP: 406de2	 Bytes: 3
  %loadMem_406de2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406de2 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406de2)
  store %struct.Memory* %call_406de2, %struct.Memory** %MEMORY

  ; Code: sarl $0x1, %ecx	 RIP: 406de5	 Bytes: 3
  %loadMem_406de5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406de5 = call %struct.Memory* @routine_sarl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406de5)
  store %struct.Memory* %call_406de5, %struct.Memory** %MEMORY

  ; Code: addl %ecx, %eax	 RIP: 406de8	 Bytes: 2
  %loadMem_406de8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406de8 = call %struct.Memory* @routine_addl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406de8)
  store %struct.Memory* %call_406de8, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x44(%rbp)	 RIP: 406dea	 Bytes: 3
  %loadMem_406dea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406dea = call %struct.Memory* @routine_movl__eax__MINUS0x44__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406dea)
  store %struct.Memory* %call_406dea, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x1c(%rbp)	 RIP: 406ded	 Bytes: 7
  %loadMem_406ded = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406ded = call %struct.Memory* @routine_movl__0x0__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406ded)
  store %struct.Memory* %call_406ded, %struct.Memory** %MEMORY

  ; Code: .L_406df4:	 RIP: 406df4	 Bytes: 0
  br label %block_.L_406df4
block_.L_406df4:

  ; Code: cmpl $0x2, -0x1c(%rbp)	 RIP: 406df4	 Bytes: 4
  %loadMem_406df4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406df4 = call %struct.Memory* @routine_cmpl__0x2__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406df4)
  store %struct.Memory* %call_406df4, %struct.Memory** %MEMORY

  ; Code: jge .L_407329	 RIP: 406df8	 Bytes: 6
  %loadMem_406df8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406df8 = call %struct.Memory* @routine_jge_.L_407329(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406df8, i8* %BRANCH_TAKEN, i64 1329, i64 6, i64 6)
  store %struct.Memory* %call_406df8, %struct.Memory** %MEMORY

  %loadBr_406df8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_406df8 = icmp eq i8 %loadBr_406df8, 1
  br i1 %cmpBr_406df8, label %block_.L_407329, label %block_406dfe

block_406dfe:
  ; Code: movl $0x3, %eax	 RIP: 406dfe	 Bytes: 5
  %loadMem_406dfe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406dfe = call %struct.Memory* @routine_movl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406dfe)
  store %struct.Memory* %call_406dfe, %struct.Memory** %MEMORY

  ; Code: subl -0x1c(%rbp), %eax	 RIP: 406e03	 Bytes: 3
  %loadMem_406e03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406e03 = call %struct.Memory* @routine_subl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406e03)
  store %struct.Memory* %call_406e03, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x24(%rbp)	 RIP: 406e06	 Bytes: 3
  %loadMem_406e06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406e06 = call %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406e06)
  store %struct.Memory* %call_406e06, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 406e09	 Bytes: 8
  %loadMem_406e09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406e09 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406e09)
  store %struct.Memory* %call_406e09, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x11c14(%rcx)	 RIP: 406e11	 Bytes: 7
  %loadMem_406e11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406e11 = call %struct.Memory* @routine_cmpl__0x0__0x11c14__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406e11)
  store %struct.Memory* %call_406e11, %struct.Memory** %MEMORY

  ; Code: jne .L_407233	 RIP: 406e18	 Bytes: 6
  %loadMem_406e18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406e18 = call %struct.Memory* @routine_jne_.L_407233(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406e18, i8* %BRANCH_TAKEN, i64 1051, i64 6, i64 6)
  store %struct.Memory* %call_406e18, %struct.Memory** %MEMORY

  %loadBr_406e18 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_406e18 = icmp eq i8 %loadBr_406e18, 1
  br i1 %cmpBr_406e18, label %block_.L_407233, label %block_406e1e

block_406e1e:
  ; Code: xorl %eax, %eax	 RIP: 406e1e	 Bytes: 2
  %loadMem_406e1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406e1e = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406e1e)
  store %struct.Memory* %call_406e1e, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 406e20	 Bytes: 2
  %loadMem_406e20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406e20 = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406e20)
  store %struct.Memory* %call_406e20, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rdx	 RIP: 406e22	 Bytes: 8
  %loadMem_406e22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406e22 = call %struct.Memory* @routine_movq_0x6cb900___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406e22)
  store %struct.Memory* %call_406e22, %struct.Memory** %MEMORY

  ; Code: movslq 0x11bec(%rdx), %rdx	 RIP: 406e2a	 Bytes: 7
  %loadMem_406e2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406e2a = call %struct.Memory* @routine_movslq_0x11bec__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406e2a)
  store %struct.Memory* %call_406e2a, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rsi	 RIP: 406e31	 Bytes: 4
  %loadMem_406e31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406e31 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406e31)
  store %struct.Memory* %call_406e31, %struct.Memory** %MEMORY

  ; Code: movl -0x50(%rbp,%rsi,4), %eax	 RIP: 406e35	 Bytes: 4
  %loadMem_406e35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406e35 = call %struct.Memory* @routine_movl_MINUS0x50__rbp__rsi_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406e35)
  store %struct.Memory* %call_406e35, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rsi	 RIP: 406e39	 Bytes: 4
  %loadMem_406e39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406e39 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406e39)
  store %struct.Memory* %call_406e39, %struct.Memory** %MEMORY

  ; Code: addl -0x50(%rbp,%rsi,4), %eax	 RIP: 406e3d	 Bytes: 4
  %loadMem_406e3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406e3d = call %struct.Memory* @routine_addl_MINUS0x50__rbp__rsi_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406e3d)
  store %struct.Memory* %call_406e3d, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rsi	 RIP: 406e41	 Bytes: 3
  %loadMem_406e41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406e41 = call %struct.Memory* @routine_movslq__eax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406e41)
  store %struct.Memory* %call_406e41, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rdi	 RIP: 406e44	 Bytes: 8
  %loadMem_406e44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406e44 = call %struct.Memory* @routine_movq_0x6cb900___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406e44)
  store %struct.Memory* %call_406e44, %struct.Memory** %MEMORY

  ; Code: addq $0x3138, %rdi	 RIP: 406e4c	 Bytes: 7
  %loadMem_406e4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406e4c = call %struct.Memory* @routine_addq__0x3138___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406e4c)
  store %struct.Memory* %call_406e4c, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %eax	 RIP: 406e53	 Bytes: 3
  %loadMem_406e53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406e53 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406e53)
  store %struct.Memory* %call_406e53, %struct.Memory** %MEMORY

  ; Code: addl -0x4(%rbp), %eax	 RIP: 406e56	 Bytes: 3
  %loadMem_406e56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406e56 = call %struct.Memory* @routine_addl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406e56)
  store %struct.Memory* %call_406e56, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %r8	 RIP: 406e59	 Bytes: 3
  %loadMem_406e59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406e59 = call %struct.Memory* @routine_movslq__eax___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406e59)
  store %struct.Memory* %call_406e59, %struct.Memory** %MEMORY

  ; Code: shlq $0x5, %r8	 RIP: 406e5c	 Bytes: 4
  %loadMem_406e5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406e5c = call %struct.Memory* @routine_shlq__0x5___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406e5c)
  store %struct.Memory* %call_406e5c, %struct.Memory** %MEMORY

  ; Code: addq %r8, %rdi	 RIP: 406e60	 Bytes: 3
  %loadMem_406e60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406e60 = call %struct.Memory* @routine_addq__r8___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406e60)
  store %struct.Memory* %call_406e60, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 406e63	 Bytes: 3
  %loadMem_406e63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406e63 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406e63)
  store %struct.Memory* %call_406e63, %struct.Memory** %MEMORY

  ; Code: addl -0x8(%rbp), %eax	 RIP: 406e66	 Bytes: 3
  %loadMem_406e66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406e66 = call %struct.Memory* @routine_addl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406e66)
  store %struct.Memory* %call_406e66, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %r8	 RIP: 406e69	 Bytes: 3
  %loadMem_406e69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406e69 = call %struct.Memory* @routine_movslq__eax___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406e69)
  store %struct.Memory* %call_406e69, %struct.Memory** %MEMORY

  ; Code: movzwl (%rdi,%r8,2), %eax	 RIP: 406e6c	 Bytes: 5
  %loadMem_406e6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406e6c = call %struct.Memory* @routine_movzwl___rdi__r8_2____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406e6c)
  store %struct.Memory* %call_406e6c, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edi	 RIP: 406e71	 Bytes: 2
  %loadMem_406e71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406e71 = call %struct.Memory* @routine_movl__eax___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406e71)
  store %struct.Memory* %call_406e71, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rdi	 RIP: 406e73	 Bytes: 4
  %loadMem_406e73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406e73 = call %struct.Memory* @routine_shlq__0x6___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406e73)
  store %struct.Memory* %call_406e73, %struct.Memory** %MEMORY

  ; Code: addq %rdi, %rsi	 RIP: 406e77	 Bytes: 3
  %loadMem_406e77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406e77 = call %struct.Memory* @routine_addq__rdi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406e77)
  store %struct.Memory* %call_406e77, %struct.Memory** %MEMORY

  ; Code: addq $0x20, %rsi	 RIP: 406e7a	 Bytes: 4
  %loadMem_406e7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406e7a = call %struct.Memory* @routine_addq__0x20___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406e7a)
  store %struct.Memory* %call_406e7a, %struct.Memory** %MEMORY

  ; Code: sarq $0x6, %rsi	 RIP: 406e7e	 Bytes: 4
  %loadMem_406e7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406e7e = call %struct.Memory* @routine_sarq__0x6___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406e7e)
  store %struct.Memory* %call_406e7e, %struct.Memory** %MEMORY

  ; Code: cmpq %rsi, %rcx	 RIP: 406e82	 Bytes: 3
  %loadMem_406e82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406e82 = call %struct.Memory* @routine_cmpq__rsi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406e82)
  store %struct.Memory* %call_406e82, %struct.Memory** %MEMORY

  ; Code: movq %rdx, -0xc8(%rbp)	 RIP: 406e85	 Bytes: 7
  %loadMem_406e85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406e85 = call %struct.Memory* @routine_movq__rdx__MINUS0xc8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406e85)
  store %struct.Memory* %call_406e85, %struct.Memory** %MEMORY

  ; Code: jle .L_406ea2	 RIP: 406e8c	 Bytes: 6
  %loadMem_406e8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406e8c = call %struct.Memory* @routine_jle_.L_406ea2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406e8c, i8* %BRANCH_TAKEN, i64 22, i64 6, i64 6)
  store %struct.Memory* %call_406e8c, %struct.Memory** %MEMORY

  %loadBr_406e8c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_406e8c = icmp eq i8 %loadBr_406e8c, 1
  br i1 %cmpBr_406e8c, label %block_.L_406ea2, label %block_406e92

block_406e92:
  ; Code: xorl %eax, %eax	 RIP: 406e92	 Bytes: 2
  %loadMem_406e92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406e92 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406e92)
  store %struct.Memory* %call_406e92, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 406e94	 Bytes: 2
  %loadMem_406e94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406e94 = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406e94)
  store %struct.Memory* %call_406e94, %struct.Memory** %MEMORY

  ; Code: movq %rcx, -0xd0(%rbp)	 RIP: 406e96	 Bytes: 7
  %loadMem_406e96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406e96 = call %struct.Memory* @routine_movq__rcx__MINUS0xd0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406e96)
  store %struct.Memory* %call_406e96, %struct.Memory** %MEMORY

  ; Code: jmpq .L_406ef9	 RIP: 406e9d	 Bytes: 5
  %loadMem_406e9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406e9d = call %struct.Memory* @routine_jmpq_.L_406ef9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406e9d, i64 92, i64 5)
  store %struct.Memory* %call_406e9d, %struct.Memory** %MEMORY

  br label %block_.L_406ef9

  ; Code: .L_406ea2:	 RIP: 406ea2	 Bytes: 0
block_.L_406ea2:

  ; Code: movslq -0x1c(%rbp), %rax	 RIP: 406ea2	 Bytes: 4
  %loadMem_406ea2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406ea2 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406ea2)
  store %struct.Memory* %call_406ea2, %struct.Memory** %MEMORY

  ; Code: movl -0x50(%rbp,%rax,4), %ecx	 RIP: 406ea6	 Bytes: 4
  %loadMem_406ea6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406ea6 = call %struct.Memory* @routine_movl_MINUS0x50__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406ea6)
  store %struct.Memory* %call_406ea6, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rax	 RIP: 406eaa	 Bytes: 4
  %loadMem_406eaa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406eaa = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406eaa)
  store %struct.Memory* %call_406eaa, %struct.Memory** %MEMORY

  ; Code: addl -0x50(%rbp,%rax,4), %ecx	 RIP: 406eae	 Bytes: 4
  %loadMem_406eae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406eae = call %struct.Memory* @routine_addl_MINUS0x50__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406eae)
  store %struct.Memory* %call_406eae, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rax	 RIP: 406eb2	 Bytes: 3
  %loadMem_406eb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406eb2 = call %struct.Memory* @routine_movslq__ecx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406eb2)
  store %struct.Memory* %call_406eb2, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rdx	 RIP: 406eb5	 Bytes: 8
  %loadMem_406eb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406eb5 = call %struct.Memory* @routine_movq_0x6cb900___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406eb5)
  store %struct.Memory* %call_406eb5, %struct.Memory** %MEMORY

  ; Code: addq $0x3138, %rdx	 RIP: 406ebd	 Bytes: 7
  %loadMem_406ebd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406ebd = call %struct.Memory* @routine_addq__0x3138___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406ebd)
  store %struct.Memory* %call_406ebd, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %ecx	 RIP: 406ec4	 Bytes: 3
  %loadMem_406ec4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406ec4 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406ec4)
  store %struct.Memory* %call_406ec4, %struct.Memory** %MEMORY

  ; Code: addl -0x4(%rbp), %ecx	 RIP: 406ec7	 Bytes: 3
  %loadMem_406ec7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406ec7 = call %struct.Memory* @routine_addl_MINUS0x4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406ec7)
  store %struct.Memory* %call_406ec7, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 406eca	 Bytes: 3
  %loadMem_406eca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406eca = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406eca)
  store %struct.Memory* %call_406eca, %struct.Memory** %MEMORY

  ; Code: shlq $0x5, %rsi	 RIP: 406ecd	 Bytes: 4
  %loadMem_406ecd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406ecd = call %struct.Memory* @routine_shlq__0x5___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406ecd)
  store %struct.Memory* %call_406ecd, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rdx	 RIP: 406ed1	 Bytes: 3
  %loadMem_406ed1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406ed1 = call %struct.Memory* @routine_addq__rsi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406ed1)
  store %struct.Memory* %call_406ed1, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %ecx	 RIP: 406ed4	 Bytes: 3
  %loadMem_406ed4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406ed4 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406ed4)
  store %struct.Memory* %call_406ed4, %struct.Memory** %MEMORY

  ; Code: addl -0x8(%rbp), %ecx	 RIP: 406ed7	 Bytes: 3
  %loadMem_406ed7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406ed7 = call %struct.Memory* @routine_addl_MINUS0x8__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406ed7)
  store %struct.Memory* %call_406ed7, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 406eda	 Bytes: 3
  %loadMem_406eda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406eda = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406eda)
  store %struct.Memory* %call_406eda, %struct.Memory** %MEMORY

  ; Code: movzwl (%rdx,%rsi,2), %ecx	 RIP: 406edd	 Bytes: 4
  %loadMem_406edd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406edd = call %struct.Memory* @routine_movzwl___rdx__rsi_2____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406edd)
  store %struct.Memory* %call_406edd, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 406ee1	 Bytes: 2
  %loadMem_406ee1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406ee1 = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406ee1)
  store %struct.Memory* %call_406ee1, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rdx	 RIP: 406ee3	 Bytes: 4
  %loadMem_406ee3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406ee3 = call %struct.Memory* @routine_shlq__0x6___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406ee3)
  store %struct.Memory* %call_406ee3, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 406ee7	 Bytes: 3
  %loadMem_406ee7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406ee7 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406ee7)
  store %struct.Memory* %call_406ee7, %struct.Memory** %MEMORY

  ; Code: addq $0x20, %rax	 RIP: 406eea	 Bytes: 4
  %loadMem_406eea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406eea = call %struct.Memory* @routine_addq__0x20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406eea)
  store %struct.Memory* %call_406eea, %struct.Memory** %MEMORY

  ; Code: sarq $0x6, %rax	 RIP: 406eee	 Bytes: 4
  %loadMem_406eee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406eee = call %struct.Memory* @routine_sarq__0x6___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406eee)
  store %struct.Memory* %call_406eee, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0xd0(%rbp)	 RIP: 406ef2	 Bytes: 7
  %loadMem_406ef2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406ef2 = call %struct.Memory* @routine_movq__rax__MINUS0xd0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406ef2)
  store %struct.Memory* %call_406ef2, %struct.Memory** %MEMORY

  ; Code: .L_406ef9:	 RIP: 406ef9	 Bytes: 0
  br label %block_.L_406ef9
block_.L_406ef9:

  ; Code: movq -0xd0(%rbp), %rax	 RIP: 406ef9	 Bytes: 7
  %loadMem_406ef9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406ef9 = call %struct.Memory* @routine_movq_MINUS0xd0__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406ef9)
  store %struct.Memory* %call_406ef9, %struct.Memory** %MEMORY

  ; Code: movq -0xc8(%rbp), %rcx	 RIP: 406f00	 Bytes: 7
  %loadMem_406f00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406f00 = call %struct.Memory* @routine_movq_MINUS0xc8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406f00)
  store %struct.Memory* %call_406f00, %struct.Memory** %MEMORY

  ; Code: cmpq %rax, %rcx	 RIP: 406f07	 Bytes: 3
  %loadMem_406f07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406f07 = call %struct.Memory* @routine_cmpq__rax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406f07)
  store %struct.Memory* %call_406f07, %struct.Memory** %MEMORY

  ; Code: jge .L_406f2b	 RIP: 406f0a	 Bytes: 6
  %loadMem_406f0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406f0a = call %struct.Memory* @routine_jge_.L_406f2b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406f0a, i8* %BRANCH_TAKEN, i64 33, i64 6, i64 6)
  store %struct.Memory* %call_406f0a, %struct.Memory** %MEMORY

  %loadBr_406f0a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_406f0a = icmp eq i8 %loadBr_406f0a, 1
  br i1 %cmpBr_406f0a, label %block_.L_406f2b, label %block_406f10

block_406f10:
  ; Code: movq 0x6cb900, %rax	 RIP: 406f10	 Bytes: 8
  %loadMem_406f10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406f10 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406f10)
  store %struct.Memory* %call_406f10, %struct.Memory** %MEMORY

  ; Code: movslq 0x11bec(%rax), %rax	 RIP: 406f18	 Bytes: 7
  %loadMem_406f18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406f18 = call %struct.Memory* @routine_movslq_0x11bec__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406f18)
  store %struct.Memory* %call_406f18, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0xd8(%rbp)	 RIP: 406f1f	 Bytes: 7
  %loadMem_406f1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406f1f = call %struct.Memory* @routine_movq__rax__MINUS0xd8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406f1f)
  store %struct.Memory* %call_406f1f, %struct.Memory** %MEMORY

  ; Code: jmpq .L_406ffd	 RIP: 406f26	 Bytes: 5
  %loadMem_406f26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406f26 = call %struct.Memory* @routine_jmpq_.L_406ffd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406f26, i64 215, i64 5)
  store %struct.Memory* %call_406f26, %struct.Memory** %MEMORY

  br label %block_.L_406ffd

  ; Code: .L_406f2b:	 RIP: 406f2b	 Bytes: 0
block_.L_406f2b:

  ; Code: xorl %eax, %eax	 RIP: 406f2b	 Bytes: 2
  %loadMem_406f2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406f2b = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406f2b)
  store %struct.Memory* %call_406f2b, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 406f2d	 Bytes: 2
  %loadMem_406f2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406f2d = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406f2d)
  store %struct.Memory* %call_406f2d, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rdx	 RIP: 406f2f	 Bytes: 4
  %loadMem_406f2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406f2f = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406f2f)
  store %struct.Memory* %call_406f2f, %struct.Memory** %MEMORY

  ; Code: movl -0x50(%rbp,%rdx,4), %eax	 RIP: 406f33	 Bytes: 4
  %loadMem_406f33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406f33 = call %struct.Memory* @routine_movl_MINUS0x50__rbp__rdx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406f33)
  store %struct.Memory* %call_406f33, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 406f37	 Bytes: 4
  %loadMem_406f37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406f37 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406f37)
  store %struct.Memory* %call_406f37, %struct.Memory** %MEMORY

  ; Code: addl -0x50(%rbp,%rdx,4), %eax	 RIP: 406f3b	 Bytes: 4
  %loadMem_406f3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406f3b = call %struct.Memory* @routine_addl_MINUS0x50__rbp__rdx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406f3b)
  store %struct.Memory* %call_406f3b, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 406f3f	 Bytes: 3
  %loadMem_406f3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406f3f = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406f3f)
  store %struct.Memory* %call_406f3f, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rsi	 RIP: 406f42	 Bytes: 8
  %loadMem_406f42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406f42 = call %struct.Memory* @routine_movq_0x6cb900___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406f42)
  store %struct.Memory* %call_406f42, %struct.Memory** %MEMORY

  ; Code: addq $0x3138, %rsi	 RIP: 406f4a	 Bytes: 7
  %loadMem_406f4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406f4a = call %struct.Memory* @routine_addq__0x3138___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406f4a)
  store %struct.Memory* %call_406f4a, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %eax	 RIP: 406f51	 Bytes: 3
  %loadMem_406f51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406f51 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406f51)
  store %struct.Memory* %call_406f51, %struct.Memory** %MEMORY

  ; Code: addl -0x4(%rbp), %eax	 RIP: 406f54	 Bytes: 3
  %loadMem_406f54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406f54 = call %struct.Memory* @routine_addl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406f54)
  store %struct.Memory* %call_406f54, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdi	 RIP: 406f57	 Bytes: 3
  %loadMem_406f57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406f57 = call %struct.Memory* @routine_movslq__eax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406f57)
  store %struct.Memory* %call_406f57, %struct.Memory** %MEMORY

  ; Code: shlq $0x5, %rdi	 RIP: 406f5a	 Bytes: 4
  %loadMem_406f5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406f5a = call %struct.Memory* @routine_shlq__0x5___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406f5a)
  store %struct.Memory* %call_406f5a, %struct.Memory** %MEMORY

  ; Code: addq %rdi, %rsi	 RIP: 406f5e	 Bytes: 3
  %loadMem_406f5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406f5e = call %struct.Memory* @routine_addq__rdi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406f5e)
  store %struct.Memory* %call_406f5e, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 406f61	 Bytes: 3
  %loadMem_406f61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406f61 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406f61)
  store %struct.Memory* %call_406f61, %struct.Memory** %MEMORY

  ; Code: addl -0x8(%rbp), %eax	 RIP: 406f64	 Bytes: 3
  %loadMem_406f64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406f64 = call %struct.Memory* @routine_addl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406f64)
  store %struct.Memory* %call_406f64, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdi	 RIP: 406f67	 Bytes: 3
  %loadMem_406f67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406f67 = call %struct.Memory* @routine_movslq__eax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406f67)
  store %struct.Memory* %call_406f67, %struct.Memory** %MEMORY

  ; Code: movzwl (%rsi,%rdi,2), %eax	 RIP: 406f6a	 Bytes: 4
  %loadMem_406f6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406f6a = call %struct.Memory* @routine_movzwl___rsi__rdi_2____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406f6a)
  store %struct.Memory* %call_406f6a, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 406f6e	 Bytes: 2
  %loadMem_406f6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406f6e = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406f6e)
  store %struct.Memory* %call_406f6e, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rsi	 RIP: 406f70	 Bytes: 4
  %loadMem_406f70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406f70 = call %struct.Memory* @routine_shlq__0x6___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406f70)
  store %struct.Memory* %call_406f70, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rdx	 RIP: 406f74	 Bytes: 3
  %loadMem_406f74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406f74 = call %struct.Memory* @routine_addq__rsi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406f74)
  store %struct.Memory* %call_406f74, %struct.Memory** %MEMORY

  ; Code: addq $0x20, %rdx	 RIP: 406f77	 Bytes: 4
  %loadMem_406f77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406f77 = call %struct.Memory* @routine_addq__0x20___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406f77)
  store %struct.Memory* %call_406f77, %struct.Memory** %MEMORY

  ; Code: sarq $0x6, %rdx	 RIP: 406f7b	 Bytes: 4
  %loadMem_406f7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406f7b = call %struct.Memory* @routine_sarq__0x6___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406f7b)
  store %struct.Memory* %call_406f7b, %struct.Memory** %MEMORY

  ; Code: cmpq %rdx, %rcx	 RIP: 406f7f	 Bytes: 3
  %loadMem_406f7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406f7f = call %struct.Memory* @routine_cmpq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406f7f)
  store %struct.Memory* %call_406f7f, %struct.Memory** %MEMORY

  ; Code: jle .L_406f98	 RIP: 406f82	 Bytes: 6
  %loadMem_406f82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406f82 = call %struct.Memory* @routine_jle_.L_406f98(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406f82, i8* %BRANCH_TAKEN, i64 22, i64 6, i64 6)
  store %struct.Memory* %call_406f82, %struct.Memory** %MEMORY

  %loadBr_406f82 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_406f82 = icmp eq i8 %loadBr_406f82, 1
  br i1 %cmpBr_406f82, label %block_.L_406f98, label %block_406f88

block_406f88:
  ; Code: xorl %eax, %eax	 RIP: 406f88	 Bytes: 2
  %loadMem_406f88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406f88 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406f88)
  store %struct.Memory* %call_406f88, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 406f8a	 Bytes: 2
  %loadMem_406f8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406f8a = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406f8a)
  store %struct.Memory* %call_406f8a, %struct.Memory** %MEMORY

  ; Code: movq %rcx, -0xe0(%rbp)	 RIP: 406f8c	 Bytes: 7
  %loadMem_406f8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406f8c = call %struct.Memory* @routine_movq__rcx__MINUS0xe0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406f8c)
  store %struct.Memory* %call_406f8c, %struct.Memory** %MEMORY

  ; Code: jmpq .L_406fef	 RIP: 406f93	 Bytes: 5
  %loadMem_406f93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406f93 = call %struct.Memory* @routine_jmpq_.L_406fef(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406f93, i64 92, i64 5)
  store %struct.Memory* %call_406f93, %struct.Memory** %MEMORY

  br label %block_.L_406fef

  ; Code: .L_406f98:	 RIP: 406f98	 Bytes: 0
block_.L_406f98:

  ; Code: movslq -0x1c(%rbp), %rax	 RIP: 406f98	 Bytes: 4
  %loadMem_406f98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406f98 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406f98)
  store %struct.Memory* %call_406f98, %struct.Memory** %MEMORY

  ; Code: movl -0x50(%rbp,%rax,4), %ecx	 RIP: 406f9c	 Bytes: 4
  %loadMem_406f9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406f9c = call %struct.Memory* @routine_movl_MINUS0x50__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406f9c)
  store %struct.Memory* %call_406f9c, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rax	 RIP: 406fa0	 Bytes: 4
  %loadMem_406fa0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406fa0 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406fa0)
  store %struct.Memory* %call_406fa0, %struct.Memory** %MEMORY

  ; Code: addl -0x50(%rbp,%rax,4), %ecx	 RIP: 406fa4	 Bytes: 4
  %loadMem_406fa4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406fa4 = call %struct.Memory* @routine_addl_MINUS0x50__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406fa4)
  store %struct.Memory* %call_406fa4, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rax	 RIP: 406fa8	 Bytes: 3
  %loadMem_406fa8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406fa8 = call %struct.Memory* @routine_movslq__ecx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406fa8)
  store %struct.Memory* %call_406fa8, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rdx	 RIP: 406fab	 Bytes: 8
  %loadMem_406fab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406fab = call %struct.Memory* @routine_movq_0x6cb900___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406fab)
  store %struct.Memory* %call_406fab, %struct.Memory** %MEMORY

  ; Code: addq $0x3138, %rdx	 RIP: 406fb3	 Bytes: 7
  %loadMem_406fb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406fb3 = call %struct.Memory* @routine_addq__0x3138___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406fb3)
  store %struct.Memory* %call_406fb3, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %ecx	 RIP: 406fba	 Bytes: 3
  %loadMem_406fba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406fba = call %struct.Memory* @routine_movl_MINUS0x18__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406fba)
  store %struct.Memory* %call_406fba, %struct.Memory** %MEMORY

  ; Code: addl -0x4(%rbp), %ecx	 RIP: 406fbd	 Bytes: 3
  %loadMem_406fbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406fbd = call %struct.Memory* @routine_addl_MINUS0x4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406fbd)
  store %struct.Memory* %call_406fbd, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 406fc0	 Bytes: 3
  %loadMem_406fc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406fc0 = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406fc0)
  store %struct.Memory* %call_406fc0, %struct.Memory** %MEMORY

  ; Code: shlq $0x5, %rsi	 RIP: 406fc3	 Bytes: 4
  %loadMem_406fc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406fc3 = call %struct.Memory* @routine_shlq__0x5___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406fc3)
  store %struct.Memory* %call_406fc3, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rdx	 RIP: 406fc7	 Bytes: 3
  %loadMem_406fc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406fc7 = call %struct.Memory* @routine_addq__rsi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406fc7)
  store %struct.Memory* %call_406fc7, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %ecx	 RIP: 406fca	 Bytes: 3
  %loadMem_406fca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406fca = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406fca)
  store %struct.Memory* %call_406fca, %struct.Memory** %MEMORY

  ; Code: addl -0x8(%rbp), %ecx	 RIP: 406fcd	 Bytes: 3
  %loadMem_406fcd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406fcd = call %struct.Memory* @routine_addl_MINUS0x8__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406fcd)
  store %struct.Memory* %call_406fcd, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 406fd0	 Bytes: 3
  %loadMem_406fd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406fd0 = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406fd0)
  store %struct.Memory* %call_406fd0, %struct.Memory** %MEMORY

  ; Code: movzwl (%rdx,%rsi,2), %ecx	 RIP: 406fd3	 Bytes: 4
  %loadMem_406fd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406fd3 = call %struct.Memory* @routine_movzwl___rdx__rsi_2____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406fd3)
  store %struct.Memory* %call_406fd3, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 406fd7	 Bytes: 2
  %loadMem_406fd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406fd7 = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406fd7)
  store %struct.Memory* %call_406fd7, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rdx	 RIP: 406fd9	 Bytes: 4
  %loadMem_406fd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406fd9 = call %struct.Memory* @routine_shlq__0x6___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406fd9)
  store %struct.Memory* %call_406fd9, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 406fdd	 Bytes: 3
  %loadMem_406fdd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406fdd = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406fdd)
  store %struct.Memory* %call_406fdd, %struct.Memory** %MEMORY

  ; Code: addq $0x20, %rax	 RIP: 406fe0	 Bytes: 4
  %loadMem_406fe0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406fe0 = call %struct.Memory* @routine_addq__0x20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406fe0)
  store %struct.Memory* %call_406fe0, %struct.Memory** %MEMORY

  ; Code: sarq $0x6, %rax	 RIP: 406fe4	 Bytes: 4
  %loadMem_406fe4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406fe4 = call %struct.Memory* @routine_sarq__0x6___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406fe4)
  store %struct.Memory* %call_406fe4, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0xe0(%rbp)	 RIP: 406fe8	 Bytes: 7
  %loadMem_406fe8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406fe8 = call %struct.Memory* @routine_movq__rax__MINUS0xe0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406fe8)
  store %struct.Memory* %call_406fe8, %struct.Memory** %MEMORY

  ; Code: .L_406fef:	 RIP: 406fef	 Bytes: 0
  br label %block_.L_406fef
block_.L_406fef:

  ; Code: movq -0xe0(%rbp), %rax	 RIP: 406fef	 Bytes: 7
  %loadMem_406fef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406fef = call %struct.Memory* @routine_movq_MINUS0xe0__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406fef)
  store %struct.Memory* %call_406fef, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0xd8(%rbp)	 RIP: 406ff6	 Bytes: 7
  %loadMem_406ff6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406ff6 = call %struct.Memory* @routine_movq__rax__MINUS0xd8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406ff6)
  store %struct.Memory* %call_406ff6, %struct.Memory** %MEMORY

  ; Code: .L_406ffd:	 RIP: 406ffd	 Bytes: 0
  br label %block_.L_406ffd
block_.L_406ffd:

  ; Code: movq -0xd8(%rbp), %rax	 RIP: 406ffd	 Bytes: 7
  %loadMem_406ffd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_406ffd = call %struct.Memory* @routine_movq_MINUS0xd8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_406ffd)
  store %struct.Memory* %call_406ffd, %struct.Memory** %MEMORY

  ; Code: xorl %ecx, %ecx	 RIP: 407004	 Bytes: 2
  %loadMem_407004 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407004 = call %struct.Memory* @routine_xorl__ecx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407004)
  store %struct.Memory* %call_407004, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 407006	 Bytes: 2
  %loadMem_407006 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407006 = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407006)
  store %struct.Memory* %call_407006, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 407008	 Bytes: 2
  %loadMem_407008 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407008 = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407008)
  store %struct.Memory* %call_407008, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 40700a	 Bytes: 8
  %loadMem_40700a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40700a = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40700a)
  store %struct.Memory* %call_40700a, %struct.Memory** %MEMORY

  ; Code: addq $0x3338, %rax	 RIP: 407012	 Bytes: 6
  %loadMem_407012 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407012 = call %struct.Memory* @routine_addq__0x3338___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407012)
  store %struct.Memory* %call_407012, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rsi	 RIP: 407018	 Bytes: 4
  %loadMem_407018 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407018 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407018)
  store %struct.Memory* %call_407018, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rsi	 RIP: 40701c	 Bytes: 4
  %loadMem_40701c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40701c = call %struct.Memory* @routine_shlq__0x6___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40701c)
  store %struct.Memory* %call_40701c, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rax	 RIP: 407020	 Bytes: 3
  %loadMem_407020 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407020 = call %struct.Memory* @routine_addq__rsi___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407020)
  store %struct.Memory* %call_407020, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rsi	 RIP: 407023	 Bytes: 4
  %loadMem_407023 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407023 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407023)
  store %struct.Memory* %call_407023, %struct.Memory** %MEMORY

  ; Code: movl %ecx, (%rax,%rsi,4)	 RIP: 407027	 Bytes: 3
  %loadMem_407027 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407027 = call %struct.Memory* @routine_movl__ecx____rax__rsi_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407027)
  store %struct.Memory* %call_407027, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 40702a	 Bytes: 8
  %loadMem_40702a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40702a = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40702a)
  store %struct.Memory* %call_40702a, %struct.Memory** %MEMORY

  ; Code: movslq 0x11bec(%rax), %rax	 RIP: 407032	 Bytes: 7
  %loadMem_407032 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407032 = call %struct.Memory* @routine_movslq_0x11bec__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407032)
  store %struct.Memory* %call_407032, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rsi	 RIP: 407039	 Bytes: 4
  %loadMem_407039 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407039 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407039)
  store %struct.Memory* %call_407039, %struct.Memory** %MEMORY

  ; Code: movl -0x50(%rbp,%rsi,4), %ecx	 RIP: 40703d	 Bytes: 4
  %loadMem_40703d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40703d = call %struct.Memory* @routine_movl_MINUS0x50__rbp__rsi_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40703d)
  store %struct.Memory* %call_40703d, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rsi	 RIP: 407041	 Bytes: 4
  %loadMem_407041 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407041 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407041)
  store %struct.Memory* %call_407041, %struct.Memory** %MEMORY

  ; Code: subl -0x50(%rbp,%rsi,4), %ecx	 RIP: 407045	 Bytes: 4
  %loadMem_407045 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407045 = call %struct.Memory* @routine_subl_MINUS0x50__rbp__rsi_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407045)
  store %struct.Memory* %call_407045, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 407049	 Bytes: 3
  %loadMem_407049 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407049 = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407049)
  store %struct.Memory* %call_407049, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rdi	 RIP: 40704c	 Bytes: 8
  %loadMem_40704c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40704c = call %struct.Memory* @routine_movq_0x6cb900___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40704c)
  store %struct.Memory* %call_40704c, %struct.Memory** %MEMORY

  ; Code: addq $0x3138, %rdi	 RIP: 407054	 Bytes: 7
  %loadMem_407054 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407054 = call %struct.Memory* @routine_addq__0x3138___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407054)
  store %struct.Memory* %call_407054, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %ecx	 RIP: 40705b	 Bytes: 3
  %loadMem_40705b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40705b = call %struct.Memory* @routine_movl_MINUS0x18__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40705b)
  store %struct.Memory* %call_40705b, %struct.Memory** %MEMORY

  ; Code: addl -0x4(%rbp), %ecx	 RIP: 40705e	 Bytes: 3
  %loadMem_40705e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40705e = call %struct.Memory* @routine_addl_MINUS0x4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40705e)
  store %struct.Memory* %call_40705e, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %r8	 RIP: 407061	 Bytes: 3
  %loadMem_407061 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407061 = call %struct.Memory* @routine_movslq__ecx___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407061)
  store %struct.Memory* %call_407061, %struct.Memory** %MEMORY

  ; Code: shlq $0x5, %r8	 RIP: 407064	 Bytes: 4
  %loadMem_407064 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407064 = call %struct.Memory* @routine_shlq__0x5___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407064)
  store %struct.Memory* %call_407064, %struct.Memory** %MEMORY

  ; Code: addq %r8, %rdi	 RIP: 407068	 Bytes: 3
  %loadMem_407068 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407068 = call %struct.Memory* @routine_addq__r8___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407068)
  store %struct.Memory* %call_407068, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %ecx	 RIP: 40706b	 Bytes: 3
  %loadMem_40706b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40706b = call %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40706b)
  store %struct.Memory* %call_40706b, %struct.Memory** %MEMORY

  ; Code: addl -0x8(%rbp), %ecx	 RIP: 40706e	 Bytes: 3
  %loadMem_40706e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40706e = call %struct.Memory* @routine_addl_MINUS0x8__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40706e)
  store %struct.Memory* %call_40706e, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %r8	 RIP: 407071	 Bytes: 3
  %loadMem_407071 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407071 = call %struct.Memory* @routine_movslq__ecx___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407071)
  store %struct.Memory* %call_407071, %struct.Memory** %MEMORY

  ; Code: movzwl (%rdi,%r8,2), %ecx	 RIP: 407074	 Bytes: 5
  %loadMem_407074 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407074 = call %struct.Memory* @routine_movzwl___rdi__r8_2____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407074)
  store %struct.Memory* %call_407074, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edi	 RIP: 407079	 Bytes: 2
  %loadMem_407079 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407079 = call %struct.Memory* @routine_movl__ecx___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407079)
  store %struct.Memory* %call_407079, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rdi	 RIP: 40707b	 Bytes: 4
  %loadMem_40707b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40707b = call %struct.Memory* @routine_shlq__0x6___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40707b)
  store %struct.Memory* %call_40707b, %struct.Memory** %MEMORY

  ; Code: addq %rdi, %rsi	 RIP: 40707f	 Bytes: 3
  %loadMem_40707f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40707f = call %struct.Memory* @routine_addq__rdi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40707f)
  store %struct.Memory* %call_40707f, %struct.Memory** %MEMORY

  ; Code: addq $0x20, %rsi	 RIP: 407082	 Bytes: 4
  %loadMem_407082 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407082 = call %struct.Memory* @routine_addq__0x20___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407082)
  store %struct.Memory* %call_407082, %struct.Memory** %MEMORY

  ; Code: sarq $0x6, %rsi	 RIP: 407086	 Bytes: 4
  %loadMem_407086 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407086 = call %struct.Memory* @routine_sarq__0x6___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407086)
  store %struct.Memory* %call_407086, %struct.Memory** %MEMORY

  ; Code: cmpq %rsi, %rdx	 RIP: 40708a	 Bytes: 3
  %loadMem_40708a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40708a = call %struct.Memory* @routine_cmpq__rsi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40708a)
  store %struct.Memory* %call_40708a, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0xe8(%rbp)	 RIP: 40708d	 Bytes: 7
  %loadMem_40708d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40708d = call %struct.Memory* @routine_movq__rax__MINUS0xe8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40708d)
  store %struct.Memory* %call_40708d, %struct.Memory** %MEMORY

  ; Code: jle .L_4070aa	 RIP: 407094	 Bytes: 6
  %loadMem_407094 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407094 = call %struct.Memory* @routine_jle_.L_4070aa(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407094, i8* %BRANCH_TAKEN, i64 22, i64 6, i64 6)
  store %struct.Memory* %call_407094, %struct.Memory** %MEMORY

  %loadBr_407094 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_407094 = icmp eq i8 %loadBr_407094, 1
  br i1 %cmpBr_407094, label %block_.L_4070aa, label %block_40709a

block_40709a:
  ; Code: xorl %eax, %eax	 RIP: 40709a	 Bytes: 2
  %loadMem_40709a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40709a = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40709a)
  store %struct.Memory* %call_40709a, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 40709c	 Bytes: 2
  %loadMem_40709c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40709c = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40709c)
  store %struct.Memory* %call_40709c, %struct.Memory** %MEMORY

  ; Code: movq %rcx, -0xf0(%rbp)	 RIP: 40709e	 Bytes: 7
  %loadMem_40709e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40709e = call %struct.Memory* @routine_movq__rcx__MINUS0xf0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40709e)
  store %struct.Memory* %call_40709e, %struct.Memory** %MEMORY

  ; Code: jmpq .L_407101	 RIP: 4070a5	 Bytes: 5
  %loadMem_4070a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4070a5 = call %struct.Memory* @routine_jmpq_.L_407101(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4070a5, i64 92, i64 5)
  store %struct.Memory* %call_4070a5, %struct.Memory** %MEMORY

  br label %block_.L_407101

  ; Code: .L_4070aa:	 RIP: 4070aa	 Bytes: 0
block_.L_4070aa:

  ; Code: movslq -0x1c(%rbp), %rax	 RIP: 4070aa	 Bytes: 4
  %loadMem_4070aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4070aa = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4070aa)
  store %struct.Memory* %call_4070aa, %struct.Memory** %MEMORY

  ; Code: movl -0x50(%rbp,%rax,4), %ecx	 RIP: 4070ae	 Bytes: 4
  %loadMem_4070ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4070ae = call %struct.Memory* @routine_movl_MINUS0x50__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4070ae)
  store %struct.Memory* %call_4070ae, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rax	 RIP: 4070b2	 Bytes: 4
  %loadMem_4070b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4070b2 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4070b2)
  store %struct.Memory* %call_4070b2, %struct.Memory** %MEMORY

  ; Code: subl -0x50(%rbp,%rax,4), %ecx	 RIP: 4070b6	 Bytes: 4
  %loadMem_4070b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4070b6 = call %struct.Memory* @routine_subl_MINUS0x50__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4070b6)
  store %struct.Memory* %call_4070b6, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rax	 RIP: 4070ba	 Bytes: 3
  %loadMem_4070ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4070ba = call %struct.Memory* @routine_movslq__ecx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4070ba)
  store %struct.Memory* %call_4070ba, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rdx	 RIP: 4070bd	 Bytes: 8
  %loadMem_4070bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4070bd = call %struct.Memory* @routine_movq_0x6cb900___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4070bd)
  store %struct.Memory* %call_4070bd, %struct.Memory** %MEMORY

  ; Code: addq $0x3138, %rdx	 RIP: 4070c5	 Bytes: 7
  %loadMem_4070c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4070c5 = call %struct.Memory* @routine_addq__0x3138___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4070c5)
  store %struct.Memory* %call_4070c5, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %ecx	 RIP: 4070cc	 Bytes: 3
  %loadMem_4070cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4070cc = call %struct.Memory* @routine_movl_MINUS0x18__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4070cc)
  store %struct.Memory* %call_4070cc, %struct.Memory** %MEMORY

  ; Code: addl -0x4(%rbp), %ecx	 RIP: 4070cf	 Bytes: 3
  %loadMem_4070cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4070cf = call %struct.Memory* @routine_addl_MINUS0x4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4070cf)
  store %struct.Memory* %call_4070cf, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 4070d2	 Bytes: 3
  %loadMem_4070d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4070d2 = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4070d2)
  store %struct.Memory* %call_4070d2, %struct.Memory** %MEMORY

  ; Code: shlq $0x5, %rsi	 RIP: 4070d5	 Bytes: 4
  %loadMem_4070d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4070d5 = call %struct.Memory* @routine_shlq__0x5___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4070d5)
  store %struct.Memory* %call_4070d5, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rdx	 RIP: 4070d9	 Bytes: 3
  %loadMem_4070d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4070d9 = call %struct.Memory* @routine_addq__rsi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4070d9)
  store %struct.Memory* %call_4070d9, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %ecx	 RIP: 4070dc	 Bytes: 3
  %loadMem_4070dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4070dc = call %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4070dc)
  store %struct.Memory* %call_4070dc, %struct.Memory** %MEMORY

  ; Code: addl -0x8(%rbp), %ecx	 RIP: 4070df	 Bytes: 3
  %loadMem_4070df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4070df = call %struct.Memory* @routine_addl_MINUS0x8__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4070df)
  store %struct.Memory* %call_4070df, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 4070e2	 Bytes: 3
  %loadMem_4070e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4070e2 = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4070e2)
  store %struct.Memory* %call_4070e2, %struct.Memory** %MEMORY

  ; Code: movzwl (%rdx,%rsi,2), %ecx	 RIP: 4070e5	 Bytes: 4
  %loadMem_4070e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4070e5 = call %struct.Memory* @routine_movzwl___rdx__rsi_2____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4070e5)
  store %struct.Memory* %call_4070e5, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 4070e9	 Bytes: 2
  %loadMem_4070e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4070e9 = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4070e9)
  store %struct.Memory* %call_4070e9, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rdx	 RIP: 4070eb	 Bytes: 4
  %loadMem_4070eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4070eb = call %struct.Memory* @routine_shlq__0x6___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4070eb)
  store %struct.Memory* %call_4070eb, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 4070ef	 Bytes: 3
  %loadMem_4070ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4070ef = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4070ef)
  store %struct.Memory* %call_4070ef, %struct.Memory** %MEMORY

  ; Code: addq $0x20, %rax	 RIP: 4070f2	 Bytes: 4
  %loadMem_4070f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4070f2 = call %struct.Memory* @routine_addq__0x20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4070f2)
  store %struct.Memory* %call_4070f2, %struct.Memory** %MEMORY

  ; Code: sarq $0x6, %rax	 RIP: 4070f6	 Bytes: 4
  %loadMem_4070f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4070f6 = call %struct.Memory* @routine_sarq__0x6___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4070f6)
  store %struct.Memory* %call_4070f6, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0xf0(%rbp)	 RIP: 4070fa	 Bytes: 7
  %loadMem_4070fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4070fa = call %struct.Memory* @routine_movq__rax__MINUS0xf0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4070fa)
  store %struct.Memory* %call_4070fa, %struct.Memory** %MEMORY

  ; Code: .L_407101:	 RIP: 407101	 Bytes: 0
  br label %block_.L_407101
block_.L_407101:

  ; Code: movq -0xf0(%rbp), %rax	 RIP: 407101	 Bytes: 7
  %loadMem_407101 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407101 = call %struct.Memory* @routine_movq_MINUS0xf0__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407101)
  store %struct.Memory* %call_407101, %struct.Memory** %MEMORY

  ; Code: movq -0xe8(%rbp), %rcx	 RIP: 407108	 Bytes: 7
  %loadMem_407108 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407108 = call %struct.Memory* @routine_movq_MINUS0xe8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407108)
  store %struct.Memory* %call_407108, %struct.Memory** %MEMORY

  ; Code: cmpq %rax, %rcx	 RIP: 40710f	 Bytes: 3
  %loadMem_40710f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40710f = call %struct.Memory* @routine_cmpq__rax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40710f)
  store %struct.Memory* %call_40710f, %struct.Memory** %MEMORY

  ; Code: jge .L_407133	 RIP: 407112	 Bytes: 6
  %loadMem_407112 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407112 = call %struct.Memory* @routine_jge_.L_407133(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407112, i8* %BRANCH_TAKEN, i64 33, i64 6, i64 6)
  store %struct.Memory* %call_407112, %struct.Memory** %MEMORY

  %loadBr_407112 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_407112 = icmp eq i8 %loadBr_407112, 1
  br i1 %cmpBr_407112, label %block_.L_407133, label %block_407118

block_407118:
  ; Code: movq 0x6cb900, %rax	 RIP: 407118	 Bytes: 8
  %loadMem_407118 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407118 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407118)
  store %struct.Memory* %call_407118, %struct.Memory** %MEMORY

  ; Code: movslq 0x11bec(%rax), %rax	 RIP: 407120	 Bytes: 7
  %loadMem_407120 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407120 = call %struct.Memory* @routine_movslq_0x11bec__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407120)
  store %struct.Memory* %call_407120, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0xf8(%rbp)	 RIP: 407127	 Bytes: 7
  %loadMem_407127 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407127 = call %struct.Memory* @routine_movq__rax__MINUS0xf8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407127)
  store %struct.Memory* %call_407127, %struct.Memory** %MEMORY

  ; Code: jmpq .L_407205	 RIP: 40712e	 Bytes: 5
  %loadMem_40712e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40712e = call %struct.Memory* @routine_jmpq_.L_407205(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40712e, i64 215, i64 5)
  store %struct.Memory* %call_40712e, %struct.Memory** %MEMORY

  br label %block_.L_407205

  ; Code: .L_407133:	 RIP: 407133	 Bytes: 0
block_.L_407133:

  ; Code: xorl %eax, %eax	 RIP: 407133	 Bytes: 2
  %loadMem_407133 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407133 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407133)
  store %struct.Memory* %call_407133, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 407135	 Bytes: 2
  %loadMem_407135 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407135 = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407135)
  store %struct.Memory* %call_407135, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rdx	 RIP: 407137	 Bytes: 4
  %loadMem_407137 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407137 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407137)
  store %struct.Memory* %call_407137, %struct.Memory** %MEMORY

  ; Code: movl -0x50(%rbp,%rdx,4), %eax	 RIP: 40713b	 Bytes: 4
  %loadMem_40713b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40713b = call %struct.Memory* @routine_movl_MINUS0x50__rbp__rdx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40713b)
  store %struct.Memory* %call_40713b, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 40713f	 Bytes: 4
  %loadMem_40713f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40713f = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40713f)
  store %struct.Memory* %call_40713f, %struct.Memory** %MEMORY

  ; Code: subl -0x50(%rbp,%rdx,4), %eax	 RIP: 407143	 Bytes: 4
  %loadMem_407143 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407143 = call %struct.Memory* @routine_subl_MINUS0x50__rbp__rdx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407143)
  store %struct.Memory* %call_407143, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 407147	 Bytes: 3
  %loadMem_407147 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407147 = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407147)
  store %struct.Memory* %call_407147, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rsi	 RIP: 40714a	 Bytes: 8
  %loadMem_40714a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40714a = call %struct.Memory* @routine_movq_0x6cb900___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40714a)
  store %struct.Memory* %call_40714a, %struct.Memory** %MEMORY

  ; Code: addq $0x3138, %rsi	 RIP: 407152	 Bytes: 7
  %loadMem_407152 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407152 = call %struct.Memory* @routine_addq__0x3138___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407152)
  store %struct.Memory* %call_407152, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %eax	 RIP: 407159	 Bytes: 3
  %loadMem_407159 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407159 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407159)
  store %struct.Memory* %call_407159, %struct.Memory** %MEMORY

  ; Code: addl -0x4(%rbp), %eax	 RIP: 40715c	 Bytes: 3
  %loadMem_40715c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40715c = call %struct.Memory* @routine_addl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40715c)
  store %struct.Memory* %call_40715c, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdi	 RIP: 40715f	 Bytes: 3
  %loadMem_40715f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40715f = call %struct.Memory* @routine_movslq__eax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40715f)
  store %struct.Memory* %call_40715f, %struct.Memory** %MEMORY

  ; Code: shlq $0x5, %rdi	 RIP: 407162	 Bytes: 4
  %loadMem_407162 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407162 = call %struct.Memory* @routine_shlq__0x5___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407162)
  store %struct.Memory* %call_407162, %struct.Memory** %MEMORY

  ; Code: addq %rdi, %rsi	 RIP: 407166	 Bytes: 3
  %loadMem_407166 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407166 = call %struct.Memory* @routine_addq__rdi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407166)
  store %struct.Memory* %call_407166, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %eax	 RIP: 407169	 Bytes: 3
  %loadMem_407169 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407169 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407169)
  store %struct.Memory* %call_407169, %struct.Memory** %MEMORY

  ; Code: addl -0x8(%rbp), %eax	 RIP: 40716c	 Bytes: 3
  %loadMem_40716c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40716c = call %struct.Memory* @routine_addl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40716c)
  store %struct.Memory* %call_40716c, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdi	 RIP: 40716f	 Bytes: 3
  %loadMem_40716f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40716f = call %struct.Memory* @routine_movslq__eax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40716f)
  store %struct.Memory* %call_40716f, %struct.Memory** %MEMORY

  ; Code: movzwl (%rsi,%rdi,2), %eax	 RIP: 407172	 Bytes: 4
  %loadMem_407172 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407172 = call %struct.Memory* @routine_movzwl___rsi__rdi_2____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407172)
  store %struct.Memory* %call_407172, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 407176	 Bytes: 2
  %loadMem_407176 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407176 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407176)
  store %struct.Memory* %call_407176, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rsi	 RIP: 407178	 Bytes: 4
  %loadMem_407178 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407178 = call %struct.Memory* @routine_shlq__0x6___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407178)
  store %struct.Memory* %call_407178, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rdx	 RIP: 40717c	 Bytes: 3
  %loadMem_40717c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40717c = call %struct.Memory* @routine_addq__rsi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40717c)
  store %struct.Memory* %call_40717c, %struct.Memory** %MEMORY

  ; Code: addq $0x20, %rdx	 RIP: 40717f	 Bytes: 4
  %loadMem_40717f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40717f = call %struct.Memory* @routine_addq__0x20___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40717f)
  store %struct.Memory* %call_40717f, %struct.Memory** %MEMORY

  ; Code: sarq $0x6, %rdx	 RIP: 407183	 Bytes: 4
  %loadMem_407183 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407183 = call %struct.Memory* @routine_sarq__0x6___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407183)
  store %struct.Memory* %call_407183, %struct.Memory** %MEMORY

  ; Code: cmpq %rdx, %rcx	 RIP: 407187	 Bytes: 3
  %loadMem_407187 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407187 = call %struct.Memory* @routine_cmpq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407187)
  store %struct.Memory* %call_407187, %struct.Memory** %MEMORY

  ; Code: jle .L_4071a0	 RIP: 40718a	 Bytes: 6
  %loadMem_40718a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40718a = call %struct.Memory* @routine_jle_.L_4071a0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40718a, i8* %BRANCH_TAKEN, i64 22, i64 6, i64 6)
  store %struct.Memory* %call_40718a, %struct.Memory** %MEMORY

  %loadBr_40718a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40718a = icmp eq i8 %loadBr_40718a, 1
  br i1 %cmpBr_40718a, label %block_.L_4071a0, label %block_407190

block_407190:
  ; Code: xorl %eax, %eax	 RIP: 407190	 Bytes: 2
  %loadMem_407190 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407190 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407190)
  store %struct.Memory* %call_407190, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 407192	 Bytes: 2
  %loadMem_407192 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407192 = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407192)
  store %struct.Memory* %call_407192, %struct.Memory** %MEMORY

  ; Code: movq %rcx, -0x100(%rbp)	 RIP: 407194	 Bytes: 7
  %loadMem_407194 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407194 = call %struct.Memory* @routine_movq__rcx__MINUS0x100__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407194)
  store %struct.Memory* %call_407194, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4071f7	 RIP: 40719b	 Bytes: 5
  %loadMem_40719b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40719b = call %struct.Memory* @routine_jmpq_.L_4071f7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40719b, i64 92, i64 5)
  store %struct.Memory* %call_40719b, %struct.Memory** %MEMORY

  br label %block_.L_4071f7

  ; Code: .L_4071a0:	 RIP: 4071a0	 Bytes: 0
block_.L_4071a0:

  ; Code: movslq -0x1c(%rbp), %rax	 RIP: 4071a0	 Bytes: 4
  %loadMem_4071a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4071a0 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4071a0)
  store %struct.Memory* %call_4071a0, %struct.Memory** %MEMORY

  ; Code: movl -0x50(%rbp,%rax,4), %ecx	 RIP: 4071a4	 Bytes: 4
  %loadMem_4071a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4071a4 = call %struct.Memory* @routine_movl_MINUS0x50__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4071a4)
  store %struct.Memory* %call_4071a4, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rax	 RIP: 4071a8	 Bytes: 4
  %loadMem_4071a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4071a8 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4071a8)
  store %struct.Memory* %call_4071a8, %struct.Memory** %MEMORY

  ; Code: subl -0x50(%rbp,%rax,4), %ecx	 RIP: 4071ac	 Bytes: 4
  %loadMem_4071ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4071ac = call %struct.Memory* @routine_subl_MINUS0x50__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4071ac)
  store %struct.Memory* %call_4071ac, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rax	 RIP: 4071b0	 Bytes: 3
  %loadMem_4071b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4071b0 = call %struct.Memory* @routine_movslq__ecx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4071b0)
  store %struct.Memory* %call_4071b0, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rdx	 RIP: 4071b3	 Bytes: 8
  %loadMem_4071b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4071b3 = call %struct.Memory* @routine_movq_0x6cb900___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4071b3)
  store %struct.Memory* %call_4071b3, %struct.Memory** %MEMORY

  ; Code: addq $0x3138, %rdx	 RIP: 4071bb	 Bytes: 7
  %loadMem_4071bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4071bb = call %struct.Memory* @routine_addq__0x3138___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4071bb)
  store %struct.Memory* %call_4071bb, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %ecx	 RIP: 4071c2	 Bytes: 3
  %loadMem_4071c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4071c2 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4071c2)
  store %struct.Memory* %call_4071c2, %struct.Memory** %MEMORY

  ; Code: addl -0x4(%rbp), %ecx	 RIP: 4071c5	 Bytes: 3
  %loadMem_4071c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4071c5 = call %struct.Memory* @routine_addl_MINUS0x4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4071c5)
  store %struct.Memory* %call_4071c5, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 4071c8	 Bytes: 3
  %loadMem_4071c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4071c8 = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4071c8)
  store %struct.Memory* %call_4071c8, %struct.Memory** %MEMORY

  ; Code: shlq $0x5, %rsi	 RIP: 4071cb	 Bytes: 4
  %loadMem_4071cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4071cb = call %struct.Memory* @routine_shlq__0x5___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4071cb)
  store %struct.Memory* %call_4071cb, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rdx	 RIP: 4071cf	 Bytes: 3
  %loadMem_4071cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4071cf = call %struct.Memory* @routine_addq__rsi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4071cf)
  store %struct.Memory* %call_4071cf, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %ecx	 RIP: 4071d2	 Bytes: 3
  %loadMem_4071d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4071d2 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4071d2)
  store %struct.Memory* %call_4071d2, %struct.Memory** %MEMORY

  ; Code: addl -0x8(%rbp), %ecx	 RIP: 4071d5	 Bytes: 3
  %loadMem_4071d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4071d5 = call %struct.Memory* @routine_addl_MINUS0x8__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4071d5)
  store %struct.Memory* %call_4071d5, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 4071d8	 Bytes: 3
  %loadMem_4071d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4071d8 = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4071d8)
  store %struct.Memory* %call_4071d8, %struct.Memory** %MEMORY

  ; Code: movzwl (%rdx,%rsi,2), %ecx	 RIP: 4071db	 Bytes: 4
  %loadMem_4071db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4071db = call %struct.Memory* @routine_movzwl___rdx__rsi_2____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4071db)
  store %struct.Memory* %call_4071db, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 4071df	 Bytes: 2
  %loadMem_4071df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4071df = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4071df)
  store %struct.Memory* %call_4071df, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rdx	 RIP: 4071e1	 Bytes: 4
  %loadMem_4071e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4071e1 = call %struct.Memory* @routine_shlq__0x6___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4071e1)
  store %struct.Memory* %call_4071e1, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 4071e5	 Bytes: 3
  %loadMem_4071e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4071e5 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4071e5)
  store %struct.Memory* %call_4071e5, %struct.Memory** %MEMORY

  ; Code: addq $0x20, %rax	 RIP: 4071e8	 Bytes: 4
  %loadMem_4071e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4071e8 = call %struct.Memory* @routine_addq__0x20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4071e8)
  store %struct.Memory* %call_4071e8, %struct.Memory** %MEMORY

  ; Code: sarq $0x6, %rax	 RIP: 4071ec	 Bytes: 4
  %loadMem_4071ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4071ec = call %struct.Memory* @routine_sarq__0x6___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4071ec)
  store %struct.Memory* %call_4071ec, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x100(%rbp)	 RIP: 4071f0	 Bytes: 7
  %loadMem_4071f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4071f0 = call %struct.Memory* @routine_movq__rax__MINUS0x100__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4071f0)
  store %struct.Memory* %call_4071f0, %struct.Memory** %MEMORY

  ; Code: .L_4071f7:	 RIP: 4071f7	 Bytes: 0
  br label %block_.L_4071f7
block_.L_4071f7:

  ; Code: movq -0x100(%rbp), %rax	 RIP: 4071f7	 Bytes: 7
  %loadMem_4071f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4071f7 = call %struct.Memory* @routine_movq_MINUS0x100__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4071f7)
  store %struct.Memory* %call_4071f7, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0xf8(%rbp)	 RIP: 4071fe	 Bytes: 7
  %loadMem_4071fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4071fe = call %struct.Memory* @routine_movq__rax__MINUS0xf8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4071fe)
  store %struct.Memory* %call_4071fe, %struct.Memory** %MEMORY

  ; Code: .L_407205:	 RIP: 407205	 Bytes: 0
  br label %block_.L_407205
block_.L_407205:

  ; Code: movq -0xf8(%rbp), %rax	 RIP: 407205	 Bytes: 7
  %loadMem_407205 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407205 = call %struct.Memory* @routine_movq_MINUS0xf8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407205)
  store %struct.Memory* %call_407205, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 40720c	 Bytes: 2
  %loadMem_40720c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40720c = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40720c)
  store %struct.Memory* %call_40720c, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 40720e	 Bytes: 8
  %loadMem_40720e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40720e = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40720e)
  store %struct.Memory* %call_40720e, %struct.Memory** %MEMORY

  ; Code: addq $0x3338, %rax	 RIP: 407216	 Bytes: 6
  %loadMem_407216 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407216 = call %struct.Memory* @routine_addq__0x3338___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407216)
  store %struct.Memory* %call_407216, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rdx	 RIP: 40721c	 Bytes: 4
  %loadMem_40721c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40721c = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40721c)
  store %struct.Memory* %call_40721c, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rdx	 RIP: 407220	 Bytes: 4
  %loadMem_407220 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407220 = call %struct.Memory* @routine_shlq__0x6___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407220)
  store %struct.Memory* %call_407220, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 407224	 Bytes: 3
  %loadMem_407224 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407224 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407224)
  store %struct.Memory* %call_407224, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 407227	 Bytes: 4
  %loadMem_407227 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407227 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407227)
  store %struct.Memory* %call_407227, %struct.Memory** %MEMORY

  ; Code: movl %ecx, (%rax,%rdx,4)	 RIP: 40722b	 Bytes: 3
  %loadMem_40722b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40722b = call %struct.Memory* @routine_movl__ecx____rax__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40722b)
  store %struct.Memory* %call_40722b, %struct.Memory** %MEMORY

  ; Code: jmpq .L_407316	 RIP: 40722e	 Bytes: 5
  %loadMem_40722e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40722e = call %struct.Memory* @routine_jmpq_.L_407316(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40722e, i64 232, i64 5)
  store %struct.Memory* %call_40722e, %struct.Memory** %MEMORY

  br label %block_.L_407316

  ; Code: .L_407233:	 RIP: 407233	 Bytes: 0
block_.L_407233:

  ; Code: cmpl $0x0, -0x9c(%rbp)	 RIP: 407233	 Bytes: 7
  %loadMem_407233 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407233 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x9c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407233)
  store %struct.Memory* %call_407233, %struct.Memory** %MEMORY

  ; Code: je .L_4072a5	 RIP: 40723a	 Bytes: 6
  %loadMem_40723a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40723a = call %struct.Memory* @routine_je_.L_4072a5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40723a, i8* %BRANCH_TAKEN, i64 107, i64 6, i64 6)
  store %struct.Memory* %call_40723a, %struct.Memory** %MEMORY

  %loadBr_40723a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40723a = icmp eq i8 %loadBr_40723a, 1
  br i1 %cmpBr_40723a, label %block_.L_4072a5, label %block_407240

block_407240:
  ; Code: movslq -0x1c(%rbp), %rax	 RIP: 407240	 Bytes: 4
  %loadMem_407240 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407240 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407240)
  store %struct.Memory* %call_407240, %struct.Memory** %MEMORY

  ; Code: movl -0x50(%rbp,%rax,4), %ecx	 RIP: 407244	 Bytes: 4
  %loadMem_407244 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407244 = call %struct.Memory* @routine_movl_MINUS0x50__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407244)
  store %struct.Memory* %call_407244, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rax	 RIP: 407248	 Bytes: 4
  %loadMem_407248 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407248 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407248)
  store %struct.Memory* %call_407248, %struct.Memory** %MEMORY

  ; Code: addl -0x50(%rbp,%rax,4), %ecx	 RIP: 40724c	 Bytes: 4
  %loadMem_40724c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40724c = call %struct.Memory* @routine_addl_MINUS0x50__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40724c)
  store %struct.Memory* %call_40724c, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 407250	 Bytes: 8
  %loadMem_407250 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407250 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407250)
  store %struct.Memory* %call_407250, %struct.Memory** %MEMORY

  ; Code: addq $0x3338, %rax	 RIP: 407258	 Bytes: 6
  %loadMem_407258 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407258 = call %struct.Memory* @routine_addq__0x3338___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407258)
  store %struct.Memory* %call_407258, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rdx	 RIP: 40725e	 Bytes: 4
  %loadMem_40725e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40725e = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40725e)
  store %struct.Memory* %call_40725e, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rdx	 RIP: 407262	 Bytes: 4
  %loadMem_407262 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407262 = call %struct.Memory* @routine_shlq__0x6___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407262)
  store %struct.Memory* %call_407262, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 407266	 Bytes: 3
  %loadMem_407266 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407266 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407266)
  store %struct.Memory* %call_407266, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rdx	 RIP: 407269	 Bytes: 4
  %loadMem_407269 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407269 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407269)
  store %struct.Memory* %call_407269, %struct.Memory** %MEMORY

  ; Code: movl %ecx, (%rax,%rdx,4)	 RIP: 40726d	 Bytes: 3
  %loadMem_40726d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40726d = call %struct.Memory* @routine_movl__ecx____rax__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40726d)
  store %struct.Memory* %call_40726d, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rax	 RIP: 407270	 Bytes: 4
  %loadMem_407270 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407270 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407270)
  store %struct.Memory* %call_407270, %struct.Memory** %MEMORY

  ; Code: movl -0x50(%rbp,%rax,4), %ecx	 RIP: 407274	 Bytes: 4
  %loadMem_407274 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407274 = call %struct.Memory* @routine_movl_MINUS0x50__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407274)
  store %struct.Memory* %call_407274, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rax	 RIP: 407278	 Bytes: 4
  %loadMem_407278 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407278 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407278)
  store %struct.Memory* %call_407278, %struct.Memory** %MEMORY

  ; Code: subl -0x50(%rbp,%rax,4), %ecx	 RIP: 40727c	 Bytes: 4
  %loadMem_40727c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40727c = call %struct.Memory* @routine_subl_MINUS0x50__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40727c)
  store %struct.Memory* %call_40727c, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 407280	 Bytes: 8
  %loadMem_407280 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407280 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407280)
  store %struct.Memory* %call_407280, %struct.Memory** %MEMORY

  ; Code: addq $0x3338, %rax	 RIP: 407288	 Bytes: 6
  %loadMem_407288 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407288 = call %struct.Memory* @routine_addq__0x3338___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407288)
  store %struct.Memory* %call_407288, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rdx	 RIP: 40728e	 Bytes: 4
  %loadMem_40728e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40728e = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40728e)
  store %struct.Memory* %call_40728e, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rdx	 RIP: 407292	 Bytes: 4
  %loadMem_407292 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407292 = call %struct.Memory* @routine_shlq__0x6___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407292)
  store %struct.Memory* %call_407292, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 407296	 Bytes: 3
  %loadMem_407296 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407296 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407296)
  store %struct.Memory* %call_407296, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 407299	 Bytes: 4
  %loadMem_407299 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407299 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407299)
  store %struct.Memory* %call_407299, %struct.Memory** %MEMORY

  ; Code: movl %ecx, (%rax,%rdx,4)	 RIP: 40729d	 Bytes: 3
  %loadMem_40729d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40729d = call %struct.Memory* @routine_movl__ecx____rax__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40729d)
  store %struct.Memory* %call_40729d, %struct.Memory** %MEMORY

  ; Code: jmpq .L_407311	 RIP: 4072a0	 Bytes: 5
  %loadMem_4072a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4072a0 = call %struct.Memory* @routine_jmpq_.L_407311(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4072a0, i64 113, i64 5)
  store %struct.Memory* %call_4072a0, %struct.Memory** %MEMORY

  br label %block_.L_407311

  ; Code: .L_4072a5:	 RIP: 4072a5	 Bytes: 0
block_.L_4072a5:

  ; Code: movslq -0x1c(%rbp), %rax	 RIP: 4072a5	 Bytes: 4
  %loadMem_4072a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4072a5 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4072a5)
  store %struct.Memory* %call_4072a5, %struct.Memory** %MEMORY

  ; Code: movl -0x50(%rbp,%rax,4), %ecx	 RIP: 4072a9	 Bytes: 4
  %loadMem_4072a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4072a9 = call %struct.Memory* @routine_movl_MINUS0x50__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4072a9)
  store %struct.Memory* %call_4072a9, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rax	 RIP: 4072ad	 Bytes: 4
  %loadMem_4072ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4072ad = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4072ad)
  store %struct.Memory* %call_4072ad, %struct.Memory** %MEMORY

  ; Code: addl -0x50(%rbp,%rax,4), %ecx	 RIP: 4072b1	 Bytes: 4
  %loadMem_4072b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4072b1 = call %struct.Memory* @routine_addl_MINUS0x50__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4072b1)
  store %struct.Memory* %call_4072b1, %struct.Memory** %MEMORY

  ; Code: addl $0x20, %ecx	 RIP: 4072b5	 Bytes: 3
  %loadMem_4072b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4072b5 = call %struct.Memory* @routine_addl__0x20___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4072b5)
  store %struct.Memory* %call_4072b5, %struct.Memory** %MEMORY

  ; Code: sarl $0x6, %ecx	 RIP: 4072b8	 Bytes: 3
  %loadMem_4072b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4072b8 = call %struct.Memory* @routine_sarl__0x6___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4072b8)
  store %struct.Memory* %call_4072b8, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 4072bb	 Bytes: 8
  %loadMem_4072bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4072bb = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4072bb)
  store %struct.Memory* %call_4072bb, %struct.Memory** %MEMORY

  ; Code: addq $0x3338, %rax	 RIP: 4072c3	 Bytes: 6
  %loadMem_4072c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4072c3 = call %struct.Memory* @routine_addq__0x3338___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4072c3)
  store %struct.Memory* %call_4072c3, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rdx	 RIP: 4072c9	 Bytes: 4
  %loadMem_4072c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4072c9 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4072c9)
  store %struct.Memory* %call_4072c9, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rdx	 RIP: 4072cd	 Bytes: 4
  %loadMem_4072cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4072cd = call %struct.Memory* @routine_shlq__0x6___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4072cd)
  store %struct.Memory* %call_4072cd, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 4072d1	 Bytes: 3
  %loadMem_4072d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4072d1 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4072d1)
  store %struct.Memory* %call_4072d1, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rdx	 RIP: 4072d4	 Bytes: 4
  %loadMem_4072d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4072d4 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4072d4)
  store %struct.Memory* %call_4072d4, %struct.Memory** %MEMORY

  ; Code: movl %ecx, (%rax,%rdx,4)	 RIP: 4072d8	 Bytes: 3
  %loadMem_4072d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4072d8 = call %struct.Memory* @routine_movl__ecx____rax__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4072d8)
  store %struct.Memory* %call_4072d8, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rax	 RIP: 4072db	 Bytes: 4
  %loadMem_4072db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4072db = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4072db)
  store %struct.Memory* %call_4072db, %struct.Memory** %MEMORY

  ; Code: movl -0x50(%rbp,%rax,4), %ecx	 RIP: 4072df	 Bytes: 4
  %loadMem_4072df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4072df = call %struct.Memory* @routine_movl_MINUS0x50__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4072df)
  store %struct.Memory* %call_4072df, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rax	 RIP: 4072e3	 Bytes: 4
  %loadMem_4072e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4072e3 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4072e3)
  store %struct.Memory* %call_4072e3, %struct.Memory** %MEMORY

  ; Code: subl -0x50(%rbp,%rax,4), %ecx	 RIP: 4072e7	 Bytes: 4
  %loadMem_4072e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4072e7 = call %struct.Memory* @routine_subl_MINUS0x50__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4072e7)
  store %struct.Memory* %call_4072e7, %struct.Memory** %MEMORY

  ; Code: addl $0x20, %ecx	 RIP: 4072eb	 Bytes: 3
  %loadMem_4072eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4072eb = call %struct.Memory* @routine_addl__0x20___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4072eb)
  store %struct.Memory* %call_4072eb, %struct.Memory** %MEMORY

  ; Code: sarl $0x6, %ecx	 RIP: 4072ee	 Bytes: 3
  %loadMem_4072ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4072ee = call %struct.Memory* @routine_sarl__0x6___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4072ee)
  store %struct.Memory* %call_4072ee, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 4072f1	 Bytes: 8
  %loadMem_4072f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4072f1 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4072f1)
  store %struct.Memory* %call_4072f1, %struct.Memory** %MEMORY

  ; Code: addq $0x3338, %rax	 RIP: 4072f9	 Bytes: 6
  %loadMem_4072f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4072f9 = call %struct.Memory* @routine_addq__0x3338___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4072f9)
  store %struct.Memory* %call_4072f9, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rdx	 RIP: 4072ff	 Bytes: 4
  %loadMem_4072ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4072ff = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4072ff)
  store %struct.Memory* %call_4072ff, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rdx	 RIP: 407303	 Bytes: 4
  %loadMem_407303 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407303 = call %struct.Memory* @routine_shlq__0x6___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407303)
  store %struct.Memory* %call_407303, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 407307	 Bytes: 3
  %loadMem_407307 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407307 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407307)
  store %struct.Memory* %call_407307, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 40730a	 Bytes: 4
  %loadMem_40730a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40730a = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40730a)
  store %struct.Memory* %call_40730a, %struct.Memory** %MEMORY

  ; Code: movl %ecx, (%rax,%rdx,4)	 RIP: 40730e	 Bytes: 3
  %loadMem_40730e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40730e = call %struct.Memory* @routine_movl__ecx____rax__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40730e)
  store %struct.Memory* %call_40730e, %struct.Memory** %MEMORY

  ; Code: .L_407311:	 RIP: 407311	 Bytes: 0
  br label %block_.L_407311
block_.L_407311:

  ; Code: jmpq .L_407316	 RIP: 407311	 Bytes: 5
  %loadMem_407311 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407311 = call %struct.Memory* @routine_jmpq_.L_407316(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407311, i64 5, i64 5)
  store %struct.Memory* %call_407311, %struct.Memory** %MEMORY

  br label %block_.L_407316

  ; Code: .L_407316:	 RIP: 407316	 Bytes: 0
block_.L_407316:

  ; Code: jmpq .L_40731b	 RIP: 407316	 Bytes: 5
  %loadMem_407316 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407316 = call %struct.Memory* @routine_jmpq_.L_40731b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407316, i64 5, i64 5)
  store %struct.Memory* %call_407316, %struct.Memory** %MEMORY

  br label %block_.L_40731b

  ; Code: .L_40731b:	 RIP: 40731b	 Bytes: 0
block_.L_40731b:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 40731b	 Bytes: 3
  %loadMem_40731b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40731b = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40731b)
  store %struct.Memory* %call_40731b, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40731e	 Bytes: 3
  %loadMem_40731e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40731e = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40731e)
  store %struct.Memory* %call_40731e, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 407321	 Bytes: 3
  %loadMem_407321 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407321 = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407321)
  store %struct.Memory* %call_407321, %struct.Memory** %MEMORY

  ; Code: jmpq .L_406df4	 RIP: 407324	 Bytes: 5
  %loadMem_407324 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407324 = call %struct.Memory* @routine_jmpq_.L_406df4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407324, i64 -1328, i64 5)
  store %struct.Memory* %call_407324, %struct.Memory** %MEMORY

  br label %block_.L_406df4

  ; Code: .L_407329:	 RIP: 407329	 Bytes: 0
block_.L_407329:

  ; Code: jmpq .L_40732e	 RIP: 407329	 Bytes: 5
  %loadMem_407329 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407329 = call %struct.Memory* @routine_jmpq_.L_40732e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407329, i64 5, i64 5)
  store %struct.Memory* %call_407329, %struct.Memory** %MEMORY

  br label %block_.L_40732e

  ; Code: .L_40732e:	 RIP: 40732e	 Bytes: 0
block_.L_40732e:

  ; Code: movl -0x18(%rbp), %eax	 RIP: 40732e	 Bytes: 3
  %loadMem_40732e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40732e = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40732e)
  store %struct.Memory* %call_40732e, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 407331	 Bytes: 3
  %loadMem_407331 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407331 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407331)
  store %struct.Memory* %call_407331, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x18(%rbp)	 RIP: 407334	 Bytes: 3
  %loadMem_407334 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407334 = call %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407334)
  store %struct.Memory* %call_407334, %struct.Memory** %MEMORY

  ; Code: jmpq .L_406d41	 RIP: 407337	 Bytes: 5
  %loadMem_407337 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407337 = call %struct.Memory* @routine_jmpq_.L_406d41(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407337, i64 -1526, i64 5)
  store %struct.Memory* %call_407337, %struct.Memory** %MEMORY

  br label %block_.L_406d41

  ; Code: .L_40733c:	 RIP: 40733c	 Bytes: 0
block_.L_40733c:

  ; Code: movq 0x6cb900, %rax	 RIP: 40733c	 Bytes: 8
  %loadMem_40733c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40733c = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40733c)
  store %struct.Memory* %call_40733c, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x11c14(%rax)	 RIP: 407344	 Bytes: 7
  %loadMem_407344 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407344 = call %struct.Memory* @routine_cmpl__0x0__0x11c14__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407344)
  store %struct.Memory* %call_407344, %struct.Memory** %MEMORY

  ; Code: jne .L_4074ad	 RIP: 40734b	 Bytes: 6
  %loadMem_40734b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40734b = call %struct.Memory* @routine_jne_.L_4074ad(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40734b, i8* %BRANCH_TAKEN, i64 354, i64 6, i64 6)
  store %struct.Memory* %call_40734b, %struct.Memory** %MEMORY

  %loadBr_40734b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40734b = icmp eq i8 %loadBr_40734b, 1
  br i1 %cmpBr_40734b, label %block_.L_4074ad, label %block_407351

block_407351:
  ; Code: movl $0x0, -0x1c(%rbp)	 RIP: 407351	 Bytes: 7
  %loadMem_407351 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407351 = call %struct.Memory* @routine_movl__0x0__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407351)
  store %struct.Memory* %call_407351, %struct.Memory** %MEMORY

  ; Code: .L_407358:	 RIP: 407358	 Bytes: 0
  br label %block_.L_407358
block_.L_407358:

  ; Code: cmpl $0x4, -0x1c(%rbp)	 RIP: 407358	 Bytes: 4
  %loadMem_407358 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407358 = call %struct.Memory* @routine_cmpl__0x4__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407358)
  store %struct.Memory* %call_407358, %struct.Memory** %MEMORY

  ; Code: jge .L_4074a8	 RIP: 40735c	 Bytes: 6
  %loadMem_40735c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40735c = call %struct.Memory* @routine_jge_.L_4074a8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40735c, i8* %BRANCH_TAKEN, i64 332, i64 6, i64 6)
  store %struct.Memory* %call_40735c, %struct.Memory** %MEMORY

  %loadBr_40735c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40735c = icmp eq i8 %loadBr_40735c, 1
  br i1 %cmpBr_40735c, label %block_.L_4074a8, label %block_407362

block_407362:
  ; Code: movl $0x0, -0x18(%rbp)	 RIP: 407362	 Bytes: 7
  %loadMem_407362 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407362 = call %struct.Memory* @routine_movl__0x0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407362)
  store %struct.Memory* %call_407362, %struct.Memory** %MEMORY

  ; Code: .L_407369:	 RIP: 407369	 Bytes: 0
  br label %block_.L_407369
block_.L_407369:

  ; Code: cmpl $0x4, -0x18(%rbp)	 RIP: 407369	 Bytes: 4
  %loadMem_407369 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407369 = call %struct.Memory* @routine_cmpl__0x4__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407369)
  store %struct.Memory* %call_407369, %struct.Memory** %MEMORY

  ; Code: jge .L_407495	 RIP: 40736d	 Bytes: 6
  %loadMem_40736d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40736d = call %struct.Memory* @routine_jge_.L_407495(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40736d, i8* %BRANCH_TAKEN, i64 296, i64 6, i64 6)
  store %struct.Memory* %call_40736d, %struct.Memory** %MEMORY

  %loadBr_40736d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40736d = icmp eq i8 %loadBr_40736d, 1
  br i1 %cmpBr_40736d, label %block_.L_407495, label %block_407373

block_407373:
  ; Code: cmpl $0x0, -0x9c(%rbp)	 RIP: 407373	 Bytes: 7
  %loadMem_407373 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407373 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x9c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407373)
  store %struct.Memory* %call_407373, %struct.Memory** %MEMORY

  ; Code: je .L_40741a	 RIP: 40737a	 Bytes: 6
  %loadMem_40737a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40737a = call %struct.Memory* @routine_je_.L_40741a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40737a, i8* %BRANCH_TAKEN, i64 160, i64 6, i64 6)
  store %struct.Memory* %call_40737a, %struct.Memory** %MEMORY

  %loadBr_40737a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40737a = icmp eq i8 %loadBr_40737a, 1
  br i1 %cmpBr_40737a, label %block_.L_40741a, label %block_407380

block_407380:
  ; Code: movq 0x6cb900, %rax	 RIP: 407380	 Bytes: 8
  %loadMem_407380 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407380 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407380)
  store %struct.Memory* %call_407380, %struct.Memory** %MEMORY

  ; Code: addq $0x3338, %rax	 RIP: 407388	 Bytes: 6
  %loadMem_407388 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407388 = call %struct.Memory* @routine_addq__0x3338___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407388)
  store %struct.Memory* %call_407388, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 40738e	 Bytes: 4
  %loadMem_40738e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40738e = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40738e)
  store %struct.Memory* %call_40738e, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rcx	 RIP: 407392	 Bytes: 4
  %loadMem_407392 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407392 = call %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407392)
  store %struct.Memory* %call_407392, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 407396	 Bytes: 3
  %loadMem_407396 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407396 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407396)
  store %struct.Memory* %call_407396, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rcx	 RIP: 407399	 Bytes: 4
  %loadMem_407399 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407399 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407399)
  store %struct.Memory* %call_407399, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rcx,4), %edx	 RIP: 40739d	 Bytes: 3
  %loadMem_40739d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40739d = call %struct.Memory* @routine_movl___rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40739d)
  store %struct.Memory* %call_40739d, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 4073a0	 Bytes: 8
  %loadMem_4073a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4073a0 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4073a0)
  store %struct.Memory* %call_4073a0, %struct.Memory** %MEMORY

  ; Code: addq $0x3138, %rax	 RIP: 4073a8	 Bytes: 6
  %loadMem_4073a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4073a8 = call %struct.Memory* @routine_addq__0x3138___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4073a8)
  store %struct.Memory* %call_4073a8, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %esi	 RIP: 4073ae	 Bytes: 3
  %loadMem_4073ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4073ae = call %struct.Memory* @routine_movl_MINUS0x18__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4073ae)
  store %struct.Memory* %call_4073ae, %struct.Memory** %MEMORY

  ; Code: addl -0x4(%rbp), %esi	 RIP: 4073b1	 Bytes: 3
  %loadMem_4073b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4073b1 = call %struct.Memory* @routine_addl_MINUS0x4__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4073b1)
  store %struct.Memory* %call_4073b1, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rcx	 RIP: 4073b4	 Bytes: 3
  %loadMem_4073b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4073b4 = call %struct.Memory* @routine_movslq__esi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4073b4)
  store %struct.Memory* %call_4073b4, %struct.Memory** %MEMORY

  ; Code: shlq $0x5, %rcx	 RIP: 4073b7	 Bytes: 4
  %loadMem_4073b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4073b7 = call %struct.Memory* @routine_shlq__0x5___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4073b7)
  store %struct.Memory* %call_4073b7, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4073bb	 Bytes: 3
  %loadMem_4073bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4073bb = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4073bb)
  store %struct.Memory* %call_4073bb, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %esi	 RIP: 4073be	 Bytes: 3
  %loadMem_4073be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4073be = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4073be)
  store %struct.Memory* %call_4073be, %struct.Memory** %MEMORY

  ; Code: addl -0x8(%rbp), %esi	 RIP: 4073c1	 Bytes: 3
  %loadMem_4073c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4073c1 = call %struct.Memory* @routine_addl_MINUS0x8__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4073c1)
  store %struct.Memory* %call_4073c1, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rcx	 RIP: 4073c4	 Bytes: 3
  %loadMem_4073c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4073c4 = call %struct.Memory* @routine_movslq__esi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4073c4)
  store %struct.Memory* %call_4073c4, %struct.Memory** %MEMORY

  ; Code: movzwl (%rax,%rcx,2), %esi	 RIP: 4073c7	 Bytes: 4
  %loadMem_4073c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4073c7 = call %struct.Memory* @routine_movzwl___rax__rcx_2____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4073c7)
  store %struct.Memory* %call_4073c7, %struct.Memory** %MEMORY

  ; Code: addl %esi, %edx	 RIP: 4073cb	 Bytes: 2
  %loadMem_4073cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4073cb = call %struct.Memory* @routine_addl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4073cb)
  store %struct.Memory* %call_4073cb, %struct.Memory** %MEMORY

  ; Code: movw %dx, %di	 RIP: 4073cd	 Bytes: 3
  %loadMem_4073cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4073cd = call %struct.Memory* @routine_movw__dx___di(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4073cd)
  store %struct.Memory* %call_4073cd, %struct.Memory** %MEMORY

  ; Code: movq 0x70fcf0, %rax	 RIP: 4073d0	 Bytes: 8
  %loadMem_4073d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4073d0 = call %struct.Memory* @routine_movq_0x70fcf0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4073d0)
  store %struct.Memory* %call_4073d0, %struct.Memory** %MEMORY

  ; Code: movq 0x1918(%rax), %rax	 RIP: 4073d8	 Bytes: 7
  %loadMem_4073d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4073d8 = call %struct.Memory* @routine_movq_0x1918__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4073d8)
  store %struct.Memory* %call_4073d8, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 4073df	 Bytes: 8
  %loadMem_4073df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4073df = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4073df)
  store %struct.Memory* %call_4073df, %struct.Memory** %MEMORY

  ; Code: movl 0x9c(%rcx), %edx	 RIP: 4073e7	 Bytes: 6
  %loadMem_4073e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4073e7 = call %struct.Memory* @routine_movl_0x9c__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4073e7)
  store %struct.Memory* %call_4073e7, %struct.Memory** %MEMORY

  ; Code: addl -0x8(%rbp), %edx	 RIP: 4073ed	 Bytes: 3
  %loadMem_4073ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4073ed = call %struct.Memory* @routine_addl_MINUS0x8__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4073ed)
  store %struct.Memory* %call_4073ed, %struct.Memory** %MEMORY

  ; Code: addl -0x1c(%rbp), %edx	 RIP: 4073f0	 Bytes: 3
  %loadMem_4073f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4073f0 = call %struct.Memory* @routine_addl_MINUS0x1c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4073f0)
  store %struct.Memory* %call_4073f0, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 4073f3	 Bytes: 3
  %loadMem_4073f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4073f3 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4073f3)
  store %struct.Memory* %call_4073f3, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 4073f6	 Bytes: 4
  %loadMem_4073f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4073f6 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4073f6)
  store %struct.Memory* %call_4073f6, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 4073fa	 Bytes: 8
  %loadMem_4073fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4073fa = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4073fa)
  store %struct.Memory* %call_4073fa, %struct.Memory** %MEMORY

  ; Code: movl 0x98(%rcx), %edx	 RIP: 407402	 Bytes: 6
  %loadMem_407402 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407402 = call %struct.Memory* @routine_movl_0x98__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407402)
  store %struct.Memory* %call_407402, %struct.Memory** %MEMORY

  ; Code: addl -0x4(%rbp), %edx	 RIP: 407408	 Bytes: 3
  %loadMem_407408 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407408 = call %struct.Memory* @routine_addl_MINUS0x4__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407408)
  store %struct.Memory* %call_407408, %struct.Memory** %MEMORY

  ; Code: addl -0x18(%rbp), %edx	 RIP: 40740b	 Bytes: 3
  %loadMem_40740b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40740b = call %struct.Memory* @routine_addl_MINUS0x18__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40740b)
  store %struct.Memory* %call_40740b, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 40740e	 Bytes: 3
  %loadMem_40740e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40740e = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40740e)
  store %struct.Memory* %call_40740e, %struct.Memory** %MEMORY

  ; Code: movw %di, (%rax,%rcx,2)	 RIP: 407411	 Bytes: 4
  %loadMem_407411 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407411 = call %struct.Memory* @routine_movw__di____rax__rcx_2_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407411)
  store %struct.Memory* %call_407411, %struct.Memory** %MEMORY

  ; Code: jmpq .L_407482	 RIP: 407415	 Bytes: 5
  %loadMem_407415 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407415 = call %struct.Memory* @routine_jmpq_.L_407482(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407415, i64 109, i64 5)
  store %struct.Memory* %call_407415, %struct.Memory** %MEMORY

  br label %block_.L_407482

  ; Code: .L_40741a:	 RIP: 40741a	 Bytes: 0
block_.L_40741a:

  ; Code: movq 0x6cb900, %rax	 RIP: 40741a	 Bytes: 8
  %loadMem_40741a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40741a = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40741a)
  store %struct.Memory* %call_40741a, %struct.Memory** %MEMORY

  ; Code: addq $0x3338, %rax	 RIP: 407422	 Bytes: 6
  %loadMem_407422 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407422 = call %struct.Memory* @routine_addq__0x3338___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407422)
  store %struct.Memory* %call_407422, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 407428	 Bytes: 4
  %loadMem_407428 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407428 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407428)
  store %struct.Memory* %call_407428, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rcx	 RIP: 40742c	 Bytes: 4
  %loadMem_40742c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40742c = call %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40742c)
  store %struct.Memory* %call_40742c, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 407430	 Bytes: 3
  %loadMem_407430 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407430 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407430)
  store %struct.Memory* %call_407430, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rcx	 RIP: 407433	 Bytes: 4
  %loadMem_407433 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407433 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407433)
  store %struct.Memory* %call_407433, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rcx,4), %edx	 RIP: 407437	 Bytes: 3
  %loadMem_407437 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407437 = call %struct.Memory* @routine_movl___rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407437)
  store %struct.Memory* %call_407437, %struct.Memory** %MEMORY

  ; Code: movw %dx, %si	 RIP: 40743a	 Bytes: 3
  %loadMem_40743a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40743a = call %struct.Memory* @routine_movw__dx___si(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40743a)
  store %struct.Memory* %call_40743a, %struct.Memory** %MEMORY

  ; Code: movq 0x70fcf0, %rax	 RIP: 40743d	 Bytes: 8
  %loadMem_40743d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40743d = call %struct.Memory* @routine_movq_0x70fcf0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40743d)
  store %struct.Memory* %call_40743d, %struct.Memory** %MEMORY

  ; Code: movq 0x1918(%rax), %rax	 RIP: 407445	 Bytes: 7
  %loadMem_407445 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407445 = call %struct.Memory* @routine_movq_0x1918__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407445)
  store %struct.Memory* %call_407445, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 40744c	 Bytes: 8
  %loadMem_40744c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40744c = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40744c)
  store %struct.Memory* %call_40744c, %struct.Memory** %MEMORY

  ; Code: movl 0x9c(%rcx), %edx	 RIP: 407454	 Bytes: 6
  %loadMem_407454 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407454 = call %struct.Memory* @routine_movl_0x9c__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407454)
  store %struct.Memory* %call_407454, %struct.Memory** %MEMORY

  ; Code: addl -0x8(%rbp), %edx	 RIP: 40745a	 Bytes: 3
  %loadMem_40745a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40745a = call %struct.Memory* @routine_addl_MINUS0x8__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40745a)
  store %struct.Memory* %call_40745a, %struct.Memory** %MEMORY

  ; Code: addl -0x1c(%rbp), %edx	 RIP: 40745d	 Bytes: 3
  %loadMem_40745d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40745d = call %struct.Memory* @routine_addl_MINUS0x1c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40745d)
  store %struct.Memory* %call_40745d, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 407460	 Bytes: 3
  %loadMem_407460 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407460 = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407460)
  store %struct.Memory* %call_407460, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 407463	 Bytes: 4
  %loadMem_407463 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407463 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407463)
  store %struct.Memory* %call_407463, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 407467	 Bytes: 8
  %loadMem_407467 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407467 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407467)
  store %struct.Memory* %call_407467, %struct.Memory** %MEMORY

  ; Code: movl 0x98(%rcx), %edx	 RIP: 40746f	 Bytes: 6
  %loadMem_40746f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40746f = call %struct.Memory* @routine_movl_0x98__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40746f)
  store %struct.Memory* %call_40746f, %struct.Memory** %MEMORY

  ; Code: addl -0x4(%rbp), %edx	 RIP: 407475	 Bytes: 3
  %loadMem_407475 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407475 = call %struct.Memory* @routine_addl_MINUS0x4__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407475)
  store %struct.Memory* %call_407475, %struct.Memory** %MEMORY

  ; Code: addl -0x18(%rbp), %edx	 RIP: 407478	 Bytes: 3
  %loadMem_407478 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407478 = call %struct.Memory* @routine_addl_MINUS0x18__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407478)
  store %struct.Memory* %call_407478, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 40747b	 Bytes: 3
  %loadMem_40747b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40747b = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40747b)
  store %struct.Memory* %call_40747b, %struct.Memory** %MEMORY

  ; Code: movw %si, (%rax,%rcx,2)	 RIP: 40747e	 Bytes: 4
  %loadMem_40747e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40747e = call %struct.Memory* @routine_movw__si____rax__rcx_2_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40747e)
  store %struct.Memory* %call_40747e, %struct.Memory** %MEMORY

  ; Code: .L_407482:	 RIP: 407482	 Bytes: 0
  br label %block_.L_407482
block_.L_407482:

  ; Code: jmpq .L_407487	 RIP: 407482	 Bytes: 5
  %loadMem_407482 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407482 = call %struct.Memory* @routine_jmpq_.L_407487(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407482, i64 5, i64 5)
  store %struct.Memory* %call_407482, %struct.Memory** %MEMORY

  br label %block_.L_407487

  ; Code: .L_407487:	 RIP: 407487	 Bytes: 0
block_.L_407487:

  ; Code: movl -0x18(%rbp), %eax	 RIP: 407487	 Bytes: 3
  %loadMem_407487 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407487 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407487)
  store %struct.Memory* %call_407487, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40748a	 Bytes: 3
  %loadMem_40748a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40748a = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40748a)
  store %struct.Memory* %call_40748a, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x18(%rbp)	 RIP: 40748d	 Bytes: 3
  %loadMem_40748d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40748d = call %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40748d)
  store %struct.Memory* %call_40748d, %struct.Memory** %MEMORY

  ; Code: jmpq .L_407369	 RIP: 407490	 Bytes: 5
  %loadMem_407490 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407490 = call %struct.Memory* @routine_jmpq_.L_407369(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407490, i64 -295, i64 5)
  store %struct.Memory* %call_407490, %struct.Memory** %MEMORY

  br label %block_.L_407369

  ; Code: .L_407495:	 RIP: 407495	 Bytes: 0
block_.L_407495:

  ; Code: jmpq .L_40749a	 RIP: 407495	 Bytes: 5
  %loadMem_407495 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_407495 = call %struct.Memory* @routine_jmpq_.L_40749a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_407495, i64 5, i64 5)
  store %struct.Memory* %call_407495, %struct.Memory** %MEMORY

  br label %block_.L_40749a

  ; Code: .L_40749a:	 RIP: 40749a	 Bytes: 0
block_.L_40749a:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 40749a	 Bytes: 3
  %loadMem_40749a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40749a = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40749a)
  store %struct.Memory* %call_40749a, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 40749d	 Bytes: 3
  %loadMem_40749d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40749d = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40749d)
  store %struct.Memory* %call_40749d, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 4074a0	 Bytes: 3
  %loadMem_4074a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4074a0 = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4074a0)
  store %struct.Memory* %call_4074a0, %struct.Memory** %MEMORY

  ; Code: jmpq .L_407358	 RIP: 4074a3	 Bytes: 5
  %loadMem_4074a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4074a3 = call %struct.Memory* @routine_jmpq_.L_407358(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4074a3, i64 -331, i64 5)
  store %struct.Memory* %call_4074a3, %struct.Memory** %MEMORY

  br label %block_.L_407358

  ; Code: .L_4074a8:	 RIP: 4074a8	 Bytes: 0
block_.L_4074a8:

  ; Code: jmpq .L_4074ad	 RIP: 4074a8	 Bytes: 5
  %loadMem_4074a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4074a8 = call %struct.Memory* @routine_jmpq_.L_4074ad(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4074a8, i64 5, i64 5)
  store %struct.Memory* %call_4074a8, %struct.Memory** %MEMORY

  br label %block_.L_4074ad

  ; Code: .L_4074ad:	 RIP: 4074ad	 Bytes: 0
block_.L_4074ad:

  ; Code: movl -0x64(%rbp), %eax	 RIP: 4074ad	 Bytes: 3
  %loadMem_4074ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4074ad = call %struct.Memory* @routine_movl_MINUS0x64__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4074ad)
  store %struct.Memory* %call_4074ad, %struct.Memory** %MEMORY

  ; Code: addq $0x100, %rsp	 RIP: 4074b0	 Bytes: 7
  %loadMem_4074b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4074b0 = call %struct.Memory* @routine_addq__0x100___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4074b0)
  store %struct.Memory* %call_4074b0, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 4074b7	 Bytes: 1
  %loadMem_4074b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4074b7 = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4074b7)
  store %struct.Memory* %call_4074b7, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 4074b8	 Bytes: 1
  %loadMem_4074b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4074b8 = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4074b8)
  store %struct.Memory* %call_4074b8, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_4074b8
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

define %struct.Memory* @routine_subq__0x100___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 256)
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #2 {
  %5 = trunc i64 %3 to i8
  store i8 %5, i8* %2, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movb__al___r8b(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 17
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %13 = bitcast %union.anon* %12 to %struct.anon.2*
  %R8B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %13, i32 0, i32 0
  %14 = load i8, i8* %AL
  %15 = zext i8 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %R8B, i64 %15)
  ret %struct.Memory* %18
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


define %struct.Memory* @routine_movl__0x4___r9d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %9, i64 4)
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = inttoptr i64 %2 to i64*
  store i64 %3, i64* %5
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__rdx__MINUS0x10__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
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

define %struct.Memory* @routine_idivl__r9d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 19
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R9D = bitcast %union.anon* %8 to i32*
  %9 = load i32, i32* %R9D
  %10 = zext i32 %9 to i64
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 3
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %10)
  ret %struct.Memory* %13
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






define %struct.Memory* @routine_movl__eax__MINUS0x78__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 120
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x78__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 120
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl_MINUS0xa0__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 160
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
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


define %struct.Memory* @routine_movl_MINUS0x74__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 116
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__eax__MINUS0xa4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 164
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






define %struct.Memory* @routine_movl_MINUS0xa4__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 164
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
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


define %struct.Memory* @routine_movl__esi__MINUS0x7c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 124
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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






define %struct.Memory* @routine_movl__edx__MINUS0xa8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 168
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_movl_MINUS0xa8__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 168
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
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


define %struct.Memory* @routine_movl__esi__MINUS0x80__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 128
  %14 = load i32, i32* %ESI
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

define %struct.Memory* @routine_movq_0x6cb900___r10(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 21
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R10 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R10, i64 ptrtoint( %G_0x6cb900_type* @G_0x6cb900 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq_0x3738__r10____r10(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 14136
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R10, i64 %10)
  ret %struct.Memory* %13
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = sext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movslq_MINUS0x7c__rbp____r11(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 124
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq___r10__r11_8____r10(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 21
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R10 = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 23
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R11 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R10
  %13 = load i64, i64* %R11
  %14 = mul i64 %13, 8
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R10, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movslq_MINUS0x80__rbp____r11(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 128
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R11, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movq___r10____r10(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R10, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movq__r10__MINUS0x88__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 21
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R10 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 136
  %14 = load i64, i64* %R10
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}














define %struct.Memory* @routine_movq_0x8__r10____r10(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 8
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R10, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movq__r10__MINUS0x90__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 21
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R10 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 144
  %14 = load i64, i64* %R10
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq_0x3758__r10____r10(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 14168
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R10, i64 %10)
  ret %struct.Memory* %13
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


define %struct.Memory* @routine_movslq_0xc__r11____r11(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 12
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R11, i64 %10)
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

define %struct.Memory* @routine_imulq__0x278___r11___r11(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %R11, i64 %9, i64 632)
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

define %struct.Memory* @routine_addq__r11___r10(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 21
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R10 = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 23
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R11 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R10
  %13 = load i64, i64* %R11
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %R10, i64 %12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__r10__MINUS0x98__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 21
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R10 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 152
  %14 = load i64, i64* %R10
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq_MINUS0x98__rbp____r10(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 21
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R10 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 152
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R10, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_0xc__r10____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 21
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R10 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R10
  %13 = add i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
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

define %struct.Memory* @routine_addl_0x11bdc__r10____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 21
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R10 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDX
  %13 = load i64, i64* %R10
  %14 = add i64 %13, 72668
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %14)
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i8
  %6 = inttoptr i64 %2 to i8*
  store i8 %5, i8* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movb__r8b__MINUS0xa9__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 169
  %15 = load i8, i8* %R8B
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 7
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

define %struct.Memory* @routine_jne_.L_40639f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L4SETZI3RnWIhEEEP6MemoryS4_R5StateT_(%struct.Memory* readnone returned, %struct.State* nocapture readonly dereferenceable(3376), i8* nocapture) #2 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %2, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_sete__cl(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4SETZI3RnWIhEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i8* %CL)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movb__cl__MINUS0xa9__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 169
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

define %struct.Memory* @routine_movb_MINUS0xa9__rbp____al(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 169
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %AL, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__0x6___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 6)
  ret %struct.Memory* %11
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

define %struct.Memory* @routine_movzbl__al___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 7
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RDX = bitcast %union.anon* %12 to i64*
  %13 = load i8, i8* %AL
  %14 = zext i8 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__edx__MINUS0x9c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 156
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movq_MINUS0x98__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 152
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_0xc__rsi____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
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


define %struct.Memory* @routine_addl_0x11bdc__rsi____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 72668
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %14)
  ret %struct.Memory* %17
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

define %struct.Memory* @routine_subl__0x0___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 0)
  ret %struct.Memory* %12
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




define %struct.Memory* @routine_movl_0xc__rsi____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_addl_0x11bdc__rsi____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 72668
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_subl__0x0___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 0)
  ret %struct.Memory* %12
}






define %struct.Memory* @routine_movl__edx__MINUS0x6c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 108
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x68__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 104
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

define %struct.Memory* @routine_addl__0xf___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 15)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl__ecx__MINUS0x70__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 112
  %14 = load i32, i32* %ECX
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


define %struct.Memory* @routine_movb__cl__MINUS0xaa__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 170
  %15 = load i8, i8* %CL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 6
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
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

define %struct.Memory* @routine_jge_.L_40642f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x0__MINUS0x9c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 156
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
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

define %struct.Memory* @routine_setne__al(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5SETNZI3RnWIhEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i8* %AL)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3XORI3RnWIhE2RnIhE2InIhEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i8* nocapture, i64, i64) #0 {
  %6 = xor i64 %4, %3
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

define %struct.Memory* @routine_xorb__0xff___al(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3XORI3RnWIhE2RnIhE2InIhEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %AL, i64 %11, i64 255)
  ret %struct.Memory* %14
}


define %struct.Memory* @routine_movb__al__MINUS0xaa__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 170
  %15 = load i8, i8* %AL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 6
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_movb_MINUS0xaa__rbp____al(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 170
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %AL, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_jne_.L_406442(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jmpq_.L_40657a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movl__0x0__MINUS0x18__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
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


define %struct.Memory* @routine_jge_.L_406500(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_subl_MINUS0x18__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 24
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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


define %struct.Memory* @routine_movl___rcx__rdx_4____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 3
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %18)
  ret %struct.Memory* %21
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








define %struct.Memory* @routine_addl___rcx__rdx_4____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %17 = load i64, i64* %RDX
  %18 = mul i64 %17, 4
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 3
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %15, i64 %19)
  ret %struct.Memory* %22
}


define %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__eax__MINUS0x40__rbp__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -64
  %19 = add i64 %18, %17
  %20 = load i32, i32* %EAX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 4
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %21)
  ret %struct.Memory* %24
}




























define %struct.Memory* @routine_subl___rcx__rdx_4____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %17 = load i64, i64* %RDX
  %18 = mul i64 %17, 4
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 3
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %15, i64 %19)
  ret %struct.Memory* %22
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




define %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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


define %struct.Memory* @routine_jmpq_.L_406449(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movl_MINUS0x40__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addl_MINUS0x3c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 60
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}






define %struct.Memory* @routine_movl__eax__0x3338__rcx__rdx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %18 = add i64 %15, 13112
  %19 = add i64 %18, %17
  %20 = load i32, i32* %EAX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %21)
  ret %struct.Memory* %24
}




define %struct.Memory* @routine_subl_MINUS0x3c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 60
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}






define %struct.Memory* @routine_movl__eax__0x33b8__rcx__rdx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %18 = add i64 %15, 13240
  %19 = add i64 %18, %17
  %20 = load i32, i32* %EAX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %21)
  ret %struct.Memory* %24
}


define %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 52
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_addl_MINUS0x38__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 56
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}






define %struct.Memory* @routine_movl__eax__0x3378__rcx__rdx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %18 = add i64 %15, 13176
  %19 = add i64 %18, %17
  %20 = load i32, i32* %EAX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %21)
  ret %struct.Memory* %24
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


define %struct.Memory* @routine_shll__0x1___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 2
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 1)
  ret %struct.Memory* %12
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

define %struct.Memory* @routine_subl__esi___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RAX
  %13 = load i32, i32* %ESI
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}






define %struct.Memory* @routine_movl__eax__0x33f8__rcx__rdx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %18 = add i64 %15, 13304
  %19 = add i64 %18, %17
  %20 = load i32, i32* %EAX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %21)
  ret %struct.Memory* %24
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


define %struct.Memory* @routine_jmpq_.L_406409(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_cmpl__0x4__MINUS0x18__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 4)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movb__cl__MINUS0xab__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 171
  %15 = load i8, i8* %CL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 6
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_jge_.L_4065a7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_movb__al__MINUS0xab__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 171
  %15 = load i8, i8* %AL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 6
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_movb_MINUS0xab__rbp____al(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 171
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %AL, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_jne_.L_4065ba(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_406719(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_cmpl__0x2__MINUS0x1c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 2)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_406678(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_subl_MINUS0x1c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 28
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
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










define %struct.Memory* @routine_jmpq_.L_4065c1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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
















define %struct.Memory* @routine_movl__eax__0x8__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 8
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


















define %struct.Memory* @routine_movl__eax__0x4__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 4
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




















define %struct.Memory* @routine_movl__eax__0xc__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 12
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}








define %struct.Memory* @routine_jmpq_.L_406581(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movl__0x0__MINUS0x64__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0xffffffff__MINUS0x60__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 96
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 -1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x0__MINUS0x5c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x0__MINUS0x54__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 84
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_cmpl__0x10__MINUS0x54__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 84
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 16)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_406bd6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpl__0x0__0x11afc__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 72444
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_40677d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_je_.L_4067a0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq_MINUS0x98__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
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




define %struct.Memory* @routine_movslq_MINUS0x54__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 84
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i8*
  %6 = load i8, i8* %5
  %7 = zext i8 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movzbl_0x4b2380___rax_2____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 4924288
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %14)
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




define %struct.Memory* @routine_movzbl_0x4b2381___rax_2____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 4924289
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__ecx__MINUS0x1c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 28
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_4067be(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_movzbl_0x4b2360___rax_2____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 4924256
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %14)
  ret %struct.Memory* %17
}






define %struct.Memory* @routine_movzbl_0x4b2361___rax_2____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 4924257
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %14)
  ret %struct.Memory* %17
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




define %struct.Memory* @routine_movl__eax__MINUS0x60__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 96
  %14 = load i32, i32* %EAX
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




define %struct.Memory* @routine_je_.L_406808(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl___rax__rcx_4____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 3
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %18)
  ret %struct.Memory* %21
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

define %struct.Memory* @routine_callq_.abs_plt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_406914(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_cmpl__0x1__MINUS0x14__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_406893(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq__0x710020___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 7405600)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__0x70e8f0___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G__0x70e8f0_type* @G__0x70e8f0 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movslq_MINUS0x6c__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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


define %struct.Memory* @routine_movslq_MINUS0x18__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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




define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 28
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory*, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
  %6 = inttoptr i64 %4 to i32*
  %7 = load i32, i32* %6
  %8 = shl i64 %3, 32
  %9 = ashr exact i64 %8, 32
  %10 = sext i32 %7 to i64
  %11 = mul  i64 %10, %9
  %12 = trunc i64 %11 to i32
  %13 = and i64 %11, 4294967295
  store i64 %13, i64* %2, align 8
  %14 = shl i64 %11, 32
  %15 = ashr exact i64 %14, 32
  %16 = icmp ne i64 %15, %11
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1
  %19 = and i32 %12, 255
  %20 = tail call i32 @llvm.ctpop.i32(i32 %19) #22
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 %23, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 0, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 0, i8* %26, align 1
  %27 = lshr i32 %12, 31
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 %17, i8* %30, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_imull___rdx__rsi_4____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %17 = load i64, i64* %RSI
  %18 = mul i64 %17, 4
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 4
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %15, i64 %19)
  ret %struct.Memory* %22
}


define %struct.Memory* @routine_movslq_MINUS0x68__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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








define %struct.Memory* @routine_movl_MINUS0x70__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 112
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3SARI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* readnone, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
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

define %struct.Memory* @routine_sarl__cl___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SARI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_jmpq_.L_40690f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


















define %struct.Memory* @routine_movq__0x6ccf90___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 7131024)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__0x70fe80___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G__0x70fe80_type* @G__0x70fe80 to i64))
  ret %struct.Memory* %11
}










































define %struct.Memory* @routine_cmpl__0x0__MINUS0x58__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_406b92(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x1__MINUS0x64__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_cmpl__0x1__MINUS0x58__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
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

define %struct.Memory* @routine_jg_.L_40693c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_je_.L_40694f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl___rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 2
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_addl__0xf423f___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 999999)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl__ecx____rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i32, i32* %ECX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_jmpq_.L_40697f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movq__0x4b23a0___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x4b23a0_type* @G__0x4b23a0 to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_movslq_0x9a4__rcx____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 2468
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %10)
  ret %struct.Memory* %13
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




define %struct.Memory* @routine_movslq_MINUS0x60__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movzbl___rax__rcx_1____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %17 = add i64 %16, %15
  %18 = load i64, i64* %PC
  %19 = add i64 %18, 4
  store i64 %19, i64* %PC
  %20 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %17)
  ret %struct.Memory* %20
}




define %struct.Memory* @routine_addl___rax____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__edx____rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl_MINUS0x58__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 88
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}














define %struct.Memory* @routine_movl___rax__rcx_4____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 9
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RSI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 3
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %18)
  ret %struct.Memory* %21
}


define %struct.Memory* @routine_callq_.sign(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq_MINUS0x88__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movslq_MINUS0x5c__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 92
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




define %struct.Memory* @routine_movq_MINUS0x90__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 144
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
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








define %struct.Memory* @routine_je_.L_406a1a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_406b8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_cmpl__0x4__MINUS0x68__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 4)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_406aec(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jne_.L_406a8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x4___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 4)
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


define %struct.Memory* @routine_movl__0x3___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 3)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__0x70d010___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x70d010_type* @G__0x70d010 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movslq_MINUS0x6c__rbp____r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 108
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %13)
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


define %struct.Memory* @routine_movslq_MINUS0x18__rbp____r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_shlq__0x4___r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %9, i64 4)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 28
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_imull___rsi__r8_4____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 17
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %R8 = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RDI
  %16 = load i64, i64* %RSI
  %17 = load i64, i64* %R8
  %18 = mul i64 %17, 4
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 5
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %15, i64 %19)
  ret %struct.Memory* %22
}


define %struct.Memory* @routine_subl_MINUS0x68__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 104
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__ecx__MINUS0xb0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 176
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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


define %struct.Memory* @routine_movl_MINUS0xb0__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 176
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


define %struct.Memory* @routine_addl__edx___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_subl_MINUS0x68__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 104
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_sarl__cl___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SARI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__edi__MINUS0x28__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 40
  %14 = load i32, i32* %EDI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_406ae7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_movq__0x6d09f0___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x6d09f0_type* @G__0x6d09f0 to i64))
  ret %struct.Memory* %11
}






















define %struct.Memory* @routine_movl__ecx__MINUS0xb4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 180
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movl_MINUS0xb4__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 180
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}














define %struct.Memory* @routine_jmpq_.L_406b88(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_jne_.L_406b3f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x70d010___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x70d010_type* @G__0x70d010 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl_MINUS0x58__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 88
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movslq_MINUS0x6c__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 108
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
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










define %struct.Memory* @routine_imull___rax__rdx_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = load i64, i64* %RAX
  %17 = load i64, i64* %RDX
  %18 = mul i64 %17, 4
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 4
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %15, i64 %19)
  ret %struct.Memory* %22
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


define %struct.Memory* @routine_subl__0x4___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 4)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl__ecx__MINUS0xb8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 184
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__esi___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0xb8__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 184
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_shll__cl___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 9
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RSI = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RSI
  %14 = load i8, i8* %CL
  %15 = zext i8 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 2
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13, i64 %15)
  ret %struct.Memory* %18
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


define %struct.Memory* @routine_jmpq_.L_406b83(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movq__0x6d09f0___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x6d09f0_type* @G__0x6d09f0 to i64))
  ret %struct.Memory* %11
}
























define %struct.Memory* @routine_movl__ecx__MINUS0xbc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 188
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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










define %struct.Memory* @routine_jmpq_.L_406b92(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_jne_.L_406bc3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
















define %struct.Memory* @routine_jmpq_.L_406bc8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movl_MINUS0x54__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 84
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_jmpq_.L_406735(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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


define %struct.Memory* @routine_movslq_MINUS0x5c__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
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










define %struct.Memory* @routine_movb__cl__MINUS0xbd__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 189
  %15 = load i8, i8* %CL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 6
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_jge_.L_406c15(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_movb__al__MINUS0xbd__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 189
  %15 = load i8, i8* %AL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 6
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_movb_MINUS0xbd__rbp____al(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 189
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %AL, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_jne_.L_406c28(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_406d3a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_jge_.L_406c6f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__edx__MINUS0x40__rbp__rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RAX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -64
  %19 = add i64 %18, %17
  %20 = load i32, i32* %EDX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 4
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %21)
  ret %struct.Memory* %24
}








define %struct.Memory* @routine_jmpq_.L_406c2f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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




define %struct.Memory* @routine_subl_MINUS0x38__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 56
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
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

define %struct.Memory* @routine_sarl__0x1___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SARI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 1)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_subl_MINUS0x34__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 52
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
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




define %struct.Memory* @routine_movl_MINUS0x34__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 52
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_sarl__0x1___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 2
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SARI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 1)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_addl__ecx___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i32, i32* %ECX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
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






define %struct.Memory* @routine_jge_.L_406d27(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_movl_MINUS0x50__rbp__rcx_4____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -80
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 4
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %19)
  ret %struct.Memory* %22
}




define %struct.Memory* @routine_addl_MINUS0x50__rbp__rcx_4____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RBP
  %17 = load i64, i64* %RCX
  %18 = mul i64 %17, 4
  %19 = add i64 %16, -80
  %20 = add i64 %19, %18
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 4
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %15, i64 %20)
  ret %struct.Memory* %23
}






















define %struct.Memory* @routine_subl_MINUS0x50__rbp__rcx_4____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RBP
  %17 = load i64, i64* %RCX
  %18 = mul i64 %17, 4
  %19 = add i64 %16, -80
  %20 = add i64 %19, %18
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 4
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %15, i64 %20)
  ret %struct.Memory* %23
}






















define %struct.Memory* @routine_jmpq_.L_406ca2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_406d2c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_406bef(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}










define %struct.Memory* @routine_movb__cl__MINUS0xbe__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 190
  %15 = load i8, i8* %CL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 6
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_jge_.L_406d67(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_movb__al__MINUS0xbe__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 190
  %15 = load i8, i8* %AL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 6
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_movb_MINUS0xbe__rbp____al(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 190
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %AL, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_jne_.L_406d7a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_40733c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_jge_.L_406dc1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_jmpq_.L_406d81(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




































define %struct.Memory* @routine_jge_.L_407329(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_cmpl__0x0__0x11c14__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 72724
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_407233(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movslq_0x11bec__rdx____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 72684
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %10)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movl_MINUS0x50__rbp__rsi_4____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RSI
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -80
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 4
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %19)
  ret %struct.Memory* %22
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


define %struct.Memory* @routine_addl_MINUS0x50__rbp__rsi_4____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RBP
  %17 = load i64, i64* %RSI
  %18 = mul i64 %17, 4
  %19 = add i64 %16, -80
  %20 = add i64 %19, %18
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 4
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %15, i64 %20)
  ret %struct.Memory* %23
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = shl i64 %3, 32
  %6 = ashr exact i64 %5, 32
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movslq__eax___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_addq__0x3138___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %9, i64 12600)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_addl_MINUS0x4__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 4
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movslq__eax___r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_shlq__0x5___r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %9, i64 5)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_addq__r8___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %12, i64 %13)
  ret %struct.Memory* %16
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



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i16*
  %6 = load i16, i16* %5
  %7 = zext i16 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movzwl___rdi__r8_2____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 17
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %R8 = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RDI
  %16 = load i64, i64* %R8
  %17 = mul i64 %16, 2
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 5
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %18)
  ret %struct.Memory* %21
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


define %struct.Memory* @routine_addq__0x20___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 32)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3SARI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* readnone, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
  %6 = trunc i64 %4 to i6
  switch i6 %6, label %8 [
    i6 0, label %37
    i6 1, label %7
  ]

; <label>:7:                                      ; preds = %5
  br label %14

; <label>:8:                                      ; preds = %5
  %9 = and i64 %4, 63
  %10 = add  i64 %9, -1
  %11 = ashr i64 %3, %10
  %12 = icmp ne i8 0, 0
  %13 = zext i1 %12 to i8
  br label %14

; <label>:14:                                     ; preds = %8, %7
  %15 = phi i8 [ 0, %7 ], [ 0, %8 ]
  %16 = phi i64 [ %3, %7 ], [ %11, %8 ]
  %17 = phi i8 [ 0, %7 ], [ %13, %8 ]
  %18 = trunc i64 %16 to i8
  %19 = and i8 %18, 1
  %20 = ashr i64 %16, 1
  store i64 %20, i64* %2, align 8
  %21 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 %19, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  %23 = trunc i64 %20 to i32
  %24 = and i32 %23, 255
  %25 = tail call i32 @llvm.ctpop.i32(i32 %24) #22
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  %28 = xor i8 %27, 1
  store i8 %28, i8* %22, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 %15, i8* %29, align 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  %31 = icmp eq i64 %20, 0
  %32 = zext i1 %31 to i8
  store i8 %32, i8* %30, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  %34 = lshr i64 %20, 63
  %35 = trunc i64 %34 to i8
  store i8 %35, i8* %33, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 %17, i8* %36, align 1
  br label %37

; <label>:37:                                     ; preds = %14, %5
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_sarq__0x6___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SARI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 6)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnImES2_EEP6MemoryS4_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64, i64) #0 {
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

define %struct.Memory* @routine_cmpq__rsi___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnImES2_EEP6MemoryS4_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__rdx__MINUS0xc8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 200
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
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

define %struct.Memory* @routine_jle_.L_406ea2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movq__rcx__MINUS0xd0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 208
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_jmpq_.L_406ef9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_movl_MINUS0x50__rbp__rax_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RAX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -80
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 4
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %19)
  ret %struct.Memory* %22
}


define %struct.Memory* @routine_movslq_MINUS0x24__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addl_MINUS0x50__rbp__rax_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RBP
  %17 = load i64, i64* %RAX
  %18 = mul i64 %17, 4
  %19 = add i64 %16, -80
  %20 = add i64 %19, %18
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 4
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %15, i64 %20)
  ret %struct.Memory* %23
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




define %struct.Memory* @routine_addq__0x3138___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 12600)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl_MINUS0x18__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addl_MINUS0x4__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 4
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


define %struct.Memory* @routine_addl_MINUS0x8__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 8
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movzwl___rdx__rsi_2____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = load i64, i64* %RDX
  %16 = load i64, i64* %RSI
  %17 = mul i64 %16, 2
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 4
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %18)
  ret %struct.Memory* %21
}


define %struct.Memory* @routine_movl__ecx___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_addq__0x20___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 32)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_sarq__0x6___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SARI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 6)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movq__rax__MINUS0xd0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 208
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq_MINUS0xd0__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 208
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_MINUS0xc8__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 200
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_cmpq__rax___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnImES2_EEP6MemoryS4_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_jge_.L_406f2b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movslq_0x11bec__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 72684
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movq__rax__MINUS0xd8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 216
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_jmpq_.L_406ffd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_movl_MINUS0x50__rbp__rdx_4____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RDX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -80
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 4
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %19)
  ret %struct.Memory* %22
}




define %struct.Memory* @routine_addl_MINUS0x50__rbp__rdx_4____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RBP
  %17 = load i64, i64* %RDX
  %18 = mul i64 %17, 4
  %19 = add i64 %16, -80
  %20 = add i64 %19, %18
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 4
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %15, i64 %20)
  ret %struct.Memory* %23
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




define %struct.Memory* @routine_addq__0x3138___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 12600)
  ret %struct.Memory* %12
}






define %struct.Memory* @routine_movslq__eax___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_shlq__0x5___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %9, i64 5)
  ret %struct.Memory* %12
}










define %struct.Memory* @routine_movzwl___rsi__rdi_2____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 11
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RSI
  %16 = load i64, i64* %RDI
  %17 = mul i64 %16, 2
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 4
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %18)
  ret %struct.Memory* %21
}


define %struct.Memory* @routine_movl__eax___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_addq__0x20___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 32)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_sarq__0x6___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SARI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 6)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_cmpq__rdx___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnImES2_EEP6MemoryS4_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_jle_.L_406f98(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movq__rcx__MINUS0xe0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 224
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_jmpq_.L_406fef(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}












































define %struct.Memory* @routine_movq__rax__MINUS0xe0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 224
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq_MINUS0xe0__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 224
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movq_MINUS0xd8__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 216
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




define %struct.Memory* @routine_movl__ecx____rax__rsi_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 9
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RSI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RSI
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








define %struct.Memory* @routine_movl_MINUS0x50__rbp__rsi_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RSI
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -80
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 4
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %19)
  ret %struct.Memory* %22
}




define %struct.Memory* @routine_subl_MINUS0x50__rbp__rsi_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RBP
  %17 = load i64, i64* %RSI
  %18 = mul i64 %17, 4
  %19 = add i64 %16, -80
  %20 = add i64 %19, %18
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 4
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %15, i64 %20)
  ret %struct.Memory* %23
}












define %struct.Memory* @routine_movslq__ecx___r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %ECX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %13)
  ret %struct.Memory* %16
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






define %struct.Memory* @routine_movzwl___rdi__r8_2____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 17
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %R8 = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RDI
  %16 = load i64, i64* %R8
  %17 = mul i64 %16, 2
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 5
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %18)
  ret %struct.Memory* %21
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










define %struct.Memory* @routine_cmpq__rsi___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnImES2_EEP6MemoryS4_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__rax__MINUS0xe8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 232
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_jle_.L_4070aa(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movq__rcx__MINUS0xf0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 240
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_jmpq_.L_407101(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_subl_MINUS0x50__rbp__rax_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RBP
  %17 = load i64, i64* %RAX
  %18 = mul i64 %17, 4
  %19 = add i64 %16, -80
  %20 = add i64 %19, %18
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 4
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %15, i64 %20)
  ret %struct.Memory* %23
}




































define %struct.Memory* @routine_movq__rax__MINUS0xf0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 240
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq_MINUS0xf0__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 240
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_MINUS0xe8__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 232
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_jge_.L_407133(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movq__rax__MINUS0xf8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 248
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_jmpq_.L_407205(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}












define %struct.Memory* @routine_subl_MINUS0x50__rbp__rdx_4____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RBP
  %17 = load i64, i64* %RDX
  %18 = mul i64 %17, 4
  %19 = add i64 %16, -80
  %20 = add i64 %19, %18
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 4
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %15, i64 %20)
  ret %struct.Memory* %23
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




















define %struct.Memory* @routine_jle_.L_4071a0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movq__rcx__MINUS0x100__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 256
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_jmpq_.L_4071f7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}












































define %struct.Memory* @routine_movq__rax__MINUS0x100__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 256
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq_MINUS0x100__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 256
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movq_MINUS0xf8__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 248
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
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


define %struct.Memory* @routine_jmpq_.L_407316(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_je_.L_4072a5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














































define %struct.Memory* @routine_jmpq_.L_407311(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}










define %struct.Memory* @routine_addl__0x20___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 32)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_sarl__0x6___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SARI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 6)
  ret %struct.Memory* %12
}












































define %struct.Memory* @routine_jmpq_.L_40731b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_406df4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_40732e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_406d41(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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


define %struct.Memory* @routine_jne_.L_4074ad(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jge_.L_4074a8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jge_.L_407495(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_je_.L_40741a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_MINUS0x18__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addl_MINUS0x4__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 4
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




define %struct.Memory* @routine_movl_MINUS0x1c__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 28
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addl_MINUS0x8__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 8
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movzwl___rax__rcx_2____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 9
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RSI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 2
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 4
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %18)
  ret %struct.Memory* %21
}


define %struct.Memory* @routine_addl__esi___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i32, i32* %ESI
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWItE2RnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i16* nocapture, i64) #2 {
  %5 = trunc i64 %3 to i16
  store i16 %5, i16* %2, align 2
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movw__dx___di(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %DI = bitcast %union.anon* %11 to i16*
  %12 = load i16, i16* %DX
  %13 = zext i16 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWItE2RnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i16* %DI, i64 %13)
  ret %struct.Memory* %16
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




define %struct.Memory* @routine_movl_0x9c__rcx____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 156
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addl_MINUS0x8__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 8
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_addl_MINUS0x1c__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 28
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %14)
  ret %struct.Memory* %17
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




define %struct.Memory* @routine_movl_0x98__rcx____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 152
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addl_MINUS0x4__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 4
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_addl_MINUS0x18__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 24
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

define %struct.Memory* @routine_movw__di____rax__rcx_2_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %17 = mul i64 %16, 2
  %18 = add i64 %17, %15
  %19 = load i16, i16* %DI
  %20 = zext i16 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 4
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWItE2RnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %18, i64 %20)
  ret %struct.Memory* %23
}


define %struct.Memory* @routine_jmpq_.L_407482(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}
















define %struct.Memory* @routine_movw__dx___si(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %SI = bitcast %union.anon* %11 to i16*
  %12 = load i16, i16* %DX
  %13 = zext i16 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWItE2RnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i16* %SI, i64 %13)
  ret %struct.Memory* %16
}




























define %struct.Memory* @routine_movw__si____rax__rcx_2_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %SI = bitcast %union.anon* %8 to i16*
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
  %19 = load i16, i16* %SI
  %20 = zext i16 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 4
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWItE2RnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %18, i64 %20)
  ret %struct.Memory* %23
}


define %struct.Memory* @routine_jmpq_.L_407487(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_407369(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_40749a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_407358(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_4074ad(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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


define %struct.Memory* @routine_addq__0x100___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 256)
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

