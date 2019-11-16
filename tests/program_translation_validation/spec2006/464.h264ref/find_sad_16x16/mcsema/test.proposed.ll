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

declare %struct.Memory* @sub_44b1b0.getNeighbour(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Data Access Globals
%G_0x6cb8f8_type = type <{ [8 x i8] }>
@G_0x6cb8f8= global %G_0x6cb8f8_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x6cb900_type = type <{ [8 x i8] }>
@G_0x6cb900= global %G_0x6cb900_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x726418_type = type <{ [8 x i8] }>
@G_0x726418= global %G_0x726418_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>


define %struct.Memory* @find_sad_16x16(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .find_sad_16x16:	 RIP: 448f10	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 448f10	 Bytes: 1
  %loadMem_448f10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_448f10 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_448f10)
  store %struct.Memory* %call_448f10, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 448f11	 Bytes: 3
  %loadMem_448f11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_448f11 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_448f11)
  store %struct.Memory* %call_448f11, %struct.Memory** %MEMORY

  ; Code: subq $0xa60, %rsp	 RIP: 448f14	 Bytes: 7
  %loadMem_448f14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_448f14 = call %struct.Memory* @routine_subq__0xa60___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_448f14)
  store %struct.Memory* %call_448f14, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x8(%rbp)	 RIP: 448f1b	 Bytes: 4
  %loadMem_448f1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_448f1b = call %struct.Memory* @routine_movq__rdi__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_448f1b)
  store %struct.Memory* %call_448f1b, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rdi	 RIP: 448f1f	 Bytes: 8
  %loadMem_448f1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_448f1f = call %struct.Memory* @routine_movq_0x6cb900___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_448f1f)
  store %struct.Memory* %call_448f1f, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%rdi), %eax	 RIP: 448f27	 Bytes: 3
  %loadMem_448f27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_448f27 = call %struct.Memory* @routine_movl_0xc__rdi____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_448f27)
  store %struct.Memory* %call_448f27, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x878(%rbp)	 RIP: 448f2a	 Bytes: 6
  %loadMem_448f2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_448f2a = call %struct.Memory* @routine_movl__eax__MINUS0x878__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_448f2a)
  store %struct.Memory* %call_448f2a, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x864(%rbp)	 RIP: 448f30	 Bytes: 10
  %loadMem_448f30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_448f30 = call %struct.Memory* @routine_movl__0x0__MINUS0x864__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_448f30)
  store %struct.Memory* %call_448f30, %struct.Memory** %MEMORY

  ; Code: .L_448f3a:	 RIP: 448f3a	 Bytes: 0
  br label %block_.L_448f3a
block_.L_448f3a:

  ; Code: cmpl $0x11, -0x864(%rbp)	 RIP: 448f3a	 Bytes: 7
  %loadMem_448f3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_448f3a = call %struct.Memory* @routine_cmpl__0x11__MINUS0x864__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_448f3a)
  store %struct.Memory* %call_448f3a, %struct.Memory** %MEMORY

  ; Code: jge .L_448f91	 RIP: 448f41	 Bytes: 6
  %loadMem_448f41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_448f41 = call %struct.Memory* @routine_jge_.L_448f91(%struct.State* %0, i64  0, %struct.Memory* %loadMem_448f41, i8* %BRANCH_TAKEN, i64 80, i64 6, i64 6)
  store %struct.Memory* %call_448f41, %struct.Memory** %MEMORY

  %loadBr_448f41 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_448f41 = icmp eq i8 %loadBr_448f41, 1
  br i1 %cmpBr_448f41, label %block_.L_448f91, label %block_448f47

block_448f47:
  ; Code: movl $0xffffffff, %esi	 RIP: 448f47	 Bytes: 5
  %loadMem_448f47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_448f47 = call %struct.Memory* @routine_movl__0xffffffff___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_448f47)
  store %struct.Memory* %call_448f47, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %ecx	 RIP: 448f4c	 Bytes: 5
  %loadMem_448f4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_448f4c = call %struct.Memory* @routine_movl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_448f4c)
  store %struct.Memory* %call_448f4c, %struct.Memory** %MEMORY

  ; Code: leaq -0xa30(%rbp), %rax	 RIP: 448f51	 Bytes: 7
  %loadMem_448f51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_448f51 = call %struct.Memory* @routine_leaq_MINUS0xa30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_448f51)
  store %struct.Memory* %call_448f51, %struct.Memory** %MEMORY

  ; Code: movl -0x878(%rbp), %edi	 RIP: 448f58	 Bytes: 6
  %loadMem_448f58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_448f58 = call %struct.Memory* @routine_movl_MINUS0x878__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_448f58)
  store %struct.Memory* %call_448f58, %struct.Memory** %MEMORY

  ; Code: movl -0x864(%rbp), %edx	 RIP: 448f5e	 Bytes: 6
  %loadMem_448f5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_448f5e = call %struct.Memory* @routine_movl_MINUS0x864__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_448f5e)
  store %struct.Memory* %call_448f5e, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 448f64	 Bytes: 3
  %loadMem_448f64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_448f64 = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_448f64)
  store %struct.Memory* %call_448f64, %struct.Memory** %MEMORY

  ; Code: movslq -0x864(%rbp), %r8	 RIP: 448f67	 Bytes: 7
  %loadMem_448f67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_448f67 = call %struct.Memory* @routine_movslq_MINUS0x864__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_448f67)
  store %struct.Memory* %call_448f67, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %r8, %r8	 RIP: 448f6e	 Bytes: 4
  %loadMem_448f6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_448f6e = call %struct.Memory* @routine_imulq__0x18___r8___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_448f6e)
  store %struct.Memory* %call_448f6e, %struct.Memory** %MEMORY

  ; Code: addq %r8, %rax	 RIP: 448f72	 Bytes: 3
  %loadMem_448f72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_448f72 = call %struct.Memory* @routine_addq__r8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_448f72)
  store %struct.Memory* %call_448f72, %struct.Memory** %MEMORY

  ; Code: movq %rax, %r8	 RIP: 448f75	 Bytes: 3
  %loadMem_448f75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_448f75 = call %struct.Memory* @routine_movq__rax___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_448f75)
  store %struct.Memory* %call_448f75, %struct.Memory** %MEMORY

  ; Code: callq .getNeighbour	 RIP: 448f78	 Bytes: 5
  %loadMem1_448f78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_448f78 = call %struct.Memory* @routine_callq_.getNeighbour(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_448f78, i64 8760, i64 5, i64 5)
  store %struct.Memory* %call1_448f78, %struct.Memory** %MEMORY

  %loadMem2_448f78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_448f78 = load i64, i64* %3
  %call2_448f78 = call %struct.Memory* @sub_44b1b0.getNeighbour(%struct.State* %0, i64  %loadPC_448f78, %struct.Memory* %loadMem2_448f78)
  store %struct.Memory* %call2_448f78, %struct.Memory** %MEMORY

  ; Code: movl -0x864(%rbp), %eax	 RIP: 448f7d	 Bytes: 6
  %loadMem_448f7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_448f7d = call %struct.Memory* @routine_movl_MINUS0x864__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_448f7d)
  store %struct.Memory* %call_448f7d, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 448f83	 Bytes: 3
  %loadMem_448f83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_448f83 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_448f83)
  store %struct.Memory* %call_448f83, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x864(%rbp)	 RIP: 448f86	 Bytes: 6
  %loadMem_448f86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_448f86 = call %struct.Memory* @routine_movl__eax__MINUS0x864__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_448f86)
  store %struct.Memory* %call_448f86, %struct.Memory** %MEMORY

  ; Code: jmpq .L_448f3a	 RIP: 448f8c	 Bytes: 5
  %loadMem_448f8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_448f8c = call %struct.Memory* @routine_jmpq_.L_448f3a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_448f8c, i64 -82, i64 5)
  store %struct.Memory* %call_448f8c, %struct.Memory** %MEMORY

  br label %block_.L_448f3a

  ; Code: .L_448f91:	 RIP: 448f91	 Bytes: 0
block_.L_448f91:

  ; Code: xorl %esi, %esi	 RIP: 448f91	 Bytes: 2
  %loadMem_448f91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_448f91 = call %struct.Memory* @routine_xorl__esi___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_448f91)
  store %struct.Memory* %call_448f91, %struct.Memory** %MEMORY

  ; Code: movl $0xffffffff, %edx	 RIP: 448f93	 Bytes: 5
  %loadMem_448f93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_448f93 = call %struct.Memory* @routine_movl__0xffffffff___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_448f93)
  store %struct.Memory* %call_448f93, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %ecx	 RIP: 448f98	 Bytes: 5
  %loadMem_448f98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_448f98 = call %struct.Memory* @routine_movl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_448f98)
  store %struct.Memory* %call_448f98, %struct.Memory** %MEMORY

  ; Code: leaq -0x890(%rbp), %r8	 RIP: 448f9d	 Bytes: 7
  %loadMem_448f9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_448f9d = call %struct.Memory* @routine_leaq_MINUS0x890__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_448f9d)
  store %struct.Memory* %call_448f9d, %struct.Memory** %MEMORY

  ; Code: movl -0x878(%rbp), %edi	 RIP: 448fa4	 Bytes: 6
  %loadMem_448fa4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_448fa4 = call %struct.Memory* @routine_movl_MINUS0x878__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_448fa4)
  store %struct.Memory* %call_448fa4, %struct.Memory** %MEMORY

  ; Code: callq .getNeighbour	 RIP: 448faa	 Bytes: 5
  %loadMem1_448faa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_448faa = call %struct.Memory* @routine_callq_.getNeighbour(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_448faa, i64 8710, i64 5, i64 5)
  store %struct.Memory* %call1_448faa, %struct.Memory** %MEMORY

  %loadMem2_448faa = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_448faa = load i64, i64* %3
  %call2_448faa = call %struct.Memory* @sub_44b1b0.getNeighbour(%struct.State* %0, i64  %loadPC_448faa, %struct.Memory* %loadMem2_448faa)
  store %struct.Memory* %call2_448faa, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %r8	 RIP: 448faf	 Bytes: 8
  %loadMem_448faf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_448faf = call %struct.Memory* @routine_movq_0x6cb8f8___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_448faf)
  store %struct.Memory* %call_448faf, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0xd8(%r8)	 RIP: 448fb7	 Bytes: 8
  %loadMem_448fb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_448fb7 = call %struct.Memory* @routine_cmpl__0x0__0xd8__r8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_448fb7)
  store %struct.Memory* %call_448fb7, %struct.Memory** %MEMORY

  ; Code: jne .L_448fee	 RIP: 448fbf	 Bytes: 6
  %loadMem_448fbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_448fbf = call %struct.Memory* @routine_jne_.L_448fee(%struct.State* %0, i64  0, %struct.Memory* %loadMem_448fbf, i8* %BRANCH_TAKEN, i64 47, i64 6, i64 6)
  store %struct.Memory* %call_448fbf, %struct.Memory** %MEMORY

  %loadBr_448fbf = load i8, i8* %BRANCH_TAKEN
  %cmpBr_448fbf = icmp eq i8 %loadBr_448fbf, 1
  br i1 %cmpBr_448fbf, label %block_.L_448fee, label %block_448fc5

block_448fc5:
  ; Code: movl -0x890(%rbp), %eax	 RIP: 448fc5	 Bytes: 6
  %loadMem_448fc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_448fc5 = call %struct.Memory* @routine_movl_MINUS0x890__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_448fc5)
  store %struct.Memory* %call_448fc5, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xa34(%rbp)	 RIP: 448fcb	 Bytes: 6
  %loadMem_448fcb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_448fcb = call %struct.Memory* @routine_movl__eax__MINUS0xa34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_448fcb)
  store %struct.Memory* %call_448fcb, %struct.Memory** %MEMORY

  ; Code: movl -0xa18(%rbp), %eax	 RIP: 448fd1	 Bytes: 6
  %loadMem_448fd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_448fd1 = call %struct.Memory* @routine_movl_MINUS0xa18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_448fd1)
  store %struct.Memory* %call_448fd1, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xa38(%rbp)	 RIP: 448fd7	 Bytes: 6
  %loadMem_448fd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_448fd7 = call %struct.Memory* @routine_movl__eax__MINUS0xa38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_448fd7)
  store %struct.Memory* %call_448fd7, %struct.Memory** %MEMORY

  ; Code: movl -0xa30(%rbp), %eax	 RIP: 448fdd	 Bytes: 6
  %loadMem_448fdd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_448fdd = call %struct.Memory* @routine_movl_MINUS0xa30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_448fdd)
  store %struct.Memory* %call_448fdd, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xa3c(%rbp)	 RIP: 448fe3	 Bytes: 6
  %loadMem_448fe3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_448fe3 = call %struct.Memory* @routine_movl__eax__MINUS0xa3c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_448fe3)
  store %struct.Memory* %call_448fe3, %struct.Memory** %MEMORY

  ; Code: jmpq .L_44912a	 RIP: 448fe9	 Bytes: 5
  %loadMem_448fe9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_448fe9 = call %struct.Memory* @routine_jmpq_.L_44912a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_448fe9, i64 321, i64 5)
  store %struct.Memory* %call_448fe9, %struct.Memory** %MEMORY

  br label %block_.L_44912a

  ; Code: .L_448fee:	 RIP: 448fee	 Bytes: 0
block_.L_448fee:

  ; Code: cmpl $0x0, -0x890(%rbp)	 RIP: 448fee	 Bytes: 7
  %loadMem_448fee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_448fee = call %struct.Memory* @routine_cmpl__0x0__MINUS0x890__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_448fee)
  store %struct.Memory* %call_448fee, %struct.Memory** %MEMORY

  ; Code: je .L_44901f	 RIP: 448ff5	 Bytes: 6
  %loadMem_448ff5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_448ff5 = call %struct.Memory* @routine_je_.L_44901f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_448ff5, i8* %BRANCH_TAKEN, i64 42, i64 6, i64 6)
  store %struct.Memory* %call_448ff5, %struct.Memory** %MEMORY

  %loadBr_448ff5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_448ff5 = icmp eq i8 %loadBr_448ff5, 1
  br i1 %cmpBr_448ff5, label %block_.L_44901f, label %block_448ffb

block_448ffb:
  ; Code: movq 0x6cb900, %rax	 RIP: 448ffb	 Bytes: 8
  %loadMem_448ffb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_448ffb = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_448ffb)
  store %struct.Memory* %call_448ffb, %struct.Memory** %MEMORY

  ; Code: movq 0x11868(%rax), %rax	 RIP: 449003	 Bytes: 7
  %loadMem_449003 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449003 = call %struct.Memory* @routine_movq_0x11868__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449003)
  store %struct.Memory* %call_449003, %struct.Memory** %MEMORY

  ; Code: movslq -0x88c(%rbp), %rcx	 RIP: 44900a	 Bytes: 7
  %loadMem_44900a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44900a = call %struct.Memory* @routine_movslq_MINUS0x88c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44900a)
  store %struct.Memory* %call_44900a, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rcx,4), %edx	 RIP: 449011	 Bytes: 3
  %loadMem_449011 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449011 = call %struct.Memory* @routine_movl___rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449011)
  store %struct.Memory* %call_449011, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0xa40(%rbp)	 RIP: 449014	 Bytes: 6
  %loadMem_449014 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449014 = call %struct.Memory* @routine_movl__edx__MINUS0xa40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449014)
  store %struct.Memory* %call_449014, %struct.Memory** %MEMORY

  ; Code: jmpq .L_44902c	 RIP: 44901a	 Bytes: 5
  %loadMem_44901a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44901a = call %struct.Memory* @routine_jmpq_.L_44902c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44901a, i64 18, i64 5)
  store %struct.Memory* %call_44901a, %struct.Memory** %MEMORY

  br label %block_.L_44902c

  ; Code: .L_44901f:	 RIP: 44901f	 Bytes: 0
block_.L_44901f:

  ; Code: xorl %eax, %eax	 RIP: 44901f	 Bytes: 2
  %loadMem_44901f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44901f = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44901f)
  store %struct.Memory* %call_44901f, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xa40(%rbp)	 RIP: 449021	 Bytes: 6
  %loadMem_449021 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449021 = call %struct.Memory* @routine_movl__eax__MINUS0xa40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449021)
  store %struct.Memory* %call_449021, %struct.Memory** %MEMORY

  ; Code: jmpq .L_44902c	 RIP: 449027	 Bytes: 5
  %loadMem_449027 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449027 = call %struct.Memory* @routine_jmpq_.L_44902c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449027, i64 5, i64 5)
  store %struct.Memory* %call_449027, %struct.Memory** %MEMORY

  br label %block_.L_44902c

  ; Code: .L_44902c:	 RIP: 44902c	 Bytes: 0
block_.L_44902c:

  ; Code: movl -0xa40(%rbp), %eax	 RIP: 44902c	 Bytes: 6
  %loadMem_44902c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44902c = call %struct.Memory* @routine_movl_MINUS0xa40__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44902c)
  store %struct.Memory* %call_44902c, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xa34(%rbp)	 RIP: 449032	 Bytes: 6
  %loadMem_449032 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449032 = call %struct.Memory* @routine_movl__eax__MINUS0xa34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449032)
  store %struct.Memory* %call_449032, %struct.Memory** %MEMORY

  ; Code: movl $0x1, -0x864(%rbp)	 RIP: 449038	 Bytes: 10
  %loadMem_449038 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449038 = call %struct.Memory* @routine_movl__0x1__MINUS0x864__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449038)
  store %struct.Memory* %call_449038, %struct.Memory** %MEMORY

  ; Code: movl $0x1, -0xa38(%rbp)	 RIP: 449042	 Bytes: 10
  %loadMem_449042 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449042 = call %struct.Memory* @routine_movl__0x1__MINUS0xa38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449042)
  store %struct.Memory* %call_449042, %struct.Memory** %MEMORY

  ; Code: .L_44904c:	 RIP: 44904c	 Bytes: 0
  br label %block_.L_44904c
block_.L_44904c:

  ; Code: cmpl $0x11, -0x864(%rbp)	 RIP: 44904c	 Bytes: 7
  %loadMem_44904c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44904c = call %struct.Memory* @routine_cmpl__0x11__MINUS0x864__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44904c)
  store %struct.Memory* %call_44904c, %struct.Memory** %MEMORY

  ; Code: jge .L_4490e0	 RIP: 449053	 Bytes: 6
  %loadMem_449053 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449053 = call %struct.Memory* @routine_jge_.L_4490e0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449053, i8* %BRANCH_TAKEN, i64 141, i64 6, i64 6)
  store %struct.Memory* %call_449053, %struct.Memory** %MEMORY

  %loadBr_449053 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_449053 = icmp eq i8 %loadBr_449053, 1
  br i1 %cmpBr_449053, label %block_.L_4490e0, label %block_449059

block_449059:
  ; Code: leaq -0xa30(%rbp), %rax	 RIP: 449059	 Bytes: 7
  %loadMem_449059 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449059 = call %struct.Memory* @routine_leaq_MINUS0xa30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449059)
  store %struct.Memory* %call_449059, %struct.Memory** %MEMORY

  ; Code: movslq -0x864(%rbp), %rcx	 RIP: 449060	 Bytes: 7
  %loadMem_449060 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449060 = call %struct.Memory* @routine_movslq_MINUS0x864__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449060)
  store %struct.Memory* %call_449060, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rcx, %rcx	 RIP: 449067	 Bytes: 4
  %loadMem_449067 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449067 = call %struct.Memory* @routine_imulq__0x18___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449067)
  store %struct.Memory* %call_449067, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 44906b	 Bytes: 3
  %loadMem_44906b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44906b = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44906b)
  store %struct.Memory* %call_44906b, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, (%rax)	 RIP: 44906e	 Bytes: 3
  %loadMem_44906e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44906e = call %struct.Memory* @routine_cmpl__0x0____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44906e)
  store %struct.Memory* %call_44906e, %struct.Memory** %MEMORY

  ; Code: je .L_4490ad	 RIP: 449071	 Bytes: 6
  %loadMem_449071 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449071 = call %struct.Memory* @routine_je_.L_4490ad(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449071, i8* %BRANCH_TAKEN, i64 60, i64 6, i64 6)
  store %struct.Memory* %call_449071, %struct.Memory** %MEMORY

  %loadBr_449071 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_449071 = icmp eq i8 %loadBr_449071, 1
  br i1 %cmpBr_449071, label %block_.L_4490ad, label %block_449077

block_449077:
  ; Code: leaq -0xa30(%rbp), %rax	 RIP: 449077	 Bytes: 7
  %loadMem_449077 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449077 = call %struct.Memory* @routine_leaq_MINUS0xa30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449077)
  store %struct.Memory* %call_449077, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 44907e	 Bytes: 8
  %loadMem_44907e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44907e = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44907e)
  store %struct.Memory* %call_44907e, %struct.Memory** %MEMORY

  ; Code: movq 0x11868(%rcx), %rcx	 RIP: 449086	 Bytes: 7
  %loadMem_449086 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449086 = call %struct.Memory* @routine_movq_0x11868__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449086)
  store %struct.Memory* %call_449086, %struct.Memory** %MEMORY

  ; Code: movslq -0x864(%rbp), %rdx	 RIP: 44908d	 Bytes: 7
  %loadMem_44908d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44908d = call %struct.Memory* @routine_movslq_MINUS0x864__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44908d)
  store %struct.Memory* %call_44908d, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rdx, %rdx	 RIP: 449094	 Bytes: 4
  %loadMem_449094 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449094 = call %struct.Memory* @routine_imulq__0x18___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449094)
  store %struct.Memory* %call_449094, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 449098	 Bytes: 3
  %loadMem_449098 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449098 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449098)
  store %struct.Memory* %call_449098, %struct.Memory** %MEMORY

  ; Code: movslq 0x4(%rax), %rax	 RIP: 44909b	 Bytes: 4
  %loadMem_44909b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44909b = call %struct.Memory* @routine_movslq_0x4__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44909b)
  store %struct.Memory* %call_44909b, %struct.Memory** %MEMORY

  ; Code: movl (%rcx,%rax,4), %esi	 RIP: 44909f	 Bytes: 3
  %loadMem_44909f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44909f = call %struct.Memory* @routine_movl___rcx__rax_4____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44909f)
  store %struct.Memory* %call_44909f, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0xa44(%rbp)	 RIP: 4490a2	 Bytes: 6
  %loadMem_4490a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4490a2 = call %struct.Memory* @routine_movl__esi__MINUS0xa44__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4490a2)
  store %struct.Memory* %call_4490a2, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4490ba	 RIP: 4490a8	 Bytes: 5
  %loadMem_4490a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4490a8 = call %struct.Memory* @routine_jmpq_.L_4490ba(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4490a8, i64 18, i64 5)
  store %struct.Memory* %call_4490a8, %struct.Memory** %MEMORY

  br label %block_.L_4490ba

  ; Code: .L_4490ad:	 RIP: 4490ad	 Bytes: 0
block_.L_4490ad:

  ; Code: xorl %eax, %eax	 RIP: 4490ad	 Bytes: 2
  %loadMem_4490ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4490ad = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4490ad)
  store %struct.Memory* %call_4490ad, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xa44(%rbp)	 RIP: 4490af	 Bytes: 6
  %loadMem_4490af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4490af = call %struct.Memory* @routine_movl__eax__MINUS0xa44__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4490af)
  store %struct.Memory* %call_4490af, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4490ba	 RIP: 4490b5	 Bytes: 5
  %loadMem_4490b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4490b5 = call %struct.Memory* @routine_jmpq_.L_4490ba(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4490b5, i64 5, i64 5)
  store %struct.Memory* %call_4490b5, %struct.Memory** %MEMORY

  br label %block_.L_4490ba

  ; Code: .L_4490ba:	 RIP: 4490ba	 Bytes: 0
block_.L_4490ba:

  ; Code: movl -0xa44(%rbp), %eax	 RIP: 4490ba	 Bytes: 6
  %loadMem_4490ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4490ba = call %struct.Memory* @routine_movl_MINUS0xa44__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4490ba)
  store %struct.Memory* %call_4490ba, %struct.Memory** %MEMORY

  ; Code: andl -0xa38(%rbp), %eax	 RIP: 4490c0	 Bytes: 6
  %loadMem_4490c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4490c0 = call %struct.Memory* @routine_andl_MINUS0xa38__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4490c0)
  store %struct.Memory* %call_4490c0, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xa38(%rbp)	 RIP: 4490c6	 Bytes: 6
  %loadMem_4490c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4490c6 = call %struct.Memory* @routine_movl__eax__MINUS0xa38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4490c6)
  store %struct.Memory* %call_4490c6, %struct.Memory** %MEMORY

  ; Code: movl -0x864(%rbp), %eax	 RIP: 4490cc	 Bytes: 6
  %loadMem_4490cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4490cc = call %struct.Memory* @routine_movl_MINUS0x864__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4490cc)
  store %struct.Memory* %call_4490cc, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4490d2	 Bytes: 3
  %loadMem_4490d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4490d2 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4490d2)
  store %struct.Memory* %call_4490d2, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x864(%rbp)	 RIP: 4490d5	 Bytes: 6
  %loadMem_4490d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4490d5 = call %struct.Memory* @routine_movl__eax__MINUS0x864__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4490d5)
  store %struct.Memory* %call_4490d5, %struct.Memory** %MEMORY

  ; Code: jmpq .L_44904c	 RIP: 4490db	 Bytes: 5
  %loadMem_4490db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4490db = call %struct.Memory* @routine_jmpq_.L_44904c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4490db, i64 -143, i64 5)
  store %struct.Memory* %call_4490db, %struct.Memory** %MEMORY

  br label %block_.L_44904c

  ; Code: .L_4490e0:	 RIP: 4490e0	 Bytes: 0
block_.L_4490e0:

  ; Code: cmpl $0x0, -0xa30(%rbp)	 RIP: 4490e0	 Bytes: 7
  %loadMem_4490e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4490e0 = call %struct.Memory* @routine_cmpl__0x0__MINUS0xa30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4490e0)
  store %struct.Memory* %call_4490e0, %struct.Memory** %MEMORY

  ; Code: je .L_449111	 RIP: 4490e7	 Bytes: 6
  %loadMem_4490e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4490e7 = call %struct.Memory* @routine_je_.L_449111(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4490e7, i8* %BRANCH_TAKEN, i64 42, i64 6, i64 6)
  store %struct.Memory* %call_4490e7, %struct.Memory** %MEMORY

  %loadBr_4490e7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4490e7 = icmp eq i8 %loadBr_4490e7, 1
  br i1 %cmpBr_4490e7, label %block_.L_449111, label %block_4490ed

block_4490ed:
  ; Code: movq 0x6cb900, %rax	 RIP: 4490ed	 Bytes: 8
  %loadMem_4490ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4490ed = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4490ed)
  store %struct.Memory* %call_4490ed, %struct.Memory** %MEMORY

  ; Code: movq 0x11868(%rax), %rax	 RIP: 4490f5	 Bytes: 7
  %loadMem_4490f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4490f5 = call %struct.Memory* @routine_movq_0x11868__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4490f5)
  store %struct.Memory* %call_4490f5, %struct.Memory** %MEMORY

  ; Code: movslq -0xa2c(%rbp), %rcx	 RIP: 4490fc	 Bytes: 7
  %loadMem_4490fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4490fc = call %struct.Memory* @routine_movslq_MINUS0xa2c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4490fc)
  store %struct.Memory* %call_4490fc, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rcx,4), %edx	 RIP: 449103	 Bytes: 3
  %loadMem_449103 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449103 = call %struct.Memory* @routine_movl___rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449103)
  store %struct.Memory* %call_449103, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0xa48(%rbp)	 RIP: 449106	 Bytes: 6
  %loadMem_449106 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449106 = call %struct.Memory* @routine_movl__edx__MINUS0xa48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449106)
  store %struct.Memory* %call_449106, %struct.Memory** %MEMORY

  ; Code: jmpq .L_44911e	 RIP: 44910c	 Bytes: 5
  %loadMem_44910c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44910c = call %struct.Memory* @routine_jmpq_.L_44911e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44910c, i64 18, i64 5)
  store %struct.Memory* %call_44910c, %struct.Memory** %MEMORY

  br label %block_.L_44911e

  ; Code: .L_449111:	 RIP: 449111	 Bytes: 0
