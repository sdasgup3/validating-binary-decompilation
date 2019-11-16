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

declare %struct.Memory* @sub_44bd60.alloc_storable_picture(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_42c7a0.copy_params(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_427a20.code_a_picture(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_42c8d0.find_distortion(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Data Access Globals
%G_0x6cb8f8_type = type <{ [8 x i8] }>
@G_0x6cb8f8= global %G_0x6cb8f8_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x6cb900_type = type <{ [8 x i8] }>
@G_0x6cb900= global %G_0x6cb900_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x6cb908_type = type <{ [8 x i8] }>
@G_0x6cb908= global %G_0x6cb908_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x6cb910_type = type <{ [8 x i8] }>
@G_0x6cb910= global %G_0x6cb910_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x6d12b0_type = type <{ [8 x i8] }>
@G_0x6d12b0= global %G_0x6d12b0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x70fcf0_type = type <{ [8 x i8] }>
@G_0x70fcf0= global %G_0x70fcf0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x710a50_type = type <{ [8 x i8] }>
@G_0x710a50= global %G_0x710a50_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x722b50_type = type <{ [8 x i8] }>
@G_0x722b50= global %G_0x722b50_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>


define %struct.Memory* @frame_picture(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .frame_picture:	 RIP: 42a450	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 42a450	 Bytes: 1
  %loadMem_42a450 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a450 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a450)
  store %struct.Memory* %call_42a450, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 42a451	 Bytes: 3
  %loadMem_42a451 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a451 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a451)
  store %struct.Memory* %call_42a451, %struct.Memory** %MEMORY

  ; Code: subq $0x10, %rsp	 RIP: 42a454	 Bytes: 4
  %loadMem_42a454 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a454 = call %struct.Memory* @routine_subq__0x10___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a454)
  store %struct.Memory* %call_42a454, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x8(%rbp)	 RIP: 42a458	 Bytes: 4
  %loadMem_42a458 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a458 = call %struct.Memory* @routine_movq__rdi__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a458)
  store %struct.Memory* %call_42a458, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0xc(%rbp)	 RIP: 42a45c	 Bytes: 3
  %loadMem_42a45c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a45c = call %struct.Memory* @routine_movl__esi__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a45c)
  store %struct.Memory* %call_42a45c, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rdi	 RIP: 42a45f	 Bytes: 8
  %loadMem_42a45f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a45f = call %struct.Memory* @routine_movq_0x6cb900___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a45f)
  store %struct.Memory* %call_42a45f, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x1c(%rdi)	 RIP: 42a467	 Bytes: 7
  %loadMem_42a467 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a467 = call %struct.Memory* @routine_movl__0x0__0x1c__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a467)
  store %struct.Memory* %call_42a467, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rdi	 RIP: 42a46e	 Bytes: 8
  %loadMem_42a46e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a46e = call %struct.Memory* @routine_movq_0x6cb900___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a46e)
  store %struct.Memory* %call_42a46e, %struct.Memory** %MEMORY

  ; Code: movl 0x11b28(%rdi), %esi	 RIP: 42a476	 Bytes: 6
  %loadMem_42a476 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a476 = call %struct.Memory* @routine_movl_0x11b28__rdi____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a476)
  store %struct.Memory* %call_42a476, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rdi	 RIP: 42a47c	 Bytes: 8
  %loadMem_42a47c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a47c = call %struct.Memory* @routine_movq_0x6cb900___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a47c)
  store %struct.Memory* %call_42a47c, %struct.Memory** %MEMORY

  ; Code: movl %esi, 0x11b24(%rdi)	 RIP: 42a484	 Bytes: 6
  %loadMem_42a484 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a484 = call %struct.Memory* @routine_movl__esi__0x11b24__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a484)
  store %struct.Memory* %call_42a484, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, -0xc(%rbp)	 RIP: 42a48a	 Bytes: 4
  %loadMem_42a48a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a48a = call %struct.Memory* @routine_cmpl__0x2__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a48a)
  store %struct.Memory* %call_42a48a, %struct.Memory** %MEMORY

  ; Code: jne .L_42a5e6	 RIP: 42a48e	 Bytes: 6
  %loadMem_42a48e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a48e = call %struct.Memory* @routine_jne_.L_42a5e6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a48e, i8* %BRANCH_TAKEN, i64 344, i64 6, i64 6)
  store %struct.Memory* %call_42a48e, %struct.Memory** %MEMORY

  %loadBr_42a48e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42a48e = icmp eq i8 %loadBr_42a48e, 1
  br i1 %cmpBr_42a48e, label %block_.L_42a5e6, label %block_42a494

