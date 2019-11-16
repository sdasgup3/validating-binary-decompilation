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
%G_0x232c__rip__type = type <{ [8 x i8] }>
@G_0x232c__rip_= global %G_0x232c__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x277050__rip__type = type <{ [8 x i8] }>
@G_0x277050__rip_= global %G_0x277050__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x6cb900_type = type <{ [8 x i8] }>
@G_0x6cb900= global %G_0x6cb900_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x6d4690_type = type <{ [8 x i8] }>
@G_0x6d4690= global %G_0x6d4690_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x6d4740_type = type <{ [8 x i8] }>
@G_0x6d4740= global %G_0x6d4740_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x6f9728_type = type <{ [8 x i8] }>
@G_0x6f9728= global %G_0x6f9728_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x70f6d0_type = type <{ [4 x i8] }>
@G_0x70f6d0= global %G_0x70f6d0_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x70fcf0_type = type <{ [8 x i8] }>
@G_0x70fcf0= global %G_0x70fcf0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x70fcf8_type = type <{ [8 x i8] }>
@G_0x70fcf8= global %G_0x70fcf8_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x710790_type = type <{ [4 x i8] }>
@G_0x710790= global %G_0x710790_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x7107a0_type = type <{ [4 x i8] }>
@G_0x7107a0= global %G_0x7107a0_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x722b20_type = type <{ [8 x i8] }>
@G_0x722b20= global %G_0x722b20_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x722b28_type = type <{ [8 x i8] }>
@G_0x722b28= global %G_0x722b28_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x7242a0_type = type <{ [4 x i8] }>
@G_0x7242a0= global %G_0x7242a0_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x7247b0_type = type <{ [4 x i8] }>
@G_0x7247b0= global %G_0x7247b0_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x7247b4_type = type <{ [4 x i8] }>
@G_0x7247b4= global %G_0x7247b4_type <{ [4 x i8] c"\00\00\00\00" }>


define %struct.Memory* @estimate_weighting_factor_B_slice(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .estimate_weighting_factor_B_slice:	 RIP: 4ae790	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 4ae790	 Bytes: 1
  %loadMem_4ae790 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae790 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae790)
  store %struct.Memory* %call_4ae790, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 4ae791	 Bytes: 3
  %loadMem_4ae791 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae791 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae791)
  store %struct.Memory* %call_4ae791, %struct.Memory** %MEMORY

  ; Code: subq $0x8a90, %rsp	 RIP: 4ae794	 Bytes: 7
  %loadMem_4ae794 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae794 = call %struct.Memory* @routine_subq__0x8a90___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae794)
  store %struct.Memory* %call_4ae794, %struct.Memory** %MEMORY

  ; Code: xorps %xmm0, %xmm0	 RIP: 4ae79b	 Bytes: 3
  %loadMem_4ae79b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae79b = call %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae79b)
  store %struct.Memory* %call_4ae79b, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x20(%rbp)	 RIP: 4ae79e	 Bytes: 5
  %loadMem_4ae79e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae79e = call %struct.Memory* @routine_movsd__xmm0__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae79e)
  store %struct.Memory* %call_4ae79e, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 4ae7a3	 Bytes: 8
  %loadMem_4ae7a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae7a3 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae7a3)
  store %struct.Memory* %call_4ae7a3, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x11ad0(%rax)	 RIP: 4ae7ab	 Bytes: 7
  %loadMem_4ae7ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae7ab = call %struct.Memory* @routine_cmpl__0x0__0x11ad0__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae7ab)
  store %struct.Memory* %call_4ae7ab, %struct.Memory** %MEMORY

  ; Code: je .L_4ae821	 RIP: 4ae7b2	 Bytes: 6
  %loadMem_4ae7b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae7b2 = call %struct.Memory* @routine_je_.L_4ae821(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae7b2, i8* %BRANCH_TAKEN, i64 111, i64 6, i64 6)
  store %struct.Memory* %call_4ae7b2, %struct.Memory** %MEMORY

  %loadBr_4ae7b2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4ae7b2 = icmp eq i8 %loadBr_4ae7b2, 1
  br i1 %cmpBr_4ae7b2, label %block_.L_4ae821, label %block_4ae7b8

block_4ae7b8:
  ; Code: movq 0x6cb900, %rax	 RIP: 4ae7b8	 Bytes: 8
  %loadMem_4ae7b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae7b8 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae7b8)
  store %struct.Memory* %call_4ae7b8, %struct.Memory** %MEMORY

  ; Code: movq 0x3758(%rax), %rax	 RIP: 4ae7c0	 Bytes: 7
  %loadMem_4ae7c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae7c0 = call %struct.Memory* @routine_movq_0x3758__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae7c0)
  store %struct.Memory* %call_4ae7c0, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 4ae7c7	 Bytes: 8
  %loadMem_4ae7c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae7c7 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae7c7)
  store %struct.Memory* %call_4ae7c7, %struct.Memory** %MEMORY

  ; Code: movslq 0xc(%rcx), %rcx	 RIP: 4ae7cf	 Bytes: 4
  %loadMem_4ae7cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae7cf = call %struct.Memory* @routine_movslq_0xc__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae7cf)
  store %struct.Memory* %call_4ae7cf, %struct.Memory** %MEMORY

  ; Code: imulq $0x278, %rcx, %rcx	 RIP: 4ae7d3	 Bytes: 7
  %loadMem_4ae7d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae7d3 = call %struct.Memory* @routine_imulq__0x278___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae7d3)
  store %struct.Memory* %call_4ae7d3, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4ae7da	 Bytes: 3
  %loadMem_4ae7da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae7da = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae7da)
  store %struct.Memory* %call_4ae7da, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x214(%rax)	 RIP: 4ae7dd	 Bytes: 7
  %loadMem_4ae7dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae7dd = call %struct.Memory* @routine_cmpl__0x0__0x214__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae7dd)
  store %struct.Memory* %call_4ae7dd, %struct.Memory** %MEMORY

  ; Code: je .L_4ae821	 RIP: 4ae7e4	 Bytes: 6
  %loadMem_4ae7e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae7e4 = call %struct.Memory* @routine_je_.L_4ae821(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae7e4, i8* %BRANCH_TAKEN, i64 61, i64 6, i64 6)
  store %struct.Memory* %call_4ae7e4, %struct.Memory** %MEMORY

  %loadBr_4ae7e4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4ae7e4 = icmp eq i8 %loadBr_4ae7e4, 1
  br i1 %cmpBr_4ae7e4, label %block_.L_4ae821, label %block_4ae7ea

block_4ae7ea:
  ; Code: movl $0x2, %eax	 RIP: 4ae7ea	 Bytes: 5
  %loadMem_4ae7ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae7ea = call %struct.Memory* @routine_movl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae7ea)
  store %struct.Memory* %call_4ae7ea, %struct.Memory** %MEMORY

  ; Code: movl $0x4, %ecx	 RIP: 4ae7ef	 Bytes: 5
  %loadMem_4ae7ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae7ef = call %struct.Memory* @routine_movl__0x4___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae7ef)
  store %struct.Memory* %call_4ae7ef, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rdx	 RIP: 4ae7f4	 Bytes: 8
  %loadMem_4ae7f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae7f4 = call %struct.Memory* @routine_movq_0x6cb900___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae7f4)
  store %struct.Memory* %call_4ae7f4, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%rdx), %esi	 RIP: 4ae7fc	 Bytes: 3
  %loadMem_4ae7fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae7fc = call %struct.Memory* @routine_movl_0xc__rdx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae7fc)
  store %struct.Memory* %call_4ae7fc, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x8a58(%rbp)	 RIP: 4ae7ff	 Bytes: 6
  %loadMem_4ae7ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae7ff = call %struct.Memory* @routine_movl__eax__MINUS0x8a58__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae7ff)
  store %struct.Memory* %call_4ae7ff, %struct.Memory** %MEMORY

  ; Code: movl %esi, %eax	 RIP: 4ae805	 Bytes: 2
  %loadMem_4ae805 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae805 = call %struct.Memory* @routine_movl__esi___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae805)
  store %struct.Memory* %call_4ae805, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 4ae807	 Bytes: 1
  %loadMem_4ae807 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae807 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae807)
  store %struct.Memory* %call_4ae807, %struct.Memory** %MEMORY

  ; Code: movl -0x8a58(%rbp), %esi	 RIP: 4ae808	 Bytes: 6
  %loadMem_4ae808 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae808 = call %struct.Memory* @routine_movl_MINUS0x8a58__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae808)
  store %struct.Memory* %call_4ae808, %struct.Memory** %MEMORY

  ; Code: idivl %esi	 RIP: 4ae80e	 Bytes: 2
  %loadMem_4ae80e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae80e = call %struct.Memory* @routine_idivl__esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae80e)
  store %struct.Memory* %call_4ae80e, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %edx	 RIP: 4ae810	 Bytes: 3
  %loadMem_4ae810 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae810 = call %struct.Memory* @routine_cmpl__0x0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae810)
  store %struct.Memory* %call_4ae810, %struct.Memory** %MEMORY

  ; Code: cmovnel %ecx, %esi	 RIP: 4ae813	 Bytes: 3
  %loadMem_4ae813 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae813 = call %struct.Memory* @routine_cmovnel__ecx___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae813)
  store %struct.Memory* %call_4ae813, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x8a5c(%rbp)	 RIP: 4ae816	 Bytes: 6
  %loadMem_4ae816 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae816 = call %struct.Memory* @routine_movl__esi__MINUS0x8a5c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae816)
  store %struct.Memory* %call_4ae816, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4ae82e	 RIP: 4ae81c	 Bytes: 5
  %loadMem_4ae81c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae81c = call %struct.Memory* @routine_jmpq_.L_4ae82e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae81c, i64 18, i64 5)
  store %struct.Memory* %call_4ae81c, %struct.Memory** %MEMORY

  br label %block_.L_4ae82e

  ; Code: .L_4ae821:	 RIP: 4ae821	 Bytes: 0
block_.L_4ae821:

  ; Code: xorl %eax, %eax	 RIP: 4ae821	 Bytes: 2
  %loadMem_4ae821 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae821 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae821)
  store %struct.Memory* %call_4ae821, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x8a5c(%rbp)	 RIP: 4ae823	 Bytes: 6
  %loadMem_4ae823 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae823 = call %struct.Memory* @routine_movl__eax__MINUS0x8a5c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae823)
  store %struct.Memory* %call_4ae823, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4ae82e	 RIP: 4ae829	 Bytes: 5
  %loadMem_4ae829 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae829 = call %struct.Memory* @routine_jmpq_.L_4ae82e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae829, i64 5, i64 5)
  store %struct.Memory* %call_4ae829, %struct.Memory** %MEMORY

  br label %block_.L_4ae82e

  ; Code: .L_4ae82e:	 RIP: 4ae82e	 Bytes: 0
block_.L_4ae82e:

  ; Code: movl -0x8a5c(%rbp), %eax	 RIP: 4ae82e	 Bytes: 6
  %loadMem_4ae82e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae82e = call %struct.Memory* @routine_movl_MINUS0x8a5c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae82e)
  store %struct.Memory* %call_4ae82e, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x328(%rbp)	 RIP: 4ae834	 Bytes: 6
  %loadMem_4ae834 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae834 = call %struct.Memory* @routine_movl__eax__MINUS0x328__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae834)
  store %struct.Memory* %call_4ae834, %struct.Memory** %MEMORY

  ; Code: movq 0x6d4690, %rcx	 RIP: 4ae83a	 Bytes: 8
  %loadMem_4ae83a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae83a = call %struct.Memory* @routine_movq_0x6d4690___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae83a)
  store %struct.Memory* %call_4ae83a, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, 0xc4(%rcx)	 RIP: 4ae842	 Bytes: 7
  %loadMem_4ae842 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae842 = call %struct.Memory* @routine_cmpl__0x2__0xc4__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae842)
  store %struct.Memory* %call_4ae842, %struct.Memory** %MEMORY

  ; Code: jne .L_4ae86a	 RIP: 4ae849	 Bytes: 6
  %loadMem_4ae849 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae849 = call %struct.Memory* @routine_jne_.L_4ae86a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae849, i8* %BRANCH_TAKEN, i64 33, i64 6, i64 6)
  store %struct.Memory* %call_4ae849, %struct.Memory** %MEMORY

  %loadBr_4ae849 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4ae849 = icmp eq i8 %loadBr_4ae849, 1
  br i1 %cmpBr_4ae849, label %block_.L_4ae86a, label %block_4ae84f

block_4ae84f:
  ; Code: movl $0x5, 0x70f6d0	 RIP: 4ae84f	 Bytes: 11
  %loadMem_4ae84f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae84f = call %struct.Memory* @routine_movl__0x5__0x70f6d0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae84f)
  store %struct.Memory* %call_4ae84f, %struct.Memory** %MEMORY

  ; Code: movl $0x5, 0x7242a0	 RIP: 4ae85a	 Bytes: 11
  %loadMem_4ae85a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae85a = call %struct.Memory* @routine_movl__0x5__0x7242a0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae85a)
  store %struct.Memory* %call_4ae85a, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4ae880	 RIP: 4ae865	 Bytes: 5
  %loadMem_4ae865 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae865 = call %struct.Memory* @routine_jmpq_.L_4ae880(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae865, i64 27, i64 5)
  store %struct.Memory* %call_4ae865, %struct.Memory** %MEMORY

  br label %block_.L_4ae880

  ; Code: .L_4ae86a:	 RIP: 4ae86a	 Bytes: 0
block_.L_4ae86a:

  ; Code: movl $0x6, 0x70f6d0	 RIP: 4ae86a	 Bytes: 11
  %loadMem_4ae86a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae86a = call %struct.Memory* @routine_movl__0x6__0x70f6d0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae86a)
  store %struct.Memory* %call_4ae86a, %struct.Memory** %MEMORY

  ; Code: movl $0x6, 0x7242a0	 RIP: 4ae875	 Bytes: 11
  %loadMem_4ae875 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae875 = call %struct.Memory* @routine_movl__0x6__0x7242a0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae875)
  store %struct.Memory* %call_4ae875, %struct.Memory** %MEMORY

  ; Code: .L_4ae880:	 RIP: 4ae880	 Bytes: 0
  br label %block_.L_4ae880
block_.L_4ae880:

  ; Code: movl $0x1, %eax	 RIP: 4ae880	 Bytes: 5
  %loadMem_4ae880 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae880 = call %struct.Memory* @routine_movl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae880)
  store %struct.Memory* %call_4ae880, %struct.Memory** %MEMORY

  ; Code: movl 0x70f6d0, %ecx	 RIP: 4ae885	 Bytes: 7
  %loadMem_4ae885 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae885 = call %struct.Memory* @routine_movl_0x70f6d0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae885)
  store %struct.Memory* %call_4ae885, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 4ae88c	 Bytes: 3
  %loadMem_4ae88c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae88c = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae88c)
  store %struct.Memory* %call_4ae88c, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 4ae88f	 Bytes: 2
  %loadMem_4ae88f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae88f = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae88f)
  store %struct.Memory* %call_4ae88f, %struct.Memory** %MEMORY

  ; Code: shll %cl, %edx	 RIP: 4ae891	 Bytes: 2
  %loadMem_4ae891 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae891 = call %struct.Memory* @routine_shll__cl___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae891)
  store %struct.Memory* %call_4ae891, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0x7107a0	 RIP: 4ae893	 Bytes: 7
  %loadMem_4ae893 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae893 = call %struct.Memory* @routine_movl__edx__0x7107a0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae893)
  store %struct.Memory* %call_4ae893, %struct.Memory** %MEMORY

  ; Code: movl 0x7242a0, %edx	 RIP: 4ae89a	 Bytes: 7
  %loadMem_4ae89a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae89a = call %struct.Memory* @routine_movl_0x7242a0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae89a)
  store %struct.Memory* %call_4ae89a, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 4ae8a1	 Bytes: 3
  %loadMem_4ae8a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae8a1 = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae8a1)
  store %struct.Memory* %call_4ae8a1, %struct.Memory** %MEMORY

  ; Code: movl %edx, %ecx	 RIP: 4ae8a4	 Bytes: 2
  %loadMem_4ae8a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae8a4 = call %struct.Memory* @routine_movl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae8a4)
  store %struct.Memory* %call_4ae8a4, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 4ae8a6	 Bytes: 2
  %loadMem_4ae8a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae8a6 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae8a6)
  store %struct.Memory* %call_4ae8a6, %struct.Memory** %MEMORY

  ; Code: shll %cl, %edx	 RIP: 4ae8a8	 Bytes: 2
  %loadMem_4ae8a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae8a8 = call %struct.Memory* @routine_shll__cl___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae8a8)
  store %struct.Memory* %call_4ae8a8, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0x710790	 RIP: 4ae8aa	 Bytes: 7
  %loadMem_4ae8aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae8aa = call %struct.Memory* @routine_movl__edx__0x710790(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae8aa)
  store %struct.Memory* %call_4ae8aa, %struct.Memory** %MEMORY

  ; Code: movl 0x70f6d0, %ecx	 RIP: 4ae8b1	 Bytes: 7
  %loadMem_4ae8b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae8b1 = call %struct.Memory* @routine_movl_0x70f6d0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae8b1)
  store %struct.Memory* %call_4ae8b1, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 4ae8b8	 Bytes: 2
  %loadMem_4ae8b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae8b8 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae8b8)
  store %struct.Memory* %call_4ae8b8, %struct.Memory** %MEMORY

  ; Code: shll %cl, %edx	 RIP: 4ae8ba	 Bytes: 2
  %loadMem_4ae8ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae8ba = call %struct.Memory* @routine_shll__cl___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae8ba)
  store %struct.Memory* %call_4ae8ba, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x324(%rbp)	 RIP: 4ae8bc	 Bytes: 6
  %loadMem_4ae8bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae8bc = call %struct.Memory* @routine_movl__edx__MINUS0x324__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae8bc)
  store %struct.Memory* %call_4ae8bc, %struct.Memory** %MEMORY

  ; Code: movl 0x7242a0, %ecx	 RIP: 4ae8c2	 Bytes: 7
  %loadMem_4ae8c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae8c2 = call %struct.Memory* @routine_movl_0x7242a0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae8c2)
  store %struct.Memory* %call_4ae8c2, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 4ae8c9	 Bytes: 2
  %loadMem_4ae8c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae8c9 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae8c9)
  store %struct.Memory* %call_4ae8c9, %struct.Memory** %MEMORY

  ; Code: shll %cl, %edx	 RIP: 4ae8cb	 Bytes: 2
  %loadMem_4ae8cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae8cb = call %struct.Memory* @routine_shll__cl___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae8cb)
  store %struct.Memory* %call_4ae8cb, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x320(%rbp)	 RIP: 4ae8cd	 Bytes: 6
  %loadMem_4ae8cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae8cd = call %struct.Memory* @routine_movl__edx__MINUS0x320__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae8cd)
  store %struct.Memory* %call_4ae8cd, %struct.Memory** %MEMORY

  ; Code: movl 0x7242a0, %ecx	 RIP: 4ae8d3	 Bytes: 7
  %loadMem_4ae8d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae8d3 = call %struct.Memory* @routine_movl_0x7242a0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae8d3)
  store %struct.Memory* %call_4ae8d3, %struct.Memory** %MEMORY

  ; Code: shll %cl, %eax	 RIP: 4ae8da	 Bytes: 2
  %loadMem_4ae8da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae8da = call %struct.Memory* @routine_shll__cl___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae8da)
  store %struct.Memory* %call_4ae8da, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x31c(%rbp)	 RIP: 4ae8dc	 Bytes: 6
  %loadMem_4ae8dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae8dc = call %struct.Memory* @routine_movl__eax__MINUS0x31c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae8dc)
  store %struct.Memory* %call_4ae8dc, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x4(%rbp)	 RIP: 4ae8e2	 Bytes: 7
  %loadMem_4ae8e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae8e2 = call %struct.Memory* @routine_movl__0x0__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae8e2)
  store %struct.Memory* %call_4ae8e2, %struct.Memory** %MEMORY

  ; Code: .L_4ae8e9:	 RIP: 4ae8e9	 Bytes: 0
  br label %block_.L_4ae8e9
block_.L_4ae8e9:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 4ae8e9	 Bytes: 3
  %loadMem_4ae8e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae8e9 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae8e9)
  store %struct.Memory* %call_4ae8e9, %struct.Memory** %MEMORY

  ; Code: movl -0x328(%rbp), %ecx	 RIP: 4ae8ec	 Bytes: 6
  %loadMem_4ae8ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae8ec = call %struct.Memory* @routine_movl_MINUS0x328__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae8ec)
  store %struct.Memory* %call_4ae8ec, %struct.Memory** %MEMORY

  ; Code: addl $0x2, %ecx	 RIP: 4ae8f2	 Bytes: 3
  %loadMem_4ae8f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae8f2 = call %struct.Memory* @routine_addl__0x2___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae8f2)
  store %struct.Memory* %call_4ae8f2, %struct.Memory** %MEMORY

  ; Code: cmpl %ecx, %eax	 RIP: 4ae8f5	 Bytes: 2
  %loadMem_4ae8f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae8f5 = call %struct.Memory* @routine_cmpl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae8f5)
  store %struct.Memory* %call_4ae8f5, %struct.Memory** %MEMORY

  ; Code: jge .L_4aea07	 RIP: 4ae8f7	 Bytes: 6
  %loadMem_4ae8f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae8f7 = call %struct.Memory* @routine_jge_.L_4aea07(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae8f7, i8* %BRANCH_TAKEN, i64 272, i64 6, i64 6)
  store %struct.Memory* %call_4ae8f7, %struct.Memory** %MEMORY

  %loadBr_4ae8f7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4ae8f7 = icmp eq i8 %loadBr_4ae8f7, 1
  br i1 %cmpBr_4ae8f7, label %block_.L_4aea07, label %block_4ae8fd

block_4ae8fd:
  ; Code: movl $0x0, -0x8(%rbp)	 RIP: 4ae8fd	 Bytes: 7
  %loadMem_4ae8fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae8fd = call %struct.Memory* @routine_movl__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae8fd)
  store %struct.Memory* %call_4ae8fd, %struct.Memory** %MEMORY

  ; Code: .L_4ae904:	 RIP: 4ae904	 Bytes: 0
  br label %block_.L_4ae904
block_.L_4ae904:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 4ae904	 Bytes: 3
  %loadMem_4ae904 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae904 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae904)
  store %struct.Memory* %call_4ae904, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rcx	 RIP: 4ae907	 Bytes: 4
  %loadMem_4ae907 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae907 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae907)
  store %struct.Memory* %call_4ae907, %struct.Memory** %MEMORY

  ; Code: cmpl 0x7247b0(,%rcx,4), %eax	 RIP: 4ae90b	 Bytes: 7
  %loadMem_4ae90b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae90b = call %struct.Memory* @routine_cmpl_0x7247b0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae90b)
  store %struct.Memory* %call_4ae90b, %struct.Memory** %MEMORY

  ; Code: jge .L_4ae9f4	 RIP: 4ae912	 Bytes: 6
  %loadMem_4ae912 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae912 = call %struct.Memory* @routine_jge_.L_4ae9f4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae912, i8* %BRANCH_TAKEN, i64 226, i64 6, i64 6)
  store %struct.Memory* %call_4ae912, %struct.Memory** %MEMORY

  %loadBr_4ae912 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4ae912 = icmp eq i8 %loadBr_4ae912, 1
  br i1 %cmpBr_4ae912, label %block_.L_4ae9f4, label %block_4ae918

block_4ae918:
  ; Code: movl $0x0, -0xc(%rbp)	 RIP: 4ae918	 Bytes: 7
  %loadMem_4ae918 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae918 = call %struct.Memory* @routine_movl__0x0__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae918)
  store %struct.Memory* %call_4ae918, %struct.Memory** %MEMORY

  ; Code: .L_4ae91f:	 RIP: 4ae91f	 Bytes: 0
  br label %block_.L_4ae91f
block_.L_4ae91f:

  ; Code: cmpl $0x3, -0xc(%rbp)	 RIP: 4ae91f	 Bytes: 4
  %loadMem_4ae91f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae91f = call %struct.Memory* @routine_cmpl__0x3__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae91f)
  store %struct.Memory* %call_4ae91f, %struct.Memory** %MEMORY

  ; Code: jge .L_4ae9e1	 RIP: 4ae923	 Bytes: 6
  %loadMem_4ae923 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae923 = call %struct.Memory* @routine_jge_.L_4ae9e1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae923, i8* %BRANCH_TAKEN, i64 190, i64 6, i64 6)
  store %struct.Memory* %call_4ae923, %struct.Memory** %MEMORY

  %loadBr_4ae923 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4ae923 = icmp eq i8 %loadBr_4ae923, 1
  br i1 %cmpBr_4ae923, label %block_.L_4ae9e1, label %block_4ae929

block_4ae929:
  ; Code: leaq -0x760(%rbp), %rax	 RIP: 4ae929	 Bytes: 7
  %loadMem_4ae929 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae929 = call %struct.Memory* @routine_leaq_MINUS0x760__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae929)
  store %struct.Memory* %call_4ae929, %struct.Memory** %MEMORY

  ; Code: leaq -0xba0(%rbp), %rcx	 RIP: 4ae930	 Bytes: 7
  %loadMem_4ae930 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae930 = call %struct.Memory* @routine_leaq_MINUS0xba0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae930)
  store %struct.Memory* %call_4ae930, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rdx	 RIP: 4ae937	 Bytes: 4
  %loadMem_4ae937 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae937 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae937)
  store %struct.Memory* %call_4ae937, %struct.Memory** %MEMORY

  ; Code: movl -0x324(%rbp,%rdx,4), %esi	 RIP: 4ae93b	 Bytes: 7
  %loadMem_4ae93b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae93b = call %struct.Memory* @routine_movl_MINUS0x324__rbp__rdx_4____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae93b)
  store %struct.Memory* %call_4ae93b, %struct.Memory** %MEMORY

  ; Code: movq 0x6d4740, %rdx	 RIP: 4ae942	 Bytes: 8
  %loadMem_4ae942 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae942 = call %struct.Memory* @routine_movq_0x6d4740___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae942)
  store %struct.Memory* %call_4ae942, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rdi	 RIP: 4ae94a	 Bytes: 4
  %loadMem_4ae94a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae94a = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae94a)
  store %struct.Memory* %call_4ae94a, %struct.Memory** %MEMORY

  ; Code: movq (%rdx,%rdi,8), %rdx	 RIP: 4ae94e	 Bytes: 4
  %loadMem_4ae94e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae94e = call %struct.Memory* @routine_movq___rdx__rdi_8____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae94e)
  store %struct.Memory* %call_4ae94e, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdi	 RIP: 4ae952	 Bytes: 4
  %loadMem_4ae952 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae952 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae952)
  store %struct.Memory* %call_4ae952, %struct.Memory** %MEMORY

  ; Code: movq (%rdx,%rdi,8), %rdx	 RIP: 4ae956	 Bytes: 4
  %loadMem_4ae956 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae956 = call %struct.Memory* @routine_movq___rdx__rdi_8____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae956)
  store %struct.Memory* %call_4ae956, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rdi	 RIP: 4ae95a	 Bytes: 4
  %loadMem_4ae95a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae95a = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae95a)
  store %struct.Memory* %call_4ae95a, %struct.Memory** %MEMORY

  ; Code: movl %esi, (%rdx,%rdi,4)	 RIP: 4ae95e	 Bytes: 3
  %loadMem_4ae95e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae95e = call %struct.Memory* @routine_movl__esi____rdx__rdi_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae95e)
  store %struct.Memory* %call_4ae95e, %struct.Memory** %MEMORY

  ; Code: movq 0x6f9728, %rdx	 RIP: 4ae961	 Bytes: 8
  %loadMem_4ae961 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae961 = call %struct.Memory* @routine_movq_0x6f9728___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae961)
  store %struct.Memory* %call_4ae961, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rdi	 RIP: 4ae969	 Bytes: 4
  %loadMem_4ae969 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae969 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae969)
  store %struct.Memory* %call_4ae969, %struct.Memory** %MEMORY

  ; Code: movq (%rdx,%rdi,8), %rdx	 RIP: 4ae96d	 Bytes: 4
  %loadMem_4ae96d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae96d = call %struct.Memory* @routine_movq___rdx__rdi_8____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae96d)
  store %struct.Memory* %call_4ae96d, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdi	 RIP: 4ae971	 Bytes: 4
  %loadMem_4ae971 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae971 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae971)
  store %struct.Memory* %call_4ae971, %struct.Memory** %MEMORY

  ; Code: movq (%rdx,%rdi,8), %rdx	 RIP: 4ae975	 Bytes: 4
  %loadMem_4ae975 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae975 = call %struct.Memory* @routine_movq___rdx__rdi_8____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae975)
  store %struct.Memory* %call_4ae975, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rdi	 RIP: 4ae979	 Bytes: 4
  %loadMem_4ae979 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae979 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae979)
  store %struct.Memory* %call_4ae979, %struct.Memory** %MEMORY

  ; Code: movl $0x0, (%rdx,%rdi,4)	 RIP: 4ae97d	 Bytes: 7
  %loadMem_4ae97d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae97d = call %struct.Memory* @routine_movl__0x0____rdx__rdi_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae97d)
  store %struct.Memory* %call_4ae97d, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rdx	 RIP: 4ae984	 Bytes: 4
  %loadMem_4ae984 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae984 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae984)
  store %struct.Memory* %call_4ae984, %struct.Memory** %MEMORY

  ; Code: imulq $0xb4, %rdx, %rdx	 RIP: 4ae988	 Bytes: 7
  %loadMem_4ae988 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae988 = call %struct.Memory* @routine_imulq__0xb4___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae988)
  store %struct.Memory* %call_4ae988, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 4ae98f	 Bytes: 3
  %loadMem_4ae98f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae98f = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae98f)
  store %struct.Memory* %call_4ae98f, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdx	 RIP: 4ae992	 Bytes: 4
  %loadMem_4ae992 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae992 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae992)
  store %struct.Memory* %call_4ae992, %struct.Memory** %MEMORY

  ; Code: imulq $0xc, %rdx, %rdx	 RIP: 4ae996	 Bytes: 4
  %loadMem_4ae996 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae996 = call %struct.Memory* @routine_imulq__0xc___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae996)
  store %struct.Memory* %call_4ae996, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 4ae99a	 Bytes: 3
  %loadMem_4ae99a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae99a = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae99a)
  store %struct.Memory* %call_4ae99a, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rdx	 RIP: 4ae99d	 Bytes: 4
  %loadMem_4ae99d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae99d = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae99d)
  store %struct.Memory* %call_4ae99d, %struct.Memory** %MEMORY

  ; Code: movl $0x0, (%rcx,%rdx,4)	 RIP: 4ae9a1	 Bytes: 7
  %loadMem_4ae9a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae9a1 = call %struct.Memory* @routine_movl__0x0____rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae9a1)
  store %struct.Memory* %call_4ae9a1, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 4ae9a8	 Bytes: 4
  %loadMem_4ae9a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae9a8 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae9a8)
  store %struct.Memory* %call_4ae9a8, %struct.Memory** %MEMORY

  ; Code: movl -0x324(%rbp,%rcx,4), %esi	 RIP: 4ae9ac	 Bytes: 7
  %loadMem_4ae9ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae9ac = call %struct.Memory* @routine_movl_MINUS0x324__rbp__rcx_4____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae9ac)
  store %struct.Memory* %call_4ae9ac, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rcx	 RIP: 4ae9b3	 Bytes: 4
  %loadMem_4ae9b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae9b3 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae9b3)
  store %struct.Memory* %call_4ae9b3, %struct.Memory** %MEMORY

  ; Code: imulq $0xb4, %rcx, %rcx	 RIP: 4ae9b7	 Bytes: 7
  %loadMem_4ae9b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae9b7 = call %struct.Memory* @routine_imulq__0xb4___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae9b7)
  store %struct.Memory* %call_4ae9b7, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4ae9be	 Bytes: 3
  %loadMem_4ae9be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae9be = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae9be)
  store %struct.Memory* %call_4ae9be, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 4ae9c1	 Bytes: 4
  %loadMem_4ae9c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae9c1 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae9c1)
  store %struct.Memory* %call_4ae9c1, %struct.Memory** %MEMORY

  ; Code: imulq $0xc, %rcx, %rcx	 RIP: 4ae9c5	 Bytes: 4
  %loadMem_4ae9c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae9c5 = call %struct.Memory* @routine_imulq__0xc___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae9c5)
  store %struct.Memory* %call_4ae9c5, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4ae9c9	 Bytes: 3
  %loadMem_4ae9c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae9c9 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae9c9)
  store %struct.Memory* %call_4ae9c9, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 4ae9cc	 Bytes: 4
  %loadMem_4ae9cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae9cc = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae9cc)
  store %struct.Memory* %call_4ae9cc, %struct.Memory** %MEMORY

  ; Code: movl %esi, (%rax,%rcx,4)	 RIP: 4ae9d0	 Bytes: 3
  %loadMem_4ae9d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae9d0 = call %struct.Memory* @routine_movl__esi____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae9d0)
  store %struct.Memory* %call_4ae9d0, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %eax	 RIP: 4ae9d3	 Bytes: 3
  %loadMem_4ae9d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae9d3 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae9d3)
  store %struct.Memory* %call_4ae9d3, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4ae9d6	 Bytes: 3
  %loadMem_4ae9d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae9d6 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae9d6)
  store %struct.Memory* %call_4ae9d6, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xc(%rbp)	 RIP: 4ae9d9	 Bytes: 3
  %loadMem_4ae9d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae9d9 = call %struct.Memory* @routine_movl__eax__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae9d9)
  store %struct.Memory* %call_4ae9d9, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4ae91f	 RIP: 4ae9dc	 Bytes: 5
  %loadMem_4ae9dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae9dc = call %struct.Memory* @routine_jmpq_.L_4ae91f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae9dc, i64 -189, i64 5)
  store %struct.Memory* %call_4ae9dc, %struct.Memory** %MEMORY

  br label %block_.L_4ae91f

  ; Code: .L_4ae9e1:	 RIP: 4ae9e1	 Bytes: 0
block_.L_4ae9e1:

  ; Code: jmpq .L_4ae9e6	 RIP: 4ae9e1	 Bytes: 5
  %loadMem_4ae9e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae9e1 = call %struct.Memory* @routine_jmpq_.L_4ae9e6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae9e1, i64 5, i64 5)
  store %struct.Memory* %call_4ae9e1, %struct.Memory** %MEMORY

  br label %block_.L_4ae9e6

  ; Code: .L_4ae9e6:	 RIP: 4ae9e6	 Bytes: 0
block_.L_4ae9e6:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 4ae9e6	 Bytes: 3
  %loadMem_4ae9e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae9e6 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae9e6)
  store %struct.Memory* %call_4ae9e6, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4ae9e9	 Bytes: 3
  %loadMem_4ae9e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae9e9 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae9e9)
  store %struct.Memory* %call_4ae9e9, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x8(%rbp)	 RIP: 4ae9ec	 Bytes: 3
  %loadMem_4ae9ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae9ec = call %struct.Memory* @routine_movl__eax__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae9ec)
  store %struct.Memory* %call_4ae9ec, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4ae904	 RIP: 4ae9ef	 Bytes: 5
  %loadMem_4ae9ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae9ef = call %struct.Memory* @routine_jmpq_.L_4ae904(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae9ef, i64 -235, i64 5)
  store %struct.Memory* %call_4ae9ef, %struct.Memory** %MEMORY

  br label %block_.L_4ae904

  ; Code: .L_4ae9f4:	 RIP: 4ae9f4	 Bytes: 0
block_.L_4ae9f4:

  ; Code: jmpq .L_4ae9f9	 RIP: 4ae9f4	 Bytes: 5
  %loadMem_4ae9f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae9f4 = call %struct.Memory* @routine_jmpq_.L_4ae9f9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae9f4, i64 5, i64 5)
  store %struct.Memory* %call_4ae9f4, %struct.Memory** %MEMORY

  br label %block_.L_4ae9f9

  ; Code: .L_4ae9f9:	 RIP: 4ae9f9	 Bytes: 0
block_.L_4ae9f9:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 4ae9f9	 Bytes: 3
  %loadMem_4ae9f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae9f9 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae9f9)
  store %struct.Memory* %call_4ae9f9, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4ae9fc	 Bytes: 3
  %loadMem_4ae9fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae9fc = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae9fc)
  store %struct.Memory* %call_4ae9fc, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4(%rbp)	 RIP: 4ae9ff	 Bytes: 3
  %loadMem_4ae9ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4ae9ff = call %struct.Memory* @routine_movl__eax__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4ae9ff)
  store %struct.Memory* %call_4ae9ff, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4ae8e9	 RIP: 4aea02	 Bytes: 5
  %loadMem_4aea02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aea02 = call %struct.Memory* @routine_jmpq_.L_4ae8e9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aea02, i64 -281, i64 5)
  store %struct.Memory* %call_4aea02, %struct.Memory** %MEMORY

  br label %block_.L_4ae8e9

  ; Code: .L_4aea07:	 RIP: 4aea07	 Bytes: 0
block_.L_4aea07:

  ; Code: movl $0x0, -0x4(%rbp)	 RIP: 4aea07	 Bytes: 7
  %loadMem_4aea07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aea07 = call %struct.Memory* @routine_movl__0x0__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aea07)
  store %struct.Memory* %call_4aea07, %struct.Memory** %MEMORY

  ; Code: .L_4aea0e:	 RIP: 4aea0e	 Bytes: 0
  br label %block_.L_4aea0e
block_.L_4aea0e:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 4aea0e	 Bytes: 3
  %loadMem_4aea0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aea0e = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aea0e)
  store %struct.Memory* %call_4aea0e, %struct.Memory** %MEMORY

  ; Code: cmpl 0x7247b0, %eax	 RIP: 4aea11	 Bytes: 7
  %loadMem_4aea11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aea11 = call %struct.Memory* @routine_cmpl_0x7247b0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aea11)
  store %struct.Memory* %call_4aea11, %struct.Memory** %MEMORY

  ; Code: jge .L_4aeef3	 RIP: 4aea18	 Bytes: 6
  %loadMem_4aea18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aea18 = call %struct.Memory* @routine_jge_.L_4aeef3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aea18, i8* %BRANCH_TAKEN, i64 1243, i64 6, i64 6)
  store %struct.Memory* %call_4aea18, %struct.Memory** %MEMORY

  %loadBr_4aea18 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4aea18 = icmp eq i8 %loadBr_4aea18, 1
  br i1 %cmpBr_4aea18, label %block_.L_4aeef3, label %block_4aea1e

block_4aea1e:
  ; Code: movl $0x0, -0x8(%rbp)	 RIP: 4aea1e	 Bytes: 7
  %loadMem_4aea1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aea1e = call %struct.Memory* @routine_movl__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aea1e)
  store %struct.Memory* %call_4aea1e, %struct.Memory** %MEMORY

  ; Code: .L_4aea25:	 RIP: 4aea25	 Bytes: 0
  br label %block_.L_4aea25
block_.L_4aea25:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 4aea25	 Bytes: 3
  %loadMem_4aea25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aea25 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aea25)
  store %struct.Memory* %call_4aea25, %struct.Memory** %MEMORY

  ; Code: cmpl 0x7247b4, %eax	 RIP: 4aea28	 Bytes: 7
  %loadMem_4aea28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aea28 = call %struct.Memory* @routine_cmpl_0x7247b4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aea28)
  store %struct.Memory* %call_4aea28, %struct.Memory** %MEMORY

  ; Code: jge .L_4aeee0	 RIP: 4aea2f	 Bytes: 6
  %loadMem_4aea2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aea2f = call %struct.Memory* @routine_jge_.L_4aeee0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aea2f, i8* %BRANCH_TAKEN, i64 1201, i64 6, i64 6)
  store %struct.Memory* %call_4aea2f, %struct.Memory** %MEMORY

  %loadBr_4aea2f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4aea2f = icmp eq i8 %loadBr_4aea2f, 1
  br i1 %cmpBr_4aea2f, label %block_.L_4aeee0, label %block_4aea35

block_4aea35:
  ; Code: movq 0x722b28, %rax	 RIP: 4aea35	 Bytes: 8
  %loadMem_4aea35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aea35 = call %struct.Memory* @routine_movq_0x722b28___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aea35)
  store %struct.Memory* %call_4aea35, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 4aea3d	 Bytes: 4
  %loadMem_4aea3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aea3d = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aea3d)
  store %struct.Memory* %call_4aea3d, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 4aea41	 Bytes: 4
  %loadMem_4aea41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aea41 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aea41)
  store %struct.Memory* %call_4aea41, %struct.Memory** %MEMORY

  ; Code: movl 0x4(%rax), %edx	 RIP: 4aea45	 Bytes: 3
  %loadMem_4aea45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aea45 = call %struct.Memory* @routine_movl_0x4__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aea45)
  store %struct.Memory* %call_4aea45, %struct.Memory** %MEMORY

  ; Code: movq 0x722b20, %rax	 RIP: 4aea48	 Bytes: 8
  %loadMem_4aea48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aea48 = call %struct.Memory* @routine_movq_0x722b20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aea48)
  store %struct.Memory* %call_4aea48, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rcx	 RIP: 4aea50	 Bytes: 4
  %loadMem_4aea50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aea50 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aea50)
  store %struct.Memory* %call_4aea50, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 4aea54	 Bytes: 4
  %loadMem_4aea54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aea54 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aea54)
  store %struct.Memory* %call_4aea54, %struct.Memory** %MEMORY

  ; Code: subl 0x4(%rax), %edx	 RIP: 4aea58	 Bytes: 3
  %loadMem_4aea58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aea58 = call %struct.Memory* @routine_subl_0x4__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aea58)
  store %struct.Memory* %call_4aea58, %struct.Memory** %MEMORY

  ; Code: cmpl $0xffffff80, %edx	 RIP: 4aea5b	 Bytes: 3
  %loadMem_4aea5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aea5b = call %struct.Memory* @routine_cmpl__0xffffff80___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aea5b)
  store %struct.Memory* %call_4aea5b, %struct.Memory** %MEMORY

  ; Code: jge .L_4aea74	 RIP: 4aea5e	 Bytes: 6
  %loadMem_4aea5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aea5e = call %struct.Memory* @routine_jge_.L_4aea74(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aea5e, i8* %BRANCH_TAKEN, i64 22, i64 6, i64 6)
  store %struct.Memory* %call_4aea5e, %struct.Memory** %MEMORY

  %loadBr_4aea5e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4aea5e = icmp eq i8 %loadBr_4aea5e, 1
  br i1 %cmpBr_4aea5e, label %block_.L_4aea74, label %block_4aea64

block_4aea64:
  ; Code: movl $0xffffff80, %eax	 RIP: 4aea64	 Bytes: 5
  %loadMem_4aea64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aea64 = call %struct.Memory* @routine_movl__0xffffff80___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aea64)
  store %struct.Memory* %call_4aea64, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x8a60(%rbp)	 RIP: 4aea69	 Bytes: 6
  %loadMem_4aea69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aea69 = call %struct.Memory* @routine_movl__eax__MINUS0x8a60__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aea69)
  store %struct.Memory* %call_4aea69, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4aeaeb	 RIP: 4aea6f	 Bytes: 5
  %loadMem_4aea6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aea6f = call %struct.Memory* @routine_jmpq_.L_4aeaeb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aea6f, i64 124, i64 5)
  store %struct.Memory* %call_4aea6f, %struct.Memory** %MEMORY

  br label %block_.L_4aeaeb

  ; Code: .L_4aea74:	 RIP: 4aea74	 Bytes: 0
block_.L_4aea74:

  ; Code: movq 0x722b28, %rax	 RIP: 4aea74	 Bytes: 8
  %loadMem_4aea74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aea74 = call %struct.Memory* @routine_movq_0x722b28___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aea74)
  store %struct.Memory* %call_4aea74, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 4aea7c	 Bytes: 4
  %loadMem_4aea7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aea7c = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aea7c)
  store %struct.Memory* %call_4aea7c, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 4aea80	 Bytes: 4
  %loadMem_4aea80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aea80 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aea80)
  store %struct.Memory* %call_4aea80, %struct.Memory** %MEMORY

  ; Code: movl 0x4(%rax), %edx	 RIP: 4aea84	 Bytes: 3
  %loadMem_4aea84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aea84 = call %struct.Memory* @routine_movl_0x4__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aea84)
  store %struct.Memory* %call_4aea84, %struct.Memory** %MEMORY

  ; Code: movq 0x722b20, %rax	 RIP: 4aea87	 Bytes: 8
  %loadMem_4aea87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aea87 = call %struct.Memory* @routine_movq_0x722b20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aea87)
  store %struct.Memory* %call_4aea87, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rcx	 RIP: 4aea8f	 Bytes: 4
  %loadMem_4aea8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aea8f = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aea8f)
  store %struct.Memory* %call_4aea8f, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 4aea93	 Bytes: 4
  %loadMem_4aea93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aea93 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aea93)
  store %struct.Memory* %call_4aea93, %struct.Memory** %MEMORY

  ; Code: subl 0x4(%rax), %edx	 RIP: 4aea97	 Bytes: 3
  %loadMem_4aea97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aea97 = call %struct.Memory* @routine_subl_0x4__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aea97)
  store %struct.Memory* %call_4aea97, %struct.Memory** %MEMORY

  ; Code: cmpl $0x7f, %edx	 RIP: 4aea9a	 Bytes: 3
  %loadMem_4aea9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aea9a = call %struct.Memory* @routine_cmpl__0x7f___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aea9a)
  store %struct.Memory* %call_4aea9a, %struct.Memory** %MEMORY

  ; Code: jle .L_4aeab3	 RIP: 4aea9d	 Bytes: 6
  %loadMem_4aea9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aea9d = call %struct.Memory* @routine_jle_.L_4aeab3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aea9d, i8* %BRANCH_TAKEN, i64 22, i64 6, i64 6)
  store %struct.Memory* %call_4aea9d, %struct.Memory** %MEMORY

  %loadBr_4aea9d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4aea9d = icmp eq i8 %loadBr_4aea9d, 1
  br i1 %cmpBr_4aea9d, label %block_.L_4aeab3, label %block_4aeaa3

block_4aeaa3:
  ; Code: movl $0x7f, %eax	 RIP: 4aeaa3	 Bytes: 5
  %loadMem_4aeaa3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aeaa3 = call %struct.Memory* @routine_movl__0x7f___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aeaa3)
  store %struct.Memory* %call_4aeaa3, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x8a64(%rbp)	 RIP: 4aeaa8	 Bytes: 6
  %loadMem_4aeaa8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aeaa8 = call %struct.Memory* @routine_movl__eax__MINUS0x8a64__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aeaa8)
  store %struct.Memory* %call_4aeaa8, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4aeadf	 RIP: 4aeaae	 Bytes: 5
  %loadMem_4aeaae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aeaae = call %struct.Memory* @routine_jmpq_.L_4aeadf(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aeaae, i64 49, i64 5)
  store %struct.Memory* %call_4aeaae, %struct.Memory** %MEMORY

  br label %block_.L_4aeadf

  ; Code: .L_4aeab3:	 RIP: 4aeab3	 Bytes: 0
block_.L_4aeab3:

  ; Code: movq 0x722b28, %rax	 RIP: 4aeab3	 Bytes: 8
  %loadMem_4aeab3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aeab3 = call %struct.Memory* @routine_movq_0x722b28___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aeab3)
  store %struct.Memory* %call_4aeab3, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 4aeabb	 Bytes: 4
  %loadMem_4aeabb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aeabb = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aeabb)
  store %struct.Memory* %call_4aeabb, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 4aeabf	 Bytes: 4
  %loadMem_4aeabf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aeabf = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aeabf)
  store %struct.Memory* %call_4aeabf, %struct.Memory** %MEMORY

  ; Code: movl 0x4(%rax), %edx	 RIP: 4aeac3	 Bytes: 3
  %loadMem_4aeac3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aeac3 = call %struct.Memory* @routine_movl_0x4__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aeac3)
  store %struct.Memory* %call_4aeac3, %struct.Memory** %MEMORY

  ; Code: movq 0x722b20, %rax	 RIP: 4aeac6	 Bytes: 8
  %loadMem_4aeac6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aeac6 = call %struct.Memory* @routine_movq_0x722b20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aeac6)
  store %struct.Memory* %call_4aeac6, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rcx	 RIP: 4aeace	 Bytes: 4
  %loadMem_4aeace = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aeace = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aeace)
  store %struct.Memory* %call_4aeace, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 4aead2	 Bytes: 4
  %loadMem_4aead2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aead2 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aead2)
  store %struct.Memory* %call_4aead2, %struct.Memory** %MEMORY

  ; Code: subl 0x4(%rax), %edx	 RIP: 4aead6	 Bytes: 3
  %loadMem_4aead6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aead6 = call %struct.Memory* @routine_subl_0x4__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aead6)
  store %struct.Memory* %call_4aead6, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x8a64(%rbp)	 RIP: 4aead9	 Bytes: 6
  %loadMem_4aead9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aead9 = call %struct.Memory* @routine_movl__edx__MINUS0x8a64__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aead9)
  store %struct.Memory* %call_4aead9, %struct.Memory** %MEMORY

  ; Code: .L_4aeadf:	 RIP: 4aeadf	 Bytes: 0
  br label %block_.L_4aeadf
block_.L_4aeadf:

  ; Code: movl -0x8a64(%rbp), %eax	 RIP: 4aeadf	 Bytes: 6
  %loadMem_4aeadf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aeadf = call %struct.Memory* @routine_movl_MINUS0x8a64__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aeadf)
  store %struct.Memory* %call_4aeadf, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x8a60(%rbp)	 RIP: 4aeae5	 Bytes: 6
  %loadMem_4aeae5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aeae5 = call %struct.Memory* @routine_movl__eax__MINUS0x8a60__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aeae5)
  store %struct.Memory* %call_4aeae5, %struct.Memory** %MEMORY

  ; Code: .L_4aeaeb:	 RIP: 4aeaeb	 Bytes: 0
  br label %block_.L_4aeaeb
block_.L_4aeaeb:

  ; Code: movl -0x8a60(%rbp), %eax	 RIP: 4aeaeb	 Bytes: 6
  %loadMem_4aeaeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aeaeb = call %struct.Memory* @routine_movl_MINUS0x8a60__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aeaeb)
  store %struct.Memory* %call_4aeaeb, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x8a50(%rbp)	 RIP: 4aeaf1	 Bytes: 6
  %loadMem_4aeaf1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aeaf1 = call %struct.Memory* @routine_movl__eax__MINUS0x8a50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aeaf1)
  store %struct.Memory* %call_4aeaf1, %struct.Memory** %MEMORY

  ; Code: movq 0x70fcf0, %rcx	 RIP: 4aeaf7	 Bytes: 8
  %loadMem_4aeaf7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aeaf7 = call %struct.Memory* @routine_movq_0x70fcf0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aeaf7)
  store %struct.Memory* %call_4aeaf7, %struct.Memory** %MEMORY

  ; Code: movl 0x4(%rcx), %eax	 RIP: 4aeaff	 Bytes: 3
  %loadMem_4aeaff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aeaff = call %struct.Memory* @routine_movl_0x4__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aeaff)
  store %struct.Memory* %call_4aeaff, %struct.Memory** %MEMORY

  ; Code: movq 0x722b20, %rcx	 RIP: 4aeb02	 Bytes: 8
  %loadMem_4aeb02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aeb02 = call %struct.Memory* @routine_movq_0x722b20___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aeb02)
  store %struct.Memory* %call_4aeb02, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rdx	 RIP: 4aeb0a	 Bytes: 4
  %loadMem_4aeb0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aeb0a = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aeb0a)
  store %struct.Memory* %call_4aeb0a, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 4aeb0e	 Bytes: 4
  %loadMem_4aeb0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aeb0e = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aeb0e)
  store %struct.Memory* %call_4aeb0e, %struct.Memory** %MEMORY

  ; Code: subl 0x4(%rcx), %eax	 RIP: 4aeb12	 Bytes: 3
  %loadMem_4aeb12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aeb12 = call %struct.Memory* @routine_subl_0x4__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aeb12)
  store %struct.Memory* %call_4aeb12, %struct.Memory** %MEMORY

  ; Code: cmpl $0xffffff80, %eax	 RIP: 4aeb15	 Bytes: 3
  %loadMem_4aeb15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aeb15 = call %struct.Memory* @routine_cmpl__0xffffff80___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aeb15)
  store %struct.Memory* %call_4aeb15, %struct.Memory** %MEMORY

  ; Code: jge .L_4aeb2e	 RIP: 4aeb18	 Bytes: 6
  %loadMem_4aeb18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aeb18 = call %struct.Memory* @routine_jge_.L_4aeb2e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aeb18, i8* %BRANCH_TAKEN, i64 22, i64 6, i64 6)
  store %struct.Memory* %call_4aeb18, %struct.Memory** %MEMORY

  %loadBr_4aeb18 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4aeb18 = icmp eq i8 %loadBr_4aeb18, 1
  br i1 %cmpBr_4aeb18, label %block_.L_4aeb2e, label %block_4aeb1e

block_4aeb1e:
  ; Code: movl $0xffffff80, %eax	 RIP: 4aeb1e	 Bytes: 5
  %loadMem_4aeb1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aeb1e = call %struct.Memory* @routine_movl__0xffffff80___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aeb1e)
  store %struct.Memory* %call_4aeb1e, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x8a68(%rbp)	 RIP: 4aeb23	 Bytes: 6
  %loadMem_4aeb23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aeb23 = call %struct.Memory* @routine_movl__eax__MINUS0x8a68__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aeb23)
  store %struct.Memory* %call_4aeb23, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4aeb95	 RIP: 4aeb29	 Bytes: 5
  %loadMem_4aeb29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aeb29 = call %struct.Memory* @routine_jmpq_.L_4aeb95(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aeb29, i64 108, i64 5)
  store %struct.Memory* %call_4aeb29, %struct.Memory** %MEMORY

  br label %block_.L_4aeb95

  ; Code: .L_4aeb2e:	 RIP: 4aeb2e	 Bytes: 0
block_.L_4aeb2e:

  ; Code: movq 0x70fcf0, %rax	 RIP: 4aeb2e	 Bytes: 8
  %loadMem_4aeb2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aeb2e = call %struct.Memory* @routine_movq_0x70fcf0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aeb2e)
  store %struct.Memory* %call_4aeb2e, %struct.Memory** %MEMORY

  ; Code: movl 0x4(%rax), %ecx	 RIP: 4aeb36	 Bytes: 3
  %loadMem_4aeb36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aeb36 = call %struct.Memory* @routine_movl_0x4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aeb36)
  store %struct.Memory* %call_4aeb36, %struct.Memory** %MEMORY

  ; Code: movq 0x722b20, %rax	 RIP: 4aeb39	 Bytes: 8
  %loadMem_4aeb39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aeb39 = call %struct.Memory* @routine_movq_0x722b20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aeb39)
  store %struct.Memory* %call_4aeb39, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rdx	 RIP: 4aeb41	 Bytes: 4
  %loadMem_4aeb41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aeb41 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aeb41)
  store %struct.Memory* %call_4aeb41, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 4aeb45	 Bytes: 4
  %loadMem_4aeb45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aeb45 = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aeb45)
  store %struct.Memory* %call_4aeb45, %struct.Memory** %MEMORY

  ; Code: subl 0x4(%rax), %ecx	 RIP: 4aeb49	 Bytes: 3
  %loadMem_4aeb49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aeb49 = call %struct.Memory* @routine_subl_0x4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aeb49)
  store %struct.Memory* %call_4aeb49, %struct.Memory** %MEMORY

  ; Code: cmpl $0x7f, %ecx	 RIP: 4aeb4c	 Bytes: 3
  %loadMem_4aeb4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aeb4c = call %struct.Memory* @routine_cmpl__0x7f___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aeb4c)
  store %struct.Memory* %call_4aeb4c, %struct.Memory** %MEMORY

  ; Code: jle .L_4aeb65	 RIP: 4aeb4f	 Bytes: 6
  %loadMem_4aeb4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aeb4f = call %struct.Memory* @routine_jle_.L_4aeb65(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aeb4f, i8* %BRANCH_TAKEN, i64 22, i64 6, i64 6)
  store %struct.Memory* %call_4aeb4f, %struct.Memory** %MEMORY

  %loadBr_4aeb4f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4aeb4f = icmp eq i8 %loadBr_4aeb4f, 1
  br i1 %cmpBr_4aeb4f, label %block_.L_4aeb65, label %block_4aeb55

block_4aeb55:
  ; Code: movl $0x7f, %eax	 RIP: 4aeb55	 Bytes: 5
  %loadMem_4aeb55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aeb55 = call %struct.Memory* @routine_movl__0x7f___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aeb55)
  store %struct.Memory* %call_4aeb55, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x8a6c(%rbp)	 RIP: 4aeb5a	 Bytes: 6
  %loadMem_4aeb5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aeb5a = call %struct.Memory* @routine_movl__eax__MINUS0x8a6c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aeb5a)
  store %struct.Memory* %call_4aeb5a, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4aeb89	 RIP: 4aeb60	 Bytes: 5
  %loadMem_4aeb60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aeb60 = call %struct.Memory* @routine_jmpq_.L_4aeb89(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aeb60, i64 41, i64 5)
  store %struct.Memory* %call_4aeb60, %struct.Memory** %MEMORY

  br label %block_.L_4aeb89

  ; Code: .L_4aeb65:	 RIP: 4aeb65	 Bytes: 0
block_.L_4aeb65:

  ; Code: movq 0x70fcf0, %rax	 RIP: 4aeb65	 Bytes: 8
  %loadMem_4aeb65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aeb65 = call %struct.Memory* @routine_movq_0x70fcf0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aeb65)
  store %struct.Memory* %call_4aeb65, %struct.Memory** %MEMORY

  ; Code: movl 0x4(%rax), %ecx	 RIP: 4aeb6d	 Bytes: 3
  %loadMem_4aeb6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aeb6d = call %struct.Memory* @routine_movl_0x4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aeb6d)
  store %struct.Memory* %call_4aeb6d, %struct.Memory** %MEMORY

  ; Code: movq 0x722b20, %rax	 RIP: 4aeb70	 Bytes: 8
  %loadMem_4aeb70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aeb70 = call %struct.Memory* @routine_movq_0x722b20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aeb70)
  store %struct.Memory* %call_4aeb70, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rdx	 RIP: 4aeb78	 Bytes: 4
  %loadMem_4aeb78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aeb78 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aeb78)
  store %struct.Memory* %call_4aeb78, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 4aeb7c	 Bytes: 4
  %loadMem_4aeb7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aeb7c = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aeb7c)
  store %struct.Memory* %call_4aeb7c, %struct.Memory** %MEMORY

  ; Code: subl 0x4(%rax), %ecx	 RIP: 4aeb80	 Bytes: 3
  %loadMem_4aeb80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aeb80 = call %struct.Memory* @routine_subl_0x4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aeb80)
  store %struct.Memory* %call_4aeb80, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x8a6c(%rbp)	 RIP: 4aeb83	 Bytes: 6
  %loadMem_4aeb83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aeb83 = call %struct.Memory* @routine_movl__ecx__MINUS0x8a6c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aeb83)
  store %struct.Memory* %call_4aeb83, %struct.Memory** %MEMORY

  ; Code: .L_4aeb89:	 RIP: 4aeb89	 Bytes: 0
  br label %block_.L_4aeb89
block_.L_4aeb89:

  ; Code: movl -0x8a6c(%rbp), %eax	 RIP: 4aeb89	 Bytes: 6
  %loadMem_4aeb89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aeb89 = call %struct.Memory* @routine_movl_MINUS0x8a6c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aeb89)
  store %struct.Memory* %call_4aeb89, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x8a68(%rbp)	 RIP: 4aeb8f	 Bytes: 6
  %loadMem_4aeb8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aeb8f = call %struct.Memory* @routine_movl__eax__MINUS0x8a68__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aeb8f)
  store %struct.Memory* %call_4aeb8f, %struct.Memory** %MEMORY

  ; Code: .L_4aeb95:	 RIP: 4aeb95	 Bytes: 0
  br label %block_.L_4aeb95
block_.L_4aeb95:

  ; Code: movl -0x8a68(%rbp), %eax	 RIP: 4aeb95	 Bytes: 6
  %loadMem_4aeb95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aeb95 = call %struct.Memory* @routine_movl_MINUS0x8a68__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aeb95)
  store %struct.Memory* %call_4aeb95, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x8a54(%rbp)	 RIP: 4aeb9b	 Bytes: 6
  %loadMem_4aeb9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aeb9b = call %struct.Memory* @routine_movl__eax__MINUS0x8a54__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aeb9b)
  store %struct.Memory* %call_4aeb9b, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x28(%rbp)	 RIP: 4aeba1	 Bytes: 7
  %loadMem_4aeba1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aeba1 = call %struct.Memory* @routine_movl__0x0__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aeba1)
  store %struct.Memory* %call_4aeba1, %struct.Memory** %MEMORY

  ; Code: .L_4aeba8:	 RIP: 4aeba8	 Bytes: 0
  br label %block_.L_4aeba8
block_.L_4aeba8:

  ; Code: cmpl $0x3, -0x28(%rbp)	 RIP: 4aeba8	 Bytes: 4
  %loadMem_4aeba8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aeba8 = call %struct.Memory* @routine_cmpl__0x3__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aeba8)
  store %struct.Memory* %call_4aeba8, %struct.Memory** %MEMORY

  ; Code: jge .L_4aeecd	 RIP: 4aebac	 Bytes: 6
  %loadMem_4aebac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aebac = call %struct.Memory* @routine_jge_.L_4aeecd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aebac, i8* %BRANCH_TAKEN, i64 801, i64 6, i64 6)
  store %struct.Memory* %call_4aebac, %struct.Memory** %MEMORY

  %loadBr_4aebac = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4aebac = icmp eq i8 %loadBr_4aebac, 1
  br i1 %cmpBr_4aebac, label %block_.L_4aeecd, label %block_4aebb2

block_4aebb2:
  ; Code: cmpl $0x0, -0x8a50(%rbp)	 RIP: 4aebb2	 Bytes: 7
  %loadMem_4aebb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aebb2 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x8a50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aebb2)
  store %struct.Memory* %call_4aebb2, %struct.Memory** %MEMORY

  ; Code: jne .L_4aec84	 RIP: 4aebb9	 Bytes: 6
  %loadMem_4aebb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aebb9 = call %struct.Memory* @routine_jne_.L_4aec84(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aebb9, i8* %BRANCH_TAKEN, i64 203, i64 6, i64 6)
  store %struct.Memory* %call_4aebb9, %struct.Memory** %MEMORY

  %loadBr_4aebb9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4aebb9 = icmp eq i8 %loadBr_4aebb9, 1
  br i1 %cmpBr_4aebb9, label %block_.L_4aec84, label %block_4aebbf

block_4aebbf:
  ; Code: leaq -0x8a40(%rbp), %rax	 RIP: 4aebbf	 Bytes: 7
  %loadMem_4aebbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aebbf = call %struct.Memory* @routine_leaq_MINUS0x8a40__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aebbf)
  store %struct.Memory* %call_4aebbf, %struct.Memory** %MEMORY

  ; Code: leaq -0x4af0(%rbp), %rcx	 RIP: 4aebc6	 Bytes: 7
  %loadMem_4aebc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aebc6 = call %struct.Memory* @routine_leaq_MINUS0x4af0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aebc6)
  store %struct.Memory* %call_4aebc6, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdx	 RIP: 4aebcd	 Bytes: 4
  %loadMem_4aebcd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aebcd = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aebcd)
  store %struct.Memory* %call_4aebcd, %struct.Memory** %MEMORY

  ; Code: movl -0x324(%rbp,%rdx,4), %esi	 RIP: 4aebd1	 Bytes: 7
  %loadMem_4aebd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aebd1 = call %struct.Memory* @routine_movl_MINUS0x324__rbp__rdx_4____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aebd1)
  store %struct.Memory* %call_4aebd1, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdx	 RIP: 4aebd8	 Bytes: 3
  %loadMem_4aebd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aebd8 = call %struct.Memory* @routine_movq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aebd8)
  store %struct.Memory* %call_4aebd8, %struct.Memory** %MEMORY

  ; Code: addq $0xa8c, %rdx	 RIP: 4aebdb	 Bytes: 7
  %loadMem_4aebdb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aebdb = call %struct.Memory* @routine_addq__0xa8c___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aebdb)
  store %struct.Memory* %call_4aebdb, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rdi	 RIP: 4aebe2	 Bytes: 4
  %loadMem_4aebe2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aebe2 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aebe2)
  store %struct.Memory* %call_4aebe2, %struct.Memory** %MEMORY

  ; Code: imulq $0xb4, %rdi, %rdi	 RIP: 4aebe6	 Bytes: 7
  %loadMem_4aebe6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aebe6 = call %struct.Memory* @routine_imulq__0xb4___rdi___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aebe6)
  store %struct.Memory* %call_4aebe6, %struct.Memory** %MEMORY

  ; Code: addq %rdi, %rdx	 RIP: 4aebed	 Bytes: 3
  %loadMem_4aebed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aebed = call %struct.Memory* @routine_addq__rdi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aebed)
  store %struct.Memory* %call_4aebed, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdi	 RIP: 4aebf0	 Bytes: 4
  %loadMem_4aebf0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aebf0 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aebf0)
  store %struct.Memory* %call_4aebf0, %struct.Memory** %MEMORY

  ; Code: imulq $0xc, %rdi, %rdi	 RIP: 4aebf4	 Bytes: 4
  %loadMem_4aebf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aebf4 = call %struct.Memory* @routine_imulq__0xc___rdi___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aebf4)
  store %struct.Memory* %call_4aebf4, %struct.Memory** %MEMORY

  ; Code: addq %rdi, %rdx	 RIP: 4aebf8	 Bytes: 3
  %loadMem_4aebf8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aebf8 = call %struct.Memory* @routine_addq__rdi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aebf8)
  store %struct.Memory* %call_4aebf8, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdi	 RIP: 4aebfb	 Bytes: 4
  %loadMem_4aebfb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aebfb = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aebfb)
  store %struct.Memory* %call_4aebfb, %struct.Memory** %MEMORY

  ; Code: movl %esi, (%rdx,%rdi,4)	 RIP: 4aebff	 Bytes: 3
  %loadMem_4aebff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aebff = call %struct.Memory* @routine_movl__esi____rdx__rdi_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aebff)
  store %struct.Memory* %call_4aebff, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdx	 RIP: 4aec02	 Bytes: 4
  %loadMem_4aec02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aec02 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aec02)
  store %struct.Memory* %call_4aec02, %struct.Memory** %MEMORY

  ; Code: movl -0x324(%rbp,%rdx,4), %esi	 RIP: 4aec06	 Bytes: 7
  %loadMem_4aec06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aec06 = call %struct.Memory* @routine_movl_MINUS0x324__rbp__rdx_4____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aec06)
  store %struct.Memory* %call_4aec06, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rdx	 RIP: 4aec0d	 Bytes: 4
  %loadMem_4aec0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aec0d = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aec0d)
  store %struct.Memory* %call_4aec0d, %struct.Memory** %MEMORY

  ; Code: imulq $0xb4, %rdx, %rdx	 RIP: 4aec11	 Bytes: 7
  %loadMem_4aec11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aec11 = call %struct.Memory* @routine_imulq__0xb4___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aec11)
  store %struct.Memory* %call_4aec11, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 4aec18	 Bytes: 3
  %loadMem_4aec18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aec18 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aec18)
  store %struct.Memory* %call_4aec18, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdx	 RIP: 4aec1b	 Bytes: 4
  %loadMem_4aec1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aec1b = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aec1b)
  store %struct.Memory* %call_4aec1b, %struct.Memory** %MEMORY

  ; Code: imulq $0xc, %rdx, %rdx	 RIP: 4aec1f	 Bytes: 4
  %loadMem_4aec1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aec1f = call %struct.Memory* @routine_imulq__0xc___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aec1f)
  store %struct.Memory* %call_4aec1f, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 4aec23	 Bytes: 3
  %loadMem_4aec23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aec23 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aec23)
  store %struct.Memory* %call_4aec23, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdx	 RIP: 4aec26	 Bytes: 4
  %loadMem_4aec26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aec26 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aec26)
  store %struct.Memory* %call_4aec26, %struct.Memory** %MEMORY

  ; Code: movl %esi, (%rcx,%rdx,4)	 RIP: 4aec2a	 Bytes: 3
  %loadMem_4aec2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aec2a = call %struct.Memory* @routine_movl__esi____rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aec2a)
  store %struct.Memory* %call_4aec2a, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rcx	 RIP: 4aec2d	 Bytes: 3
  %loadMem_4aec2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aec2d = call %struct.Memory* @routine_movq__rax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aec2d)
  store %struct.Memory* %call_4aec2d, %struct.Memory** %MEMORY

  ; Code: addq $0xa8c, %rcx	 RIP: 4aec30	 Bytes: 7
  %loadMem_4aec30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aec30 = call %struct.Memory* @routine_addq__0xa8c___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aec30)
  store %struct.Memory* %call_4aec30, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rdx	 RIP: 4aec37	 Bytes: 4
  %loadMem_4aec37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aec37 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aec37)
  store %struct.Memory* %call_4aec37, %struct.Memory** %MEMORY

  ; Code: imulq $0xb4, %rdx, %rdx	 RIP: 4aec3b	 Bytes: 7
  %loadMem_4aec3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aec3b = call %struct.Memory* @routine_imulq__0xb4___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aec3b)
  store %struct.Memory* %call_4aec3b, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 4aec42	 Bytes: 3
  %loadMem_4aec42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aec42 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aec42)
  store %struct.Memory* %call_4aec42, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdx	 RIP: 4aec45	 Bytes: 4
  %loadMem_4aec45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aec45 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aec45)
  store %struct.Memory* %call_4aec45, %struct.Memory** %MEMORY

  ; Code: imulq $0xc, %rdx, %rdx	 RIP: 4aec49	 Bytes: 4
  %loadMem_4aec49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aec49 = call %struct.Memory* @routine_imulq__0xc___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aec49)
  store %struct.Memory* %call_4aec49, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 4aec4d	 Bytes: 3
  %loadMem_4aec4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aec4d = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aec4d)
  store %struct.Memory* %call_4aec4d, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdx	 RIP: 4aec50	 Bytes: 4
  %loadMem_4aec50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aec50 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aec50)
  store %struct.Memory* %call_4aec50, %struct.Memory** %MEMORY

  ; Code: movl $0x0, (%rcx,%rdx,4)	 RIP: 4aec54	 Bytes: 7
  %loadMem_4aec54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aec54 = call %struct.Memory* @routine_movl__0x0____rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aec54)
  store %struct.Memory* %call_4aec54, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rcx	 RIP: 4aec5b	 Bytes: 4
  %loadMem_4aec5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aec5b = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aec5b)
  store %struct.Memory* %call_4aec5b, %struct.Memory** %MEMORY

  ; Code: imulq $0xb4, %rcx, %rcx	 RIP: 4aec5f	 Bytes: 7
  %loadMem_4aec5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aec5f = call %struct.Memory* @routine_imulq__0xb4___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aec5f)
  store %struct.Memory* %call_4aec5f, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4aec66	 Bytes: 3
  %loadMem_4aec66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aec66 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aec66)
  store %struct.Memory* %call_4aec66, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 4aec69	 Bytes: 4
  %loadMem_4aec69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aec69 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aec69)
  store %struct.Memory* %call_4aec69, %struct.Memory** %MEMORY

  ; Code: imulq $0xc, %rcx, %rcx	 RIP: 4aec6d	 Bytes: 4
  %loadMem_4aec6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aec6d = call %struct.Memory* @routine_imulq__0xc___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aec6d)
  store %struct.Memory* %call_4aec6d, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4aec71	 Bytes: 3
  %loadMem_4aec71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aec71 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aec71)
  store %struct.Memory* %call_4aec71, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 4aec74	 Bytes: 4
  %loadMem_4aec74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aec74 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aec74)
  store %struct.Memory* %call_4aec74, %struct.Memory** %MEMORY

  ; Code: movl $0x0, (%rax,%rcx,4)	 RIP: 4aec78	 Bytes: 7
  %loadMem_4aec78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aec78 = call %struct.Memory* @routine_movl__0x0____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aec78)
  store %struct.Memory* %call_4aec78, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4aeeba	 RIP: 4aec7f	 Bytes: 5
  %loadMem_4aec7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aec7f = call %struct.Memory* @routine_jmpq_.L_4aeeba(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aec7f, i64 571, i64 5)
  store %struct.Memory* %call_4aec7f, %struct.Memory** %MEMORY

  br label %block_.L_4aeeba

  ; Code: .L_4aec84:	 RIP: 4aec84	 Bytes: 0
block_.L_4aec84:

  ; Code: movl $0x2, %eax	 RIP: 4aec84	 Bytes: 5
  %loadMem_4aec84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aec84 = call %struct.Memory* @routine_movl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aec84)
  store %struct.Memory* %call_4aec84, %struct.Memory** %MEMORY

  ; Code: movl -0x8a50(%rbp), %ecx	 RIP: 4aec89	 Bytes: 6
  %loadMem_4aec89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aec89 = call %struct.Memory* @routine_movl_MINUS0x8a50__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aec89)
  store %struct.Memory* %call_4aec89, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x8a70(%rbp)	 RIP: 4aec8f	 Bytes: 6
  %loadMem_4aec8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aec8f = call %struct.Memory* @routine_movl__eax__MINUS0x8a70__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aec8f)
  store %struct.Memory* %call_4aec8f, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %eax	 RIP: 4aec95	 Bytes: 2
  %loadMem_4aec95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aec95 = call %struct.Memory* @routine_movl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aec95)
  store %struct.Memory* %call_4aec95, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 4aec97	 Bytes: 1
  %loadMem_4aec97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aec97 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aec97)
  store %struct.Memory* %call_4aec97, %struct.Memory** %MEMORY

  ; Code: movl -0x8a70(%rbp), %ecx	 RIP: 4aec98	 Bytes: 6
  %loadMem_4aec98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aec98 = call %struct.Memory* @routine_movl_MINUS0x8a70__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aec98)
  store %struct.Memory* %call_4aec98, %struct.Memory** %MEMORY

  ; Code: idivl %ecx	 RIP: 4aec9e	 Bytes: 2
  %loadMem_4aec9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aec9e = call %struct.Memory* @routine_idivl__ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aec9e)
  store %struct.Memory* %call_4aec9e, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edi	 RIP: 4aeca0	 Bytes: 2
  %loadMem_4aeca0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aeca0 = call %struct.Memory* @routine_movl__eax___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aeca0)
  store %struct.Memory* %call_4aeca0, %struct.Memory** %MEMORY

  ; Code: callq .abs_plt	 RIP: 4aeca2	 Bytes: 5
  %loadMem1_4aeca2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4aeca2 = call %struct.Memory* @routine_callq_.abs_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4aeca2, i64 -711842, i64 5, i64 5)
  store %struct.Memory* %call1_4aeca2, %struct.Memory** %MEMORY

  %loadMem2_4aeca2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4aeca2 = load i64, i64* %3
  %call2_4aeca2 = call %struct.Memory* @ext_abs(%struct.State* %0, i64  %loadPC_4aeca2, %struct.Memory* %loadMem2_4aeca2)
  store %struct.Memory* %call2_4aeca2, %struct.Memory** %MEMORY

  ; Code: addl $0x4000, %eax	 RIP: 4aeca7	 Bytes: 5
  %loadMem_4aeca7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aeca7 = call %struct.Memory* @routine_addl__0x4000___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aeca7)
  store %struct.Memory* %call_4aeca7, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 4aecac	 Bytes: 1
  %loadMem_4aecac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aecac = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aecac)
  store %struct.Memory* %call_4aecac, %struct.Memory** %MEMORY

  ; Code: idivl -0x8a50(%rbp)	 RIP: 4aecad	 Bytes: 6
  %loadMem_4aecad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aecad = call %struct.Memory* @routine_idivl_MINUS0x8a50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aecad)
  store %struct.Memory* %call_4aecad, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x14(%rbp)	 RIP: 4aecb3	 Bytes: 3
  %loadMem_4aecb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aecb3 = call %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aecb3)
  store %struct.Memory* %call_4aecb3, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %eax	 RIP: 4aecb6	 Bytes: 3
  %loadMem_4aecb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aecb6 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aecb6)
  store %struct.Memory* %call_4aecb6, %struct.Memory** %MEMORY

  ; Code: imull -0x8a54(%rbp), %eax	 RIP: 4aecb9	 Bytes: 7
  %loadMem_4aecb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aecb9 = call %struct.Memory* @routine_imull_MINUS0x8a54__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aecb9)
  store %struct.Memory* %call_4aecb9, %struct.Memory** %MEMORY

  ; Code: addl $0x20, %eax	 RIP: 4aecc0	 Bytes: 3
  %loadMem_4aecc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aecc0 = call %struct.Memory* @routine_addl__0x20___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aecc0)
  store %struct.Memory* %call_4aecc0, %struct.Memory** %MEMORY

  ; Code: sarl $0x6, %eax	 RIP: 4aecc3	 Bytes: 3
  %loadMem_4aecc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aecc3 = call %struct.Memory* @routine_sarl__0x6___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aecc3)
  store %struct.Memory* %call_4aecc3, %struct.Memory** %MEMORY

  ; Code: cmpl $0xfffffc00, %eax	 RIP: 4aecc6	 Bytes: 5
  %loadMem_4aecc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aecc6 = call %struct.Memory* @routine_cmpl__0xfffffc00___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aecc6)
  store %struct.Memory* %call_4aecc6, %struct.Memory** %MEMORY

  ; Code: jge .L_4aece1	 RIP: 4aeccb	 Bytes: 6
  %loadMem_4aeccb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aeccb = call %struct.Memory* @routine_jge_.L_4aece1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aeccb, i8* %BRANCH_TAKEN, i64 22, i64 6, i64 6)
  store %struct.Memory* %call_4aeccb, %struct.Memory** %MEMORY

  %loadBr_4aeccb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4aeccb = icmp eq i8 %loadBr_4aeccb, 1
  br i1 %cmpBr_4aeccb, label %block_.L_4aece1, label %block_4aecd1

block_4aecd1:
  ; Code: movl $0xfffffc00, %eax	 RIP: 4aecd1	 Bytes: 5
  %loadMem_4aecd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aecd1 = call %struct.Memory* @routine_movl__0xfffffc00___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aecd1)
  store %struct.Memory* %call_4aecd1, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x8a74(%rbp)	 RIP: 4aecd6	 Bytes: 6
  %loadMem_4aecd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aecd6 = call %struct.Memory* @routine_movl__eax__MINUS0x8a74__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aecd6)
  store %struct.Memory* %call_4aecd6, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4aed2e	 RIP: 4aecdc	 Bytes: 5
  %loadMem_4aecdc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aecdc = call %struct.Memory* @routine_jmpq_.L_4aed2e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aecdc, i64 82, i64 5)
  store %struct.Memory* %call_4aecdc, %struct.Memory** %MEMORY

  br label %block_.L_4aed2e

  ; Code: .L_4aece1:	 RIP: 4aece1	 Bytes: 0
block_.L_4aece1:

  ; Code: movl -0x14(%rbp), %eax	 RIP: 4aece1	 Bytes: 3
  %loadMem_4aece1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aece1 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aece1)
  store %struct.Memory* %call_4aece1, %struct.Memory** %MEMORY

  ; Code: imull -0x8a54(%rbp), %eax	 RIP: 4aece4	 Bytes: 7
  %loadMem_4aece4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aece4 = call %struct.Memory* @routine_imull_MINUS0x8a54__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aece4)
  store %struct.Memory* %call_4aece4, %struct.Memory** %MEMORY

  ; Code: addl $0x20, %eax	 RIP: 4aeceb	 Bytes: 3
  %loadMem_4aeceb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aeceb = call %struct.Memory* @routine_addl__0x20___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aeceb)
  store %struct.Memory* %call_4aeceb, %struct.Memory** %MEMORY

  ; Code: sarl $0x6, %eax	 RIP: 4aecee	 Bytes: 3
  %loadMem_4aecee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aecee = call %struct.Memory* @routine_sarl__0x6___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aecee)
  store %struct.Memory* %call_4aecee, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3ff, %eax	 RIP: 4aecf1	 Bytes: 5
  %loadMem_4aecf1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aecf1 = call %struct.Memory* @routine_cmpl__0x3ff___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aecf1)
  store %struct.Memory* %call_4aecf1, %struct.Memory** %MEMORY

  ; Code: jle .L_4aed0c	 RIP: 4aecf6	 Bytes: 6
  %loadMem_4aecf6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aecf6 = call %struct.Memory* @routine_jle_.L_4aed0c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aecf6, i8* %BRANCH_TAKEN, i64 22, i64 6, i64 6)
  store %struct.Memory* %call_4aecf6, %struct.Memory** %MEMORY

  %loadBr_4aecf6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4aecf6 = icmp eq i8 %loadBr_4aecf6, 1
  br i1 %cmpBr_4aecf6, label %block_.L_4aed0c, label %block_4aecfc

block_4aecfc:
  ; Code: movl $0x3ff, %eax	 RIP: 4aecfc	 Bytes: 5
  %loadMem_4aecfc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aecfc = call %struct.Memory* @routine_movl__0x3ff___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aecfc)
  store %struct.Memory* %call_4aecfc, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x8a78(%rbp)	 RIP: 4aed01	 Bytes: 6
  %loadMem_4aed01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aed01 = call %struct.Memory* @routine_movl__eax__MINUS0x8a78__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aed01)
  store %struct.Memory* %call_4aed01, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4aed22	 RIP: 4aed07	 Bytes: 5
  %loadMem_4aed07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aed07 = call %struct.Memory* @routine_jmpq_.L_4aed22(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aed07, i64 27, i64 5)
  store %struct.Memory* %call_4aed07, %struct.Memory** %MEMORY

  br label %block_.L_4aed22

  ; Code: .L_4aed0c:	 RIP: 4aed0c	 Bytes: 0
block_.L_4aed0c:

  ; Code: movl -0x14(%rbp), %eax	 RIP: 4aed0c	 Bytes: 3
  %loadMem_4aed0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aed0c = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aed0c)
  store %struct.Memory* %call_4aed0c, %struct.Memory** %MEMORY

  ; Code: imull -0x8a54(%rbp), %eax	 RIP: 4aed0f	 Bytes: 7
  %loadMem_4aed0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aed0f = call %struct.Memory* @routine_imull_MINUS0x8a54__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aed0f)
  store %struct.Memory* %call_4aed0f, %struct.Memory** %MEMORY

  ; Code: addl $0x20, %eax	 RIP: 4aed16	 Bytes: 3
  %loadMem_4aed16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aed16 = call %struct.Memory* @routine_addl__0x20___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aed16)
  store %struct.Memory* %call_4aed16, %struct.Memory** %MEMORY

  ; Code: sarl $0x6, %eax	 RIP: 4aed19	 Bytes: 3
  %loadMem_4aed19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aed19 = call %struct.Memory* @routine_sarl__0x6___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aed19)
  store %struct.Memory* %call_4aed19, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x8a78(%rbp)	 RIP: 4aed1c	 Bytes: 6
  %loadMem_4aed1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aed1c = call %struct.Memory* @routine_movl__eax__MINUS0x8a78__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aed1c)
  store %struct.Memory* %call_4aed1c, %struct.Memory** %MEMORY

  ; Code: .L_4aed22:	 RIP: 4aed22	 Bytes: 0
  br label %block_.L_4aed22
block_.L_4aed22:

  ; Code: movl -0x8a78(%rbp), %eax	 RIP: 4aed22	 Bytes: 6
  %loadMem_4aed22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aed22 = call %struct.Memory* @routine_movl_MINUS0x8a78__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aed22)
  store %struct.Memory* %call_4aed22, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x8a74(%rbp)	 RIP: 4aed28	 Bytes: 6
  %loadMem_4aed28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aed28 = call %struct.Memory* @routine_movl__eax__MINUS0x8a74__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aed28)
  store %struct.Memory* %call_4aed28, %struct.Memory** %MEMORY

  ; Code: .L_4aed2e:	 RIP: 4aed2e	 Bytes: 0
  br label %block_.L_4aed2e
block_.L_4aed2e:

  ; Code: movl -0x8a74(%rbp), %eax	 RIP: 4aed2e	 Bytes: 6
  %loadMem_4aed2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aed2e = call %struct.Memory* @routine_movl_MINUS0x8a74__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aed2e)
  store %struct.Memory* %call_4aed2e, %struct.Memory** %MEMORY

  ; Code: leaq -0x4af0(%rbp), %rcx	 RIP: 4aed34	 Bytes: 7
  %loadMem_4aed34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aed34 = call %struct.Memory* @routine_leaq_MINUS0x4af0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aed34)
  store %struct.Memory* %call_4aed34, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x18(%rbp)	 RIP: 4aed3b	 Bytes: 3
  %loadMem_4aed3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aed3b = call %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aed3b)
  store %struct.Memory* %call_4aed3b, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %eax	 RIP: 4aed3e	 Bytes: 3
  %loadMem_4aed3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aed3e = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aed3e)
  store %struct.Memory* %call_4aed3e, %struct.Memory** %MEMORY

  ; Code: sarl $0x2, %eax	 RIP: 4aed41	 Bytes: 3
  %loadMem_4aed41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aed41 = call %struct.Memory* @routine_sarl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aed41)
  store %struct.Memory* %call_4aed41, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdx	 RIP: 4aed44	 Bytes: 3
  %loadMem_4aed44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aed44 = call %struct.Memory* @routine_movq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aed44)
  store %struct.Memory* %call_4aed44, %struct.Memory** %MEMORY

  ; Code: addq $0xa8c, %rdx	 RIP: 4aed47	 Bytes: 7
  %loadMem_4aed47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aed47 = call %struct.Memory* @routine_addq__0xa8c___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aed47)
  store %struct.Memory* %call_4aed47, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rsi	 RIP: 4aed4e	 Bytes: 4
  %loadMem_4aed4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aed4e = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aed4e)
  store %struct.Memory* %call_4aed4e, %struct.Memory** %MEMORY

  ; Code: imulq $0xb4, %rsi, %rsi	 RIP: 4aed52	 Bytes: 7
  %loadMem_4aed52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aed52 = call %struct.Memory* @routine_imulq__0xb4___rsi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aed52)
  store %struct.Memory* %call_4aed52, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rdx	 RIP: 4aed59	 Bytes: 3
  %loadMem_4aed59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aed59 = call %struct.Memory* @routine_addq__rsi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aed59)
  store %struct.Memory* %call_4aed59, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rsi	 RIP: 4aed5c	 Bytes: 4
  %loadMem_4aed5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aed5c = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aed5c)
  store %struct.Memory* %call_4aed5c, %struct.Memory** %MEMORY

  ; Code: imulq $0xc, %rsi, %rsi	 RIP: 4aed60	 Bytes: 4
  %loadMem_4aed60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aed60 = call %struct.Memory* @routine_imulq__0xc___rsi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aed60)
  store %struct.Memory* %call_4aed60, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rdx	 RIP: 4aed64	 Bytes: 3
  %loadMem_4aed64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aed64 = call %struct.Memory* @routine_addq__rsi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aed64)
  store %struct.Memory* %call_4aed64, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rsi	 RIP: 4aed67	 Bytes: 4
  %loadMem_4aed67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aed67 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aed67)
  store %struct.Memory* %call_4aed67, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rdx,%rsi,4)	 RIP: 4aed6b	 Bytes: 3
  %loadMem_4aed6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aed6b = call %struct.Memory* @routine_movl__eax____rdx__rsi_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aed6b)
  store %struct.Memory* %call_4aed6b, %struct.Memory** %MEMORY

  ; Code: addq $0xa8c, %rcx	 RIP: 4aed6e	 Bytes: 7
  %loadMem_4aed6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aed6e = call %struct.Memory* @routine_addq__0xa8c___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aed6e)
  store %struct.Memory* %call_4aed6e, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rdx	 RIP: 4aed75	 Bytes: 4
  %loadMem_4aed75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aed75 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aed75)
  store %struct.Memory* %call_4aed75, %struct.Memory** %MEMORY

  ; Code: imulq $0xb4, %rdx, %rdx	 RIP: 4aed79	 Bytes: 7
  %loadMem_4aed79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aed79 = call %struct.Memory* @routine_imulq__0xb4___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aed79)
  store %struct.Memory* %call_4aed79, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 4aed80	 Bytes: 3
  %loadMem_4aed80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aed80 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aed80)
  store %struct.Memory* %call_4aed80, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdx	 RIP: 4aed83	 Bytes: 4
  %loadMem_4aed83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aed83 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aed83)
  store %struct.Memory* %call_4aed83, %struct.Memory** %MEMORY

  ; Code: imulq $0xc, %rdx, %rdx	 RIP: 4aed87	 Bytes: 4
  %loadMem_4aed87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aed87 = call %struct.Memory* @routine_imulq__0xc___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aed87)
  store %struct.Memory* %call_4aed87, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 4aed8b	 Bytes: 3
  %loadMem_4aed8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aed8b = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aed8b)
  store %struct.Memory* %call_4aed8b, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdx	 RIP: 4aed8e	 Bytes: 4
  %loadMem_4aed8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aed8e = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aed8e)
  store %struct.Memory* %call_4aed8e, %struct.Memory** %MEMORY

  ; Code: cmpl $0xffffffc0, (%rcx,%rdx,4)	 RIP: 4aed92	 Bytes: 4
  %loadMem_4aed92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aed92 = call %struct.Memory* @routine_cmpl__0xffffffc0____rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aed92)
  store %struct.Memory* %call_4aed92, %struct.Memory** %MEMORY

  ; Code: jl .L_4aedd3	 RIP: 4aed96	 Bytes: 6
  %loadMem_4aed96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aed96 = call %struct.Memory* @routine_jl_.L_4aedd3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aed96, i8* %BRANCH_TAKEN, i64 61, i64 6, i64 6)
  store %struct.Memory* %call_4aed96, %struct.Memory** %MEMORY

  %loadBr_4aed96 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4aed96 = icmp eq i8 %loadBr_4aed96, 1
  br i1 %cmpBr_4aed96, label %block_.L_4aedd3, label %block_4aed9c

block_4aed9c:
  ; Code: leaq -0x4af0(%rbp), %rax	 RIP: 4aed9c	 Bytes: 7
  %loadMem_4aed9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aed9c = call %struct.Memory* @routine_leaq_MINUS0x4af0__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aed9c)
  store %struct.Memory* %call_4aed9c, %struct.Memory** %MEMORY

  ; Code: addq $0xa8c, %rax	 RIP: 4aeda3	 Bytes: 6
  %loadMem_4aeda3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aeda3 = call %struct.Memory* @routine_addq__0xa8c___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aeda3)
  store %struct.Memory* %call_4aeda3, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rcx	 RIP: 4aeda9	 Bytes: 4
  %loadMem_4aeda9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aeda9 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aeda9)
  store %struct.Memory* %call_4aeda9, %struct.Memory** %MEMORY

  ; Code: imulq $0xb4, %rcx, %rcx	 RIP: 4aedad	 Bytes: 7
  %loadMem_4aedad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aedad = call %struct.Memory* @routine_imulq__0xb4___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aedad)
  store %struct.Memory* %call_4aedad, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4aedb4	 Bytes: 3
  %loadMem_4aedb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aedb4 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aedb4)
  store %struct.Memory* %call_4aedb4, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 4aedb7	 Bytes: 4
  %loadMem_4aedb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aedb7 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aedb7)
  store %struct.Memory* %call_4aedb7, %struct.Memory** %MEMORY

  ; Code: imulq $0xc, %rcx, %rcx	 RIP: 4aedbb	 Bytes: 4
  %loadMem_4aedbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aedbb = call %struct.Memory* @routine_imulq__0xc___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aedbb)
  store %struct.Memory* %call_4aedbb, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4aedbf	 Bytes: 3
  %loadMem_4aedbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aedbf = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aedbf)
  store %struct.Memory* %call_4aedbf, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 4aedc2	 Bytes: 4
  %loadMem_4aedc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aedc2 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aedc2)
  store %struct.Memory* %call_4aedc2, %struct.Memory** %MEMORY

  ; Code: cmpl $0x80, (%rax,%rcx,4)	 RIP: 4aedc6	 Bytes: 7
  %loadMem_4aedc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aedc6 = call %struct.Memory* @routine_cmpl__0x80____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aedc6)
  store %struct.Memory* %call_4aedc6, %struct.Memory** %MEMORY

  ; Code: jle .L_4aee0b	 RIP: 4aedcd	 Bytes: 6
  %loadMem_4aedcd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aedcd = call %struct.Memory* @routine_jle_.L_4aee0b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aedcd, i8* %BRANCH_TAKEN, i64 62, i64 6, i64 6)
  store %struct.Memory* %call_4aedcd, %struct.Memory** %MEMORY

  %loadBr_4aedcd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4aedcd = icmp eq i8 %loadBr_4aedcd, 1
  br i1 %cmpBr_4aedcd, label %block_.L_4aee0b, label %block_.L_4aedd3

  ; Code: .L_4aedd3:	 RIP: 4aedd3	 Bytes: 0
block_.L_4aedd3:

  ; Code: leaq -0x4af0(%rbp), %rax	 RIP: 4aedd3	 Bytes: 7
  %loadMem_4aedd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aedd3 = call %struct.Memory* @routine_leaq_MINUS0x4af0__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aedd3)
  store %struct.Memory* %call_4aedd3, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 4aedda	 Bytes: 4
  %loadMem_4aedda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aedda = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aedda)
  store %struct.Memory* %call_4aedda, %struct.Memory** %MEMORY

  ; Code: movl -0x324(%rbp,%rcx,4), %edx	 RIP: 4aedde	 Bytes: 7
  %loadMem_4aedde = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aedde = call %struct.Memory* @routine_movl_MINUS0x324__rbp__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aedde)
  store %struct.Memory* %call_4aedde, %struct.Memory** %MEMORY

  ; Code: addq $0xa8c, %rax	 RIP: 4aede5	 Bytes: 6
  %loadMem_4aede5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aede5 = call %struct.Memory* @routine_addq__0xa8c___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aede5)
  store %struct.Memory* %call_4aede5, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rcx	 RIP: 4aedeb	 Bytes: 4
  %loadMem_4aedeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aedeb = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aedeb)
  store %struct.Memory* %call_4aedeb, %struct.Memory** %MEMORY

  ; Code: imulq $0xb4, %rcx, %rcx	 RIP: 4aedef	 Bytes: 7
  %loadMem_4aedef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aedef = call %struct.Memory* @routine_imulq__0xb4___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aedef)
  store %struct.Memory* %call_4aedef, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4aedf6	 Bytes: 3
  %loadMem_4aedf6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aedf6 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aedf6)
  store %struct.Memory* %call_4aedf6, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 4aedf9	 Bytes: 4
  %loadMem_4aedf9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aedf9 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aedf9)
  store %struct.Memory* %call_4aedf9, %struct.Memory** %MEMORY

  ; Code: imulq $0xc, %rcx, %rcx	 RIP: 4aedfd	 Bytes: 4
  %loadMem_4aedfd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aedfd = call %struct.Memory* @routine_imulq__0xc___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aedfd)
  store %struct.Memory* %call_4aedfd, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4aee01	 Bytes: 3
  %loadMem_4aee01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aee01 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aee01)
  store %struct.Memory* %call_4aee01, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 4aee04	 Bytes: 4
  %loadMem_4aee04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aee04 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aee04)
  store %struct.Memory* %call_4aee04, %struct.Memory** %MEMORY

  ; Code: movl %edx, (%rax,%rcx,4)	 RIP: 4aee08	 Bytes: 3
  %loadMem_4aee08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aee08 = call %struct.Memory* @routine_movl__edx____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aee08)
  store %struct.Memory* %call_4aee08, %struct.Memory** %MEMORY

  ; Code: .L_4aee0b:	 RIP: 4aee0b	 Bytes: 0
  br label %block_.L_4aee0b
block_.L_4aee0b:

  ; Code: leaq -0x8a40(%rbp), %rax	 RIP: 4aee0b	 Bytes: 7
  %loadMem_4aee0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aee0b = call %struct.Memory* @routine_leaq_MINUS0x8a40__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aee0b)
  store %struct.Memory* %call_4aee0b, %struct.Memory** %MEMORY

  ; Code: leaq -0x4af0(%rbp), %rcx	 RIP: 4aee12	 Bytes: 7
  %loadMem_4aee12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aee12 = call %struct.Memory* @routine_leaq_MINUS0x4af0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aee12)
  store %struct.Memory* %call_4aee12, %struct.Memory** %MEMORY

  ; Code: movl $0x40, %edx	 RIP: 4aee19	 Bytes: 5
  %loadMem_4aee19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aee19 = call %struct.Memory* @routine_movl__0x40___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aee19)
  store %struct.Memory* %call_4aee19, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rsi	 RIP: 4aee1e	 Bytes: 3
  %loadMem_4aee1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aee1e = call %struct.Memory* @routine_movq__rcx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aee1e)
  store %struct.Memory* %call_4aee1e, %struct.Memory** %MEMORY

  ; Code: addq $0xa8c, %rsi	 RIP: 4aee21	 Bytes: 7
  %loadMem_4aee21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aee21 = call %struct.Memory* @routine_addq__0xa8c___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aee21)
  store %struct.Memory* %call_4aee21, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rdi	 RIP: 4aee28	 Bytes: 4
  %loadMem_4aee28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aee28 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aee28)
  store %struct.Memory* %call_4aee28, %struct.Memory** %MEMORY

  ; Code: imulq $0xb4, %rdi, %rdi	 RIP: 4aee2c	 Bytes: 7
  %loadMem_4aee2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aee2c = call %struct.Memory* @routine_imulq__0xb4___rdi___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aee2c)
  store %struct.Memory* %call_4aee2c, %struct.Memory** %MEMORY

  ; Code: addq %rdi, %rsi	 RIP: 4aee33	 Bytes: 3
  %loadMem_4aee33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aee33 = call %struct.Memory* @routine_addq__rdi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aee33)
  store %struct.Memory* %call_4aee33, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdi	 RIP: 4aee36	 Bytes: 4
  %loadMem_4aee36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aee36 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aee36)
  store %struct.Memory* %call_4aee36, %struct.Memory** %MEMORY

  ; Code: imulq $0xc, %rdi, %rdi	 RIP: 4aee3a	 Bytes: 4
  %loadMem_4aee3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aee3a = call %struct.Memory* @routine_imulq__0xc___rdi___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aee3a)
  store %struct.Memory* %call_4aee3a, %struct.Memory** %MEMORY

  ; Code: addq %rdi, %rsi	 RIP: 4aee3e	 Bytes: 3
  %loadMem_4aee3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aee3e = call %struct.Memory* @routine_addq__rdi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aee3e)
  store %struct.Memory* %call_4aee3e, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdi	 RIP: 4aee41	 Bytes: 4
  %loadMem_4aee41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aee41 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aee41)
  store %struct.Memory* %call_4aee41, %struct.Memory** %MEMORY

  ; Code: subl (%rsi,%rdi,4), %edx	 RIP: 4aee45	 Bytes: 3
  %loadMem_4aee45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aee45 = call %struct.Memory* @routine_subl___rsi__rdi_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aee45)
  store %struct.Memory* %call_4aee45, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rsi	 RIP: 4aee48	 Bytes: 4
  %loadMem_4aee48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aee48 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aee48)
  store %struct.Memory* %call_4aee48, %struct.Memory** %MEMORY

  ; Code: imulq $0xb4, %rsi, %rsi	 RIP: 4aee4c	 Bytes: 7
  %loadMem_4aee4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aee4c = call %struct.Memory* @routine_imulq__0xb4___rsi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aee4c)
  store %struct.Memory* %call_4aee4c, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rcx	 RIP: 4aee53	 Bytes: 3
  %loadMem_4aee53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aee53 = call %struct.Memory* @routine_addq__rsi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aee53)
  store %struct.Memory* %call_4aee53, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rsi	 RIP: 4aee56	 Bytes: 4
  %loadMem_4aee56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aee56 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aee56)
  store %struct.Memory* %call_4aee56, %struct.Memory** %MEMORY

  ; Code: imulq $0xc, %rsi, %rsi	 RIP: 4aee5a	 Bytes: 4
  %loadMem_4aee5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aee5a = call %struct.Memory* @routine_imulq__0xc___rsi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aee5a)
  store %struct.Memory* %call_4aee5a, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rcx	 RIP: 4aee5e	 Bytes: 3
  %loadMem_4aee5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aee5e = call %struct.Memory* @routine_addq__rsi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aee5e)
  store %struct.Memory* %call_4aee5e, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rsi	 RIP: 4aee61	 Bytes: 4
  %loadMem_4aee61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aee61 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aee61)
  store %struct.Memory* %call_4aee61, %struct.Memory** %MEMORY

  ; Code: movl %edx, (%rcx,%rsi,4)	 RIP: 4aee65	 Bytes: 3
  %loadMem_4aee65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aee65 = call %struct.Memory* @routine_movl__edx____rcx__rsi_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aee65)
  store %struct.Memory* %call_4aee65, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rcx	 RIP: 4aee68	 Bytes: 3
  %loadMem_4aee68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aee68 = call %struct.Memory* @routine_movq__rax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aee68)
  store %struct.Memory* %call_4aee68, %struct.Memory** %MEMORY

  ; Code: addq $0xa8c, %rcx	 RIP: 4aee6b	 Bytes: 7
  %loadMem_4aee6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aee6b = call %struct.Memory* @routine_addq__0xa8c___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aee6b)
  store %struct.Memory* %call_4aee6b, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rsi	 RIP: 4aee72	 Bytes: 4
  %loadMem_4aee72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aee72 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aee72)
  store %struct.Memory* %call_4aee72, %struct.Memory** %MEMORY

  ; Code: imulq $0xb4, %rsi, %rsi	 RIP: 4aee76	 Bytes: 7
  %loadMem_4aee76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aee76 = call %struct.Memory* @routine_imulq__0xb4___rsi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aee76)
  store %struct.Memory* %call_4aee76, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rcx	 RIP: 4aee7d	 Bytes: 3
  %loadMem_4aee7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aee7d = call %struct.Memory* @routine_addq__rsi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aee7d)
  store %struct.Memory* %call_4aee7d, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rsi	 RIP: 4aee80	 Bytes: 4
  %loadMem_4aee80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aee80 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aee80)
  store %struct.Memory* %call_4aee80, %struct.Memory** %MEMORY

  ; Code: imulq $0xc, %rsi, %rsi	 RIP: 4aee84	 Bytes: 4
  %loadMem_4aee84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aee84 = call %struct.Memory* @routine_imulq__0xc___rsi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aee84)
  store %struct.Memory* %call_4aee84, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rcx	 RIP: 4aee88	 Bytes: 3
  %loadMem_4aee88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aee88 = call %struct.Memory* @routine_addq__rsi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aee88)
  store %struct.Memory* %call_4aee88, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rsi	 RIP: 4aee8b	 Bytes: 4
  %loadMem_4aee8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aee8b = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aee8b)
  store %struct.Memory* %call_4aee8b, %struct.Memory** %MEMORY

  ; Code: movl $0x0, (%rcx,%rsi,4)	 RIP: 4aee8f	 Bytes: 7
  %loadMem_4aee8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aee8f = call %struct.Memory* @routine_movl__0x0____rcx__rsi_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aee8f)
  store %struct.Memory* %call_4aee8f, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rcx	 RIP: 4aee96	 Bytes: 4
  %loadMem_4aee96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aee96 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aee96)
  store %struct.Memory* %call_4aee96, %struct.Memory** %MEMORY

  ; Code: imulq $0xb4, %rcx, %rcx	 RIP: 4aee9a	 Bytes: 7
  %loadMem_4aee9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aee9a = call %struct.Memory* @routine_imulq__0xb4___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aee9a)
  store %struct.Memory* %call_4aee9a, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4aeea1	 Bytes: 3
  %loadMem_4aeea1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aeea1 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aeea1)
  store %struct.Memory* %call_4aeea1, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 4aeea4	 Bytes: 4
  %loadMem_4aeea4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aeea4 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aeea4)
  store %struct.Memory* %call_4aeea4, %struct.Memory** %MEMORY

  ; Code: imulq $0xc, %rcx, %rcx	 RIP: 4aeea8	 Bytes: 4
  %loadMem_4aeea8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aeea8 = call %struct.Memory* @routine_imulq__0xc___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aeea8)
  store %struct.Memory* %call_4aeea8, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4aeeac	 Bytes: 3
  %loadMem_4aeeac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aeeac = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aeeac)
  store %struct.Memory* %call_4aeeac, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 4aeeaf	 Bytes: 4
  %loadMem_4aeeaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aeeaf = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aeeaf)
  store %struct.Memory* %call_4aeeaf, %struct.Memory** %MEMORY

  ; Code: movl $0x0, (%rax,%rcx,4)	 RIP: 4aeeb3	 Bytes: 7
  %loadMem_4aeeb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aeeb3 = call %struct.Memory* @routine_movl__0x0____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aeeb3)
  store %struct.Memory* %call_4aeeb3, %struct.Memory** %MEMORY

  ; Code: .L_4aeeba:	 RIP: 4aeeba	 Bytes: 0
  br label %block_.L_4aeeba
block_.L_4aeeba:

  ; Code: jmpq .L_4aeebf	 RIP: 4aeeba	 Bytes: 5
  %loadMem_4aeeba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aeeba = call %struct.Memory* @routine_jmpq_.L_4aeebf(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aeeba, i64 5, i64 5)
  store %struct.Memory* %call_4aeeba, %struct.Memory** %MEMORY

  br label %block_.L_4aeebf

  ; Code: .L_4aeebf:	 RIP: 4aeebf	 Bytes: 0
block_.L_4aeebf:

  ; Code: movl -0x28(%rbp), %eax	 RIP: 4aeebf	 Bytes: 3
  %loadMem_4aeebf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aeebf = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aeebf)
  store %struct.Memory* %call_4aeebf, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4aeec2	 Bytes: 3
  %loadMem_4aeec2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aeec2 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aeec2)
  store %struct.Memory* %call_4aeec2, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x28(%rbp)	 RIP: 4aeec5	 Bytes: 3
  %loadMem_4aeec5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aeec5 = call %struct.Memory* @routine_movl__eax__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aeec5)
  store %struct.Memory* %call_4aeec5, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4aeba8	 RIP: 4aeec8	 Bytes: 5
  %loadMem_4aeec8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aeec8 = call %struct.Memory* @routine_jmpq_.L_4aeba8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aeec8, i64 -800, i64 5)
  store %struct.Memory* %call_4aeec8, %struct.Memory** %MEMORY

  br label %block_.L_4aeba8

  ; Code: .L_4aeecd:	 RIP: 4aeecd	 Bytes: 0
block_.L_4aeecd:

  ; Code: jmpq .L_4aeed2	 RIP: 4aeecd	 Bytes: 5
  %loadMem_4aeecd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aeecd = call %struct.Memory* @routine_jmpq_.L_4aeed2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aeecd, i64 5, i64 5)
  store %struct.Memory* %call_4aeecd, %struct.Memory** %MEMORY

  br label %block_.L_4aeed2

  ; Code: .L_4aeed2:	 RIP: 4aeed2	 Bytes: 0
block_.L_4aeed2:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 4aeed2	 Bytes: 3
  %loadMem_4aeed2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aeed2 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aeed2)
  store %struct.Memory* %call_4aeed2, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4aeed5	 Bytes: 3
  %loadMem_4aeed5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aeed5 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aeed5)
  store %struct.Memory* %call_4aeed5, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x8(%rbp)	 RIP: 4aeed8	 Bytes: 3
  %loadMem_4aeed8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aeed8 = call %struct.Memory* @routine_movl__eax__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aeed8)
  store %struct.Memory* %call_4aeed8, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4aea25	 RIP: 4aeedb	 Bytes: 5
  %loadMem_4aeedb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aeedb = call %struct.Memory* @routine_jmpq_.L_4aea25(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aeedb, i64 -1206, i64 5)
  store %struct.Memory* %call_4aeedb, %struct.Memory** %MEMORY

  br label %block_.L_4aea25

  ; Code: .L_4aeee0:	 RIP: 4aeee0	 Bytes: 0
block_.L_4aeee0:

  ; Code: jmpq .L_4aeee5	 RIP: 4aeee0	 Bytes: 5
  %loadMem_4aeee0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aeee0 = call %struct.Memory* @routine_jmpq_.L_4aeee5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aeee0, i64 5, i64 5)
  store %struct.Memory* %call_4aeee0, %struct.Memory** %MEMORY

  br label %block_.L_4aeee5

  ; Code: .L_4aeee5:	 RIP: 4aeee5	 Bytes: 0
block_.L_4aeee5:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 4aeee5	 Bytes: 3
  %loadMem_4aeee5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aeee5 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aeee5)
  store %struct.Memory* %call_4aeee5, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4aeee8	 Bytes: 3
  %loadMem_4aeee8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aeee8 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aeee8)
  store %struct.Memory* %call_4aeee8, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4(%rbp)	 RIP: 4aeeeb	 Bytes: 3
  %loadMem_4aeeeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aeeeb = call %struct.Memory* @routine_movl__eax__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aeeeb)
  store %struct.Memory* %call_4aeeeb, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4aea0e	 RIP: 4aeeee	 Bytes: 5
  %loadMem_4aeeee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aeeee = call %struct.Memory* @routine_jmpq_.L_4aea0e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aeeee, i64 -1248, i64 5)
  store %struct.Memory* %call_4aeeee, %struct.Memory** %MEMORY

  br label %block_.L_4aea0e

  ; Code: .L_4aeef3:	 RIP: 4aeef3	 Bytes: 0
block_.L_4aeef3:

  ; Code: movq 0x6d4690, %rax	 RIP: 4aeef3	 Bytes: 8
  %loadMem_4aeef3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aeef3 = call %struct.Memory* @routine_movq_0x6d4690___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aeef3)
  store %struct.Memory* %call_4aeef3, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, 0xc4(%rax)	 RIP: 4aeefb	 Bytes: 7
  %loadMem_4aeefb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aeefb = call %struct.Memory* @routine_cmpl__0x2__0xc4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aeefb)
  store %struct.Memory* %call_4aeefb, %struct.Memory** %MEMORY

  ; Code: jne .L_4af38b	 RIP: 4aef02	 Bytes: 6
  %loadMem_4aef02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aef02 = call %struct.Memory* @routine_jne_.L_4af38b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aef02, i8* %BRANCH_TAKEN, i64 1161, i64 6, i64 6)
  store %struct.Memory* %call_4aef02, %struct.Memory** %MEMORY

  %loadBr_4aef02 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4aef02 = icmp eq i8 %loadBr_4aef02, 1
  br i1 %cmpBr_4aef02, label %block_.L_4af38b, label %block_4aef08

block_4aef08:
  ; Code: movl $0x0, -0x4(%rbp)	 RIP: 4aef08	 Bytes: 7
  %loadMem_4aef08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aef08 = call %struct.Memory* @routine_movl__0x0__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aef08)
  store %struct.Memory* %call_4aef08, %struct.Memory** %MEMORY

  ; Code: .L_4aef0f:	 RIP: 4aef0f	 Bytes: 0
  br label %block_.L_4aef0f
block_.L_4aef0f:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 4aef0f	 Bytes: 3
  %loadMem_4aef0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aef0f = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aef0f)
  store %struct.Memory* %call_4aef0f, %struct.Memory** %MEMORY

  ; Code: cmpl 0x7247b0, %eax	 RIP: 4aef12	 Bytes: 7
  %loadMem_4aef12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aef12 = call %struct.Memory* @routine_cmpl_0x7247b0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aef12)
  store %struct.Memory* %call_4aef12, %struct.Memory** %MEMORY

  ; Code: jge .L_4af046	 RIP: 4aef19	 Bytes: 6
  %loadMem_4aef19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aef19 = call %struct.Memory* @routine_jge_.L_4af046(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aef19, i8* %BRANCH_TAKEN, i64 301, i64 6, i64 6)
  store %struct.Memory* %call_4aef19, %struct.Memory** %MEMORY

  %loadBr_4aef19 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4aef19 = icmp eq i8 %loadBr_4aef19, 1
  br i1 %cmpBr_4aef19, label %block_.L_4af046, label %block_4aef1f

block_4aef1f:
  ; Code: movl $0x0, -0x8(%rbp)	 RIP: 4aef1f	 Bytes: 7
  %loadMem_4aef1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aef1f = call %struct.Memory* @routine_movl__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aef1f)
  store %struct.Memory* %call_4aef1f, %struct.Memory** %MEMORY

  ; Code: .L_4aef26:	 RIP: 4aef26	 Bytes: 0
  br label %block_.L_4aef26
block_.L_4aef26:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 4aef26	 Bytes: 3
  %loadMem_4aef26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aef26 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aef26)
  store %struct.Memory* %call_4aef26, %struct.Memory** %MEMORY

  ; Code: cmpl 0x7247b4, %eax	 RIP: 4aef29	 Bytes: 7
  %loadMem_4aef29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aef29 = call %struct.Memory* @routine_cmpl_0x7247b4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aef29)
  store %struct.Memory* %call_4aef29, %struct.Memory** %MEMORY

  ; Code: jge .L_4af033	 RIP: 4aef30	 Bytes: 6
  %loadMem_4aef30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aef30 = call %struct.Memory* @routine_jge_.L_4af033(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aef30, i8* %BRANCH_TAKEN, i64 259, i64 6, i64 6)
  store %struct.Memory* %call_4aef30, %struct.Memory** %MEMORY

  %loadBr_4aef30 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4aef30 = icmp eq i8 %loadBr_4aef30, 1
  br i1 %cmpBr_4aef30, label %block_.L_4af033, label %block_4aef36

block_4aef36:
  ; Code: movl $0x0, -0x28(%rbp)	 RIP: 4aef36	 Bytes: 7
  %loadMem_4aef36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aef36 = call %struct.Memory* @routine_movl__0x0__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aef36)
  store %struct.Memory* %call_4aef36, %struct.Memory** %MEMORY

  ; Code: .L_4aef3d:	 RIP: 4aef3d	 Bytes: 0
  br label %block_.L_4aef3d
block_.L_4aef3d:

  ; Code: cmpl $0x3, -0x28(%rbp)	 RIP: 4aef3d	 Bytes: 4
  %loadMem_4aef3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aef3d = call %struct.Memory* @routine_cmpl__0x3__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aef3d)
  store %struct.Memory* %call_4aef3d, %struct.Memory** %MEMORY

  ; Code: jge .L_4af020	 RIP: 4aef41	 Bytes: 6
  %loadMem_4aef41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aef41 = call %struct.Memory* @routine_jge_.L_4af020(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aef41, i8* %BRANCH_TAKEN, i64 223, i64 6, i64 6)
  store %struct.Memory* %call_4aef41, %struct.Memory** %MEMORY

  %loadBr_4aef41 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4aef41 = icmp eq i8 %loadBr_4aef41, 1
  br i1 %cmpBr_4aef41, label %block_.L_4af020, label %block_4aef47

block_4aef47:
  ; Code: cmpl $0x0, -0x28(%rbp)	 RIP: 4aef47	 Bytes: 4
  %loadMem_4aef47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aef47 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aef47)
  store %struct.Memory* %call_4aef47, %struct.Memory** %MEMORY

  ; Code: jne .L_4aef63	 RIP: 4aef4b	 Bytes: 6
  %loadMem_4aef4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aef4b = call %struct.Memory* @routine_jne_.L_4aef63(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aef4b, i8* %BRANCH_TAKEN, i64 24, i64 6, i64 6)
  store %struct.Memory* %call_4aef4b, %struct.Memory** %MEMORY

  %loadBr_4aef4b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4aef4b = icmp eq i8 %loadBr_4aef4b, 1
  br i1 %cmpBr_4aef4b, label %block_.L_4aef63, label %block_4aef51

block_4aef51:
  ; Code: movl 0x70f6d0, %eax	 RIP: 4aef51	 Bytes: 7
  %loadMem_4aef51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aef51 = call %struct.Memory* @routine_movl_0x70f6d0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aef51)
  store %struct.Memory* %call_4aef51, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x8a7c(%rbp)	 RIP: 4aef58	 Bytes: 6
  %loadMem_4aef58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aef58 = call %struct.Memory* @routine_movl__eax__MINUS0x8a7c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aef58)
  store %struct.Memory* %call_4aef58, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4aef70	 RIP: 4aef5e	 Bytes: 5
  %loadMem_4aef5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aef5e = call %struct.Memory* @routine_jmpq_.L_4aef70(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aef5e, i64 18, i64 5)
  store %struct.Memory* %call_4aef5e, %struct.Memory** %MEMORY

  br label %block_.L_4aef70

  ; Code: .L_4aef63:	 RIP: 4aef63	 Bytes: 0
block_.L_4aef63:

  ; Code: movl 0x7242a0, %eax	 RIP: 4aef63	 Bytes: 7
  %loadMem_4aef63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aef63 = call %struct.Memory* @routine_movl_0x7242a0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aef63)
  store %struct.Memory* %call_4aef63, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x8a7c(%rbp)	 RIP: 4aef6a	 Bytes: 6
  %loadMem_4aef6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aef6a = call %struct.Memory* @routine_movl__eax__MINUS0x8a7c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aef6a)
  store %struct.Memory* %call_4aef6a, %struct.Memory** %MEMORY

  ; Code: .L_4aef70:	 RIP: 4aef70	 Bytes: 0
  br label %block_.L_4aef70
block_.L_4aef70:

  ; Code: movl -0x8a7c(%rbp), %eax	 RIP: 4aef70	 Bytes: 6
  %loadMem_4aef70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aef70 = call %struct.Memory* @routine_movl_MINUS0x8a7c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aef70)
  store %struct.Memory* %call_4aef70, %struct.Memory** %MEMORY

  ; Code: leaq -0x4af0(%rbp), %rcx	 RIP: 4aef76	 Bytes: 7
  %loadMem_4aef76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aef76 = call %struct.Memory* @routine_leaq_MINUS0x4af0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aef76)
  store %struct.Memory* %call_4aef76, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x304(%rbp)	 RIP: 4aef7d	 Bytes: 6
  %loadMem_4aef7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aef7d = call %struct.Memory* @routine_movl__eax__MINUS0x304__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aef7d)
  store %struct.Memory* %call_4aef7d, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdx	 RIP: 4aef83	 Bytes: 3
  %loadMem_4aef83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aef83 = call %struct.Memory* @routine_movq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aef83)
  store %struct.Memory* %call_4aef83, %struct.Memory** %MEMORY

  ; Code: addq $0xa8c, %rdx	 RIP: 4aef86	 Bytes: 7
  %loadMem_4aef86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aef86 = call %struct.Memory* @routine_addq__0xa8c___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aef86)
  store %struct.Memory* %call_4aef86, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rsi	 RIP: 4aef8d	 Bytes: 4
  %loadMem_4aef8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aef8d = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aef8d)
  store %struct.Memory* %call_4aef8d, %struct.Memory** %MEMORY

  ; Code: imulq $0xb4, %rsi, %rsi	 RIP: 4aef91	 Bytes: 7
  %loadMem_4aef91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aef91 = call %struct.Memory* @routine_imulq__0xb4___rsi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aef91)
  store %struct.Memory* %call_4aef91, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rdx	 RIP: 4aef98	 Bytes: 3
  %loadMem_4aef98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aef98 = call %struct.Memory* @routine_addq__rsi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aef98)
  store %struct.Memory* %call_4aef98, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rsi	 RIP: 4aef9b	 Bytes: 4
  %loadMem_4aef9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aef9b = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aef9b)
  store %struct.Memory* %call_4aef9b, %struct.Memory** %MEMORY

  ; Code: imulq $0xc, %rsi, %rsi	 RIP: 4aef9f	 Bytes: 4
  %loadMem_4aef9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aef9f = call %struct.Memory* @routine_imulq__0xc___rsi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aef9f)
  store %struct.Memory* %call_4aef9f, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rdx	 RIP: 4aefa3	 Bytes: 3
  %loadMem_4aefa3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aefa3 = call %struct.Memory* @routine_addq__rsi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aefa3)
  store %struct.Memory* %call_4aefa3, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rsi	 RIP: 4aefa6	 Bytes: 4
  %loadMem_4aefa6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aefa6 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aefa6)
  store %struct.Memory* %call_4aefa6, %struct.Memory** %MEMORY

  ; Code: movl (%rdx,%rsi,4), %eax	 RIP: 4aefaa	 Bytes: 3
  %loadMem_4aefaa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aefaa = call %struct.Memory* @routine_movl___rdx__rsi_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aefaa)
  store %struct.Memory* %call_4aefaa, %struct.Memory** %MEMORY

  ; Code: movq 0x70fcf8, %rdx	 RIP: 4aefad	 Bytes: 8
  %loadMem_4aefad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aefad = call %struct.Memory* @routine_movq_0x70fcf8___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aefad)
  store %struct.Memory* %call_4aefad, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rdx), %rdx	 RIP: 4aefb5	 Bytes: 4
  %loadMem_4aefb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aefb5 = call %struct.Memory* @routine_movq_0x8__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aefb5)
  store %struct.Memory* %call_4aefb5, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rsi	 RIP: 4aefb9	 Bytes: 4
  %loadMem_4aefb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aefb9 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aefb9)
  store %struct.Memory* %call_4aefb9, %struct.Memory** %MEMORY

  ; Code: movq (%rdx,%rsi,8), %rdx	 RIP: 4aefbd	 Bytes: 4
  %loadMem_4aefbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aefbd = call %struct.Memory* @routine_movq___rdx__rsi_8____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aefbd)
  store %struct.Memory* %call_4aefbd, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rsi	 RIP: 4aefc1	 Bytes: 4
  %loadMem_4aefc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aefc1 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aefc1)
  store %struct.Memory* %call_4aefc1, %struct.Memory** %MEMORY

  ; Code: movq (%rdx,%rsi,8), %rdx	 RIP: 4aefc5	 Bytes: 4
  %loadMem_4aefc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aefc5 = call %struct.Memory* @routine_movq___rdx__rsi_8____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aefc5)
  store %struct.Memory* %call_4aefc5, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rsi	 RIP: 4aefc9	 Bytes: 4
  %loadMem_4aefc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aefc9 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aefc9)
  store %struct.Memory* %call_4aefc9, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rdx,%rsi,4)	 RIP: 4aefcd	 Bytes: 3
  %loadMem_4aefcd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aefcd = call %struct.Memory* @routine_movl__eax____rdx__rsi_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aefcd)
  store %struct.Memory* %call_4aefcd, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rdx	 RIP: 4aefd0	 Bytes: 4
  %loadMem_4aefd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aefd0 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aefd0)
  store %struct.Memory* %call_4aefd0, %struct.Memory** %MEMORY

  ; Code: imulq $0xb4, %rdx, %rdx	 RIP: 4aefd4	 Bytes: 7
  %loadMem_4aefd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aefd4 = call %struct.Memory* @routine_imulq__0xb4___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aefd4)
  store %struct.Memory* %call_4aefd4, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 4aefdb	 Bytes: 3
  %loadMem_4aefdb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aefdb = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aefdb)
  store %struct.Memory* %call_4aefdb, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdx	 RIP: 4aefde	 Bytes: 4
  %loadMem_4aefde = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aefde = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aefde)
  store %struct.Memory* %call_4aefde, %struct.Memory** %MEMORY

  ; Code: imulq $0xc, %rdx, %rdx	 RIP: 4aefe2	 Bytes: 4
  %loadMem_4aefe2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aefe2 = call %struct.Memory* @routine_imulq__0xc___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aefe2)
  store %struct.Memory* %call_4aefe2, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 4aefe6	 Bytes: 3
  %loadMem_4aefe6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aefe6 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aefe6)
  store %struct.Memory* %call_4aefe6, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdx	 RIP: 4aefe9	 Bytes: 4
  %loadMem_4aefe9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aefe9 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aefe9)
  store %struct.Memory* %call_4aefe9, %struct.Memory** %MEMORY

  ; Code: movl (%rcx,%rdx,4), %eax	 RIP: 4aefed	 Bytes: 3
  %loadMem_4aefed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aefed = call %struct.Memory* @routine_movl___rcx__rdx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aefed)
  store %struct.Memory* %call_4aefed, %struct.Memory** %MEMORY

  ; Code: movq 0x70fcf8, %rcx	 RIP: 4aeff0	 Bytes: 8
  %loadMem_4aeff0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aeff0 = call %struct.Memory* @routine_movq_0x70fcf8___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aeff0)
  store %struct.Memory* %call_4aeff0, %struct.Memory** %MEMORY

  ; Code: movq (%rcx), %rcx	 RIP: 4aeff8	 Bytes: 3
  %loadMem_4aeff8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aeff8 = call %struct.Memory* @routine_movq___rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aeff8)
  store %struct.Memory* %call_4aeff8, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rdx	 RIP: 4aeffb	 Bytes: 4
  %loadMem_4aeffb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aeffb = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aeffb)
  store %struct.Memory* %call_4aeffb, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 4aefff	 Bytes: 4
  %loadMem_4aefff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4aefff = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4aefff)
  store %struct.Memory* %call_4aefff, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdx	 RIP: 4af003	 Bytes: 4
  %loadMem_4af003 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af003 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af003)
  store %struct.Memory* %call_4af003, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 4af007	 Bytes: 4
  %loadMem_4af007 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af007 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af007)
  store %struct.Memory* %call_4af007, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdx	 RIP: 4af00b	 Bytes: 4
  %loadMem_4af00b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af00b = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af00b)
  store %struct.Memory* %call_4af00b, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx,%rdx,4)	 RIP: 4af00f	 Bytes: 3
  %loadMem_4af00f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af00f = call %struct.Memory* @routine_movl__eax____rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af00f)
  store %struct.Memory* %call_4af00f, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %eax	 RIP: 4af012	 Bytes: 3
  %loadMem_4af012 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af012 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af012)
  store %struct.Memory* %call_4af012, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4af015	 Bytes: 3
  %loadMem_4af015 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af015 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af015)
  store %struct.Memory* %call_4af015, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x28(%rbp)	 RIP: 4af018	 Bytes: 3
  %loadMem_4af018 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af018 = call %struct.Memory* @routine_movl__eax__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af018)
  store %struct.Memory* %call_4af018, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4aef3d	 RIP: 4af01b	 Bytes: 5
  %loadMem_4af01b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af01b = call %struct.Memory* @routine_jmpq_.L_4aef3d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af01b, i64 -222, i64 5)
  store %struct.Memory* %call_4af01b, %struct.Memory** %MEMORY

  br label %block_.L_4aef3d

  ; Code: .L_4af020:	 RIP: 4af020	 Bytes: 0
block_.L_4af020:

  ; Code: jmpq .L_4af025	 RIP: 4af020	 Bytes: 5
  %loadMem_4af020 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af020 = call %struct.Memory* @routine_jmpq_.L_4af025(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af020, i64 5, i64 5)
  store %struct.Memory* %call_4af020, %struct.Memory** %MEMORY

  br label %block_.L_4af025

  ; Code: .L_4af025:	 RIP: 4af025	 Bytes: 0
block_.L_4af025:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 4af025	 Bytes: 3
  %loadMem_4af025 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af025 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af025)
  store %struct.Memory* %call_4af025, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4af028	 Bytes: 3
  %loadMem_4af028 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af028 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af028)
  store %struct.Memory* %call_4af028, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x8(%rbp)	 RIP: 4af02b	 Bytes: 3
  %loadMem_4af02b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af02b = call %struct.Memory* @routine_movl__eax__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af02b)
  store %struct.Memory* %call_4af02b, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4aef26	 RIP: 4af02e	 Bytes: 5
  %loadMem_4af02e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af02e = call %struct.Memory* @routine_jmpq_.L_4aef26(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af02e, i64 -264, i64 5)
  store %struct.Memory* %call_4af02e, %struct.Memory** %MEMORY

  br label %block_.L_4aef26

  ; Code: .L_4af033:	 RIP: 4af033	 Bytes: 0
block_.L_4af033:

  ; Code: jmpq .L_4af038	 RIP: 4af033	 Bytes: 5
  %loadMem_4af033 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af033 = call %struct.Memory* @routine_jmpq_.L_4af038(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af033, i64 5, i64 5)
  store %struct.Memory* %call_4af033, %struct.Memory** %MEMORY

  br label %block_.L_4af038

  ; Code: .L_4af038:	 RIP: 4af038	 Bytes: 0
block_.L_4af038:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 4af038	 Bytes: 3
  %loadMem_4af038 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af038 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af038)
  store %struct.Memory* %call_4af038, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4af03b	 Bytes: 3
  %loadMem_4af03b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af03b = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af03b)
  store %struct.Memory* %call_4af03b, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4(%rbp)	 RIP: 4af03e	 Bytes: 3
  %loadMem_4af03e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af03e = call %struct.Memory* @routine_movl__eax__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af03e)
  store %struct.Memory* %call_4af03e, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4aef0f	 RIP: 4af041	 Bytes: 5
  %loadMem_4af041 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af041 = call %struct.Memory* @routine_jmpq_.L_4aef0f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af041, i64 -306, i64 5)
  store %struct.Memory* %call_4af041, %struct.Memory** %MEMORY

  br label %block_.L_4aef0f

  ; Code: .L_4af046:	 RIP: 4af046	 Bytes: 0
block_.L_4af046:

  ; Code: movl $0x0, -0x8a44(%rbp)	 RIP: 4af046	 Bytes: 10
  %loadMem_4af046 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af046 = call %struct.Memory* @routine_movl__0x0__MINUS0x8a44__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af046)
  store %struct.Memory* %call_4af046, %struct.Memory** %MEMORY

  ; Code: .L_4af050:	 RIP: 4af050	 Bytes: 0
  br label %block_.L_4af050
block_.L_4af050:

  ; Code: movl -0x8a44(%rbp), %eax	 RIP: 4af050	 Bytes: 6
  %loadMem_4af050 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af050 = call %struct.Memory* @routine_movl_MINUS0x8a44__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af050)
  store %struct.Memory* %call_4af050, %struct.Memory** %MEMORY

  ; Code: movl -0x328(%rbp), %ecx	 RIP: 4af056	 Bytes: 6
  %loadMem_4af056 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af056 = call %struct.Memory* @routine_movl_MINUS0x328__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af056)
  store %struct.Memory* %call_4af056, %struct.Memory** %MEMORY

  ; Code: addl $0x2, %ecx	 RIP: 4af05c	 Bytes: 3
  %loadMem_4af05c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af05c = call %struct.Memory* @routine_addl__0x2___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af05c)
  store %struct.Memory* %call_4af05c, %struct.Memory** %MEMORY

  ; Code: cmpl %ecx, %eax	 RIP: 4af05f	 Bytes: 2
  %loadMem_4af05f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af05f = call %struct.Memory* @routine_cmpl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af05f)
  store %struct.Memory* %call_4af05f, %struct.Memory** %MEMORY

  ; Code: jge .L_4af17c	 RIP: 4af061	 Bytes: 6
  %loadMem_4af061 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af061 = call %struct.Memory* @routine_jge_.L_4af17c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af061, i8* %BRANCH_TAKEN, i64 283, i64 6, i64 6)
  store %struct.Memory* %call_4af061, %struct.Memory** %MEMORY

  %loadBr_4af061 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4af061 = icmp eq i8 %loadBr_4af061, 1
  br i1 %cmpBr_4af061, label %block_.L_4af17c, label %block_4af067

block_4af067:
  ; Code: movl $0x0, -0x24(%rbp)	 RIP: 4af067	 Bytes: 7
  %loadMem_4af067 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af067 = call %struct.Memory* @routine_movl__0x0__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af067)
  store %struct.Memory* %call_4af067, %struct.Memory** %MEMORY

  ; Code: .L_4af06e:	 RIP: 4af06e	 Bytes: 0
  br label %block_.L_4af06e
block_.L_4af06e:

  ; Code: movl -0x24(%rbp), %eax	 RIP: 4af06e	 Bytes: 3
  %loadMem_4af06e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af06e = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af06e)
  store %struct.Memory* %call_4af06e, %struct.Memory** %MEMORY

  ; Code: movslq -0x8a44(%rbp), %rcx	 RIP: 4af071	 Bytes: 7
  %loadMem_4af071 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af071 = call %struct.Memory* @routine_movslq_MINUS0x8a44__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af071)
  store %struct.Memory* %call_4af071, %struct.Memory** %MEMORY

  ; Code: cmpl 0x7247b0(,%rcx,4), %eax	 RIP: 4af078	 Bytes: 7
  %loadMem_4af078 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af078 = call %struct.Memory* @routine_cmpl_0x7247b0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af078)
  store %struct.Memory* %call_4af078, %struct.Memory** %MEMORY

  ; Code: jge .L_4af163	 RIP: 4af07f	 Bytes: 6
  %loadMem_4af07f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af07f = call %struct.Memory* @routine_jge_.L_4af163(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af07f, i8* %BRANCH_TAKEN, i64 228, i64 6, i64 6)
  store %struct.Memory* %call_4af07f, %struct.Memory** %MEMORY

  %loadBr_4af07f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4af07f = icmp eq i8 %loadBr_4af07f, 1
  br i1 %cmpBr_4af07f, label %block_.L_4af163, label %block_4af085

block_4af085:
  ; Code: movl -0x324(%rbp), %eax	 RIP: 4af085	 Bytes: 6
  %loadMem_4af085 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af085 = call %struct.Memory* @routine_movl_MINUS0x324__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af085)
  store %struct.Memory* %call_4af085, %struct.Memory** %MEMORY

  ; Code: movq 0x6d4740, %rcx	 RIP: 4af08b	 Bytes: 8
  %loadMem_4af08b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af08b = call %struct.Memory* @routine_movq_0x6d4740___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af08b)
  store %struct.Memory* %call_4af08b, %struct.Memory** %MEMORY

  ; Code: movslq -0x8a44(%rbp), %rdx	 RIP: 4af093	 Bytes: 7
  %loadMem_4af093 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af093 = call %struct.Memory* @routine_movslq_MINUS0x8a44__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af093)
  store %struct.Memory* %call_4af093, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 4af09a	 Bytes: 4
  %loadMem_4af09a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af09a = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af09a)
  store %struct.Memory* %call_4af09a, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 4af09e	 Bytes: 4
  %loadMem_4af09e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af09e = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af09e)
  store %struct.Memory* %call_4af09e, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 4af0a2	 Bytes: 4
  %loadMem_4af0a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af0a2 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af0a2)
  store %struct.Memory* %call_4af0a2, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx)	 RIP: 4af0a6	 Bytes: 2
  %loadMem_4af0a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af0a6 = call %struct.Memory* @routine_movl__eax____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af0a6)
  store %struct.Memory* %call_4af0a6, %struct.Memory** %MEMORY

  ; Code: movl -0x320(%rbp), %eax	 RIP: 4af0a8	 Bytes: 6
  %loadMem_4af0a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af0a8 = call %struct.Memory* @routine_movl_MINUS0x320__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af0a8)
  store %struct.Memory* %call_4af0a8, %struct.Memory** %MEMORY

  ; Code: movq 0x6d4740, %rcx	 RIP: 4af0ae	 Bytes: 8
  %loadMem_4af0ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af0ae = call %struct.Memory* @routine_movq_0x6d4740___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af0ae)
  store %struct.Memory* %call_4af0ae, %struct.Memory** %MEMORY

  ; Code: movslq -0x8a44(%rbp), %rdx	 RIP: 4af0b6	 Bytes: 7
  %loadMem_4af0b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af0b6 = call %struct.Memory* @routine_movslq_MINUS0x8a44__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af0b6)
  store %struct.Memory* %call_4af0b6, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 4af0bd	 Bytes: 4
  %loadMem_4af0bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af0bd = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af0bd)
  store %struct.Memory* %call_4af0bd, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 4af0c1	 Bytes: 4
  %loadMem_4af0c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af0c1 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af0c1)
  store %struct.Memory* %call_4af0c1, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 4af0c5	 Bytes: 4
  %loadMem_4af0c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af0c5 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af0c5)
  store %struct.Memory* %call_4af0c5, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x4(%rcx)	 RIP: 4af0c9	 Bytes: 3
  %loadMem_4af0c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af0c9 = call %struct.Memory* @routine_movl__eax__0x4__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af0c9)
  store %struct.Memory* %call_4af0c9, %struct.Memory** %MEMORY

  ; Code: movl -0x31c(%rbp), %eax	 RIP: 4af0cc	 Bytes: 6
  %loadMem_4af0cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af0cc = call %struct.Memory* @routine_movl_MINUS0x31c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af0cc)
  store %struct.Memory* %call_4af0cc, %struct.Memory** %MEMORY

  ; Code: movq 0x6d4740, %rcx	 RIP: 4af0d2	 Bytes: 8
  %loadMem_4af0d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af0d2 = call %struct.Memory* @routine_movq_0x6d4740___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af0d2)
  store %struct.Memory* %call_4af0d2, %struct.Memory** %MEMORY

  ; Code: movslq -0x8a44(%rbp), %rdx	 RIP: 4af0da	 Bytes: 7
  %loadMem_4af0da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af0da = call %struct.Memory* @routine_movslq_MINUS0x8a44__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af0da)
  store %struct.Memory* %call_4af0da, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 4af0e1	 Bytes: 4
  %loadMem_4af0e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af0e1 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af0e1)
  store %struct.Memory* %call_4af0e1, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 4af0e5	 Bytes: 4
  %loadMem_4af0e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af0e5 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af0e5)
  store %struct.Memory* %call_4af0e5, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 4af0e9	 Bytes: 4
  %loadMem_4af0e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af0e9 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af0e9)
  store %struct.Memory* %call_4af0e9, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x8(%rcx)	 RIP: 4af0ed	 Bytes: 3
  %loadMem_4af0ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af0ed = call %struct.Memory* @routine_movl__eax__0x8__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af0ed)
  store %struct.Memory* %call_4af0ed, %struct.Memory** %MEMORY

  ; Code: movq 0x6f9728, %rcx	 RIP: 4af0f0	 Bytes: 8
  %loadMem_4af0f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af0f0 = call %struct.Memory* @routine_movq_0x6f9728___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af0f0)
  store %struct.Memory* %call_4af0f0, %struct.Memory** %MEMORY

  ; Code: movslq -0x8a44(%rbp), %rdx	 RIP: 4af0f8	 Bytes: 7
  %loadMem_4af0f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af0f8 = call %struct.Memory* @routine_movslq_MINUS0x8a44__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af0f8)
  store %struct.Memory* %call_4af0f8, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 4af0ff	 Bytes: 4
  %loadMem_4af0ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af0ff = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af0ff)
  store %struct.Memory* %call_4af0ff, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 4af103	 Bytes: 4
  %loadMem_4af103 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af103 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af103)
  store %struct.Memory* %call_4af103, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 4af107	 Bytes: 4
  %loadMem_4af107 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af107 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af107)
  store %struct.Memory* %call_4af107, %struct.Memory** %MEMORY

  ; Code: movl $0x0, (%rcx)	 RIP: 4af10b	 Bytes: 6
  %loadMem_4af10b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af10b = call %struct.Memory* @routine_movl__0x0____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af10b)
  store %struct.Memory* %call_4af10b, %struct.Memory** %MEMORY

  ; Code: movq 0x6f9728, %rcx	 RIP: 4af111	 Bytes: 8
  %loadMem_4af111 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af111 = call %struct.Memory* @routine_movq_0x6f9728___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af111)
  store %struct.Memory* %call_4af111, %struct.Memory** %MEMORY

  ; Code: movslq -0x8a44(%rbp), %rdx	 RIP: 4af119	 Bytes: 7
  %loadMem_4af119 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af119 = call %struct.Memory* @routine_movslq_MINUS0x8a44__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af119)
  store %struct.Memory* %call_4af119, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 4af120	 Bytes: 4
  %loadMem_4af120 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af120 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af120)
  store %struct.Memory* %call_4af120, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 4af124	 Bytes: 4
  %loadMem_4af124 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af124 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af124)
  store %struct.Memory* %call_4af124, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 4af128	 Bytes: 4
  %loadMem_4af128 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af128 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af128)
  store %struct.Memory* %call_4af128, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x4(%rcx)	 RIP: 4af12c	 Bytes: 7
  %loadMem_4af12c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af12c = call %struct.Memory* @routine_movl__0x0__0x4__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af12c)
  store %struct.Memory* %call_4af12c, %struct.Memory** %MEMORY

  ; Code: movq 0x6f9728, %rcx	 RIP: 4af133	 Bytes: 8
  %loadMem_4af133 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af133 = call %struct.Memory* @routine_movq_0x6f9728___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af133)
  store %struct.Memory* %call_4af133, %struct.Memory** %MEMORY

  ; Code: movslq -0x8a44(%rbp), %rdx	 RIP: 4af13b	 Bytes: 7
  %loadMem_4af13b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af13b = call %struct.Memory* @routine_movslq_MINUS0x8a44__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af13b)
  store %struct.Memory* %call_4af13b, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 4af142	 Bytes: 4
  %loadMem_4af142 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af142 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af142)
  store %struct.Memory* %call_4af142, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 4af146	 Bytes: 4
  %loadMem_4af146 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af146 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af146)
  store %struct.Memory* %call_4af146, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 4af14a	 Bytes: 4
  %loadMem_4af14a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af14a = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af14a)
  store %struct.Memory* %call_4af14a, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x8(%rcx)	 RIP: 4af14e	 Bytes: 7
  %loadMem_4af14e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af14e = call %struct.Memory* @routine_movl__0x0__0x8__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af14e)
  store %struct.Memory* %call_4af14e, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %eax	 RIP: 4af155	 Bytes: 3
  %loadMem_4af155 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af155 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af155)
  store %struct.Memory* %call_4af155, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4af158	 Bytes: 3
  %loadMem_4af158 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af158 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af158)
  store %struct.Memory* %call_4af158, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x24(%rbp)	 RIP: 4af15b	 Bytes: 3
  %loadMem_4af15b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af15b = call %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af15b)
  store %struct.Memory* %call_4af15b, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4af06e	 RIP: 4af15e	 Bytes: 5
  %loadMem_4af15e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af15e = call %struct.Memory* @routine_jmpq_.L_4af06e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af15e, i64 -240, i64 5)
  store %struct.Memory* %call_4af15e, %struct.Memory** %MEMORY

  br label %block_.L_4af06e

  ; Code: .L_4af163:	 RIP: 4af163	 Bytes: 0
block_.L_4af163:

  ; Code: jmpq .L_4af168	 RIP: 4af163	 Bytes: 5
  %loadMem_4af163 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af163 = call %struct.Memory* @routine_jmpq_.L_4af168(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af163, i64 5, i64 5)
  store %struct.Memory* %call_4af163, %struct.Memory** %MEMORY

  br label %block_.L_4af168

  ; Code: .L_4af168:	 RIP: 4af168	 Bytes: 0
block_.L_4af168:

  ; Code: movl -0x8a44(%rbp), %eax	 RIP: 4af168	 Bytes: 6
  %loadMem_4af168 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af168 = call %struct.Memory* @routine_movl_MINUS0x8a44__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af168)
  store %struct.Memory* %call_4af168, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4af16e	 Bytes: 3
  %loadMem_4af16e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af16e = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af16e)
  store %struct.Memory* %call_4af16e, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x8a44(%rbp)	 RIP: 4af171	 Bytes: 6
  %loadMem_4af171 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af171 = call %struct.Memory* @routine_movl__eax__MINUS0x8a44__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af171)
  store %struct.Memory* %call_4af171, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4af050	 RIP: 4af177	 Bytes: 5
  %loadMem_4af177 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af177 = call %struct.Memory* @routine_jmpq_.L_4af050(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af177, i64 -295, i64 5)
  store %struct.Memory* %call_4af177, %struct.Memory** %MEMORY

  br label %block_.L_4af050

  ; Code: .L_4af17c:	 RIP: 4af17c	 Bytes: 0
block_.L_4af17c:

  ; Code: movl $0x0, -0x4(%rbp)	 RIP: 4af17c	 Bytes: 7
  %loadMem_4af17c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af17c = call %struct.Memory* @routine_movl__0x0__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af17c)
  store %struct.Memory* %call_4af17c, %struct.Memory** %MEMORY

  ; Code: .L_4af183:	 RIP: 4af183	 Bytes: 0
  br label %block_.L_4af183
block_.L_4af183:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 4af183	 Bytes: 3
  %loadMem_4af183 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af183 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af183)
  store %struct.Memory* %call_4af183, %struct.Memory** %MEMORY

  ; Code: cmpl 0x7247b0, %eax	 RIP: 4af186	 Bytes: 7
  %loadMem_4af186 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af186 = call %struct.Memory* @routine_cmpl_0x7247b0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af186)
  store %struct.Memory* %call_4af186, %struct.Memory** %MEMORY

  ; Code: jge .L_4af386	 RIP: 4af18d	 Bytes: 6
  %loadMem_4af18d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af18d = call %struct.Memory* @routine_jge_.L_4af386(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af18d, i8* %BRANCH_TAKEN, i64 505, i64 6, i64 6)
  store %struct.Memory* %call_4af18d, %struct.Memory** %MEMORY

  %loadBr_4af18d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4af18d = icmp eq i8 %loadBr_4af18d, 1
  br i1 %cmpBr_4af18d, label %block_.L_4af386, label %block_4af193

block_4af193:
  ; Code: movl $0x0, -0x8(%rbp)	 RIP: 4af193	 Bytes: 7
  %loadMem_4af193 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af193 = call %struct.Memory* @routine_movl__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af193)
  store %struct.Memory* %call_4af193, %struct.Memory** %MEMORY

  ; Code: .L_4af19a:	 RIP: 4af19a	 Bytes: 0
  br label %block_.L_4af19a
block_.L_4af19a:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 4af19a	 Bytes: 3
  %loadMem_4af19a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af19a = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af19a)
  store %struct.Memory* %call_4af19a, %struct.Memory** %MEMORY

  ; Code: cmpl 0x7247b4, %eax	 RIP: 4af19d	 Bytes: 7
  %loadMem_4af19d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af19d = call %struct.Memory* @routine_cmpl_0x7247b4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af19d)
  store %struct.Memory* %call_4af19d, %struct.Memory** %MEMORY

  ; Code: jge .L_4af373	 RIP: 4af1a4	 Bytes: 6
  %loadMem_4af1a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af1a4 = call %struct.Memory* @routine_jge_.L_4af373(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af1a4, i8* %BRANCH_TAKEN, i64 463, i64 6, i64 6)
  store %struct.Memory* %call_4af1a4, %struct.Memory** %MEMORY

  %loadBr_4af1a4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4af1a4 = icmp eq i8 %loadBr_4af1a4, 1
  br i1 %cmpBr_4af1a4, label %block_.L_4af373, label %block_4af1aa

block_4af1aa:
  ; Code: movl $0x0, -0xc(%rbp)	 RIP: 4af1aa	 Bytes: 7
  %loadMem_4af1aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af1aa = call %struct.Memory* @routine_movl__0x0__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af1aa)
  store %struct.Memory* %call_4af1aa, %struct.Memory** %MEMORY

  ; Code: .L_4af1b1:	 RIP: 4af1b1	 Bytes: 0
  br label %block_.L_4af1b1
block_.L_4af1b1:

  ; Code: movl -0xc(%rbp), %eax	 RIP: 4af1b1	 Bytes: 3
  %loadMem_4af1b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af1b1 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af1b1)
  store %struct.Memory* %call_4af1b1, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 4af1b4	 Bytes: 8
  %loadMem_4af1b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af1b4 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af1b4)
  store %struct.Memory* %call_4af1b4, %struct.Memory** %MEMORY

  ; Code: movl 0x3c(%rcx), %edx	 RIP: 4af1bc	 Bytes: 3
  %loadMem_4af1bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af1bc = call %struct.Memory* @routine_movl_0x3c__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af1bc)
  store %struct.Memory* %call_4af1bc, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 4af1bf	 Bytes: 8
  %loadMem_4af1bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af1bf = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af1bf)
  store %struct.Memory* %call_4af1bf, %struct.Memory** %MEMORY

  ; Code: imull 0x34(%rcx), %edx	 RIP: 4af1c7	 Bytes: 4
  %loadMem_4af1c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af1c7 = call %struct.Memory* @routine_imull_0x34__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af1c7)
  store %struct.Memory* %call_4af1c7, %struct.Memory** %MEMORY

  ; Code: cmpl %edx, %eax	 RIP: 4af1cb	 Bytes: 2
  %loadMem_4af1cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af1cb = call %struct.Memory* @routine_cmpl__edx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af1cb)
  store %struct.Memory* %call_4af1cb, %struct.Memory** %MEMORY

  ; Code: jge .L_4af25d	 RIP: 4af1cd	 Bytes: 6
  %loadMem_4af1cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af1cd = call %struct.Memory* @routine_jge_.L_4af25d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af1cd, i8* %BRANCH_TAKEN, i64 144, i64 6, i64 6)
  store %struct.Memory* %call_4af1cd, %struct.Memory** %MEMORY

  %loadBr_4af1cd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4af1cd = icmp eq i8 %loadBr_4af1cd, 1
  br i1 %cmpBr_4af1cd, label %block_.L_4af25d, label %block_4af1d3

block_4af1d3:
  ; Code: movq 0x722b20, %rax	 RIP: 4af1d3	 Bytes: 8
  %loadMem_4af1d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af1d3 = call %struct.Memory* @routine_movq_0x722b20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af1d3)
  store %struct.Memory* %call_4af1d3, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rcx	 RIP: 4af1db	 Bytes: 4
  %loadMem_4af1db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af1db = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af1db)
  store %struct.Memory* %call_4af1db, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 4af1df	 Bytes: 4
  %loadMem_4af1df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af1df = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af1df)
  store %struct.Memory* %call_4af1df, %struct.Memory** %MEMORY

  ; Code: movq 0x1920(%rax), %rax	 RIP: 4af1e3	 Bytes: 7
  %loadMem_4af1e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af1e3 = call %struct.Memory* @routine_movq_0x1920__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af1e3)
  store %struct.Memory* %call_4af1e3, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 4af1ea	 Bytes: 4
  %loadMem_4af1ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af1ea = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af1ea)
  store %struct.Memory* %call_4af1ea, %struct.Memory** %MEMORY

  ; Code: movw (%rax,%rcx,2), %dx	 RIP: 4af1ee	 Bytes: 4
  %loadMem_4af1ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af1ee = call %struct.Memory* @routine_movw___rax__rcx_2____dx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af1ee)
  store %struct.Memory* %call_4af1ee, %struct.Memory** %MEMORY

  ; Code: movq 0x722b20, %rax	 RIP: 4af1f2	 Bytes: 8
  %loadMem_4af1f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af1f2 = call %struct.Memory* @routine_movq_0x722b20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af1f2)
  store %struct.Memory* %call_4af1f2, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rcx	 RIP: 4af1fa	 Bytes: 4
  %loadMem_4af1fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af1fa = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af1fa)
  store %struct.Memory* %call_4af1fa, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 4af1fe	 Bytes: 4
  %loadMem_4af1fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af1fe = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af1fe)
  store %struct.Memory* %call_4af1fe, %struct.Memory** %MEMORY

  ; Code: movq 0x1928(%rax), %rax	 RIP: 4af202	 Bytes: 7
  %loadMem_4af202 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af202 = call %struct.Memory* @routine_movq_0x1928__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af202)
  store %struct.Memory* %call_4af202, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 4af209	 Bytes: 4
  %loadMem_4af209 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af209 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af209)
  store %struct.Memory* %call_4af209, %struct.Memory** %MEMORY

  ; Code: movw %dx, (%rax,%rcx,2)	 RIP: 4af20d	 Bytes: 4
  %loadMem_4af20d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af20d = call %struct.Memory* @routine_movw__dx____rax__rcx_2_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af20d)
  store %struct.Memory* %call_4af20d, %struct.Memory** %MEMORY

  ; Code: movq 0x722b28, %rax	 RIP: 4af211	 Bytes: 8
  %loadMem_4af211 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af211 = call %struct.Memory* @routine_movq_0x722b28___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af211)
  store %struct.Memory* %call_4af211, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 4af219	 Bytes: 4
  %loadMem_4af219 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af219 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af219)
  store %struct.Memory* %call_4af219, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 4af21d	 Bytes: 4
  %loadMem_4af21d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af21d = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af21d)
  store %struct.Memory* %call_4af21d, %struct.Memory** %MEMORY

  ; Code: movq 0x1920(%rax), %rax	 RIP: 4af221	 Bytes: 7
  %loadMem_4af221 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af221 = call %struct.Memory* @routine_movq_0x1920__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af221)
  store %struct.Memory* %call_4af221, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 4af228	 Bytes: 4
  %loadMem_4af228 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af228 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af228)
  store %struct.Memory* %call_4af228, %struct.Memory** %MEMORY

  ; Code: movw (%rax,%rcx,2), %dx	 RIP: 4af22c	 Bytes: 4
  %loadMem_4af22c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af22c = call %struct.Memory* @routine_movw___rax__rcx_2____dx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af22c)
  store %struct.Memory* %call_4af22c, %struct.Memory** %MEMORY

  ; Code: movq 0x722b28, %rax	 RIP: 4af230	 Bytes: 8
  %loadMem_4af230 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af230 = call %struct.Memory* @routine_movq_0x722b28___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af230)
  store %struct.Memory* %call_4af230, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 4af238	 Bytes: 4
  %loadMem_4af238 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af238 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af238)
  store %struct.Memory* %call_4af238, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 4af23c	 Bytes: 4
  %loadMem_4af23c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af23c = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af23c)
  store %struct.Memory* %call_4af23c, %struct.Memory** %MEMORY

  ; Code: movq 0x1928(%rax), %rax	 RIP: 4af240	 Bytes: 7
  %loadMem_4af240 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af240 = call %struct.Memory* @routine_movq_0x1928__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af240)
  store %struct.Memory* %call_4af240, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 4af247	 Bytes: 4
  %loadMem_4af247 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af247 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af247)
  store %struct.Memory* %call_4af247, %struct.Memory** %MEMORY

  ; Code: movw %dx, (%rax,%rcx,2)	 RIP: 4af24b	 Bytes: 4
  %loadMem_4af24b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af24b = call %struct.Memory* @routine_movw__dx____rax__rcx_2_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af24b)
  store %struct.Memory* %call_4af24b, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %eax	 RIP: 4af24f	 Bytes: 3
  %loadMem_4af24f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af24f = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af24f)
  store %struct.Memory* %call_4af24f, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4af252	 Bytes: 3
  %loadMem_4af252 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af252 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af252)
  store %struct.Memory* %call_4af252, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xc(%rbp)	 RIP: 4af255	 Bytes: 3
  %loadMem_4af255 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af255 = call %struct.Memory* @routine_movl__eax__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af255)
  store %struct.Memory* %call_4af255, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4af1b1	 RIP: 4af258	 Bytes: 5
  %loadMem_4af258 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af258 = call %struct.Memory* @routine_jmpq_.L_4af1b1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af258, i64 -167, i64 5)
  store %struct.Memory* %call_4af258, %struct.Memory** %MEMORY

  br label %block_.L_4af1b1

  ; Code: .L_4af25d:	 RIP: 4af25d	 Bytes: 0
block_.L_4af25d:

  ; Code: movl $0x0, -0xc(%rbp)	 RIP: 4af25d	 Bytes: 7
  %loadMem_4af25d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af25d = call %struct.Memory* @routine_movl__0x0__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af25d)
  store %struct.Memory* %call_4af25d, %struct.Memory** %MEMORY

  ; Code: .L_4af264:	 RIP: 4af264	 Bytes: 0
  br label %block_.L_4af264
block_.L_4af264:

  ; Code: movl -0xc(%rbp), %eax	 RIP: 4af264	 Bytes: 3
  %loadMem_4af264 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af264 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af264)
  store %struct.Memory* %call_4af264, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 4af267	 Bytes: 8
  %loadMem_4af267 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af267 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af267)
  store %struct.Memory* %call_4af267, %struct.Memory** %MEMORY

  ; Code: movl 0x3c(%rcx), %edx	 RIP: 4af26f	 Bytes: 3
  %loadMem_4af26f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af26f = call %struct.Memory* @routine_movl_0x3c__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af26f)
  store %struct.Memory* %call_4af26f, %struct.Memory** %MEMORY

  ; Code: addl $0x8, %edx	 RIP: 4af272	 Bytes: 3
  %loadMem_4af272 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af272 = call %struct.Memory* @routine_addl__0x8___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af272)
  store %struct.Memory* %call_4af272, %struct.Memory** %MEMORY

  ; Code: shll $0x2, %edx	 RIP: 4af275	 Bytes: 3
  %loadMem_4af275 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af275 = call %struct.Memory* @routine_shll__0x2___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af275)
  store %struct.Memory* %call_4af275, %struct.Memory** %MEMORY

  ; Code: cmpl %edx, %eax	 RIP: 4af278	 Bytes: 2
  %loadMem_4af278 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af278 = call %struct.Memory* @routine_cmpl__edx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af278)
  store %struct.Memory* %call_4af278, %struct.Memory** %MEMORY

  ; Code: jge .L_4af360	 RIP: 4af27a	 Bytes: 6
  %loadMem_4af27a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af27a = call %struct.Memory* @routine_jge_.L_4af360(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af27a, i8* %BRANCH_TAKEN, i64 230, i64 6, i64 6)
  store %struct.Memory* %call_4af27a, %struct.Memory** %MEMORY

  %loadBr_4af27a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4af27a = icmp eq i8 %loadBr_4af27a, 1
  br i1 %cmpBr_4af27a, label %block_.L_4af360, label %block_4af280

block_4af280:
  ; Code: movl $0x0, -0x10(%rbp)	 RIP: 4af280	 Bytes: 7
  %loadMem_4af280 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af280 = call %struct.Memory* @routine_movl__0x0__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af280)
  store %struct.Memory* %call_4af280, %struct.Memory** %MEMORY

  ; Code: .L_4af287:	 RIP: 4af287	 Bytes: 0
  br label %block_.L_4af287
block_.L_4af287:

  ; Code: movl -0x10(%rbp), %eax	 RIP: 4af287	 Bytes: 3
  %loadMem_4af287 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af287 = call %struct.Memory* @routine_movl_MINUS0x10__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af287)
  store %struct.Memory* %call_4af287, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 4af28a	 Bytes: 8
  %loadMem_4af28a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af28a = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af28a)
  store %struct.Memory* %call_4af28a, %struct.Memory** %MEMORY

  ; Code: movl 0x34(%rcx), %edx	 RIP: 4af292	 Bytes: 3
  %loadMem_4af292 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af292 = call %struct.Memory* @routine_movl_0x34__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af292)
  store %struct.Memory* %call_4af292, %struct.Memory** %MEMORY

  ; Code: addl $0x8, %edx	 RIP: 4af295	 Bytes: 3
  %loadMem_4af295 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af295 = call %struct.Memory* @routine_addl__0x8___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af295)
  store %struct.Memory* %call_4af295, %struct.Memory** %MEMORY

  ; Code: shll $0x2, %edx	 RIP: 4af298	 Bytes: 3
  %loadMem_4af298 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af298 = call %struct.Memory* @routine_shll__0x2___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af298)
  store %struct.Memory* %call_4af298, %struct.Memory** %MEMORY

  ; Code: cmpl %edx, %eax	 RIP: 4af29b	 Bytes: 2
  %loadMem_4af29b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af29b = call %struct.Memory* @routine_cmpl__edx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af29b)
  store %struct.Memory* %call_4af29b, %struct.Memory** %MEMORY

  ; Code: jge .L_4af34d	 RIP: 4af29d	 Bytes: 6
  %loadMem_4af29d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af29d = call %struct.Memory* @routine_jge_.L_4af34d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af29d, i8* %BRANCH_TAKEN, i64 176, i64 6, i64 6)
  store %struct.Memory* %call_4af29d, %struct.Memory** %MEMORY

  %loadBr_4af29d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4af29d = icmp eq i8 %loadBr_4af29d, 1
  br i1 %cmpBr_4af29d, label %block_.L_4af34d, label %block_4af2a3

block_4af2a3:
  ; Code: movq 0x722b20, %rax	 RIP: 4af2a3	 Bytes: 8
  %loadMem_4af2a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af2a3 = call %struct.Memory* @routine_movq_0x722b20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af2a3)
  store %struct.Memory* %call_4af2a3, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rcx	 RIP: 4af2ab	 Bytes: 4
  %loadMem_4af2ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af2ab = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af2ab)
  store %struct.Memory* %call_4af2ab, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 4af2af	 Bytes: 4
  %loadMem_4af2af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af2af = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af2af)
  store %struct.Memory* %call_4af2af, %struct.Memory** %MEMORY

  ; Code: movq 0x1930(%rax), %rax	 RIP: 4af2b3	 Bytes: 7
  %loadMem_4af2b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af2b3 = call %struct.Memory* @routine_movq_0x1930__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af2b3)
  store %struct.Memory* %call_4af2b3, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 4af2ba	 Bytes: 4
  %loadMem_4af2ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af2ba = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af2ba)
  store %struct.Memory* %call_4af2ba, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 4af2be	 Bytes: 4
  %loadMem_4af2be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af2be = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af2be)
  store %struct.Memory* %call_4af2be, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rcx	 RIP: 4af2c2	 Bytes: 4
  %loadMem_4af2c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af2c2 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af2c2)
  store %struct.Memory* %call_4af2c2, %struct.Memory** %MEMORY

  ; Code: movw (%rax,%rcx,2), %dx	 RIP: 4af2c6	 Bytes: 4
  %loadMem_4af2c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af2c6 = call %struct.Memory* @routine_movw___rax__rcx_2____dx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af2c6)
  store %struct.Memory* %call_4af2c6, %struct.Memory** %MEMORY

  ; Code: movq 0x722b20, %rax	 RIP: 4af2ca	 Bytes: 8
  %loadMem_4af2ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af2ca = call %struct.Memory* @routine_movq_0x722b20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af2ca)
  store %struct.Memory* %call_4af2ca, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rcx	 RIP: 4af2d2	 Bytes: 4
  %loadMem_4af2d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af2d2 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af2d2)
  store %struct.Memory* %call_4af2d2, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 4af2d6	 Bytes: 4
  %loadMem_4af2d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af2d6 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af2d6)
  store %struct.Memory* %call_4af2d6, %struct.Memory** %MEMORY

  ; Code: movq 0x1938(%rax), %rax	 RIP: 4af2da	 Bytes: 7
  %loadMem_4af2da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af2da = call %struct.Memory* @routine_movq_0x1938__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af2da)
  store %struct.Memory* %call_4af2da, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 4af2e1	 Bytes: 4
  %loadMem_4af2e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af2e1 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af2e1)
  store %struct.Memory* %call_4af2e1, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 4af2e5	 Bytes: 4
  %loadMem_4af2e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af2e5 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af2e5)
  store %struct.Memory* %call_4af2e5, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rcx	 RIP: 4af2e9	 Bytes: 4
  %loadMem_4af2e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af2e9 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af2e9)
  store %struct.Memory* %call_4af2e9, %struct.Memory** %MEMORY

  ; Code: movw %dx, (%rax,%rcx,2)	 RIP: 4af2ed	 Bytes: 4
  %loadMem_4af2ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af2ed = call %struct.Memory* @routine_movw__dx____rax__rcx_2_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af2ed)
  store %struct.Memory* %call_4af2ed, %struct.Memory** %MEMORY

  ; Code: movq 0x722b28, %rax	 RIP: 4af2f1	 Bytes: 8
  %loadMem_4af2f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af2f1 = call %struct.Memory* @routine_movq_0x722b28___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af2f1)
  store %struct.Memory* %call_4af2f1, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 4af2f9	 Bytes: 4
  %loadMem_4af2f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af2f9 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af2f9)
  store %struct.Memory* %call_4af2f9, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 4af2fd	 Bytes: 4
  %loadMem_4af2fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af2fd = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af2fd)
  store %struct.Memory* %call_4af2fd, %struct.Memory** %MEMORY

  ; Code: movq 0x1930(%rax), %rax	 RIP: 4af301	 Bytes: 7
  %loadMem_4af301 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af301 = call %struct.Memory* @routine_movq_0x1930__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af301)
  store %struct.Memory* %call_4af301, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 4af308	 Bytes: 4
  %loadMem_4af308 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af308 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af308)
  store %struct.Memory* %call_4af308, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 4af30c	 Bytes: 4
  %loadMem_4af30c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af30c = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af30c)
  store %struct.Memory* %call_4af30c, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rcx	 RIP: 4af310	 Bytes: 4
  %loadMem_4af310 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af310 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af310)
  store %struct.Memory* %call_4af310, %struct.Memory** %MEMORY

  ; Code: movw (%rax,%rcx,2), %dx	 RIP: 4af314	 Bytes: 4
  %loadMem_4af314 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af314 = call %struct.Memory* @routine_movw___rax__rcx_2____dx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af314)
  store %struct.Memory* %call_4af314, %struct.Memory** %MEMORY

  ; Code: movq 0x722b28, %rax	 RIP: 4af318	 Bytes: 8
  %loadMem_4af318 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af318 = call %struct.Memory* @routine_movq_0x722b28___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af318)
  store %struct.Memory* %call_4af318, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 4af320	 Bytes: 4
  %loadMem_4af320 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af320 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af320)
  store %struct.Memory* %call_4af320, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 4af324	 Bytes: 4
  %loadMem_4af324 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af324 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af324)
  store %struct.Memory* %call_4af324, %struct.Memory** %MEMORY

  ; Code: movq 0x1938(%rax), %rax	 RIP: 4af328	 Bytes: 7
  %loadMem_4af328 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af328 = call %struct.Memory* @routine_movq_0x1938__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af328)
  store %struct.Memory* %call_4af328, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 4af32f	 Bytes: 4
  %loadMem_4af32f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af32f = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af32f)
  store %struct.Memory* %call_4af32f, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 4af333	 Bytes: 4
  %loadMem_4af333 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af333 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af333)
  store %struct.Memory* %call_4af333, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rcx	 RIP: 4af337	 Bytes: 4
  %loadMem_4af337 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af337 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af337)
  store %struct.Memory* %call_4af337, %struct.Memory** %MEMORY

  ; Code: movw %dx, (%rax,%rcx,2)	 RIP: 4af33b	 Bytes: 4
  %loadMem_4af33b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af33b = call %struct.Memory* @routine_movw__dx____rax__rcx_2_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af33b)
  store %struct.Memory* %call_4af33b, %struct.Memory** %MEMORY

  ; Code: movl -0x10(%rbp), %eax	 RIP: 4af33f	 Bytes: 3
  %loadMem_4af33f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af33f = call %struct.Memory* @routine_movl_MINUS0x10__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af33f)
  store %struct.Memory* %call_4af33f, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4af342	 Bytes: 3
  %loadMem_4af342 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af342 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af342)
  store %struct.Memory* %call_4af342, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x10(%rbp)	 RIP: 4af345	 Bytes: 3
  %loadMem_4af345 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af345 = call %struct.Memory* @routine_movl__eax__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af345)
  store %struct.Memory* %call_4af345, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4af287	 RIP: 4af348	 Bytes: 5
  %loadMem_4af348 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af348 = call %struct.Memory* @routine_jmpq_.L_4af287(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af348, i64 -193, i64 5)
  store %struct.Memory* %call_4af348, %struct.Memory** %MEMORY

  br label %block_.L_4af287

  ; Code: .L_4af34d:	 RIP: 4af34d	 Bytes: 0
block_.L_4af34d:

  ; Code: jmpq .L_4af352	 RIP: 4af34d	 Bytes: 5
  %loadMem_4af34d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af34d = call %struct.Memory* @routine_jmpq_.L_4af352(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af34d, i64 5, i64 5)
  store %struct.Memory* %call_4af34d, %struct.Memory** %MEMORY

  br label %block_.L_4af352

  ; Code: .L_4af352:	 RIP: 4af352	 Bytes: 0
block_.L_4af352:

  ; Code: movl -0xc(%rbp), %eax	 RIP: 4af352	 Bytes: 3
  %loadMem_4af352 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af352 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af352)
  store %struct.Memory* %call_4af352, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4af355	 Bytes: 3
  %loadMem_4af355 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af355 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af355)
  store %struct.Memory* %call_4af355, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xc(%rbp)	 RIP: 4af358	 Bytes: 3
  %loadMem_4af358 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af358 = call %struct.Memory* @routine_movl__eax__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af358)
  store %struct.Memory* %call_4af358, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4af264	 RIP: 4af35b	 Bytes: 5
  %loadMem_4af35b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af35b = call %struct.Memory* @routine_jmpq_.L_4af264(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af35b, i64 -247, i64 5)
  store %struct.Memory* %call_4af35b, %struct.Memory** %MEMORY

  br label %block_.L_4af264

  ; Code: .L_4af360:	 RIP: 4af360	 Bytes: 0
block_.L_4af360:

  ; Code: jmpq .L_4af365	 RIP: 4af360	 Bytes: 5
  %loadMem_4af360 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af360 = call %struct.Memory* @routine_jmpq_.L_4af365(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af360, i64 5, i64 5)
  store %struct.Memory* %call_4af360, %struct.Memory** %MEMORY

  br label %block_.L_4af365

  ; Code: .L_4af365:	 RIP: 4af365	 Bytes: 0
block_.L_4af365:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 4af365	 Bytes: 3
  %loadMem_4af365 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af365 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af365)
  store %struct.Memory* %call_4af365, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4af368	 Bytes: 3
  %loadMem_4af368 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af368 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af368)
  store %struct.Memory* %call_4af368, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x8(%rbp)	 RIP: 4af36b	 Bytes: 3
  %loadMem_4af36b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af36b = call %struct.Memory* @routine_movl__eax__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af36b)
  store %struct.Memory* %call_4af36b, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4af19a	 RIP: 4af36e	 Bytes: 5
  %loadMem_4af36e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af36e = call %struct.Memory* @routine_jmpq_.L_4af19a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af36e, i64 -468, i64 5)
  store %struct.Memory* %call_4af36e, %struct.Memory** %MEMORY

  br label %block_.L_4af19a

  ; Code: .L_4af373:	 RIP: 4af373	 Bytes: 0
block_.L_4af373:

  ; Code: jmpq .L_4af378	 RIP: 4af373	 Bytes: 5
  %loadMem_4af373 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af373 = call %struct.Memory* @routine_jmpq_.L_4af378(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af373, i64 5, i64 5)
  store %struct.Memory* %call_4af373, %struct.Memory** %MEMORY

  br label %block_.L_4af378

  ; Code: .L_4af378:	 RIP: 4af378	 Bytes: 0
block_.L_4af378:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 4af378	 Bytes: 3
  %loadMem_4af378 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af378 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af378)
  store %struct.Memory* %call_4af378, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4af37b	 Bytes: 3
  %loadMem_4af37b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af37b = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af37b)
  store %struct.Memory* %call_4af37b, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4(%rbp)	 RIP: 4af37e	 Bytes: 3
  %loadMem_4af37e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af37e = call %struct.Memory* @routine_movl__eax__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af37e)
  store %struct.Memory* %call_4af37e, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4af183	 RIP: 4af381	 Bytes: 5
  %loadMem_4af381 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af381 = call %struct.Memory* @routine_jmpq_.L_4af183(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af381, i64 -510, i64 5)
  store %struct.Memory* %call_4af381, %struct.Memory** %MEMORY

  br label %block_.L_4af183

  ; Code: .L_4af386:	 RIP: 4af386	 Bytes: 0
block_.L_4af386:

  ; Code: jmpq .L_4afd82	 RIP: 4af386	 Bytes: 5
  %loadMem_4af386 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af386 = call %struct.Memory* @routine_jmpq_.L_4afd82(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af386, i64 2556, i64 5)
  store %struct.Memory* %call_4af386, %struct.Memory** %MEMORY

  br label %block_.L_4afd82

  ; Code: .L_4af38b:	 RIP: 4af38b	 Bytes: 0
block_.L_4af38b:

  ; Code: movl $0x0, -0x4(%rbp)	 RIP: 4af38b	 Bytes: 7
  %loadMem_4af38b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af38b = call %struct.Memory* @routine_movl__0x0__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af38b)
  store %struct.Memory* %call_4af38b, %struct.Memory** %MEMORY

  ; Code: .L_4af392:	 RIP: 4af392	 Bytes: 0
  br label %block_.L_4af392
block_.L_4af392:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 4af392	 Bytes: 3
  %loadMem_4af392 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af392 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af392)
  store %struct.Memory* %call_4af392, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 4af395	 Bytes: 8
  %loadMem_4af395 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af395 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af395)
  store %struct.Memory* %call_4af395, %struct.Memory** %MEMORY

  ; Code: cmpl 0x3c(%rcx), %eax	 RIP: 4af39d	 Bytes: 3
  %loadMem_4af39d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af39d = call %struct.Memory* @routine_cmpl_0x3c__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af39d)
  store %struct.Memory* %call_4af39d, %struct.Memory** %MEMORY

  ; Code: jge .L_4af407	 RIP: 4af3a0	 Bytes: 6
  %loadMem_4af3a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af3a0 = call %struct.Memory* @routine_jge_.L_4af407(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af3a0, i8* %BRANCH_TAKEN, i64 103, i64 6, i64 6)
  store %struct.Memory* %call_4af3a0, %struct.Memory** %MEMORY

  %loadBr_4af3a0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4af3a0 = icmp eq i8 %loadBr_4af3a0, 1
  br i1 %cmpBr_4af3a0, label %block_.L_4af407, label %block_4af3a6

block_4af3a6:
  ; Code: movl $0x0, -0x8(%rbp)	 RIP: 4af3a6	 Bytes: 7
  %loadMem_4af3a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af3a6 = call %struct.Memory* @routine_movl__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af3a6)
  store %struct.Memory* %call_4af3a6, %struct.Memory** %MEMORY

  ; Code: .L_4af3ad:	 RIP: 4af3ad	 Bytes: 0
  br label %block_.L_4af3ad
block_.L_4af3ad:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 4af3ad	 Bytes: 3
  %loadMem_4af3ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af3ad = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af3ad)
  store %struct.Memory* %call_4af3ad, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 4af3b0	 Bytes: 8
  %loadMem_4af3b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af3b0 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af3b0)
  store %struct.Memory* %call_4af3b0, %struct.Memory** %MEMORY

  ; Code: cmpl 0x34(%rcx), %eax	 RIP: 4af3b8	 Bytes: 3
  %loadMem_4af3b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af3b8 = call %struct.Memory* @routine_cmpl_0x34__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af3b8)
  store %struct.Memory* %call_4af3b8, %struct.Memory** %MEMORY

  ; Code: jge .L_4af3f4	 RIP: 4af3bb	 Bytes: 6
  %loadMem_4af3bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af3bb = call %struct.Memory* @routine_jge_.L_4af3f4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af3bb, i8* %BRANCH_TAKEN, i64 57, i64 6, i64 6)
  store %struct.Memory* %call_4af3bb, %struct.Memory** %MEMORY

  %loadBr_4af3bb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4af3bb = icmp eq i8 %loadBr_4af3bb, 1
  br i1 %cmpBr_4af3bb, label %block_.L_4af3f4, label %block_4af3c1

block_4af3c1:
  ; Code: movq 0x277050(%rip), %rax	 RIP: 4af3c1	 Bytes: 7
  %loadMem_4af3c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af3c1 = call %struct.Memory* @routine_movq_0x277050__rip____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af3c1)
  store %struct.Memory* %call_4af3c1, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rcx	 RIP: 4af3c8	 Bytes: 4
  %loadMem_4af3c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af3c8 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af3c8)
  store %struct.Memory* %call_4af3c8, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 4af3cc	 Bytes: 4
  %loadMem_4af3cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af3cc = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af3cc)
  store %struct.Memory* %call_4af3cc, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 4af3d0	 Bytes: 4
  %loadMem_4af3d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af3d0 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af3d0)
  store %struct.Memory* %call_4af3d0, %struct.Memory** %MEMORY

  ; Code: movzwl (%rax,%rcx,2), %edx	 RIP: 4af3d4	 Bytes: 4
  %loadMem_4af3d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af3d4 = call %struct.Memory* @routine_movzwl___rax__rcx_2____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af3d4)
  store %struct.Memory* %call_4af3d4, %struct.Memory** %MEMORY

  ; Code: cvtsi2sdl %edx, %xmm0	 RIP: 4af3d8	 Bytes: 4
  %loadMem_4af3d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af3d8 = call %struct.Memory* @routine_cvtsi2sdl__edx___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af3d8)
  store %struct.Memory* %call_4af3d8, %struct.Memory** %MEMORY

  ; Code: addsd -0x20(%rbp), %xmm0	 RIP: 4af3dc	 Bytes: 5
  %loadMem_4af3dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af3dc = call %struct.Memory* @routine_addsd_MINUS0x20__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af3dc)
  store %struct.Memory* %call_4af3dc, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x20(%rbp)	 RIP: 4af3e1	 Bytes: 5
  %loadMem_4af3e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af3e1 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af3e1)
  store %struct.Memory* %call_4af3e1, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %eax	 RIP: 4af3e6	 Bytes: 3
  %loadMem_4af3e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af3e6 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af3e6)
  store %struct.Memory* %call_4af3e6, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4af3e9	 Bytes: 3
  %loadMem_4af3e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af3e9 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af3e9)
  store %struct.Memory* %call_4af3e9, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x8(%rbp)	 RIP: 4af3ec	 Bytes: 3
  %loadMem_4af3ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af3ec = call %struct.Memory* @routine_movl__eax__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af3ec)
  store %struct.Memory* %call_4af3ec, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4af3ad	 RIP: 4af3ef	 Bytes: 5
  %loadMem_4af3ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af3ef = call %struct.Memory* @routine_jmpq_.L_4af3ad(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af3ef, i64 -66, i64 5)
  store %struct.Memory* %call_4af3ef, %struct.Memory** %MEMORY

  br label %block_.L_4af3ad

  ; Code: .L_4af3f4:	 RIP: 4af3f4	 Bytes: 0
block_.L_4af3f4:

  ; Code: jmpq .L_4af3f9	 RIP: 4af3f4	 Bytes: 5
  %loadMem_4af3f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af3f4 = call %struct.Memory* @routine_jmpq_.L_4af3f9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af3f4, i64 5, i64 5)
  store %struct.Memory* %call_4af3f4, %struct.Memory** %MEMORY

  br label %block_.L_4af3f9

  ; Code: .L_4af3f9:	 RIP: 4af3f9	 Bytes: 0
block_.L_4af3f9:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 4af3f9	 Bytes: 3
  %loadMem_4af3f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af3f9 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af3f9)
  store %struct.Memory* %call_4af3f9, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4af3fc	 Bytes: 3
  %loadMem_4af3fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af3fc = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af3fc)
  store %struct.Memory* %call_4af3fc, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4(%rbp)	 RIP: 4af3ff	 Bytes: 3
  %loadMem_4af3ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af3ff = call %struct.Memory* @routine_movl__eax__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af3ff)
  store %struct.Memory* %call_4af3ff, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4af392	 RIP: 4af402	 Bytes: 5
  %loadMem_4af402 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af402 = call %struct.Memory* @routine_jmpq_.L_4af392(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af402, i64 -112, i64 5)
  store %struct.Memory* %call_4af402, %struct.Memory** %MEMORY

  br label %block_.L_4af392

  ; Code: .L_4af407:	 RIP: 4af407	 Bytes: 0
block_.L_4af407:

  ; Code: movl $0x0, -0x8a44(%rbp)	 RIP: 4af407	 Bytes: 10
  %loadMem_4af407 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af407 = call %struct.Memory* @routine_movl__0x0__MINUS0x8a44__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af407)
  store %struct.Memory* %call_4af407, %struct.Memory** %MEMORY

  ; Code: .L_4af411:	 RIP: 4af411	 Bytes: 0
  br label %block_.L_4af411
block_.L_4af411:

  ; Code: movl -0x8a44(%rbp), %eax	 RIP: 4af411	 Bytes: 6
  %loadMem_4af411 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af411 = call %struct.Memory* @routine_movl_MINUS0x8a44__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af411)
  store %struct.Memory* %call_4af411, %struct.Memory** %MEMORY

  ; Code: movl -0x328(%rbp), %ecx	 RIP: 4af417	 Bytes: 6
  %loadMem_4af417 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af417 = call %struct.Memory* @routine_movl_MINUS0x328__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af417)
  store %struct.Memory* %call_4af417, %struct.Memory** %MEMORY

  ; Code: addl $0x2, %ecx	 RIP: 4af41d	 Bytes: 3
  %loadMem_4af41d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af41d = call %struct.Memory* @routine_addl__0x2___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af41d)
  store %struct.Memory* %call_4af41d, %struct.Memory** %MEMORY

  ; Code: cmpl %ecx, %eax	 RIP: 4af420	 Bytes: 2
  %loadMem_4af420 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af420 = call %struct.Memory* @routine_cmpl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af420)
  store %struct.Memory* %call_4af420, %struct.Memory** %MEMORY

  ; Code: jge .L_4af9d2	 RIP: 4af422	 Bytes: 6
  %loadMem_4af422 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af422 = call %struct.Memory* @routine_jge_.L_4af9d2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af422, i8* %BRANCH_TAKEN, i64 1456, i64 6, i64 6)
  store %struct.Memory* %call_4af422, %struct.Memory** %MEMORY

  %loadBr_4af422 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4af422 = icmp eq i8 %loadBr_4af422, 1
  br i1 %cmpBr_4af422, label %block_.L_4af9d2, label %block_4af428

block_4af428:
  ; Code: movl $0x0, -0xc(%rbp)	 RIP: 4af428	 Bytes: 7
  %loadMem_4af428 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af428 = call %struct.Memory* @routine_movl__0x0__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af428)
  store %struct.Memory* %call_4af428, %struct.Memory** %MEMORY

  ; Code: .L_4af42f:	 RIP: 4af42f	 Bytes: 0
  br label %block_.L_4af42f
block_.L_4af42f:

  ; Code: movl -0xc(%rbp), %eax	 RIP: 4af42f	 Bytes: 3
  %loadMem_4af42f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af42f = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af42f)
  store %struct.Memory* %call_4af42f, %struct.Memory** %MEMORY

  ; Code: movslq -0x8a44(%rbp), %rcx	 RIP: 4af432	 Bytes: 7
  %loadMem_4af432 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af432 = call %struct.Memory* @routine_movslq_MINUS0x8a44__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af432)
  store %struct.Memory* %call_4af432, %struct.Memory** %MEMORY

  ; Code: cmpl 0x7247b0(,%rcx,4), %eax	 RIP: 4af439	 Bytes: 7
  %loadMem_4af439 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af439 = call %struct.Memory* @routine_cmpl_0x7247b0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af439)
  store %struct.Memory* %call_4af439, %struct.Memory** %MEMORY

  ; Code: jge .L_4af9b9	 RIP: 4af440	 Bytes: 6
  %loadMem_4af440 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af440 = call %struct.Memory* @routine_jge_.L_4af9b9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af440, i8* %BRANCH_TAKEN, i64 1401, i64 6, i64 6)
  store %struct.Memory* %call_4af440, %struct.Memory** %MEMORY

  %loadBr_4af440 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4af440 = icmp eq i8 %loadBr_4af440, 1
  br i1 %cmpBr_4af440, label %block_.L_4af9b9, label %block_4af446

block_4af446:
  ; Code: xorps %xmm0, %xmm0	 RIP: 4af446	 Bytes: 3
  %loadMem_4af446 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af446 = call %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af446)
  store %struct.Memory* %call_4af446, %struct.Memory** %MEMORY

  ; Code: leaq -0x300(%rbp), %rax	 RIP: 4af449	 Bytes: 7
  %loadMem_4af449 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af449 = call %struct.Memory* @routine_leaq_MINUS0x300__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af449)
  store %struct.Memory* %call_4af449, %struct.Memory** %MEMORY

  ; Code: movslq -0x8a44(%rbp), %rcx	 RIP: 4af450	 Bytes: 7
  %loadMem_4af450 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af450 = call %struct.Memory* @routine_movslq_MINUS0x8a44__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af450)
  store %struct.Memory* %call_4af450, %struct.Memory** %MEMORY

  ; Code: imulq $0x78, %rcx, %rcx	 RIP: 4af457	 Bytes: 4
  %loadMem_4af457 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af457 = call %struct.Memory* @routine_imulq__0x78___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af457)
  store %struct.Memory* %call_4af457, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4af45b	 Bytes: 3
  %loadMem_4af45b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af45b = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af45b)
  store %struct.Memory* %call_4af45b, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 4af45e	 Bytes: 4
  %loadMem_4af45e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af45e = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af45e)
  store %struct.Memory* %call_4af45e, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rcx,8)	 RIP: 4af462	 Bytes: 5
  %loadMem_4af462 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af462 = call %struct.Memory* @routine_movsd__xmm0____rax__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af462)
  store %struct.Memory* %call_4af462, %struct.Memory** %MEMORY

  ; Code: movslq -0x8a44(%rbp), %rax	 RIP: 4af467	 Bytes: 7
  %loadMem_4af467 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af467 = call %struct.Memory* @routine_movslq_MINUS0x8a44__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af467)
  store %struct.Memory* %call_4af467, %struct.Memory** %MEMORY

  ; Code: movq 0x722b20(,%rax,8), %rax	 RIP: 4af46e	 Bytes: 8
  %loadMem_4af46e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af46e = call %struct.Memory* @routine_movq_0x722b20___rax_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af46e)
  store %struct.Memory* %call_4af46e, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 4af476	 Bytes: 4
  %loadMem_4af476 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af476 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af476)
  store %struct.Memory* %call_4af476, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 4af47a	 Bytes: 4
  %loadMem_4af47a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af47a = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af47a)
  store %struct.Memory* %call_4af47a, %struct.Memory** %MEMORY

  ; Code: movq 0x1920(%rax), %rax	 RIP: 4af47e	 Bytes: 7
  %loadMem_4af47e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af47e = call %struct.Memory* @routine_movq_0x1920__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af47e)
  store %struct.Memory* %call_4af47e, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x310(%rbp)	 RIP: 4af485	 Bytes: 7
  %loadMem_4af485 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af485 = call %struct.Memory* @routine_movq__rax__MINUS0x310__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af485)
  store %struct.Memory* %call_4af485, %struct.Memory** %MEMORY

  ; Code: movslq -0x8a44(%rbp), %rax	 RIP: 4af48c	 Bytes: 7
  %loadMem_4af48c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af48c = call %struct.Memory* @routine_movslq_MINUS0x8a44__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af48c)
  store %struct.Memory* %call_4af48c, %struct.Memory** %MEMORY

  ; Code: movq 0x722b20(,%rax,8), %rax	 RIP: 4af493	 Bytes: 8
  %loadMem_4af493 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af493 = call %struct.Memory* @routine_movq_0x722b20___rax_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af493)
  store %struct.Memory* %call_4af493, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 4af49b	 Bytes: 4
  %loadMem_4af49b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af49b = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af49b)
  store %struct.Memory* %call_4af49b, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 4af49f	 Bytes: 4
  %loadMem_4af49f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af49f = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af49f)
  store %struct.Memory* %call_4af49f, %struct.Memory** %MEMORY

  ; Code: movq 0x1928(%rax), %rax	 RIP: 4af4a3	 Bytes: 7
  %loadMem_4af4a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af4a3 = call %struct.Memory* @routine_movq_0x1928__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af4a3)
  store %struct.Memory* %call_4af4a3, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x318(%rbp)	 RIP: 4af4aa	 Bytes: 7
  %loadMem_4af4aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af4aa = call %struct.Memory* @routine_movq__rax__MINUS0x318__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af4aa)
  store %struct.Memory* %call_4af4aa, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x4(%rbp)	 RIP: 4af4b1	 Bytes: 7
  %loadMem_4af4b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af4b1 = call %struct.Memory* @routine_movl__0x0__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af4b1)
  store %struct.Memory* %call_4af4b1, %struct.Memory** %MEMORY

  ; Code: .L_4af4b8:	 RIP: 4af4b8	 Bytes: 0
  br label %block_.L_4af4b8
block_.L_4af4b8:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 4af4b8	 Bytes: 3
  %loadMem_4af4b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af4b8 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af4b8)
  store %struct.Memory* %call_4af4b8, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 4af4bb	 Bytes: 8
  %loadMem_4af4bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af4bb = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af4bb)
  store %struct.Memory* %call_4af4bb, %struct.Memory** %MEMORY

  ; Code: movl 0x3c(%rcx), %edx	 RIP: 4af4c3	 Bytes: 3
  %loadMem_4af4c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af4c3 = call %struct.Memory* @routine_movl_0x3c__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af4c3)
  store %struct.Memory* %call_4af4c3, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 4af4c6	 Bytes: 8
  %loadMem_4af4c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af4c6 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af4c6)
  store %struct.Memory* %call_4af4c6, %struct.Memory** %MEMORY

  ; Code: imull 0x34(%rcx), %edx	 RIP: 4af4ce	 Bytes: 4
  %loadMem_4af4ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af4ce = call %struct.Memory* @routine_imull_0x34__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af4ce)
  store %struct.Memory* %call_4af4ce, %struct.Memory** %MEMORY

  ; Code: cmpl %edx, %eax	 RIP: 4af4d2	 Bytes: 2
  %loadMem_4af4d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af4d2 = call %struct.Memory* @routine_cmpl__edx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af4d2)
  store %struct.Memory* %call_4af4d2, %struct.Memory** %MEMORY

  ; Code: jge .L_4af51e	 RIP: 4af4d4	 Bytes: 6
  %loadMem_4af4d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af4d4 = call %struct.Memory* @routine_jge_.L_4af51e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af4d4, i8* %BRANCH_TAKEN, i64 74, i64 6, i64 6)
  store %struct.Memory* %call_4af4d4, %struct.Memory** %MEMORY

  %loadBr_4af4d4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4af4d4 = icmp eq i8 %loadBr_4af4d4, 1
  br i1 %cmpBr_4af4d4, label %block_.L_4af51e, label %block_4af4da

block_4af4da:
  ; Code: leaq -0x300(%rbp), %rax	 RIP: 4af4da	 Bytes: 7
  %loadMem_4af4da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af4da = call %struct.Memory* @routine_leaq_MINUS0x300__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af4da)
  store %struct.Memory* %call_4af4da, %struct.Memory** %MEMORY

  ; Code: movq -0x310(%rbp), %rcx	 RIP: 4af4e1	 Bytes: 7
  %loadMem_4af4e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af4e1 = call %struct.Memory* @routine_movq_MINUS0x310__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af4e1)
  store %struct.Memory* %call_4af4e1, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rdx	 RIP: 4af4e8	 Bytes: 4
  %loadMem_4af4e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af4e8 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af4e8)
  store %struct.Memory* %call_4af4e8, %struct.Memory** %MEMORY

  ; Code: movzwl (%rcx,%rdx,2), %esi	 RIP: 4af4ec	 Bytes: 4
  %loadMem_4af4ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af4ec = call %struct.Memory* @routine_movzwl___rcx__rdx_2____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af4ec)
  store %struct.Memory* %call_4af4ec, %struct.Memory** %MEMORY

  ; Code: cvtsi2sdl %esi, %xmm0	 RIP: 4af4f0	 Bytes: 4
  %loadMem_4af4f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af4f0 = call %struct.Memory* @routine_cvtsi2sdl__esi___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af4f0)
  store %struct.Memory* %call_4af4f0, %struct.Memory** %MEMORY

  ; Code: movslq -0x8a44(%rbp), %rcx	 RIP: 4af4f4	 Bytes: 7
  %loadMem_4af4f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af4f4 = call %struct.Memory* @routine_movslq_MINUS0x8a44__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af4f4)
  store %struct.Memory* %call_4af4f4, %struct.Memory** %MEMORY

  ; Code: imulq $0x78, %rcx, %rcx	 RIP: 4af4fb	 Bytes: 4
  %loadMem_4af4fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af4fb = call %struct.Memory* @routine_imulq__0x78___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af4fb)
  store %struct.Memory* %call_4af4fb, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4af4ff	 Bytes: 3
  %loadMem_4af4ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af4ff = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af4ff)
  store %struct.Memory* %call_4af4ff, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 4af502	 Bytes: 4
  %loadMem_4af502 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af502 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af502)
  store %struct.Memory* %call_4af502, %struct.Memory** %MEMORY

  ; Code: addsd (%rax,%rcx,8), %xmm0	 RIP: 4af506	 Bytes: 5
  %loadMem_4af506 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af506 = call %struct.Memory* @routine_addsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af506)
  store %struct.Memory* %call_4af506, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rcx,8)	 RIP: 4af50b	 Bytes: 5
  %loadMem_4af50b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af50b = call %struct.Memory* @routine_movsd__xmm0____rax__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af50b)
  store %struct.Memory* %call_4af50b, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %eax	 RIP: 4af510	 Bytes: 3
  %loadMem_4af510 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af510 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af510)
  store %struct.Memory* %call_4af510, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4af513	 Bytes: 3
  %loadMem_4af513 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af513 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af513)
  store %struct.Memory* %call_4af513, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4(%rbp)	 RIP: 4af516	 Bytes: 3
  %loadMem_4af516 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af516 = call %struct.Memory* @routine_movl__eax__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af516)
  store %struct.Memory* %call_4af516, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4af4b8	 RIP: 4af519	 Bytes: 5
  %loadMem_4af519 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af519 = call %struct.Memory* @routine_jmpq_.L_4af4b8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af519, i64 -97, i64 5)
  store %struct.Memory* %call_4af519, %struct.Memory** %MEMORY

  br label %block_.L_4af4b8

  ; Code: .L_4af51e:	 RIP: 4af51e	 Bytes: 0
block_.L_4af51e:

  ; Code: xorps %xmm0, %xmm0	 RIP: 4af51e	 Bytes: 3
  %loadMem_4af51e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af51e = call %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af51e)
  store %struct.Memory* %call_4af51e, %struct.Memory** %MEMORY

  ; Code: leaq -0x300(%rbp), %rax	 RIP: 4af521	 Bytes: 7
  %loadMem_4af521 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af521 = call %struct.Memory* @routine_leaq_MINUS0x300__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af521)
  store %struct.Memory* %call_4af521, %struct.Memory** %MEMORY

  ; Code: movslq -0x8a44(%rbp), %rcx	 RIP: 4af528	 Bytes: 7
  %loadMem_4af528 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af528 = call %struct.Memory* @routine_movslq_MINUS0x8a44__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af528)
  store %struct.Memory* %call_4af528, %struct.Memory** %MEMORY

  ; Code: imulq $0x78, %rcx, %rcx	 RIP: 4af52f	 Bytes: 4
  %loadMem_4af52f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af52f = call %struct.Memory* @routine_imulq__0x78___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af52f)
  store %struct.Memory* %call_4af52f, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4af533	 Bytes: 3
  %loadMem_4af533 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af533 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af533)
  store %struct.Memory* %call_4af533, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 4af536	 Bytes: 4
  %loadMem_4af536 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af536 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af536)
  store %struct.Memory* %call_4af536, %struct.Memory** %MEMORY

  ; Code: movsd (%rax,%rcx,8), %xmm1	 RIP: 4af53a	 Bytes: 5
  %loadMem_4af53a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af53a = call %struct.Memory* @routine_movsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af53a)
  store %struct.Memory* %call_4af53a, %struct.Memory** %MEMORY

  ; Code: ucomisd %xmm0, %xmm1	 RIP: 4af53f	 Bytes: 4
  %loadMem_4af53f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af53f = call %struct.Memory* @routine_ucomisd__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af53f)
  store %struct.Memory* %call_4af53f, %struct.Memory** %MEMORY

  ; Code: jne .L_4af554	 RIP: 4af543	 Bytes: 6
  %loadMem_4af543 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af543 = call %struct.Memory* @routine_jne_.L_4af554(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af543, i8* %BRANCH_TAKEN, i64 17, i64 6, i64 6)
  store %struct.Memory* %call_4af543, %struct.Memory** %MEMORY

  %loadBr_4af543 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4af543 = icmp eq i8 %loadBr_4af543, 1
  br i1 %cmpBr_4af543, label %block_.L_4af554, label %block_4af549

block_4af549:
  ; Code: jp .L_4af554	 RIP: 4af549	 Bytes: 6
  %loadMem_4af549 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af549 = call %struct.Memory* @routine_jp_.L_4af554(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af549, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_4af549, %struct.Memory** %MEMORY

  %loadBr_4af549 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4af549 = icmp eq i8 %loadBr_4af549, 1
  br i1 %cmpBr_4af549, label %block_.L_4af554, label %block_4af54f

block_4af54f:
  ; Code: jmpq .L_4af59a	 RIP: 4af54f	 Bytes: 5
  %loadMem_4af54f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af54f = call %struct.Memory* @routine_jmpq_.L_4af59a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af54f, i64 75, i64 5)
  store %struct.Memory* %call_4af54f, %struct.Memory** %MEMORY

  br label %block_.L_4af59a

  ; Code: .L_4af554:	 RIP: 4af554	 Bytes: 0
block_.L_4af554:

  ; Code: movsd 0x232c(%rip), %xmm0	 RIP: 4af554	 Bytes: 8
  %loadMem_4af554 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af554 = call %struct.Memory* @routine_movsd_0x232c__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af554)
  store %struct.Memory* %call_4af554, %struct.Memory** %MEMORY

  ; Code: leaq -0x300(%rbp), %rax	 RIP: 4af55c	 Bytes: 7
  %loadMem_4af55c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af55c = call %struct.Memory* @routine_leaq_MINUS0x300__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af55c)
  store %struct.Memory* %call_4af55c, %struct.Memory** %MEMORY

  ; Code: cvtsi2sdl -0x324(%rbp), %xmm1	 RIP: 4af563	 Bytes: 8
  %loadMem_4af563 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af563 = call %struct.Memory* @routine_cvtsi2sdl_MINUS0x324__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af563)
  store %struct.Memory* %call_4af563, %struct.Memory** %MEMORY

  ; Code: mulsd -0x20(%rbp), %xmm1	 RIP: 4af56b	 Bytes: 5
  %loadMem_4af56b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af56b = call %struct.Memory* @routine_mulsd_MINUS0x20__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af56b)
  store %struct.Memory* %call_4af56b, %struct.Memory** %MEMORY

  ; Code: movslq -0x8a44(%rbp), %rcx	 RIP: 4af570	 Bytes: 7
  %loadMem_4af570 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af570 = call %struct.Memory* @routine_movslq_MINUS0x8a44__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af570)
  store %struct.Memory* %call_4af570, %struct.Memory** %MEMORY

  ; Code: imulq $0x78, %rcx, %rcx	 RIP: 4af577	 Bytes: 4
  %loadMem_4af577 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af577 = call %struct.Memory* @routine_imulq__0x78___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af577)
  store %struct.Memory* %call_4af577, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4af57b	 Bytes: 3
  %loadMem_4af57b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af57b = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af57b)
  store %struct.Memory* %call_4af57b, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 4af57e	 Bytes: 4
  %loadMem_4af57e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af57e = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af57e)
  store %struct.Memory* %call_4af57e, %struct.Memory** %MEMORY

  ; Code: divsd (%rax,%rcx,8), %xmm1	 RIP: 4af582	 Bytes: 5
  %loadMem_4af582 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af582 = call %struct.Memory* @routine_divsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af582)
  store %struct.Memory* %call_4af582, %struct.Memory** %MEMORY

  ; Code: addsd %xmm0, %xmm1	 RIP: 4af587	 Bytes: 4
  %loadMem_4af587 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af587 = call %struct.Memory* @routine_addsd__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af587)
  store %struct.Memory* %call_4af587, %struct.Memory** %MEMORY

  ; Code: cvttsd2si %xmm1, %edx	 RIP: 4af58b	 Bytes: 4
  %loadMem_4af58b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af58b = call %struct.Memory* @routine_cvttsd2si__xmm1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af58b)
  store %struct.Memory* %call_4af58b, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x8a48(%rbp)	 RIP: 4af58f	 Bytes: 6
  %loadMem_4af58f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af58f = call %struct.Memory* @routine_movl__edx__MINUS0x8a48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af58f)
  store %struct.Memory* %call_4af58f, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4af5a6	 RIP: 4af595	 Bytes: 5
  %loadMem_4af595 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af595 = call %struct.Memory* @routine_jmpq_.L_4af5a6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af595, i64 17, i64 5)
  store %struct.Memory* %call_4af595, %struct.Memory** %MEMORY

  br label %block_.L_4af5a6

  ; Code: .L_4af59a:	 RIP: 4af59a	 Bytes: 0
block_.L_4af59a:

  ; Code: movl -0x324(%rbp), %eax	 RIP: 4af59a	 Bytes: 6
  %loadMem_4af59a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af59a = call %struct.Memory* @routine_movl_MINUS0x324__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af59a)
  store %struct.Memory* %call_4af59a, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x8a48(%rbp)	 RIP: 4af5a0	 Bytes: 6
  %loadMem_4af5a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af5a0 = call %struct.Memory* @routine_movl__eax__MINUS0x8a48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af5a0)
  store %struct.Memory* %call_4af5a0, %struct.Memory** %MEMORY

  ; Code: .L_4af5a6:	 RIP: 4af5a6	 Bytes: 0
  br label %block_.L_4af5a6
block_.L_4af5a6:

  ; Code: cmpl $0xffffffc0, -0x8a48(%rbp)	 RIP: 4af5a6	 Bytes: 7
  %loadMem_4af5a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af5a6 = call %struct.Memory* @routine_cmpl__0xffffffc0__MINUS0x8a48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af5a6)
  store %struct.Memory* %call_4af5a6, %struct.Memory** %MEMORY

  ; Code: jl .L_4af5c0	 RIP: 4af5ad	 Bytes: 6
  %loadMem_4af5ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af5ad = call %struct.Memory* @routine_jl_.L_4af5c0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af5ad, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_4af5ad, %struct.Memory** %MEMORY

  %loadBr_4af5ad = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4af5ad = icmp eq i8 %loadBr_4af5ad, 1
  br i1 %cmpBr_4af5ad, label %block_.L_4af5c0, label %block_4af5b3

block_4af5b3:
  ; Code: cmpl $0x7f, -0x8a48(%rbp)	 RIP: 4af5b3	 Bytes: 7
  %loadMem_4af5b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af5b3 = call %struct.Memory* @routine_cmpl__0x7f__MINUS0x8a48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af5b3)
  store %struct.Memory* %call_4af5b3, %struct.Memory** %MEMORY

  ; Code: jle .L_4af5cc	 RIP: 4af5ba	 Bytes: 6
  %loadMem_4af5ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af5ba = call %struct.Memory* @routine_jle_.L_4af5cc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af5ba, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_4af5ba, %struct.Memory** %MEMORY

  %loadBr_4af5ba = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4af5ba = icmp eq i8 %loadBr_4af5ba, 1
  br i1 %cmpBr_4af5ba, label %block_.L_4af5cc, label %block_.L_4af5c0

  ; Code: .L_4af5c0:	 RIP: 4af5c0	 Bytes: 0
block_.L_4af5c0:

  ; Code: movl -0x324(%rbp), %eax	 RIP: 4af5c0	 Bytes: 6
  %loadMem_4af5c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af5c0 = call %struct.Memory* @routine_movl_MINUS0x324__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af5c0)
  store %struct.Memory* %call_4af5c0, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x8a48(%rbp)	 RIP: 4af5c6	 Bytes: 6
  %loadMem_4af5c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af5c6 = call %struct.Memory* @routine_movl__eax__MINUS0x8a48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af5c6)
  store %struct.Memory* %call_4af5c6, %struct.Memory** %MEMORY

  ; Code: .L_4af5cc:	 RIP: 4af5cc	 Bytes: 0
  br label %block_.L_4af5cc
block_.L_4af5cc:

  ; Code: leaq -0xba0(%rbp), %rax	 RIP: 4af5cc	 Bytes: 7
  %loadMem_4af5cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af5cc = call %struct.Memory* @routine_leaq_MINUS0xba0__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af5cc)
  store %struct.Memory* %call_4af5cc, %struct.Memory** %MEMORY

  ; Code: leaq -0x760(%rbp), %rcx	 RIP: 4af5d3	 Bytes: 7
  %loadMem_4af5d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af5d3 = call %struct.Memory* @routine_leaq_MINUS0x760__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af5d3)
  store %struct.Memory* %call_4af5d3, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x8a4c(%rbp)	 RIP: 4af5da	 Bytes: 10
  %loadMem_4af5da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af5da = call %struct.Memory* @routine_movl__0x0__MINUS0x8a4c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af5da)
  store %struct.Memory* %call_4af5da, %struct.Memory** %MEMORY

  ; Code: movl -0x8a48(%rbp), %edx	 RIP: 4af5e4	 Bytes: 6
  %loadMem_4af5e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af5e4 = call %struct.Memory* @routine_movl_MINUS0x8a48__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af5e4)
  store %struct.Memory* %call_4af5e4, %struct.Memory** %MEMORY

  ; Code: movslq -0x8a44(%rbp), %rsi	 RIP: 4af5ea	 Bytes: 7
  %loadMem_4af5ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af5ea = call %struct.Memory* @routine_movslq_MINUS0x8a44__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af5ea)
  store %struct.Memory* %call_4af5ea, %struct.Memory** %MEMORY

  ; Code: imulq $0xb4, %rsi, %rsi	 RIP: 4af5f1	 Bytes: 7
  %loadMem_4af5f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af5f1 = call %struct.Memory* @routine_imulq__0xb4___rsi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af5f1)
  store %struct.Memory* %call_4af5f1, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 4af5f8	 Bytes: 3
  %loadMem_4af5f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af5f8 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af5f8)
  store %struct.Memory* %call_4af5f8, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rdi	 RIP: 4af5fb	 Bytes: 3
  %loadMem_4af5fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af5fb = call %struct.Memory* @routine_addq__rsi___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af5fb)
  store %struct.Memory* %call_4af5fb, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rsi	 RIP: 4af5fe	 Bytes: 4
  %loadMem_4af5fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af5fe = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af5fe)
  store %struct.Memory* %call_4af5fe, %struct.Memory** %MEMORY

  ; Code: imulq $0xc, %rsi, %rsi	 RIP: 4af602	 Bytes: 4
  %loadMem_4af602 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af602 = call %struct.Memory* @routine_imulq__0xc___rsi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af602)
  store %struct.Memory* %call_4af602, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rdi	 RIP: 4af606	 Bytes: 3
  %loadMem_4af606 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af606 = call %struct.Memory* @routine_addq__rsi___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af606)
  store %struct.Memory* %call_4af606, %struct.Memory** %MEMORY

  ; Code: movl %edx, (%rdi)	 RIP: 4af609	 Bytes: 2
  %loadMem_4af609 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af609 = call %struct.Memory* @routine_movl__edx____rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af609)
  store %struct.Memory* %call_4af609, %struct.Memory** %MEMORY

  ; Code: movl -0x320(%rbp), %edx	 RIP: 4af60b	 Bytes: 6
  %loadMem_4af60b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af60b = call %struct.Memory* @routine_movl_MINUS0x320__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af60b)
  store %struct.Memory* %call_4af60b, %struct.Memory** %MEMORY

  ; Code: movslq -0x8a44(%rbp), %rsi	 RIP: 4af611	 Bytes: 7
  %loadMem_4af611 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af611 = call %struct.Memory* @routine_movslq_MINUS0x8a44__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af611)
  store %struct.Memory* %call_4af611, %struct.Memory** %MEMORY

  ; Code: imulq $0xb4, %rsi, %rsi	 RIP: 4af618	 Bytes: 7
  %loadMem_4af618 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af618 = call %struct.Memory* @routine_imulq__0xb4___rsi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af618)
  store %struct.Memory* %call_4af618, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 4af61f	 Bytes: 3
  %loadMem_4af61f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af61f = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af61f)
  store %struct.Memory* %call_4af61f, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rdi	 RIP: 4af622	 Bytes: 3
  %loadMem_4af622 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af622 = call %struct.Memory* @routine_addq__rsi___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af622)
  store %struct.Memory* %call_4af622, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rsi	 RIP: 4af625	 Bytes: 4
  %loadMem_4af625 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af625 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af625)
  store %struct.Memory* %call_4af625, %struct.Memory** %MEMORY

  ; Code: imulq $0xc, %rsi, %rsi	 RIP: 4af629	 Bytes: 4
  %loadMem_4af629 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af629 = call %struct.Memory* @routine_imulq__0xc___rsi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af629)
  store %struct.Memory* %call_4af629, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rdi	 RIP: 4af62d	 Bytes: 3
  %loadMem_4af62d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af62d = call %struct.Memory* @routine_addq__rsi___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af62d)
  store %struct.Memory* %call_4af62d, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0x4(%rdi)	 RIP: 4af630	 Bytes: 3
  %loadMem_4af630 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af630 = call %struct.Memory* @routine_movl__edx__0x4__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af630)
  store %struct.Memory* %call_4af630, %struct.Memory** %MEMORY

  ; Code: movl -0x31c(%rbp), %edx	 RIP: 4af633	 Bytes: 6
  %loadMem_4af633 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af633 = call %struct.Memory* @routine_movl_MINUS0x31c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af633)
  store %struct.Memory* %call_4af633, %struct.Memory** %MEMORY

  ; Code: movslq -0x8a44(%rbp), %rsi	 RIP: 4af639	 Bytes: 7
  %loadMem_4af639 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af639 = call %struct.Memory* @routine_movslq_MINUS0x8a44__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af639)
  store %struct.Memory* %call_4af639, %struct.Memory** %MEMORY

  ; Code: imulq $0xb4, %rsi, %rsi	 RIP: 4af640	 Bytes: 7
  %loadMem_4af640 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af640 = call %struct.Memory* @routine_imulq__0xb4___rsi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af640)
  store %struct.Memory* %call_4af640, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rcx	 RIP: 4af647	 Bytes: 3
  %loadMem_4af647 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af647 = call %struct.Memory* @routine_addq__rsi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af647)
  store %struct.Memory* %call_4af647, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rsi	 RIP: 4af64a	 Bytes: 4
  %loadMem_4af64a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af64a = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af64a)
  store %struct.Memory* %call_4af64a, %struct.Memory** %MEMORY

  ; Code: imulq $0xc, %rsi, %rsi	 RIP: 4af64e	 Bytes: 4
  %loadMem_4af64e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af64e = call %struct.Memory* @routine_imulq__0xc___rsi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af64e)
  store %struct.Memory* %call_4af64e, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rcx	 RIP: 4af652	 Bytes: 3
  %loadMem_4af652 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af652 = call %struct.Memory* @routine_addq__rsi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af652)
  store %struct.Memory* %call_4af652, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0x8(%rcx)	 RIP: 4af655	 Bytes: 3
  %loadMem_4af655 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af655 = call %struct.Memory* @routine_movl__edx__0x8__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af655)
  store %struct.Memory* %call_4af655, %struct.Memory** %MEMORY

  ; Code: movslq -0x8a44(%rbp), %rcx	 RIP: 4af658	 Bytes: 7
  %loadMem_4af658 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af658 = call %struct.Memory* @routine_movslq_MINUS0x8a44__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af658)
  store %struct.Memory* %call_4af658, %struct.Memory** %MEMORY

  ; Code: imulq $0xb4, %rcx, %rcx	 RIP: 4af65f	 Bytes: 7
  %loadMem_4af65f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af65f = call %struct.Memory* @routine_imulq__0xb4___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af65f)
  store %struct.Memory* %call_4af65f, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 4af666	 Bytes: 3
  %loadMem_4af666 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af666 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af666)
  store %struct.Memory* %call_4af666, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rsi	 RIP: 4af669	 Bytes: 3
  %loadMem_4af669 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af669 = call %struct.Memory* @routine_addq__rcx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af669)
  store %struct.Memory* %call_4af669, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 4af66c	 Bytes: 4
  %loadMem_4af66c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af66c = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af66c)
  store %struct.Memory* %call_4af66c, %struct.Memory** %MEMORY

  ; Code: imulq $0xc, %rcx, %rcx	 RIP: 4af670	 Bytes: 4
  %loadMem_4af670 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af670 = call %struct.Memory* @routine_imulq__0xc___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af670)
  store %struct.Memory* %call_4af670, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rsi	 RIP: 4af674	 Bytes: 3
  %loadMem_4af674 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af674 = call %struct.Memory* @routine_addq__rcx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af674)
  store %struct.Memory* %call_4af674, %struct.Memory** %MEMORY

  ; Code: movl $0x0, (%rsi)	 RIP: 4af677	 Bytes: 6
  %loadMem_4af677 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af677 = call %struct.Memory* @routine_movl__0x0____rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af677)
  store %struct.Memory* %call_4af677, %struct.Memory** %MEMORY

  ; Code: movslq -0x8a44(%rbp), %rcx	 RIP: 4af67d	 Bytes: 7
  %loadMem_4af67d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af67d = call %struct.Memory* @routine_movslq_MINUS0x8a44__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af67d)
  store %struct.Memory* %call_4af67d, %struct.Memory** %MEMORY

  ; Code: imulq $0xb4, %rcx, %rcx	 RIP: 4af684	 Bytes: 7
  %loadMem_4af684 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af684 = call %struct.Memory* @routine_imulq__0xb4___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af684)
  store %struct.Memory* %call_4af684, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 4af68b	 Bytes: 3
  %loadMem_4af68b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af68b = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af68b)
  store %struct.Memory* %call_4af68b, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rsi	 RIP: 4af68e	 Bytes: 3
  %loadMem_4af68e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af68e = call %struct.Memory* @routine_addq__rcx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af68e)
  store %struct.Memory* %call_4af68e, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 4af691	 Bytes: 4
  %loadMem_4af691 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af691 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af691)
  store %struct.Memory* %call_4af691, %struct.Memory** %MEMORY

  ; Code: imulq $0xc, %rcx, %rcx	 RIP: 4af695	 Bytes: 4
  %loadMem_4af695 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af695 = call %struct.Memory* @routine_imulq__0xc___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af695)
  store %struct.Memory* %call_4af695, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rsi	 RIP: 4af699	 Bytes: 3
  %loadMem_4af699 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af699 = call %struct.Memory* @routine_addq__rcx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af699)
  store %struct.Memory* %call_4af699, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x4(%rsi)	 RIP: 4af69c	 Bytes: 7
  %loadMem_4af69c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af69c = call %struct.Memory* @routine_movl__0x0__0x4__rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af69c)
  store %struct.Memory* %call_4af69c, %struct.Memory** %MEMORY

  ; Code: movslq -0x8a44(%rbp), %rcx	 RIP: 4af6a3	 Bytes: 7
  %loadMem_4af6a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af6a3 = call %struct.Memory* @routine_movslq_MINUS0x8a44__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af6a3)
  store %struct.Memory* %call_4af6a3, %struct.Memory** %MEMORY

  ; Code: imulq $0xb4, %rcx, %rcx	 RIP: 4af6aa	 Bytes: 7
  %loadMem_4af6aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af6aa = call %struct.Memory* @routine_imulq__0xb4___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af6aa)
  store %struct.Memory* %call_4af6aa, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4af6b1	 Bytes: 3
  %loadMem_4af6b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af6b1 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af6b1)
  store %struct.Memory* %call_4af6b1, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 4af6b4	 Bytes: 4
  %loadMem_4af6b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af6b4 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af6b4)
  store %struct.Memory* %call_4af6b4, %struct.Memory** %MEMORY

  ; Code: imulq $0xc, %rcx, %rcx	 RIP: 4af6b8	 Bytes: 4
  %loadMem_4af6b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af6b8 = call %struct.Memory* @routine_imulq__0xc___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af6b8)
  store %struct.Memory* %call_4af6b8, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4af6bc	 Bytes: 3
  %loadMem_4af6bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af6bc = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af6bc)
  store %struct.Memory* %call_4af6bc, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x8(%rax)	 RIP: 4af6bf	 Bytes: 7
  %loadMem_4af6bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af6bf = call %struct.Memory* @routine_movl__0x0__0x8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af6bf)
  store %struct.Memory* %call_4af6bf, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x4(%rbp)	 RIP: 4af6c6	 Bytes: 7
  %loadMem_4af6c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af6c6 = call %struct.Memory* @routine_movl__0x0__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af6c6)
  store %struct.Memory* %call_4af6c6, %struct.Memory** %MEMORY

  ; Code: .L_4af6cd:	 RIP: 4af6cd	 Bytes: 0
  br label %block_.L_4af6cd
block_.L_4af6cd:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 4af6cd	 Bytes: 3
  %loadMem_4af6cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af6cd = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af6cd)
  store %struct.Memory* %call_4af6cd, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 4af6d0	 Bytes: 8
  %loadMem_4af6d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af6d0 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af6d0)
  store %struct.Memory* %call_4af6d0, %struct.Memory** %MEMORY

  ; Code: movl 0x3c(%rcx), %edx	 RIP: 4af6d8	 Bytes: 3
  %loadMem_4af6d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af6d8 = call %struct.Memory* @routine_movl_0x3c__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af6d8)
  store %struct.Memory* %call_4af6d8, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 4af6db	 Bytes: 8
  %loadMem_4af6db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af6db = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af6db)
  store %struct.Memory* %call_4af6db, %struct.Memory** %MEMORY

  ; Code: imull 0x34(%rcx), %edx	 RIP: 4af6e3	 Bytes: 4
  %loadMem_4af6e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af6e3 = call %struct.Memory* @routine_imull_0x34__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af6e3)
  store %struct.Memory* %call_4af6e3, %struct.Memory** %MEMORY

  ; Code: cmpl %edx, %eax	 RIP: 4af6e7	 Bytes: 2
  %loadMem_4af6e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af6e7 = call %struct.Memory* @routine_cmpl__edx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af6e7)
  store %struct.Memory* %call_4af6e7, %struct.Memory** %MEMORY

  ; Code: jge .L_4af7ee	 RIP: 4af6e9	 Bytes: 6
  %loadMem_4af6e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af6e9 = call %struct.Memory* @routine_jge_.L_4af7ee(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af6e9, i8* %BRANCH_TAKEN, i64 261, i64 6, i64 6)
  store %struct.Memory* %call_4af6e9, %struct.Memory** %MEMORY

  %loadBr_4af6e9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4af6e9 = icmp eq i8 %loadBr_4af6e9, 1
  br i1 %cmpBr_4af6e9, label %block_.L_4af7ee, label %block_4af6ef

block_4af6ef:
  ; Code: movq -0x310(%rbp), %rax	 RIP: 4af6ef	 Bytes: 7
  %loadMem_4af6ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af6ef = call %struct.Memory* @routine_movq_MINUS0x310__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af6ef)
  store %struct.Memory* %call_4af6ef, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rcx	 RIP: 4af6f6	 Bytes: 4
  %loadMem_4af6f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af6f6 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af6f6)
  store %struct.Memory* %call_4af6f6, %struct.Memory** %MEMORY

  ; Code: movzwl (%rax,%rcx,2), %edx	 RIP: 4af6fa	 Bytes: 4
  %loadMem_4af6fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af6fa = call %struct.Memory* @routine_movzwl___rax__rcx_2____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af6fa)
  store %struct.Memory* %call_4af6fa, %struct.Memory** %MEMORY

  ; Code: imull -0x8a48(%rbp), %edx	 RIP: 4af6fe	 Bytes: 7
  %loadMem_4af6fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af6fe = call %struct.Memory* @routine_imull_MINUS0x8a48__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af6fe)
  store %struct.Memory* %call_4af6fe, %struct.Memory** %MEMORY

  ; Code: addl 0x7107a0, %edx	 RIP: 4af705	 Bytes: 7
  %loadMem_4af705 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af705 = call %struct.Memory* @routine_addl_0x7107a0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af705)
  store %struct.Memory* %call_4af705, %struct.Memory** %MEMORY

  ; Code: movl 0x70f6d0, %ecx	 RIP: 4af70c	 Bytes: 7
  %loadMem_4af70c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af70c = call %struct.Memory* @routine_movl_0x70f6d0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af70c)
  store %struct.Memory* %call_4af70c, %struct.Memory** %MEMORY

  ; Code: sarl %cl, %edx	 RIP: 4af713	 Bytes: 2
  %loadMem_4af713 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af713 = call %struct.Memory* @routine_sarl__cl___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af713)
  store %struct.Memory* %call_4af713, %struct.Memory** %MEMORY

  ; Code: addl -0x8a4c(%rbp), %edx	 RIP: 4af715	 Bytes: 6
  %loadMem_4af715 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af715 = call %struct.Memory* @routine_addl_MINUS0x8a4c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af715)
  store %struct.Memory* %call_4af715, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %edx	 RIP: 4af71b	 Bytes: 3
  %loadMem_4af71b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af71b = call %struct.Memory* @routine_cmpl__0x0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af71b)
  store %struct.Memory* %call_4af71b, %struct.Memory** %MEMORY

  ; Code: jge .L_4af731	 RIP: 4af71e	 Bytes: 6
  %loadMem_4af71e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af71e = call %struct.Memory* @routine_jge_.L_4af731(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af71e, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_4af71e, %struct.Memory** %MEMORY

  %loadBr_4af71e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4af71e = icmp eq i8 %loadBr_4af71e, 1
  br i1 %cmpBr_4af71e, label %block_.L_4af731, label %block_4af724

block_4af724:
  ; Code: xorl %eax, %eax	 RIP: 4af724	 Bytes: 2
  %loadMem_4af724 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af724 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af724)
  store %struct.Memory* %call_4af724, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x8a80(%rbp)	 RIP: 4af726	 Bytes: 6
  %loadMem_4af726 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af726 = call %struct.Memory* @routine_movl__eax__MINUS0x8a80__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af726)
  store %struct.Memory* %call_4af726, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4af7c8	 RIP: 4af72c	 Bytes: 5
  %loadMem_4af72c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af72c = call %struct.Memory* @routine_jmpq_.L_4af7c8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af72c, i64 156, i64 5)
  store %struct.Memory* %call_4af72c, %struct.Memory** %MEMORY

  br label %block_.L_4af7c8

  ; Code: .L_4af731:	 RIP: 4af731	 Bytes: 0
block_.L_4af731:

  ; Code: movq -0x310(%rbp), %rax	 RIP: 4af731	 Bytes: 7
  %loadMem_4af731 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af731 = call %struct.Memory* @routine_movq_MINUS0x310__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af731)
  store %struct.Memory* %call_4af731, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rcx	 RIP: 4af738	 Bytes: 4
  %loadMem_4af738 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af738 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af738)
  store %struct.Memory* %call_4af738, %struct.Memory** %MEMORY

  ; Code: movzwl (%rax,%rcx,2), %edx	 RIP: 4af73c	 Bytes: 4
  %loadMem_4af73c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af73c = call %struct.Memory* @routine_movzwl___rax__rcx_2____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af73c)
  store %struct.Memory* %call_4af73c, %struct.Memory** %MEMORY

  ; Code: imull -0x8a48(%rbp), %edx	 RIP: 4af740	 Bytes: 7
  %loadMem_4af740 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af740 = call %struct.Memory* @routine_imull_MINUS0x8a48__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af740)
  store %struct.Memory* %call_4af740, %struct.Memory** %MEMORY

  ; Code: addl 0x7107a0, %edx	 RIP: 4af747	 Bytes: 7
  %loadMem_4af747 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af747 = call %struct.Memory* @routine_addl_0x7107a0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af747)
  store %struct.Memory* %call_4af747, %struct.Memory** %MEMORY

  ; Code: movl 0x70f6d0, %ecx	 RIP: 4af74e	 Bytes: 7
  %loadMem_4af74e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af74e = call %struct.Memory* @routine_movl_0x70f6d0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af74e)
  store %struct.Memory* %call_4af74e, %struct.Memory** %MEMORY

  ; Code: sarl %cl, %edx	 RIP: 4af755	 Bytes: 2
  %loadMem_4af755 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af755 = call %struct.Memory* @routine_sarl__cl___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af755)
  store %struct.Memory* %call_4af755, %struct.Memory** %MEMORY

  ; Code: addl -0x8a4c(%rbp), %edx	 RIP: 4af757	 Bytes: 6
  %loadMem_4af757 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af757 = call %struct.Memory* @routine_addl_MINUS0x8a4c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af757)
  store %struct.Memory* %call_4af757, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 4af75d	 Bytes: 8
  %loadMem_4af75d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af75d = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af75d)
  store %struct.Memory* %call_4af75d, %struct.Memory** %MEMORY

  ; Code: cmpl 0x11bec(%rax), %edx	 RIP: 4af765	 Bytes: 6
  %loadMem_4af765 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af765 = call %struct.Memory* @routine_cmpl_0x11bec__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af765)
  store %struct.Memory* %call_4af765, %struct.Memory** %MEMORY

  ; Code: jle .L_4af78a	 RIP: 4af76b	 Bytes: 6
  %loadMem_4af76b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af76b = call %struct.Memory* @routine_jle_.L_4af78a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af76b, i8* %BRANCH_TAKEN, i64 31, i64 6, i64 6)
  store %struct.Memory* %call_4af76b, %struct.Memory** %MEMORY

  %loadBr_4af76b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4af76b = icmp eq i8 %loadBr_4af76b, 1
  br i1 %cmpBr_4af76b, label %block_.L_4af78a, label %block_4af771

block_4af771:
  ; Code: movq 0x6cb900, %rax	 RIP: 4af771	 Bytes: 8
  %loadMem_4af771 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af771 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af771)
  store %struct.Memory* %call_4af771, %struct.Memory** %MEMORY

  ; Code: movl 0x11bec(%rax), %ecx	 RIP: 4af779	 Bytes: 6
  %loadMem_4af779 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af779 = call %struct.Memory* @routine_movl_0x11bec__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af779)
  store %struct.Memory* %call_4af779, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x8a84(%rbp)	 RIP: 4af77f	 Bytes: 6
  %loadMem_4af77f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af77f = call %struct.Memory* @routine_movl__ecx__MINUS0x8a84__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af77f)
  store %struct.Memory* %call_4af77f, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4af7bc	 RIP: 4af785	 Bytes: 5
  %loadMem_4af785 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af785 = call %struct.Memory* @routine_jmpq_.L_4af7bc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af785, i64 55, i64 5)
  store %struct.Memory* %call_4af785, %struct.Memory** %MEMORY

  br label %block_.L_4af7bc

  ; Code: .L_4af78a:	 RIP: 4af78a	 Bytes: 0
block_.L_4af78a:

  ; Code: movq -0x310(%rbp), %rax	 RIP: 4af78a	 Bytes: 7
  %loadMem_4af78a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af78a = call %struct.Memory* @routine_movq_MINUS0x310__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af78a)
  store %struct.Memory* %call_4af78a, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rcx	 RIP: 4af791	 Bytes: 4
  %loadMem_4af791 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af791 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af791)
  store %struct.Memory* %call_4af791, %struct.Memory** %MEMORY

  ; Code: movzwl (%rax,%rcx,2), %edx	 RIP: 4af795	 Bytes: 4
  %loadMem_4af795 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af795 = call %struct.Memory* @routine_movzwl___rax__rcx_2____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af795)
  store %struct.Memory* %call_4af795, %struct.Memory** %MEMORY

  ; Code: imull -0x8a48(%rbp), %edx	 RIP: 4af799	 Bytes: 7
  %loadMem_4af799 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af799 = call %struct.Memory* @routine_imull_MINUS0x8a48__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af799)
  store %struct.Memory* %call_4af799, %struct.Memory** %MEMORY

  ; Code: addl 0x7107a0, %edx	 RIP: 4af7a0	 Bytes: 7
  %loadMem_4af7a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af7a0 = call %struct.Memory* @routine_addl_0x7107a0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af7a0)
  store %struct.Memory* %call_4af7a0, %struct.Memory** %MEMORY

  ; Code: movl 0x70f6d0, %ecx	 RIP: 4af7a7	 Bytes: 7
  %loadMem_4af7a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af7a7 = call %struct.Memory* @routine_movl_0x70f6d0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af7a7)
  store %struct.Memory* %call_4af7a7, %struct.Memory** %MEMORY

  ; Code: sarl %cl, %edx	 RIP: 4af7ae	 Bytes: 2
  %loadMem_4af7ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af7ae = call %struct.Memory* @routine_sarl__cl___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af7ae)
  store %struct.Memory* %call_4af7ae, %struct.Memory** %MEMORY

  ; Code: addl -0x8a4c(%rbp), %edx	 RIP: 4af7b0	 Bytes: 6
  %loadMem_4af7b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af7b0 = call %struct.Memory* @routine_addl_MINUS0x8a4c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af7b0)
  store %struct.Memory* %call_4af7b0, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x8a84(%rbp)	 RIP: 4af7b6	 Bytes: 6
  %loadMem_4af7b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af7b6 = call %struct.Memory* @routine_movl__edx__MINUS0x8a84__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af7b6)
  store %struct.Memory* %call_4af7b6, %struct.Memory** %MEMORY

  ; Code: .L_4af7bc:	 RIP: 4af7bc	 Bytes: 0
  br label %block_.L_4af7bc
block_.L_4af7bc:

  ; Code: movl -0x8a84(%rbp), %eax	 RIP: 4af7bc	 Bytes: 6
  %loadMem_4af7bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af7bc = call %struct.Memory* @routine_movl_MINUS0x8a84__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af7bc)
  store %struct.Memory* %call_4af7bc, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x8a80(%rbp)	 RIP: 4af7c2	 Bytes: 6
  %loadMem_4af7c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af7c2 = call %struct.Memory* @routine_movl__eax__MINUS0x8a80__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af7c2)
  store %struct.Memory* %call_4af7c2, %struct.Memory** %MEMORY

  ; Code: .L_4af7c8:	 RIP: 4af7c8	 Bytes: 0
  br label %block_.L_4af7c8
block_.L_4af7c8:

  ; Code: movl -0x8a80(%rbp), %eax	 RIP: 4af7c8	 Bytes: 6
  %loadMem_4af7c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af7c8 = call %struct.Memory* @routine_movl_MINUS0x8a80__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af7c8)
  store %struct.Memory* %call_4af7c8, %struct.Memory** %MEMORY

  ; Code: movw %ax, %cx	 RIP: 4af7ce	 Bytes: 3
  %loadMem_4af7ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af7ce = call %struct.Memory* @routine_movw__ax___cx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af7ce)
  store %struct.Memory* %call_4af7ce, %struct.Memory** %MEMORY

  ; Code: movq -0x318(%rbp), %rdx	 RIP: 4af7d1	 Bytes: 7
  %loadMem_4af7d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af7d1 = call %struct.Memory* @routine_movq_MINUS0x318__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af7d1)
  store %struct.Memory* %call_4af7d1, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rsi	 RIP: 4af7d8	 Bytes: 4
  %loadMem_4af7d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af7d8 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af7d8)
  store %struct.Memory* %call_4af7d8, %struct.Memory** %MEMORY

  ; Code: movw %cx, (%rdx,%rsi,2)	 RIP: 4af7dc	 Bytes: 4
  %loadMem_4af7dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af7dc = call %struct.Memory* @routine_movw__cx____rdx__rsi_2_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af7dc)
  store %struct.Memory* %call_4af7dc, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %eax	 RIP: 4af7e0	 Bytes: 3
  %loadMem_4af7e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af7e0 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af7e0)
  store %struct.Memory* %call_4af7e0, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4af7e3	 Bytes: 3
  %loadMem_4af7e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af7e3 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af7e3)
  store %struct.Memory* %call_4af7e3, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4(%rbp)	 RIP: 4af7e6	 Bytes: 3
  %loadMem_4af7e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af7e6 = call %struct.Memory* @routine_movl__eax__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af7e6)
  store %struct.Memory* %call_4af7e6, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4af6cd	 RIP: 4af7e9	 Bytes: 5
  %loadMem_4af7e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af7e9 = call %struct.Memory* @routine_jmpq_.L_4af6cd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af7e9, i64 -284, i64 5)
  store %struct.Memory* %call_4af7e9, %struct.Memory** %MEMORY

  br label %block_.L_4af6cd

  ; Code: .L_4af7ee:	 RIP: 4af7ee	 Bytes: 0
block_.L_4af7ee:

  ; Code: movl $0x0, -0x4(%rbp)	 RIP: 4af7ee	 Bytes: 7
  %loadMem_4af7ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af7ee = call %struct.Memory* @routine_movl__0x0__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af7ee)
  store %struct.Memory* %call_4af7ee, %struct.Memory** %MEMORY

  ; Code: .L_4af7f5:	 RIP: 4af7f5	 Bytes: 0
  br label %block_.L_4af7f5
block_.L_4af7f5:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 4af7f5	 Bytes: 3
  %loadMem_4af7f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af7f5 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af7f5)
  store %struct.Memory* %call_4af7f5, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 4af7f8	 Bytes: 8
  %loadMem_4af7f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af7f8 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af7f8)
  store %struct.Memory* %call_4af7f8, %struct.Memory** %MEMORY

  ; Code: movl 0x3c(%rcx), %edx	 RIP: 4af800	 Bytes: 3
  %loadMem_4af800 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af800 = call %struct.Memory* @routine_movl_0x3c__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af800)
  store %struct.Memory* %call_4af800, %struct.Memory** %MEMORY

  ; Code: addl $0x8, %edx	 RIP: 4af803	 Bytes: 3
  %loadMem_4af803 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af803 = call %struct.Memory* @routine_addl__0x8___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af803)
  store %struct.Memory* %call_4af803, %struct.Memory** %MEMORY

  ; Code: shll $0x2, %edx	 RIP: 4af806	 Bytes: 3
  %loadMem_4af806 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af806 = call %struct.Memory* @routine_shll__0x2___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af806)
  store %struct.Memory* %call_4af806, %struct.Memory** %MEMORY

  ; Code: cmpl %edx, %eax	 RIP: 4af809	 Bytes: 2
  %loadMem_4af809 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af809 = call %struct.Memory* @routine_cmpl__edx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af809)
  store %struct.Memory* %call_4af809, %struct.Memory** %MEMORY

  ; Code: jge .L_4af9a6	 RIP: 4af80b	 Bytes: 6
  %loadMem_4af80b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af80b = call %struct.Memory* @routine_jge_.L_4af9a6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af80b, i8* %BRANCH_TAKEN, i64 411, i64 6, i64 6)
  store %struct.Memory* %call_4af80b, %struct.Memory** %MEMORY

  %loadBr_4af80b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4af80b = icmp eq i8 %loadBr_4af80b, 1
  br i1 %cmpBr_4af80b, label %block_.L_4af9a6, label %block_4af811

block_4af811:
  ; Code: movl $0x0, -0x8(%rbp)	 RIP: 4af811	 Bytes: 7
  %loadMem_4af811 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af811 = call %struct.Memory* @routine_movl__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af811)
  store %struct.Memory* %call_4af811, %struct.Memory** %MEMORY

  ; Code: .L_4af818:	 RIP: 4af818	 Bytes: 0
  br label %block_.L_4af818
block_.L_4af818:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 4af818	 Bytes: 3
  %loadMem_4af818 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af818 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af818)
  store %struct.Memory* %call_4af818, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 4af81b	 Bytes: 8
  %loadMem_4af81b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af81b = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af81b)
  store %struct.Memory* %call_4af81b, %struct.Memory** %MEMORY

  ; Code: movl 0x34(%rcx), %edx	 RIP: 4af823	 Bytes: 3
  %loadMem_4af823 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af823 = call %struct.Memory* @routine_movl_0x34__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af823)
  store %struct.Memory* %call_4af823, %struct.Memory** %MEMORY

  ; Code: addl $0x8, %edx	 RIP: 4af826	 Bytes: 3
  %loadMem_4af826 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af826 = call %struct.Memory* @routine_addl__0x8___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af826)
  store %struct.Memory* %call_4af826, %struct.Memory** %MEMORY

  ; Code: shll $0x2, %edx	 RIP: 4af829	 Bytes: 3
  %loadMem_4af829 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af829 = call %struct.Memory* @routine_shll__0x2___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af829)
  store %struct.Memory* %call_4af829, %struct.Memory** %MEMORY

  ; Code: cmpl %edx, %eax	 RIP: 4af82c	 Bytes: 2
  %loadMem_4af82c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af82c = call %struct.Memory* @routine_cmpl__edx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af82c)
  store %struct.Memory* %call_4af82c, %struct.Memory** %MEMORY

  ; Code: jge .L_4af993	 RIP: 4af82e	 Bytes: 6
  %loadMem_4af82e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af82e = call %struct.Memory* @routine_jge_.L_4af993(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af82e, i8* %BRANCH_TAKEN, i64 357, i64 6, i64 6)
  store %struct.Memory* %call_4af82e, %struct.Memory** %MEMORY

  %loadBr_4af82e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4af82e = icmp eq i8 %loadBr_4af82e, 1
  br i1 %cmpBr_4af82e, label %block_.L_4af993, label %block_4af834

block_4af834:
  ; Code: movq 0x722b20, %rax	 RIP: 4af834	 Bytes: 8
  %loadMem_4af834 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af834 = call %struct.Memory* @routine_movq_0x722b20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af834)
  store %struct.Memory* %call_4af834, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 4af83c	 Bytes: 4
  %loadMem_4af83c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af83c = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af83c)
  store %struct.Memory* %call_4af83c, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 4af840	 Bytes: 4
  %loadMem_4af840 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af840 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af840)
  store %struct.Memory* %call_4af840, %struct.Memory** %MEMORY

  ; Code: movq 0x1930(%rax), %rax	 RIP: 4af844	 Bytes: 7
  %loadMem_4af844 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af844 = call %struct.Memory* @routine_movq_0x1930__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af844)
  store %struct.Memory* %call_4af844, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rcx	 RIP: 4af84b	 Bytes: 4
  %loadMem_4af84b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af84b = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af84b)
  store %struct.Memory* %call_4af84b, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 4af84f	 Bytes: 4
  %loadMem_4af84f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af84f = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af84f)
  store %struct.Memory* %call_4af84f, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 4af853	 Bytes: 4
  %loadMem_4af853 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af853 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af853)
  store %struct.Memory* %call_4af853, %struct.Memory** %MEMORY

  ; Code: movzwl (%rax,%rcx,2), %edx	 RIP: 4af857	 Bytes: 4
  %loadMem_4af857 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af857 = call %struct.Memory* @routine_movzwl___rax__rcx_2____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af857)
  store %struct.Memory* %call_4af857, %struct.Memory** %MEMORY

  ; Code: imull -0x8a48(%rbp), %edx	 RIP: 4af85b	 Bytes: 7
  %loadMem_4af85b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af85b = call %struct.Memory* @routine_imull_MINUS0x8a48__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af85b)
  store %struct.Memory* %call_4af85b, %struct.Memory** %MEMORY

  ; Code: addl 0x7107a0, %edx	 RIP: 4af862	 Bytes: 7
  %loadMem_4af862 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af862 = call %struct.Memory* @routine_addl_0x7107a0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af862)
  store %struct.Memory* %call_4af862, %struct.Memory** %MEMORY

  ; Code: movl 0x70f6d0, %ecx	 RIP: 4af869	 Bytes: 7
  %loadMem_4af869 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af869 = call %struct.Memory* @routine_movl_0x70f6d0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af869)
  store %struct.Memory* %call_4af869, %struct.Memory** %MEMORY

  ; Code: sarl %cl, %edx	 RIP: 4af870	 Bytes: 2
  %loadMem_4af870 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af870 = call %struct.Memory* @routine_sarl__cl___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af870)
  store %struct.Memory* %call_4af870, %struct.Memory** %MEMORY

  ; Code: addl -0x8a4c(%rbp), %edx	 RIP: 4af872	 Bytes: 6
  %loadMem_4af872 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af872 = call %struct.Memory* @routine_addl_MINUS0x8a4c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af872)
  store %struct.Memory* %call_4af872, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %edx	 RIP: 4af878	 Bytes: 3
  %loadMem_4af878 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af878 = call %struct.Memory* @routine_cmpl__0x0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af878)
  store %struct.Memory* %call_4af878, %struct.Memory** %MEMORY

  ; Code: jge .L_4af88e	 RIP: 4af87b	 Bytes: 6
  %loadMem_4af87b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af87b = call %struct.Memory* @routine_jge_.L_4af88e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af87b, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_4af87b, %struct.Memory** %MEMORY

  %loadBr_4af87b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4af87b = icmp eq i8 %loadBr_4af87b, 1
  br i1 %cmpBr_4af87b, label %block_.L_4af88e, label %block_4af881

block_4af881:
  ; Code: xorl %eax, %eax	 RIP: 4af881	 Bytes: 2
  %loadMem_4af881 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af881 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af881)
  store %struct.Memory* %call_4af881, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x8a88(%rbp)	 RIP: 4af883	 Bytes: 6
  %loadMem_4af883 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af883 = call %struct.Memory* @routine_movl__eax__MINUS0x8a88__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af883)
  store %struct.Memory* %call_4af883, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4af955	 RIP: 4af889	 Bytes: 5
  %loadMem_4af889 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af889 = call %struct.Memory* @routine_jmpq_.L_4af955(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af889, i64 204, i64 5)
  store %struct.Memory* %call_4af889, %struct.Memory** %MEMORY

  br label %block_.L_4af955

  ; Code: .L_4af88e:	 RIP: 4af88e	 Bytes: 0
block_.L_4af88e:

  ; Code: movq 0x722b20, %rax	 RIP: 4af88e	 Bytes: 8
  %loadMem_4af88e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af88e = call %struct.Memory* @routine_movq_0x722b20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af88e)
  store %struct.Memory* %call_4af88e, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 4af896	 Bytes: 4
  %loadMem_4af896 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af896 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af896)
  store %struct.Memory* %call_4af896, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 4af89a	 Bytes: 4
  %loadMem_4af89a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af89a = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af89a)
  store %struct.Memory* %call_4af89a, %struct.Memory** %MEMORY

  ; Code: movq 0x1930(%rax), %rax	 RIP: 4af89e	 Bytes: 7
  %loadMem_4af89e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af89e = call %struct.Memory* @routine_movq_0x1930__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af89e)
  store %struct.Memory* %call_4af89e, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rcx	 RIP: 4af8a5	 Bytes: 4
  %loadMem_4af8a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af8a5 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af8a5)
  store %struct.Memory* %call_4af8a5, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 4af8a9	 Bytes: 4
  %loadMem_4af8a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af8a9 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af8a9)
  store %struct.Memory* %call_4af8a9, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 4af8ad	 Bytes: 4
  %loadMem_4af8ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af8ad = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af8ad)
  store %struct.Memory* %call_4af8ad, %struct.Memory** %MEMORY

  ; Code: movzwl (%rax,%rcx,2), %edx	 RIP: 4af8b1	 Bytes: 4
  %loadMem_4af8b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af8b1 = call %struct.Memory* @routine_movzwl___rax__rcx_2____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af8b1)
  store %struct.Memory* %call_4af8b1, %struct.Memory** %MEMORY

  ; Code: imull -0x8a48(%rbp), %edx	 RIP: 4af8b5	 Bytes: 7
  %loadMem_4af8b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af8b5 = call %struct.Memory* @routine_imull_MINUS0x8a48__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af8b5)
  store %struct.Memory* %call_4af8b5, %struct.Memory** %MEMORY

  ; Code: addl 0x7107a0, %edx	 RIP: 4af8bc	 Bytes: 7
  %loadMem_4af8bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af8bc = call %struct.Memory* @routine_addl_0x7107a0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af8bc)
  store %struct.Memory* %call_4af8bc, %struct.Memory** %MEMORY

  ; Code: movl 0x70f6d0, %ecx	 RIP: 4af8c3	 Bytes: 7
  %loadMem_4af8c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af8c3 = call %struct.Memory* @routine_movl_0x70f6d0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af8c3)
  store %struct.Memory* %call_4af8c3, %struct.Memory** %MEMORY

  ; Code: sarl %cl, %edx	 RIP: 4af8ca	 Bytes: 2
  %loadMem_4af8ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af8ca = call %struct.Memory* @routine_sarl__cl___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af8ca)
  store %struct.Memory* %call_4af8ca, %struct.Memory** %MEMORY

  ; Code: addl -0x8a4c(%rbp), %edx	 RIP: 4af8cc	 Bytes: 6
  %loadMem_4af8cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af8cc = call %struct.Memory* @routine_addl_MINUS0x8a4c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af8cc)
  store %struct.Memory* %call_4af8cc, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 4af8d2	 Bytes: 8
  %loadMem_4af8d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af8d2 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af8d2)
  store %struct.Memory* %call_4af8d2, %struct.Memory** %MEMORY

  ; Code: cmpl 0x11bec(%rax), %edx	 RIP: 4af8da	 Bytes: 6
  %loadMem_4af8da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af8da = call %struct.Memory* @routine_cmpl_0x11bec__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af8da)
  store %struct.Memory* %call_4af8da, %struct.Memory** %MEMORY

  ; Code: jle .L_4af8ff	 RIP: 4af8e0	 Bytes: 6
  %loadMem_4af8e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af8e0 = call %struct.Memory* @routine_jle_.L_4af8ff(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af8e0, i8* %BRANCH_TAKEN, i64 31, i64 6, i64 6)
  store %struct.Memory* %call_4af8e0, %struct.Memory** %MEMORY

  %loadBr_4af8e0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4af8e0 = icmp eq i8 %loadBr_4af8e0, 1
  br i1 %cmpBr_4af8e0, label %block_.L_4af8ff, label %block_4af8e6

block_4af8e6:
  ; Code: movq 0x6cb900, %rax	 RIP: 4af8e6	 Bytes: 8
  %loadMem_4af8e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af8e6 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af8e6)
  store %struct.Memory* %call_4af8e6, %struct.Memory** %MEMORY

  ; Code: movl 0x11bec(%rax), %ecx	 RIP: 4af8ee	 Bytes: 6
  %loadMem_4af8ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af8ee = call %struct.Memory* @routine_movl_0x11bec__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af8ee)
  store %struct.Memory* %call_4af8ee, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x8a8c(%rbp)	 RIP: 4af8f4	 Bytes: 6
  %loadMem_4af8f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af8f4 = call %struct.Memory* @routine_movl__ecx__MINUS0x8a8c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af8f4)
  store %struct.Memory* %call_4af8f4, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4af949	 RIP: 4af8fa	 Bytes: 5
  %loadMem_4af8fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af8fa = call %struct.Memory* @routine_jmpq_.L_4af949(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af8fa, i64 79, i64 5)
  store %struct.Memory* %call_4af8fa, %struct.Memory** %MEMORY

  br label %block_.L_4af949

  ; Code: .L_4af8ff:	 RIP: 4af8ff	 Bytes: 0
block_.L_4af8ff:

  ; Code: movq 0x722b20, %rax	 RIP: 4af8ff	 Bytes: 8
  %loadMem_4af8ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af8ff = call %struct.Memory* @routine_movq_0x722b20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af8ff)
  store %struct.Memory* %call_4af8ff, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 4af907	 Bytes: 4
  %loadMem_4af907 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af907 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af907)
  store %struct.Memory* %call_4af907, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 4af90b	 Bytes: 4
  %loadMem_4af90b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af90b = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af90b)
  store %struct.Memory* %call_4af90b, %struct.Memory** %MEMORY

  ; Code: movq 0x1930(%rax), %rax	 RIP: 4af90f	 Bytes: 7
  %loadMem_4af90f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af90f = call %struct.Memory* @routine_movq_0x1930__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af90f)
  store %struct.Memory* %call_4af90f, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rcx	 RIP: 4af916	 Bytes: 4
  %loadMem_4af916 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af916 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af916)
  store %struct.Memory* %call_4af916, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 4af91a	 Bytes: 4
  %loadMem_4af91a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af91a = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af91a)
  store %struct.Memory* %call_4af91a, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 4af91e	 Bytes: 4
  %loadMem_4af91e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af91e = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af91e)
  store %struct.Memory* %call_4af91e, %struct.Memory** %MEMORY

  ; Code: movzwl (%rax,%rcx,2), %edx	 RIP: 4af922	 Bytes: 4
  %loadMem_4af922 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af922 = call %struct.Memory* @routine_movzwl___rax__rcx_2____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af922)
  store %struct.Memory* %call_4af922, %struct.Memory** %MEMORY

  ; Code: imull -0x8a48(%rbp), %edx	 RIP: 4af926	 Bytes: 7
  %loadMem_4af926 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af926 = call %struct.Memory* @routine_imull_MINUS0x8a48__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af926)
  store %struct.Memory* %call_4af926, %struct.Memory** %MEMORY

  ; Code: addl 0x7107a0, %edx	 RIP: 4af92d	 Bytes: 7
  %loadMem_4af92d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af92d = call %struct.Memory* @routine_addl_0x7107a0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af92d)
  store %struct.Memory* %call_4af92d, %struct.Memory** %MEMORY

  ; Code: movl 0x70f6d0, %ecx	 RIP: 4af934	 Bytes: 7
  %loadMem_4af934 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af934 = call %struct.Memory* @routine_movl_0x70f6d0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af934)
  store %struct.Memory* %call_4af934, %struct.Memory** %MEMORY

  ; Code: sarl %cl, %edx	 RIP: 4af93b	 Bytes: 2
  %loadMem_4af93b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af93b = call %struct.Memory* @routine_sarl__cl___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af93b)
  store %struct.Memory* %call_4af93b, %struct.Memory** %MEMORY

  ; Code: addl -0x8a4c(%rbp), %edx	 RIP: 4af93d	 Bytes: 6
  %loadMem_4af93d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af93d = call %struct.Memory* @routine_addl_MINUS0x8a4c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af93d)
  store %struct.Memory* %call_4af93d, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x8a8c(%rbp)	 RIP: 4af943	 Bytes: 6
  %loadMem_4af943 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af943 = call %struct.Memory* @routine_movl__edx__MINUS0x8a8c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af943)
  store %struct.Memory* %call_4af943, %struct.Memory** %MEMORY

  ; Code: .L_4af949:	 RIP: 4af949	 Bytes: 0
  br label %block_.L_4af949
block_.L_4af949:

  ; Code: movl -0x8a8c(%rbp), %eax	 RIP: 4af949	 Bytes: 6
  %loadMem_4af949 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af949 = call %struct.Memory* @routine_movl_MINUS0x8a8c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af949)
  store %struct.Memory* %call_4af949, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x8a88(%rbp)	 RIP: 4af94f	 Bytes: 6
  %loadMem_4af94f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af94f = call %struct.Memory* @routine_movl__eax__MINUS0x8a88__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af94f)
  store %struct.Memory* %call_4af94f, %struct.Memory** %MEMORY

  ; Code: .L_4af955:	 RIP: 4af955	 Bytes: 0
  br label %block_.L_4af955
block_.L_4af955:

  ; Code: movl -0x8a88(%rbp), %eax	 RIP: 4af955	 Bytes: 6
  %loadMem_4af955 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af955 = call %struct.Memory* @routine_movl_MINUS0x8a88__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af955)
  store %struct.Memory* %call_4af955, %struct.Memory** %MEMORY

  ; Code: movw %ax, %cx	 RIP: 4af95b	 Bytes: 3
  %loadMem_4af95b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af95b = call %struct.Memory* @routine_movw__ax___cx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af95b)
  store %struct.Memory* %call_4af95b, %struct.Memory** %MEMORY

  ; Code: movq 0x722b20, %rdx	 RIP: 4af95e	 Bytes: 8
  %loadMem_4af95e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af95e = call %struct.Memory* @routine_movq_0x722b20___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af95e)
  store %struct.Memory* %call_4af95e, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rsi	 RIP: 4af966	 Bytes: 4
  %loadMem_4af966 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af966 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af966)
  store %struct.Memory* %call_4af966, %struct.Memory** %MEMORY

  ; Code: movq (%rdx,%rsi,8), %rdx	 RIP: 4af96a	 Bytes: 4
  %loadMem_4af96a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af96a = call %struct.Memory* @routine_movq___rdx__rsi_8____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af96a)
  store %struct.Memory* %call_4af96a, %struct.Memory** %MEMORY

  ; Code: movq 0x1938(%rdx), %rdx	 RIP: 4af96e	 Bytes: 7
  %loadMem_4af96e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af96e = call %struct.Memory* @routine_movq_0x1938__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af96e)
  store %struct.Memory* %call_4af96e, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rsi	 RIP: 4af975	 Bytes: 4
  %loadMem_4af975 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af975 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af975)
  store %struct.Memory* %call_4af975, %struct.Memory** %MEMORY

  ; Code: movq (%rdx,%rsi,8), %rdx	 RIP: 4af979	 Bytes: 4
  %loadMem_4af979 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af979 = call %struct.Memory* @routine_movq___rdx__rsi_8____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af979)
  store %struct.Memory* %call_4af979, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rsi	 RIP: 4af97d	 Bytes: 4
  %loadMem_4af97d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af97d = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af97d)
  store %struct.Memory* %call_4af97d, %struct.Memory** %MEMORY

  ; Code: movw %cx, (%rdx,%rsi,2)	 RIP: 4af981	 Bytes: 4
  %loadMem_4af981 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af981 = call %struct.Memory* @routine_movw__cx____rdx__rsi_2_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af981)
  store %struct.Memory* %call_4af981, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %eax	 RIP: 4af985	 Bytes: 3
  %loadMem_4af985 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af985 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af985)
  store %struct.Memory* %call_4af985, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4af988	 Bytes: 3
  %loadMem_4af988 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af988 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af988)
  store %struct.Memory* %call_4af988, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x8(%rbp)	 RIP: 4af98b	 Bytes: 3
  %loadMem_4af98b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af98b = call %struct.Memory* @routine_movl__eax__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af98b)
  store %struct.Memory* %call_4af98b, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4af818	 RIP: 4af98e	 Bytes: 5
  %loadMem_4af98e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af98e = call %struct.Memory* @routine_jmpq_.L_4af818(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af98e, i64 -374, i64 5)
  store %struct.Memory* %call_4af98e, %struct.Memory** %MEMORY

  br label %block_.L_4af818

  ; Code: .L_4af993:	 RIP: 4af993	 Bytes: 0
block_.L_4af993:

  ; Code: jmpq .L_4af998	 RIP: 4af993	 Bytes: 5
  %loadMem_4af993 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af993 = call %struct.Memory* @routine_jmpq_.L_4af998(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af993, i64 5, i64 5)
  store %struct.Memory* %call_4af993, %struct.Memory** %MEMORY

  br label %block_.L_4af998

  ; Code: .L_4af998:	 RIP: 4af998	 Bytes: 0
block_.L_4af998:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 4af998	 Bytes: 3
  %loadMem_4af998 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af998 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af998)
  store %struct.Memory* %call_4af998, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4af99b	 Bytes: 3
  %loadMem_4af99b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af99b = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af99b)
  store %struct.Memory* %call_4af99b, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4(%rbp)	 RIP: 4af99e	 Bytes: 3
  %loadMem_4af99e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af99e = call %struct.Memory* @routine_movl__eax__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af99e)
  store %struct.Memory* %call_4af99e, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4af7f5	 RIP: 4af9a1	 Bytes: 5
  %loadMem_4af9a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af9a1 = call %struct.Memory* @routine_jmpq_.L_4af7f5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af9a1, i64 -428, i64 5)
  store %struct.Memory* %call_4af9a1, %struct.Memory** %MEMORY

  br label %block_.L_4af7f5

  ; Code: .L_4af9a6:	 RIP: 4af9a6	 Bytes: 0
block_.L_4af9a6:

  ; Code: jmpq .L_4af9ab	 RIP: 4af9a6	 Bytes: 5
  %loadMem_4af9a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af9a6 = call %struct.Memory* @routine_jmpq_.L_4af9ab(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af9a6, i64 5, i64 5)
  store %struct.Memory* %call_4af9a6, %struct.Memory** %MEMORY

  br label %block_.L_4af9ab

  ; Code: .L_4af9ab:	 RIP: 4af9ab	 Bytes: 0
block_.L_4af9ab:

  ; Code: movl -0xc(%rbp), %eax	 RIP: 4af9ab	 Bytes: 3
  %loadMem_4af9ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af9ab = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af9ab)
  store %struct.Memory* %call_4af9ab, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4af9ae	 Bytes: 3
  %loadMem_4af9ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af9ae = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af9ae)
  store %struct.Memory* %call_4af9ae, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xc(%rbp)	 RIP: 4af9b1	 Bytes: 3
  %loadMem_4af9b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af9b1 = call %struct.Memory* @routine_movl__eax__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af9b1)
  store %struct.Memory* %call_4af9b1, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4af42f	 RIP: 4af9b4	 Bytes: 5
  %loadMem_4af9b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af9b4 = call %struct.Memory* @routine_jmpq_.L_4af42f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af9b4, i64 -1413, i64 5)
  store %struct.Memory* %call_4af9b4, %struct.Memory** %MEMORY

  br label %block_.L_4af42f

  ; Code: .L_4af9b9:	 RIP: 4af9b9	 Bytes: 0
block_.L_4af9b9:

  ; Code: jmpq .L_4af9be	 RIP: 4af9b9	 Bytes: 5
  %loadMem_4af9b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af9b9 = call %struct.Memory* @routine_jmpq_.L_4af9be(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af9b9, i64 5, i64 5)
  store %struct.Memory* %call_4af9b9, %struct.Memory** %MEMORY

  br label %block_.L_4af9be

  ; Code: .L_4af9be:	 RIP: 4af9be	 Bytes: 0
block_.L_4af9be:

  ; Code: movl -0x8a44(%rbp), %eax	 RIP: 4af9be	 Bytes: 6
  %loadMem_4af9be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af9be = call %struct.Memory* @routine_movl_MINUS0x8a44__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af9be)
  store %struct.Memory* %call_4af9be, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4af9c4	 Bytes: 3
  %loadMem_4af9c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af9c4 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af9c4)
  store %struct.Memory* %call_4af9c4, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x8a44(%rbp)	 RIP: 4af9c7	 Bytes: 6
  %loadMem_4af9c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af9c7 = call %struct.Memory* @routine_movl__eax__MINUS0x8a44__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af9c7)
  store %struct.Memory* %call_4af9c7, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4af411	 RIP: 4af9cd	 Bytes: 5
  %loadMem_4af9cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af9cd = call %struct.Memory* @routine_jmpq_.L_4af411(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af9cd, i64 -1468, i64 5)
  store %struct.Memory* %call_4af9cd, %struct.Memory** %MEMORY

  br label %block_.L_4af411

  ; Code: .L_4af9d2:	 RIP: 4af9d2	 Bytes: 0
block_.L_4af9d2:

  ; Code: movq 0x6d4690, %rax	 RIP: 4af9d2	 Bytes: 8
  %loadMem_4af9d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af9d2 = call %struct.Memory* @routine_movq_0x6d4690___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af9d2)
  store %struct.Memory* %call_4af9d2, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, 0xc4(%rax)	 RIP: 4af9da	 Bytes: 7
  %loadMem_4af9da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af9da = call %struct.Memory* @routine_cmpl__0x1__0xc4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af9da)
  store %struct.Memory* %call_4af9da, %struct.Memory** %MEMORY

  ; Code: jne .L_4afb0e	 RIP: 4af9e1	 Bytes: 6
  %loadMem_4af9e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af9e1 = call %struct.Memory* @routine_jne_.L_4afb0e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af9e1, i8* %BRANCH_TAKEN, i64 301, i64 6, i64 6)
  store %struct.Memory* %call_4af9e1, %struct.Memory** %MEMORY

  %loadBr_4af9e1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4af9e1 = icmp eq i8 %loadBr_4af9e1, 1
  br i1 %cmpBr_4af9e1, label %block_.L_4afb0e, label %block_4af9e7

block_4af9e7:
  ; Code: movl $0x0, -0x8a44(%rbp)	 RIP: 4af9e7	 Bytes: 10
  %loadMem_4af9e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af9e7 = call %struct.Memory* @routine_movl__0x0__MINUS0x8a44__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af9e7)
  store %struct.Memory* %call_4af9e7, %struct.Memory** %MEMORY

  ; Code: .L_4af9f1:	 RIP: 4af9f1	 Bytes: 0
  br label %block_.L_4af9f1
block_.L_4af9f1:

  ; Code: movl -0x8a44(%rbp), %eax	 RIP: 4af9f1	 Bytes: 6
  %loadMem_4af9f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af9f1 = call %struct.Memory* @routine_movl_MINUS0x8a44__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af9f1)
  store %struct.Memory* %call_4af9f1, %struct.Memory** %MEMORY

  ; Code: movl -0x328(%rbp), %ecx	 RIP: 4af9f7	 Bytes: 6
  %loadMem_4af9f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af9f7 = call %struct.Memory* @routine_movl_MINUS0x328__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af9f7)
  store %struct.Memory* %call_4af9f7, %struct.Memory** %MEMORY

  ; Code: addl $0x2, %ecx	 RIP: 4af9fd	 Bytes: 3
  %loadMem_4af9fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4af9fd = call %struct.Memory* @routine_addl__0x2___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4af9fd)
  store %struct.Memory* %call_4af9fd, %struct.Memory** %MEMORY

  ; Code: cmpl %ecx, %eax	 RIP: 4afa00	 Bytes: 2
  %loadMem_4afa00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afa00 = call %struct.Memory* @routine_cmpl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afa00)
  store %struct.Memory* %call_4afa00, %struct.Memory** %MEMORY

  ; Code: jge .L_4afb09	 RIP: 4afa02	 Bytes: 6
  %loadMem_4afa02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afa02 = call %struct.Memory* @routine_jge_.L_4afb09(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afa02, i8* %BRANCH_TAKEN, i64 263, i64 6, i64 6)
  store %struct.Memory* %call_4afa02, %struct.Memory** %MEMORY

  %loadBr_4afa02 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4afa02 = icmp eq i8 %loadBr_4afa02, 1
  br i1 %cmpBr_4afa02, label %block_.L_4afb09, label %block_4afa08

block_4afa08:
  ; Code: movl $0x0, -0x24(%rbp)	 RIP: 4afa08	 Bytes: 7
  %loadMem_4afa08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afa08 = call %struct.Memory* @routine_movl__0x0__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afa08)
  store %struct.Memory* %call_4afa08, %struct.Memory** %MEMORY

  ; Code: .L_4afa0f:	 RIP: 4afa0f	 Bytes: 0
  br label %block_.L_4afa0f
block_.L_4afa0f:

  ; Code: movl -0x24(%rbp), %eax	 RIP: 4afa0f	 Bytes: 3
  %loadMem_4afa0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afa0f = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afa0f)
  store %struct.Memory* %call_4afa0f, %struct.Memory** %MEMORY

  ; Code: movslq -0x8a44(%rbp), %rcx	 RIP: 4afa12	 Bytes: 7
  %loadMem_4afa12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afa12 = call %struct.Memory* @routine_movslq_MINUS0x8a44__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afa12)
  store %struct.Memory* %call_4afa12, %struct.Memory** %MEMORY

  ; Code: cmpl 0x7247b0(,%rcx,4), %eax	 RIP: 4afa19	 Bytes: 7
  %loadMem_4afa19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afa19 = call %struct.Memory* @routine_cmpl_0x7247b0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afa19)
  store %struct.Memory* %call_4afa19, %struct.Memory** %MEMORY

  ; Code: jge .L_4afaf0	 RIP: 4afa20	 Bytes: 6
  %loadMem_4afa20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afa20 = call %struct.Memory* @routine_jge_.L_4afaf0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afa20, i8* %BRANCH_TAKEN, i64 208, i64 6, i64 6)
  store %struct.Memory* %call_4afa20, %struct.Memory** %MEMORY

  %loadBr_4afa20 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4afa20 = icmp eq i8 %loadBr_4afa20, 1
  br i1 %cmpBr_4afa20, label %block_.L_4afaf0, label %block_4afa26

block_4afa26:
  ; Code: movl $0x0, -0x28(%rbp)	 RIP: 4afa26	 Bytes: 7
  %loadMem_4afa26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afa26 = call %struct.Memory* @routine_movl__0x0__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afa26)
  store %struct.Memory* %call_4afa26, %struct.Memory** %MEMORY

  ; Code: .L_4afa2d:	 RIP: 4afa2d	 Bytes: 0
  br label %block_.L_4afa2d
block_.L_4afa2d:

  ; Code: cmpl $0x3, -0x28(%rbp)	 RIP: 4afa2d	 Bytes: 4
  %loadMem_4afa2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afa2d = call %struct.Memory* @routine_cmpl__0x3__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afa2d)
  store %struct.Memory* %call_4afa2d, %struct.Memory** %MEMORY

  ; Code: jge .L_4afadd	 RIP: 4afa31	 Bytes: 6
  %loadMem_4afa31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afa31 = call %struct.Memory* @routine_jge_.L_4afadd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afa31, i8* %BRANCH_TAKEN, i64 172, i64 6, i64 6)
  store %struct.Memory* %call_4afa31, %struct.Memory** %MEMORY

  %loadBr_4afa31 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4afa31 = icmp eq i8 %loadBr_4afa31, 1
  br i1 %cmpBr_4afa31, label %block_.L_4afadd, label %block_4afa37

block_4afa37:
  ; Code: leaq -0xba0(%rbp), %rax	 RIP: 4afa37	 Bytes: 7
  %loadMem_4afa37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afa37 = call %struct.Memory* @routine_leaq_MINUS0xba0__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afa37)
  store %struct.Memory* %call_4afa37, %struct.Memory** %MEMORY

  ; Code: leaq -0x760(%rbp), %rcx	 RIP: 4afa3e	 Bytes: 7
  %loadMem_4afa3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afa3e = call %struct.Memory* @routine_leaq_MINUS0x760__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afa3e)
  store %struct.Memory* %call_4afa3e, %struct.Memory** %MEMORY

  ; Code: movslq -0x8a44(%rbp), %rdx	 RIP: 4afa45	 Bytes: 7
  %loadMem_4afa45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afa45 = call %struct.Memory* @routine_movslq_MINUS0x8a44__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afa45)
  store %struct.Memory* %call_4afa45, %struct.Memory** %MEMORY

  ; Code: imulq $0xb4, %rdx, %rdx	 RIP: 4afa4c	 Bytes: 7
  %loadMem_4afa4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afa4c = call %struct.Memory* @routine_imulq__0xb4___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afa4c)
  store %struct.Memory* %call_4afa4c, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 4afa53	 Bytes: 3
  %loadMem_4afa53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afa53 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afa53)
  store %struct.Memory* %call_4afa53, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 4afa56	 Bytes: 4
  %loadMem_4afa56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afa56 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afa56)
  store %struct.Memory* %call_4afa56, %struct.Memory** %MEMORY

  ; Code: imulq $0xc, %rdx, %rdx	 RIP: 4afa5a	 Bytes: 4
  %loadMem_4afa5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afa5a = call %struct.Memory* @routine_imulq__0xc___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afa5a)
  store %struct.Memory* %call_4afa5a, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 4afa5e	 Bytes: 3
  %loadMem_4afa5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afa5e = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afa5e)
  store %struct.Memory* %call_4afa5e, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdx	 RIP: 4afa61	 Bytes: 4
  %loadMem_4afa61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afa61 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afa61)
  store %struct.Memory* %call_4afa61, %struct.Memory** %MEMORY

  ; Code: movl (%rcx,%rdx,4), %esi	 RIP: 4afa65	 Bytes: 3
  %loadMem_4afa65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afa65 = call %struct.Memory* @routine_movl___rcx__rdx_4____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afa65)
  store %struct.Memory* %call_4afa65, %struct.Memory** %MEMORY

  ; Code: movq 0x6d4740, %rcx	 RIP: 4afa68	 Bytes: 8
  %loadMem_4afa68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afa68 = call %struct.Memory* @routine_movq_0x6d4740___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afa68)
  store %struct.Memory* %call_4afa68, %struct.Memory** %MEMORY

  ; Code: movslq -0x8a44(%rbp), %rdx	 RIP: 4afa70	 Bytes: 7
  %loadMem_4afa70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afa70 = call %struct.Memory* @routine_movslq_MINUS0x8a44__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afa70)
  store %struct.Memory* %call_4afa70, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 4afa77	 Bytes: 4
  %loadMem_4afa77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afa77 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afa77)
  store %struct.Memory* %call_4afa77, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 4afa7b	 Bytes: 4
  %loadMem_4afa7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afa7b = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afa7b)
  store %struct.Memory* %call_4afa7b, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 4afa7f	 Bytes: 4
  %loadMem_4afa7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afa7f = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afa7f)
  store %struct.Memory* %call_4afa7f, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdx	 RIP: 4afa83	 Bytes: 4
  %loadMem_4afa83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afa83 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afa83)
  store %struct.Memory* %call_4afa83, %struct.Memory** %MEMORY

  ; Code: movl %esi, (%rcx,%rdx,4)	 RIP: 4afa87	 Bytes: 3
  %loadMem_4afa87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afa87 = call %struct.Memory* @routine_movl__esi____rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afa87)
  store %struct.Memory* %call_4afa87, %struct.Memory** %MEMORY

  ; Code: movslq -0x8a44(%rbp), %rcx	 RIP: 4afa8a	 Bytes: 7
  %loadMem_4afa8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afa8a = call %struct.Memory* @routine_movslq_MINUS0x8a44__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afa8a)
  store %struct.Memory* %call_4afa8a, %struct.Memory** %MEMORY

  ; Code: imulq $0xb4, %rcx, %rcx	 RIP: 4afa91	 Bytes: 7
  %loadMem_4afa91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afa91 = call %struct.Memory* @routine_imulq__0xb4___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afa91)
  store %struct.Memory* %call_4afa91, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4afa98	 Bytes: 3
  %loadMem_4afa98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afa98 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afa98)
  store %struct.Memory* %call_4afa98, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rcx	 RIP: 4afa9b	 Bytes: 4
  %loadMem_4afa9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afa9b = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afa9b)
  store %struct.Memory* %call_4afa9b, %struct.Memory** %MEMORY

  ; Code: imulq $0xc, %rcx, %rcx	 RIP: 4afa9f	 Bytes: 4
  %loadMem_4afa9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afa9f = call %struct.Memory* @routine_imulq__0xc___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afa9f)
  store %struct.Memory* %call_4afa9f, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4afaa3	 Bytes: 3
  %loadMem_4afaa3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afaa3 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afaa3)
  store %struct.Memory* %call_4afaa3, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 4afaa6	 Bytes: 4
  %loadMem_4afaa6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afaa6 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afaa6)
  store %struct.Memory* %call_4afaa6, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rcx,4), %esi	 RIP: 4afaaa	 Bytes: 3
  %loadMem_4afaaa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afaaa = call %struct.Memory* @routine_movl___rax__rcx_4____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afaaa)
  store %struct.Memory* %call_4afaaa, %struct.Memory** %MEMORY

  ; Code: movq 0x6f9728, %rax	 RIP: 4afaad	 Bytes: 8
  %loadMem_4afaad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afaad = call %struct.Memory* @routine_movq_0x6f9728___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afaad)
  store %struct.Memory* %call_4afaad, %struct.Memory** %MEMORY

  ; Code: movslq -0x8a44(%rbp), %rcx	 RIP: 4afab5	 Bytes: 7
  %loadMem_4afab5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afab5 = call %struct.Memory* @routine_movslq_MINUS0x8a44__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afab5)
  store %struct.Memory* %call_4afab5, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 4afabc	 Bytes: 4
  %loadMem_4afabc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afabc = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afabc)
  store %struct.Memory* %call_4afabc, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rcx	 RIP: 4afac0	 Bytes: 4
  %loadMem_4afac0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afac0 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afac0)
  store %struct.Memory* %call_4afac0, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 4afac4	 Bytes: 4
  %loadMem_4afac4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afac4 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afac4)
  store %struct.Memory* %call_4afac4, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 4afac8	 Bytes: 4
  %loadMem_4afac8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afac8 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afac8)
  store %struct.Memory* %call_4afac8, %struct.Memory** %MEMORY

  ; Code: movl %esi, (%rax,%rcx,4)	 RIP: 4afacc	 Bytes: 3
  %loadMem_4afacc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afacc = call %struct.Memory* @routine_movl__esi____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afacc)
  store %struct.Memory* %call_4afacc, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %eax	 RIP: 4afacf	 Bytes: 3
  %loadMem_4afacf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afacf = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afacf)
  store %struct.Memory* %call_4afacf, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4afad2	 Bytes: 3
  %loadMem_4afad2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afad2 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afad2)
  store %struct.Memory* %call_4afad2, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x28(%rbp)	 RIP: 4afad5	 Bytes: 3
  %loadMem_4afad5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afad5 = call %struct.Memory* @routine_movl__eax__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afad5)
  store %struct.Memory* %call_4afad5, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4afa2d	 RIP: 4afad8	 Bytes: 5
  %loadMem_4afad8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afad8 = call %struct.Memory* @routine_jmpq_.L_4afa2d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afad8, i64 -171, i64 5)
  store %struct.Memory* %call_4afad8, %struct.Memory** %MEMORY

  br label %block_.L_4afa2d

  ; Code: .L_4afadd:	 RIP: 4afadd	 Bytes: 0
block_.L_4afadd:

  ; Code: jmpq .L_4afae2	 RIP: 4afadd	 Bytes: 5
  %loadMem_4afadd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afadd = call %struct.Memory* @routine_jmpq_.L_4afae2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afadd, i64 5, i64 5)
  store %struct.Memory* %call_4afadd, %struct.Memory** %MEMORY

  br label %block_.L_4afae2

  ; Code: .L_4afae2:	 RIP: 4afae2	 Bytes: 0
block_.L_4afae2:

  ; Code: movl -0x24(%rbp), %eax	 RIP: 4afae2	 Bytes: 3
  %loadMem_4afae2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afae2 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afae2)
  store %struct.Memory* %call_4afae2, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4afae5	 Bytes: 3
  %loadMem_4afae5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afae5 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afae5)
  store %struct.Memory* %call_4afae5, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x24(%rbp)	 RIP: 4afae8	 Bytes: 3
  %loadMem_4afae8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afae8 = call %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afae8)
  store %struct.Memory* %call_4afae8, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4afa0f	 RIP: 4afaeb	 Bytes: 5
  %loadMem_4afaeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afaeb = call %struct.Memory* @routine_jmpq_.L_4afa0f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afaeb, i64 -220, i64 5)
  store %struct.Memory* %call_4afaeb, %struct.Memory** %MEMORY

  br label %block_.L_4afa0f

  ; Code: .L_4afaf0:	 RIP: 4afaf0	 Bytes: 0
block_.L_4afaf0:

  ; Code: jmpq .L_4afaf5	 RIP: 4afaf0	 Bytes: 5
  %loadMem_4afaf0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afaf0 = call %struct.Memory* @routine_jmpq_.L_4afaf5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afaf0, i64 5, i64 5)
  store %struct.Memory* %call_4afaf0, %struct.Memory** %MEMORY

  br label %block_.L_4afaf5

  ; Code: .L_4afaf5:	 RIP: 4afaf5	 Bytes: 0
block_.L_4afaf5:

  ; Code: movl -0x8a44(%rbp), %eax	 RIP: 4afaf5	 Bytes: 6
  %loadMem_4afaf5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afaf5 = call %struct.Memory* @routine_movl_MINUS0x8a44__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afaf5)
  store %struct.Memory* %call_4afaf5, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4afafb	 Bytes: 3
  %loadMem_4afafb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afafb = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afafb)
  store %struct.Memory* %call_4afafb, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x8a44(%rbp)	 RIP: 4afafe	 Bytes: 6
  %loadMem_4afafe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afafe = call %struct.Memory* @routine_movl__eax__MINUS0x8a44__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afafe)
  store %struct.Memory* %call_4afafe, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4af9f1	 RIP: 4afb04	 Bytes: 5
  %loadMem_4afb04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afb04 = call %struct.Memory* @routine_jmpq_.L_4af9f1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afb04, i64 -275, i64 5)
  store %struct.Memory* %call_4afb04, %struct.Memory** %MEMORY

  br label %block_.L_4af9f1

  ; Code: .L_4afb09:	 RIP: 4afb09	 Bytes: 0
block_.L_4afb09:

  ; Code: jmpq .L_4afc5b	 RIP: 4afb09	 Bytes: 5
  %loadMem_4afb09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afb09 = call %struct.Memory* @routine_jmpq_.L_4afc5b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afb09, i64 338, i64 5)
  store %struct.Memory* %call_4afb09, %struct.Memory** %MEMORY

  br label %block_.L_4afc5b

  ; Code: .L_4afb0e:	 RIP: 4afb0e	 Bytes: 0
block_.L_4afb0e:

  ; Code: movl $0x0, -0x8a44(%rbp)	 RIP: 4afb0e	 Bytes: 10
  %loadMem_4afb0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afb0e = call %struct.Memory* @routine_movl__0x0__MINUS0x8a44__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afb0e)
  store %struct.Memory* %call_4afb0e, %struct.Memory** %MEMORY

  ; Code: .L_4afb18:	 RIP: 4afb18	 Bytes: 0
  br label %block_.L_4afb18
block_.L_4afb18:

  ; Code: movl -0x8a44(%rbp), %eax	 RIP: 4afb18	 Bytes: 6
  %loadMem_4afb18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afb18 = call %struct.Memory* @routine_movl_MINUS0x8a44__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afb18)
  store %struct.Memory* %call_4afb18, %struct.Memory** %MEMORY

  ; Code: movl -0x328(%rbp), %ecx	 RIP: 4afb1e	 Bytes: 6
  %loadMem_4afb1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afb1e = call %struct.Memory* @routine_movl_MINUS0x328__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afb1e)
  store %struct.Memory* %call_4afb1e, %struct.Memory** %MEMORY

  ; Code: addl $0x2, %ecx	 RIP: 4afb24	 Bytes: 3
  %loadMem_4afb24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afb24 = call %struct.Memory* @routine_addl__0x2___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afb24)
  store %struct.Memory* %call_4afb24, %struct.Memory** %MEMORY

  ; Code: cmpl %ecx, %eax	 RIP: 4afb27	 Bytes: 2
  %loadMem_4afb27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afb27 = call %struct.Memory* @routine_cmpl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afb27)
  store %struct.Memory* %call_4afb27, %struct.Memory** %MEMORY

  ; Code: jge .L_4afc56	 RIP: 4afb29	 Bytes: 6
  %loadMem_4afb29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afb29 = call %struct.Memory* @routine_jge_.L_4afc56(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afb29, i8* %BRANCH_TAKEN, i64 301, i64 6, i64 6)
  store %struct.Memory* %call_4afb29, %struct.Memory** %MEMORY

  %loadBr_4afb29 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4afb29 = icmp eq i8 %loadBr_4afb29, 1
  br i1 %cmpBr_4afb29, label %block_.L_4afc56, label %block_4afb2f

block_4afb2f:
  ; Code: movl $0x0, -0x24(%rbp)	 RIP: 4afb2f	 Bytes: 7
  %loadMem_4afb2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afb2f = call %struct.Memory* @routine_movl__0x0__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afb2f)
  store %struct.Memory* %call_4afb2f, %struct.Memory** %MEMORY

  ; Code: .L_4afb36:	 RIP: 4afb36	 Bytes: 0
  br label %block_.L_4afb36
block_.L_4afb36:

  ; Code: movl -0x24(%rbp), %eax	 RIP: 4afb36	 Bytes: 3
  %loadMem_4afb36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afb36 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afb36)
  store %struct.Memory* %call_4afb36, %struct.Memory** %MEMORY

  ; Code: movslq -0x8a44(%rbp), %rcx	 RIP: 4afb39	 Bytes: 7
  %loadMem_4afb39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afb39 = call %struct.Memory* @routine_movslq_MINUS0x8a44__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afb39)
  store %struct.Memory* %call_4afb39, %struct.Memory** %MEMORY

  ; Code: cmpl 0x7247b0(,%rcx,4), %eax	 RIP: 4afb40	 Bytes: 7
  %loadMem_4afb40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afb40 = call %struct.Memory* @routine_cmpl_0x7247b0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afb40)
  store %struct.Memory* %call_4afb40, %struct.Memory** %MEMORY

  ; Code: jge .L_4afc3d	 RIP: 4afb47	 Bytes: 6
  %loadMem_4afb47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afb47 = call %struct.Memory* @routine_jge_.L_4afc3d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afb47, i8* %BRANCH_TAKEN, i64 246, i64 6, i64 6)
  store %struct.Memory* %call_4afb47, %struct.Memory** %MEMORY

  %loadBr_4afb47 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4afb47 = icmp eq i8 %loadBr_4afb47, 1
  br i1 %cmpBr_4afb47, label %block_.L_4afc3d, label %block_4afb4d

block_4afb4d:
  ; Code: movl $0x1, %eax	 RIP: 4afb4d	 Bytes: 5
  %loadMem_4afb4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afb4d = call %struct.Memory* @routine_movl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afb4d)
  store %struct.Memory* %call_4afb4d, %struct.Memory** %MEMORY

  ; Code: movl 0x70f6d0, %ecx	 RIP: 4afb52	 Bytes: 7
  %loadMem_4afb52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afb52 = call %struct.Memory* @routine_movl_0x70f6d0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afb52)
  store %struct.Memory* %call_4afb52, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 4afb59	 Bytes: 2
  %loadMem_4afb59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afb59 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afb59)
  store %struct.Memory* %call_4afb59, %struct.Memory** %MEMORY

  ; Code: shll %cl, %edx	 RIP: 4afb5b	 Bytes: 2
  %loadMem_4afb5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afb5b = call %struct.Memory* @routine_shll__cl___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afb5b)
  store %struct.Memory* %call_4afb5b, %struct.Memory** %MEMORY

  ; Code: movq 0x6d4740, %rsi	 RIP: 4afb5d	 Bytes: 8
  %loadMem_4afb5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afb5d = call %struct.Memory* @routine_movq_0x6d4740___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afb5d)
  store %struct.Memory* %call_4afb5d, %struct.Memory** %MEMORY

  ; Code: movslq -0x8a44(%rbp), %rdi	 RIP: 4afb65	 Bytes: 7
  %loadMem_4afb65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afb65 = call %struct.Memory* @routine_movslq_MINUS0x8a44__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afb65)
  store %struct.Memory* %call_4afb65, %struct.Memory** %MEMORY

  ; Code: movq (%rsi,%rdi,8), %rsi	 RIP: 4afb6c	 Bytes: 4
  %loadMem_4afb6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afb6c = call %struct.Memory* @routine_movq___rsi__rdi_8____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afb6c)
  store %struct.Memory* %call_4afb6c, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdi	 RIP: 4afb70	 Bytes: 4
  %loadMem_4afb70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afb70 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afb70)
  store %struct.Memory* %call_4afb70, %struct.Memory** %MEMORY

  ; Code: movq (%rsi,%rdi,8), %rsi	 RIP: 4afb74	 Bytes: 4
  %loadMem_4afb74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afb74 = call %struct.Memory* @routine_movq___rsi__rdi_8____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afb74)
  store %struct.Memory* %call_4afb74, %struct.Memory** %MEMORY

  ; Code: movl %edx, (%rsi)	 RIP: 4afb78	 Bytes: 2
  %loadMem_4afb78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afb78 = call %struct.Memory* @routine_movl__edx____rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afb78)
  store %struct.Memory* %call_4afb78, %struct.Memory** %MEMORY

  ; Code: movl 0x7242a0, %ecx	 RIP: 4afb7a	 Bytes: 7
  %loadMem_4afb7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afb7a = call %struct.Memory* @routine_movl_0x7242a0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afb7a)
  store %struct.Memory* %call_4afb7a, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 4afb81	 Bytes: 2
  %loadMem_4afb81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afb81 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afb81)
  store %struct.Memory* %call_4afb81, %struct.Memory** %MEMORY

  ; Code: shll %cl, %edx	 RIP: 4afb83	 Bytes: 2
  %loadMem_4afb83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afb83 = call %struct.Memory* @routine_shll__cl___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afb83)
  store %struct.Memory* %call_4afb83, %struct.Memory** %MEMORY

  ; Code: movq 0x6d4740, %rsi	 RIP: 4afb85	 Bytes: 8
  %loadMem_4afb85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afb85 = call %struct.Memory* @routine_movq_0x6d4740___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afb85)
  store %struct.Memory* %call_4afb85, %struct.Memory** %MEMORY

  ; Code: movslq -0x8a44(%rbp), %rdi	 RIP: 4afb8d	 Bytes: 7
  %loadMem_4afb8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afb8d = call %struct.Memory* @routine_movslq_MINUS0x8a44__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afb8d)
  store %struct.Memory* %call_4afb8d, %struct.Memory** %MEMORY

  ; Code: movq (%rsi,%rdi,8), %rsi	 RIP: 4afb94	 Bytes: 4
  %loadMem_4afb94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afb94 = call %struct.Memory* @routine_movq___rsi__rdi_8____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afb94)
  store %struct.Memory* %call_4afb94, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdi	 RIP: 4afb98	 Bytes: 4
  %loadMem_4afb98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afb98 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afb98)
  store %struct.Memory* %call_4afb98, %struct.Memory** %MEMORY

  ; Code: movq (%rsi,%rdi,8), %rsi	 RIP: 4afb9c	 Bytes: 4
  %loadMem_4afb9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afb9c = call %struct.Memory* @routine_movq___rsi__rdi_8____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afb9c)
  store %struct.Memory* %call_4afb9c, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0x4(%rsi)	 RIP: 4afba0	 Bytes: 3
  %loadMem_4afba0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afba0 = call %struct.Memory* @routine_movl__edx__0x4__rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afba0)
  store %struct.Memory* %call_4afba0, %struct.Memory** %MEMORY

  ; Code: movl 0x7242a0, %ecx	 RIP: 4afba3	 Bytes: 7
  %loadMem_4afba3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afba3 = call %struct.Memory* @routine_movl_0x7242a0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afba3)
  store %struct.Memory* %call_4afba3, %struct.Memory** %MEMORY

  ; Code: shll %cl, %eax	 RIP: 4afbaa	 Bytes: 2
  %loadMem_4afbaa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afbaa = call %struct.Memory* @routine_shll__cl___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afbaa)
  store %struct.Memory* %call_4afbaa, %struct.Memory** %MEMORY

  ; Code: movq 0x6d4740, %rsi	 RIP: 4afbac	 Bytes: 8
  %loadMem_4afbac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afbac = call %struct.Memory* @routine_movq_0x6d4740___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afbac)
  store %struct.Memory* %call_4afbac, %struct.Memory** %MEMORY

  ; Code: movslq -0x8a44(%rbp), %rdi	 RIP: 4afbb4	 Bytes: 7
  %loadMem_4afbb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afbb4 = call %struct.Memory* @routine_movslq_MINUS0x8a44__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afbb4)
  store %struct.Memory* %call_4afbb4, %struct.Memory** %MEMORY

  ; Code: movq (%rsi,%rdi,8), %rsi	 RIP: 4afbbb	 Bytes: 4
  %loadMem_4afbbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afbbb = call %struct.Memory* @routine_movq___rsi__rdi_8____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afbbb)
  store %struct.Memory* %call_4afbbb, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdi	 RIP: 4afbbf	 Bytes: 4
  %loadMem_4afbbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afbbf = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afbbf)
  store %struct.Memory* %call_4afbbf, %struct.Memory** %MEMORY

  ; Code: movq (%rsi,%rdi,8), %rsi	 RIP: 4afbc3	 Bytes: 4
  %loadMem_4afbc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afbc3 = call %struct.Memory* @routine_movq___rsi__rdi_8____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afbc3)
  store %struct.Memory* %call_4afbc3, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x8(%rsi)	 RIP: 4afbc7	 Bytes: 3
  %loadMem_4afbc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afbc7 = call %struct.Memory* @routine_movl__eax__0x8__rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afbc7)
  store %struct.Memory* %call_4afbc7, %struct.Memory** %MEMORY

  ; Code: movq 0x6f9728, %rsi	 RIP: 4afbca	 Bytes: 8
  %loadMem_4afbca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afbca = call %struct.Memory* @routine_movq_0x6f9728___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afbca)
  store %struct.Memory* %call_4afbca, %struct.Memory** %MEMORY

  ; Code: movslq -0x8a44(%rbp), %rdi	 RIP: 4afbd2	 Bytes: 7
  %loadMem_4afbd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afbd2 = call %struct.Memory* @routine_movslq_MINUS0x8a44__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afbd2)
  store %struct.Memory* %call_4afbd2, %struct.Memory** %MEMORY

  ; Code: movq (%rsi,%rdi,8), %rsi	 RIP: 4afbd9	 Bytes: 4
  %loadMem_4afbd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afbd9 = call %struct.Memory* @routine_movq___rsi__rdi_8____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afbd9)
  store %struct.Memory* %call_4afbd9, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdi	 RIP: 4afbdd	 Bytes: 4
  %loadMem_4afbdd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afbdd = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afbdd)
  store %struct.Memory* %call_4afbdd, %struct.Memory** %MEMORY

  ; Code: movq (%rsi,%rdi,8), %rsi	 RIP: 4afbe1	 Bytes: 4
  %loadMem_4afbe1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afbe1 = call %struct.Memory* @routine_movq___rsi__rdi_8____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afbe1)
  store %struct.Memory* %call_4afbe1, %struct.Memory** %MEMORY

  ; Code: movl $0x0, (%rsi)	 RIP: 4afbe5	 Bytes: 6
  %loadMem_4afbe5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afbe5 = call %struct.Memory* @routine_movl__0x0____rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afbe5)
  store %struct.Memory* %call_4afbe5, %struct.Memory** %MEMORY

  ; Code: movq 0x6f9728, %rsi	 RIP: 4afbeb	 Bytes: 8
  %loadMem_4afbeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afbeb = call %struct.Memory* @routine_movq_0x6f9728___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afbeb)
  store %struct.Memory* %call_4afbeb, %struct.Memory** %MEMORY

  ; Code: movslq -0x8a44(%rbp), %rdi	 RIP: 4afbf3	 Bytes: 7
  %loadMem_4afbf3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afbf3 = call %struct.Memory* @routine_movslq_MINUS0x8a44__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afbf3)
  store %struct.Memory* %call_4afbf3, %struct.Memory** %MEMORY

  ; Code: movq (%rsi,%rdi,8), %rsi	 RIP: 4afbfa	 Bytes: 4
  %loadMem_4afbfa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afbfa = call %struct.Memory* @routine_movq___rsi__rdi_8____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afbfa)
  store %struct.Memory* %call_4afbfa, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdi	 RIP: 4afbfe	 Bytes: 4
  %loadMem_4afbfe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afbfe = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afbfe)
  store %struct.Memory* %call_4afbfe, %struct.Memory** %MEMORY

  ; Code: movq (%rsi,%rdi,8), %rsi	 RIP: 4afc02	 Bytes: 4
  %loadMem_4afc02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afc02 = call %struct.Memory* @routine_movq___rsi__rdi_8____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afc02)
  store %struct.Memory* %call_4afc02, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x4(%rsi)	 RIP: 4afc06	 Bytes: 7
  %loadMem_4afc06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afc06 = call %struct.Memory* @routine_movl__0x0__0x4__rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afc06)
  store %struct.Memory* %call_4afc06, %struct.Memory** %MEMORY

  ; Code: movq 0x6f9728, %rsi	 RIP: 4afc0d	 Bytes: 8
  %loadMem_4afc0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afc0d = call %struct.Memory* @routine_movq_0x6f9728___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afc0d)
  store %struct.Memory* %call_4afc0d, %struct.Memory** %MEMORY

  ; Code: movslq -0x8a44(%rbp), %rdi	 RIP: 4afc15	 Bytes: 7
  %loadMem_4afc15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afc15 = call %struct.Memory* @routine_movslq_MINUS0x8a44__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afc15)
  store %struct.Memory* %call_4afc15, %struct.Memory** %MEMORY

  ; Code: movq (%rsi,%rdi,8), %rsi	 RIP: 4afc1c	 Bytes: 4
  %loadMem_4afc1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afc1c = call %struct.Memory* @routine_movq___rsi__rdi_8____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afc1c)
  store %struct.Memory* %call_4afc1c, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdi	 RIP: 4afc20	 Bytes: 4
  %loadMem_4afc20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afc20 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afc20)
  store %struct.Memory* %call_4afc20, %struct.Memory** %MEMORY

  ; Code: movq (%rsi,%rdi,8), %rsi	 RIP: 4afc24	 Bytes: 4
  %loadMem_4afc24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afc24 = call %struct.Memory* @routine_movq___rsi__rdi_8____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afc24)
  store %struct.Memory* %call_4afc24, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x8(%rsi)	 RIP: 4afc28	 Bytes: 7
  %loadMem_4afc28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afc28 = call %struct.Memory* @routine_movl__0x0__0x8__rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afc28)
  store %struct.Memory* %call_4afc28, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %eax	 RIP: 4afc2f	 Bytes: 3
  %loadMem_4afc2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afc2f = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afc2f)
  store %struct.Memory* %call_4afc2f, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4afc32	 Bytes: 3
  %loadMem_4afc32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afc32 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afc32)
  store %struct.Memory* %call_4afc32, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x24(%rbp)	 RIP: 4afc35	 Bytes: 3
  %loadMem_4afc35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afc35 = call %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afc35)
  store %struct.Memory* %call_4afc35, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4afb36	 RIP: 4afc38	 Bytes: 5
  %loadMem_4afc38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afc38 = call %struct.Memory* @routine_jmpq_.L_4afb36(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afc38, i64 -258, i64 5)
  store %struct.Memory* %call_4afc38, %struct.Memory** %MEMORY

  br label %block_.L_4afb36

  ; Code: .L_4afc3d:	 RIP: 4afc3d	 Bytes: 0
block_.L_4afc3d:

  ; Code: jmpq .L_4afc42	 RIP: 4afc3d	 Bytes: 5
  %loadMem_4afc3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afc3d = call %struct.Memory* @routine_jmpq_.L_4afc42(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afc3d, i64 5, i64 5)
  store %struct.Memory* %call_4afc3d, %struct.Memory** %MEMORY

  br label %block_.L_4afc42

  ; Code: .L_4afc42:	 RIP: 4afc42	 Bytes: 0
block_.L_4afc42:

  ; Code: movl -0x8a44(%rbp), %eax	 RIP: 4afc42	 Bytes: 6
  %loadMem_4afc42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afc42 = call %struct.Memory* @routine_movl_MINUS0x8a44__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afc42)
  store %struct.Memory* %call_4afc42, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4afc48	 Bytes: 3
  %loadMem_4afc48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afc48 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afc48)
  store %struct.Memory* %call_4afc48, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x8a44(%rbp)	 RIP: 4afc4b	 Bytes: 6
  %loadMem_4afc4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afc4b = call %struct.Memory* @routine_movl__eax__MINUS0x8a44__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afc4b)
  store %struct.Memory* %call_4afc4b, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4afb18	 RIP: 4afc51	 Bytes: 5
  %loadMem_4afc51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afc51 = call %struct.Memory* @routine_jmpq_.L_4afb18(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afc51, i64 -313, i64 5)
  store %struct.Memory* %call_4afc51, %struct.Memory** %MEMORY

  br label %block_.L_4afb18

  ; Code: .L_4afc56:	 RIP: 4afc56	 Bytes: 0
block_.L_4afc56:

  ; Code: jmpq .L_4afc5b	 RIP: 4afc56	 Bytes: 5
  %loadMem_4afc56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afc56 = call %struct.Memory* @routine_jmpq_.L_4afc5b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afc56, i64 5, i64 5)
  store %struct.Memory* %call_4afc56, %struct.Memory** %MEMORY

  br label %block_.L_4afc5b

  ; Code: .L_4afc5b:	 RIP: 4afc5b	 Bytes: 0
block_.L_4afc5b:

  ; Code: movl $0x0, -0x4(%rbp)	 RIP: 4afc5b	 Bytes: 7
  %loadMem_4afc5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afc5b = call %struct.Memory* @routine_movl__0x0__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afc5b)
  store %struct.Memory* %call_4afc5b, %struct.Memory** %MEMORY

  ; Code: .L_4afc62:	 RIP: 4afc62	 Bytes: 0
  br label %block_.L_4afc62
block_.L_4afc62:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 4afc62	 Bytes: 3
  %loadMem_4afc62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afc62 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afc62)
  store %struct.Memory* %call_4afc62, %struct.Memory** %MEMORY

  ; Code: cmpl 0x7247b0, %eax	 RIP: 4afc65	 Bytes: 7
  %loadMem_4afc65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afc65 = call %struct.Memory* @routine_cmpl_0x7247b0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afc65)
  store %struct.Memory* %call_4afc65, %struct.Memory** %MEMORY

  ; Code: jge .L_4afd7d	 RIP: 4afc6c	 Bytes: 6
  %loadMem_4afc6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afc6c = call %struct.Memory* @routine_jge_.L_4afd7d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afc6c, i8* %BRANCH_TAKEN, i64 273, i64 6, i64 6)
  store %struct.Memory* %call_4afc6c, %struct.Memory** %MEMORY

  %loadBr_4afc6c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4afc6c = icmp eq i8 %loadBr_4afc6c, 1
  br i1 %cmpBr_4afc6c, label %block_.L_4afd7d, label %block_4afc72

block_4afc72:
  ; Code: movl $0x0, -0x8(%rbp)	 RIP: 4afc72	 Bytes: 7
  %loadMem_4afc72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afc72 = call %struct.Memory* @routine_movl__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afc72)
  store %struct.Memory* %call_4afc72, %struct.Memory** %MEMORY

  ; Code: .L_4afc79:	 RIP: 4afc79	 Bytes: 0
  br label %block_.L_4afc79
block_.L_4afc79:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 4afc79	 Bytes: 3
  %loadMem_4afc79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afc79 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afc79)
  store %struct.Memory* %call_4afc79, %struct.Memory** %MEMORY

  ; Code: cmpl 0x7247b4, %eax	 RIP: 4afc7c	 Bytes: 7
  %loadMem_4afc7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afc7c = call %struct.Memory* @routine_cmpl_0x7247b4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afc7c)
  store %struct.Memory* %call_4afc7c, %struct.Memory** %MEMORY

  ; Code: jge .L_4afd6a	 RIP: 4afc83	 Bytes: 6
  %loadMem_4afc83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afc83 = call %struct.Memory* @routine_jge_.L_4afd6a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afc83, i8* %BRANCH_TAKEN, i64 231, i64 6, i64 6)
  store %struct.Memory* %call_4afc83, %struct.Memory** %MEMORY

  %loadBr_4afc83 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4afc83 = icmp eq i8 %loadBr_4afc83, 1
  br i1 %cmpBr_4afc83, label %block_.L_4afd6a, label %block_4afc89

block_4afc89:
  ; Code: movl $0x0, -0x28(%rbp)	 RIP: 4afc89	 Bytes: 7
  %loadMem_4afc89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afc89 = call %struct.Memory* @routine_movl__0x0__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afc89)
  store %struct.Memory* %call_4afc89, %struct.Memory** %MEMORY

  ; Code: .L_4afc90:	 RIP: 4afc90	 Bytes: 0
  br label %block_.L_4afc90
block_.L_4afc90:

  ; Code: cmpl $0x3, -0x28(%rbp)	 RIP: 4afc90	 Bytes: 4
  %loadMem_4afc90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afc90 = call %struct.Memory* @routine_cmpl__0x3__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afc90)
  store %struct.Memory* %call_4afc90, %struct.Memory** %MEMORY

  ; Code: jge .L_4afd57	 RIP: 4afc94	 Bytes: 6
  %loadMem_4afc94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afc94 = call %struct.Memory* @routine_jge_.L_4afd57(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afc94, i8* %BRANCH_TAKEN, i64 195, i64 6, i64 6)
  store %struct.Memory* %call_4afc94, %struct.Memory** %MEMORY

  %loadBr_4afc94 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4afc94 = icmp eq i8 %loadBr_4afc94, 1
  br i1 %cmpBr_4afc94, label %block_.L_4afd57, label %block_4afc9a

block_4afc9a:
  ; Code: cmpl $0x0, -0x28(%rbp)	 RIP: 4afc9a	 Bytes: 4
  %loadMem_4afc9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afc9a = call %struct.Memory* @routine_cmpl__0x0__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afc9a)
  store %struct.Memory* %call_4afc9a, %struct.Memory** %MEMORY

  ; Code: jne .L_4afcb6	 RIP: 4afc9e	 Bytes: 6
  %loadMem_4afc9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afc9e = call %struct.Memory* @routine_jne_.L_4afcb6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afc9e, i8* %BRANCH_TAKEN, i64 24, i64 6, i64 6)
  store %struct.Memory* %call_4afc9e, %struct.Memory** %MEMORY

  %loadBr_4afc9e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4afc9e = icmp eq i8 %loadBr_4afc9e, 1
  br i1 %cmpBr_4afc9e, label %block_.L_4afcb6, label %block_4afca4

block_4afca4:
  ; Code: movl 0x70f6d0, %eax	 RIP: 4afca4	 Bytes: 7
  %loadMem_4afca4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afca4 = call %struct.Memory* @routine_movl_0x70f6d0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afca4)
  store %struct.Memory* %call_4afca4, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x8a90(%rbp)	 RIP: 4afcab	 Bytes: 6
  %loadMem_4afcab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afcab = call %struct.Memory* @routine_movl__eax__MINUS0x8a90__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afcab)
  store %struct.Memory* %call_4afcab, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4afcc3	 RIP: 4afcb1	 Bytes: 5
  %loadMem_4afcb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afcb1 = call %struct.Memory* @routine_jmpq_.L_4afcc3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afcb1, i64 18, i64 5)
  store %struct.Memory* %call_4afcb1, %struct.Memory** %MEMORY

  br label %block_.L_4afcc3

  ; Code: .L_4afcb6:	 RIP: 4afcb6	 Bytes: 0
block_.L_4afcb6:

  ; Code: movl 0x7242a0, %eax	 RIP: 4afcb6	 Bytes: 7
  %loadMem_4afcb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afcb6 = call %struct.Memory* @routine_movl_0x7242a0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afcb6)
  store %struct.Memory* %call_4afcb6, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x8a90(%rbp)	 RIP: 4afcbd	 Bytes: 6
  %loadMem_4afcbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afcbd = call %struct.Memory* @routine_movl__eax__MINUS0x8a90__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afcbd)
  store %struct.Memory* %call_4afcbd, %struct.Memory** %MEMORY

  ; Code: .L_4afcc3:	 RIP: 4afcc3	 Bytes: 0
  br label %block_.L_4afcc3
block_.L_4afcc3:

  ; Code: movl -0x8a90(%rbp), %eax	 RIP: 4afcc3	 Bytes: 6
  %loadMem_4afcc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afcc3 = call %struct.Memory* @routine_movl_MINUS0x8a90__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afcc3)
  store %struct.Memory* %call_4afcc3, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x304(%rbp)	 RIP: 4afcc9	 Bytes: 6
  %loadMem_4afcc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afcc9 = call %struct.Memory* @routine_movl__eax__MINUS0x304__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afcc9)
  store %struct.Memory* %call_4afcc9, %struct.Memory** %MEMORY

  ; Code: movq 0x6d4740, %rcx	 RIP: 4afccf	 Bytes: 8
  %loadMem_4afccf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afccf = call %struct.Memory* @routine_movq_0x6d4740___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afccf)
  store %struct.Memory* %call_4afccf, %struct.Memory** %MEMORY

  ; Code: movq (%rcx), %rcx	 RIP: 4afcd7	 Bytes: 3
  %loadMem_4afcd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afcd7 = call %struct.Memory* @routine_movq___rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afcd7)
  store %struct.Memory* %call_4afcd7, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rdx	 RIP: 4afcda	 Bytes: 4
  %loadMem_4afcda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afcda = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afcda)
  store %struct.Memory* %call_4afcda, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 4afcde	 Bytes: 4
  %loadMem_4afcde = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afcde = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afcde)
  store %struct.Memory* %call_4afcde, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdx	 RIP: 4afce2	 Bytes: 4
  %loadMem_4afce2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afce2 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afce2)
  store %struct.Memory* %call_4afce2, %struct.Memory** %MEMORY

  ; Code: movl (%rcx,%rdx,4), %eax	 RIP: 4afce6	 Bytes: 3
  %loadMem_4afce6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afce6 = call %struct.Memory* @routine_movl___rcx__rdx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afce6)
  store %struct.Memory* %call_4afce6, %struct.Memory** %MEMORY

  ; Code: movq 0x70fcf8, %rcx	 RIP: 4afce9	 Bytes: 8
  %loadMem_4afce9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afce9 = call %struct.Memory* @routine_movq_0x70fcf8___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afce9)
  store %struct.Memory* %call_4afce9, %struct.Memory** %MEMORY

  ; Code: movq (%rcx), %rcx	 RIP: 4afcf1	 Bytes: 3
  %loadMem_4afcf1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afcf1 = call %struct.Memory* @routine_movq___rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afcf1)
  store %struct.Memory* %call_4afcf1, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rdx	 RIP: 4afcf4	 Bytes: 4
  %loadMem_4afcf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afcf4 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afcf4)
  store %struct.Memory* %call_4afcf4, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 4afcf8	 Bytes: 4
  %loadMem_4afcf8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afcf8 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afcf8)
  store %struct.Memory* %call_4afcf8, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdx	 RIP: 4afcfc	 Bytes: 4
  %loadMem_4afcfc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afcfc = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afcfc)
  store %struct.Memory* %call_4afcfc, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 4afd00	 Bytes: 4
  %loadMem_4afd00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afd00 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afd00)
  store %struct.Memory* %call_4afd00, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdx	 RIP: 4afd04	 Bytes: 4
  %loadMem_4afd04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afd04 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afd04)
  store %struct.Memory* %call_4afd04, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx,%rdx,4)	 RIP: 4afd08	 Bytes: 3
  %loadMem_4afd08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afd08 = call %struct.Memory* @routine_movl__eax____rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afd08)
  store %struct.Memory* %call_4afd08, %struct.Memory** %MEMORY

  ; Code: movq 0x6d4740, %rcx	 RIP: 4afd0b	 Bytes: 8
  %loadMem_4afd0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afd0b = call %struct.Memory* @routine_movq_0x6d4740___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afd0b)
  store %struct.Memory* %call_4afd0b, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rcx), %rcx	 RIP: 4afd13	 Bytes: 4
  %loadMem_4afd13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afd13 = call %struct.Memory* @routine_movq_0x8__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afd13)
  store %struct.Memory* %call_4afd13, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdx	 RIP: 4afd17	 Bytes: 4
  %loadMem_4afd17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afd17 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afd17)
  store %struct.Memory* %call_4afd17, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 4afd1b	 Bytes: 4
  %loadMem_4afd1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afd1b = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afd1b)
  store %struct.Memory* %call_4afd1b, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdx	 RIP: 4afd1f	 Bytes: 4
  %loadMem_4afd1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afd1f = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afd1f)
  store %struct.Memory* %call_4afd1f, %struct.Memory** %MEMORY

  ; Code: movl (%rcx,%rdx,4), %eax	 RIP: 4afd23	 Bytes: 3
  %loadMem_4afd23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afd23 = call %struct.Memory* @routine_movl___rcx__rdx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afd23)
  store %struct.Memory* %call_4afd23, %struct.Memory** %MEMORY

  ; Code: movq 0x70fcf8, %rcx	 RIP: 4afd26	 Bytes: 8
  %loadMem_4afd26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afd26 = call %struct.Memory* @routine_movq_0x70fcf8___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afd26)
  store %struct.Memory* %call_4afd26, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rcx), %rcx	 RIP: 4afd2e	 Bytes: 4
  %loadMem_4afd2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afd2e = call %struct.Memory* @routine_movq_0x8__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afd2e)
  store %struct.Memory* %call_4afd2e, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rdx	 RIP: 4afd32	 Bytes: 4
  %loadMem_4afd32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afd32 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afd32)
  store %struct.Memory* %call_4afd32, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 4afd36	 Bytes: 4
  %loadMem_4afd36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afd36 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afd36)
  store %struct.Memory* %call_4afd36, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdx	 RIP: 4afd3a	 Bytes: 4
  %loadMem_4afd3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afd3a = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afd3a)
  store %struct.Memory* %call_4afd3a, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 4afd3e	 Bytes: 4
  %loadMem_4afd3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afd3e = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afd3e)
  store %struct.Memory* %call_4afd3e, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdx	 RIP: 4afd42	 Bytes: 4
  %loadMem_4afd42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afd42 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afd42)
  store %struct.Memory* %call_4afd42, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx,%rdx,4)	 RIP: 4afd46	 Bytes: 3
  %loadMem_4afd46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afd46 = call %struct.Memory* @routine_movl__eax____rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afd46)
  store %struct.Memory* %call_4afd46, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %eax	 RIP: 4afd49	 Bytes: 3
  %loadMem_4afd49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afd49 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afd49)
  store %struct.Memory* %call_4afd49, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4afd4c	 Bytes: 3
  %loadMem_4afd4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afd4c = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afd4c)
  store %struct.Memory* %call_4afd4c, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x28(%rbp)	 RIP: 4afd4f	 Bytes: 3
  %loadMem_4afd4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afd4f = call %struct.Memory* @routine_movl__eax__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afd4f)
  store %struct.Memory* %call_4afd4f, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4afc90	 RIP: 4afd52	 Bytes: 5
  %loadMem_4afd52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afd52 = call %struct.Memory* @routine_jmpq_.L_4afc90(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afd52, i64 -194, i64 5)
  store %struct.Memory* %call_4afd52, %struct.Memory** %MEMORY

  br label %block_.L_4afc90

  ; Code: .L_4afd57:	 RIP: 4afd57	 Bytes: 0
block_.L_4afd57:

  ; Code: jmpq .L_4afd5c	 RIP: 4afd57	 Bytes: 5
  %loadMem_4afd57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afd57 = call %struct.Memory* @routine_jmpq_.L_4afd5c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afd57, i64 5, i64 5)
  store %struct.Memory* %call_4afd57, %struct.Memory** %MEMORY

  br label %block_.L_4afd5c

  ; Code: .L_4afd5c:	 RIP: 4afd5c	 Bytes: 0
block_.L_4afd5c:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 4afd5c	 Bytes: 3
  %loadMem_4afd5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afd5c = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afd5c)
  store %struct.Memory* %call_4afd5c, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4afd5f	 Bytes: 3
  %loadMem_4afd5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afd5f = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afd5f)
  store %struct.Memory* %call_4afd5f, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x8(%rbp)	 RIP: 4afd62	 Bytes: 3
  %loadMem_4afd62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afd62 = call %struct.Memory* @routine_movl__eax__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afd62)
  store %struct.Memory* %call_4afd62, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4afc79	 RIP: 4afd65	 Bytes: 5
  %loadMem_4afd65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afd65 = call %struct.Memory* @routine_jmpq_.L_4afc79(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afd65, i64 -236, i64 5)
  store %struct.Memory* %call_4afd65, %struct.Memory** %MEMORY

  br label %block_.L_4afc79

  ; Code: .L_4afd6a:	 RIP: 4afd6a	 Bytes: 0
block_.L_4afd6a:

  ; Code: jmpq .L_4afd6f	 RIP: 4afd6a	 Bytes: 5
  %loadMem_4afd6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afd6a = call %struct.Memory* @routine_jmpq_.L_4afd6f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afd6a, i64 5, i64 5)
  store %struct.Memory* %call_4afd6a, %struct.Memory** %MEMORY

  br label %block_.L_4afd6f

  ; Code: .L_4afd6f:	 RIP: 4afd6f	 Bytes: 0
block_.L_4afd6f:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 4afd6f	 Bytes: 3
  %loadMem_4afd6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afd6f = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afd6f)
  store %struct.Memory* %call_4afd6f, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4afd72	 Bytes: 3
  %loadMem_4afd72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afd72 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afd72)
  store %struct.Memory* %call_4afd72, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4(%rbp)	 RIP: 4afd75	 Bytes: 3
  %loadMem_4afd75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afd75 = call %struct.Memory* @routine_movl__eax__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afd75)
  store %struct.Memory* %call_4afd75, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4afc62	 RIP: 4afd78	 Bytes: 5
  %loadMem_4afd78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afd78 = call %struct.Memory* @routine_jmpq_.L_4afc62(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afd78, i64 -278, i64 5)
  store %struct.Memory* %call_4afd78, %struct.Memory** %MEMORY

  br label %block_.L_4afc62

  ; Code: .L_4afd7d:	 RIP: 4afd7d	 Bytes: 0
block_.L_4afd7d:

  ; Code: jmpq .L_4afd82	 RIP: 4afd7d	 Bytes: 5
  %loadMem_4afd7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afd7d = call %struct.Memory* @routine_jmpq_.L_4afd82(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afd7d, i64 5, i64 5)
  store %struct.Memory* %call_4afd7d, %struct.Memory** %MEMORY

  br label %block_.L_4afd82

  ; Code: .L_4afd82:	 RIP: 4afd82	 Bytes: 0
block_.L_4afd82:

  ; Code: addq $0x8a90, %rsp	 RIP: 4afd82	 Bytes: 7
  %loadMem_4afd82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afd82 = call %struct.Memory* @routine_addq__0x8a90___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afd82)
  store %struct.Memory* %call_4afd82, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 4afd89	 Bytes: 1
  %loadMem_4afd89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afd89 = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afd89)
  store %struct.Memory* %call_4afd89, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 4afd8a	 Bytes: 1
  %loadMem_4afd8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4afd8a = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4afd8a)
  store %struct.Memory* %call_4afd8a, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_4afd8a
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

define %struct.Memory* @routine_subq__0x8a90___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 35472)
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i8* nocapture readonly) #7 {
  %5 = bitcast i8* %3 to double*
  %6 = load double, double* %5, align 1
  %7 = inttoptr i64 %2 to double*
  store double %6, double* %7
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x20__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 32
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
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

define %struct.Memory* @routine_je_.L_4ae821(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = sext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movslq_0xc__rcx____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 12
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %10)
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__eax__MINUS0x8a58__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 35416
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


define %struct.Memory* @routine_movl_MINUS0x8a58__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 35416
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


define %struct.Memory* @routine_movl__esi__MINUS0x8a5c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 35420
  %14 = load i32, i32* %ESI
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

define %struct.Memory* @routine_jmpq_.L_4ae82e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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


define %struct.Memory* @routine_movl__eax__MINUS0x8a5c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 35420
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movl_MINUS0x8a5c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 35420
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__eax__MINUS0x328__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 808
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movq_0x6d4690___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G_0x6d4690_type* @G_0x6d4690 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_cmpl__0x2__0xc4__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 196
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
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

define %struct.Memory* @routine_jne_.L_4ae86a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0x5__0x70f6d0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x70f6d0_type* @G_0x70f6d0 to i64), i64 5)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movl__0x5__0x7242a0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x7242a0_type* @G_0x7242a0 to i64), i64 5)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_jmpq_.L_4ae880(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movl__0x6__0x70f6d0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x70f6d0_type* @G_0x70f6d0 to i64), i64 6)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movl__0x6__0x7242a0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x7242a0_type* @G_0x7242a0 to i64), i64 6)
  ret %struct.Memory* %8
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


define %struct.Memory* @routine_movl_0x70f6d0___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G_0x70f6d0_type* @G_0x70f6d0 to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_movl__edx__0x7107a0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x7107a0_type* @G_0x7107a0 to i64), i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_0x7242a0___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G_0x7242a0_type* @G_0x7242a0 to i64))
  ret %struct.Memory* %11
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






define %struct.Memory* @routine_movl__edx__0x710790(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x710790_type* @G_0x710790 to i64), i64 %10)
  ret %struct.Memory* %13
}








define %struct.Memory* @routine_movl__edx__MINUS0x324__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 804
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_0x7242a0___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G_0x7242a0_type* @G_0x7242a0 to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movl__edx__MINUS0x320__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 800
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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


define %struct.Memory* @routine_movl__eax__MINUS0x31c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 796
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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


define %struct.Memory* @routine_movl_MINUS0x328__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 808
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
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

define %struct.Memory* @routine_addl__0x2___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 2)
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

define %struct.Memory* @routine_jge_.L_4aea07(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_cmpl_0x7247b0___rcx_4____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = add i64 %15, 7489456
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 7
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_jge_.L_4ae9f4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x3__MINUS0xc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 3)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_4ae9e1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_leaq_MINUS0x760__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 1888
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_leaq_MINUS0xba0__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 2976
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
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


define %struct.Memory* @routine_movl_MINUS0x324__rbp__rdx_4____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RDX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -804
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %19)
  ret %struct.Memory* %22
}


define %struct.Memory* @routine_movq_0x6d4740___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G_0x6d4740_type* @G_0x6d4740 to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_movq___rdx__rdi_8____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = mul i64 %13, 8
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %15)
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


define %struct.Memory* @routine_movl__esi____rdx__rdi_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 11
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RDX
  %16 = load i64, i64* %RDI
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


define %struct.Memory* @routine_movq_0x6f9728___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G_0x6f9728_type* @G_0x6f9728 to i64))
  ret %struct.Memory* %11
}












define %struct.Memory* @routine_movl__0x0____rdx__rdi_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = mul i64 %13, 4
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 7
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %15, i64 0)
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


define %struct.Memory* @routine_imulq__0xb4___rdx___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 180)
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


define %struct.Memory* @routine_imulq__0xc___rdx___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 12)
  ret %struct.Memory* %12
}






define %struct.Memory* @routine_movl__0x0____rcx__rdx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = mul i64 %13, 4
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 7
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %15, i64 0)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x324__rbp__rcx_4____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -804
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %19)
  ret %struct.Memory* %22
}




define %struct.Memory* @routine_imulq__0xb4___rcx___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 180)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_imulq__0xc___rcx___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 12)
  ret %struct.Memory* %12
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


define %struct.Memory* @routine_jmpq_.L_4ae91f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_4ae9e6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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


define %struct.Memory* @routine_jmpq_.L_4ae904(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_4ae9f9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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


define %struct.Memory* @routine_jmpq_.L_4ae8e9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_cmpl_0x7247b0___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 ptrtoint( %G_0x7247b0_type* @G_0x7247b0 to i64))
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_4aeef3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_cmpl_0x7247b4___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 ptrtoint( %G_0x7247b4_type* @G_0x7247b4 to i64))
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_4aeee0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq_0x722b28___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x722b28_type* @G_0x722b28 to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_movl_0x4__rax____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_0x722b20___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x722b20_type* @G_0x722b20 to i64))
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

define %struct.Memory* @routine_subl_0x4__rax____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = add i64 %13, 4
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_cmpl__0xffffff80___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 -128)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_4aea74(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0xffffff80___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 4294967168)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__eax__MINUS0x8a60__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 35424
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_4aeaeb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


















define %struct.Memory* @routine_cmpl__0x7f___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 127)
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

define %struct.Memory* @routine_jle_.L_4aeab3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x7f___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 127)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__eax__MINUS0x8a64__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 35428
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_4aeadf(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


















define %struct.Memory* @routine_movl__edx__MINUS0x8a64__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 35428
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x8a64__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 35428
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl_MINUS0x8a60__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 35424
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__eax__MINUS0x8a50__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 35408
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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


define %struct.Memory* @routine_movl_0x4__rcx____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_0x722b20___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G_0x722b20_type* @G_0x722b20 to i64))
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


define %struct.Memory* @routine_subl_0x4__rcx____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = add i64 %13, 4
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_cmpl__0xffffff80___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 -128)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_4aeb2e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl__eax__MINUS0x8a68__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 35432
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_4aeb95(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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


define %struct.Memory* @routine_movl_0x4__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
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


define %struct.Memory* @routine_subl_0x4__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = add i64 %13, 4
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_cmpl__0x7f___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 127)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jle_.L_4aeb65(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl__eax__MINUS0x8a6c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 35436
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_4aeb89(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}














define %struct.Memory* @routine_movl__ecx__MINUS0x8a6c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 35436
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x8a6c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 35436
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl_MINUS0x8a68__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 35432
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__eax__MINUS0x8a54__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 35412
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
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


define %struct.Memory* @routine_cmpl__0x3__MINUS0x28__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 3)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_4aeecd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x0__MINUS0x8a50__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 35408
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_4aec84(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_leaq_MINUS0x8a40__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 35392
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_leaq_MINUS0x4af0__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 19184
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
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




define %struct.Memory* @routine_movq__rcx___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12)
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

define %struct.Memory* @routine_addq__0xa8c___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 2700)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_imulq__0xb4___rdi___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %9, i64 180)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_addq__rdi___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_imulq__0xc___rdi___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %9, i64 12)
  ret %struct.Memory* %12
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






















define %struct.Memory* @routine_movl__esi____rcx__rdx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 7
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDX = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RDX
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


define %struct.Memory* @routine_addq__0xa8c___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 2700)
  ret %struct.Memory* %12
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


define %struct.Memory* @routine_jmpq_.L_4aeeba(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_movl_MINUS0x8a50__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 35408
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__eax__MINUS0x8a70__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 35440
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
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




define %struct.Memory* @routine_movl_MINUS0x8a70__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 35440
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


define %struct.Memory* @routine_addl__0x4000___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 5
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 16384)
  ret %struct.Memory* %12
}



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_(%struct.Memory*, %struct.State* dereferenceable(3376), i64) #0 {
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
  %14 = sext i32 %13 to i64
  %15 = shl  i64 %11, 32
  %16 = or i64 %15, %7
  %17 = sdiv i64 %16, %14
  %18 = shl i64 %17, 32
  %19 = ashr exact i64 %18, 32
  %20 = icmp eq i64 %17, %19
  br i1 %20, label %25, label %21

; <label>:21:                                     ; preds = %3
  %22 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %1, i64 %23, %struct.Memory* %0) #21
  br label %37

; <label>:25:                                     ; preds = %3
  %26 = srem i64 %16, %14
  %27 = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0
  %28 = and i64 %17, 4294967295
  store i64 %28, i64* %27, align 8
  %29 = getelementptr inbounds %union.anon, %union.anon* %8, i64 0, i32 0
  %30 = and i64 %26, 4294967295
  store i64 %30, i64* %29, align 8
  %31 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 0, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 0, i8* %32, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 0, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 0, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 0, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 0, i8* %36, align 1
  br label %37

; <label>:37:                                     ; preds = %25, %21
  %38 = phi %struct.Memory* [ %24, %21 ], [ %0, %25 ]
  ret %struct.Memory* %38
}

define %struct.Memory* @routine_idivl_MINUS0x8a50__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 35408
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 6
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %10)
  ret %struct.Memory* %13
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

define %struct.Memory* @routine_imull_MINUS0x8a54__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = sub i64 %13, 35412
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_addl__0x20___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 32)
  ret %struct.Memory* %12
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

define %struct.Memory* @routine_sarl__0x6___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SARI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 6)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_cmpl__0xfffffc00___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 5
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 -1024)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_4aece1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0xfffffc00___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 4294966272)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__eax__MINUS0x8a74__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 35444
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_4aed2e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}










define %struct.Memory* @routine_cmpl__0x3ff___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 5
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1023)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jle_.L_4aed0c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x3ff___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 1023)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__eax__MINUS0x8a78__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 35448
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_4aed22(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}












define %struct.Memory* @routine_movl_MINUS0x8a78__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 35448
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl_MINUS0x8a74__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 35444
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_sarl__0x2___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SARI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 2)
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


define %struct.Memory* @routine_imulq__0xb4___rsi___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 180)
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


define %struct.Memory* @routine_imulq__0xc___rsi___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 12)
  ret %struct.Memory* %12
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


define %struct.Memory* @routine_movl__eax____rdx__rsi_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 9
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RSI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RDX
  %16 = load i64, i64* %RSI
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


















define %struct.Memory* @routine_cmpl__0xffffffc0____rcx__rdx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = mul i64 %13, 4
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %15, i64 -64)
  ret %struct.Memory* %18
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

define %struct.Memory* @routine_jl_.L_4aedd3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_leaq_MINUS0x4af0__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 19184
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addq__0xa8c___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 2700)
  ret %struct.Memory* %12
}
















define %struct.Memory* @routine_cmpl__0x80____rax__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %15, i64 128)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jle_.L_4aee0b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movl_MINUS0x324__rbp__rcx_4____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -804
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %19)
  ret %struct.Memory* %22
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






define %struct.Memory* @routine_movl__0x40___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 64)
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


define %struct.Memory* @routine_addq__0xa8c___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 2700)
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










define %struct.Memory* @routine_subl___rsi__rdi_4____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 11
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RDX
  %16 = load i64, i64* %RSI
  %17 = load i64, i64* %RDI
  %18 = mul i64 %17, 4
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 3
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %15, i64 %19)
  ret %struct.Memory* %22
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










define %struct.Memory* @routine_movl__edx____rcx__rsi_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 9
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RSI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RSI
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




















define %struct.Memory* @routine_movl__0x0____rcx__rsi_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = mul i64 %13, 4
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 7
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %15, i64 0)
  ret %struct.Memory* %18
}


















define %struct.Memory* @routine_jmpq_.L_4aeebf(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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


define %struct.Memory* @routine_jmpq_.L_4aeba8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_4aeed2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_4aea25(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_4aeee5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_4aea0e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movq_0x6d4690___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x6d4690_type* @G_0x6d4690 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_cmpl__0x2__0xc4__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 196
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 2)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_4af38b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jge_.L_4af046(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jge_.L_4af033(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jge_.L_4af020(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x0__MINUS0x28__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_4aef63(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_0x70f6d0___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x70f6d0_type* @G_0x70f6d0 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__eax__MINUS0x8a7c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 35452
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_4aef70(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movl_0x7242a0___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x7242a0_type* @G_0x7242a0 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movl_MINUS0x8a7c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 35452
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__eax__MINUS0x304__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 772
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




















define %struct.Memory* @routine_movl___rdx__rsi_4____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %15 = load i64, i64* %RDX
  %16 = load i64, i64* %RSI
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 3
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %18)
  ret %struct.Memory* %21
}


define %struct.Memory* @routine_movq_0x70fcf8___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G_0x70fcf8_type* @G_0x70fcf8 to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_movq_0x70fcf8___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G_0x70fcf8_type* @G_0x70fcf8 to i64))
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








define %struct.Memory* @routine_jmpq_.L_4aef3d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_4af025(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_4aef26(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_4af038(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_4aef0f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movl__0x0__MINUS0x8a44__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 35396
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_MINUS0x8a44__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 35396
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_jge_.L_4af17c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movslq_MINUS0x8a44__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 35396
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_jge_.L_4af163(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_MINUS0x324__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 804
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_0x6d4740___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G_0x6d4740_type* @G_0x6d4740 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movslq_MINUS0x8a44__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 35396
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movl_MINUS0x320__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 800
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movl_MINUS0x31c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 796
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movq_0x6f9728___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G_0x6f9728_type* @G_0x6f9728 to i64))
  ret %struct.Memory* %11
}










define %struct.Memory* @routine_movl__0x0____rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %9, i64 0)
  ret %struct.Memory* %12
}












define %struct.Memory* @routine_movl__0x0__0x4__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 4
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}












define %struct.Memory* @routine_movl__0x0__0x8__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
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


define %struct.Memory* @routine_jmpq_.L_4af06e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_4af168(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_movl__eax__MINUS0x8a44__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 35396
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_4af050(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jge_.L_4af386(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jge_.L_4af373(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_movl_0x3c__rcx____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 60
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_imull_0x34__rcx____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 52
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_jge_.L_4af25d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_movq_0x1920__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 6432
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWItE2MnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i16* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i16*
  %6 = load i16, i16* %5
  store i16 %6, i16* %2, align 2
  ret %struct.Memory* %0
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








define %struct.Memory* @routine_movq_0x1928__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 6440
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWItE2RnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i16
  %6 = inttoptr i64 %2 to i16*
  store i16 %5, i16* %6
  ret %struct.Memory* %0
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
































define %struct.Memory* @routine_jmpq_.L_4af1b1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}










define %struct.Memory* @routine_addl__0x8___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 8)
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




define %struct.Memory* @routine_jge_.L_4af360(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl_0x34__rcx____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 52
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_jge_.L_4af34d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_movq_0x1930__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 6448
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
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










define %struct.Memory* @routine_movq_0x1938__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 6456
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
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


define %struct.Memory* @routine_jmpq_.L_4af287(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_4af352(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_4af264(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_4af365(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_4af19a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_4af378(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_4af183(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_4afd82(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_cmpl_0x3c__rcx____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 60
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_4af407(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_cmpl_0x34__rcx____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 52
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_4af3f4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq_0x277050__rip____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0x277050__rip__type* @G_0x277050__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}







define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i16*
  %6 = load i16, i16* %5
  %7 = zext i16 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movzwl___rax__rcx_2____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %18)
  ret %struct.Memory* %21
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SDI2RnIjEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #0 {
  %5 = trunc i64 %3 to i32
  %6 = sitofp i32 %5 to double
  %7 = bitcast i8* %2 to double*
  store double %6, double* %7, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_cvtsi2sdl__edx___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EDX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i32, i32* %EDX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SDI2RnIjEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
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

define %struct.Memory* @routine_addsd_MINUS0x20__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 32
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}










define %struct.Memory* @routine_jmpq_.L_4af3ad(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_4af3f9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_4af392(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}












define %struct.Memory* @routine_jge_.L_4af9d2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_jge_.L_4af9b9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_leaq_MINUS0x300__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 768
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_imulq__0x78___rcx___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 120)
  ret %struct.Memory* %12
}






define %struct.Memory* @routine_movsd__xmm0____rax__rcx_8_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %13 to %union.vec128_t*
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %RCX
  %16 = mul i64 %15, 8
  %17 = add i64 %16, %14
  %18 = bitcast %union.vec128_t* %XMM0 to i8*
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 5
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %17, i8* %18)
  ret %struct.Memory* %21
}


define %struct.Memory* @routine_movslq_MINUS0x8a44__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 35396
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_0x722b20___rax_8____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = mul i64 %9, 8
  %11 = add i64 %10, 7482144
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 8
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %11)
  ret %struct.Memory* %14
}







define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = inttoptr i64 %2 to i64*
  store i64 %3, i64* %5
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__rax__MINUS0x310__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 784
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}












define %struct.Memory* @routine_movq__rax__MINUS0x318__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 792
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}
















define %struct.Memory* @routine_jge_.L_4af51e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movq_MINUS0x310__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 784
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_cvtsi2sdl__esi___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %ESI = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i32, i32* %ESI
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SDI2RnIjEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_addsd___rax__rcx_8____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %15 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %16 = load i64, i64* %RAX
  %17 = load i64, i64* %RCX
  %18 = mul i64 %17, 8
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 5
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %14, i8* %15, i64 %19)
  ret %struct.Memory* %22
}










define %struct.Memory* @routine_jmpq_.L_4af4b8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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

define %struct.Memory* @routine_movsd___rax__rcx_8____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 8
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 5
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %14, i64 %18)
  ret %struct.Memory* %21
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


define %struct.Memory* @routine_jne_.L_4af554(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L2JPEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i8* nocapture, i64, i64) #2 {
  %6 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  %7 = load i8, i8* %6, align 1
  store i8 %7, i8* %2, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  %9 = icmp ne i8 %7, 0
  %10 = select i1 %9, i64 %3, i64 %4
  store i64 %10, i64* %8, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jp_.L_4af554(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L2JPEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_jmpq_.L_4af59a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movsd_0x232c__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0x232c__rip__type* @G_0x232c__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SDI2MnIjEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory*, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = sitofp i32 %6 to double
  %8 = bitcast i8* %2 to double*
  store double %7, double* %8, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_cvtsi2sdl_MINUS0x324__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 804
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SDI2MnIjEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i64) #0 {
  %6 = bitcast i8* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = getelementptr inbounds i8, i8* %3, i64 8
  %9 = bitcast i8* %8 to i64*
  %10 = load i64, i64* %9, align 1
  %11 = inttoptr i64 %4 to double*
  %12 = load double, double* %11
  %13 = fmul double %7, %12
  %14 = bitcast i8* %2 to double*
  store double %13, double* %14, align 1
  %15 = getelementptr inbounds i8, i8* %2, i64 8
  %16 = bitcast i8* %15 to i64*
  store i64 %10, i64* %16, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_mulsd_MINUS0x20__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 32
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}









define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5DIVSDI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i64) #0 {
  %6 = bitcast i8* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = getelementptr inbounds i8, i8* %3, i64 8
  %9 = bitcast i8* %8 to i64*
  %10 = load i64, i64* %9, align 1
  %11 = inttoptr i64 %4 to double*
  %12 = load double, double* %11
  %13 = fdiv double %7, %12
  %14 = bitcast i8* %2 to double*
  store double %13, double* %14, align 1
  %15 = getelementptr inbounds i8, i8* %2, i64 8
  %16 = bitcast i8* %15 to i64*
  store i64 %10, i64* %16, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_divsd___rax__rcx_8____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %15 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %16 = load i64, i64* %RAX
  %17 = load i64, i64* %RCX
  %18 = mul i64 %17, 8
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 5
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5DIVSDI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %14, i8* %15, i64 %19)
  ret %struct.Memory* %22
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

define %struct.Memory* @routine_addsd__xmm0___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = bitcast %union.vec128_t* %XMM0 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L11CVTSD2SI_32I2VnI8vec128_tEXadL_ZNS_L18FTruncTowardZero64EdEEEEP6MemoryS5_R5State3RnWImET_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i8* nocapture readonly) #0 {
  %5 = bitcast i8* %3 to double*
  %6 = load double, double* %5, align 1
  %7 = tail call double @llvm.trunc.f64(double %6) #22
  %8 = tail call double @llvm.fabs.f64(double %7) #22
  %9 = fcmp ogt double %8, 0x41DFFFFFFFC00000
  %10 = fptosi double %7 to i32
  %11 = zext i32 %10 to i64
  %12 = select i1 %9, i64 2147483648, i64 %11
  store i64 %12, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_cvttsd2si__xmm1___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = bitcast %union.vec128_t* %XMM1 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L11CVTSD2SI_32I2VnI8vec128_tEXadL_ZNS_L18FTruncTowardZero64EdEEEEP6MemoryS5_R5State3RnWImET_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i8* %11)
  ret %struct.Memory* %14
}


define %struct.Memory* @routine_movl__edx__MINUS0x8a48__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 35400
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_4af5a6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_movl__eax__MINUS0x8a48__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 35400
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_cmpl__0xffffffc0__MINUS0x8a48__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 35400
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 -64)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jl_.L_4af5c0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x7f__MINUS0x8a48__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 35400
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 127)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jle_.L_4af5cc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_leaq_MINUS0xba0__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 2976
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_leaq_MINUS0x760__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1888
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__0x0__MINUS0x8a4c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 35404
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_MINUS0x8a48__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 35400
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movslq_MINUS0x8a44__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 35396
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movl_MINUS0x320__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 800
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}
















define %struct.Memory* @routine_movl__edx__0x4__rdi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 4
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x31c__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 796
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}














define %struct.Memory* @routine_movl__edx__0x8__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 8
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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


define %struct.Memory* @routine_addq__rcx___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %RCX
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_movl__0x0____rsi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %9, i64 0)
  ret %struct.Memory* %12
}
















define %struct.Memory* @routine_movl__0x0__0x4__rsi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 4
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}














define %struct.Memory* @routine_movl__0x0__0x8__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}
















define %struct.Memory* @routine_jge_.L_4af7ee(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq_MINUS0x310__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 784
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_imull_MINUS0x8a48__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 35400
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %14)
  ret %struct.Memory* %17
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

define %struct.Memory* @routine_addl_0x7107a0___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 ptrtoint( %G_0x7107a0_type* @G_0x7107a0 to i64))
  ret %struct.Memory* %12
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

define %struct.Memory* @routine_sarl__cl___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SARI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_addl_MINUS0x8a4c__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 35404
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_jge_.L_4af731(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl__eax__MINUS0x8a80__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 35456
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_4af7c8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




















define %struct.Memory* @routine_cmpl_0x11bec__rax____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RAX
  %15 = add i64 %14, 72684
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jle_.L_4af78a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl_0x11bec__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 72684
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__ecx__MINUS0x8a84__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 35460
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_4af7bc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


















define %struct.Memory* @routine_movl__edx__MINUS0x8a84__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 35460
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x8a84__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 35460
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl_MINUS0x8a80__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 35456
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWItE2RnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i16* nocapture, i64) #2 {
  %5 = trunc i64 %3 to i16
  store i16 %5, i16* %2, align 2
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movw__ax___cx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i16, i16* %AX
  %13 = zext i16 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWItE2RnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i16* %CX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_MINUS0x318__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 792
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movw__cx____rdx__rsi_2_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %CX = bitcast %union.anon* %8 to i16*
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
  %19 = load i16, i16* %CX
  %20 = zext i16 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 4
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWItE2RnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %18, i64 %20)
  ret %struct.Memory* %23
}








define %struct.Memory* @routine_jmpq_.L_4af6cd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}
















define %struct.Memory* @routine_jge_.L_4af9a6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
















define %struct.Memory* @routine_jge_.L_4af993(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






























define %struct.Memory* @routine_jge_.L_4af88e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl__eax__MINUS0x8a88__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 35464
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_4af955(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}
































define %struct.Memory* @routine_jle_.L_4af8ff(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movl__ecx__MINUS0x8a8c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 35468
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_4af949(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




























define %struct.Memory* @routine_movl__edx__MINUS0x8a8c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 35468
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x8a8c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 35468
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl_MINUS0x8a88__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 35464
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movq_0x722b20___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G_0x722b20_type* @G_0x722b20 to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movq_0x1938__rdx____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 6456
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %10)
  ret %struct.Memory* %13
}
















define %struct.Memory* @routine_jmpq_.L_4af818(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_4af998(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_4af7f5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_4af9ab(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_4af42f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_4af9be(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_4af411(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_cmpl__0x1__0xc4__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 196
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_4afb0e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_jge_.L_4afb09(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_jge_.L_4afaf0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jge_.L_4afadd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq_0x6f9728___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x6f9728_type* @G_0x6f9728 to i64))
  ret %struct.Memory* %11
}




















define %struct.Memory* @routine_jmpq_.L_4afa2d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_4afae2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_4afa0f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_4afaf5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_4af9f1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_4afc5b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}












define %struct.Memory* @routine_jge_.L_4afc56(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_jge_.L_4afc3d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_movq_0x6d4740___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G_0x6d4740_type* @G_0x6d4740 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movslq_MINUS0x8a44__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 35396
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
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


define %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
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


















define %struct.Memory* @routine_movl__edx__0x4__rsi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 4
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}
















define %struct.Memory* @routine_movl__eax__0x8__rsi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 8
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movq_0x6f9728___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G_0x6f9728_type* @G_0x6f9728 to i64))
  ret %struct.Memory* %11
}


































define %struct.Memory* @routine_movl__0x0__0x8__rsi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}








define %struct.Memory* @routine_jmpq_.L_4afb36(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_4afc42(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_4afb18(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}










define %struct.Memory* @routine_jge_.L_4afd7d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jge_.L_4afd6a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jge_.L_4afd57(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jne_.L_4afcb6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl__eax__MINUS0x8a90__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 35472
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_4afcc3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_movl_MINUS0x8a90__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 35472
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
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
































define %struct.Memory* @routine_jmpq_.L_4afc90(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_4afd5c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_4afc79(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_4afd6f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_4afc62(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_addq__0x8a90___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 35472)
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