block_.L_449111:

  ; Code: xorl %eax, %eax	 RIP: 449111	 Bytes: 2
  %loadMem_449111 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449111 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449111)
  store %struct.Memory* %call_449111, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xa48(%rbp)	 RIP: 449113	 Bytes: 6
  %loadMem_449113 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449113 = call %struct.Memory* @routine_movl__eax__MINUS0xa48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449113)
  store %struct.Memory* %call_449113, %struct.Memory** %MEMORY

  ; Code: jmpq .L_44911e	 RIP: 449119	 Bytes: 5
  %loadMem_449119 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449119 = call %struct.Memory* @routine_jmpq_.L_44911e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449119, i64 5, i64 5)
  store %struct.Memory* %call_449119, %struct.Memory** %MEMORY

  br label %block_.L_44911e

  ; Code: .L_44911e:	 RIP: 44911e	 Bytes: 0
block_.L_44911e:

  ; Code: movl -0xa48(%rbp), %eax	 RIP: 44911e	 Bytes: 6
  %loadMem_44911e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44911e = call %struct.Memory* @routine_movl_MINUS0xa48__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44911e)
  store %struct.Memory* %call_44911e, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xa3c(%rbp)	 RIP: 449124	 Bytes: 6
  %loadMem_449124 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449124 = call %struct.Memory* @routine_movl__eax__MINUS0xa3c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449124)
  store %struct.Memory* %call_449124, %struct.Memory** %MEMORY

  ; Code: .L_44912a:	 RIP: 44912a	 Bytes: 0
  br label %block_.L_44912a
block_.L_44912a:

  ; Code: movl $0xf423f, -0x10(%rbp)	 RIP: 44912a	 Bytes: 7
  %loadMem_44912a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44912a = call %struct.Memory* @routine_movl__0xf423f__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44912a)
  store %struct.Memory* %call_44912a, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 449131	 Bytes: 4
  %loadMem_449131 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449131 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449131)
  store %struct.Memory* %call_449131, %struct.Memory** %MEMORY

  ; Code: movl $0x2, (%rax)	 RIP: 449135	 Bytes: 6
  %loadMem_449135 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449135 = call %struct.Memory* @routine_movl__0x2____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449135)
  store %struct.Memory* %call_449135, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x86c(%rbp)	 RIP: 44913b	 Bytes: 10
  %loadMem_44913b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44913b = call %struct.Memory* @routine_movl__0x0__MINUS0x86c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44913b)
  store %struct.Memory* %call_44913b, %struct.Memory** %MEMORY

  ; Code: .L_449145:	 RIP: 449145	 Bytes: 0
  br label %block_.L_449145
block_.L_449145:

  ; Code: cmpl $0x4, -0x86c(%rbp)	 RIP: 449145	 Bytes: 7
  %loadMem_449145 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449145 = call %struct.Memory* @routine_cmpl__0x4__MINUS0x86c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449145)
  store %struct.Memory* %call_449145, %struct.Memory** %MEMORY

  ; Code: jge .L_449d93	 RIP: 44914c	 Bytes: 6
  %loadMem_44914c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44914c = call %struct.Memory* @routine_jge_.L_449d93(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44914c, i8* %BRANCH_TAKEN, i64 3143, i64 6, i64 6)
  store %struct.Memory* %call_44914c, %struct.Memory** %MEMORY

  %loadBr_44914c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44914c = icmp eq i8 %loadBr_44914c, 1
  br i1 %cmpBr_44914c, label %block_.L_449d93, label %block_449152

block_449152:
  ; Code: movq 0x6cb8f8, %rax	 RIP: 449152	 Bytes: 8
  %loadMem_449152 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449152 = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449152)
  store %struct.Memory* %call_449152, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x95c(%rax)	 RIP: 44915a	 Bytes: 7
  %loadMem_44915a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44915a = call %struct.Memory* @routine_cmpl__0x0__0x95c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44915a)
  store %struct.Memory* %call_44915a, %struct.Memory** %MEMORY

  ; Code: je .L_449179	 RIP: 449161	 Bytes: 6
  %loadMem_449161 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449161 = call %struct.Memory* @routine_je_.L_449179(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449161, i8* %BRANCH_TAKEN, i64 24, i64 6, i64 6)
  store %struct.Memory* %call_449161, %struct.Memory** %MEMORY

  %loadBr_449161 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_449161 = icmp eq i8 %loadBr_449161, 1
  br i1 %cmpBr_449161, label %block_.L_449179, label %block_449167

block_449167:
  ; Code: movq 0x6cb900, %rax	 RIP: 449167	 Bytes: 8
  %loadMem_449167 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449167 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449167)
  store %struct.Memory* %call_449167, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, 0x18(%rax)	 RIP: 44916f	 Bytes: 4
  %loadMem_44916f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44916f = call %struct.Memory* @routine_cmpl__0x2__0x18__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44916f)
  store %struct.Memory* %call_44916f, %struct.Memory** %MEMORY

  ; Code: je .L_4491d9	 RIP: 449173	 Bytes: 6
  %loadMem_449173 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449173 = call %struct.Memory* @routine_je_.L_4491d9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449173, i8* %BRANCH_TAKEN, i64 102, i64 6, i64 6)
  store %struct.Memory* %call_449173, %struct.Memory** %MEMORY

  %loadBr_449173 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_449173 = icmp eq i8 %loadBr_449173, 1
  br i1 %cmpBr_449173, label %block_.L_4491d9, label %block_.L_449179

  ; Code: .L_449179:	 RIP: 449179	 Bytes: 0
block_.L_449179:

  ; Code: movq 0x6cb8f8, %rax	 RIP: 449179	 Bytes: 8
  %loadMem_449179 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449179 = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449179)
  store %struct.Memory* %call_449179, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x96c(%rax)	 RIP: 449181	 Bytes: 7
  %loadMem_449181 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449181 = call %struct.Memory* @routine_cmpl__0x0__0x96c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449181)
  store %struct.Memory* %call_449181, %struct.Memory** %MEMORY

  ; Code: je .L_4491ad	 RIP: 449188	 Bytes: 6
  %loadMem_449188 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449188 = call %struct.Memory* @routine_je_.L_4491ad(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449188, i8* %BRANCH_TAKEN, i64 37, i64 6, i64 6)
  store %struct.Memory* %call_449188, %struct.Memory** %MEMORY

  %loadBr_449188 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_449188 = icmp eq i8 %loadBr_449188, 1
  br i1 %cmpBr_449188, label %block_.L_4491ad, label %block_44918e

block_44918e:
  ; Code: cmpl $0x0, -0x86c(%rbp)	 RIP: 44918e	 Bytes: 7
  %loadMem_44918e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44918e = call %struct.Memory* @routine_cmpl__0x0__MINUS0x86c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44918e)
  store %struct.Memory* %call_44918e, %struct.Memory** %MEMORY

  ; Code: je .L_4491a8	 RIP: 449195	 Bytes: 6
  %loadMem_449195 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449195 = call %struct.Memory* @routine_je_.L_4491a8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449195, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_449195, %struct.Memory** %MEMORY

  %loadBr_449195 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_449195 = icmp eq i8 %loadBr_449195, 1
  br i1 %cmpBr_449195, label %block_.L_4491a8, label %block_44919b

block_44919b:
  ; Code: cmpl $0x1, -0x86c(%rbp)	 RIP: 44919b	 Bytes: 7
  %loadMem_44919b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44919b = call %struct.Memory* @routine_cmpl__0x1__MINUS0x86c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44919b)
  store %struct.Memory* %call_44919b, %struct.Memory** %MEMORY

  ; Code: jne .L_4491ad	 RIP: 4491a2	 Bytes: 6
  %loadMem_4491a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4491a2 = call %struct.Memory* @routine_jne_.L_4491ad(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4491a2, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_4491a2, %struct.Memory** %MEMORY

  %loadBr_4491a2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4491a2 = icmp eq i8 %loadBr_4491a2, 1
  br i1 %cmpBr_4491a2, label %block_.L_4491ad, label %block_.L_4491a8

  ; Code: .L_4491a8:	 RIP: 4491a8	 Bytes: 0
block_.L_4491a8:

  ; Code: jmpq .L_449d7f	 RIP: 4491a8	 Bytes: 5
  %loadMem_4491a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4491a8 = call %struct.Memory* @routine_jmpq_.L_449d7f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4491a8, i64 3031, i64 5)
  store %struct.Memory* %call_4491a8, %struct.Memory** %MEMORY

  br label %block_.L_449d7f

  ; Code: .L_4491ad:	 RIP: 4491ad	 Bytes: 0
block_.L_4491ad:

  ; Code: movq 0x6cb8f8, %rax	 RIP: 4491ad	 Bytes: 8
  %loadMem_4491ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4491ad = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4491ad)
  store %struct.Memory* %call_4491ad, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x970(%rax)	 RIP: 4491b5	 Bytes: 7
  %loadMem_4491b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4491b5 = call %struct.Memory* @routine_cmpl__0x0__0x970__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4491b5)
  store %struct.Memory* %call_4491b5, %struct.Memory** %MEMORY

  ; Code: je .L_4491d4	 RIP: 4491bc	 Bytes: 6
  %loadMem_4491bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4491bc = call %struct.Memory* @routine_je_.L_4491d4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4491bc, i8* %BRANCH_TAKEN, i64 24, i64 6, i64 6)
  store %struct.Memory* %call_4491bc, %struct.Memory** %MEMORY

  %loadBr_4491bc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4491bc = icmp eq i8 %loadBr_4491bc, 1
  br i1 %cmpBr_4491bc, label %block_.L_4491d4, label %block_4491c2

block_4491c2:
  ; Code: cmpl $0x3, -0x86c(%rbp)	 RIP: 4491c2	 Bytes: 7
  %loadMem_4491c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4491c2 = call %struct.Memory* @routine_cmpl__0x3__MINUS0x86c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4491c2)
  store %struct.Memory* %call_4491c2, %struct.Memory** %MEMORY

  ; Code: jne .L_4491d4	 RIP: 4491c9	 Bytes: 6
  %loadMem_4491c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4491c9 = call %struct.Memory* @routine_jne_.L_4491d4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4491c9, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_4491c9, %struct.Memory** %MEMORY

  %loadBr_4491c9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4491c9 = icmp eq i8 %loadBr_4491c9, 1
  br i1 %cmpBr_4491c9, label %block_.L_4491d4, label %block_4491cf

block_4491cf:
  ; Code: jmpq .L_449d7f	 RIP: 4491cf	 Bytes: 5
  %loadMem_4491cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4491cf = call %struct.Memory* @routine_jmpq_.L_449d7f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4491cf, i64 2992, i64 5)
  store %struct.Memory* %call_4491cf, %struct.Memory** %MEMORY

  br label %block_.L_449d7f

  ; Code: .L_4491d4:	 RIP: 4491d4	 Bytes: 0
block_.L_4491d4:

  ; Code: jmpq .L_4491d9	 RIP: 4491d4	 Bytes: 5
  %loadMem_4491d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4491d4 = call %struct.Memory* @routine_jmpq_.L_4491d9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4491d4, i64 5, i64 5)
  store %struct.Memory* %call_4491d4, %struct.Memory** %MEMORY

  br label %block_.L_4491d9

  ; Code: .L_4491d9:	 RIP: 4491d9	 Bytes: 0
block_.L_4491d9:

  ; Code: cmpl $0x0, -0x86c(%rbp)	 RIP: 4491d9	 Bytes: 7
  %loadMem_4491d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4491d9 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x86c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4491d9)
  store %struct.Memory* %call_4491d9, %struct.Memory** %MEMORY

  ; Code: jne .L_4491f3	 RIP: 4491e0	 Bytes: 6
  %loadMem_4491e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4491e0 = call %struct.Memory* @routine_jne_.L_4491f3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4491e0, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_4491e0, %struct.Memory** %MEMORY

  %loadBr_4491e0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4491e0 = icmp eq i8 %loadBr_4491e0, 1
  br i1 %cmpBr_4491e0, label %block_.L_4491f3, label %block_4491e6

block_4491e6:
  ; Code: cmpl $0x0, -0xa34(%rbp)	 RIP: 4491e6	 Bytes: 7
  %loadMem_4491e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4491e6 = call %struct.Memory* @routine_cmpl__0x0__MINUS0xa34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4491e6)
  store %struct.Memory* %call_4491e6, %struct.Memory** %MEMORY

  ; Code: je .L_449241	 RIP: 4491ed	 Bytes: 6
  %loadMem_4491ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4491ed = call %struct.Memory* @routine_je_.L_449241(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4491ed, i8* %BRANCH_TAKEN, i64 84, i64 6, i64 6)
  store %struct.Memory* %call_4491ed, %struct.Memory** %MEMORY

  %loadBr_4491ed = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4491ed = icmp eq i8 %loadBr_4491ed, 1
  br i1 %cmpBr_4491ed, label %block_.L_449241, label %block_.L_4491f3

  ; Code: .L_4491f3:	 RIP: 4491f3	 Bytes: 0
block_.L_4491f3:

  ; Code: cmpl $0x1, -0x86c(%rbp)	 RIP: 4491f3	 Bytes: 7
  %loadMem_4491f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4491f3 = call %struct.Memory* @routine_cmpl__0x1__MINUS0x86c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4491f3)
  store %struct.Memory* %call_4491f3, %struct.Memory** %MEMORY

  ; Code: jne .L_44920d	 RIP: 4491fa	 Bytes: 6
  %loadMem_4491fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4491fa = call %struct.Memory* @routine_jne_.L_44920d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4491fa, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_4491fa, %struct.Memory** %MEMORY

  %loadBr_4491fa = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4491fa = icmp eq i8 %loadBr_4491fa, 1
  br i1 %cmpBr_4491fa, label %block_.L_44920d, label %block_449200

block_449200:
  ; Code: cmpl $0x0, -0xa38(%rbp)	 RIP: 449200	 Bytes: 7
  %loadMem_449200 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449200 = call %struct.Memory* @routine_cmpl__0x0__MINUS0xa38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449200)
  store %struct.Memory* %call_449200, %struct.Memory** %MEMORY

  ; Code: je .L_449241	 RIP: 449207	 Bytes: 6
  %loadMem_449207 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449207 = call %struct.Memory* @routine_je_.L_449241(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449207, i8* %BRANCH_TAKEN, i64 58, i64 6, i64 6)
  store %struct.Memory* %call_449207, %struct.Memory** %MEMORY

  %loadBr_449207 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_449207 = icmp eq i8 %loadBr_449207, 1
  br i1 %cmpBr_449207, label %block_.L_449241, label %block_.L_44920d

  ; Code: .L_44920d:	 RIP: 44920d	 Bytes: 0
block_.L_44920d:

  ; Code: cmpl $0x3, -0x86c(%rbp)	 RIP: 44920d	 Bytes: 7
  %loadMem_44920d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44920d = call %struct.Memory* @routine_cmpl__0x3__MINUS0x86c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44920d)
  store %struct.Memory* %call_44920d, %struct.Memory** %MEMORY

  ; Code: jne .L_449246	 RIP: 449214	 Bytes: 6
  %loadMem_449214 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449214 = call %struct.Memory* @routine_jne_.L_449246(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449214, i8* %BRANCH_TAKEN, i64 50, i64 6, i64 6)
  store %struct.Memory* %call_449214, %struct.Memory** %MEMORY

  %loadBr_449214 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_449214 = icmp eq i8 %loadBr_449214, 1
  br i1 %cmpBr_449214, label %block_.L_449246, label %block_44921a

block_44921a:
  ; Code: cmpl $0x0, -0xa38(%rbp)	 RIP: 44921a	 Bytes: 7
  %loadMem_44921a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44921a = call %struct.Memory* @routine_cmpl__0x0__MINUS0xa38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44921a)
  store %struct.Memory* %call_44921a, %struct.Memory** %MEMORY

  ; Code: je .L_449241	 RIP: 449221	 Bytes: 6
  %loadMem_449221 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449221 = call %struct.Memory* @routine_je_.L_449241(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449221, i8* %BRANCH_TAKEN, i64 32, i64 6, i64 6)
  store %struct.Memory* %call_449221, %struct.Memory** %MEMORY

  %loadBr_449221 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_449221 = icmp eq i8 %loadBr_449221, 1
  br i1 %cmpBr_449221, label %block_.L_449241, label %block_449227

block_449227:
  ; Code: cmpl $0x0, -0xa34(%rbp)	 RIP: 449227	 Bytes: 7
  %loadMem_449227 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449227 = call %struct.Memory* @routine_cmpl__0x0__MINUS0xa34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449227)
  store %struct.Memory* %call_449227, %struct.Memory** %MEMORY

  ; Code: je .L_449241	 RIP: 44922e	 Bytes: 6
  %loadMem_44922e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44922e = call %struct.Memory* @routine_je_.L_449241(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44922e, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_44922e, %struct.Memory** %MEMORY

  %loadBr_44922e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44922e = icmp eq i8 %loadBr_44922e, 1
  br i1 %cmpBr_44922e, label %block_.L_449241, label %block_449234

block_449234:
  ; Code: cmpl $0x0, -0xa3c(%rbp)	 RIP: 449234	 Bytes: 7
  %loadMem_449234 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449234 = call %struct.Memory* @routine_cmpl__0x0__MINUS0xa3c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449234)
  store %struct.Memory* %call_449234, %struct.Memory** %MEMORY

  ; Code: jne .L_449246	 RIP: 44923b	 Bytes: 6
  %loadMem_44923b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44923b = call %struct.Memory* @routine_jne_.L_449246(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44923b, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_44923b, %struct.Memory** %MEMORY

  %loadBr_44923b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44923b = icmp eq i8 %loadBr_44923b, 1
  br i1 %cmpBr_44923b, label %block_.L_449246, label %block_.L_449241

  ; Code: .L_449241:	 RIP: 449241	 Bytes: 0
block_.L_449241:

  ; Code: jmpq .L_449d7a	 RIP: 449241	 Bytes: 5
  %loadMem_449241 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449241 = call %struct.Memory* @routine_jmpq_.L_449d7a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449241, i64 2873, i64 5)
  store %struct.Memory* %call_449241, %struct.Memory** %MEMORY

  br label %block_.L_449d7a

  ; Code: .L_449246:	 RIP: 449246	 Bytes: 0
block_.L_449246:

  ; Code: movl $0x0, -0x868(%rbp)	 RIP: 449246	 Bytes: 10
  %loadMem_449246 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449246 = call %struct.Memory* @routine_movl__0x0__MINUS0x868__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449246)
  store %struct.Memory* %call_449246, %struct.Memory** %MEMORY

  ; Code: .L_449250:	 RIP: 449250	 Bytes: 0
  br label %block_.L_449250
block_.L_449250:

  ; Code: cmpl $0x10, -0x868(%rbp)	 RIP: 449250	 Bytes: 7
  %loadMem_449250 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449250 = call %struct.Memory* @routine_cmpl__0x10__MINUS0x868__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449250)
  store %struct.Memory* %call_449250, %struct.Memory** %MEMORY

  ; Code: jge .L_4493c8	 RIP: 449257	 Bytes: 6
  %loadMem_449257 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449257 = call %struct.Memory* @routine_jge_.L_4493c8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449257, i8* %BRANCH_TAKEN, i64 369, i64 6, i64 6)
  store %struct.Memory* %call_449257, %struct.Memory** %MEMORY

  %loadBr_449257 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_449257 = icmp eq i8 %loadBr_449257, 1
  br i1 %cmpBr_449257, label %block_.L_4493c8, label %block_44925d

block_44925d:
  ; Code: movl $0x0, -0x864(%rbp)	 RIP: 44925d	 Bytes: 10
  %loadMem_44925d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44925d = call %struct.Memory* @routine_movl__0x0__MINUS0x864__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44925d)
  store %struct.Memory* %call_44925d, %struct.Memory** %MEMORY

  ; Code: .L_449267:	 RIP: 449267	 Bytes: 0
  br label %block_.L_449267
block_.L_449267:

  ; Code: cmpl $0x10, -0x864(%rbp)	 RIP: 449267	 Bytes: 7
  %loadMem_449267 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449267 = call %struct.Memory* @routine_cmpl__0x10__MINUS0x864__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449267)
  store %struct.Memory* %call_449267, %struct.Memory** %MEMORY

  ; Code: jge .L_4493af	 RIP: 44926e	 Bytes: 6
  %loadMem_44926e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44926e = call %struct.Memory* @routine_jge_.L_4493af(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44926e, i8* %BRANCH_TAKEN, i64 321, i64 6, i64 6)
  store %struct.Memory* %call_44926e, %struct.Memory** %MEMORY

  %loadBr_44926e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44926e = icmp eq i8 %loadBr_44926e, 1
  br i1 %cmpBr_44926e, label %block_.L_4493af, label %block_449274