block_42a494:
  ; Code: movq 0x6cb900, %rax	 RIP: 42a494	 Bytes: 8
  %loadMem_42a494 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a494 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a494)
  store %struct.Memory* %call_42a494, %struct.Memory** %MEMORY

  ; Code: movl 0x1c(%rax), %edi	 RIP: 42a49c	 Bytes: 3
  %loadMem_42a49c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a49c = call %struct.Memory* @routine_movl_0x1c__rax____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a49c)
  store %struct.Memory* %call_42a49c, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 42a49f	 Bytes: 8
  %loadMem_42a49f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a49f = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a49f)
  store %struct.Memory* %call_42a49f, %struct.Memory** %MEMORY

  ; Code: movl 0x34(%rax), %esi	 RIP: 42a4a7	 Bytes: 3
  %loadMem_42a4a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a4a7 = call %struct.Memory* @routine_movl_0x34__rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a4a7)
  store %struct.Memory* %call_42a4a7, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 42a4aa	 Bytes: 8
  %loadMem_42a4aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a4aa = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a4aa)
  store %struct.Memory* %call_42a4aa, %struct.Memory** %MEMORY

  ; Code: movl 0x3c(%rax), %edx	 RIP: 42a4b2	 Bytes: 3
  %loadMem_42a4b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a4b2 = call %struct.Memory* @routine_movl_0x3c__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a4b2)
  store %struct.Memory* %call_42a4b2, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 42a4b5	 Bytes: 8
  %loadMem_42a4b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a4b5 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a4b5)
  store %struct.Memory* %call_42a4b5, %struct.Memory** %MEMORY

  ; Code: movl 0x38(%rax), %ecx	 RIP: 42a4bd	 Bytes: 3
  %loadMem_42a4bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a4bd = call %struct.Memory* @routine_movl_0x38__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a4bd)
  store %struct.Memory* %call_42a4bd, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 42a4c0	 Bytes: 8
  %loadMem_42a4c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a4c0 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a4c0)
  store %struct.Memory* %call_42a4c0, %struct.Memory** %MEMORY

  ; Code: movl 0x40(%rax), %r8d	 RIP: 42a4c8	 Bytes: 4
  %loadMem_42a4c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a4c8 = call %struct.Memory* @routine_movl_0x40__rax____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a4c8)
  store %struct.Memory* %call_42a4c8, %struct.Memory** %MEMORY

  ; Code: callq .alloc_storable_picture	 RIP: 42a4cc	 Bytes: 5
  %loadMem1_42a4cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42a4cc = call %struct.Memory* @routine_callq_.alloc_storable_picture(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42a4cc, i64 137364, i64 5, i64 5)
  store %struct.Memory* %call1_42a4cc, %struct.Memory** %MEMORY

  %loadMem2_42a4cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42a4cc = load i64, i64* %3
  %call2_42a4cc = call %struct.Memory* @sub_44bd60.alloc_storable_picture(%struct.State* %0, i64  %loadPC_42a4cc, %struct.Memory* %loadMem2_42a4cc)
  store %struct.Memory* %call2_42a4cc, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x722b50	 RIP: 42a4d1	 Bytes: 8
  %loadMem_42a4d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a4d1 = call %struct.Memory* @routine_movq__rax__0x722b50(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a4d1)
  store %struct.Memory* %call_42a4d1, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 42a4d9	 Bytes: 8
  %loadMem_42a4d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a4d9 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a4d9)
  store %struct.Memory* %call_42a4d9, %struct.Memory** %MEMORY

  ; Code: movl 0x11b08(%rax), %ecx	 RIP: 42a4e1	 Bytes: 6
  %loadMem_42a4e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a4e1 = call %struct.Memory* @routine_movl_0x11b08__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a4e1)
  store %struct.Memory* %call_42a4e1, %struct.Memory** %MEMORY

  ; Code: movq 0x722b50, %rax	 RIP: 42a4e7	 Bytes: 8
  %loadMem_42a4e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a4e7 = call %struct.Memory* @routine_movq_0x722b50___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a4e7)
  store %struct.Memory* %call_42a4e7, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x4(%rax)	 RIP: 42a4ef	 Bytes: 3
  %loadMem_42a4ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a4ef = call %struct.Memory* @routine_movl__ecx__0x4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a4ef)
  store %struct.Memory* %call_42a4ef, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 42a4f2	 Bytes: 8
  %loadMem_42a4f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a4f2 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a4f2)
  store %struct.Memory* %call_42a4f2, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x11b0c(%rax)	 RIP: 42a4fa	 Bytes: 6
  %loadMem_42a4fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a4fa = call %struct.Memory* @routine_movl__ecx__0x11b0c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a4fa)
  store %struct.Memory* %call_42a4fa, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 42a500	 Bytes: 8
  %loadMem_42a500 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a500 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a500)
  store %struct.Memory* %call_42a500, %struct.Memory** %MEMORY

  ; Code: movl 0x11b00(%rax), %ecx	 RIP: 42a508	 Bytes: 6
  %loadMem_42a508 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a508 = call %struct.Memory* @routine_movl_0x11b00__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a508)
  store %struct.Memory* %call_42a508, %struct.Memory** %MEMORY

  ; Code: movq 0x722b50, %rax	 RIP: 42a50e	 Bytes: 8
  %loadMem_42a50e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a50e = call %struct.Memory* @routine_movq_0x722b50___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a50e)
  store %struct.Memory* %call_42a50e, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x8(%rax)	 RIP: 42a516	 Bytes: 3
  %loadMem_42a516 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a516 = call %struct.Memory* @routine_movl__ecx__0x8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a516)
  store %struct.Memory* %call_42a516, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 42a519	 Bytes: 8
  %loadMem_42a519 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a519 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a519)
  store %struct.Memory* %call_42a519, %struct.Memory** %MEMORY

  ; Code: movl 0x11b04(%rax), %ecx	 RIP: 42a521	 Bytes: 6
  %loadMem_42a521 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a521 = call %struct.Memory* @routine_movl_0x11b04__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a521)
  store %struct.Memory* %call_42a521, %struct.Memory** %MEMORY

  ; Code: movq 0x722b50, %rax	 RIP: 42a527	 Bytes: 8
  %loadMem_42a527 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a527 = call %struct.Memory* @routine_movq_0x722b50___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a527)
  store %struct.Memory* %call_42a527, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0xc(%rax)	 RIP: 42a52f	 Bytes: 3
  %loadMem_42a52f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a52f = call %struct.Memory* @routine_movl__ecx__0xc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a52f)
  store %struct.Memory* %call_42a52f, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 42a532	 Bytes: 8
  %loadMem_42a532 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a532 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a532)
  store %struct.Memory* %call_42a532, %struct.Memory** %MEMORY

  ; Code: movl 0x11b08(%rax), %ecx	 RIP: 42a53a	 Bytes: 6
  %loadMem_42a53a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a53a = call %struct.Memory* @routine_movl_0x11b08__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a53a)
  store %struct.Memory* %call_42a53a, %struct.Memory** %MEMORY

  ; Code: movq 0x722b50, %rax	 RIP: 42a540	 Bytes: 8
  %loadMem_42a540 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a540 = call %struct.Memory* @routine_movq_0x722b50___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a540)
  store %struct.Memory* %call_42a540, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x10(%rax)	 RIP: 42a548	 Bytes: 3
  %loadMem_42a548 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a548 = call %struct.Memory* @routine_movl__ecx__0x10__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a548)
  store %struct.Memory* %call_42a548, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 42a54b	 Bytes: 8
  %loadMem_42a54b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a54b = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a54b)
  store %struct.Memory* %call_42a54b, %struct.Memory** %MEMORY

  ; Code: movl 0x11b10(%rax), %ecx	 RIP: 42a553	 Bytes: 6
  %loadMem_42a553 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a553 = call %struct.Memory* @routine_movl_0x11b10__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a553)
  store %struct.Memory* %call_42a553, %struct.Memory** %MEMORY

  ; Code: movq 0x722b50, %rax	 RIP: 42a559	 Bytes: 8
  %loadMem_42a559 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a559 = call %struct.Memory* @routine_movq_0x722b50___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a559)
  store %struct.Memory* %call_42a559, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x18dc(%rax)	 RIP: 42a561	 Bytes: 6
  %loadMem_42a561 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a561 = call %struct.Memory* @routine_movl__ecx__0x18dc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a561)
  store %struct.Memory* %call_42a561, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 42a567	 Bytes: 8
  %loadMem_42a567 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a567 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a567)
  store %struct.Memory* %call_42a567, %struct.Memory** %MEMORY

  ; Code: movl 0x11b10(%rax), %ecx	 RIP: 42a56f	 Bytes: 6
  %loadMem_42a56f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a56f = call %struct.Memory* @routine_movl_0x11b10__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a56f)
  store %struct.Memory* %call_42a56f, %struct.Memory** %MEMORY

  ; Code: movq 0x722b50, %rax	 RIP: 42a575	 Bytes: 8
  %loadMem_42a575 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a575 = call %struct.Memory* @routine_movq_0x722b50___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a575)
  store %struct.Memory* %call_42a575, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x18d8(%rax)	 RIP: 42a57d	 Bytes: 6
  %loadMem_42a57d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a57d = call %struct.Memory* @routine_movl__ecx__0x18d8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a57d)
  store %struct.Memory* %call_42a57d, %struct.Memory** %MEMORY

  ; Code: movq 0x722b50, %rax	 RIP: 42a583	 Bytes: 8
  %loadMem_42a583 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a583 = call %struct.Memory* @routine_movq_0x722b50___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a583)
  store %struct.Memory* %call_42a583, %struct.Memory** %MEMORY

  ; Code: movl $0x1, 0x190c(%rax)	 RIP: 42a58b	 Bytes: 10
  %loadMem_42a58b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a58b = call %struct.Memory* @routine_movl__0x1__0x190c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a58b)
  store %struct.Memory* %call_42a58b, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rax	 RIP: 42a595	 Bytes: 8
  %loadMem_42a595 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a595 = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a595)
  store %struct.Memory* %call_42a595, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0xb44(%rax)	 RIP: 42a59d	 Bytes: 7
  %loadMem_42a59d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a59d = call %struct.Memory* @routine_cmpl__0x0__0xb44__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a59d)
  store %struct.Memory* %call_42a59d, %struct.Memory** %MEMORY

  ; Code: setne %r9b	 RIP: 42a5a4	 Bytes: 4
  %loadMem_42a5a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a5a4 = call %struct.Memory* @routine_setne__r9b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a5a4)
  store %struct.Memory* %call_42a5a4, %struct.Memory** %MEMORY

  ; Code: andb $0x1, %r9b	 RIP: 42a5a8	 Bytes: 4
  %loadMem_42a5a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a5a8 = call %struct.Memory* @routine_andb__0x1___r9b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a5a8)
  store %struct.Memory* %call_42a5a8, %struct.Memory** %MEMORY

  ; Code: movzbl %r9b, %ecx	 RIP: 42a5ac	 Bytes: 4
  %loadMem_42a5ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a5ac = call %struct.Memory* @routine_movzbl__r9b___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a5ac)
  store %struct.Memory* %call_42a5ac, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 42a5b0	 Bytes: 8
  %loadMem_42a5b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a5b0 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a5b0)
  store %struct.Memory* %call_42a5b0, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x11ad0(%rax)	 RIP: 42a5b8	 Bytes: 6
  %loadMem_42a5b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a5b8 = call %struct.Memory* @routine_movl__ecx__0x11ad0__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a5b8)
  store %struct.Memory* %call_42a5b8, %struct.Memory** %MEMORY

  ; Code: movq 0x722b50, %rax	 RIP: 42a5be	 Bytes: 8
  %loadMem_42a5be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a5be = call %struct.Memory* @routine_movq_0x722b50___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a5be)
  store %struct.Memory* %call_42a5be, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x1910(%rax)	 RIP: 42a5c6	 Bytes: 6
  %loadMem_42a5c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a5c6 = call %struct.Memory* @routine_movl__ecx__0x1910__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a5c6)
  store %struct.Memory* %call_42a5c6, %struct.Memory** %MEMORY

  ; Code: movq 0x722b50, %rax	 RIP: 42a5cc	 Bytes: 8
  %loadMem_42a5cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a5cc = call %struct.Memory* @routine_movq_0x722b50___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a5cc)
  store %struct.Memory* %call_42a5cc, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x70fcf0	 RIP: 42a5d4	 Bytes: 8
  %loadMem_42a5d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a5d4 = call %struct.Memory* @routine_movq__rax__0x70fcf0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a5d4)
  store %struct.Memory* %call_42a5d4, %struct.Memory** %MEMORY

  ; Code: callq .copy_params	 RIP: 42a5dc	 Bytes: 5
  %loadMem1_42a5dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42a5dc = call %struct.Memory* @routine_callq_.copy_params(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42a5dc, i64 8644, i64 5, i64 5)
  store %struct.Memory* %call1_42a5dc, %struct.Memory** %MEMORY

  %loadMem2_42a5dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42a5dc = load i64, i64* %3
  %call2_42a5dc = call %struct.Memory* @sub_42c7a0.copy_params(%struct.State* %0, i64  %loadPC_42a5dc, %struct.Memory* %loadMem2_42a5dc)
  store %struct.Memory* %call2_42a5dc, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42a894	 RIP: 42a5e1	 Bytes: 5
  %loadMem_42a5e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a5e1 = call %struct.Memory* @routine_jmpq_.L_42a894(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a5e1, i64 691, i64 5)
  store %struct.Memory* %call_42a5e1, %struct.Memory** %MEMORY

  br label %block_.L_42a894

  ; Code: .L_42a5e6:	 RIP: 42a5e6	 Bytes: 0
block_.L_42a5e6:

  ; Code: cmpl $0x1, -0xc(%rbp)	 RIP: 42a5e6	 Bytes: 4
  %loadMem_42a5e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a5e6 = call %struct.Memory* @routine_cmpl__0x1__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a5e6)
  store %struct.Memory* %call_42a5e6, %struct.Memory** %MEMORY

  ; Code: jne .L_42a742	 RIP: 42a5ea	 Bytes: 6
  %loadMem_42a5ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a5ea = call %struct.Memory* @routine_jne_.L_42a742(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a5ea, i8* %BRANCH_TAKEN, i64 344, i64 6, i64 6)
  store %struct.Memory* %call_42a5ea, %struct.Memory** %MEMORY

  %loadBr_42a5ea = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42a5ea = icmp eq i8 %loadBr_42a5ea, 1
  br i1 %cmpBr_42a5ea, label %block_.L_42a742, label %block_42a5f0

block_42a5f0:
  ; Code: movq 0x6cb900, %rax	 RIP: 42a5f0	 Bytes: 8
  %loadMem_42a5f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a5f0 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a5f0)
  store %struct.Memory* %call_42a5f0, %struct.Memory** %MEMORY

  ; Code: movl 0x1c(%rax), %edi	 RIP: 42a5f8	 Bytes: 3
  %loadMem_42a5f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a5f8 = call %struct.Memory* @routine_movl_0x1c__rax____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a5f8)
  store %struct.Memory* %call_42a5f8, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 42a5fb	 Bytes: 8
  %loadMem_42a5fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a5fb = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a5fb)
  store %struct.Memory* %call_42a5fb, %struct.Memory** %MEMORY

  ; Code: movl 0x34(%rax), %esi	 RIP: 42a603	 Bytes: 3
  %loadMem_42a603 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a603 = call %struct.Memory* @routine_movl_0x34__rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a603)
  store %struct.Memory* %call_42a603, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 42a606	 Bytes: 8
  %loadMem_42a606 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a606 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a606)
  store %struct.Memory* %call_42a606, %struct.Memory** %MEMORY

  ; Code: movl 0x3c(%rax), %edx	 RIP: 42a60e	 Bytes: 3
  %loadMem_42a60e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a60e = call %struct.Memory* @routine_movl_0x3c__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a60e)
  store %struct.Memory* %call_42a60e, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 42a611	 Bytes: 8
  %loadMem_42a611 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a611 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a611)
  store %struct.Memory* %call_42a611, %struct.Memory** %MEMORY

  ; Code: movl 0x38(%rax), %ecx	 RIP: 42a619	 Bytes: 3
  %loadMem_42a619 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a619 = call %struct.Memory* @routine_movl_0x38__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a619)
  store %struct.Memory* %call_42a619, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 42a61c	 Bytes: 8
  %loadMem_42a61c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a61c = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a61c)
  store %struct.Memory* %call_42a61c, %struct.Memory** %MEMORY

  ; Code: movl 0x40(%rax), %r8d	 RIP: 42a624	 Bytes: 4
  %loadMem_42a624 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a624 = call %struct.Memory* @routine_movl_0x40__rax____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a624)
  store %struct.Memory* %call_42a624, %struct.Memory** %MEMORY

  ; Code: callq .alloc_storable_picture	 RIP: 42a628	 Bytes: 5
  %loadMem1_42a628 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42a628 = call %struct.Memory* @routine_callq_.alloc_storable_picture(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42a628, i64 137016, i64 5, i64 5)
  store %struct.Memory* %call1_42a628, %struct.Memory** %MEMORY

  %loadMem2_42a628 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42a628 = load i64, i64* %3
  %call2_42a628 = call %struct.Memory* @sub_44bd60.alloc_storable_picture(%struct.State* %0, i64  %loadPC_42a628, %struct.Memory* %loadMem2_42a628)
  store %struct.Memory* %call2_42a628, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x6d12b0	 RIP: 42a62d	 Bytes: 8
  %loadMem_42a62d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a62d = call %struct.Memory* @routine_movq__rax__0x6d12b0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a62d)
  store %struct.Memory* %call_42a62d, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 42a635	 Bytes: 8
  %loadMem_42a635 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a635 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a635)
  store %struct.Memory* %call_42a635, %struct.Memory** %MEMORY

  ; Code: movl 0x11b08(%rax), %ecx	 RIP: 42a63d	 Bytes: 6
  %loadMem_42a63d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a63d = call %struct.Memory* @routine_movl_0x11b08__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a63d)
  store %struct.Memory* %call_42a63d, %struct.Memory** %MEMORY

  ; Code: movq 0x6d12b0, %rax	 RIP: 42a643	 Bytes: 8
  %loadMem_42a643 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a643 = call %struct.Memory* @routine_movq_0x6d12b0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a643)
  store %struct.Memory* %call_42a643, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x4(%rax)	 RIP: 42a64b	 Bytes: 3
  %loadMem_42a64b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a64b = call %struct.Memory* @routine_movl__ecx__0x4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a64b)
  store %struct.Memory* %call_42a64b, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 42a64e	 Bytes: 8
  %loadMem_42a64e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a64e = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a64e)
  store %struct.Memory* %call_42a64e, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x11b0c(%rax)	 RIP: 42a656	 Bytes: 6
  %loadMem_42a656 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a656 = call %struct.Memory* @routine_movl__ecx__0x11b0c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a656)
  store %struct.Memory* %call_42a656, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 42a65c	 Bytes: 8
  %loadMem_42a65c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a65c = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a65c)
  store %struct.Memory* %call_42a65c, %struct.Memory** %MEMORY

  ; Code: movl 0x11b00(%rax), %ecx	 RIP: 42a664	 Bytes: 6
  %loadMem_42a664 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a664 = call %struct.Memory* @routine_movl_0x11b00__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a664)
  store %struct.Memory* %call_42a664, %struct.Memory** %MEMORY

  ; Code: movq 0x6d12b0, %rax	 RIP: 42a66a	 Bytes: 8
  %loadMem_42a66a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a66a = call %struct.Memory* @routine_movq_0x6d12b0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a66a)
  store %struct.Memory* %call_42a66a, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x8(%rax)	 RIP: 42a672	 Bytes: 3
  %loadMem_42a672 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a672 = call %struct.Memory* @routine_movl__ecx__0x8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a672)
  store %struct.Memory* %call_42a672, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 42a675	 Bytes: 8
  %loadMem_42a675 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a675 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a675)
  store %struct.Memory* %call_42a675, %struct.Memory** %MEMORY

  ; Code: movl 0x11b04(%rax), %ecx	 RIP: 42a67d	 Bytes: 6
  %loadMem_42a67d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a67d = call %struct.Memory* @routine_movl_0x11b04__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a67d)
  store %struct.Memory* %call_42a67d, %struct.Memory** %MEMORY

  ; Code: movq 0x6d12b0, %rax	 RIP: 42a683	 Bytes: 8
  %loadMem_42a683 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a683 = call %struct.Memory* @routine_movq_0x6d12b0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a683)
  store %struct.Memory* %call_42a683, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0xc(%rax)	 RIP: 42a68b	 Bytes: 3
  %loadMem_42a68b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a68b = call %struct.Memory* @routine_movl__ecx__0xc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a68b)
  store %struct.Memory* %call_42a68b, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 42a68e	 Bytes: 8
  %loadMem_42a68e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a68e = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a68e)
  store %struct.Memory* %call_42a68e, %struct.Memory** %MEMORY

  ; Code: movl 0x11b08(%rax), %ecx	 RIP: 42a696	 Bytes: 6
  %loadMem_42a696 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a696 = call %struct.Memory* @routine_movl_0x11b08__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a696)
  store %struct.Memory* %call_42a696, %struct.Memory** %MEMORY

  ; Code: movq 0x6d12b0, %rax	 RIP: 42a69c	 Bytes: 8
  %loadMem_42a69c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a69c = call %struct.Memory* @routine_movq_0x6d12b0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a69c)
  store %struct.Memory* %call_42a69c, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x10(%rax)	 RIP: 42a6a4	 Bytes: 3
  %loadMem_42a6a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a6a4 = call %struct.Memory* @routine_movl__ecx__0x10__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a6a4)
  store %struct.Memory* %call_42a6a4, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 42a6a7	 Bytes: 8
  %loadMem_42a6a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a6a7 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a6a7)
  store %struct.Memory* %call_42a6a7, %struct.Memory** %MEMORY

  ; Code: movl 0x11b10(%rax), %ecx	 RIP: 42a6af	 Bytes: 6
  %loadMem_42a6af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a6af = call %struct.Memory* @routine_movl_0x11b10__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a6af)
  store %struct.Memory* %call_42a6af, %struct.Memory** %MEMORY

  ; Code: movq 0x6d12b0, %rax	 RIP: 42a6b5	 Bytes: 8
  %loadMem_42a6b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a6b5 = call %struct.Memory* @routine_movq_0x6d12b0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a6b5)
  store %struct.Memory* %call_42a6b5, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x18dc(%rax)	 RIP: 42a6bd	 Bytes: 6
  %loadMem_42a6bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a6bd = call %struct.Memory* @routine_movl__ecx__0x18dc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a6bd)
  store %struct.Memory* %call_42a6bd, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 42a6c3	 Bytes: 8
  %loadMem_42a6c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a6c3 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a6c3)
  store %struct.Memory* %call_42a6c3, %struct.Memory** %MEMORY

  ; Code: movl 0x11b10(%rax), %ecx	 RIP: 42a6cb	 Bytes: 6
  %loadMem_42a6cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a6cb = call %struct.Memory* @routine_movl_0x11b10__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a6cb)
  store %struct.Memory* %call_42a6cb, %struct.Memory** %MEMORY

  ; Code: movq 0x6d12b0, %rax	 RIP: 42a6d1	 Bytes: 8
  %loadMem_42a6d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a6d1 = call %struct.Memory* @routine_movq_0x6d12b0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a6d1)
  store %struct.Memory* %call_42a6d1, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x18d8(%rax)	 RIP: 42a6d9	 Bytes: 6
  %loadMem_42a6d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a6d9 = call %struct.Memory* @routine_movl__ecx__0x18d8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a6d9)
  store %struct.Memory* %call_42a6d9, %struct.Memory** %MEMORY

  ; Code: movq 0x6d12b0, %rax	 RIP: 42a6df	 Bytes: 8
  %loadMem_42a6df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a6df = call %struct.Memory* @routine_movq_0x6d12b0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a6df)
  store %struct.Memory* %call_42a6df, %struct.Memory** %MEMORY

  ; Code: movl $0x1, 0x190c(%rax)	 RIP: 42a6e7	 Bytes: 10
  %loadMem_42a6e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a6e7 = call %struct.Memory* @routine_movl__0x1__0x190c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a6e7)
  store %struct.Memory* %call_42a6e7, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rax	 RIP: 42a6f1	 Bytes: 8
  %loadMem_42a6f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a6f1 = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a6f1)
  store %struct.Memory* %call_42a6f1, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0xb44(%rax)	 RIP: 42a6f9	 Bytes: 7
  %loadMem_42a6f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a6f9 = call %struct.Memory* @routine_cmpl__0x0__0xb44__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a6f9)
  store %struct.Memory* %call_42a6f9, %struct.Memory** %MEMORY

  ; Code: setne %r9b	 RIP: 42a700	 Bytes: 4
  %loadMem_42a700 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a700 = call %struct.Memory* @routine_setne__r9b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a700)
  store %struct.Memory* %call_42a700, %struct.Memory** %MEMORY

  ; Code: andb $0x1, %r9b	 RIP: 42a704	 Bytes: 4
  %loadMem_42a704 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a704 = call %struct.Memory* @routine_andb__0x1___r9b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a704)
  store %struct.Memory* %call_42a704, %struct.Memory** %MEMORY

  ; Code: movzbl %r9b, %ecx	 RIP: 42a708	 Bytes: 4
  %loadMem_42a708 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a708 = call %struct.Memory* @routine_movzbl__r9b___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a708)
  store %struct.Memory* %call_42a708, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 42a70c	 Bytes: 8
  %loadMem_42a70c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a70c = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a70c)
  store %struct.Memory* %call_42a70c, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x11ad0(%rax)	 RIP: 42a714	 Bytes: 6
  %loadMem_42a714 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a714 = call %struct.Memory* @routine_movl__ecx__0x11ad0__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a714)
  store %struct.Memory* %call_42a714, %struct.Memory** %MEMORY

  ; Code: movq 0x6d12b0, %rax	 RIP: 42a71a	 Bytes: 8
  %loadMem_42a71a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a71a = call %struct.Memory* @routine_movq_0x6d12b0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a71a)
  store %struct.Memory* %call_42a71a, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x1910(%rax)	 RIP: 42a722	 Bytes: 6
  %loadMem_42a722 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a722 = call %struct.Memory* @routine_movl__ecx__0x1910__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a722)
  store %struct.Memory* %call_42a722, %struct.Memory** %MEMORY

  ; Code: movq 0x6d12b0, %rax	 RIP: 42a728	 Bytes: 8
  %loadMem_42a728 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a728 = call %struct.Memory* @routine_movq_0x6d12b0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a728)
  store %struct.Memory* %call_42a728, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x70fcf0	 RIP: 42a730	 Bytes: 8
  %loadMem_42a730 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a730 = call %struct.Memory* @routine_movq__rax__0x70fcf0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a730)
  store %struct.Memory* %call_42a730, %struct.Memory** %MEMORY

  ; Code: callq .copy_params	 RIP: 42a738	 Bytes: 5
  %loadMem1_42a738 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42a738 = call %struct.Memory* @routine_callq_.copy_params(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42a738, i64 8296, i64 5, i64 5)
  store %struct.Memory* %call1_42a738, %struct.Memory** %MEMORY

  %loadMem2_42a738 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42a738 = load i64, i64* %3
  %call2_42a738 = call %struct.Memory* @sub_42c7a0.copy_params(%struct.State* %0, i64  %loadPC_42a738, %struct.Memory* %loadMem2_42a738)
  store %struct.Memory* %call2_42a738, %struct.Memory** %MEMORY

  ; Code: jmpq .L_42a88f	 RIP: 42a73d	 Bytes: 5
  %loadMem_42a73d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a73d = call %struct.Memory* @routine_jmpq_.L_42a88f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a73d, i64 338, i64 5)
  store %struct.Memory* %call_42a73d, %struct.Memory** %MEMORY

  br label %block_.L_42a88f

  ; Code: .L_42a742:	 RIP: 42a742	 Bytes: 0