block_449274:
  ; Code: movl $0x4, %eax	 RIP: 449274	 Bytes: 5
  %loadMem_449274 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449274 = call %struct.Memory* @routine_movl__0x4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449274)
  store %struct.Memory* %call_449274, %struct.Memory** %MEMORY

  ; Code: leaq -0x810(%rbp), %rcx	 RIP: 449279	 Bytes: 7
  %loadMem_449279 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449279 = call %struct.Memory* @routine_leaq_MINUS0x810__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449279)
  store %struct.Memory* %call_449279, %struct.Memory** %MEMORY

  ; Code: leaq -0x410(%rbp), %rdx	 RIP: 449280	 Bytes: 7
  %loadMem_449280 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449280 = call %struct.Memory* @routine_leaq_MINUS0x410__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449280)
  store %struct.Memory* %call_449280, %struct.Memory** %MEMORY

  ; Code: movq 0x726418, %rsi	 RIP: 449287	 Bytes: 8
  %loadMem_449287 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449287 = call %struct.Memory* @routine_movq_0x726418___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449287)
  store %struct.Memory* %call_449287, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rdi	 RIP: 44928f	 Bytes: 8
  %loadMem_44928f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44928f = call %struct.Memory* @routine_movq_0x6cb900___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44928f)
  store %struct.Memory* %call_44928f, %struct.Memory** %MEMORY

  ; Code: movl 0xac(%rdi), %r8d	 RIP: 449297	 Bytes: 7
  %loadMem_449297 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449297 = call %struct.Memory* @routine_movl_0xac__rdi____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449297)
  store %struct.Memory* %call_449297, %struct.Memory** %MEMORY

  ; Code: addl -0x868(%rbp), %r8d	 RIP: 44929e	 Bytes: 7
  %loadMem_44929e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44929e = call %struct.Memory* @routine_addl_MINUS0x868__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44929e)
  store %struct.Memory* %call_44929e, %struct.Memory** %MEMORY

  ; Code: movslq %r8d, %rdi	 RIP: 4492a5	 Bytes: 3
  %loadMem_4492a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4492a5 = call %struct.Memory* @routine_movslq__r8d___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4492a5)
  store %struct.Memory* %call_4492a5, %struct.Memory** %MEMORY

  ; Code: movq (%rsi,%rdi,8), %rsi	 RIP: 4492a8	 Bytes: 4
  %loadMem_4492a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4492a8 = call %struct.Memory* @routine_movq___rsi__rdi_8____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4492a8)
  store %struct.Memory* %call_4492a8, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rdi	 RIP: 4492ac	 Bytes: 8
  %loadMem_4492ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4492ac = call %struct.Memory* @routine_movq_0x6cb900___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4492ac)
  store %struct.Memory* %call_4492ac, %struct.Memory** %MEMORY

  ; Code: movl 0xa8(%rdi), %r8d	 RIP: 4492b4	 Bytes: 7
  %loadMem_4492b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4492b4 = call %struct.Memory* @routine_movl_0xa8__rdi____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4492b4)
  store %struct.Memory* %call_4492b4, %struct.Memory** %MEMORY

  ; Code: addl -0x864(%rbp), %r8d	 RIP: 4492bb	 Bytes: 7
  %loadMem_4492bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4492bb = call %struct.Memory* @routine_addl_MINUS0x864__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4492bb)
  store %struct.Memory* %call_4492bb, %struct.Memory** %MEMORY

  ; Code: movslq %r8d, %rdi	 RIP: 4492c2	 Bytes: 3
  %loadMem_4492c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4492c2 = call %struct.Memory* @routine_movslq__r8d___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4492c2)
  store %struct.Memory* %call_4492c2, %struct.Memory** %MEMORY

  ; Code: movzwl (%rsi,%rdi,2), %r8d	 RIP: 4492c5	 Bytes: 5
  %loadMem_4492c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4492c5 = call %struct.Memory* @routine_movzwl___rsi__rdi_2____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4492c5)
  store %struct.Memory* %call_4492c5, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rsi	 RIP: 4492ca	 Bytes: 8
  %loadMem_4492ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4492ca = call %struct.Memory* @routine_movq_0x6cb900___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4492ca)
  store %struct.Memory* %call_4492ca, %struct.Memory** %MEMORY

  ; Code: addq $0x12b8, %rsi	 RIP: 4492d2	 Bytes: 7
  %loadMem_4492d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4492d2 = call %struct.Memory* @routine_addq__0x12b8___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4492d2)
  store %struct.Memory* %call_4492d2, %struct.Memory** %MEMORY

  ; Code: movslq -0x86c(%rbp), %rdi	 RIP: 4492d9	 Bytes: 7
  %loadMem_4492d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4492d9 = call %struct.Memory* @routine_movslq_MINUS0x86c__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4492d9)
  store %struct.Memory* %call_4492d9, %struct.Memory** %MEMORY

  ; Code: shlq $0x9, %rdi	 RIP: 4492e0	 Bytes: 4
  %loadMem_4492e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4492e0 = call %struct.Memory* @routine_shlq__0x9___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4492e0)
  store %struct.Memory* %call_4492e0, %struct.Memory** %MEMORY

  ; Code: addq %rdi, %rsi	 RIP: 4492e4	 Bytes: 3
  %loadMem_4492e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4492e4 = call %struct.Memory* @routine_addq__rdi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4492e4)
  store %struct.Memory* %call_4492e4, %struct.Memory** %MEMORY

  ; Code: movslq -0x868(%rbp), %rdi	 RIP: 4492e7	 Bytes: 7
  %loadMem_4492e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4492e7 = call %struct.Memory* @routine_movslq_MINUS0x868__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4492e7)
  store %struct.Memory* %call_4492e7, %struct.Memory** %MEMORY

  ; Code: shlq $0x5, %rdi	 RIP: 4492ee	 Bytes: 4
  %loadMem_4492ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4492ee = call %struct.Memory* @routine_shlq__0x5___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4492ee)
  store %struct.Memory* %call_4492ee, %struct.Memory** %MEMORY

  ; Code: addq %rdi, %rsi	 RIP: 4492f2	 Bytes: 3
  %loadMem_4492f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4492f2 = call %struct.Memory* @routine_addq__rdi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4492f2)
  store %struct.Memory* %call_4492f2, %struct.Memory** %MEMORY

  ; Code: movslq -0x864(%rbp), %rdi	 RIP: 4492f5	 Bytes: 7
  %loadMem_4492f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4492f5 = call %struct.Memory* @routine_movslq_MINUS0x864__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4492f5)
  store %struct.Memory* %call_4492f5, %struct.Memory** %MEMORY

  ; Code: movzwl (%rsi,%rdi,2), %r9d	 RIP: 4492fc	 Bytes: 5
  %loadMem_4492fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4492fc = call %struct.Memory* @routine_movzwl___rsi__rdi_2____r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4492fc)
  store %struct.Memory* %call_4492fc, %struct.Memory** %MEMORY

  ; Code: subl %r9d, %r8d	 RIP: 449301	 Bytes: 3
  %loadMem_449301 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449301 = call %struct.Memory* @routine_subl__r9d___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449301)
  store %struct.Memory* %call_449301, %struct.Memory** %MEMORY

  ; Code: movslq -0x864(%rbp), %rsi	 RIP: 449304	 Bytes: 7
  %loadMem_449304 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449304 = call %struct.Memory* @routine_movslq_MINUS0x864__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449304)
  store %struct.Memory* %call_449304, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rsi	 RIP: 44930b	 Bytes: 4
  %loadMem_44930b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44930b = call %struct.Memory* @routine_shlq__0x6___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44930b)
  store %struct.Memory* %call_44930b, %struct.Memory** %MEMORY

  ; Code: movq %rdx, %rdi	 RIP: 44930f	 Bytes: 3
  %loadMem_44930f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44930f = call %struct.Memory* @routine_movq__rdx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44930f)
  store %struct.Memory* %call_44930f, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rdi	 RIP: 449312	 Bytes: 3
  %loadMem_449312 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449312 = call %struct.Memory* @routine_addq__rsi___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449312)
  store %struct.Memory* %call_449312, %struct.Memory** %MEMORY

  ; Code: movslq -0x868(%rbp), %rsi	 RIP: 449315	 Bytes: 7
  %loadMem_449315 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449315 = call %struct.Memory* @routine_movslq_MINUS0x868__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449315)
  store %struct.Memory* %call_449315, %struct.Memory** %MEMORY

  ; Code: movl %r8d, (%rdi,%rsi,4)	 RIP: 44931c	 Bytes: 4
  %loadMem_44931c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44931c = call %struct.Memory* @routine_movl__r8d____rdi__rsi_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44931c)
  store %struct.Memory* %call_44931c, %struct.Memory** %MEMORY

  ; Code: movslq -0x864(%rbp), %rsi	 RIP: 449320	 Bytes: 7
  %loadMem_449320 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449320 = call %struct.Memory* @routine_movslq_MINUS0x864__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449320)
  store %struct.Memory* %call_449320, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rsi	 RIP: 449327	 Bytes: 4
  %loadMem_449327 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449327 = call %struct.Memory* @routine_shlq__0x6___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449327)
  store %struct.Memory* %call_449327, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rdx	 RIP: 44932b	 Bytes: 3
  %loadMem_44932b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44932b = call %struct.Memory* @routine_addq__rsi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44932b)
  store %struct.Memory* %call_44932b, %struct.Memory** %MEMORY

  ; Code: movslq -0x868(%rbp), %rsi	 RIP: 44932e	 Bytes: 7
  %loadMem_44932e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44932e = call %struct.Memory* @routine_movslq_MINUS0x868__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44932e)
  store %struct.Memory* %call_44932e, %struct.Memory** %MEMORY

  ; Code: movl (%rdx,%rsi,4), %r8d	 RIP: 449335	 Bytes: 4
  %loadMem_449335 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449335 = call %struct.Memory* @routine_movl___rdx__rsi_4____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449335)
  store %struct.Memory* %call_449335, %struct.Memory** %MEMORY

  ; Code: movl -0x864(%rbp), %r9d	 RIP: 449339	 Bytes: 7
  %loadMem_449339 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449339 = call %struct.Memory* @routine_movl_MINUS0x864__rbp____r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449339)
  store %struct.Memory* %call_449339, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xa4c(%rbp)	 RIP: 449340	 Bytes: 6
  %loadMem_449340 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449340 = call %struct.Memory* @routine_movl__eax__MINUS0xa4c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449340)
  store %struct.Memory* %call_449340, %struct.Memory** %MEMORY

  ; Code: movl %r9d, %eax	 RIP: 449346	 Bytes: 3
  %loadMem_449346 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449346 = call %struct.Memory* @routine_movl__r9d___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449346)
  store %struct.Memory* %call_449346, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 449349	 Bytes: 1
  %loadMem_449349 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449349 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449349)
  store %struct.Memory* %call_449349, %struct.Memory** %MEMORY

  ; Code: movl -0xa4c(%rbp), %r9d	 RIP: 44934a	 Bytes: 7
  %loadMem_44934a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44934a = call %struct.Memory* @routine_movl_MINUS0xa4c__rbp____r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44934a)
  store %struct.Memory* %call_44934a, %struct.Memory** %MEMORY

  ; Code: idivl %r9d	 RIP: 449351	 Bytes: 3
  %loadMem_449351 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449351 = call %struct.Memory* @routine_idivl__r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449351)
  store %struct.Memory* %call_449351, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rsi	 RIP: 449354	 Bytes: 3
  %loadMem_449354 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449354 = call %struct.Memory* @routine_movslq__edx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449354)
  store %struct.Memory* %call_449354, %struct.Memory** %MEMORY

  ; Code: shlq $0x8, %rsi	 RIP: 449357	 Bytes: 4
  %loadMem_449357 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449357 = call %struct.Memory* @routine_shlq__0x8___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449357)
  store %struct.Memory* %call_449357, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rcx	 RIP: 44935b	 Bytes: 3
  %loadMem_44935b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44935b = call %struct.Memory* @routine_addq__rsi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44935b)
  store %struct.Memory* %call_44935b, %struct.Memory** %MEMORY

  ; Code: movl -0x864(%rbp), %edx	 RIP: 44935e	 Bytes: 6
  %loadMem_44935e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44935e = call %struct.Memory* @routine_movl_MINUS0x864__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44935e)
  store %struct.Memory* %call_44935e, %struct.Memory** %MEMORY

  ; Code: movl %edx, %eax	 RIP: 449364	 Bytes: 2
  %loadMem_449364 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449364 = call %struct.Memory* @routine_movl__edx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449364)
  store %struct.Memory* %call_449364, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 449366	 Bytes: 1
  %loadMem_449366 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449366 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449366)
  store %struct.Memory* %call_449366, %struct.Memory** %MEMORY

  ; Code: idivl %r9d	 RIP: 449367	 Bytes: 3
  %loadMem_449367 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449367 = call %struct.Memory* @routine_idivl__r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449367)
  store %struct.Memory* %call_449367, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rsi	 RIP: 44936a	 Bytes: 3
  %loadMem_44936a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44936a = call %struct.Memory* @routine_movslq__eax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44936a)
  store %struct.Memory* %call_44936a, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rsi	 RIP: 44936d	 Bytes: 4
  %loadMem_44936d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44936d = call %struct.Memory* @routine_shlq__0x6___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44936d)
  store %struct.Memory* %call_44936d, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rcx	 RIP: 449371	 Bytes: 3
  %loadMem_449371 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449371 = call %struct.Memory* @routine_addq__rsi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449371)
  store %struct.Memory* %call_449371, %struct.Memory** %MEMORY

  ; Code: movl -0x868(%rbp), %eax	 RIP: 449374	 Bytes: 6
  %loadMem_449374 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449374 = call %struct.Memory* @routine_movl_MINUS0x868__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449374)
  store %struct.Memory* %call_449374, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 44937a	 Bytes: 1
  %loadMem_44937a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44937a = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44937a)
  store %struct.Memory* %call_44937a, %struct.Memory** %MEMORY

  ; Code: idivl %r9d	 RIP: 44937b	 Bytes: 3
  %loadMem_44937b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44937b = call %struct.Memory* @routine_idivl__r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44937b)
  store %struct.Memory* %call_44937b, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rsi	 RIP: 44937e	 Bytes: 3
  %loadMem_44937e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44937e = call %struct.Memory* @routine_movslq__edx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44937e)
  store %struct.Memory* %call_44937e, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rsi	 RIP: 449381	 Bytes: 4
  %loadMem_449381 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449381 = call %struct.Memory* @routine_shlq__0x4___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449381)
  store %struct.Memory* %call_449381, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rcx	 RIP: 449385	 Bytes: 3
  %loadMem_449385 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449385 = call %struct.Memory* @routine_addq__rsi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449385)
  store %struct.Memory* %call_449385, %struct.Memory** %MEMORY

  ; Code: movl -0x868(%rbp), %edx	 RIP: 449388	 Bytes: 6
  %loadMem_449388 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449388 = call %struct.Memory* @routine_movl_MINUS0x868__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449388)
  store %struct.Memory* %call_449388, %struct.Memory** %MEMORY

  ; Code: movl %edx, %eax	 RIP: 44938e	 Bytes: 2
  %loadMem_44938e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44938e = call %struct.Memory* @routine_movl__edx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44938e)
  store %struct.Memory* %call_44938e, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 449390	 Bytes: 1
  %loadMem_449390 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449390 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449390)
  store %struct.Memory* %call_449390, %struct.Memory** %MEMORY

  ; Code: idivl %r9d	 RIP: 449391	 Bytes: 3
  %loadMem_449391 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449391 = call %struct.Memory* @routine_idivl__r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449391)
  store %struct.Memory* %call_449391, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rsi	 RIP: 449394	 Bytes: 3
  %loadMem_449394 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449394 = call %struct.Memory* @routine_movslq__eax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449394)
  store %struct.Memory* %call_449394, %struct.Memory** %MEMORY

  ; Code: movl %r8d, (%rcx,%rsi,4)	 RIP: 449397	 Bytes: 4
  %loadMem_449397 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449397 = call %struct.Memory* @routine_movl__r8d____rcx__rsi_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449397)
  store %struct.Memory* %call_449397, %struct.Memory** %MEMORY

  ; Code: movl -0x864(%rbp), %eax	 RIP: 44939b	 Bytes: 6
  %loadMem_44939b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44939b = call %struct.Memory* @routine_movl_MINUS0x864__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44939b)
  store %struct.Memory* %call_44939b, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4493a1	 Bytes: 3
  %loadMem_4493a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4493a1 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4493a1)
  store %struct.Memory* %call_4493a1, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x864(%rbp)	 RIP: 4493a4	 Bytes: 6
  %loadMem_4493a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4493a4 = call %struct.Memory* @routine_movl__eax__MINUS0x864__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4493a4)
  store %struct.Memory* %call_4493a4, %struct.Memory** %MEMORY

  ; Code: jmpq .L_449267	 RIP: 4493aa	 Bytes: 5
  %loadMem_4493aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4493aa = call %struct.Memory* @routine_jmpq_.L_449267(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4493aa, i64 -323, i64 5)
  store %struct.Memory* %call_4493aa, %struct.Memory** %MEMORY

  br label %block_.L_449267

  ; Code: .L_4493af:	 RIP: 4493af	 Bytes: 0
block_.L_4493af:

  ; Code: jmpq .L_4493b4	 RIP: 4493af	 Bytes: 5
  %loadMem_4493af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4493af = call %struct.Memory* @routine_jmpq_.L_4493b4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4493af, i64 5, i64 5)
  store %struct.Memory* %call_4493af, %struct.Memory** %MEMORY

  br label %block_.L_4493b4

  ; Code: .L_4493b4:	 RIP: 4493b4	 Bytes: 0
block_.L_4493b4:

  ; Code: movl -0x868(%rbp), %eax	 RIP: 4493b4	 Bytes: 6
  %loadMem_4493b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4493b4 = call %struct.Memory* @routine_movl_MINUS0x868__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4493b4)
  store %struct.Memory* %call_4493b4, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4493ba	 Bytes: 3
  %loadMem_4493ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4493ba = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4493ba)
  store %struct.Memory* %call_4493ba, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x868(%rbp)	 RIP: 4493bd	 Bytes: 6
  %loadMem_4493bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4493bd = call %struct.Memory* @routine_movl__eax__MINUS0x868__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4493bd)
  store %struct.Memory* %call_4493bd, %struct.Memory** %MEMORY

  ; Code: jmpq .L_449250	 RIP: 4493c3	 Bytes: 5
  %loadMem_4493c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4493c3 = call %struct.Memory* @routine_jmpq_.L_449250(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4493c3, i64 -371, i64 5)
  store %struct.Memory* %call_4493c3, %struct.Memory** %MEMORY

  br label %block_.L_449250

  ; Code: .L_4493c8:	 RIP: 4493c8	 Bytes: 0
block_.L_4493c8:

  ; Code: movl $0x0, -0xc(%rbp)	 RIP: 4493c8	 Bytes: 7
  %loadMem_4493c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4493c8 = call %struct.Memory* @routine_movl__0x0__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4493c8)
  store %struct.Memory* %call_4493c8, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x874(%rbp)	 RIP: 4493cf	 Bytes: 10
  %loadMem_4493cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4493cf = call %struct.Memory* @routine_movl__0x0__MINUS0x874__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4493cf)
  store %struct.Memory* %call_4493cf, %struct.Memory** %MEMORY

  ; Code: .L_4493d9:	 RIP: 4493d9	 Bytes: 0
  br label %block_.L_4493d9
block_.L_4493d9:

  ; Code: cmpl $0x4, -0x874(%rbp)	 RIP: 4493d9	 Bytes: 7
  %loadMem_4493d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4493d9 = call %struct.Memory* @routine_cmpl__0x4__MINUS0x874__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4493d9)
  store %struct.Memory* %call_4493d9, %struct.Memory** %MEMORY

  ; Code: jge .L_4499cc	 RIP: 4493e0	 Bytes: 6
  %loadMem_4493e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4493e0 = call %struct.Memory* @routine_jge_.L_4499cc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4493e0, i8* %BRANCH_TAKEN, i64 1516, i64 6, i64 6)
  store %struct.Memory* %call_4493e0, %struct.Memory** %MEMORY

  %loadBr_4493e0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4493e0 = icmp eq i8 %loadBr_4493e0, 1
  br i1 %cmpBr_4493e0, label %block_.L_4499cc, label %block_4493e6

block_4493e6:
  ; Code: movl $0x0, -0x870(%rbp)	 RIP: 4493e6	 Bytes: 10
  %loadMem_4493e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4493e6 = call %struct.Memory* @routine_movl__0x0__MINUS0x870__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4493e6)
  store %struct.Memory* %call_4493e6, %struct.Memory** %MEMORY

  ; Code: .L_4493f0:	 RIP: 4493f0	 Bytes: 0
  br label %block_.L_4493f0
block_.L_4493f0:

  ; Code: cmpl $0x4, -0x870(%rbp)	 RIP: 4493f0	 Bytes: 7
  %loadMem_4493f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4493f0 = call %struct.Memory* @routine_cmpl__0x4__MINUS0x870__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4493f0)
  store %struct.Memory* %call_4493f0, %struct.Memory** %MEMORY

  ; Code: jge .L_4499b3	 RIP: 4493f7	 Bytes: 6
  %loadMem_4493f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4493f7 = call %struct.Memory* @routine_jge_.L_4499b3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4493f7, i8* %BRANCH_TAKEN, i64 1468, i64 6, i64 6)
  store %struct.Memory* %call_4493f7, %struct.Memory** %MEMORY

  %loadBr_4493f7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4493f7 = icmp eq i8 %loadBr_4493f7, 1
  br i1 %cmpBr_4493f7, label %block_.L_4499b3, label %block_4493fd

block_4493fd:
  ; Code: movl $0x0, -0x868(%rbp)	 RIP: 4493fd	 Bytes: 10
  %loadMem_4493fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4493fd = call %struct.Memory* @routine_movl__0x0__MINUS0x868__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4493fd)
  store %struct.Memory* %call_4493fd, %struct.Memory** %MEMORY

  ; Code: .L_449407:	 RIP: 449407	 Bytes: 0
  br label %block_.L_449407
block_.L_449407:

  ; Code: cmpl $0x4, -0x868(%rbp)	 RIP: 449407	 Bytes: 7
  %loadMem_449407 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449407 = call %struct.Memory* @routine_cmpl__0x4__MINUS0x868__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449407)
  store %struct.Memory* %call_449407, %struct.Memory** %MEMORY

  ; Code: jge .L_44969e	 RIP: 44940e	 Bytes: 6
  %loadMem_44940e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44940e = call %struct.Memory* @routine_jge_.L_44969e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44940e, i8* %BRANCH_TAKEN, i64 656, i64 6, i64 6)
  store %struct.Memory* %call_44940e, %struct.Memory** %MEMORY

  %loadBr_44940e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44940e = icmp eq i8 %loadBr_44940e, 1
  br i1 %cmpBr_44940e, label %block_.L_44969e, label %block_449414