block_.L_42a742:

  ; Code: movq 0x6cb900, %rax	 RIP: 42a742	 Bytes: 8
  %loadMem_42a742 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a742 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a742)
  store %struct.Memory* %call_42a742, %struct.Memory** %MEMORY

  ; Code: movl 0x1c(%rax), %edi	 RIP: 42a74a	 Bytes: 3
  %loadMem_42a74a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a74a = call %struct.Memory* @routine_movl_0x1c__rax____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a74a)
  store %struct.Memory* %call_42a74a, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 42a74d	 Bytes: 8
  %loadMem_42a74d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a74d = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a74d)
  store %struct.Memory* %call_42a74d, %struct.Memory** %MEMORY

  ; Code: movl 0x34(%rax), %esi	 RIP: 42a755	 Bytes: 3
  %loadMem_42a755 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a755 = call %struct.Memory* @routine_movl_0x34__rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a755)
  store %struct.Memory* %call_42a755, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 42a758	 Bytes: 8
  %loadMem_42a758 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a758 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a758)
  store %struct.Memory* %call_42a758, %struct.Memory** %MEMORY

  ; Code: movl 0x3c(%rax), %edx	 RIP: 42a760	 Bytes: 3
  %loadMem_42a760 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a760 = call %struct.Memory* @routine_movl_0x3c__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a760)
  store %struct.Memory* %call_42a760, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 42a763	 Bytes: 8
  %loadMem_42a763 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a763 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a763)
  store %struct.Memory* %call_42a763, %struct.Memory** %MEMORY

  ; Code: movl 0x38(%rax), %ecx	 RIP: 42a76b	 Bytes: 3
  %loadMem_42a76b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a76b = call %struct.Memory* @routine_movl_0x38__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a76b)
  store %struct.Memory* %call_42a76b, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 42a76e	 Bytes: 8
  %loadMem_42a76e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a76e = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a76e)
  store %struct.Memory* %call_42a76e, %struct.Memory** %MEMORY

  ; Code: movl 0x40(%rax), %r8d	 RIP: 42a776	 Bytes: 4
  %loadMem_42a776 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a776 = call %struct.Memory* @routine_movl_0x40__rax____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a776)
  store %struct.Memory* %call_42a776, %struct.Memory** %MEMORY

  ; Code: callq .alloc_storable_picture	 RIP: 42a77a	 Bytes: 5
  %loadMem1_42a77a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42a77a = call %struct.Memory* @routine_callq_.alloc_storable_picture(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42a77a, i64 136678, i64 5, i64 5)
  store %struct.Memory* %call1_42a77a, %struct.Memory** %MEMORY

  %loadMem2_42a77a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42a77a = load i64, i64* %3
  %call2_42a77a = call %struct.Memory* @sub_44bd60.alloc_storable_picture(%struct.State* %0, i64  %loadPC_42a77a, %struct.Memory* %loadMem2_42a77a)
  store %struct.Memory* %call2_42a77a, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x710a50	 RIP: 42a77f	 Bytes: 8
  %loadMem_42a77f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a77f = call %struct.Memory* @routine_movq__rax__0x710a50(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a77f)
  store %struct.Memory* %call_42a77f, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 42a787	 Bytes: 8
  %loadMem_42a787 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a787 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a787)
  store %struct.Memory* %call_42a787, %struct.Memory** %MEMORY

  ; Code: movl 0x11b08(%rax), %ecx	 RIP: 42a78f	 Bytes: 6
  %loadMem_42a78f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a78f = call %struct.Memory* @routine_movl_0x11b08__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a78f)
  store %struct.Memory* %call_42a78f, %struct.Memory** %MEMORY

  ; Code: movq 0x710a50, %rax	 RIP: 42a795	 Bytes: 8
  %loadMem_42a795 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a795 = call %struct.Memory* @routine_movq_0x710a50___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a795)
  store %struct.Memory* %call_42a795, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x4(%rax)	 RIP: 42a79d	 Bytes: 3
  %loadMem_42a79d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a79d = call %struct.Memory* @routine_movl__ecx__0x4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a79d)
  store %struct.Memory* %call_42a79d, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 42a7a0	 Bytes: 8
  %loadMem_42a7a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a7a0 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a7a0)
  store %struct.Memory* %call_42a7a0, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x11b0c(%rax)	 RIP: 42a7a8	 Bytes: 6
  %loadMem_42a7a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a7a8 = call %struct.Memory* @routine_movl__ecx__0x11b0c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a7a8)
  store %struct.Memory* %call_42a7a8, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 42a7ae	 Bytes: 8
  %loadMem_42a7ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a7ae = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a7ae)
  store %struct.Memory* %call_42a7ae, %struct.Memory** %MEMORY

  ; Code: movl 0x11b00(%rax), %ecx	 RIP: 42a7b6	 Bytes: 6
  %loadMem_42a7b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a7b6 = call %struct.Memory* @routine_movl_0x11b00__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a7b6)
  store %struct.Memory* %call_42a7b6, %struct.Memory** %MEMORY

  ; Code: movq 0x710a50, %rax	 RIP: 42a7bc	 Bytes: 8
  %loadMem_42a7bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a7bc = call %struct.Memory* @routine_movq_0x710a50___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a7bc)
  store %struct.Memory* %call_42a7bc, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x8(%rax)	 RIP: 42a7c4	 Bytes: 3
  %loadMem_42a7c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a7c4 = call %struct.Memory* @routine_movl__ecx__0x8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a7c4)
  store %struct.Memory* %call_42a7c4, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 42a7c7	 Bytes: 8
  %loadMem_42a7c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a7c7 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a7c7)
  store %struct.Memory* %call_42a7c7, %struct.Memory** %MEMORY

  ; Code: movl 0x11b04(%rax), %ecx	 RIP: 42a7cf	 Bytes: 6
  %loadMem_42a7cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a7cf = call %struct.Memory* @routine_movl_0x11b04__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a7cf)
  store %struct.Memory* %call_42a7cf, %struct.Memory** %MEMORY

  ; Code: movq 0x710a50, %rax	 RIP: 42a7d5	 Bytes: 8
  %loadMem_42a7d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a7d5 = call %struct.Memory* @routine_movq_0x710a50___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a7d5)
  store %struct.Memory* %call_42a7d5, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0xc(%rax)	 RIP: 42a7dd	 Bytes: 3
  %loadMem_42a7dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a7dd = call %struct.Memory* @routine_movl__ecx__0xc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a7dd)
  store %struct.Memory* %call_42a7dd, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 42a7e0	 Bytes: 8
  %loadMem_42a7e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a7e0 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a7e0)
  store %struct.Memory* %call_42a7e0, %struct.Memory** %MEMORY

  ; Code: movl 0x11b08(%rax), %ecx	 RIP: 42a7e8	 Bytes: 6
  %loadMem_42a7e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a7e8 = call %struct.Memory* @routine_movl_0x11b08__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a7e8)
  store %struct.Memory* %call_42a7e8, %struct.Memory** %MEMORY

  ; Code: movq 0x710a50, %rax	 RIP: 42a7ee	 Bytes: 8
  %loadMem_42a7ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a7ee = call %struct.Memory* @routine_movq_0x710a50___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a7ee)
  store %struct.Memory* %call_42a7ee, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x10(%rax)	 RIP: 42a7f6	 Bytes: 3
  %loadMem_42a7f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a7f6 = call %struct.Memory* @routine_movl__ecx__0x10__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a7f6)
  store %struct.Memory* %call_42a7f6, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 42a7f9	 Bytes: 8
  %loadMem_42a7f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a7f9 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a7f9)
  store %struct.Memory* %call_42a7f9, %struct.Memory** %MEMORY

  ; Code: movl 0x11b10(%rax), %ecx	 RIP: 42a801	 Bytes: 6
  %loadMem_42a801 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a801 = call %struct.Memory* @routine_movl_0x11b10__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a801)
  store %struct.Memory* %call_42a801, %struct.Memory** %MEMORY

  ; Code: movq 0x710a50, %rax	 RIP: 42a807	 Bytes: 8
  %loadMem_42a807 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a807 = call %struct.Memory* @routine_movq_0x710a50___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a807)
  store %struct.Memory* %call_42a807, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x18dc(%rax)	 RIP: 42a80f	 Bytes: 6
  %loadMem_42a80f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a80f = call %struct.Memory* @routine_movl__ecx__0x18dc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a80f)
  store %struct.Memory* %call_42a80f, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 42a815	 Bytes: 8
  %loadMem_42a815 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a815 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a815)
  store %struct.Memory* %call_42a815, %struct.Memory** %MEMORY

  ; Code: movl 0x11b10(%rax), %ecx	 RIP: 42a81d	 Bytes: 6
  %loadMem_42a81d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a81d = call %struct.Memory* @routine_movl_0x11b10__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a81d)
  store %struct.Memory* %call_42a81d, %struct.Memory** %MEMORY

  ; Code: movq 0x710a50, %rax	 RIP: 42a823	 Bytes: 8
  %loadMem_42a823 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a823 = call %struct.Memory* @routine_movq_0x710a50___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a823)
  store %struct.Memory* %call_42a823, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x18d8(%rax)	 RIP: 42a82b	 Bytes: 6
  %loadMem_42a82b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a82b = call %struct.Memory* @routine_movl__ecx__0x18d8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a82b)
  store %struct.Memory* %call_42a82b, %struct.Memory** %MEMORY

  ; Code: movq 0x710a50, %rax	 RIP: 42a831	 Bytes: 8
  %loadMem_42a831 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a831 = call %struct.Memory* @routine_movq_0x710a50___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a831)
  store %struct.Memory* %call_42a831, %struct.Memory** %MEMORY

  ; Code: movl $0x1, 0x190c(%rax)	 RIP: 42a839	 Bytes: 10
  %loadMem_42a839 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a839 = call %struct.Memory* @routine_movl__0x1__0x190c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a839)
  store %struct.Memory* %call_42a839, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rax	 RIP: 42a843	 Bytes: 8
  %loadMem_42a843 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a843 = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a843)
  store %struct.Memory* %call_42a843, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0xb44(%rax)	 RIP: 42a84b	 Bytes: 7
  %loadMem_42a84b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a84b = call %struct.Memory* @routine_cmpl__0x0__0xb44__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a84b)
  store %struct.Memory* %call_42a84b, %struct.Memory** %MEMORY

  ; Code: setne %r9b	 RIP: 42a852	 Bytes: 4
  %loadMem_42a852 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a852 = call %struct.Memory* @routine_setne__r9b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a852)
  store %struct.Memory* %call_42a852, %struct.Memory** %MEMORY

  ; Code: andb $0x1, %r9b	 RIP: 42a856	 Bytes: 4
  %loadMem_42a856 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a856 = call %struct.Memory* @routine_andb__0x1___r9b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a856)
  store %struct.Memory* %call_42a856, %struct.Memory** %MEMORY

  ; Code: movzbl %r9b, %ecx	 RIP: 42a85a	 Bytes: 4
  %loadMem_42a85a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a85a = call %struct.Memory* @routine_movzbl__r9b___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a85a)
  store %struct.Memory* %call_42a85a, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 42a85e	 Bytes: 8
  %loadMem_42a85e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a85e = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a85e)
  store %struct.Memory* %call_42a85e, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x11ad0(%rax)	 RIP: 42a866	 Bytes: 6
  %loadMem_42a866 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a866 = call %struct.Memory* @routine_movl__ecx__0x11ad0__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a866)
  store %struct.Memory* %call_42a866, %struct.Memory** %MEMORY

  ; Code: movq 0x710a50, %rax	 RIP: 42a86c	 Bytes: 8
  %loadMem_42a86c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a86c = call %struct.Memory* @routine_movq_0x710a50___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a86c)
  store %struct.Memory* %call_42a86c, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x1910(%rax)	 RIP: 42a874	 Bytes: 6
  %loadMem_42a874 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a874 = call %struct.Memory* @routine_movl__ecx__0x1910__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a874)
  store %struct.Memory* %call_42a874, %struct.Memory** %MEMORY

  ; Code: movq 0x710a50, %rax	 RIP: 42a87a	 Bytes: 8
  %loadMem_42a87a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a87a = call %struct.Memory* @routine_movq_0x710a50___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a87a)
  store %struct.Memory* %call_42a87a, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x70fcf0	 RIP: 42a882	 Bytes: 8
  %loadMem_42a882 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a882 = call %struct.Memory* @routine_movq__rax__0x70fcf0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a882)
  store %struct.Memory* %call_42a882, %struct.Memory** %MEMORY

  ; Code: callq .copy_params	 RIP: 42a88a	 Bytes: 5
  %loadMem1_42a88a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42a88a = call %struct.Memory* @routine_callq_.copy_params(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42a88a, i64 7958, i64 5, i64 5)
  store %struct.Memory* %call1_42a88a, %struct.Memory** %MEMORY

  %loadMem2_42a88a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42a88a = load i64, i64* %3
  %call2_42a88a = call %struct.Memory* @sub_42c7a0.copy_params(%struct.State* %0, i64  %loadPC_42a88a, %struct.Memory* %loadMem2_42a88a)
  store %struct.Memory* %call2_42a88a, %struct.Memory** %MEMORY

  ; Code: .L_42a88f:	 RIP: 42a88f	 Bytes: 0
  br label %block_.L_42a88f
block_.L_42a88f:

  ; Code: jmpq .L_42a894	 RIP: 42a88f	 Bytes: 5
  %loadMem_42a88f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a88f = call %struct.Memory* @routine_jmpq_.L_42a894(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a88f, i64 5, i64 5)
  store %struct.Memory* %call_42a88f, %struct.Memory** %MEMORY

  br label %block_.L_42a894

  ; Code: .L_42a894:	 RIP: 42a894	 Bytes: 0
block_.L_42a894:

  ; Code: movq 0x6cb908, %rax	 RIP: 42a894	 Bytes: 8
  %loadMem_42a894 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a894 = call %struct.Memory* @routine_movq_0x6cb908___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a894)
  store %struct.Memory* %call_42a894, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x5bc(%rax)	 RIP: 42a89c	 Bytes: 10
  %loadMem_42a89c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a89c = call %struct.Memory* @routine_movl__0x0__0x5bc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a89c)
  store %struct.Memory* %call_42a89c, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb908, %rax	 RIP: 42a8a6	 Bytes: 8
  %loadMem_42a8a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a8a6 = call %struct.Memory* @routine_movq_0x6cb908___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a8a6)
  store %struct.Memory* %call_42a8a6, %struct.Memory** %MEMORY

  ; Code: addq $0x5bc, %rax	 RIP: 42a8ae	 Bytes: 6
  %loadMem_42a8ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a8ae = call %struct.Memory* @routine_addq__0x5bc___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a8ae)
  store %struct.Memory* %call_42a8ae, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb908, %rcx	 RIP: 42a8b4	 Bytes: 8
  %loadMem_42a8b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a8b4 = call %struct.Memory* @routine_movq_0x6cb908___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a8b4)
  store %struct.Memory* %call_42a8b4, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x5c8(%rcx)	 RIP: 42a8bc	 Bytes: 7
  %loadMem_42a8bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a8bc = call %struct.Memory* @routine_movq__rax__0x5c8__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a8bc)
  store %struct.Memory* %call_42a8bc, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 42a8c3	 Bytes: 8
  %loadMem_42a8c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a8c3 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a8c3)
  store %struct.Memory* %call_42a8c3, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x11878(%rax)	 RIP: 42a8cb	 Bytes: 10
  %loadMem_42a8cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a8cb = call %struct.Memory* @routine_movl__0x0__0x11878__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a8cb)
  store %struct.Memory* %call_42a8cb, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdi	 RIP: 42a8d5	 Bytes: 4
  %loadMem_42a8d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a8d5 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a8d5)
  store %struct.Memory* %call_42a8d5, %struct.Memory** %MEMORY

  ; Code: callq .code_a_picture	 RIP: 42a8d9	 Bytes: 5
  %loadMem1_42a8d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42a8d9 = call %struct.Memory* @routine_callq_.code_a_picture(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42a8d9, i64 -11961, i64 5, i64 5)
  store %struct.Memory* %call1_42a8d9, %struct.Memory** %MEMORY

  %loadMem2_42a8d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42a8d9 = load i64, i64* %3
  %call2_42a8d9 = call %struct.Memory* @sub_427a20.code_a_picture(%struct.State* %0, i64  %loadPC_42a8d9, %struct.Memory* %loadMem2_42a8d9)
  store %struct.Memory* %call2_42a8d9, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 42a8de	 Bytes: 8
  %loadMem_42a8de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a8de = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a8de)
  store %struct.Memory* %call_42a8de, %struct.Memory** %MEMORY

  ; Code: movq 0x3750(%rax), %rax	 RIP: 42a8e6	 Bytes: 7
  %loadMem_42a8e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a8e6 = call %struct.Memory* @routine_movq_0x3750__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a8e6)
  store %struct.Memory* %call_42a8e6, %struct.Memory** %MEMORY

  ; Code: movq 0x18(%rax), %rax	 RIP: 42a8ed	 Bytes: 4
  %loadMem_42a8ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a8ed = call %struct.Memory* @routine_movq_0x18__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a8ed)
  store %struct.Memory* %call_42a8ed, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rax	 RIP: 42a8f1	 Bytes: 3
  %loadMem_42a8f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a8f1 = call %struct.Memory* @routine_movq___rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a8f1)
  store %struct.Memory* %call_42a8f1, %struct.Memory** %MEMORY

  ; Code: movl (%rax), %edx	 RIP: 42a8f4	 Bytes: 2
  %loadMem_42a8f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a8f4 = call %struct.Memory* @routine_movl___rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a8f4)
  store %struct.Memory* %call_42a8f4, %struct.Memory** %MEMORY

  ; Code: shll $0x3, %edx	 RIP: 42a8f6	 Bytes: 3
  %loadMem_42a8f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a8f6 = call %struct.Memory* @routine_shll__0x3___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a8f6)
  store %struct.Memory* %call_42a8f6, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42a8f9	 Bytes: 4
  %loadMem_42a8f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a8f9 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a8f9)
  store %struct.Memory* %call_42a8f9, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0x328(%rax)	 RIP: 42a8fd	 Bytes: 6
  %loadMem_42a8fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a8fd = call %struct.Memory* @routine_movl__edx__0x328__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a8fd)
  store %struct.Memory* %call_42a8fd, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 42a903	 Bytes: 8
  %loadMem_42a903 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a903 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a903)
  store %struct.Memory* %call_42a903, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x1c(%rax)	 RIP: 42a90b	 Bytes: 4
  %loadMem_42a90b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a90b = call %struct.Memory* @routine_cmpl__0x0__0x1c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a90b)
  store %struct.Memory* %call_42a90b, %struct.Memory** %MEMORY

  ; Code: jne .L_42a964	 RIP: 42a90f	 Bytes: 6
  %loadMem_42a90f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a90f = call %struct.Memory* @routine_jne_.L_42a964(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a90f, i8* %BRANCH_TAKEN, i64 85, i64 6, i64 6)
  store %struct.Memory* %call_42a90f, %struct.Memory** %MEMORY

  %loadBr_42a90f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42a90f = icmp eq i8 %loadBr_42a90f, 1
  br i1 %cmpBr_42a90f, label %block_.L_42a964, label %block_42a915