block_449414:
  ; Code: leaq -0x810(%rbp), %rax	 RIP: 449414	 Bytes: 7
  %loadMem_449414 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449414 = call %struct.Memory* @routine_leaq_MINUS0x810__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449414)
  store %struct.Memory* %call_449414, %struct.Memory** %MEMORY

  ; Code: movslq -0x870(%rbp), %rcx	 RIP: 44941b	 Bytes: 7
  %loadMem_44941b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44941b = call %struct.Memory* @routine_movslq_MINUS0x870__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44941b)
  store %struct.Memory* %call_44941b, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rcx	 RIP: 449422	 Bytes: 4
  %loadMem_449422 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449422 = call %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449422)
  store %struct.Memory* %call_449422, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 449426	 Bytes: 3
  %loadMem_449426 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449426 = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449426)
  store %struct.Memory* %call_449426, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdx	 RIP: 449429	 Bytes: 3
  %loadMem_449429 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449429 = call %struct.Memory* @routine_addq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449429)
  store %struct.Memory* %call_449429, %struct.Memory** %MEMORY

  ; Code: movslq -0x868(%rbp), %rcx	 RIP: 44942c	 Bytes: 7
  %loadMem_44942c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44942c = call %struct.Memory* @routine_movslq_MINUS0x868__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44942c)
  store %struct.Memory* %call_44942c, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rcx	 RIP: 449433	 Bytes: 4
  %loadMem_449433 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449433 = call %struct.Memory* @routine_shlq__0x4___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449433)
  store %struct.Memory* %call_449433, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdx	 RIP: 449437	 Bytes: 3
  %loadMem_449437 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449437 = call %struct.Memory* @routine_addq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449437)
  store %struct.Memory* %call_449437, %struct.Memory** %MEMORY

  ; Code: movslq -0x874(%rbp), %rcx	 RIP: 44943a	 Bytes: 7
  %loadMem_44943a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44943a = call %struct.Memory* @routine_movslq_MINUS0x874__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44943a)
  store %struct.Memory* %call_44943a, %struct.Memory** %MEMORY

  ; Code: movl (%rdx,%rcx,4), %esi	 RIP: 449441	 Bytes: 3
  %loadMem_449441 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449441 = call %struct.Memory* @routine_movl___rdx__rcx_4____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449441)
  store %struct.Memory* %call_449441, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rcx	 RIP: 449444	 Bytes: 3
  %loadMem_449444 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449444 = call %struct.Memory* @routine_movq__rax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449444)
  store %struct.Memory* %call_449444, %struct.Memory** %MEMORY

  ; Code: addq $0x300, %rcx	 RIP: 449447	 Bytes: 7
  %loadMem_449447 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449447 = call %struct.Memory* @routine_addq__0x300___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449447)
  store %struct.Memory* %call_449447, %struct.Memory** %MEMORY

  ; Code: movslq -0x870(%rbp), %rdx	 RIP: 44944e	 Bytes: 7
  %loadMem_44944e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44944e = call %struct.Memory* @routine_movslq_MINUS0x870__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44944e)
  store %struct.Memory* %call_44944e, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rdx	 RIP: 449455	 Bytes: 4
  %loadMem_449455 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449455 = call %struct.Memory* @routine_shlq__0x6___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449455)
  store %struct.Memory* %call_449455, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 449459	 Bytes: 3
  %loadMem_449459 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449459 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449459)
  store %struct.Memory* %call_449459, %struct.Memory** %MEMORY

  ; Code: movslq -0x868(%rbp), %rdx	 RIP: 44945c	 Bytes: 7
  %loadMem_44945c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44945c = call %struct.Memory* @routine_movslq_MINUS0x868__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44945c)
  store %struct.Memory* %call_44945c, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rdx	 RIP: 449463	 Bytes: 4
  %loadMem_449463 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449463 = call %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449463)
  store %struct.Memory* %call_449463, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 449467	 Bytes: 3
  %loadMem_449467 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449467 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449467)
  store %struct.Memory* %call_449467, %struct.Memory** %MEMORY

  ; Code: movslq -0x874(%rbp), %rdx	 RIP: 44946a	 Bytes: 7
  %loadMem_44946a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44946a = call %struct.Memory* @routine_movslq_MINUS0x874__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44946a)
  store %struct.Memory* %call_44946a, %struct.Memory** %MEMORY

  ; Code: addl (%rcx,%rdx,4), %esi	 RIP: 449471	 Bytes: 3
  %loadMem_449471 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449471 = call %struct.Memory* @routine_addl___rcx__rdx_4____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449471)
  store %struct.Memory* %call_449471, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x820(%rbp)	 RIP: 449474	 Bytes: 6
  %loadMem_449474 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449474 = call %struct.Memory* @routine_movl__esi__MINUS0x820__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449474)
  store %struct.Memory* %call_449474, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rcx	 RIP: 44947a	 Bytes: 3
  %loadMem_44947a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44947a = call %struct.Memory* @routine_movq__rax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44947a)
  store %struct.Memory* %call_44947a, %struct.Memory** %MEMORY

  ; Code: addq $0x100, %rcx	 RIP: 44947d	 Bytes: 7
  %loadMem_44947d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44947d = call %struct.Memory* @routine_addq__0x100___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44947d)
  store %struct.Memory* %call_44947d, %struct.Memory** %MEMORY

  ; Code: movslq -0x870(%rbp), %rdx	 RIP: 449484	 Bytes: 7
  %loadMem_449484 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449484 = call %struct.Memory* @routine_movslq_MINUS0x870__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449484)
  store %struct.Memory* %call_449484, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rdx	 RIP: 44948b	 Bytes: 4
  %loadMem_44948b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44948b = call %struct.Memory* @routine_shlq__0x6___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44948b)
  store %struct.Memory* %call_44948b, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 44948f	 Bytes: 3
  %loadMem_44948f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44948f = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44948f)
  store %struct.Memory* %call_44948f, %struct.Memory** %MEMORY

  ; Code: movslq -0x868(%rbp), %rdx	 RIP: 449492	 Bytes: 7
  %loadMem_449492 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449492 = call %struct.Memory* @routine_movslq_MINUS0x868__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449492)
  store %struct.Memory* %call_449492, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rdx	 RIP: 449499	 Bytes: 4
  %loadMem_449499 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449499 = call %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449499)
  store %struct.Memory* %call_449499, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 44949d	 Bytes: 3
  %loadMem_44949d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44949d = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44949d)
  store %struct.Memory* %call_44949d, %struct.Memory** %MEMORY

  ; Code: movslq -0x874(%rbp), %rdx	 RIP: 4494a0	 Bytes: 7
  %loadMem_4494a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4494a0 = call %struct.Memory* @routine_movslq_MINUS0x874__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4494a0)
  store %struct.Memory* %call_4494a0, %struct.Memory** %MEMORY

  ; Code: movl (%rcx,%rdx,4), %esi	 RIP: 4494a7	 Bytes: 3
  %loadMem_4494a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4494a7 = call %struct.Memory* @routine_movl___rcx__rdx_4____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4494a7)
  store %struct.Memory* %call_4494a7, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rcx	 RIP: 4494aa	 Bytes: 3
  %loadMem_4494aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4494aa = call %struct.Memory* @routine_movq__rax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4494aa)
  store %struct.Memory* %call_4494aa, %struct.Memory** %MEMORY

  ; Code: addq $0x200, %rcx	 RIP: 4494ad	 Bytes: 7
  %loadMem_4494ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4494ad = call %struct.Memory* @routine_addq__0x200___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4494ad)
  store %struct.Memory* %call_4494ad, %struct.Memory** %MEMORY

  ; Code: movslq -0x870(%rbp), %rdx	 RIP: 4494b4	 Bytes: 7
  %loadMem_4494b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4494b4 = call %struct.Memory* @routine_movslq_MINUS0x870__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4494b4)
  store %struct.Memory* %call_4494b4, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rdx	 RIP: 4494bb	 Bytes: 4
  %loadMem_4494bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4494bb = call %struct.Memory* @routine_shlq__0x6___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4494bb)
  store %struct.Memory* %call_4494bb, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 4494bf	 Bytes: 3
  %loadMem_4494bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4494bf = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4494bf)
  store %struct.Memory* %call_4494bf, %struct.Memory** %MEMORY

  ; Code: movslq -0x868(%rbp), %rdx	 RIP: 4494c2	 Bytes: 7
  %loadMem_4494c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4494c2 = call %struct.Memory* @routine_movslq_MINUS0x868__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4494c2)
  store %struct.Memory* %call_4494c2, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rdx	 RIP: 4494c9	 Bytes: 4
  %loadMem_4494c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4494c9 = call %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4494c9)
  store %struct.Memory* %call_4494c9, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 4494cd	 Bytes: 3
  %loadMem_4494cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4494cd = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4494cd)
  store %struct.Memory* %call_4494cd, %struct.Memory** %MEMORY

  ; Code: movslq -0x874(%rbp), %rdx	 RIP: 4494d0	 Bytes: 7
  %loadMem_4494d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4494d0 = call %struct.Memory* @routine_movslq_MINUS0x874__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4494d0)
  store %struct.Memory* %call_4494d0, %struct.Memory** %MEMORY

  ; Code: addl (%rcx,%rdx,4), %esi	 RIP: 4494d7	 Bytes: 3
  %loadMem_4494d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4494d7 = call %struct.Memory* @routine_addl___rcx__rdx_4____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4494d7)
  store %struct.Memory* %call_4494d7, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x81c(%rbp)	 RIP: 4494da	 Bytes: 6
  %loadMem_4494da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4494da = call %struct.Memory* @routine_movl__esi__MINUS0x81c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4494da)
  store %struct.Memory* %call_4494da, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rcx	 RIP: 4494e0	 Bytes: 3
  %loadMem_4494e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4494e0 = call %struct.Memory* @routine_movq__rax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4494e0)
  store %struct.Memory* %call_4494e0, %struct.Memory** %MEMORY

  ; Code: addq $0x100, %rcx	 RIP: 4494e3	 Bytes: 7
  %loadMem_4494e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4494e3 = call %struct.Memory* @routine_addq__0x100___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4494e3)
  store %struct.Memory* %call_4494e3, %struct.Memory** %MEMORY

  ; Code: movslq -0x870(%rbp), %rdx	 RIP: 4494ea	 Bytes: 7
  %loadMem_4494ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4494ea = call %struct.Memory* @routine_movslq_MINUS0x870__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4494ea)
  store %struct.Memory* %call_4494ea, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rdx	 RIP: 4494f1	 Bytes: 4
  %loadMem_4494f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4494f1 = call %struct.Memory* @routine_shlq__0x6___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4494f1)
  store %struct.Memory* %call_4494f1, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 4494f5	 Bytes: 3
  %loadMem_4494f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4494f5 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4494f5)
  store %struct.Memory* %call_4494f5, %struct.Memory** %MEMORY

  ; Code: movslq -0x868(%rbp), %rdx	 RIP: 4494f8	 Bytes: 7
  %loadMem_4494f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4494f8 = call %struct.Memory* @routine_movslq_MINUS0x868__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4494f8)
  store %struct.Memory* %call_4494f8, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rdx	 RIP: 4494ff	 Bytes: 4
  %loadMem_4494ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4494ff = call %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4494ff)
  store %struct.Memory* %call_4494ff, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 449503	 Bytes: 3
  %loadMem_449503 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449503 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449503)
  store %struct.Memory* %call_449503, %struct.Memory** %MEMORY

  ; Code: movslq -0x874(%rbp), %rdx	 RIP: 449506	 Bytes: 7
  %loadMem_449506 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449506 = call %struct.Memory* @routine_movslq_MINUS0x874__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449506)
  store %struct.Memory* %call_449506, %struct.Memory** %MEMORY

  ; Code: movl (%rcx,%rdx,4), %esi	 RIP: 44950d	 Bytes: 3
  %loadMem_44950d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44950d = call %struct.Memory* @routine_movl___rcx__rdx_4____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44950d)
  store %struct.Memory* %call_44950d, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rcx	 RIP: 449510	 Bytes: 3
  %loadMem_449510 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449510 = call %struct.Memory* @routine_movq__rax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449510)
  store %struct.Memory* %call_449510, %struct.Memory** %MEMORY

  ; Code: addq $0x200, %rcx	 RIP: 449513	 Bytes: 7
  %loadMem_449513 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449513 = call %struct.Memory* @routine_addq__0x200___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449513)
  store %struct.Memory* %call_449513, %struct.Memory** %MEMORY

  ; Code: movslq -0x870(%rbp), %rdx	 RIP: 44951a	 Bytes: 7
  %loadMem_44951a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44951a = call %struct.Memory* @routine_movslq_MINUS0x870__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44951a)
  store %struct.Memory* %call_44951a, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rdx	 RIP: 449521	 Bytes: 4
  %loadMem_449521 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449521 = call %struct.Memory* @routine_shlq__0x6___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449521)
  store %struct.Memory* %call_449521, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 449525	 Bytes: 3
  %loadMem_449525 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449525 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449525)
  store %struct.Memory* %call_449525, %struct.Memory** %MEMORY

  ; Code: movslq -0x868(%rbp), %rdx	 RIP: 449528	 Bytes: 7
  %loadMem_449528 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449528 = call %struct.Memory* @routine_movslq_MINUS0x868__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449528)
  store %struct.Memory* %call_449528, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rdx	 RIP: 44952f	 Bytes: 4
  %loadMem_44952f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44952f = call %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44952f)
  store %struct.Memory* %call_44952f, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 449533	 Bytes: 3
  %loadMem_449533 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449533 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449533)
  store %struct.Memory* %call_449533, %struct.Memory** %MEMORY

  ; Code: movslq -0x874(%rbp), %rdx	 RIP: 449536	 Bytes: 7
  %loadMem_449536 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449536 = call %struct.Memory* @routine_movslq_MINUS0x874__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449536)
  store %struct.Memory* %call_449536, %struct.Memory** %MEMORY

  ; Code: subl (%rcx,%rdx,4), %esi	 RIP: 44953d	 Bytes: 3
  %loadMem_44953d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44953d = call %struct.Memory* @routine_subl___rcx__rdx_4____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44953d)
  store %struct.Memory* %call_44953d, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x818(%rbp)	 RIP: 449540	 Bytes: 6
  %loadMem_449540 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449540 = call %struct.Memory* @routine_movl__esi__MINUS0x818__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449540)
  store %struct.Memory* %call_449540, %struct.Memory** %MEMORY

  ; Code: movslq -0x870(%rbp), %rcx	 RIP: 449546	 Bytes: 7
  %loadMem_449546 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449546 = call %struct.Memory* @routine_movslq_MINUS0x870__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449546)
  store %struct.Memory* %call_449546, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rcx	 RIP: 44954d	 Bytes: 4
  %loadMem_44954d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44954d = call %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44954d)
  store %struct.Memory* %call_44954d, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 449551	 Bytes: 3
  %loadMem_449551 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449551 = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449551)
  store %struct.Memory* %call_449551, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdx	 RIP: 449554	 Bytes: 3
  %loadMem_449554 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449554 = call %struct.Memory* @routine_addq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449554)
  store %struct.Memory* %call_449554, %struct.Memory** %MEMORY

  ; Code: movslq -0x868(%rbp), %rcx	 RIP: 449557	 Bytes: 7
  %loadMem_449557 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449557 = call %struct.Memory* @routine_movslq_MINUS0x868__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449557)
  store %struct.Memory* %call_449557, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rcx	 RIP: 44955e	 Bytes: 4
  %loadMem_44955e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44955e = call %struct.Memory* @routine_shlq__0x4___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44955e)
  store %struct.Memory* %call_44955e, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdx	 RIP: 449562	 Bytes: 3
  %loadMem_449562 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449562 = call %struct.Memory* @routine_addq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449562)
  store %struct.Memory* %call_449562, %struct.Memory** %MEMORY

  ; Code: movslq -0x874(%rbp), %rcx	 RIP: 449565	 Bytes: 7
  %loadMem_449565 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449565 = call %struct.Memory* @routine_movslq_MINUS0x874__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449565)
  store %struct.Memory* %call_449565, %struct.Memory** %MEMORY

  ; Code: movl (%rdx,%rcx,4), %esi	 RIP: 44956c	 Bytes: 3
  %loadMem_44956c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44956c = call %struct.Memory* @routine_movl___rdx__rcx_4____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44956c)
  store %struct.Memory* %call_44956c, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rcx	 RIP: 44956f	 Bytes: 3
  %loadMem_44956f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44956f = call %struct.Memory* @routine_movq__rax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44956f)
  store %struct.Memory* %call_44956f, %struct.Memory** %MEMORY

  ; Code: addq $0x300, %rcx	 RIP: 449572	 Bytes: 7
  %loadMem_449572 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449572 = call %struct.Memory* @routine_addq__0x300___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449572)
  store %struct.Memory* %call_449572, %struct.Memory** %MEMORY

  ; Code: movslq -0x870(%rbp), %rdx	 RIP: 449579	 Bytes: 7
  %loadMem_449579 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449579 = call %struct.Memory* @routine_movslq_MINUS0x870__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449579)
  store %struct.Memory* %call_449579, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rdx	 RIP: 449580	 Bytes: 4
  %loadMem_449580 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449580 = call %struct.Memory* @routine_shlq__0x6___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449580)
  store %struct.Memory* %call_449580, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 449584	 Bytes: 3
  %loadMem_449584 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449584 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449584)
  store %struct.Memory* %call_449584, %struct.Memory** %MEMORY

  ; Code: movslq -0x868(%rbp), %rdx	 RIP: 449587	 Bytes: 7
  %loadMem_449587 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449587 = call %struct.Memory* @routine_movslq_MINUS0x868__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449587)
  store %struct.Memory* %call_449587, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rdx	 RIP: 44958e	 Bytes: 4
  %loadMem_44958e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44958e = call %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44958e)
  store %struct.Memory* %call_44958e, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 449592	 Bytes: 3
  %loadMem_449592 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449592 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449592)
  store %struct.Memory* %call_449592, %struct.Memory** %MEMORY

  ; Code: movslq -0x874(%rbp), %rdx	 RIP: 449595	 Bytes: 7
  %loadMem_449595 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449595 = call %struct.Memory* @routine_movslq_MINUS0x874__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449595)
  store %struct.Memory* %call_449595, %struct.Memory** %MEMORY

  ; Code: subl (%rcx,%rdx,4), %esi	 RIP: 44959c	 Bytes: 3
  %loadMem_44959c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44959c = call %struct.Memory* @routine_subl___rcx__rdx_4____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44959c)
  store %struct.Memory* %call_44959c, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x814(%rbp)	 RIP: 44959f	 Bytes: 6
  %loadMem_44959f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44959f = call %struct.Memory* @routine_movl__esi__MINUS0x814__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44959f)
  store %struct.Memory* %call_44959f, %struct.Memory** %MEMORY

  ; Code: movl -0x820(%rbp), %esi	 RIP: 4495a5	 Bytes: 6
  %loadMem_4495a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4495a5 = call %struct.Memory* @routine_movl_MINUS0x820__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4495a5)
  store %struct.Memory* %call_4495a5, %struct.Memory** %MEMORY

  ; Code: addl -0x81c(%rbp), %esi	 RIP: 4495ab	 Bytes: 6
  %loadMem_4495ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4495ab = call %struct.Memory* @routine_addl_MINUS0x81c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4495ab)
  store %struct.Memory* %call_4495ab, %struct.Memory** %MEMORY

  ; Code: movslq -0x870(%rbp), %rcx	 RIP: 4495b1	 Bytes: 7
  %loadMem_4495b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4495b1 = call %struct.Memory* @routine_movslq_MINUS0x870__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4495b1)
  store %struct.Memory* %call_4495b1, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rcx	 RIP: 4495b8	 Bytes: 4
  %loadMem_4495b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4495b8 = call %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4495b8)
  store %struct.Memory* %call_4495b8, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 4495bc	 Bytes: 3
  %loadMem_4495bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4495bc = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4495bc)
  store %struct.Memory* %call_4495bc, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdx	 RIP: 4495bf	 Bytes: 3
  %loadMem_4495bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4495bf = call %struct.Memory* @routine_addq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4495bf)
  store %struct.Memory* %call_4495bf, %struct.Memory** %MEMORY

  ; Code: movslq -0x868(%rbp), %rcx	 RIP: 4495c2	 Bytes: 7
  %loadMem_4495c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4495c2 = call %struct.Memory* @routine_movslq_MINUS0x868__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4495c2)
  store %struct.Memory* %call_4495c2, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rcx	 RIP: 4495c9	 Bytes: 4
  %loadMem_4495c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4495c9 = call %struct.Memory* @routine_shlq__0x4___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4495c9)
  store %struct.Memory* %call_4495c9, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdx	 RIP: 4495cd	 Bytes: 3
  %loadMem_4495cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4495cd = call %struct.Memory* @routine_addq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4495cd)
  store %struct.Memory* %call_4495cd, %struct.Memory** %MEMORY

  ; Code: movslq -0x874(%rbp), %rcx	 RIP: 4495d0	 Bytes: 7
  %loadMem_4495d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4495d0 = call %struct.Memory* @routine_movslq_MINUS0x874__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4495d0)
  store %struct.Memory* %call_4495d0, %struct.Memory** %MEMORY

  ; Code: movl %esi, (%rdx,%rcx,4)	 RIP: 4495d7	 Bytes: 3
  %loadMem_4495d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4495d7 = call %struct.Memory* @routine_movl__esi____rdx__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4495d7)
  store %struct.Memory* %call_4495d7, %struct.Memory** %MEMORY

  ; Code: movl -0x820(%rbp), %esi	 RIP: 4495da	 Bytes: 6
  %loadMem_4495da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4495da = call %struct.Memory* @routine_movl_MINUS0x820__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4495da)
  store %struct.Memory* %call_4495da, %struct.Memory** %MEMORY

  ; Code: subl -0x81c(%rbp), %esi	 RIP: 4495e0	 Bytes: 6
  %loadMem_4495e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4495e0 = call %struct.Memory* @routine_subl_MINUS0x81c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4495e0)
  store %struct.Memory* %call_4495e0, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rcx	 RIP: 4495e6	 Bytes: 3
  %loadMem_4495e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4495e6 = call %struct.Memory* @routine_movq__rax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4495e6)
  store %struct.Memory* %call_4495e6, %struct.Memory** %MEMORY

  ; Code: addq $0x200, %rcx	 RIP: 4495e9	 Bytes: 7
  %loadMem_4495e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4495e9 = call %struct.Memory* @routine_addq__0x200___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4495e9)
  store %struct.Memory* %call_4495e9, %struct.Memory** %MEMORY

  ; Code: movslq -0x870(%rbp), %rdx	 RIP: 4495f0	 Bytes: 7
  %loadMem_4495f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4495f0 = call %struct.Memory* @routine_movslq_MINUS0x870__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4495f0)
  store %struct.Memory* %call_4495f0, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rdx	 RIP: 4495f7	 Bytes: 4
  %loadMem_4495f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4495f7 = call %struct.Memory* @routine_shlq__0x6___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4495f7)
  store %struct.Memory* %call_4495f7, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 4495fb	 Bytes: 3
  %loadMem_4495fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4495fb = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4495fb)
  store %struct.Memory* %call_4495fb, %struct.Memory** %MEMORY

  ; Code: movslq -0x868(%rbp), %rdx	 RIP: 4495fe	 Bytes: 7
  %loadMem_4495fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4495fe = call %struct.Memory* @routine_movslq_MINUS0x868__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4495fe)
  store %struct.Memory* %call_4495fe, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rdx	 RIP: 449605	 Bytes: 4
  %loadMem_449605 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449605 = call %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449605)
  store %struct.Memory* %call_449605, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 449609	 Bytes: 3
  %loadMem_449609 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449609 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449609)
  store %struct.Memory* %call_449609, %struct.Memory** %MEMORY

  ; Code: movslq -0x874(%rbp), %rdx	 RIP: 44960c	 Bytes: 7
  %loadMem_44960c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44960c = call %struct.Memory* @routine_movslq_MINUS0x874__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44960c)
  store %struct.Memory* %call_44960c, %struct.Memory** %MEMORY

  ; Code: movl %esi, (%rcx,%rdx,4)	 RIP: 449613	 Bytes: 3
  %loadMem_449613 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449613 = call %struct.Memory* @routine_movl__esi____rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449613)
  store %struct.Memory* %call_449613, %struct.Memory** %MEMORY

  ; Code: movl -0x818(%rbp), %esi	 RIP: 449616	 Bytes: 6
  %loadMem_449616 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449616 = call %struct.Memory* @routine_movl_MINUS0x818__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449616)
  store %struct.Memory* %call_449616, %struct.Memory** %MEMORY

  ; Code: addl -0x814(%rbp), %esi	 RIP: 44961c	 Bytes: 6
  %loadMem_44961c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44961c = call %struct.Memory* @routine_addl_MINUS0x814__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44961c)
  store %struct.Memory* %call_44961c, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rcx	 RIP: 449622	 Bytes: 3
  %loadMem_449622 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449622 = call %struct.Memory* @routine_movq__rax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449622)
  store %struct.Memory* %call_449622, %struct.Memory** %MEMORY

  ; Code: addq $0x100, %rcx	 RIP: 449625	 Bytes: 7
  %loadMem_449625 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449625 = call %struct.Memory* @routine_addq__0x100___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449625)
  store %struct.Memory* %call_449625, %struct.Memory** %MEMORY

  ; Code: movslq -0x870(%rbp), %rdx	 RIP: 44962c	 Bytes: 7
  %loadMem_44962c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44962c = call %struct.Memory* @routine_movslq_MINUS0x870__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44962c)
  store %struct.Memory* %call_44962c, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rdx	 RIP: 449633	 Bytes: 4
  %loadMem_449633 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449633 = call %struct.Memory* @routine_shlq__0x6___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449633)
  store %struct.Memory* %call_449633, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 449637	 Bytes: 3
  %loadMem_449637 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449637 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449637)
  store %struct.Memory* %call_449637, %struct.Memory** %MEMORY

  ; Code: movslq -0x868(%rbp), %rdx	 RIP: 44963a	 Bytes: 7
  %loadMem_44963a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44963a = call %struct.Memory* @routine_movslq_MINUS0x868__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44963a)
  store %struct.Memory* %call_44963a, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rdx	 RIP: 449641	 Bytes: 4
  %loadMem_449641 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449641 = call %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449641)
  store %struct.Memory* %call_449641, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 449645	 Bytes: 3
  %loadMem_449645 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449645 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449645)
  store %struct.Memory* %call_449645, %struct.Memory** %MEMORY

  ; Code: movslq -0x874(%rbp), %rdx	 RIP: 449648	 Bytes: 7
  %loadMem_449648 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449648 = call %struct.Memory* @routine_movslq_MINUS0x874__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449648)
  store %struct.Memory* %call_449648, %struct.Memory** %MEMORY

  ; Code: movl %esi, (%rcx,%rdx,4)	 RIP: 44964f	 Bytes: 3
  %loadMem_44964f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44964f = call %struct.Memory* @routine_movl__esi____rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44964f)
  store %struct.Memory* %call_44964f, %struct.Memory** %MEMORY

  ; Code: movl -0x814(%rbp), %esi	 RIP: 449652	 Bytes: 6
  %loadMem_449652 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449652 = call %struct.Memory* @routine_movl_MINUS0x814__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449652)
  store %struct.Memory* %call_449652, %struct.Memory** %MEMORY

  ; Code: subl -0x818(%rbp), %esi	 RIP: 449658	 Bytes: 6
  %loadMem_449658 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449658 = call %struct.Memory* @routine_subl_MINUS0x818__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449658)
  store %struct.Memory* %call_449658, %struct.Memory** %MEMORY

  ; Code: addq $0x300, %rax	 RIP: 44965e	 Bytes: 6
  %loadMem_44965e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44965e = call %struct.Memory* @routine_addq__0x300___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44965e)
  store %struct.Memory* %call_44965e, %struct.Memory** %MEMORY

  ; Code: movslq -0x870(%rbp), %rcx	 RIP: 449664	 Bytes: 7
  %loadMem_449664 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449664 = call %struct.Memory* @routine_movslq_MINUS0x870__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449664)
  store %struct.Memory* %call_449664, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rcx	 RIP: 44966b	 Bytes: 4
  %loadMem_44966b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44966b = call %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44966b)
  store %struct.Memory* %call_44966b, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 44966f	 Bytes: 3
  %loadMem_44966f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44966f = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44966f)
  store %struct.Memory* %call_44966f, %struct.Memory** %MEMORY

  ; Code: movslq -0x868(%rbp), %rcx	 RIP: 449672	 Bytes: 7
  %loadMem_449672 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449672 = call %struct.Memory* @routine_movslq_MINUS0x868__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449672)
  store %struct.Memory* %call_449672, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rcx	 RIP: 449679	 Bytes: 4
  %loadMem_449679 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449679 = call %struct.Memory* @routine_shlq__0x4___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449679)
  store %struct.Memory* %call_449679, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 44967d	 Bytes: 3
  %loadMem_44967d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44967d = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44967d)
  store %struct.Memory* %call_44967d, %struct.Memory** %MEMORY

  ; Code: movslq -0x874(%rbp), %rcx	 RIP: 449680	 Bytes: 7
  %loadMem_449680 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449680 = call %struct.Memory* @routine_movslq_MINUS0x874__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449680)
  store %struct.Memory* %call_449680, %struct.Memory** %MEMORY

  ; Code: movl %esi, (%rax,%rcx,4)	 RIP: 449687	 Bytes: 3
  %loadMem_449687 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449687 = call %struct.Memory* @routine_movl__esi____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449687)
  store %struct.Memory* %call_449687, %struct.Memory** %MEMORY

  ; Code: movl -0x868(%rbp), %eax	 RIP: 44968a	 Bytes: 6
  %loadMem_44968a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44968a = call %struct.Memory* @routine_movl_MINUS0x868__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44968a)
  store %struct.Memory* %call_44968a, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 449690	 Bytes: 3
  %loadMem_449690 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449690 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449690)
  store %struct.Memory* %call_449690, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x868(%rbp)	 RIP: 449693	 Bytes: 6
  %loadMem_449693 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449693 = call %struct.Memory* @routine_movl__eax__MINUS0x868__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449693)
  store %struct.Memory* %call_449693, %struct.Memory** %MEMORY

  ; Code: jmpq .L_449407	 RIP: 449699	 Bytes: 5
  %loadMem_449699 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449699 = call %struct.Memory* @routine_jmpq_.L_449407(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449699, i64 -658, i64 5)
  store %struct.Memory* %call_449699, %struct.Memory** %MEMORY

  br label %block_.L_449407

  ; Code: .L_44969e:	 RIP: 44969e	 Bytes: 0
block_.L_44969e:

  ; Code: movl $0x0, -0x864(%rbp)	 RIP: 44969e	 Bytes: 10
  %loadMem_44969e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44969e = call %struct.Memory* @routine_movl__0x0__MINUS0x864__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44969e)
  store %struct.Memory* %call_44969e, %struct.Memory** %MEMORY

  ; Code: .L_4496a8:	 RIP: 4496a8	 Bytes: 0
  br label %block_.L_4496a8
block_.L_4496a8:

  ; Code: cmpl $0x4, -0x864(%rbp)	 RIP: 4496a8	 Bytes: 7
  %loadMem_4496a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4496a8 = call %struct.Memory* @routine_cmpl__0x4__MINUS0x864__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4496a8)
  store %struct.Memory* %call_4496a8, %struct.Memory** %MEMORY

  ; Code: jge .L_44999a	 RIP: 4496af	 Bytes: 6
  %loadMem_4496af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4496af = call %struct.Memory* @routine_jge_.L_44999a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4496af, i8* %BRANCH_TAKEN, i64 747, i64 6, i64 6)
  store %struct.Memory* %call_4496af, %struct.Memory** %MEMORY

  %loadBr_4496af = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4496af = icmp eq i8 %loadBr_4496af, 1
  br i1 %cmpBr_4496af, label %block_.L_44999a, label %block_4496b5

block_4496b5:
  ; Code: leaq -0x810(%rbp), %rax	 RIP: 4496b5	 Bytes: 7
  %loadMem_4496b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4496b5 = call %struct.Memory* @routine_leaq_MINUS0x810__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4496b5)
  store %struct.Memory* %call_4496b5, %struct.Memory** %MEMORY

  ; Code: movslq -0x864(%rbp), %rcx	 RIP: 4496bc	 Bytes: 7
  %loadMem_4496bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4496bc = call %struct.Memory* @routine_movslq_MINUS0x864__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4496bc)
  store %struct.Memory* %call_4496bc, %struct.Memory** %MEMORY

  ; Code: shlq $0x8, %rcx	 RIP: 4496c3	 Bytes: 4
  %loadMem_4496c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4496c3 = call %struct.Memory* @routine_shlq__0x8___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4496c3)
  store %struct.Memory* %call_4496c3, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 4496c7	 Bytes: 3
  %loadMem_4496c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4496c7 = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4496c7)
  store %struct.Memory* %call_4496c7, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdx	 RIP: 4496ca	 Bytes: 3
  %loadMem_4496ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4496ca = call %struct.Memory* @routine_addq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4496ca)
  store %struct.Memory* %call_4496ca, %struct.Memory** %MEMORY

  ; Code: movslq -0x870(%rbp), %rcx	 RIP: 4496cd	 Bytes: 7
  %loadMem_4496cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4496cd = call %struct.Memory* @routine_movslq_MINUS0x870__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4496cd)
  store %struct.Memory* %call_4496cd, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rcx	 RIP: 4496d4	 Bytes: 4
  %loadMem_4496d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4496d4 = call %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4496d4)
  store %struct.Memory* %call_4496d4, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdx	 RIP: 4496d8	 Bytes: 3
  %loadMem_4496d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4496d8 = call %struct.Memory* @routine_addq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4496d8)
  store %struct.Memory* %call_4496d8, %struct.Memory** %MEMORY

  ; Code: movslq -0x874(%rbp), %rcx	 RIP: 4496db	 Bytes: 7
  %loadMem_4496db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4496db = call %struct.Memory* @routine_movslq_MINUS0x874__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4496db)
  store %struct.Memory* %call_4496db, %struct.Memory** %MEMORY

  ; Code: movl (%rdx,%rcx,4), %esi	 RIP: 4496e2	 Bytes: 3
  %loadMem_4496e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4496e2 = call %struct.Memory* @routine_movl___rdx__rcx_4____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4496e2)
  store %struct.Memory* %call_4496e2, %struct.Memory** %MEMORY

  ; Code: movslq -0x864(%rbp), %rcx	 RIP: 4496e5	 Bytes: 7
  %loadMem_4496e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4496e5 = call %struct.Memory* @routine_movslq_MINUS0x864__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4496e5)
  store %struct.Memory* %call_4496e5, %struct.Memory** %MEMORY

  ; Code: shlq $0x8, %rcx	 RIP: 4496ec	 Bytes: 4
  %loadMem_4496ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4496ec = call %struct.Memory* @routine_shlq__0x8___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4496ec)
  store %struct.Memory* %call_4496ec, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 4496f0	 Bytes: 3
  %loadMem_4496f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4496f0 = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4496f0)
  store %struct.Memory* %call_4496f0, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdx	 RIP: 4496f3	 Bytes: 3
  %loadMem_4496f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4496f3 = call %struct.Memory* @routine_addq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4496f3)
  store %struct.Memory* %call_4496f3, %struct.Memory** %MEMORY

  ; Code: movslq -0x870(%rbp), %rcx	 RIP: 4496f6	 Bytes: 7
  %loadMem_4496f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4496f6 = call %struct.Memory* @routine_movslq_MINUS0x870__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4496f6)
  store %struct.Memory* %call_4496f6, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rcx	 RIP: 4496fd	 Bytes: 4
  %loadMem_4496fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4496fd = call %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4496fd)
  store %struct.Memory* %call_4496fd, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdx	 RIP: 449701	 Bytes: 3
  %loadMem_449701 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449701 = call %struct.Memory* @routine_addq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449701)
  store %struct.Memory* %call_449701, %struct.Memory** %MEMORY

  ; Code: movslq -0x874(%rbp), %rcx	 RIP: 449704	 Bytes: 7
  %loadMem_449704 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449704 = call %struct.Memory* @routine_movslq_MINUS0x874__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449704)
  store %struct.Memory* %call_449704, %struct.Memory** %MEMORY

  ; Code: addl 0x30(%rdx,%rcx,4), %esi	 RIP: 44970b	 Bytes: 4
  %loadMem_44970b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44970b = call %struct.Memory* @routine_addl_0x30__rdx__rcx_4____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44970b)
  store %struct.Memory* %call_44970b, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x820(%rbp)	 RIP: 44970f	 Bytes: 6
  %loadMem_44970f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44970f = call %struct.Memory* @routine_movl__esi__MINUS0x820__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44970f)
  store %struct.Memory* %call_44970f, %struct.Memory** %MEMORY

  ; Code: movslq -0x864(%rbp), %rcx	 RIP: 449715	 Bytes: 7
  %loadMem_449715 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449715 = call %struct.Memory* @routine_movslq_MINUS0x864__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449715)
  store %struct.Memory* %call_449715, %struct.Memory** %MEMORY

  ; Code: shlq $0x8, %rcx	 RIP: 44971c	 Bytes: 4
  %loadMem_44971c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44971c = call %struct.Memory* @routine_shlq__0x8___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44971c)
  store %struct.Memory* %call_44971c, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 449720	 Bytes: 3
  %loadMem_449720 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449720 = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449720)
  store %struct.Memory* %call_449720, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdx	 RIP: 449723	 Bytes: 3
  %loadMem_449723 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449723 = call %struct.Memory* @routine_addq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449723)
  store %struct.Memory* %call_449723, %struct.Memory** %MEMORY

  ; Code: movslq -0x870(%rbp), %rcx	 RIP: 449726	 Bytes: 7
  %loadMem_449726 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449726 = call %struct.Memory* @routine_movslq_MINUS0x870__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449726)
  store %struct.Memory* %call_449726, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rcx	 RIP: 44972d	 Bytes: 4
  %loadMem_44972d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44972d = call %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44972d)
  store %struct.Memory* %call_44972d, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdx	 RIP: 449731	 Bytes: 3
  %loadMem_449731 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449731 = call %struct.Memory* @routine_addq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449731)
  store %struct.Memory* %call_449731, %struct.Memory** %MEMORY

  ; Code: movslq -0x874(%rbp), %rcx	 RIP: 449734	 Bytes: 7
  %loadMem_449734 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449734 = call %struct.Memory* @routine_movslq_MINUS0x874__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449734)
  store %struct.Memory* %call_449734, %struct.Memory** %MEMORY

  ; Code: movl 0x10(%rdx,%rcx,4), %esi	 RIP: 44973b	 Bytes: 4
  %loadMem_44973b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44973b = call %struct.Memory* @routine_movl_0x10__rdx__rcx_4____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44973b)
  store %struct.Memory* %call_44973b, %struct.Memory** %MEMORY

  ; Code: movslq -0x864(%rbp), %rcx	 RIP: 44973f	 Bytes: 7
  %loadMem_44973f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44973f = call %struct.Memory* @routine_movslq_MINUS0x864__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44973f)
  store %struct.Memory* %call_44973f, %struct.Memory** %MEMORY

  ; Code: shlq $0x8, %rcx	 RIP: 449746	 Bytes: 4
  %loadMem_449746 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449746 = call %struct.Memory* @routine_shlq__0x8___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449746)
  store %struct.Memory* %call_449746, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 44974a	 Bytes: 3
  %loadMem_44974a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44974a = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44974a)
  store %struct.Memory* %call_44974a, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdx	 RIP: 44974d	 Bytes: 3
  %loadMem_44974d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44974d = call %struct.Memory* @routine_addq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44974d)
  store %struct.Memory* %call_44974d, %struct.Memory** %MEMORY

  ; Code: movslq -0x870(%rbp), %rcx	 RIP: 449750	 Bytes: 7
  %loadMem_449750 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449750 = call %struct.Memory* @routine_movslq_MINUS0x870__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449750)
  store %struct.Memory* %call_449750, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rcx	 RIP: 449757	 Bytes: 4
  %loadMem_449757 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449757 = call %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449757)
  store %struct.Memory* %call_449757, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdx	 RIP: 44975b	 Bytes: 3
  %loadMem_44975b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44975b = call %struct.Memory* @routine_addq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44975b)
  store %struct.Memory* %call_44975b, %struct.Memory** %MEMORY

  ; Code: movslq -0x874(%rbp), %rcx	 RIP: 44975e	 Bytes: 7
  %loadMem_44975e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44975e = call %struct.Memory* @routine_movslq_MINUS0x874__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44975e)
  store %struct.Memory* %call_44975e, %struct.Memory** %MEMORY

  ; Code: addl 0x20(%rdx,%rcx,4), %esi	 RIP: 449765	 Bytes: 4
  %loadMem_449765 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449765 = call %struct.Memory* @routine_addl_0x20__rdx__rcx_4____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449765)
  store %struct.Memory* %call_449765, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x81c(%rbp)	 RIP: 449769	 Bytes: 6
  %loadMem_449769 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449769 = call %struct.Memory* @routine_movl__esi__MINUS0x81c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449769)
  store %struct.Memory* %call_449769, %struct.Memory** %MEMORY

  ; Code: movslq -0x864(%rbp), %rcx	 RIP: 44976f	 Bytes: 7
  %loadMem_44976f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44976f = call %struct.Memory* @routine_movslq_MINUS0x864__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44976f)
  store %struct.Memory* %call_44976f, %struct.Memory** %MEMORY

  ; Code: shlq $0x8, %rcx	 RIP: 449776	 Bytes: 4
  %loadMem_449776 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449776 = call %struct.Memory* @routine_shlq__0x8___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449776)
  store %struct.Memory* %call_449776, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 44977a	 Bytes: 3
  %loadMem_44977a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44977a = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44977a)
  store %struct.Memory* %call_44977a, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdx	 RIP: 44977d	 Bytes: 3
  %loadMem_44977d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44977d = call %struct.Memory* @routine_addq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44977d)
  store %struct.Memory* %call_44977d, %struct.Memory** %MEMORY

  ; Code: movslq -0x870(%rbp), %rcx	 RIP: 449780	 Bytes: 7
  %loadMem_449780 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449780 = call %struct.Memory* @routine_movslq_MINUS0x870__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449780)
  store %struct.Memory* %call_449780, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rcx	 RIP: 449787	 Bytes: 4
  %loadMem_449787 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449787 = call %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449787)
  store %struct.Memory* %call_449787, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdx	 RIP: 44978b	 Bytes: 3
  %loadMem_44978b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44978b = call %struct.Memory* @routine_addq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44978b)
  store %struct.Memory* %call_44978b, %struct.Memory** %MEMORY

  ; Code: movslq -0x874(%rbp), %rcx	 RIP: 44978e	 Bytes: 7
  %loadMem_44978e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44978e = call %struct.Memory* @routine_movslq_MINUS0x874__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44978e)
  store %struct.Memory* %call_44978e, %struct.Memory** %MEMORY

  ; Code: movl 0x10(%rdx,%rcx,4), %esi	 RIP: 449795	 Bytes: 4
  %loadMem_449795 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449795 = call %struct.Memory* @routine_movl_0x10__rdx__rcx_4____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449795)
  store %struct.Memory* %call_449795, %struct.Memory** %MEMORY

  ; Code: movslq -0x864(%rbp), %rcx	 RIP: 449799	 Bytes: 7
  %loadMem_449799 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449799 = call %struct.Memory* @routine_movslq_MINUS0x864__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449799)
  store %struct.Memory* %call_449799, %struct.Memory** %MEMORY

  ; Code: shlq $0x8, %rcx	 RIP: 4497a0	 Bytes: 4
  %loadMem_4497a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4497a0 = call %struct.Memory* @routine_shlq__0x8___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4497a0)
  store %struct.Memory* %call_4497a0, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 4497a4	 Bytes: 3
  %loadMem_4497a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4497a4 = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4497a4)
  store %struct.Memory* %call_4497a4, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdx	 RIP: 4497a7	 Bytes: 3
  %loadMem_4497a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4497a7 = call %struct.Memory* @routine_addq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4497a7)
  store %struct.Memory* %call_4497a7, %struct.Memory** %MEMORY

  ; Code: movslq -0x870(%rbp), %rcx	 RIP: 4497aa	 Bytes: 7
  %loadMem_4497aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4497aa = call %struct.Memory* @routine_movslq_MINUS0x870__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4497aa)
  store %struct.Memory* %call_4497aa, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rcx	 RIP: 4497b1	 Bytes: 4
  %loadMem_4497b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4497b1 = call %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4497b1)
  store %struct.Memory* %call_4497b1, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdx	 RIP: 4497b5	 Bytes: 3
  %loadMem_4497b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4497b5 = call %struct.Memory* @routine_addq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4497b5)
  store %struct.Memory* %call_4497b5, %struct.Memory** %MEMORY

  ; Code: movslq -0x874(%rbp), %rcx	 RIP: 4497b8	 Bytes: 7
  %loadMem_4497b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4497b8 = call %struct.Memory* @routine_movslq_MINUS0x874__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4497b8)
  store %struct.Memory* %call_4497b8, %struct.Memory** %MEMORY

  ; Code: subl 0x20(%rdx,%rcx,4), %esi	 RIP: 4497bf	 Bytes: 4
  %loadMem_4497bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4497bf = call %struct.Memory* @routine_subl_0x20__rdx__rcx_4____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4497bf)
  store %struct.Memory* %call_4497bf, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x818(%rbp)	 RIP: 4497c3	 Bytes: 6
  %loadMem_4497c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4497c3 = call %struct.Memory* @routine_movl__esi__MINUS0x818__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4497c3)
  store %struct.Memory* %call_4497c3, %struct.Memory** %MEMORY

  ; Code: movslq -0x864(%rbp), %rcx	 RIP: 4497c9	 Bytes: 7
  %loadMem_4497c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4497c9 = call %struct.Memory* @routine_movslq_MINUS0x864__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4497c9)
  store %struct.Memory* %call_4497c9, %struct.Memory** %MEMORY

  ; Code: shlq $0x8, %rcx	 RIP: 4497d0	 Bytes: 4
  %loadMem_4497d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4497d0 = call %struct.Memory* @routine_shlq__0x8___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4497d0)
  store %struct.Memory* %call_4497d0, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 4497d4	 Bytes: 3
  %loadMem_4497d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4497d4 = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4497d4)
  store %struct.Memory* %call_4497d4, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdx	 RIP: 4497d7	 Bytes: 3
  %loadMem_4497d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4497d7 = call %struct.Memory* @routine_addq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4497d7)
  store %struct.Memory* %call_4497d7, %struct.Memory** %MEMORY

  ; Code: movslq -0x870(%rbp), %rcx	 RIP: 4497da	 Bytes: 7
  %loadMem_4497da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4497da = call %struct.Memory* @routine_movslq_MINUS0x870__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4497da)
  store %struct.Memory* %call_4497da, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rcx	 RIP: 4497e1	 Bytes: 4
  %loadMem_4497e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4497e1 = call %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4497e1)
  store %struct.Memory* %call_4497e1, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdx	 RIP: 4497e5	 Bytes: 3
  %loadMem_4497e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4497e5 = call %struct.Memory* @routine_addq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4497e5)
  store %struct.Memory* %call_4497e5, %struct.Memory** %MEMORY

  ; Code: movslq -0x874(%rbp), %rcx	 RIP: 4497e8	 Bytes: 7
  %loadMem_4497e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4497e8 = call %struct.Memory* @routine_movslq_MINUS0x874__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4497e8)
  store %struct.Memory* %call_4497e8, %struct.Memory** %MEMORY

  ; Code: movl (%rdx,%rcx,4), %esi	 RIP: 4497ef	 Bytes: 3
  %loadMem_4497ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4497ef = call %struct.Memory* @routine_movl___rdx__rcx_4____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4497ef)
  store %struct.Memory* %call_4497ef, %struct.Memory** %MEMORY

  ; Code: movslq -0x864(%rbp), %rcx	 RIP: 4497f2	 Bytes: 7
  %loadMem_4497f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4497f2 = call %struct.Memory* @routine_movslq_MINUS0x864__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4497f2)
  store %struct.Memory* %call_4497f2, %struct.Memory** %MEMORY

  ; Code: shlq $0x8, %rcx	 RIP: 4497f9	 Bytes: 4
  %loadMem_4497f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4497f9 = call %struct.Memory* @routine_shlq__0x8___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4497f9)
  store %struct.Memory* %call_4497f9, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 4497fd	 Bytes: 3
  %loadMem_4497fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4497fd = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4497fd)
  store %struct.Memory* %call_4497fd, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdx	 RIP: 449800	 Bytes: 3
  %loadMem_449800 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449800 = call %struct.Memory* @routine_addq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449800)
  store %struct.Memory* %call_449800, %struct.Memory** %MEMORY

  ; Code: movslq -0x870(%rbp), %rcx	 RIP: 449803	 Bytes: 7
  %loadMem_449803 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449803 = call %struct.Memory* @routine_movslq_MINUS0x870__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449803)
  store %struct.Memory* %call_449803, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rcx	 RIP: 44980a	 Bytes: 4
  %loadMem_44980a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44980a = call %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44980a)
  store %struct.Memory* %call_44980a, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdx	 RIP: 44980e	 Bytes: 3
  %loadMem_44980e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44980e = call %struct.Memory* @routine_addq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44980e)
  store %struct.Memory* %call_44980e, %struct.Memory** %MEMORY

  ; Code: movslq -0x874(%rbp), %rcx	 RIP: 449811	 Bytes: 7
  %loadMem_449811 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449811 = call %struct.Memory* @routine_movslq_MINUS0x874__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449811)
  store %struct.Memory* %call_449811, %struct.Memory** %MEMORY

  ; Code: subl 0x30(%rdx,%rcx,4), %esi	 RIP: 449818	 Bytes: 4
  %loadMem_449818 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449818 = call %struct.Memory* @routine_subl_0x30__rdx__rcx_4____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449818)
  store %struct.Memory* %call_449818, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x814(%rbp)	 RIP: 44981c	 Bytes: 6
  %loadMem_44981c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44981c = call %struct.Memory* @routine_movl__esi__MINUS0x814__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44981c)
  store %struct.Memory* %call_44981c, %struct.Memory** %MEMORY

  ; Code: movl -0x820(%rbp), %esi	 RIP: 449822	 Bytes: 6
  %loadMem_449822 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449822 = call %struct.Memory* @routine_movl_MINUS0x820__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449822)
  store %struct.Memory* %call_449822, %struct.Memory** %MEMORY

  ; Code: addl -0x81c(%rbp), %esi	 RIP: 449828	 Bytes: 6
  %loadMem_449828 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449828 = call %struct.Memory* @routine_addl_MINUS0x81c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449828)
  store %struct.Memory* %call_449828, %struct.Memory** %MEMORY

  ; Code: movslq -0x864(%rbp), %rcx	 RIP: 44982e	 Bytes: 7
  %loadMem_44982e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44982e = call %struct.Memory* @routine_movslq_MINUS0x864__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44982e)
  store %struct.Memory* %call_44982e, %struct.Memory** %MEMORY

  ; Code: shlq $0x8, %rcx	 RIP: 449835	 Bytes: 4
  %loadMem_449835 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449835 = call %struct.Memory* @routine_shlq__0x8___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449835)
  store %struct.Memory* %call_449835, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 449839	 Bytes: 3
  %loadMem_449839 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449839 = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449839)
  store %struct.Memory* %call_449839, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdx	 RIP: 44983c	 Bytes: 3
  %loadMem_44983c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44983c = call %struct.Memory* @routine_addq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44983c)
  store %struct.Memory* %call_44983c, %struct.Memory** %MEMORY

  ; Code: movslq -0x870(%rbp), %rcx	 RIP: 44983f	 Bytes: 7
  %loadMem_44983f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44983f = call %struct.Memory* @routine_movslq_MINUS0x870__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44983f)
  store %struct.Memory* %call_44983f, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rcx	 RIP: 449846	 Bytes: 4
  %loadMem_449846 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449846 = call %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449846)
  store %struct.Memory* %call_449846, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdx	 RIP: 44984a	 Bytes: 3
  %loadMem_44984a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44984a = call %struct.Memory* @routine_addq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44984a)
  store %struct.Memory* %call_44984a, %struct.Memory** %MEMORY

  ; Code: movslq -0x874(%rbp), %rcx	 RIP: 44984d	 Bytes: 7
  %loadMem_44984d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44984d = call %struct.Memory* @routine_movslq_MINUS0x874__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44984d)
  store %struct.Memory* %call_44984d, %struct.Memory** %MEMORY

  ; Code: movl %esi, (%rdx,%rcx,4)	 RIP: 449854	 Bytes: 3
  %loadMem_449854 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449854 = call %struct.Memory* @routine_movl__esi____rdx__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449854)
  store %struct.Memory* %call_449854, %struct.Memory** %MEMORY

  ; Code: movl -0x820(%rbp), %esi	 RIP: 449857	 Bytes: 6
  %loadMem_449857 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449857 = call %struct.Memory* @routine_movl_MINUS0x820__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449857)
  store %struct.Memory* %call_449857, %struct.Memory** %MEMORY

  ; Code: subl -0x81c(%rbp), %esi	 RIP: 44985d	 Bytes: 6
  %loadMem_44985d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44985d = call %struct.Memory* @routine_subl_MINUS0x81c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44985d)
  store %struct.Memory* %call_44985d, %struct.Memory** %MEMORY

  ; Code: movslq -0x864(%rbp), %rcx	 RIP: 449863	 Bytes: 7
  %loadMem_449863 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449863 = call %struct.Memory* @routine_movslq_MINUS0x864__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449863)
  store %struct.Memory* %call_449863, %struct.Memory** %MEMORY

  ; Code: shlq $0x8, %rcx	 RIP: 44986a	 Bytes: 4
  %loadMem_44986a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44986a = call %struct.Memory* @routine_shlq__0x8___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44986a)
  store %struct.Memory* %call_44986a, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 44986e	 Bytes: 3
  %loadMem_44986e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44986e = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44986e)
  store %struct.Memory* %call_44986e, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdx	 RIP: 449871	 Bytes: 3
  %loadMem_449871 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449871 = call %struct.Memory* @routine_addq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449871)
  store %struct.Memory* %call_449871, %struct.Memory** %MEMORY

  ; Code: movslq -0x870(%rbp), %rcx	 RIP: 449874	 Bytes: 7
  %loadMem_449874 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449874 = call %struct.Memory* @routine_movslq_MINUS0x870__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449874)
  store %struct.Memory* %call_449874, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rcx	 RIP: 44987b	 Bytes: 4
  %loadMem_44987b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44987b = call %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44987b)
  store %struct.Memory* %call_44987b, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdx	 RIP: 44987f	 Bytes: 3
  %loadMem_44987f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44987f = call %struct.Memory* @routine_addq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44987f)
  store %struct.Memory* %call_44987f, %struct.Memory** %MEMORY

  ; Code: movslq -0x874(%rbp), %rcx	 RIP: 449882	 Bytes: 7
  %loadMem_449882 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449882 = call %struct.Memory* @routine_movslq_MINUS0x874__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449882)
  store %struct.Memory* %call_449882, %struct.Memory** %MEMORY

  ; Code: movl %esi, 0x20(%rdx,%rcx,4)	 RIP: 449889	 Bytes: 4
  %loadMem_449889 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449889 = call %struct.Memory* @routine_movl__esi__0x20__rdx__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449889)
  store %struct.Memory* %call_449889, %struct.Memory** %MEMORY

  ; Code: movl -0x818(%rbp), %esi	 RIP: 44988d	 Bytes: 6
  %loadMem_44988d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44988d = call %struct.Memory* @routine_movl_MINUS0x818__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44988d)
  store %struct.Memory* %call_44988d, %struct.Memory** %MEMORY

  ; Code: addl -0x814(%rbp), %esi	 RIP: 449893	 Bytes: 6
  %loadMem_449893 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449893 = call %struct.Memory* @routine_addl_MINUS0x814__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449893)
  store %struct.Memory* %call_449893, %struct.Memory** %MEMORY

  ; Code: movslq -0x864(%rbp), %rcx	 RIP: 449899	 Bytes: 7
  %loadMem_449899 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449899 = call %struct.Memory* @routine_movslq_MINUS0x864__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449899)
  store %struct.Memory* %call_449899, %struct.Memory** %MEMORY

  ; Code: shlq $0x8, %rcx	 RIP: 4498a0	 Bytes: 4
  %loadMem_4498a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4498a0 = call %struct.Memory* @routine_shlq__0x8___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4498a0)
  store %struct.Memory* %call_4498a0, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 4498a4	 Bytes: 3
  %loadMem_4498a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4498a4 = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4498a4)
  store %struct.Memory* %call_4498a4, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdx	 RIP: 4498a7	 Bytes: 3
  %loadMem_4498a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4498a7 = call %struct.Memory* @routine_addq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4498a7)
  store %struct.Memory* %call_4498a7, %struct.Memory** %MEMORY

  ; Code: movslq -0x870(%rbp), %rcx	 RIP: 4498aa	 Bytes: 7
  %loadMem_4498aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4498aa = call %struct.Memory* @routine_movslq_MINUS0x870__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4498aa)
  store %struct.Memory* %call_4498aa, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rcx	 RIP: 4498b1	 Bytes: 4
  %loadMem_4498b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4498b1 = call %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4498b1)
  store %struct.Memory* %call_4498b1, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdx	 RIP: 4498b5	 Bytes: 3
  %loadMem_4498b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4498b5 = call %struct.Memory* @routine_addq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4498b5)
  store %struct.Memory* %call_4498b5, %struct.Memory** %MEMORY

  ; Code: movslq -0x874(%rbp), %rcx	 RIP: 4498b8	 Bytes: 7
  %loadMem_4498b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4498b8 = call %struct.Memory* @routine_movslq_MINUS0x874__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4498b8)
  store %struct.Memory* %call_4498b8, %struct.Memory** %MEMORY

  ; Code: movl %esi, 0x10(%rdx,%rcx,4)	 RIP: 4498bf	 Bytes: 4
  %loadMem_4498bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4498bf = call %struct.Memory* @routine_movl__esi__0x10__rdx__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4498bf)
  store %struct.Memory* %call_4498bf, %struct.Memory** %MEMORY

  ; Code: movl -0x814(%rbp), %esi	 RIP: 4498c3	 Bytes: 6
  %loadMem_4498c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4498c3 = call %struct.Memory* @routine_movl_MINUS0x814__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4498c3)
  store %struct.Memory* %call_4498c3, %struct.Memory** %MEMORY

  ; Code: subl -0x818(%rbp), %esi	 RIP: 4498c9	 Bytes: 6
  %loadMem_4498c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4498c9 = call %struct.Memory* @routine_subl_MINUS0x818__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4498c9)
  store %struct.Memory* %call_4498c9, %struct.Memory** %MEMORY

  ; Code: movslq -0x864(%rbp), %rcx	 RIP: 4498cf	 Bytes: 7
  %loadMem_4498cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4498cf = call %struct.Memory* @routine_movslq_MINUS0x864__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4498cf)
  store %struct.Memory* %call_4498cf, %struct.Memory** %MEMORY

  ; Code: shlq $0x8, %rcx	 RIP: 4498d6	 Bytes: 4
  %loadMem_4498d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4498d6 = call %struct.Memory* @routine_shlq__0x8___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4498d6)
  store %struct.Memory* %call_4498d6, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4498da	 Bytes: 3
  %loadMem_4498da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4498da = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4498da)
  store %struct.Memory* %call_4498da, %struct.Memory** %MEMORY

  ; Code: movslq -0x870(%rbp), %rcx	 RIP: 4498dd	 Bytes: 7
  %loadMem_4498dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4498dd = call %struct.Memory* @routine_movslq_MINUS0x870__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4498dd)
  store %struct.Memory* %call_4498dd, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rcx	 RIP: 4498e4	 Bytes: 4
  %loadMem_4498e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4498e4 = call %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4498e4)
  store %struct.Memory* %call_4498e4, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4498e8	 Bytes: 3
  %loadMem_4498e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4498e8 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4498e8)
  store %struct.Memory* %call_4498e8, %struct.Memory** %MEMORY

  ; Code: movslq -0x874(%rbp), %rcx	 RIP: 4498eb	 Bytes: 7
  %loadMem_4498eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4498eb = call %struct.Memory* @routine_movslq_MINUS0x874__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4498eb)
  store %struct.Memory* %call_4498eb, %struct.Memory** %MEMORY

  ; Code: movl %esi, 0x30(%rax,%rcx,4)	 RIP: 4498f2	 Bytes: 4
  %loadMem_4498f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4498f2 = call %struct.Memory* @routine_movl__esi__0x30__rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4498f2)
  store %struct.Memory* %call_4498f2, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x868(%rbp)	 RIP: 4498f6	 Bytes: 10
  %loadMem_4498f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4498f6 = call %struct.Memory* @routine_movl__0x0__MINUS0x868__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4498f6)
  store %struct.Memory* %call_4498f6, %struct.Memory** %MEMORY

  ; Code: .L_449900:	 RIP: 449900	 Bytes: 0
  br label %block_.L_449900
block_.L_449900:

  ; Code: cmpl $0x4, -0x868(%rbp)	 RIP: 449900	 Bytes: 7
  %loadMem_449900 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449900 = call %struct.Memory* @routine_cmpl__0x4__MINUS0x868__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449900)
  store %struct.Memory* %call_449900, %struct.Memory** %MEMORY

  ; Code: jge .L_449981	 RIP: 449907	 Bytes: 6
  %loadMem_449907 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449907 = call %struct.Memory* @routine_jge_.L_449981(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449907, i8* %BRANCH_TAKEN, i64 122, i64 6, i64 6)
  store %struct.Memory* %call_449907, %struct.Memory** %MEMORY

  %loadBr_449907 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_449907 = icmp eq i8 %loadBr_449907, 1
  br i1 %cmpBr_449907, label %block_.L_449981, label %block_44990d

block_44990d:
  ; Code: movl -0x864(%rbp), %eax	 RIP: 44990d	 Bytes: 6
  %loadMem_44990d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44990d = call %struct.Memory* @routine_movl_MINUS0x864__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44990d)
  store %struct.Memory* %call_44990d, %struct.Memory** %MEMORY

  ; Code: addl -0x868(%rbp), %eax	 RIP: 449913	 Bytes: 6
  %loadMem_449913 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449913 = call %struct.Memory* @routine_addl_MINUS0x868__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449913)
  store %struct.Memory* %call_449913, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 449919	 Bytes: 3
  %loadMem_449919 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449919 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449919)
  store %struct.Memory* %call_449919, %struct.Memory** %MEMORY

  ; Code: je .L_449968	 RIP: 44991c	 Bytes: 6
  %loadMem_44991c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44991c = call %struct.Memory* @routine_je_.L_449968(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44991c, i8* %BRANCH_TAKEN, i64 76, i64 6, i64 6)
  store %struct.Memory* %call_44991c, %struct.Memory** %MEMORY

  %loadBr_44991c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_44991c = icmp eq i8 %loadBr_44991c, 1
  br i1 %cmpBr_44991c, label %block_.L_449968, label %block_449922