block_42a915:
  ; Code: callq .find_distortion	 RIP: 42a915	 Bytes: 5
  %loadMem1_42a915 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_42a915 = call %struct.Memory* @routine_callq_.find_distortion(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_42a915, i64 8123, i64 5, i64 5)
  store %struct.Memory* %call1_42a915, %struct.Memory** %MEMORY

  %loadMem2_42a915 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42a915 = load i64, i64* %3
  %call2_42a915 = call %struct.Memory* @sub_42c8d0.find_distortion(%struct.State* %0, i64  %loadPC_42a915, %struct.Memory* %loadMem2_42a915)
  store %struct.Memory* %call2_42a915, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb910, %rax	 RIP: 42a91a	 Bytes: 8
  %loadMem_42a91a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a91a = call %struct.Memory* @routine_movq_0x6cb910___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a91a)
  store %struct.Memory* %call_42a91a, %struct.Memory** %MEMORY

  ; Code: movss (%rax), %xmm0	 RIP: 42a922	 Bytes: 4
  %loadMem_42a922 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a922 = call %struct.Memory* @routine_movss___rax____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a922)
  store %struct.Memory* %call_42a922, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42a926	 Bytes: 4
  %loadMem_42a926 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a926 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a926)
  store %struct.Memory* %call_42a926, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, 0x32c(%rax)	 RIP: 42a92a	 Bytes: 8
  %loadMem_42a92a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a92a = call %struct.Memory* @routine_movss__xmm0__0x32c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a92a)
  store %struct.Memory* %call_42a92a, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb910, %rax	 RIP: 42a932	 Bytes: 8
  %loadMem_42a932 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a932 = call %struct.Memory* @routine_movq_0x6cb910___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a932)
  store %struct.Memory* %call_42a932, %struct.Memory** %MEMORY

  ; Code: movss 0x4(%rax), %xmm0	 RIP: 42a93a	 Bytes: 5
  %loadMem_42a93a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a93a = call %struct.Memory* @routine_movss_0x4__rax____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a93a)
  store %struct.Memory* %call_42a93a, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42a93f	 Bytes: 4
  %loadMem_42a93f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a93f = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a93f)
  store %struct.Memory* %call_42a93f, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, 0x330(%rax)	 RIP: 42a943	 Bytes: 8
  %loadMem_42a943 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a943 = call %struct.Memory* @routine_movss__xmm0__0x330__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a943)
  store %struct.Memory* %call_42a943, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb910, %rax	 RIP: 42a94b	 Bytes: 8
  %loadMem_42a94b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a94b = call %struct.Memory* @routine_movq_0x6cb910___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a94b)
  store %struct.Memory* %call_42a94b, %struct.Memory** %MEMORY

  ; Code: movss 0x8(%rax), %xmm0	 RIP: 42a953	 Bytes: 5
  %loadMem_42a953 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a953 = call %struct.Memory* @routine_movss_0x8__rax____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a953)
  store %struct.Memory* %call_42a953, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rax	 RIP: 42a958	 Bytes: 4
  %loadMem_42a958 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a958 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a958)
  store %struct.Memory* %call_42a958, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, 0x334(%rax)	 RIP: 42a95c	 Bytes: 8
  %loadMem_42a95c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a95c = call %struct.Memory* @routine_movss__xmm0__0x334__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a95c)
  store %struct.Memory* %call_42a95c, %struct.Memory** %MEMORY

  ; Code: .L_42a964:	 RIP: 42a964	 Bytes: 0
  br label %block_.L_42a964