block_449922:
  ; Code: leaq -0x810(%rbp), %rax	 RIP: 449922	 Bytes: 7
  %loadMem_449922 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449922 = call %struct.Memory* @routine_leaq_MINUS0x810__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449922)
  store %struct.Memory* %call_449922, %struct.Memory** %MEMORY

  ; Code: movslq -0x864(%rbp), %rcx	 RIP: 449929	 Bytes: 7
  %loadMem_449929 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449929 = call %struct.Memory* @routine_movslq_MINUS0x864__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449929)
  store %struct.Memory* %call_449929, %struct.Memory** %MEMORY

  ; Code: shlq $0x8, %rcx	 RIP: 449930	 Bytes: 4
  %loadMem_449930 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449930 = call %struct.Memory* @routine_shlq__0x8___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449930)
  store %struct.Memory* %call_449930, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 449934	 Bytes: 3
  %loadMem_449934 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449934 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449934)
  store %struct.Memory* %call_449934, %struct.Memory** %MEMORY

  ; Code: movslq -0x870(%rbp), %rcx	 RIP: 449937	 Bytes: 7
  %loadMem_449937 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449937 = call %struct.Memory* @routine_movslq_MINUS0x870__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449937)
  store %struct.Memory* %call_449937, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rcx	 RIP: 44993e	 Bytes: 4
  %loadMem_44993e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44993e = call %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44993e)
  store %struct.Memory* %call_44993e, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 449942	 Bytes: 3
  %loadMem_449942 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449942 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449942)
  store %struct.Memory* %call_449942, %struct.Memory** %MEMORY

  ; Code: movslq -0x868(%rbp), %rcx	 RIP: 449945	 Bytes: 7
  %loadMem_449945 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449945 = call %struct.Memory* @routine_movslq_MINUS0x868__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449945)
  store %struct.Memory* %call_449945, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rcx	 RIP: 44994c	 Bytes: 4
  %loadMem_44994c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44994c = call %struct.Memory* @routine_shlq__0x4___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44994c)
  store %struct.Memory* %call_44994c, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 449950	 Bytes: 3
  %loadMem_449950 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449950 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449950)
  store %struct.Memory* %call_449950, %struct.Memory** %MEMORY

  ; Code: movslq -0x874(%rbp), %rcx	 RIP: 449953	 Bytes: 7
  %loadMem_449953 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449953 = call %struct.Memory* @routine_movslq_MINUS0x874__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449953)
  store %struct.Memory* %call_449953, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rcx,4), %edi	 RIP: 44995a	 Bytes: 3
  %loadMem_44995a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44995a = call %struct.Memory* @routine_movl___rax__rcx_4____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44995a)
  store %struct.Memory* %call_44995a, %struct.Memory** %MEMORY

  ; Code: callq .abs_plt	 RIP: 44995d	 Bytes: 5
  %loadMem1_44995d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_44995d = call %struct.Memory* @routine_callq_.abs_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_44995d, i64 -297309, i64 5, i64 5)
  store %struct.Memory* %call1_44995d, %struct.Memory** %MEMORY

  %loadMem2_44995d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_44995d = load i64, i64* %3
  %call2_44995d = call %struct.Memory* @ext_abs(%struct.State* %0, i64  %loadPC_44995d, %struct.Memory* %loadMem2_44995d)
  store %struct.Memory* %call2_44995d, %struct.Memory** %MEMORY

  ; Code: addl -0xc(%rbp), %eax	 RIP: 449962	 Bytes: 3
  %loadMem_449962 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449962 = call %struct.Memory* @routine_addl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449962)
  store %struct.Memory* %call_449962, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xc(%rbp)	 RIP: 449965	 Bytes: 3
  %loadMem_449965 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449965 = call %struct.Memory* @routine_movl__eax__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449965)
  store %struct.Memory* %call_449965, %struct.Memory** %MEMORY

  ; Code: .L_449968:	 RIP: 449968	 Bytes: 0
  br label %block_.L_449968
block_.L_449968:

  ; Code: jmpq .L_44996d	 RIP: 449968	 Bytes: 5
  %loadMem_449968 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449968 = call %struct.Memory* @routine_jmpq_.L_44996d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449968, i64 5, i64 5)
  store %struct.Memory* %call_449968, %struct.Memory** %MEMORY

  br label %block_.L_44996d

  ; Code: .L_44996d:	 RIP: 44996d	 Bytes: 0
block_.L_44996d:

  ; Code: movl -0x868(%rbp), %eax	 RIP: 44996d	 Bytes: 6
  %loadMem_44996d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44996d = call %struct.Memory* @routine_movl_MINUS0x868__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44996d)
  store %struct.Memory* %call_44996d, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 449973	 Bytes: 3
  %loadMem_449973 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449973 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449973)
  store %struct.Memory* %call_449973, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x868(%rbp)	 RIP: 449976	 Bytes: 6
  %loadMem_449976 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449976 = call %struct.Memory* @routine_movl__eax__MINUS0x868__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449976)
  store %struct.Memory* %call_449976, %struct.Memory** %MEMORY

  ; Code: jmpq .L_449900	 RIP: 44997c	 Bytes: 5
  %loadMem_44997c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44997c = call %struct.Memory* @routine_jmpq_.L_449900(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44997c, i64 -124, i64 5)
  store %struct.Memory* %call_44997c, %struct.Memory** %MEMORY

  br label %block_.L_449900

  ; Code: .L_449981:	 RIP: 449981	 Bytes: 0
block_.L_449981:

  ; Code: jmpq .L_449986	 RIP: 449981	 Bytes: 5
  %loadMem_449981 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449981 = call %struct.Memory* @routine_jmpq_.L_449986(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449981, i64 5, i64 5)
  store %struct.Memory* %call_449981, %struct.Memory** %MEMORY

  br label %block_.L_449986

  ; Code: .L_449986:	 RIP: 449986	 Bytes: 0
block_.L_449986:

  ; Code: movl -0x864(%rbp), %eax	 RIP: 449986	 Bytes: 6
  %loadMem_449986 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449986 = call %struct.Memory* @routine_movl_MINUS0x864__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449986)
  store %struct.Memory* %call_449986, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 44998c	 Bytes: 3
  %loadMem_44998c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44998c = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44998c)
  store %struct.Memory* %call_44998c, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x864(%rbp)	 RIP: 44998f	 Bytes: 6
  %loadMem_44998f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44998f = call %struct.Memory* @routine_movl__eax__MINUS0x864__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44998f)
  store %struct.Memory* %call_44998f, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4496a8	 RIP: 449995	 Bytes: 5
  %loadMem_449995 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449995 = call %struct.Memory* @routine_jmpq_.L_4496a8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449995, i64 -749, i64 5)
  store %struct.Memory* %call_449995, %struct.Memory** %MEMORY

  br label %block_.L_4496a8

  ; Code: .L_44999a:	 RIP: 44999a	 Bytes: 0
block_.L_44999a:

  ; Code: jmpq .L_44999f	 RIP: 44999a	 Bytes: 5
  %loadMem_44999a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44999a = call %struct.Memory* @routine_jmpq_.L_44999f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44999a, i64 5, i64 5)
  store %struct.Memory* %call_44999a, %struct.Memory** %MEMORY

  br label %block_.L_44999f

  ; Code: .L_44999f:	 RIP: 44999f	 Bytes: 0
block_.L_44999f:

  ; Code: movl -0x870(%rbp), %eax	 RIP: 44999f	 Bytes: 6
  %loadMem_44999f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_44999f = call %struct.Memory* @routine_movl_MINUS0x870__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_44999f)
  store %struct.Memory* %call_44999f, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4499a5	 Bytes: 3
  %loadMem_4499a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4499a5 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4499a5)
  store %struct.Memory* %call_4499a5, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x870(%rbp)	 RIP: 4499a8	 Bytes: 6
  %loadMem_4499a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4499a8 = call %struct.Memory* @routine_movl__eax__MINUS0x870__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4499a8)
  store %struct.Memory* %call_4499a8, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4493f0	 RIP: 4499ae	 Bytes: 5
  %loadMem_4499ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4499ae = call %struct.Memory* @routine_jmpq_.L_4493f0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4499ae, i64 -1470, i64 5)
  store %struct.Memory* %call_4499ae, %struct.Memory** %MEMORY

  br label %block_.L_4493f0

  ; Code: .L_4499b3:	 RIP: 4499b3	 Bytes: 0
block_.L_4499b3:

  ; Code: jmpq .L_4499b8	 RIP: 4499b3	 Bytes: 5
  %loadMem_4499b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4499b3 = call %struct.Memory* @routine_jmpq_.L_4499b8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4499b3, i64 5, i64 5)
  store %struct.Memory* %call_4499b3, %struct.Memory** %MEMORY

  br label %block_.L_4499b8

  ; Code: .L_4499b8:	 RIP: 4499b8	 Bytes: 0
block_.L_4499b8:

  ; Code: movl -0x874(%rbp), %eax	 RIP: 4499b8	 Bytes: 6
  %loadMem_4499b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4499b8 = call %struct.Memory* @routine_movl_MINUS0x874__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4499b8)
  store %struct.Memory* %call_4499b8, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4499be	 Bytes: 3
  %loadMem_4499be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4499be = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4499be)
  store %struct.Memory* %call_4499be, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x874(%rbp)	 RIP: 4499c1	 Bytes: 6
  %loadMem_4499c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4499c1 = call %struct.Memory* @routine_movl__eax__MINUS0x874__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4499c1)
  store %struct.Memory* %call_4499c1, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4493d9	 RIP: 4499c7	 Bytes: 5
  %loadMem_4499c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4499c7 = call %struct.Memory* @routine_jmpq_.L_4493d9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4499c7, i64 -1518, i64 5)
  store %struct.Memory* %call_4499c7, %struct.Memory** %MEMORY

  br label %block_.L_4493d9

  ; Code: .L_4499cc:	 RIP: 4499cc	 Bytes: 0
block_.L_4499cc:

  ; Code: movl $0x0, -0x868(%rbp)	 RIP: 4499cc	 Bytes: 10
  %loadMem_4499cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4499cc = call %struct.Memory* @routine_movl__0x0__MINUS0x868__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4499cc)
  store %struct.Memory* %call_4499cc, %struct.Memory** %MEMORY

  ; Code: .L_4499d6:	 RIP: 4499d6	 Bytes: 0
  br label %block_.L_4499d6
block_.L_4499d6:

  ; Code: cmpl $0x4, -0x868(%rbp)	 RIP: 4499d6	 Bytes: 7
  %loadMem_4499d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4499d6 = call %struct.Memory* @routine_cmpl__0x4__MINUS0x868__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4499d6)
  store %struct.Memory* %call_4499d6, %struct.Memory** %MEMORY

  ; Code: jge .L_449a7e	 RIP: 4499dd	 Bytes: 6
  %loadMem_4499dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4499dd = call %struct.Memory* @routine_jge_.L_449a7e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4499dd, i8* %BRANCH_TAKEN, i64 161, i64 6, i64 6)
  store %struct.Memory* %call_4499dd, %struct.Memory** %MEMORY

  %loadBr_4499dd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4499dd = icmp eq i8 %loadBr_4499dd, 1
  br i1 %cmpBr_4499dd, label %block_.L_449a7e, label %block_4499e3

block_4499e3:
  ; Code: movl $0x0, -0x864(%rbp)	 RIP: 4499e3	 Bytes: 10
  %loadMem_4499e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4499e3 = call %struct.Memory* @routine_movl__0x0__MINUS0x864__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4499e3)
  store %struct.Memory* %call_4499e3, %struct.Memory** %MEMORY

  ; Code: .L_4499ed:	 RIP: 4499ed	 Bytes: 0
  br label %block_.L_4499ed
block_.L_4499ed:

  ; Code: cmpl $0x4, -0x864(%rbp)	 RIP: 4499ed	 Bytes: 7
  %loadMem_4499ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4499ed = call %struct.Memory* @routine_cmpl__0x4__MINUS0x864__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4499ed)
  store %struct.Memory* %call_4499ed, %struct.Memory** %MEMORY

  ; Code: jge .L_449a65	 RIP: 4499f4	 Bytes: 6
  %loadMem_4499f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4499f4 = call %struct.Memory* @routine_jge_.L_449a65(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4499f4, i8* %BRANCH_TAKEN, i64 113, i64 6, i64 6)
  store %struct.Memory* %call_4499f4, %struct.Memory** %MEMORY

  %loadBr_4499f4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4499f4 = icmp eq i8 %loadBr_4499f4, 1
  br i1 %cmpBr_4499f4, label %block_.L_449a65, label %block_4499fa

block_4499fa:
  ; Code: leaq -0x860(%rbp), %rax	 RIP: 4499fa	 Bytes: 7
  %loadMem_4499fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4499fa = call %struct.Memory* @routine_leaq_MINUS0x860__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4499fa)
  store %struct.Memory* %call_4499fa, %struct.Memory** %MEMORY

  ; Code: movl $0x4, %ecx	 RIP: 449a01	 Bytes: 5
  %loadMem_449a01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449a01 = call %struct.Memory* @routine_movl__0x4___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449a01)
  store %struct.Memory* %call_449a01, %struct.Memory** %MEMORY

  ; Code: leaq -0x810(%rbp), %rdx	 RIP: 449a06	 Bytes: 7
  %loadMem_449a06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449a06 = call %struct.Memory* @routine_leaq_MINUS0x810__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449a06)
  store %struct.Memory* %call_449a06, %struct.Memory** %MEMORY

  ; Code: movslq -0x864(%rbp), %rsi	 RIP: 449a0d	 Bytes: 7
  %loadMem_449a0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449a0d = call %struct.Memory* @routine_movslq_MINUS0x864__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449a0d)
  store %struct.Memory* %call_449a0d, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rsi	 RIP: 449a14	 Bytes: 4
  %loadMem_449a14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449a14 = call %struct.Memory* @routine_shlq__0x6___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449a14)
  store %struct.Memory* %call_449a14, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rdx	 RIP: 449a18	 Bytes: 3
  %loadMem_449a18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449a18 = call %struct.Memory* @routine_addq__rsi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449a18)
  store %struct.Memory* %call_449a18, %struct.Memory** %MEMORY

  ; Code: movslq -0x868(%rbp), %rsi	 RIP: 449a1b	 Bytes: 7
  %loadMem_449a1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449a1b = call %struct.Memory* @routine_movslq_MINUS0x868__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449a1b)
  store %struct.Memory* %call_449a1b, %struct.Memory** %MEMORY

  ; Code: movl (%rdx,%rsi,4), %edi	 RIP: 449a22	 Bytes: 3
  %loadMem_449a22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449a22 = call %struct.Memory* @routine_movl___rdx__rsi_4____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449a22)
  store %struct.Memory* %call_449a22, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0xa58(%rbp)	 RIP: 449a25	 Bytes: 7
  %loadMem_449a25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449a25 = call %struct.Memory* @routine_movq__rax__MINUS0xa58__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449a25)
  store %struct.Memory* %call_449a25, %struct.Memory** %MEMORY

  ; Code: movl %edi, %eax	 RIP: 449a2c	 Bytes: 2
  %loadMem_449a2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449a2c = call %struct.Memory* @routine_movl__edi___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449a2c)
  store %struct.Memory* %call_449a2c, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 449a2e	 Bytes: 1
  %loadMem_449a2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449a2e = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449a2e)
  store %struct.Memory* %call_449a2e, %struct.Memory** %MEMORY

  ; Code: idivl %ecx	 RIP: 449a2f	 Bytes: 2
  %loadMem_449a2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449a2f = call %struct.Memory* @routine_idivl__ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449a2f)
  store %struct.Memory* %call_449a2f, %struct.Memory** %MEMORY

  ; Code: movslq -0x864(%rbp), %rsi	 RIP: 449a31	 Bytes: 7
  %loadMem_449a31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449a31 = call %struct.Memory* @routine_movslq_MINUS0x864__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449a31)
  store %struct.Memory* %call_449a31, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rsi	 RIP: 449a38	 Bytes: 4
  %loadMem_449a38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449a38 = call %struct.Memory* @routine_shlq__0x4___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449a38)
  store %struct.Memory* %call_449a38, %struct.Memory** %MEMORY

  ; Code: movq -0xa58(%rbp), %r8	 RIP: 449a3c	 Bytes: 7
  %loadMem_449a3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449a3c = call %struct.Memory* @routine_movq_MINUS0xa58__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449a3c)
  store %struct.Memory* %call_449a3c, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %r8	 RIP: 449a43	 Bytes: 3
  %loadMem_449a43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449a43 = call %struct.Memory* @routine_addq__rsi___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449a43)
  store %struct.Memory* %call_449a43, %struct.Memory** %MEMORY

  ; Code: movslq -0x868(%rbp), %rsi	 RIP: 449a46	 Bytes: 7
  %loadMem_449a46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449a46 = call %struct.Memory* @routine_movslq_MINUS0x868__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449a46)
  store %struct.Memory* %call_449a46, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%r8,%rsi,4)	 RIP: 449a4d	 Bytes: 4
  %loadMem_449a4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449a4d = call %struct.Memory* @routine_movl__eax____r8__rsi_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449a4d)
  store %struct.Memory* %call_449a4d, %struct.Memory** %MEMORY

  ; Code: movl -0x864(%rbp), %eax	 RIP: 449a51	 Bytes: 6
  %loadMem_449a51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449a51 = call %struct.Memory* @routine_movl_MINUS0x864__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449a51)
  store %struct.Memory* %call_449a51, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 449a57	 Bytes: 3
  %loadMem_449a57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449a57 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449a57)
  store %struct.Memory* %call_449a57, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x864(%rbp)	 RIP: 449a5a	 Bytes: 6
  %loadMem_449a5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449a5a = call %struct.Memory* @routine_movl__eax__MINUS0x864__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449a5a)
  store %struct.Memory* %call_449a5a, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4499ed	 RIP: 449a60	 Bytes: 5
  %loadMem_449a60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449a60 = call %struct.Memory* @routine_jmpq_.L_4499ed(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449a60, i64 -115, i64 5)
  store %struct.Memory* %call_449a60, %struct.Memory** %MEMORY

  br label %block_.L_4499ed

  ; Code: .L_449a65:	 RIP: 449a65	 Bytes: 0
block_.L_449a65:

  ; Code: jmpq .L_449a6a	 RIP: 449a65	 Bytes: 5
  %loadMem_449a65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449a65 = call %struct.Memory* @routine_jmpq_.L_449a6a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449a65, i64 5, i64 5)
  store %struct.Memory* %call_449a65, %struct.Memory** %MEMORY

  br label %block_.L_449a6a

  ; Code: .L_449a6a:	 RIP: 449a6a	 Bytes: 0
block_.L_449a6a:

  ; Code: movl -0x868(%rbp), %eax	 RIP: 449a6a	 Bytes: 6
  %loadMem_449a6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449a6a = call %struct.Memory* @routine_movl_MINUS0x868__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449a6a)
  store %struct.Memory* %call_449a6a, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 449a70	 Bytes: 3
  %loadMem_449a70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449a70 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449a70)
  store %struct.Memory* %call_449a70, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x868(%rbp)	 RIP: 449a73	 Bytes: 6
  %loadMem_449a73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449a73 = call %struct.Memory* @routine_movl__eax__MINUS0x868__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449a73)
  store %struct.Memory* %call_449a73, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4499d6	 RIP: 449a79	 Bytes: 5
  %loadMem_449a79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449a79 = call %struct.Memory* @routine_jmpq_.L_4499d6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449a79, i64 -163, i64 5)
  store %struct.Memory* %call_449a79, %struct.Memory** %MEMORY

  br label %block_.L_4499d6

  ; Code: .L_449a7e:	 RIP: 449a7e	 Bytes: 0
block_.L_449a7e:

  ; Code: movl $0x0, -0x868(%rbp)	 RIP: 449a7e	 Bytes: 10
  %loadMem_449a7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449a7e = call %struct.Memory* @routine_movl__0x0__MINUS0x868__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449a7e)
  store %struct.Memory* %call_449a7e, %struct.Memory** %MEMORY

  ; Code: .L_449a88:	 RIP: 449a88	 Bytes: 0
  br label %block_.L_449a88
block_.L_449a88:

  ; Code: cmpl $0x4, -0x868(%rbp)	 RIP: 449a88	 Bytes: 7
  %loadMem_449a88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449a88 = call %struct.Memory* @routine_cmpl__0x4__MINUS0x868__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449a88)
  store %struct.Memory* %call_449a88, %struct.Memory** %MEMORY

  ; Code: jge .L_449b99	 RIP: 449a8f	 Bytes: 6
  %loadMem_449a8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449a8f = call %struct.Memory* @routine_jge_.L_449b99(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449a8f, i8* %BRANCH_TAKEN, i64 266, i64 6, i64 6)
  store %struct.Memory* %call_449a8f, %struct.Memory** %MEMORY

  %loadBr_449a8f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_449a8f = icmp eq i8 %loadBr_449a8f, 1
  br i1 %cmpBr_449a8f, label %block_.L_449b99, label %block_449a95

block_449a95:
  ; Code: movslq -0x868(%rbp), %rax	 RIP: 449a95	 Bytes: 7
  %loadMem_449a95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449a95 = call %struct.Memory* @routine_movslq_MINUS0x868__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449a95)
  store %struct.Memory* %call_449a95, %struct.Memory** %MEMORY

  ; Code: movl -0x860(%rbp,%rax,4), %ecx	 RIP: 449a9c	 Bytes: 7
  %loadMem_449a9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449a9c = call %struct.Memory* @routine_movl_MINUS0x860__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449a9c)
  store %struct.Memory* %call_449a9c, %struct.Memory** %MEMORY

  ; Code: movslq -0x868(%rbp), %rax	 RIP: 449aa3	 Bytes: 7
  %loadMem_449aa3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449aa3 = call %struct.Memory* @routine_movslq_MINUS0x868__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449aa3)
  store %struct.Memory* %call_449aa3, %struct.Memory** %MEMORY

  ; Code: addl -0x830(%rbp,%rax,4), %ecx	 RIP: 449aaa	 Bytes: 7
  %loadMem_449aaa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449aaa = call %struct.Memory* @routine_addl_MINUS0x830__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449aaa)
  store %struct.Memory* %call_449aaa, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x820(%rbp)	 RIP: 449ab1	 Bytes: 6
  %loadMem_449ab1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449ab1 = call %struct.Memory* @routine_movl__ecx__MINUS0x820__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449ab1)
  store %struct.Memory* %call_449ab1, %struct.Memory** %MEMORY

  ; Code: movslq -0x868(%rbp), %rax	 RIP: 449ab7	 Bytes: 7
  %loadMem_449ab7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449ab7 = call %struct.Memory* @routine_movslq_MINUS0x868__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449ab7)
  store %struct.Memory* %call_449ab7, %struct.Memory** %MEMORY

  ; Code: movl -0x850(%rbp,%rax,4), %ecx	 RIP: 449abe	 Bytes: 7
  %loadMem_449abe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449abe = call %struct.Memory* @routine_movl_MINUS0x850__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449abe)
  store %struct.Memory* %call_449abe, %struct.Memory** %MEMORY

  ; Code: movslq -0x868(%rbp), %rax	 RIP: 449ac5	 Bytes: 7
  %loadMem_449ac5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449ac5 = call %struct.Memory* @routine_movslq_MINUS0x868__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449ac5)
  store %struct.Memory* %call_449ac5, %struct.Memory** %MEMORY

  ; Code: addl -0x840(%rbp,%rax,4), %ecx	 RIP: 449acc	 Bytes: 7
  %loadMem_449acc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449acc = call %struct.Memory* @routine_addl_MINUS0x840__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449acc)
  store %struct.Memory* %call_449acc, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x81c(%rbp)	 RIP: 449ad3	 Bytes: 6
  %loadMem_449ad3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449ad3 = call %struct.Memory* @routine_movl__ecx__MINUS0x81c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449ad3)
  store %struct.Memory* %call_449ad3, %struct.Memory** %MEMORY

  ; Code: movslq -0x868(%rbp), %rax	 RIP: 449ad9	 Bytes: 7
  %loadMem_449ad9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449ad9 = call %struct.Memory* @routine_movslq_MINUS0x868__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449ad9)
  store %struct.Memory* %call_449ad9, %struct.Memory** %MEMORY

  ; Code: movl -0x850(%rbp,%rax,4), %ecx	 RIP: 449ae0	 Bytes: 7
  %loadMem_449ae0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449ae0 = call %struct.Memory* @routine_movl_MINUS0x850__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449ae0)
  store %struct.Memory* %call_449ae0, %struct.Memory** %MEMORY

  ; Code: movslq -0x868(%rbp), %rax	 RIP: 449ae7	 Bytes: 7
  %loadMem_449ae7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449ae7 = call %struct.Memory* @routine_movslq_MINUS0x868__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449ae7)
  store %struct.Memory* %call_449ae7, %struct.Memory** %MEMORY

  ; Code: subl -0x840(%rbp,%rax,4), %ecx	 RIP: 449aee	 Bytes: 7
  %loadMem_449aee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449aee = call %struct.Memory* @routine_subl_MINUS0x840__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449aee)
  store %struct.Memory* %call_449aee, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x818(%rbp)	 RIP: 449af5	 Bytes: 6
  %loadMem_449af5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449af5 = call %struct.Memory* @routine_movl__ecx__MINUS0x818__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449af5)
  store %struct.Memory* %call_449af5, %struct.Memory** %MEMORY

  ; Code: movslq -0x868(%rbp), %rax	 RIP: 449afb	 Bytes: 7
  %loadMem_449afb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449afb = call %struct.Memory* @routine_movslq_MINUS0x868__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449afb)
  store %struct.Memory* %call_449afb, %struct.Memory** %MEMORY

  ; Code: movl -0x860(%rbp,%rax,4), %ecx	 RIP: 449b02	 Bytes: 7
  %loadMem_449b02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449b02 = call %struct.Memory* @routine_movl_MINUS0x860__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449b02)
  store %struct.Memory* %call_449b02, %struct.Memory** %MEMORY

  ; Code: movslq -0x868(%rbp), %rax	 RIP: 449b09	 Bytes: 7
  %loadMem_449b09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449b09 = call %struct.Memory* @routine_movslq_MINUS0x868__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449b09)
  store %struct.Memory* %call_449b09, %struct.Memory** %MEMORY

  ; Code: subl -0x830(%rbp,%rax,4), %ecx	 RIP: 449b10	 Bytes: 7
  %loadMem_449b10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449b10 = call %struct.Memory* @routine_subl_MINUS0x830__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449b10)
  store %struct.Memory* %call_449b10, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x814(%rbp)	 RIP: 449b17	 Bytes: 6
  %loadMem_449b17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449b17 = call %struct.Memory* @routine_movl__ecx__MINUS0x814__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449b17)
  store %struct.Memory* %call_449b17, %struct.Memory** %MEMORY

  ; Code: movl -0x820(%rbp), %ecx	 RIP: 449b1d	 Bytes: 6
  %loadMem_449b1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449b1d = call %struct.Memory* @routine_movl_MINUS0x820__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449b1d)
  store %struct.Memory* %call_449b1d, %struct.Memory** %MEMORY

  ; Code: addl -0x81c(%rbp), %ecx	 RIP: 449b23	 Bytes: 6
  %loadMem_449b23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449b23 = call %struct.Memory* @routine_addl_MINUS0x81c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449b23)
  store %struct.Memory* %call_449b23, %struct.Memory** %MEMORY

  ; Code: movslq -0x868(%rbp), %rax	 RIP: 449b29	 Bytes: 7
  %loadMem_449b29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449b29 = call %struct.Memory* @routine_movslq_MINUS0x868__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449b29)
  store %struct.Memory* %call_449b29, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x860(%rbp,%rax,4)	 RIP: 449b30	 Bytes: 7
  %loadMem_449b30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449b30 = call %struct.Memory* @routine_movl__ecx__MINUS0x860__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449b30)
  store %struct.Memory* %call_449b30, %struct.Memory** %MEMORY

  ; Code: movl -0x820(%rbp), %ecx	 RIP: 449b37	 Bytes: 6
  %loadMem_449b37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449b37 = call %struct.Memory* @routine_movl_MINUS0x820__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449b37)
  store %struct.Memory* %call_449b37, %struct.Memory** %MEMORY

  ; Code: subl -0x81c(%rbp), %ecx	 RIP: 449b3d	 Bytes: 6
  %loadMem_449b3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449b3d = call %struct.Memory* @routine_subl_MINUS0x81c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449b3d)
  store %struct.Memory* %call_449b3d, %struct.Memory** %MEMORY

  ; Code: movslq -0x868(%rbp), %rax	 RIP: 449b43	 Bytes: 7
  %loadMem_449b43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449b43 = call %struct.Memory* @routine_movslq_MINUS0x868__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449b43)
  store %struct.Memory* %call_449b43, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x840(%rbp,%rax,4)	 RIP: 449b4a	 Bytes: 7
  %loadMem_449b4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449b4a = call %struct.Memory* @routine_movl__ecx__MINUS0x840__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449b4a)
  store %struct.Memory* %call_449b4a, %struct.Memory** %MEMORY

  ; Code: movl -0x818(%rbp), %ecx	 RIP: 449b51	 Bytes: 6
  %loadMem_449b51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449b51 = call %struct.Memory* @routine_movl_MINUS0x818__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449b51)
  store %struct.Memory* %call_449b51, %struct.Memory** %MEMORY

  ; Code: addl -0x814(%rbp), %ecx	 RIP: 449b57	 Bytes: 6
  %loadMem_449b57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449b57 = call %struct.Memory* @routine_addl_MINUS0x814__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449b57)
  store %struct.Memory* %call_449b57, %struct.Memory** %MEMORY

  ; Code: movslq -0x868(%rbp), %rax	 RIP: 449b5d	 Bytes: 7
  %loadMem_449b5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449b5d = call %struct.Memory* @routine_movslq_MINUS0x868__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449b5d)
  store %struct.Memory* %call_449b5d, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x850(%rbp,%rax,4)	 RIP: 449b64	 Bytes: 7
  %loadMem_449b64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449b64 = call %struct.Memory* @routine_movl__ecx__MINUS0x850__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449b64)
  store %struct.Memory* %call_449b64, %struct.Memory** %MEMORY

  ; Code: movl -0x814(%rbp), %ecx	 RIP: 449b6b	 Bytes: 6
  %loadMem_449b6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449b6b = call %struct.Memory* @routine_movl_MINUS0x814__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449b6b)
  store %struct.Memory* %call_449b6b, %struct.Memory** %MEMORY

  ; Code: subl -0x818(%rbp), %ecx	 RIP: 449b71	 Bytes: 6
  %loadMem_449b71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449b71 = call %struct.Memory* @routine_subl_MINUS0x818__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449b71)
  store %struct.Memory* %call_449b71, %struct.Memory** %MEMORY

  ; Code: movslq -0x868(%rbp), %rax	 RIP: 449b77	 Bytes: 7
  %loadMem_449b77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449b77 = call %struct.Memory* @routine_movslq_MINUS0x868__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449b77)
  store %struct.Memory* %call_449b77, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x830(%rbp,%rax,4)	 RIP: 449b7e	 Bytes: 7
  %loadMem_449b7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449b7e = call %struct.Memory* @routine_movl__ecx__MINUS0x830__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449b7e)
  store %struct.Memory* %call_449b7e, %struct.Memory** %MEMORY

  ; Code: movl -0x868(%rbp), %eax	 RIP: 449b85	 Bytes: 6
  %loadMem_449b85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449b85 = call %struct.Memory* @routine_movl_MINUS0x868__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449b85)
  store %struct.Memory* %call_449b85, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 449b8b	 Bytes: 3
  %loadMem_449b8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449b8b = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449b8b)
  store %struct.Memory* %call_449b8b, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x868(%rbp)	 RIP: 449b8e	 Bytes: 6
  %loadMem_449b8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449b8e = call %struct.Memory* @routine_movl__eax__MINUS0x868__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449b8e)
  store %struct.Memory* %call_449b8e, %struct.Memory** %MEMORY

  ; Code: jmpq .L_449a88	 RIP: 449b94	 Bytes: 5
  %loadMem_449b94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449b94 = call %struct.Memory* @routine_jmpq_.L_449a88(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449b94, i64 -268, i64 5)
  store %struct.Memory* %call_449b94, %struct.Memory** %MEMORY

  br label %block_.L_449a88

  ; Code: .L_449b99:	 RIP: 449b99	 Bytes: 0