block_.L_42a964:

  ; Code: addq $0x10, %rsp	 RIP: 42a964	 Bytes: 4
  %loadMem_42a964 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a964 = call %struct.Memory* @routine_addq__0x10___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a964)
  store %struct.Memory* %call_42a964, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 42a968	 Bytes: 1
  %loadMem_42a968 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a968 = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a968)
  store %struct.Memory* %call_42a968, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 42a969	 Bytes: 1
  %loadMem_42a969 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42a969 = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42a969)
  store %struct.Memory* %call_42a969, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_42a969
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

define %struct.Memory* @routine_subq__0x10___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 16)
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__esi__MINUS0xc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0x0__0x1c__rdi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 28
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

define %struct.Memory* @routine_movl_0x11b28__rdi____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 72488
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__esi__0x11b24__rdi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 72484
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
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

define %struct.Memory* @routine_cmpl__0x2__MINUS0xc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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

define %struct.Memory* @routine_jne_.L_42a5e6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_0x1c__rax____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 28
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl_0x34__rax____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 52
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl_0x3c__rax____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 60
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl_0x38__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 56
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl_0x40__rax____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RAX = bitcast %union.anon* %11 to i64*
  %12 = bitcast i32* %R8D to i64*
  %13 = load i64, i64* %RAX
  %14 = add i64 %13, 64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
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