block_.L_449b99:

  ; Code: movl $0x0, -0x864(%rbp)	 RIP: 449b99	 Bytes: 10
  %loadMem_449b99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449b99 = call %struct.Memory* @routine_movl__0x0__MINUS0x864__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449b99)
  store %struct.Memory* %call_449b99, %struct.Memory** %MEMORY

  ; Code: .L_449ba3:	 RIP: 449ba3	 Bytes: 0
  br label %block_.L_449ba3
block_.L_449ba3:

  ; Code: cmpl $0x4, -0x864(%rbp)	 RIP: 449ba3	 Bytes: 7
  %loadMem_449ba3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449ba3 = call %struct.Memory* @routine_cmpl__0x4__MINUS0x864__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449ba3)
  store %struct.Memory* %call_449ba3, %struct.Memory** %MEMORY

  ; Code: jge .L_449d57	 RIP: 449baa	 Bytes: 6
  %loadMem_449baa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449baa = call %struct.Memory* @routine_jge_.L_449d57(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449baa, i8* %BRANCH_TAKEN, i64 429, i64 6, i64 6)
  store %struct.Memory* %call_449baa, %struct.Memory** %MEMORY

  %loadBr_449baa = load i8, i8* %BRANCH_TAKEN
  %cmpBr_449baa = icmp eq i8 %loadBr_449baa, 1
  br i1 %cmpBr_449baa, label %block_.L_449d57, label %block_449bb0

block_449bb0:
  ; Code: leaq -0x860(%rbp), %rax	 RIP: 449bb0	 Bytes: 7
  %loadMem_449bb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449bb0 = call %struct.Memory* @routine_leaq_MINUS0x860__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449bb0)
  store %struct.Memory* %call_449bb0, %struct.Memory** %MEMORY

  ; Code: movslq -0x864(%rbp), %rcx	 RIP: 449bb7	 Bytes: 7
  %loadMem_449bb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449bb7 = call %struct.Memory* @routine_movslq_MINUS0x864__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449bb7)
  store %struct.Memory* %call_449bb7, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rcx	 RIP: 449bbe	 Bytes: 4
  %loadMem_449bbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449bbe = call %struct.Memory* @routine_shlq__0x4___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449bbe)
  store %struct.Memory* %call_449bbe, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 449bc2	 Bytes: 3
  %loadMem_449bc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449bc2 = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449bc2)
  store %struct.Memory* %call_449bc2, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdx	 RIP: 449bc5	 Bytes: 3
  %loadMem_449bc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449bc5 = call %struct.Memory* @routine_addq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449bc5)
  store %struct.Memory* %call_449bc5, %struct.Memory** %MEMORY

  ; Code: movl (%rdx), %esi	 RIP: 449bc8	 Bytes: 2
  %loadMem_449bc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449bc8 = call %struct.Memory* @routine_movl___rdx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449bc8)
  store %struct.Memory* %call_449bc8, %struct.Memory** %MEMORY

  ; Code: movslq -0x864(%rbp), %rcx	 RIP: 449bca	 Bytes: 7
  %loadMem_449bca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449bca = call %struct.Memory* @routine_movslq_MINUS0x864__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449bca)
  store %struct.Memory* %call_449bca, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rcx	 RIP: 449bd1	 Bytes: 4
  %loadMem_449bd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449bd1 = call %struct.Memory* @routine_shlq__0x4___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449bd1)
  store %struct.Memory* %call_449bd1, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 449bd5	 Bytes: 3
  %loadMem_449bd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449bd5 = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449bd5)
  store %struct.Memory* %call_449bd5, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdx	 RIP: 449bd8	 Bytes: 3
  %loadMem_449bd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449bd8 = call %struct.Memory* @routine_addq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449bd8)
  store %struct.Memory* %call_449bd8, %struct.Memory** %MEMORY

  ; Code: addl 0xc(%rdx), %esi	 RIP: 449bdb	 Bytes: 3
  %loadMem_449bdb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449bdb = call %struct.Memory* @routine_addl_0xc__rdx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449bdb)
  store %struct.Memory* %call_449bdb, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x820(%rbp)	 RIP: 449bde	 Bytes: 6
  %loadMem_449bde = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449bde = call %struct.Memory* @routine_movl__esi__MINUS0x820__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449bde)
  store %struct.Memory* %call_449bde, %struct.Memory** %MEMORY

  ; Code: movslq -0x864(%rbp), %rcx	 RIP: 449be4	 Bytes: 7
  %loadMem_449be4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449be4 = call %struct.Memory* @routine_movslq_MINUS0x864__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449be4)
  store %struct.Memory* %call_449be4, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rcx	 RIP: 449beb	 Bytes: 4
  %loadMem_449beb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449beb = call %struct.Memory* @routine_shlq__0x4___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449beb)
  store %struct.Memory* %call_449beb, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 449bef	 Bytes: 3
  %loadMem_449bef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449bef = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449bef)
  store %struct.Memory* %call_449bef, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdx	 RIP: 449bf2	 Bytes: 3
  %loadMem_449bf2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449bf2 = call %struct.Memory* @routine_addq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449bf2)
  store %struct.Memory* %call_449bf2, %struct.Memory** %MEMORY

  ; Code: movl 0x4(%rdx), %esi	 RIP: 449bf5	 Bytes: 3
  %loadMem_449bf5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449bf5 = call %struct.Memory* @routine_movl_0x4__rdx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449bf5)
  store %struct.Memory* %call_449bf5, %struct.Memory** %MEMORY

  ; Code: movslq -0x864(%rbp), %rcx	 RIP: 449bf8	 Bytes: 7
  %loadMem_449bf8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449bf8 = call %struct.Memory* @routine_movslq_MINUS0x864__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449bf8)
  store %struct.Memory* %call_449bf8, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rcx	 RIP: 449bff	 Bytes: 4
  %loadMem_449bff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449bff = call %struct.Memory* @routine_shlq__0x4___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449bff)
  store %struct.Memory* %call_449bff, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 449c03	 Bytes: 3
  %loadMem_449c03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449c03 = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449c03)
  store %struct.Memory* %call_449c03, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdx	 RIP: 449c06	 Bytes: 3
  %loadMem_449c06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449c06 = call %struct.Memory* @routine_addq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449c06)
  store %struct.Memory* %call_449c06, %struct.Memory** %MEMORY

  ; Code: addl 0x8(%rdx), %esi	 RIP: 449c09	 Bytes: 3
  %loadMem_449c09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449c09 = call %struct.Memory* @routine_addl_0x8__rdx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449c09)
  store %struct.Memory* %call_449c09, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x81c(%rbp)	 RIP: 449c0c	 Bytes: 6
  %loadMem_449c0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449c0c = call %struct.Memory* @routine_movl__esi__MINUS0x81c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449c0c)
  store %struct.Memory* %call_449c0c, %struct.Memory** %MEMORY

  ; Code: movslq -0x864(%rbp), %rcx	 RIP: 449c12	 Bytes: 7
  %loadMem_449c12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449c12 = call %struct.Memory* @routine_movslq_MINUS0x864__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449c12)
  store %struct.Memory* %call_449c12, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rcx	 RIP: 449c19	 Bytes: 4
  %loadMem_449c19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449c19 = call %struct.Memory* @routine_shlq__0x4___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449c19)
  store %struct.Memory* %call_449c19, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 449c1d	 Bytes: 3
  %loadMem_449c1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449c1d = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449c1d)
  store %struct.Memory* %call_449c1d, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdx	 RIP: 449c20	 Bytes: 3
  %loadMem_449c20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449c20 = call %struct.Memory* @routine_addq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449c20)
  store %struct.Memory* %call_449c20, %struct.Memory** %MEMORY

  ; Code: movl 0x4(%rdx), %esi	 RIP: 449c23	 Bytes: 3
  %loadMem_449c23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449c23 = call %struct.Memory* @routine_movl_0x4__rdx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449c23)
  store %struct.Memory* %call_449c23, %struct.Memory** %MEMORY

  ; Code: movslq -0x864(%rbp), %rcx	 RIP: 449c26	 Bytes: 7
  %loadMem_449c26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449c26 = call %struct.Memory* @routine_movslq_MINUS0x864__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449c26)
  store %struct.Memory* %call_449c26, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rcx	 RIP: 449c2d	 Bytes: 4
  %loadMem_449c2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449c2d = call %struct.Memory* @routine_shlq__0x4___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449c2d)
  store %struct.Memory* %call_449c2d, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 449c31	 Bytes: 3
  %loadMem_449c31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449c31 = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449c31)
  store %struct.Memory* %call_449c31, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdx	 RIP: 449c34	 Bytes: 3
  %loadMem_449c34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449c34 = call %struct.Memory* @routine_addq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449c34)
  store %struct.Memory* %call_449c34, %struct.Memory** %MEMORY

  ; Code: subl 0x8(%rdx), %esi	 RIP: 449c37	 Bytes: 3
  %loadMem_449c37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449c37 = call %struct.Memory* @routine_subl_0x8__rdx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449c37)
  store %struct.Memory* %call_449c37, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x818(%rbp)	 RIP: 449c3a	 Bytes: 6
  %loadMem_449c3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449c3a = call %struct.Memory* @routine_movl__esi__MINUS0x818__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449c3a)
  store %struct.Memory* %call_449c3a, %struct.Memory** %MEMORY

  ; Code: movslq -0x864(%rbp), %rcx	 RIP: 449c40	 Bytes: 7
  %loadMem_449c40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449c40 = call %struct.Memory* @routine_movslq_MINUS0x864__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449c40)
  store %struct.Memory* %call_449c40, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rcx	 RIP: 449c47	 Bytes: 4
  %loadMem_449c47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449c47 = call %struct.Memory* @routine_shlq__0x4___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449c47)
  store %struct.Memory* %call_449c47, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 449c4b	 Bytes: 3
  %loadMem_449c4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449c4b = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449c4b)
  store %struct.Memory* %call_449c4b, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdx	 RIP: 449c4e	 Bytes: 3
  %loadMem_449c4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449c4e = call %struct.Memory* @routine_addq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449c4e)
  store %struct.Memory* %call_449c4e, %struct.Memory** %MEMORY

  ; Code: movl (%rdx), %esi	 RIP: 449c51	 Bytes: 2
  %loadMem_449c51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449c51 = call %struct.Memory* @routine_movl___rdx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449c51)
  store %struct.Memory* %call_449c51, %struct.Memory** %MEMORY

  ; Code: movslq -0x864(%rbp), %rcx	 RIP: 449c53	 Bytes: 7
  %loadMem_449c53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449c53 = call %struct.Memory* @routine_movslq_MINUS0x864__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449c53)
  store %struct.Memory* %call_449c53, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rcx	 RIP: 449c5a	 Bytes: 4
  %loadMem_449c5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449c5a = call %struct.Memory* @routine_shlq__0x4___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449c5a)
  store %struct.Memory* %call_449c5a, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 449c5e	 Bytes: 3
  %loadMem_449c5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449c5e = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449c5e)
  store %struct.Memory* %call_449c5e, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdx	 RIP: 449c61	 Bytes: 3
  %loadMem_449c61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449c61 = call %struct.Memory* @routine_addq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449c61)
  store %struct.Memory* %call_449c61, %struct.Memory** %MEMORY

  ; Code: subl 0xc(%rdx), %esi	 RIP: 449c64	 Bytes: 3
  %loadMem_449c64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449c64 = call %struct.Memory* @routine_subl_0xc__rdx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449c64)
  store %struct.Memory* %call_449c64, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x814(%rbp)	 RIP: 449c67	 Bytes: 6
  %loadMem_449c67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449c67 = call %struct.Memory* @routine_movl__esi__MINUS0x814__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449c67)
  store %struct.Memory* %call_449c67, %struct.Memory** %MEMORY

  ; Code: movl -0x820(%rbp), %esi	 RIP: 449c6d	 Bytes: 6
  %loadMem_449c6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449c6d = call %struct.Memory* @routine_movl_MINUS0x820__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449c6d)
  store %struct.Memory* %call_449c6d, %struct.Memory** %MEMORY

  ; Code: addl -0x81c(%rbp), %esi	 RIP: 449c73	 Bytes: 6
  %loadMem_449c73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449c73 = call %struct.Memory* @routine_addl_MINUS0x81c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449c73)
  store %struct.Memory* %call_449c73, %struct.Memory** %MEMORY

  ; Code: movslq -0x864(%rbp), %rcx	 RIP: 449c79	 Bytes: 7
  %loadMem_449c79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449c79 = call %struct.Memory* @routine_movslq_MINUS0x864__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449c79)
  store %struct.Memory* %call_449c79, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rcx	 RIP: 449c80	 Bytes: 4
  %loadMem_449c80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449c80 = call %struct.Memory* @routine_shlq__0x4___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449c80)
  store %struct.Memory* %call_449c80, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 449c84	 Bytes: 3
  %loadMem_449c84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449c84 = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449c84)
  store %struct.Memory* %call_449c84, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdx	 RIP: 449c87	 Bytes: 3
  %loadMem_449c87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449c87 = call %struct.Memory* @routine_addq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449c87)
  store %struct.Memory* %call_449c87, %struct.Memory** %MEMORY

  ; Code: movl %esi, (%rdx)	 RIP: 449c8a	 Bytes: 2
  %loadMem_449c8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449c8a = call %struct.Memory* @routine_movl__esi____rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449c8a)
  store %struct.Memory* %call_449c8a, %struct.Memory** %MEMORY

  ; Code: movl -0x820(%rbp), %esi	 RIP: 449c8c	 Bytes: 6
  %loadMem_449c8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449c8c = call %struct.Memory* @routine_movl_MINUS0x820__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449c8c)
  store %struct.Memory* %call_449c8c, %struct.Memory** %MEMORY

  ; Code: subl -0x81c(%rbp), %esi	 RIP: 449c92	 Bytes: 6
  %loadMem_449c92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449c92 = call %struct.Memory* @routine_subl_MINUS0x81c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449c92)
  store %struct.Memory* %call_449c92, %struct.Memory** %MEMORY

  ; Code: movslq -0x864(%rbp), %rcx	 RIP: 449c98	 Bytes: 7
  %loadMem_449c98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449c98 = call %struct.Memory* @routine_movslq_MINUS0x864__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449c98)
  store %struct.Memory* %call_449c98, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rcx	 RIP: 449c9f	 Bytes: 4
  %loadMem_449c9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449c9f = call %struct.Memory* @routine_shlq__0x4___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449c9f)
  store %struct.Memory* %call_449c9f, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 449ca3	 Bytes: 3
  %loadMem_449ca3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449ca3 = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449ca3)
  store %struct.Memory* %call_449ca3, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdx	 RIP: 449ca6	 Bytes: 3
  %loadMem_449ca6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449ca6 = call %struct.Memory* @routine_addq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449ca6)
  store %struct.Memory* %call_449ca6, %struct.Memory** %MEMORY

  ; Code: movl %esi, 0x8(%rdx)	 RIP: 449ca9	 Bytes: 3
  %loadMem_449ca9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449ca9 = call %struct.Memory* @routine_movl__esi__0x8__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449ca9)
  store %struct.Memory* %call_449ca9, %struct.Memory** %MEMORY

  ; Code: movl -0x818(%rbp), %esi	 RIP: 449cac	 Bytes: 6
  %loadMem_449cac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449cac = call %struct.Memory* @routine_movl_MINUS0x818__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449cac)
  store %struct.Memory* %call_449cac, %struct.Memory** %MEMORY

  ; Code: addl -0x814(%rbp), %esi	 RIP: 449cb2	 Bytes: 6
  %loadMem_449cb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449cb2 = call %struct.Memory* @routine_addl_MINUS0x814__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449cb2)
  store %struct.Memory* %call_449cb2, %struct.Memory** %MEMORY

  ; Code: movslq -0x864(%rbp), %rcx	 RIP: 449cb8	 Bytes: 7
  %loadMem_449cb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449cb8 = call %struct.Memory* @routine_movslq_MINUS0x864__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449cb8)
  store %struct.Memory* %call_449cb8, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rcx	 RIP: 449cbf	 Bytes: 4
  %loadMem_449cbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449cbf = call %struct.Memory* @routine_shlq__0x4___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449cbf)
  store %struct.Memory* %call_449cbf, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 449cc3	 Bytes: 3
  %loadMem_449cc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449cc3 = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449cc3)
  store %struct.Memory* %call_449cc3, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rdx	 RIP: 449cc6	 Bytes: 3
  %loadMem_449cc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449cc6 = call %struct.Memory* @routine_addq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449cc6)
  store %struct.Memory* %call_449cc6, %struct.Memory** %MEMORY

  ; Code: movl %esi, 0x4(%rdx)	 RIP: 449cc9	 Bytes: 3
  %loadMem_449cc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449cc9 = call %struct.Memory* @routine_movl__esi__0x4__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449cc9)
  store %struct.Memory* %call_449cc9, %struct.Memory** %MEMORY

  ; Code: movl -0x814(%rbp), %esi	 RIP: 449ccc	 Bytes: 6
  %loadMem_449ccc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449ccc = call %struct.Memory* @routine_movl_MINUS0x814__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449ccc)
  store %struct.Memory* %call_449ccc, %struct.Memory** %MEMORY

  ; Code: subl -0x818(%rbp), %esi	 RIP: 449cd2	 Bytes: 6
  %loadMem_449cd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449cd2 = call %struct.Memory* @routine_subl_MINUS0x818__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449cd2)
  store %struct.Memory* %call_449cd2, %struct.Memory** %MEMORY

  ; Code: movslq -0x864(%rbp), %rcx	 RIP: 449cd8	 Bytes: 7
  %loadMem_449cd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449cd8 = call %struct.Memory* @routine_movslq_MINUS0x864__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449cd8)
  store %struct.Memory* %call_449cd8, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rcx	 RIP: 449cdf	 Bytes: 4
  %loadMem_449cdf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449cdf = call %struct.Memory* @routine_shlq__0x4___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449cdf)
  store %struct.Memory* %call_449cdf, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 449ce3	 Bytes: 3
  %loadMem_449ce3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449ce3 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449ce3)
  store %struct.Memory* %call_449ce3, %struct.Memory** %MEMORY

  ; Code: movl %esi, 0xc(%rax)	 RIP: 449ce6	 Bytes: 3
  %loadMem_449ce6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449ce6 = call %struct.Memory* @routine_movl__esi__0xc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449ce6)
  store %struct.Memory* %call_449ce6, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x868(%rbp)	 RIP: 449ce9	 Bytes: 10
  %loadMem_449ce9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449ce9 = call %struct.Memory* @routine_movl__0x0__MINUS0x868__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449ce9)
  store %struct.Memory* %call_449ce9, %struct.Memory** %MEMORY

  ; Code: .L_449cf3:	 RIP: 449cf3	 Bytes: 0
  br label %block_.L_449cf3
block_.L_449cf3:

  ; Code: cmpl $0x4, -0x868(%rbp)	 RIP: 449cf3	 Bytes: 7
  %loadMem_449cf3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449cf3 = call %struct.Memory* @routine_cmpl__0x4__MINUS0x868__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449cf3)
  store %struct.Memory* %call_449cf3, %struct.Memory** %MEMORY

  ; Code: jge .L_449d3e	 RIP: 449cfa	 Bytes: 6
  %loadMem_449cfa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449cfa = call %struct.Memory* @routine_jge_.L_449d3e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449cfa, i8* %BRANCH_TAKEN, i64 68, i64 6, i64 6)
  store %struct.Memory* %call_449cfa, %struct.Memory** %MEMORY

  %loadBr_449cfa = load i8, i8* %BRANCH_TAKEN
  %cmpBr_449cfa = icmp eq i8 %loadBr_449cfa, 1
  br i1 %cmpBr_449cfa, label %block_.L_449d3e, label %block_449d00

block_449d00:
  ; Code: leaq -0x860(%rbp), %rax	 RIP: 449d00	 Bytes: 7
  %loadMem_449d00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449d00 = call %struct.Memory* @routine_leaq_MINUS0x860__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449d00)
  store %struct.Memory* %call_449d00, %struct.Memory** %MEMORY

  ; Code: movslq -0x864(%rbp), %rcx	 RIP: 449d07	 Bytes: 7
  %loadMem_449d07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449d07 = call %struct.Memory* @routine_movslq_MINUS0x864__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449d07)
  store %struct.Memory* %call_449d07, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rcx	 RIP: 449d0e	 Bytes: 4
  %loadMem_449d0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449d0e = call %struct.Memory* @routine_shlq__0x4___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449d0e)
  store %struct.Memory* %call_449d0e, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 449d12	 Bytes: 3
  %loadMem_449d12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449d12 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449d12)
  store %struct.Memory* %call_449d12, %struct.Memory** %MEMORY

  ; Code: movslq -0x868(%rbp), %rcx	 RIP: 449d15	 Bytes: 7
  %loadMem_449d15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449d15 = call %struct.Memory* @routine_movslq_MINUS0x868__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449d15)
  store %struct.Memory* %call_449d15, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rcx,4), %edi	 RIP: 449d1c	 Bytes: 3
  %loadMem_449d1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449d1c = call %struct.Memory* @routine_movl___rax__rcx_4____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449d1c)
  store %struct.Memory* %call_449d1c, %struct.Memory** %MEMORY

  ; Code: callq .abs_plt	 RIP: 449d1f	 Bytes: 5
  %loadMem1_449d1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_449d1f = call %struct.Memory* @routine_callq_.abs_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_449d1f, i64 -298271, i64 5, i64 5)
  store %struct.Memory* %call1_449d1f, %struct.Memory** %MEMORY

  %loadMem2_449d1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_449d1f = load i64, i64* %3
  %call2_449d1f = call %struct.Memory* @ext_abs(%struct.State* %0, i64  %loadPC_449d1f, %struct.Memory* %loadMem2_449d1f)
  store %struct.Memory* %call2_449d1f, %struct.Memory** %MEMORY

  ; Code: addl -0xc(%rbp), %eax	 RIP: 449d24	 Bytes: 3
  %loadMem_449d24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449d24 = call %struct.Memory* @routine_addl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449d24)
  store %struct.Memory* %call_449d24, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xc(%rbp)	 RIP: 449d27	 Bytes: 3
  %loadMem_449d27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449d27 = call %struct.Memory* @routine_movl__eax__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449d27)
  store %struct.Memory* %call_449d27, %struct.Memory** %MEMORY

  ; Code: movl -0x868(%rbp), %eax	 RIP: 449d2a	 Bytes: 6
  %loadMem_449d2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449d2a = call %struct.Memory* @routine_movl_MINUS0x868__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449d2a)
  store %struct.Memory* %call_449d2a, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 449d30	 Bytes: 3
  %loadMem_449d30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449d30 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449d30)
  store %struct.Memory* %call_449d30, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x868(%rbp)	 RIP: 449d33	 Bytes: 6
  %loadMem_449d33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449d33 = call %struct.Memory* @routine_movl__eax__MINUS0x868__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449d33)
  store %struct.Memory* %call_449d33, %struct.Memory** %MEMORY

  ; Code: jmpq .L_449cf3	 RIP: 449d39	 Bytes: 5
  %loadMem_449d39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449d39 = call %struct.Memory* @routine_jmpq_.L_449cf3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449d39, i64 -70, i64 5)
  store %struct.Memory* %call_449d39, %struct.Memory** %MEMORY

  br label %block_.L_449cf3

  ; Code: .L_449d3e:	 RIP: 449d3e	 Bytes: 0
block_.L_449d3e:

  ; Code: jmpq .L_449d43	 RIP: 449d3e	 Bytes: 5
  %loadMem_449d3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449d3e = call %struct.Memory* @routine_jmpq_.L_449d43(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449d3e, i64 5, i64 5)
  store %struct.Memory* %call_449d3e, %struct.Memory** %MEMORY

  br label %block_.L_449d43

  ; Code: .L_449d43:	 RIP: 449d43	 Bytes: 0