define %struct.Memory* @routine_callq_.alloc_storable_picture(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__rax__0x722b50(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x722b50_type* @G_0x722b50 to i64), i64 %9)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_movl_0x11b08__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 72456
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_0x722b50___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x722b50_type* @G_0x722b50 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__ecx__0x4__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 4
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movl__ecx__0x11b0c__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 72460
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movl_0x11b00__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 72448
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__ecx__0x8__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 8
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movl_0x11b04__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 72452
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__ecx__0xc__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 12
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}








define %struct.Memory* @routine_movl__ecx__0x10__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 16
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movl_0x11b10__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 72464
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__ecx__0x18dc__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 6364
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}








define %struct.Memory* @routine_movl__ecx__0x18d8__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 6360
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movl__0x1__0x190c__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 6412
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
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


define %struct.Memory* @routine_cmpl__0x0__0xb44__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 2884
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

define %struct.Memory* @routine_setne__r9b(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 19
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %R9B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5SETNZI3RnWIhEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i8* %R9B)
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

define %struct.Memory* @routine_andb__0x1___r9b(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 19
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %R9B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = load i8, i8* %R9B
  %11 = zext i8 %10 to i64
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWIhE2RnIhE2InIhEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %R9B, i64 %11, i64 1)
  ret %struct.Memory* %14
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 255
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movzbl__r9b___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 19
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %R9B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 5
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RCX = bitcast %union.anon* %12 to i64*
  %13 = load i8, i8* %R9B
  %14 = zext i8 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movl__ecx__0x11ad0__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 72400
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movl__ecx__0x1910__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 6416
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movq__rax__0x70fcf0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x70fcf0_type* @G_0x70fcf0 to i64), i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_callq_.copy_params(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64) #2 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2, i64* %4, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jmpq_.L_42a894(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_cmpl__0x1__MINUS0xc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_42a742(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
























define %struct.Memory* @routine_movq__rax__0x6d12b0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x6d12b0_type* @G_0x6d12b0 to i64), i64 %9)
  ret %struct.Memory* %12
}






define %struct.Memory* @routine_movq_0x6d12b0___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x6d12b0_type* @G_0x6d12b0 to i64))
  ret %struct.Memory* %11
}












































































define %struct.Memory* @routine_jmpq_.L_42a88f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}
























define %struct.Memory* @routine_movq__rax__0x710a50(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x710a50_type* @G_0x710a50 to i64), i64 %9)
  ret %struct.Memory* %12
}






define %struct.Memory* @routine_movq_0x710a50___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x710a50_type* @G_0x710a50 to i64))
  ret %struct.Memory* %11
}














































































define %struct.Memory* @routine_movq_0x6cb908___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x6cb908_type* @G_0x6cb908 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__0x0__0x5bc__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 1468
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
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

define %struct.Memory* @routine_addq__0x5bc___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 1468)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movq_0x6cb908___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G_0x6cb908_type* @G_0x6cb908 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__rax__0x5c8__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 1480
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movl__0x0__0x11878__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 71800
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.code_a_picture(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movq_0x3750__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 14160
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movq_0x18__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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


define %struct.Memory* @routine_movl___rax____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = add i64 %13, 2
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12)
  ret %struct.Memory* %15
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


define %struct.Memory* @routine_movl__edx__0x328__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 808
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_cmpl__0x0__0x1c__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 28
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_42a964(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_callq_.find_distortion(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq_0x6cb910___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x6cb910_type* @G_0x6cb910 to i64))
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to float*
  %6 = load float, float* %5
  %7 = bitcast i8* %2 to float*
  store float %6, float* %7, align 1
  %8 = getelementptr inbounds i8, i8* %2, i64 4
  %9 = bitcast i8* %8 to float*
  store float 0.000000e+00, float* %9, align 1
  %10 = getelementptr inbounds i8, i8* %2, i64 8
  %11 = bitcast i8* %10 to float*
  store float 0.000000e+00, float* %11, align 1
  %12 = getelementptr inbounds i8, i8* %2, i64 12
  %13 = bitcast i8* %12 to float*
  store float 0.000000e+00, float* %13, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movss___rax____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RAX
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %12)
  ret %struct.Memory* %15
}



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i8* nocapture readonly) #7 {
  %5 = bitcast i8* %3 to <2 x float>*
  %6 = load <2 x float>, <2 x float>* %5, align 1
  %7 = extractelement <2 x float> %6, i32 0
  %8 = inttoptr i64 %2 to float*
  store float %7, float* %8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movss__xmm0__0x32c__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 812
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movss_0x4__rax____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movss__xmm0__0x330__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 816
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movss_0x8__rax____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movss__xmm0__0x334__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 820
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addq__0x10___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 16)
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