block_.L_449d43:

  ; Code: movl -0x864(%rbp), %eax	 RIP: 449d43	 Bytes: 6
  %loadMem_449d43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449d43 = call %struct.Memory* @routine_movl_MINUS0x864__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449d43)
  store %struct.Memory* %call_449d43, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 449d49	 Bytes: 3
  %loadMem_449d49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449d49 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449d49)
  store %struct.Memory* %call_449d49, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x864(%rbp)	 RIP: 449d4c	 Bytes: 6
  %loadMem_449d4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449d4c = call %struct.Memory* @routine_movl__eax__MINUS0x864__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449d4c)
  store %struct.Memory* %call_449d4c, %struct.Memory** %MEMORY

  ; Code: jmpq .L_449ba3	 RIP: 449d52	 Bytes: 5
  %loadMem_449d52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449d52 = call %struct.Memory* @routine_jmpq_.L_449ba3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449d52, i64 -431, i64 5)
  store %struct.Memory* %call_449d52, %struct.Memory** %MEMORY

  br label %block_.L_449ba3

  ; Code: .L_449d57:	 RIP: 449d57	 Bytes: 0
block_.L_449d57:

  ; Code: movl -0xc(%rbp), %eax	 RIP: 449d57	 Bytes: 3
  %loadMem_449d57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449d57 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449d57)
  store %struct.Memory* %call_449d57, %struct.Memory** %MEMORY

  ; Code: cmpl -0x10(%rbp), %eax	 RIP: 449d5a	 Bytes: 3
  %loadMem_449d5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449d5a = call %struct.Memory* @routine_cmpl_MINUS0x10__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449d5a)
  store %struct.Memory* %call_449d5a, %struct.Memory** %MEMORY

  ; Code: jge .L_449d75	 RIP: 449d5d	 Bytes: 6
  %loadMem_449d5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449d5d = call %struct.Memory* @routine_jge_.L_449d75(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449d5d, i8* %BRANCH_TAKEN, i64 24, i64 6, i64 6)
  store %struct.Memory* %call_449d5d, %struct.Memory** %MEMORY

  %loadBr_449d5d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_449d5d = icmp eq i8 %loadBr_449d5d, 1
  br i1 %cmpBr_449d5d, label %block_.L_449d75, label %block_449d63

block_449d63:
  ; Code: movl -0xc(%rbp), %eax	 RIP: 449d63	 Bytes: 3
  %loadMem_449d63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449d63 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449d63)
  store %struct.Memory* %call_449d63, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x10(%rbp)	 RIP: 449d66	 Bytes: 3
  %loadMem_449d66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449d66 = call %struct.Memory* @routine_movl__eax__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449d66)
  store %struct.Memory* %call_449d66, %struct.Memory** %MEMORY

  ; Code: movl -0x86c(%rbp), %eax	 RIP: 449d69	 Bytes: 6
  %loadMem_449d69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449d69 = call %struct.Memory* @routine_movl_MINUS0x86c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449d69)
  store %struct.Memory* %call_449d69, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 449d6f	 Bytes: 4
  %loadMem_449d6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449d6f = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449d6f)
  store %struct.Memory* %call_449d6f, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx)	 RIP: 449d73	 Bytes: 2
  %loadMem_449d73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449d73 = call %struct.Memory* @routine_movl__eax____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449d73)
  store %struct.Memory* %call_449d73, %struct.Memory** %MEMORY

  ; Code: .L_449d75:	 RIP: 449d75	 Bytes: 0
  br label %block_.L_449d75
block_.L_449d75:

  ; Code: jmpq .L_449d7a	 RIP: 449d75	 Bytes: 5
  %loadMem_449d75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449d75 = call %struct.Memory* @routine_jmpq_.L_449d7a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449d75, i64 5, i64 5)
  store %struct.Memory* %call_449d75, %struct.Memory** %MEMORY

  br label %block_.L_449d7a

  ; Code: .L_449d7a:	 RIP: 449d7a	 Bytes: 0
block_.L_449d7a:

  ; Code: jmpq .L_449d7f	 RIP: 449d7a	 Bytes: 5
  %loadMem_449d7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449d7a = call %struct.Memory* @routine_jmpq_.L_449d7f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449d7a, i64 5, i64 5)
  store %struct.Memory* %call_449d7a, %struct.Memory** %MEMORY

  br label %block_.L_449d7f

  ; Code: .L_449d7f:	 RIP: 449d7f	 Bytes: 0
block_.L_449d7f:

  ; Code: movl -0x86c(%rbp), %eax	 RIP: 449d7f	 Bytes: 6
  %loadMem_449d7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449d7f = call %struct.Memory* @routine_movl_MINUS0x86c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449d7f)
  store %struct.Memory* %call_449d7f, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 449d85	 Bytes: 3
  %loadMem_449d85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449d85 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449d85)
  store %struct.Memory* %call_449d85, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x86c(%rbp)	 RIP: 449d88	 Bytes: 6
  %loadMem_449d88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449d88 = call %struct.Memory* @routine_movl__eax__MINUS0x86c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449d88)
  store %struct.Memory* %call_449d88, %struct.Memory** %MEMORY

  ; Code: jmpq .L_449145	 RIP: 449d8e	 Bytes: 5
  %loadMem_449d8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449d8e = call %struct.Memory* @routine_jmpq_.L_449145(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449d8e, i64 -3145, i64 5)
  store %struct.Memory* %call_449d8e, %struct.Memory** %MEMORY

  br label %block_.L_449145

  ; Code: .L_449d93:	 RIP: 449d93	 Bytes: 0
block_.L_449d93:

  ; Code: movl $0x2, %eax	 RIP: 449d93	 Bytes: 5
  %loadMem_449d93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449d93 = call %struct.Memory* @routine_movl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449d93)
  store %struct.Memory* %call_449d93, %struct.Memory** %MEMORY

  ; Code: movl -0x10(%rbp), %ecx	 RIP: 449d98	 Bytes: 3
  %loadMem_449d98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449d98 = call %struct.Memory* @routine_movl_MINUS0x10__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449d98)
  store %struct.Memory* %call_449d98, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xa5c(%rbp)	 RIP: 449d9b	 Bytes: 6
  %loadMem_449d9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449d9b = call %struct.Memory* @routine_movl__eax__MINUS0xa5c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449d9b)
  store %struct.Memory* %call_449d9b, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %eax	 RIP: 449da1	 Bytes: 2
  %loadMem_449da1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449da1 = call %struct.Memory* @routine_movl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449da1)
  store %struct.Memory* %call_449da1, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 449da3	 Bytes: 1
  %loadMem_449da3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449da3 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449da3)
  store %struct.Memory* %call_449da3, %struct.Memory** %MEMORY

  ; Code: movl -0xa5c(%rbp), %ecx	 RIP: 449da4	 Bytes: 6
  %loadMem_449da4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449da4 = call %struct.Memory* @routine_movl_MINUS0xa5c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449da4)
  store %struct.Memory* %call_449da4, %struct.Memory** %MEMORY

  ; Code: idivl %ecx	 RIP: 449daa	 Bytes: 2
  %loadMem_449daa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449daa = call %struct.Memory* @routine_idivl__ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449daa)
  store %struct.Memory* %call_449daa, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x10(%rbp)	 RIP: 449dac	 Bytes: 3
  %loadMem_449dac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449dac = call %struct.Memory* @routine_movl__eax__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449dac)
  store %struct.Memory* %call_449dac, %struct.Memory** %MEMORY

  ; Code: movl -0x10(%rbp), %eax	 RIP: 449daf	 Bytes: 3
  %loadMem_449daf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449daf = call %struct.Memory* @routine_movl_MINUS0x10__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449daf)
  store %struct.Memory* %call_449daf, %struct.Memory** %MEMORY

  ; Code: addq $0xa60, %rsp	 RIP: 449db2	 Bytes: 7
  %loadMem_449db2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449db2 = call %struct.Memory* @routine_addq__0xa60___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449db2)
  store %struct.Memory* %call_449db2, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 449db9	 Bytes: 1
  %loadMem_449db9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449db9 = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449db9)
  store %struct.Memory* %call_449db9, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 449dba	 Bytes: 1
  %loadMem_449dba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_449dba = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_449dba)
  store %struct.Memory* %call_449dba, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_449dba
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

define %struct.Memory* @routine_subq__0xa60___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 2656)
  ret %struct.Memory* %12
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl_0xc__rdi____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %12 = load i64, i64* %RDI
  %13 = add i64 %12, 12
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

define %struct.Memory* @routine_movl__eax__MINUS0x878__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 2168
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
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

define %struct.Memory* @routine_movl__0x0__MINUS0x864__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 2148
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
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

define %struct.Memory* @routine_cmpl__0x11__MINUS0x864__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 2148
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 17)
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

define %struct.Memory* @routine_jge_.L_448f91(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0xffffffff___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 4294967295)
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_leaq_MINUS0xa30__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 2608
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x878__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 2168
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x864__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 2148
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = sext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movslq_MINUS0x864__rbp____r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 2148
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %13)
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

define %struct.Memory* @routine_imulq__0x18___r8___r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %9, i64 24)
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

define %struct.Memory* @routine_addq__r8___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RAX
  %13 = load i64, i64* %R8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__rax___r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RAX
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %12)
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

define %struct.Memory* @routine_callq_.getNeighbour(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_MINUS0x864__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 2148
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
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


define %struct.Memory* @routine_movl__eax__MINUS0x864__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 2148
  %14 = load i32, i32* %EAX
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

define %struct.Memory* @routine_jmpq_.L_448f3a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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


define %struct.Memory* @routine_movl__0xffffffff___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 4294967295)
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_leaq_MINUS0x890__rbp____r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 2192
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movq_0x6cb8f8___r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 ptrtoint( %G_0x6cb8f8_type* @G_0x6cb8f8 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_cmpl__0x0__0xd8__r8_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 216
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
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

define %struct.Memory* @routine_jne_.L_448fee(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_MINUS0x890__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 2192
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__eax__MINUS0xa34__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 2612
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0xa18__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 2584
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__eax__MINUS0xa38__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 2616
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0xa30__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 2608
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__eax__MINUS0xa3c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 2620
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_44912a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_cmpl__0x0__MINUS0x890__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 2192
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

define %struct.Memory* @routine_je_.L_44901f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq_0x11868__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 71784
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movslq_MINUS0x88c__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 2188
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
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


define %struct.Memory* @routine_movl__edx__MINUS0xa40__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 2624
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_44902c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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


define %struct.Memory* @routine_movl__eax__MINUS0xa40__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 2624
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movl_MINUS0xa40__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 2624
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__0x1__MINUS0x864__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 2148
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x1__MINUS0xa38__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 2616
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_jge_.L_4490e0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movslq_MINUS0x864__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 2148
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_imulq__0x18___rcx___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 24)
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


define %struct.Memory* @routine_cmpl__0x0____rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %9, i64 0)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_je_.L_4490ad(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq_0x11868__rcx____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 71784
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movslq_MINUS0x864__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 2148
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movslq_0x4__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 4
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl___rcx__rax_4____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RAX
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 3
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %18)
  ret %struct.Memory* %21
}


define %struct.Memory* @routine_movl__esi__MINUS0xa44__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 2628
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_4490ba(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_movl__eax__MINUS0xa44__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 2628
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movl_MINUS0xa44__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 2628
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
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

define %struct.Memory* @routine_andl_MINUS0xa38__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = sub i64 %13, 2616
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}










define %struct.Memory* @routine_jmpq_.L_44904c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_cmpl__0x0__MINUS0xa30__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 2608
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_449111(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movslq_MINUS0xa2c__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 2604
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__edx__MINUS0xa48__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 2632
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_44911e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_movl__eax__MINUS0xa48__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 2632
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movl_MINUS0xa48__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 2632
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__0xf423f__MINUS0x10__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 999999)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__0x2____rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %9, i64 2)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl__0x0__MINUS0x86c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 2156
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_cmpl__0x4__MINUS0x86c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 2156
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 4)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_449d93(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x0__0x95c__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 2396
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_449179(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_je_.L_4491d9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpl__0x0__0x96c__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 2412
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_4491ad(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x0__MINUS0x86c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 2156
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_4491a8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x1__MINUS0x86c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 2156
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_4491ad(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_449d7f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_cmpl__0x0__0x970__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 2416
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_4491d4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x3__MINUS0x86c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 2156
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 3)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_4491d4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jmpq_.L_4491d9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_jne_.L_4491f3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x0__MINUS0xa34__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 2612
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_449241(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jne_.L_44920d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x0__MINUS0xa38__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 2616
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}






define %struct.Memory* @routine_jne_.L_449246(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_cmpl__0x0__MINUS0xa3c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 2620
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_jmpq_.L_449d7a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movl__0x0__MINUS0x868__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 2152
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_cmpl__0x10__MINUS0x868__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 2152
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 16)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_4493c8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpl__0x10__MINUS0x864__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 2148
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 16)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_4493af(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_leaq_MINUS0x810__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 2064
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_leaq_MINUS0x410__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1040
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_0x726418___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G_0x726418_type* @G_0x726418 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movl_0xac__rdi____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = bitcast i32* %R8D to i64*
  %13 = load i64, i64* %RDI
  %14 = add i64 %13, 172
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
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

define %struct.Memory* @routine_addl_MINUS0x868__rbp____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i32, i32* %R8D
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %RBP
  %16 = sub i64 %15, 2152
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 7
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14, i64 %16)
  ret %struct.Memory* %19
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = shl i64 %3, 32
  %6 = ashr exact i64 %5, 32
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movslq__r8d___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %R8D
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
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




define %struct.Memory* @routine_movl_0xa8__rdi____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = bitcast i32* %R8D to i64*
  %13 = load i64, i64* %RDI
  %14 = add i64 %13, 168
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_addl_MINUS0x864__rbp____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i32, i32* %R8D
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %RBP
  %16 = sub i64 %15, 2148
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 7
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14, i64 %16)
  ret %struct.Memory* %19
}



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i16*
  %6 = load i16, i16* %5
  %7 = zext i16 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movzwl___rsi__rdi_2____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 11
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDI = bitcast %union.anon* %14 to i64*
  %15 = bitcast i32* %R8D to i64*
  %16 = load i64, i64* %RSI
  %17 = load i64, i64* %RDI
  %18 = mul i64 %17, 2
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 5
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %15, i64 %19)
  ret %struct.Memory* %22
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

define %struct.Memory* @routine_addq__0x12b8___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 4792)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movslq_MINUS0x86c__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 2156
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
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

define %struct.Memory* @routine_shlq__0x9___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %9, i64 9)
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


define %struct.Memory* @routine_movslq_MINUS0x868__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 2152
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
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




define %struct.Memory* @routine_movslq_MINUS0x864__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 2148
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movzwl___rsi__rdi_2____r9d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 11
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDI = bitcast %union.anon* %14 to i64*
  %15 = bitcast i32* %R9D to i64*
  %16 = load i64, i64* %RSI
  %17 = load i64, i64* %RDI
  %18 = mul i64 %17, 2
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 5
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnItEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %15, i64 %19)
  ret %struct.Memory* %22
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

define %struct.Memory* @routine_subl__r9d___r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9D = bitcast %union.anon* %11 to i32*
  %12 = bitcast i32* %R8D to i64*
  %13 = load i32, i32* %R8D
  %14 = zext i32 %13 to i64
  %15 = load i32, i32* %R9D
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 3
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_movslq_MINUS0x864__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 2148
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
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


define %struct.Memory* @routine_movslq_MINUS0x868__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 2152
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__r8d____rdi__rsi_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %19 = load i32, i32* %R8D
  %20 = zext i32 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 4
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %18, i64 %20)
  ret %struct.Memory* %23
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




define %struct.Memory* @routine_movl___rdx__rsi_4____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 9
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RSI = bitcast %union.anon* %14 to i64*
  %15 = bitcast i32* %R8D to i64*
  %16 = load i64, i64* %RDX
  %17 = load i64, i64* %RSI
  %18 = mul i64 %17, 4
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 4
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %15, i64 %19)
  ret %struct.Memory* %22
}


define %struct.Memory* @routine_movl_MINUS0x864__rbp____r9d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 2148
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__eax__MINUS0xa4c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 2636
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

define %struct.Memory* @routine_movl__r9d___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RAX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %R9D
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
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


define %struct.Memory* @routine_movl_MINUS0xa4c__rbp____r9d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 2636
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_shlq__0x8___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 8)
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






define %struct.Memory* @routine_movl_MINUS0x868__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 2152
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
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




define %struct.Memory* @routine_movl_MINUS0x868__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 2152
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_movl__r8d____rcx__rsi_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 9
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RSI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RSI
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i32, i32* %R8D
  %20 = zext i32 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 4
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %18, i64 %20)
  ret %struct.Memory* %23
}








define %struct.Memory* @routine_jmpq_.L_449267(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_4493b4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_movl__eax__MINUS0x868__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 2152
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_449250(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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


define %struct.Memory* @routine_movl__0x0__MINUS0x874__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 2164
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_cmpl__0x4__MINUS0x874__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 2164
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 4)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_4499cc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x0__MINUS0x870__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 2160
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_cmpl__0x4__MINUS0x870__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 2160
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 4)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_4499b3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpl__0x4__MINUS0x868__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 2152
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 4)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_44969e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_leaq_MINUS0x810__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 2064
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movslq_MINUS0x870__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 2160
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
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


define %struct.Memory* @routine_movslq_MINUS0x868__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 2152
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
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




define %struct.Memory* @routine_movslq_MINUS0x874__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 2164
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl___rdx__rcx_4____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 3
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %18)
  ret %struct.Memory* %21
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


define %struct.Memory* @routine_addq__0x300___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 768)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movslq_MINUS0x870__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 2160
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
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


define %struct.Memory* @routine_movslq_MINUS0x868__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 2152
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
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




define %struct.Memory* @routine_movslq_MINUS0x874__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 2164
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addl___rcx__rdx_4____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = load i64, i64* %RSI
  %16 = load i64, i64* %RCX
  %17 = load i64, i64* %RDX
  %18 = mul i64 %17, 4
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 3
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %15, i64 %19)
  ret %struct.Memory* %22
}


define %struct.Memory* @routine_movl__esi__MINUS0x820__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 2080
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_addq__0x100___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 256)
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




define %struct.Memory* @routine_addq__0x200___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 512)
  ret %struct.Memory* %12
}


















define %struct.Memory* @routine_movl__esi__MINUS0x81c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 2076
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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

define %struct.Memory* @routine_subl___rcx__rdx_4____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = load i64, i64* %RSI
  %16 = load i64, i64* %RCX
  %17 = load i64, i64* %RDX
  %18 = mul i64 %17, 4
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 3
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %15, i64 %19)
  ret %struct.Memory* %22
}


define %struct.Memory* @routine_movl__esi__MINUS0x818__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 2072
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}








































define %struct.Memory* @routine_movl__esi__MINUS0x814__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 2068
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x820__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 2080
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addl_MINUS0x81c__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 2076
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


















define %struct.Memory* @routine_movl__esi____rdx__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = load i64, i64* %RDX
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




define %struct.Memory* @routine_subl_MINUS0x81c__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 2076
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_movl_MINUS0x818__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 2072
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addl_MINUS0x814__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 2068
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12, i64 %14)
  ret %struct.Memory* %17
}






















define %struct.Memory* @routine_movl_MINUS0x814__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 2068
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_subl_MINUS0x818__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 2072
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_addq__0x300___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 768)
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








define %struct.Memory* @routine_jmpq_.L_449407(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_cmpl__0x4__MINUS0x864__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 2148
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 4)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_44999a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_shlq__0x8___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 8)
  ret %struct.Memory* %12
}
































define %struct.Memory* @routine_addl_0x30__rdx__rcx_4____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = load i64, i64* %RSI
  %16 = load i64, i64* %RDX
  %17 = load i64, i64* %RCX
  %18 = mul i64 %17, 4
  %19 = add i64 %16, 48
  %20 = add i64 %19, %18
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 4
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %15, i64 %20)
  ret %struct.Memory* %23
}




















define %struct.Memory* @routine_movl_0x10__rdx__rcx_4____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, 16
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 4
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %19)
  ret %struct.Memory* %22
}


















define %struct.Memory* @routine_addl_0x20__rdx__rcx_4____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = load i64, i64* %RSI
  %16 = load i64, i64* %RDX
  %17 = load i64, i64* %RCX
  %18 = mul i64 %17, 4
  %19 = add i64 %16, 32
  %20 = add i64 %19, %18
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 4
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %15, i64 %20)
  ret %struct.Memory* %23
}






































define %struct.Memory* @routine_subl_0x20__rdx__rcx_4____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = load i64, i64* %RSI
  %16 = load i64, i64* %RDX
  %17 = load i64, i64* %RCX
  %18 = mul i64 %17, 4
  %19 = add i64 %16, 32
  %20 = add i64 %19, %18
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 4
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %15, i64 %20)
  ret %struct.Memory* %23
}






































define %struct.Memory* @routine_subl_0x30__rdx__rcx_4____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = load i64, i64* %RSI
  %16 = load i64, i64* %RDX
  %17 = load i64, i64* %RCX
  %18 = mul i64 %17, 4
  %19 = add i64 %16, 48
  %20 = add i64 %19, %18
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 4
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %15, i64 %20)
  ret %struct.Memory* %23
}














































define %struct.Memory* @routine_movl__esi__0x20__rdx__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = load i64, i64* %RDX
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, 32
  %19 = add i64 %18, %17
  %20 = load i32, i32* %ESI
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 4
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %21)
  ret %struct.Memory* %24
}






















define %struct.Memory* @routine_movl__esi__0x10__rdx__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = load i64, i64* %RDX
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, 16
  %19 = add i64 %18, %17
  %20 = load i32, i32* %ESI
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 4
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %21)
  ret %struct.Memory* %24
}




















define %struct.Memory* @routine_movl__esi__0x30__rax__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %18 = add i64 %15, 48
  %19 = add i64 %18, %17
  %20 = load i32, i32* %ESI
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 4
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %21)
  ret %struct.Memory* %24
}






define %struct.Memory* @routine_jge_.L_449981(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_addl_MINUS0x868__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = sub i64 %13, 2152
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
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


define %struct.Memory* @routine_je_.L_449968(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_addl_MINUS0xc__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = sub i64 %13, 12
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_jmpq_.L_44996d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_449900(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_449986(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_4496a8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_44999f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movl_MINUS0x870__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 2160
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__eax__MINUS0x870__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 2160
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_4493f0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_4499b8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movl_MINUS0x874__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 2164
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__eax__MINUS0x874__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 2164
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_4493d9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_jge_.L_449a7e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jge_.L_449a65(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_leaq_MINUS0x860__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 2144
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_leaq_MINUS0x810__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 2064
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_movl___rdx__rsi_4____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 3
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %18)
  ret %struct.Memory* %21
}


define %struct.Memory* @routine_movq__rax__MINUS0xa58__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 2648
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
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






define %struct.Memory* @routine_movq_MINUS0xa58__rbp____r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 2648
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addq__rsi___r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %12, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__eax____r8__rsi_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 17
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %R8 = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %R8
  %16 = load i64, i64* %RSI
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i32, i32* %EAX
  %20 = zext i32 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 4
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %18, i64 %20)
  ret %struct.Memory* %23
}








define %struct.Memory* @routine_jmpq_.L_4499ed(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_449a6a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_4499d6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_jge_.L_449b99(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movslq_MINUS0x868__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 2152
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x860__rbp__rax_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %18 = add i64 %15, -2144
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %19)
  ret %struct.Memory* %22
}




define %struct.Memory* @routine_addl_MINUS0x830__rbp__rax_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %19 = add i64 %16, -2096
  %20 = add i64 %19, %18
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 7
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %15, i64 %20)
  ret %struct.Memory* %23
}


define %struct.Memory* @routine_movl__ecx__MINUS0x820__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 2080
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movl_MINUS0x850__rbp__rax_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %18 = add i64 %15, -2128
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %19)
  ret %struct.Memory* %22
}




define %struct.Memory* @routine_addl_MINUS0x840__rbp__rax_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %19 = add i64 %16, -2112
  %20 = add i64 %19, %18
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 7
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %15, i64 %20)
  ret %struct.Memory* %23
}


define %struct.Memory* @routine_movl__ecx__MINUS0x81c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 2076
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}








define %struct.Memory* @routine_subl_MINUS0x840__rbp__rax_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %19 = add i64 %16, -2112
  %20 = add i64 %19, %18
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 7
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %15, i64 %20)
  ret %struct.Memory* %23
}


define %struct.Memory* @routine_movl__ecx__MINUS0x818__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 2072
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}








define %struct.Memory* @routine_subl_MINUS0x830__rbp__rax_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %19 = add i64 %16, -2096
  %20 = add i64 %19, %18
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 7
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %15, i64 %20)
  ret %struct.Memory* %23
}


define %struct.Memory* @routine_movl__ecx__MINUS0x814__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 2068
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x820__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 2080
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addl_MINUS0x81c__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 2076
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movl__ecx__MINUS0x860__rbp__rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RAX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -2144
  %19 = add i64 %18, %17
  %20 = load i32, i32* %ECX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %21)
  ret %struct.Memory* %24
}




define %struct.Memory* @routine_subl_MINUS0x81c__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 2076
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movl__ecx__MINUS0x840__rbp__rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RAX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -2112
  %19 = add i64 %18, %17
  %20 = load i32, i32* %ECX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %21)
  ret %struct.Memory* %24
}


define %struct.Memory* @routine_movl_MINUS0x818__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 2072
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addl_MINUS0x814__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 2068
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movl__ecx__MINUS0x850__rbp__rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RAX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -2128
  %19 = add i64 %18, %17
  %20 = load i32, i32* %ECX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %21)
  ret %struct.Memory* %24
}


define %struct.Memory* @routine_movl_MINUS0x814__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 2068
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_subl_MINUS0x818__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 2072
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movl__ecx__MINUS0x830__rbp__rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RAX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -2096
  %19 = add i64 %18, %17
  %20 = load i32, i32* %ECX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %21)
  ret %struct.Memory* %24
}








define %struct.Memory* @routine_jmpq_.L_449a88(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_jge_.L_449d57(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_movl___rdx____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 2
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12)
  ret %struct.Memory* %15
}










define %struct.Memory* @routine_addl_0xc__rdx____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 12
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12, i64 %14)
  ret %struct.Memory* %17
}












define %struct.Memory* @routine_movl_0x4__rdx____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_addl_0x8__rdx____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 8
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12, i64 %14)
  ret %struct.Memory* %17
}






















define %struct.Memory* @routine_subl_0x8__rdx____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 8
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12, i64 %14)
  ret %struct.Memory* %17
}






















define %struct.Memory* @routine_subl_0xc__rdx____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 12
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12, i64 %14)
  ret %struct.Memory* %17
}
















define %struct.Memory* @routine_movl__esi____rdx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i64 %14)
  ret %struct.Memory* %17
}














define %struct.Memory* @routine_movl__esi__0x8__rdx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 8
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}














define %struct.Memory* @routine_movl__esi__0x4__rdx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 4
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}












define %struct.Memory* @routine_movl__esi__0xc__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 12
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_jge_.L_449d3e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


























define %struct.Memory* @routine_jmpq_.L_449cf3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_449d43(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_449ba3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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

define %struct.Memory* @routine_cmpl_MINUS0x10__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 16
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_449d75(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_MINUS0x86c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 2156
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
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










define %struct.Memory* @routine_movl__eax__MINUS0x86c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 2156
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_449145(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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


define %struct.Memory* @routine_movl_MINUS0x10__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__eax__MINUS0xa5c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 2652
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




define %struct.Memory* @routine_movl_MINUS0xa5c__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 2652
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_addq__0xa60___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 2656)
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

