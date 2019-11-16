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

declare %struct.Memory* @sub_402490.biari_init_context(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Data Access Globals
%G_0x6cb900_type = type <{ [8 x i8] }>
@G_0x6cb900= global %G_0x6cb900_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
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


define %struct.Memory* @init_contexts(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .init_contexts:	 RIP: 417d40	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 417d40	 Bytes: 1
  %loadMem_417d40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417d40 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417d40)
  store %struct.Memory* %call_417d40, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 417d41	 Bytes: 3
  %loadMem_417d41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417d41 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417d41)
  store %struct.Memory* %call_417d41, %struct.Memory** %MEMORY

  ; Code: subq $0x20, %rsp	 RIP: 417d44	 Bytes: 4
  %loadMem_417d44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417d44 = call %struct.Memory* @routine_subq__0x20___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417d44)
  store %struct.Memory* %call_417d44, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 417d48	 Bytes: 8
  %loadMem_417d48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417d48 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417d48)
  store %struct.Memory* %call_417d48, %struct.Memory** %MEMORY

  ; Code: movq 0x3750(%rax), %rax	 RIP: 417d50	 Bytes: 7
  %loadMem_417d50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417d50 = call %struct.Memory* @routine_movq_0x3750__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417d50)
  store %struct.Memory* %call_417d50, %struct.Memory** %MEMORY

  ; Code: movq 0x20(%rax), %rax	 RIP: 417d57	 Bytes: 4
  %loadMem_417d57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417d57 = call %struct.Memory* @routine_movq_0x20__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417d57)
  store %struct.Memory* %call_417d57, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x8(%rbp)	 RIP: 417d5b	 Bytes: 4
  %loadMem_417d5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417d5b = call %struct.Memory* @routine_movq__rax__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417d5b)
  store %struct.Memory* %call_417d5b, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 417d5f	 Bytes: 8
  %loadMem_417d5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417d5f = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417d5f)
  store %struct.Memory* %call_417d5f, %struct.Memory** %MEMORY

  ; Code: movq 0x3750(%rax), %rax	 RIP: 417d67	 Bytes: 7
  %loadMem_417d67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417d67 = call %struct.Memory* @routine_movq_0x3750__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417d67)
  store %struct.Memory* %call_417d67, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rax), %rax	 RIP: 417d6e	 Bytes: 4
  %loadMem_417d6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417d6e = call %struct.Memory* @routine_movq_0x28__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417d6e)
  store %struct.Memory* %call_417d6e, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x10(%rbp)	 RIP: 417d72	 Bytes: 4
  %loadMem_417d72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417d72 = call %struct.Memory* @routine_movq__rax__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417d72)
  store %struct.Memory* %call_417d72, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x14(%rbp)	 RIP: 417d76	 Bytes: 7
  %loadMem_417d76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417d76 = call %struct.Memory* @routine_movl__0x0__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417d76)
  store %struct.Memory* %call_417d76, %struct.Memory** %MEMORY

  ; Code: .L_417d7d:	 RIP: 417d7d	 Bytes: 0
  br label %block_.L_417d7d
block_.L_417d7d:

  ; Code: cmpl $0x3, -0x14(%rbp)	 RIP: 417d7d	 Bytes: 4
  %loadMem_417d7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417d7d = call %struct.Memory* @routine_cmpl__0x3__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417d7d)
  store %struct.Memory* %call_417d7d, %struct.Memory** %MEMORY

  ; Code: jge .L_417e97	 RIP: 417d81	 Bytes: 6
  %loadMem_417d81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417d81 = call %struct.Memory* @routine_jge_.L_417e97(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417d81, i8* %BRANCH_TAKEN, i64 278, i64 6, i64 6)
  store %struct.Memory* %call_417d81, %struct.Memory** %MEMORY

  %loadBr_417d81 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_417d81 = icmp eq i8 %loadBr_417d81, 1
  br i1 %cmpBr_417d81, label %block_.L_417e97, label %block_417d87

block_417d87:
  ; Code: movl $0x0, -0x18(%rbp)	 RIP: 417d87	 Bytes: 7
  %loadMem_417d87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417d87 = call %struct.Memory* @routine_movl__0x0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417d87)
  store %struct.Memory* %call_417d87, %struct.Memory** %MEMORY

  ; Code: .L_417d8e:	 RIP: 417d8e	 Bytes: 0
  br label %block_.L_417d8e
block_.L_417d8e:

  ; Code: cmpl $0xb, -0x18(%rbp)	 RIP: 417d8e	 Bytes: 4
  %loadMem_417d8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417d8e = call %struct.Memory* @routine_cmpl__0xb__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417d8e)
  store %struct.Memory* %call_417d8e, %struct.Memory** %MEMORY

  ; Code: jge .L_417e84	 RIP: 417d92	 Bytes: 6
  %loadMem_417d92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417d92 = call %struct.Memory* @routine_jge_.L_417e84(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417d92, i8* %BRANCH_TAKEN, i64 242, i64 6, i64 6)
  store %struct.Memory* %call_417d92, %struct.Memory** %MEMORY

  %loadBr_417d92 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_417d92 = icmp eq i8 %loadBr_417d92, 1
  br i1 %cmpBr_417d92, label %block_.L_417e84, label %block_417d98

block_417d98:
  ; Code: movq 0x6cb900, %rax	 RIP: 417d98	 Bytes: 8
  %loadMem_417d98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417d98 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417d98)
  store %struct.Memory* %call_417d98, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, 0x18(%rax)	 RIP: 417da0	 Bytes: 4
  %loadMem_417da0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417da0 = call %struct.Memory* @routine_cmpl__0x2__0x18__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417da0)
  store %struct.Memory* %call_417da0, %struct.Memory** %MEMORY

  ; Code: jne .L_417e10	 RIP: 417da4	 Bytes: 6
  %loadMem_417da4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417da4 = call %struct.Memory* @routine_jne_.L_417e10(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417da4, i8* %BRANCH_TAKEN, i64 108, i64 6, i64 6)
  store %struct.Memory* %call_417da4, %struct.Memory** %MEMORY

  %loadBr_417da4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_417da4 = icmp eq i8 %loadBr_417da4, 1
  br i1 %cmpBr_417da4, label %block_.L_417e10, label %block_417daa

block_417daa:
  ; Code: movq $0x4b3290, %rax	 RIP: 417daa	 Bytes: 10
  %loadMem_417daa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417daa = call %struct.Memory* @routine_movq__0x4b3290___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417daa)
  store %struct.Memory* %call_417daa, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 417db4	 Bytes: 4
  %loadMem_417db4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417db4 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417db4)
  store %struct.Memory* %call_417db4, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 417db8	 Bytes: 4
  %loadMem_417db8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417db8 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417db8)
  store %struct.Memory* %call_417db8, %struct.Memory** %MEMORY

  ; Code: imulq $0xb0, %rdx, %rdx	 RIP: 417dbc	 Bytes: 7
  %loadMem_417dbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417dbc = call %struct.Memory* @routine_imulq__0xb0___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417dbc)
  store %struct.Memory* %call_417dbc, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 417dc3	 Bytes: 3
  %loadMem_417dc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417dc3 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417dc3)
  store %struct.Memory* %call_417dc3, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rdx	 RIP: 417dc6	 Bytes: 4
  %loadMem_417dc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417dc6 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417dc6)
  store %struct.Memory* %call_417dc6, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rdx	 RIP: 417dca	 Bytes: 4
  %loadMem_417dca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417dca = call %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417dca)
  store %struct.Memory* %call_417dca, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 417dce	 Bytes: 3
  %loadMem_417dce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417dce = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417dce)
  store %struct.Memory* %call_417dce, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rdx	 RIP: 417dd1	 Bytes: 8
  %loadMem_417dd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417dd1 = call %struct.Memory* @routine_movq_0x6cb900___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417dd1)
  store %struct.Memory* %call_417dd1, %struct.Memory** %MEMORY

  ; Code: movslq 0x11b48(%rdx), %rdx	 RIP: 417dd9	 Bytes: 7
  %loadMem_417dd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417dd9 = call %struct.Memory* @routine_movslq_0x11b48__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417dd9)
  store %struct.Memory* %call_417dd9, %struct.Memory** %MEMORY

  ; Code: imulq $0x108, %rdx, %rdx	 RIP: 417de0	 Bytes: 7
  %loadMem_417de0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417de0 = call %struct.Memory* @routine_imulq__0x108___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417de0)
  store %struct.Memory* %call_417de0, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 417de7	 Bytes: 3
  %loadMem_417de7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417de7 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417de7)
  store %struct.Memory* %call_417de7, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 417dea	 Bytes: 4
  %loadMem_417dea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417dea = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417dea)
  store %struct.Memory* %call_417dea, %struct.Memory** %MEMORY

  ; Code: imulq $0x58, %rdx, %rdx	 RIP: 417dee	 Bytes: 4
  %loadMem_417dee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417dee = call %struct.Memory* @routine_imulq__0x58___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417dee)
  store %struct.Memory* %call_417dee, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 417df2	 Bytes: 3
  %loadMem_417df2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417df2 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417df2)
  store %struct.Memory* %call_417df2, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rdx	 RIP: 417df5	 Bytes: 4
  %loadMem_417df5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417df5 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417df5)
  store %struct.Memory* %call_417df5, %struct.Memory** %MEMORY

  ; Code: shlq $0x3, %rdx	 RIP: 417df9	 Bytes: 4
  %loadMem_417df9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417df9 = call %struct.Memory* @routine_shlq__0x3___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417df9)
  store %struct.Memory* %call_417df9, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 417dfd	 Bytes: 3
  %loadMem_417dfd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417dfd = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417dfd)
  store %struct.Memory* %call_417dfd, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 417e00	 Bytes: 3
  %loadMem_417e00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417e00 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417e00)
  store %struct.Memory* %call_417e00, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 417e03	 Bytes: 3
  %loadMem_417e03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417e03 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417e03)
  store %struct.Memory* %call_417e03, %struct.Memory** %MEMORY

  ; Code: callq .biari_init_context	 RIP: 417e06	 Bytes: 5
  %loadMem1_417e06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_417e06 = call %struct.Memory* @routine_callq_.biari_init_context(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_417e06, i64 -88438, i64 5, i64 5)
  store %struct.Memory* %call1_417e06, %struct.Memory** %MEMORY

  %loadMem2_417e06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_417e06 = load i64, i64* %3
  %call2_417e06 = call %struct.Memory* @sub_402490.biari_init_context(%struct.State* %0, i64  %loadPC_417e06, %struct.Memory* %loadMem2_417e06)
  store %struct.Memory* %call2_417e06, %struct.Memory** %MEMORY

  ; Code: jmpq .L_417e71	 RIP: 417e0b	 Bytes: 5
  %loadMem_417e0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417e0b = call %struct.Memory* @routine_jmpq_.L_417e71(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417e0b, i64 102, i64 5)
  store %struct.Memory* %call_417e0b, %struct.Memory** %MEMORY

  br label %block_.L_417e71

  ; Code: .L_417e10:	 RIP: 417e10	 Bytes: 0
block_.L_417e10:

  ; Code: movq $0x4b33a0, %rax	 RIP: 417e10	 Bytes: 10
  %loadMem_417e10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417e10 = call %struct.Memory* @routine_movq__0x4b33a0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417e10)
  store %struct.Memory* %call_417e10, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 417e1a	 Bytes: 4
  %loadMem_417e1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417e1a = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417e1a)
  store %struct.Memory* %call_417e1a, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 417e1e	 Bytes: 4
  %loadMem_417e1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417e1e = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417e1e)
  store %struct.Memory* %call_417e1e, %struct.Memory** %MEMORY

  ; Code: imulq $0xb0, %rdx, %rdx	 RIP: 417e22	 Bytes: 7
  %loadMem_417e22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417e22 = call %struct.Memory* @routine_imulq__0xb0___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417e22)
  store %struct.Memory* %call_417e22, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 417e29	 Bytes: 3
  %loadMem_417e29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417e29 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417e29)
  store %struct.Memory* %call_417e29, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rdx	 RIP: 417e2c	 Bytes: 4
  %loadMem_417e2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417e2c = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417e2c)
  store %struct.Memory* %call_417e2c, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rdx	 RIP: 417e30	 Bytes: 4
  %loadMem_417e30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417e30 = call %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417e30)
  store %struct.Memory* %call_417e30, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 417e34	 Bytes: 3
  %loadMem_417e34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417e34 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417e34)
  store %struct.Memory* %call_417e34, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rdx	 RIP: 417e37	 Bytes: 8
  %loadMem_417e37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417e37 = call %struct.Memory* @routine_movq_0x6cb900___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417e37)
  store %struct.Memory* %call_417e37, %struct.Memory** %MEMORY

  ; Code: movslq 0x11b48(%rdx), %rdx	 RIP: 417e3f	 Bytes: 7
  %loadMem_417e3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417e3f = call %struct.Memory* @routine_movslq_0x11b48__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417e3f)
  store %struct.Memory* %call_417e3f, %struct.Memory** %MEMORY

  ; Code: imulq $0x108, %rdx, %rdx	 RIP: 417e46	 Bytes: 7
  %loadMem_417e46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417e46 = call %struct.Memory* @routine_imulq__0x108___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417e46)
  store %struct.Memory* %call_417e46, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 417e4d	 Bytes: 3
  %loadMem_417e4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417e4d = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417e4d)
  store %struct.Memory* %call_417e4d, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 417e50	 Bytes: 4
  %loadMem_417e50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417e50 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417e50)
  store %struct.Memory* %call_417e50, %struct.Memory** %MEMORY

  ; Code: imulq $0x58, %rdx, %rdx	 RIP: 417e54	 Bytes: 4
  %loadMem_417e54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417e54 = call %struct.Memory* @routine_imulq__0x58___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417e54)
  store %struct.Memory* %call_417e54, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 417e58	 Bytes: 3
  %loadMem_417e58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417e58 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417e58)
  store %struct.Memory* %call_417e58, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rdx	 RIP: 417e5b	 Bytes: 4
  %loadMem_417e5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417e5b = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417e5b)
  store %struct.Memory* %call_417e5b, %struct.Memory** %MEMORY

  ; Code: shlq $0x3, %rdx	 RIP: 417e5f	 Bytes: 4
  %loadMem_417e5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417e5f = call %struct.Memory* @routine_shlq__0x3___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417e5f)
  store %struct.Memory* %call_417e5f, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 417e63	 Bytes: 3
  %loadMem_417e63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417e63 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417e63)
  store %struct.Memory* %call_417e63, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 417e66	 Bytes: 3
  %loadMem_417e66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417e66 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417e66)
  store %struct.Memory* %call_417e66, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 417e69	 Bytes: 3
  %loadMem_417e69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417e69 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417e69)
  store %struct.Memory* %call_417e69, %struct.Memory** %MEMORY

  ; Code: callq .biari_init_context	 RIP: 417e6c	 Bytes: 5
  %loadMem1_417e6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_417e6c = call %struct.Memory* @routine_callq_.biari_init_context(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_417e6c, i64 -88540, i64 5, i64 5)
  store %struct.Memory* %call1_417e6c, %struct.Memory** %MEMORY

  %loadMem2_417e6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_417e6c = load i64, i64* %3
  %call2_417e6c = call %struct.Memory* @sub_402490.biari_init_context(%struct.State* %0, i64  %loadPC_417e6c, %struct.Memory* %loadMem2_417e6c)
  store %struct.Memory* %call2_417e6c, %struct.Memory** %MEMORY

  ; Code: .L_417e71:	 RIP: 417e71	 Bytes: 0
  br label %block_.L_417e71
block_.L_417e71:

  ; Code: jmpq .L_417e76	 RIP: 417e71	 Bytes: 5
  %loadMem_417e71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417e71 = call %struct.Memory* @routine_jmpq_.L_417e76(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417e71, i64 5, i64 5)
  store %struct.Memory* %call_417e71, %struct.Memory** %MEMORY

  br label %block_.L_417e76

  ; Code: .L_417e76:	 RIP: 417e76	 Bytes: 0
block_.L_417e76:

  ; Code: movl -0x18(%rbp), %eax	 RIP: 417e76	 Bytes: 3
  %loadMem_417e76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417e76 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417e76)
  store %struct.Memory* %call_417e76, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 417e79	 Bytes: 3
  %loadMem_417e79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417e79 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417e79)
  store %struct.Memory* %call_417e79, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x18(%rbp)	 RIP: 417e7c	 Bytes: 3
  %loadMem_417e7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417e7c = call %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417e7c)
  store %struct.Memory* %call_417e7c, %struct.Memory** %MEMORY

  ; Code: jmpq .L_417d8e	 RIP: 417e7f	 Bytes: 5
  %loadMem_417e7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417e7f = call %struct.Memory* @routine_jmpq_.L_417d8e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417e7f, i64 -241, i64 5)
  store %struct.Memory* %call_417e7f, %struct.Memory** %MEMORY

  br label %block_.L_417d8e

  ; Code: .L_417e84:	 RIP: 417e84	 Bytes: 0
block_.L_417e84:

  ; Code: jmpq .L_417e89	 RIP: 417e84	 Bytes: 5
  %loadMem_417e84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417e84 = call %struct.Memory* @routine_jmpq_.L_417e89(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417e84, i64 5, i64 5)
  store %struct.Memory* %call_417e84, %struct.Memory** %MEMORY

  br label %block_.L_417e89

  ; Code: .L_417e89:	 RIP: 417e89	 Bytes: 0
block_.L_417e89:

  ; Code: movl -0x14(%rbp), %eax	 RIP: 417e89	 Bytes: 3
  %loadMem_417e89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417e89 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417e89)
  store %struct.Memory* %call_417e89, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 417e8c	 Bytes: 3
  %loadMem_417e8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417e8c = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417e8c)
  store %struct.Memory* %call_417e8c, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x14(%rbp)	 RIP: 417e8f	 Bytes: 3
  %loadMem_417e8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417e8f = call %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417e8f)
  store %struct.Memory* %call_417e8f, %struct.Memory** %MEMORY

  ; Code: jmpq .L_417d7d	 RIP: 417e92	 Bytes: 5
  %loadMem_417e92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417e92 = call %struct.Memory* @routine_jmpq_.L_417d7d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417e92, i64 -277, i64 5)
  store %struct.Memory* %call_417e92, %struct.Memory** %MEMORY

  br label %block_.L_417d7d

  ; Code: .L_417e97:	 RIP: 417e97	 Bytes: 0
block_.L_417e97:

  ; Code: movl $0x0, -0x14(%rbp)	 RIP: 417e97	 Bytes: 7
  %loadMem_417e97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417e97 = call %struct.Memory* @routine_movl__0x0__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417e97)
  store %struct.Memory* %call_417e97, %struct.Memory** %MEMORY

  ; Code: .L_417e9e:	 RIP: 417e9e	 Bytes: 0
  br label %block_.L_417e9e
block_.L_417e9e:

  ; Code: cmpl $0x2, -0x14(%rbp)	 RIP: 417e9e	 Bytes: 4
  %loadMem_417e9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417e9e = call %struct.Memory* @routine_cmpl__0x2__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417e9e)
  store %struct.Memory* %call_417e9e, %struct.Memory** %MEMORY

  ; Code: jge .L_417fc6	 RIP: 417ea2	 Bytes: 6
  %loadMem_417ea2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417ea2 = call %struct.Memory* @routine_jge_.L_417fc6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417ea2, i8* %BRANCH_TAKEN, i64 292, i64 6, i64 6)
  store %struct.Memory* %call_417ea2, %struct.Memory** %MEMORY

  %loadBr_417ea2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_417ea2 = icmp eq i8 %loadBr_417ea2, 1
  br i1 %cmpBr_417ea2, label %block_.L_417fc6, label %block_417ea8

block_417ea8:
  ; Code: movl $0x0, -0x18(%rbp)	 RIP: 417ea8	 Bytes: 7
  %loadMem_417ea8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417ea8 = call %struct.Memory* @routine_movl__0x0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417ea8)
  store %struct.Memory* %call_417ea8, %struct.Memory** %MEMORY

  ; Code: .L_417eaf:	 RIP: 417eaf	 Bytes: 0
  br label %block_.L_417eaf
block_.L_417eaf:

  ; Code: cmpl $0x9, -0x18(%rbp)	 RIP: 417eaf	 Bytes: 4
  %loadMem_417eaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417eaf = call %struct.Memory* @routine_cmpl__0x9__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417eaf)
  store %struct.Memory* %call_417eaf, %struct.Memory** %MEMORY

  ; Code: jge .L_417fb3	 RIP: 417eb3	 Bytes: 6
  %loadMem_417eb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417eb3 = call %struct.Memory* @routine_jge_.L_417fb3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417eb3, i8* %BRANCH_TAKEN, i64 256, i64 6, i64 6)
  store %struct.Memory* %call_417eb3, %struct.Memory** %MEMORY

  %loadBr_417eb3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_417eb3 = icmp eq i8 %loadBr_417eb3, 1
  br i1 %cmpBr_417eb3, label %block_.L_417fb3, label %block_417eb9

block_417eb9:
  ; Code: movq 0x6cb900, %rax	 RIP: 417eb9	 Bytes: 8
  %loadMem_417eb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417eb9 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417eb9)
  store %struct.Memory* %call_417eb9, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, 0x18(%rax)	 RIP: 417ec1	 Bytes: 4
  %loadMem_417ec1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417ec1 = call %struct.Memory* @routine_cmpl__0x2__0x18__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417ec1)
  store %struct.Memory* %call_417ec1, %struct.Memory** %MEMORY

  ; Code: jne .L_417f38	 RIP: 417ec5	 Bytes: 6
  %loadMem_417ec5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417ec5 = call %struct.Memory* @routine_jne_.L_417f38(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417ec5, i8* %BRANCH_TAKEN, i64 115, i64 6, i64 6)
  store %struct.Memory* %call_417ec5, %struct.Memory** %MEMORY

  %loadBr_417ec5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_417ec5 = icmp eq i8 %loadBr_417ec5, 1
  br i1 %cmpBr_417ec5, label %block_.L_417f38, label %block_417ecb

block_417ecb:
  ; Code: movq $0x4b36c0, %rax	 RIP: 417ecb	 Bytes: 10
  %loadMem_417ecb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417ecb = call %struct.Memory* @routine_movq__0x4b36c0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417ecb)
  store %struct.Memory* %call_417ecb, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 417ed5	 Bytes: 4
  %loadMem_417ed5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417ed5 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417ed5)
  store %struct.Memory* %call_417ed5, %struct.Memory** %MEMORY

  ; Code: addq $0x210, %rcx	 RIP: 417ed9	 Bytes: 7
  %loadMem_417ed9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417ed9 = call %struct.Memory* @routine_addq__0x210___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417ed9)
  store %struct.Memory* %call_417ed9, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 417ee0	 Bytes: 4
  %loadMem_417ee0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417ee0 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417ee0)
  store %struct.Memory* %call_417ee0, %struct.Memory** %MEMORY

  ; Code: imulq $0x90, %rdx, %rdx	 RIP: 417ee4	 Bytes: 7
  %loadMem_417ee4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417ee4 = call %struct.Memory* @routine_imulq__0x90___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417ee4)
  store %struct.Memory* %call_417ee4, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 417eeb	 Bytes: 3
  %loadMem_417eeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417eeb = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417eeb)
  store %struct.Memory* %call_417eeb, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rdx	 RIP: 417eee	 Bytes: 4
  %loadMem_417eee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417eee = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417eee)
  store %struct.Memory* %call_417eee, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rdx	 RIP: 417ef2	 Bytes: 4
  %loadMem_417ef2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417ef2 = call %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417ef2)
  store %struct.Memory* %call_417ef2, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 417ef6	 Bytes: 3
  %loadMem_417ef6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417ef6 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417ef6)
  store %struct.Memory* %call_417ef6, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rdx	 RIP: 417ef9	 Bytes: 8
  %loadMem_417ef9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417ef9 = call %struct.Memory* @routine_movq_0x6cb900___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417ef9)
  store %struct.Memory* %call_417ef9, %struct.Memory** %MEMORY

  ; Code: movslq 0x11b48(%rdx), %rdx	 RIP: 417f01	 Bytes: 7
  %loadMem_417f01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417f01 = call %struct.Memory* @routine_movslq_0x11b48__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417f01)
  store %struct.Memory* %call_417f01, %struct.Memory** %MEMORY

  ; Code: imulq $0x90, %rdx, %rdx	 RIP: 417f08	 Bytes: 7
  %loadMem_417f08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417f08 = call %struct.Memory* @routine_imulq__0x90___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417f08)
  store %struct.Memory* %call_417f08, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 417f0f	 Bytes: 3
  %loadMem_417f0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417f0f = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417f0f)
  store %struct.Memory* %call_417f0f, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 417f12	 Bytes: 4
  %loadMem_417f12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417f12 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417f12)
  store %struct.Memory* %call_417f12, %struct.Memory** %MEMORY

  ; Code: imulq $0x48, %rdx, %rdx	 RIP: 417f16	 Bytes: 4
  %loadMem_417f16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417f16 = call %struct.Memory* @routine_imulq__0x48___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417f16)
  store %struct.Memory* %call_417f16, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 417f1a	 Bytes: 3
  %loadMem_417f1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417f1a = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417f1a)
  store %struct.Memory* %call_417f1a, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rdx	 RIP: 417f1d	 Bytes: 4
  %loadMem_417f1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417f1d = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417f1d)
  store %struct.Memory* %call_417f1d, %struct.Memory** %MEMORY

  ; Code: shlq $0x3, %rdx	 RIP: 417f21	 Bytes: 4
  %loadMem_417f21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417f21 = call %struct.Memory* @routine_shlq__0x3___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417f21)
  store %struct.Memory* %call_417f21, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 417f25	 Bytes: 3
  %loadMem_417f25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417f25 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417f25)
  store %struct.Memory* %call_417f25, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 417f28	 Bytes: 3
  %loadMem_417f28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417f28 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417f28)
  store %struct.Memory* %call_417f28, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 417f2b	 Bytes: 3
  %loadMem_417f2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417f2b = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417f2b)
  store %struct.Memory* %call_417f2b, %struct.Memory** %MEMORY

  ; Code: callq .biari_init_context	 RIP: 417f2e	 Bytes: 5
  %loadMem1_417f2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_417f2e = call %struct.Memory* @routine_callq_.biari_init_context(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_417f2e, i64 -88734, i64 5, i64 5)
  store %struct.Memory* %call1_417f2e, %struct.Memory** %MEMORY

  %loadMem2_417f2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_417f2e = load i64, i64* %3
  %call2_417f2e = call %struct.Memory* @sub_402490.biari_init_context(%struct.State* %0, i64  %loadPC_417f2e, %struct.Memory* %loadMem2_417f2e)
  store %struct.Memory* %call2_417f2e, %struct.Memory** %MEMORY

  ; Code: jmpq .L_417fa0	 RIP: 417f33	 Bytes: 5
  %loadMem_417f33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417f33 = call %struct.Memory* @routine_jmpq_.L_417fa0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417f33, i64 109, i64 5)
  store %struct.Memory* %call_417f33, %struct.Memory** %MEMORY

  br label %block_.L_417fa0

  ; Code: .L_417f38:	 RIP: 417f38	 Bytes: 0
block_.L_417f38:

  ; Code: movq $0x4b3750, %rax	 RIP: 417f38	 Bytes: 10
  %loadMem_417f38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417f38 = call %struct.Memory* @routine_movq__0x4b3750___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417f38)
  store %struct.Memory* %call_417f38, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 417f42	 Bytes: 4
  %loadMem_417f42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417f42 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417f42)
  store %struct.Memory* %call_417f42, %struct.Memory** %MEMORY

  ; Code: addq $0x210, %rcx	 RIP: 417f46	 Bytes: 7
  %loadMem_417f46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417f46 = call %struct.Memory* @routine_addq__0x210___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417f46)
  store %struct.Memory* %call_417f46, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 417f4d	 Bytes: 4
  %loadMem_417f4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417f4d = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417f4d)
  store %struct.Memory* %call_417f4d, %struct.Memory** %MEMORY

  ; Code: imulq $0x90, %rdx, %rdx	 RIP: 417f51	 Bytes: 7
  %loadMem_417f51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417f51 = call %struct.Memory* @routine_imulq__0x90___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417f51)
  store %struct.Memory* %call_417f51, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 417f58	 Bytes: 3
  %loadMem_417f58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417f58 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417f58)
  store %struct.Memory* %call_417f58, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rdx	 RIP: 417f5b	 Bytes: 4
  %loadMem_417f5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417f5b = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417f5b)
  store %struct.Memory* %call_417f5b, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rdx	 RIP: 417f5f	 Bytes: 4
  %loadMem_417f5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417f5f = call %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417f5f)
  store %struct.Memory* %call_417f5f, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 417f63	 Bytes: 3
  %loadMem_417f63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417f63 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417f63)
  store %struct.Memory* %call_417f63, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rdx	 RIP: 417f66	 Bytes: 8
  %loadMem_417f66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417f66 = call %struct.Memory* @routine_movq_0x6cb900___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417f66)
  store %struct.Memory* %call_417f66, %struct.Memory** %MEMORY

  ; Code: movslq 0x11b48(%rdx), %rdx	 RIP: 417f6e	 Bytes: 7
  %loadMem_417f6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417f6e = call %struct.Memory* @routine_movslq_0x11b48__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417f6e)
  store %struct.Memory* %call_417f6e, %struct.Memory** %MEMORY

  ; Code: imulq $0x90, %rdx, %rdx	 RIP: 417f75	 Bytes: 7
  %loadMem_417f75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417f75 = call %struct.Memory* @routine_imulq__0x90___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417f75)
  store %struct.Memory* %call_417f75, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 417f7c	 Bytes: 3
  %loadMem_417f7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417f7c = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417f7c)
  store %struct.Memory* %call_417f7c, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 417f7f	 Bytes: 4
  %loadMem_417f7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417f7f = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417f7f)
  store %struct.Memory* %call_417f7f, %struct.Memory** %MEMORY

  ; Code: imulq $0x48, %rdx, %rdx	 RIP: 417f83	 Bytes: 4
  %loadMem_417f83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417f83 = call %struct.Memory* @routine_imulq__0x48___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417f83)
  store %struct.Memory* %call_417f83, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 417f87	 Bytes: 3
  %loadMem_417f87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417f87 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417f87)
  store %struct.Memory* %call_417f87, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rdx	 RIP: 417f8a	 Bytes: 4
  %loadMem_417f8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417f8a = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417f8a)
  store %struct.Memory* %call_417f8a, %struct.Memory** %MEMORY

  ; Code: shlq $0x3, %rdx	 RIP: 417f8e	 Bytes: 4
  %loadMem_417f8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417f8e = call %struct.Memory* @routine_shlq__0x3___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417f8e)
  store %struct.Memory* %call_417f8e, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 417f92	 Bytes: 3
  %loadMem_417f92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417f92 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417f92)
  store %struct.Memory* %call_417f92, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 417f95	 Bytes: 3
  %loadMem_417f95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417f95 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417f95)
  store %struct.Memory* %call_417f95, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 417f98	 Bytes: 3
  %loadMem_417f98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417f98 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417f98)
  store %struct.Memory* %call_417f98, %struct.Memory** %MEMORY

  ; Code: callq .biari_init_context	 RIP: 417f9b	 Bytes: 5
  %loadMem1_417f9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_417f9b = call %struct.Memory* @routine_callq_.biari_init_context(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_417f9b, i64 -88843, i64 5, i64 5)
  store %struct.Memory* %call1_417f9b, %struct.Memory** %MEMORY

  %loadMem2_417f9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_417f9b = load i64, i64* %3
  %call2_417f9b = call %struct.Memory* @sub_402490.biari_init_context(%struct.State* %0, i64  %loadPC_417f9b, %struct.Memory* %loadMem2_417f9b)
  store %struct.Memory* %call2_417f9b, %struct.Memory** %MEMORY

  ; Code: .L_417fa0:	 RIP: 417fa0	 Bytes: 0
  br label %block_.L_417fa0
block_.L_417fa0:

  ; Code: jmpq .L_417fa5	 RIP: 417fa0	 Bytes: 5
  %loadMem_417fa0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417fa0 = call %struct.Memory* @routine_jmpq_.L_417fa5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417fa0, i64 5, i64 5)
  store %struct.Memory* %call_417fa0, %struct.Memory** %MEMORY

  br label %block_.L_417fa5

  ; Code: .L_417fa5:	 RIP: 417fa5	 Bytes: 0
block_.L_417fa5:

  ; Code: movl -0x18(%rbp), %eax	 RIP: 417fa5	 Bytes: 3
  %loadMem_417fa5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417fa5 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417fa5)
  store %struct.Memory* %call_417fa5, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 417fa8	 Bytes: 3
  %loadMem_417fa8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417fa8 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417fa8)
  store %struct.Memory* %call_417fa8, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x18(%rbp)	 RIP: 417fab	 Bytes: 3
  %loadMem_417fab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417fab = call %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417fab)
  store %struct.Memory* %call_417fab, %struct.Memory** %MEMORY

  ; Code: jmpq .L_417eaf	 RIP: 417fae	 Bytes: 5
  %loadMem_417fae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417fae = call %struct.Memory* @routine_jmpq_.L_417eaf(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417fae, i64 -255, i64 5)
  store %struct.Memory* %call_417fae, %struct.Memory** %MEMORY

  br label %block_.L_417eaf

  ; Code: .L_417fb3:	 RIP: 417fb3	 Bytes: 0
block_.L_417fb3:

  ; Code: jmpq .L_417fb8	 RIP: 417fb3	 Bytes: 5
  %loadMem_417fb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417fb3 = call %struct.Memory* @routine_jmpq_.L_417fb8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417fb3, i64 5, i64 5)
  store %struct.Memory* %call_417fb3, %struct.Memory** %MEMORY

  br label %block_.L_417fb8

  ; Code: .L_417fb8:	 RIP: 417fb8	 Bytes: 0
block_.L_417fb8:

  ; Code: movl -0x14(%rbp), %eax	 RIP: 417fb8	 Bytes: 3
  %loadMem_417fb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417fb8 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417fb8)
  store %struct.Memory* %call_417fb8, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 417fbb	 Bytes: 3
  %loadMem_417fbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417fbb = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417fbb)
  store %struct.Memory* %call_417fbb, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x14(%rbp)	 RIP: 417fbe	 Bytes: 3
  %loadMem_417fbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417fbe = call %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417fbe)
  store %struct.Memory* %call_417fbe, %struct.Memory** %MEMORY

  ; Code: jmpq .L_417e9e	 RIP: 417fc1	 Bytes: 5
  %loadMem_417fc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417fc1 = call %struct.Memory* @routine_jmpq_.L_417e9e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417fc1, i64 -291, i64 5)
  store %struct.Memory* %call_417fc1, %struct.Memory** %MEMORY

  br label %block_.L_417e9e

  ; Code: .L_417fc6:	 RIP: 417fc6	 Bytes: 0
block_.L_417fc6:

  ; Code: movl $0x0, -0x14(%rbp)	 RIP: 417fc6	 Bytes: 7
  %loadMem_417fc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417fc6 = call %struct.Memory* @routine_movl__0x0__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417fc6)
  store %struct.Memory* %call_417fc6, %struct.Memory** %MEMORY

  ; Code: .L_417fcd:	 RIP: 417fcd	 Bytes: 0
  br label %block_.L_417fcd
block_.L_417fcd:

  ; Code: cmpl $0x2, -0x14(%rbp)	 RIP: 417fcd	 Bytes: 4
  %loadMem_417fcd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417fcd = call %struct.Memory* @routine_cmpl__0x2__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417fcd)
  store %struct.Memory* %call_417fcd, %struct.Memory** %MEMORY

  ; Code: jge .L_4180f5	 RIP: 417fd1	 Bytes: 6
  %loadMem_417fd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417fd1 = call %struct.Memory* @routine_jge_.L_4180f5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417fd1, i8* %BRANCH_TAKEN, i64 292, i64 6, i64 6)
  store %struct.Memory* %call_417fd1, %struct.Memory** %MEMORY

  %loadBr_417fd1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_417fd1 = icmp eq i8 %loadBr_417fd1, 1
  br i1 %cmpBr_417fd1, label %block_.L_4180f5, label %block_417fd7

block_417fd7:
  ; Code: movl $0x0, -0x18(%rbp)	 RIP: 417fd7	 Bytes: 7
  %loadMem_417fd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417fd7 = call %struct.Memory* @routine_movl__0x0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417fd7)
  store %struct.Memory* %call_417fd7, %struct.Memory** %MEMORY

  ; Code: .L_417fde:	 RIP: 417fde	 Bytes: 0
  br label %block_.L_417fde
block_.L_417fde:

  ; Code: cmpl $0xa, -0x18(%rbp)	 RIP: 417fde	 Bytes: 4
  %loadMem_417fde = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417fde = call %struct.Memory* @routine_cmpl__0xa__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417fde)
  store %struct.Memory* %call_417fde, %struct.Memory** %MEMORY

  ; Code: jge .L_4180e2	 RIP: 417fe2	 Bytes: 6
  %loadMem_417fe2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417fe2 = call %struct.Memory* @routine_jge_.L_4180e2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417fe2, i8* %BRANCH_TAKEN, i64 256, i64 6, i64 6)
  store %struct.Memory* %call_417fe2, %struct.Memory** %MEMORY

  %loadBr_417fe2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_417fe2 = icmp eq i8 %loadBr_417fe2, 1
  br i1 %cmpBr_417fe2, label %block_.L_4180e2, label %block_417fe8

block_417fe8:
  ; Code: movq 0x6cb900, %rax	 RIP: 417fe8	 Bytes: 8
  %loadMem_417fe8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417fe8 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417fe8)
  store %struct.Memory* %call_417fe8, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, 0x18(%rax)	 RIP: 417ff0	 Bytes: 4
  %loadMem_417ff0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417ff0 = call %struct.Memory* @routine_cmpl__0x2__0x18__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417ff0)
  store %struct.Memory* %call_417ff0, %struct.Memory** %MEMORY

  ; Code: jne .L_418067	 RIP: 417ff4	 Bytes: 6
  %loadMem_417ff4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417ff4 = call %struct.Memory* @routine_jne_.L_418067(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417ff4, i8* %BRANCH_TAKEN, i64 115, i64 6, i64 6)
  store %struct.Memory* %call_417ff4, %struct.Memory** %MEMORY

  %loadBr_417ff4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_417ff4 = icmp eq i8 %loadBr_417ff4, 1
  br i1 %cmpBr_417ff4, label %block_.L_418067, label %block_417ffa

block_417ffa:
  ; Code: movq $0x4b3900, %rax	 RIP: 417ffa	 Bytes: 10
  %loadMem_417ffa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_417ffa = call %struct.Memory* @routine_movq__0x4b3900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_417ffa)
  store %struct.Memory* %call_417ffa, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 418004	 Bytes: 4
  %loadMem_418004 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418004 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418004)
  store %struct.Memory* %call_418004, %struct.Memory** %MEMORY

  ; Code: addq $0x330, %rcx	 RIP: 418008	 Bytes: 7
  %loadMem_418008 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418008 = call %struct.Memory* @routine_addq__0x330___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418008)
  store %struct.Memory* %call_418008, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 41800f	 Bytes: 4
  %loadMem_41800f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41800f = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41800f)
  store %struct.Memory* %call_41800f, %struct.Memory** %MEMORY

  ; Code: imulq $0xa0, %rdx, %rdx	 RIP: 418013	 Bytes: 7
  %loadMem_418013 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418013 = call %struct.Memory* @routine_imulq__0xa0___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418013)
  store %struct.Memory* %call_418013, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 41801a	 Bytes: 3
  %loadMem_41801a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41801a = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41801a)
  store %struct.Memory* %call_41801a, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rdx	 RIP: 41801d	 Bytes: 4
  %loadMem_41801d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41801d = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41801d)
  store %struct.Memory* %call_41801d, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rdx	 RIP: 418021	 Bytes: 4
  %loadMem_418021 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418021 = call %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418021)
  store %struct.Memory* %call_418021, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 418025	 Bytes: 3
  %loadMem_418025 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418025 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418025)
  store %struct.Memory* %call_418025, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rdx	 RIP: 418028	 Bytes: 8
  %loadMem_418028 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418028 = call %struct.Memory* @routine_movq_0x6cb900___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418028)
  store %struct.Memory* %call_418028, %struct.Memory** %MEMORY

  ; Code: movslq 0x11b48(%rdx), %rdx	 RIP: 418030	 Bytes: 7
  %loadMem_418030 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418030 = call %struct.Memory* @routine_movslq_0x11b48__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418030)
  store %struct.Memory* %call_418030, %struct.Memory** %MEMORY

  ; Code: imulq $0xa0, %rdx, %rdx	 RIP: 418037	 Bytes: 7
  %loadMem_418037 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418037 = call %struct.Memory* @routine_imulq__0xa0___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418037)
  store %struct.Memory* %call_418037, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 41803e	 Bytes: 3
  %loadMem_41803e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41803e = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41803e)
  store %struct.Memory* %call_41803e, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 418041	 Bytes: 4
  %loadMem_418041 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418041 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418041)
  store %struct.Memory* %call_418041, %struct.Memory** %MEMORY

  ; Code: imulq $0x50, %rdx, %rdx	 RIP: 418045	 Bytes: 4
  %loadMem_418045 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418045 = call %struct.Memory* @routine_imulq__0x50___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418045)
  store %struct.Memory* %call_418045, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 418049	 Bytes: 3
  %loadMem_418049 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418049 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418049)
  store %struct.Memory* %call_418049, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rdx	 RIP: 41804c	 Bytes: 4
  %loadMem_41804c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41804c = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41804c)
  store %struct.Memory* %call_41804c, %struct.Memory** %MEMORY

  ; Code: shlq $0x3, %rdx	 RIP: 418050	 Bytes: 4
  %loadMem_418050 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418050 = call %struct.Memory* @routine_shlq__0x3___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418050)
  store %struct.Memory* %call_418050, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 418054	 Bytes: 3
  %loadMem_418054 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418054 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418054)
  store %struct.Memory* %call_418054, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 418057	 Bytes: 3
  %loadMem_418057 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418057 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418057)
  store %struct.Memory* %call_418057, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 41805a	 Bytes: 3
  %loadMem_41805a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41805a = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41805a)
  store %struct.Memory* %call_41805a, %struct.Memory** %MEMORY

  ; Code: callq .biari_init_context	 RIP: 41805d	 Bytes: 5
  %loadMem1_41805d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41805d = call %struct.Memory* @routine_callq_.biari_init_context(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41805d, i64 -89037, i64 5, i64 5)
  store %struct.Memory* %call1_41805d, %struct.Memory** %MEMORY

  %loadMem2_41805d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41805d = load i64, i64* %3
  %call2_41805d = call %struct.Memory* @sub_402490.biari_init_context(%struct.State* %0, i64  %loadPC_41805d, %struct.Memory* %loadMem2_41805d)
  store %struct.Memory* %call2_41805d, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4180cf	 RIP: 418062	 Bytes: 5
  %loadMem_418062 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418062 = call %struct.Memory* @routine_jmpq_.L_4180cf(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418062, i64 109, i64 5)
  store %struct.Memory* %call_418062, %struct.Memory** %MEMORY

  br label %block_.L_4180cf

  ; Code: .L_418067:	 RIP: 418067	 Bytes: 0
block_.L_418067:

  ; Code: movq $0x4b39a0, %rax	 RIP: 418067	 Bytes: 10
  %loadMem_418067 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418067 = call %struct.Memory* @routine_movq__0x4b39a0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418067)
  store %struct.Memory* %call_418067, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 418071	 Bytes: 4
  %loadMem_418071 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418071 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418071)
  store %struct.Memory* %call_418071, %struct.Memory** %MEMORY

  ; Code: addq $0x330, %rcx	 RIP: 418075	 Bytes: 7
  %loadMem_418075 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418075 = call %struct.Memory* @routine_addq__0x330___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418075)
  store %struct.Memory* %call_418075, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 41807c	 Bytes: 4
  %loadMem_41807c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41807c = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41807c)
  store %struct.Memory* %call_41807c, %struct.Memory** %MEMORY

  ; Code: imulq $0xa0, %rdx, %rdx	 RIP: 418080	 Bytes: 7
  %loadMem_418080 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418080 = call %struct.Memory* @routine_imulq__0xa0___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418080)
  store %struct.Memory* %call_418080, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 418087	 Bytes: 3
  %loadMem_418087 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418087 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418087)
  store %struct.Memory* %call_418087, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rdx	 RIP: 41808a	 Bytes: 4
  %loadMem_41808a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41808a = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41808a)
  store %struct.Memory* %call_41808a, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rdx	 RIP: 41808e	 Bytes: 4
  %loadMem_41808e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41808e = call %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41808e)
  store %struct.Memory* %call_41808e, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 418092	 Bytes: 3
  %loadMem_418092 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418092 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418092)
  store %struct.Memory* %call_418092, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rdx	 RIP: 418095	 Bytes: 8
  %loadMem_418095 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418095 = call %struct.Memory* @routine_movq_0x6cb900___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418095)
  store %struct.Memory* %call_418095, %struct.Memory** %MEMORY

  ; Code: movslq 0x11b48(%rdx), %rdx	 RIP: 41809d	 Bytes: 7
  %loadMem_41809d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41809d = call %struct.Memory* @routine_movslq_0x11b48__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41809d)
  store %struct.Memory* %call_41809d, %struct.Memory** %MEMORY

  ; Code: imulq $0xa0, %rdx, %rdx	 RIP: 4180a4	 Bytes: 7
  %loadMem_4180a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4180a4 = call %struct.Memory* @routine_imulq__0xa0___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4180a4)
  store %struct.Memory* %call_4180a4, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 4180ab	 Bytes: 3
  %loadMem_4180ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4180ab = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4180ab)
  store %struct.Memory* %call_4180ab, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 4180ae	 Bytes: 4
  %loadMem_4180ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4180ae = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4180ae)
  store %struct.Memory* %call_4180ae, %struct.Memory** %MEMORY

  ; Code: imulq $0x50, %rdx, %rdx	 RIP: 4180b2	 Bytes: 4
  %loadMem_4180b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4180b2 = call %struct.Memory* @routine_imulq__0x50___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4180b2)
  store %struct.Memory* %call_4180b2, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 4180b6	 Bytes: 3
  %loadMem_4180b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4180b6 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4180b6)
  store %struct.Memory* %call_4180b6, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rdx	 RIP: 4180b9	 Bytes: 4
  %loadMem_4180b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4180b9 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4180b9)
  store %struct.Memory* %call_4180b9, %struct.Memory** %MEMORY

  ; Code: shlq $0x3, %rdx	 RIP: 4180bd	 Bytes: 4
  %loadMem_4180bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4180bd = call %struct.Memory* @routine_shlq__0x3___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4180bd)
  store %struct.Memory* %call_4180bd, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 4180c1	 Bytes: 3
  %loadMem_4180c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4180c1 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4180c1)
  store %struct.Memory* %call_4180c1, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 4180c4	 Bytes: 3
  %loadMem_4180c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4180c4 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4180c4)
  store %struct.Memory* %call_4180c4, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 4180c7	 Bytes: 3
  %loadMem_4180c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4180c7 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4180c7)
  store %struct.Memory* %call_4180c7, %struct.Memory** %MEMORY

  ; Code: callq .biari_init_context	 RIP: 4180ca	 Bytes: 5
  %loadMem1_4180ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4180ca = call %struct.Memory* @routine_callq_.biari_init_context(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4180ca, i64 -89146, i64 5, i64 5)
  store %struct.Memory* %call1_4180ca, %struct.Memory** %MEMORY

  %loadMem2_4180ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4180ca = load i64, i64* %3
  %call2_4180ca = call %struct.Memory* @sub_402490.biari_init_context(%struct.State* %0, i64  %loadPC_4180ca, %struct.Memory* %loadMem2_4180ca)
  store %struct.Memory* %call2_4180ca, %struct.Memory** %MEMORY

  ; Code: .L_4180cf:	 RIP: 4180cf	 Bytes: 0
  br label %block_.L_4180cf
block_.L_4180cf:

  ; Code: jmpq .L_4180d4	 RIP: 4180cf	 Bytes: 5
  %loadMem_4180cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4180cf = call %struct.Memory* @routine_jmpq_.L_4180d4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4180cf, i64 5, i64 5)
  store %struct.Memory* %call_4180cf, %struct.Memory** %MEMORY

  br label %block_.L_4180d4

  ; Code: .L_4180d4:	 RIP: 4180d4	 Bytes: 0
block_.L_4180d4:

  ; Code: movl -0x18(%rbp), %eax	 RIP: 4180d4	 Bytes: 3
  %loadMem_4180d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4180d4 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4180d4)
  store %struct.Memory* %call_4180d4, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4180d7	 Bytes: 3
  %loadMem_4180d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4180d7 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4180d7)
  store %struct.Memory* %call_4180d7, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x18(%rbp)	 RIP: 4180da	 Bytes: 3
  %loadMem_4180da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4180da = call %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4180da)
  store %struct.Memory* %call_4180da, %struct.Memory** %MEMORY

  ; Code: jmpq .L_417fde	 RIP: 4180dd	 Bytes: 5
  %loadMem_4180dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4180dd = call %struct.Memory* @routine_jmpq_.L_417fde(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4180dd, i64 -255, i64 5)
  store %struct.Memory* %call_4180dd, %struct.Memory** %MEMORY

  br label %block_.L_417fde

  ; Code: .L_4180e2:	 RIP: 4180e2	 Bytes: 0
block_.L_4180e2:

  ; Code: jmpq .L_4180e7	 RIP: 4180e2	 Bytes: 5
  %loadMem_4180e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4180e2 = call %struct.Memory* @routine_jmpq_.L_4180e7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4180e2, i64 5, i64 5)
  store %struct.Memory* %call_4180e2, %struct.Memory** %MEMORY

  br label %block_.L_4180e7

  ; Code: .L_4180e7:	 RIP: 4180e7	 Bytes: 0
block_.L_4180e7:

  ; Code: movl -0x14(%rbp), %eax	 RIP: 4180e7	 Bytes: 3
  %loadMem_4180e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4180e7 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4180e7)
  store %struct.Memory* %call_4180e7, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4180ea	 Bytes: 3
  %loadMem_4180ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4180ea = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4180ea)
  store %struct.Memory* %call_4180ea, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x14(%rbp)	 RIP: 4180ed	 Bytes: 3
  %loadMem_4180ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4180ed = call %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4180ed)
  store %struct.Memory* %call_4180ed, %struct.Memory** %MEMORY

  ; Code: jmpq .L_417fcd	 RIP: 4180f0	 Bytes: 5
  %loadMem_4180f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4180f0 = call %struct.Memory* @routine_jmpq_.L_417fcd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4180f0, i64 -291, i64 5)
  store %struct.Memory* %call_4180f0, %struct.Memory** %MEMORY

  br label %block_.L_417fcd

  ; Code: .L_4180f5:	 RIP: 4180f5	 Bytes: 0
block_.L_4180f5:

  ; Code: movl $0x0, -0x14(%rbp)	 RIP: 4180f5	 Bytes: 7
  %loadMem_4180f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4180f5 = call %struct.Memory* @routine_movl__0x0__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4180f5)
  store %struct.Memory* %call_4180f5, %struct.Memory** %MEMORY

  ; Code: .L_4180fc:	 RIP: 4180fc	 Bytes: 0
  br label %block_.L_4180fc
block_.L_4180fc:

  ; Code: cmpl $0x2, -0x14(%rbp)	 RIP: 4180fc	 Bytes: 4
  %loadMem_4180fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4180fc = call %struct.Memory* @routine_cmpl__0x2__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4180fc)
  store %struct.Memory* %call_4180fc, %struct.Memory** %MEMORY

  ; Code: jge .L_418218	 RIP: 418100	 Bytes: 6
  %loadMem_418100 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418100 = call %struct.Memory* @routine_jge_.L_418218(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418100, i8* %BRANCH_TAKEN, i64 280, i64 6, i64 6)
  store %struct.Memory* %call_418100, %struct.Memory** %MEMORY

  %loadBr_418100 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_418100 = icmp eq i8 %loadBr_418100, 1
  br i1 %cmpBr_418100, label %block_.L_418218, label %block_418106

block_418106:
  ; Code: movl $0x0, -0x18(%rbp)	 RIP: 418106	 Bytes: 7
  %loadMem_418106 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418106 = call %struct.Memory* @routine_movl__0x0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418106)
  store %struct.Memory* %call_418106, %struct.Memory** %MEMORY

  ; Code: .L_41810d:	 RIP: 41810d	 Bytes: 0
  br label %block_.L_41810d
block_.L_41810d:

  ; Code: cmpl $0x6, -0x18(%rbp)	 RIP: 41810d	 Bytes: 4
  %loadMem_41810d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41810d = call %struct.Memory* @routine_cmpl__0x6__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41810d)
  store %struct.Memory* %call_41810d, %struct.Memory** %MEMORY

  ; Code: jge .L_418205	 RIP: 418111	 Bytes: 6
  %loadMem_418111 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418111 = call %struct.Memory* @routine_jge_.L_418205(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418111, i8* %BRANCH_TAKEN, i64 244, i64 6, i64 6)
  store %struct.Memory* %call_418111, %struct.Memory** %MEMORY

  %loadBr_418111 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_418111 = icmp eq i8 %loadBr_418111, 1
  br i1 %cmpBr_418111, label %block_.L_418205, label %block_418117

block_418117:
  ; Code: movq 0x6cb900, %rax	 RIP: 418117	 Bytes: 8
  %loadMem_418117 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418117 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418117)
  store %struct.Memory* %call_418117, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, 0x18(%rax)	 RIP: 41811f	 Bytes: 4
  %loadMem_41811f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41811f = call %struct.Memory* @routine_cmpl__0x2__0x18__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41811f)
  store %struct.Memory* %call_41811f, %struct.Memory** %MEMORY

  ; Code: jne .L_418190	 RIP: 418123	 Bytes: 6
  %loadMem_418123 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418123 = call %struct.Memory* @routine_jne_.L_418190(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418123, i8* %BRANCH_TAKEN, i64 109, i64 6, i64 6)
  store %struct.Memory* %call_418123, %struct.Memory** %MEMORY

  %loadBr_418123 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_418123 = icmp eq i8 %loadBr_418123, 1
  br i1 %cmpBr_418123, label %block_.L_418190, label %block_418129

block_418129:
  ; Code: movq $0x4b3b80, %rax	 RIP: 418129	 Bytes: 10
  %loadMem_418129 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418129 = call %struct.Memory* @routine_movq__0x4b3b80___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418129)
  store %struct.Memory* %call_418129, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 418133	 Bytes: 4
  %loadMem_418133 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418133 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418133)
  store %struct.Memory* %call_418133, %struct.Memory** %MEMORY

  ; Code: addq $0x470, %rcx	 RIP: 418137	 Bytes: 7
  %loadMem_418137 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418137 = call %struct.Memory* @routine_addq__0x470___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418137)
  store %struct.Memory* %call_418137, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 41813e	 Bytes: 4
  %loadMem_41813e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41813e = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41813e)
  store %struct.Memory* %call_41813e, %struct.Memory** %MEMORY

  ; Code: imulq $0x60, %rdx, %rdx	 RIP: 418142	 Bytes: 4
  %loadMem_418142 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418142 = call %struct.Memory* @routine_imulq__0x60___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418142)
  store %struct.Memory* %call_418142, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 418146	 Bytes: 3
  %loadMem_418146 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418146 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418146)
  store %struct.Memory* %call_418146, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rdx	 RIP: 418149	 Bytes: 4
  %loadMem_418149 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418149 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418149)
  store %struct.Memory* %call_418149, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rdx	 RIP: 41814d	 Bytes: 4
  %loadMem_41814d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41814d = call %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41814d)
  store %struct.Memory* %call_41814d, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 418151	 Bytes: 3
  %loadMem_418151 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418151 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418151)
  store %struct.Memory* %call_418151, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rdx	 RIP: 418154	 Bytes: 8
  %loadMem_418154 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418154 = call %struct.Memory* @routine_movq_0x6cb900___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418154)
  store %struct.Memory* %call_418154, %struct.Memory** %MEMORY

  ; Code: movslq 0x11b48(%rdx), %rdx	 RIP: 41815c	 Bytes: 7
  %loadMem_41815c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41815c = call %struct.Memory* @routine_movslq_0x11b48__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41815c)
  store %struct.Memory* %call_41815c, %struct.Memory** %MEMORY

  ; Code: imulq $0x60, %rdx, %rdx	 RIP: 418163	 Bytes: 4
  %loadMem_418163 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418163 = call %struct.Memory* @routine_imulq__0x60___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418163)
  store %struct.Memory* %call_418163, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 418167	 Bytes: 3
  %loadMem_418167 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418167 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418167)
  store %struct.Memory* %call_418167, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 41816a	 Bytes: 4
  %loadMem_41816a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41816a = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41816a)
  store %struct.Memory* %call_41816a, %struct.Memory** %MEMORY

  ; Code: imulq $0x30, %rdx, %rdx	 RIP: 41816e	 Bytes: 4
  %loadMem_41816e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41816e = call %struct.Memory* @routine_imulq__0x30___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41816e)
  store %struct.Memory* %call_41816e, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 418172	 Bytes: 3
  %loadMem_418172 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418172 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418172)
  store %struct.Memory* %call_418172, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rdx	 RIP: 418175	 Bytes: 4
  %loadMem_418175 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418175 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418175)
  store %struct.Memory* %call_418175, %struct.Memory** %MEMORY

  ; Code: shlq $0x3, %rdx	 RIP: 418179	 Bytes: 4
  %loadMem_418179 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418179 = call %struct.Memory* @routine_shlq__0x3___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418179)
  store %struct.Memory* %call_418179, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 41817d	 Bytes: 3
  %loadMem_41817d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41817d = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41817d)
  store %struct.Memory* %call_41817d, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 418180	 Bytes: 3
  %loadMem_418180 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418180 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418180)
  store %struct.Memory* %call_418180, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 418183	 Bytes: 3
  %loadMem_418183 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418183 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418183)
  store %struct.Memory* %call_418183, %struct.Memory** %MEMORY

  ; Code: callq .biari_init_context	 RIP: 418186	 Bytes: 5
  %loadMem1_418186 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_418186 = call %struct.Memory* @routine_callq_.biari_init_context(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_418186, i64 -89334, i64 5, i64 5)
  store %struct.Memory* %call1_418186, %struct.Memory** %MEMORY

  %loadMem2_418186 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_418186 = load i64, i64* %3
  %call2_418186 = call %struct.Memory* @sub_402490.biari_init_context(%struct.State* %0, i64  %loadPC_418186, %struct.Memory* %loadMem2_418186)
  store %struct.Memory* %call2_418186, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4181f2	 RIP: 41818b	 Bytes: 5
  %loadMem_41818b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41818b = call %struct.Memory* @routine_jmpq_.L_4181f2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41818b, i64 103, i64 5)
  store %struct.Memory* %call_41818b, %struct.Memory** %MEMORY

  br label %block_.L_4181f2

  ; Code: .L_418190:	 RIP: 418190	 Bytes: 0
block_.L_418190:

  ; Code: movq $0x4b3be0, %rax	 RIP: 418190	 Bytes: 10
  %loadMem_418190 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418190 = call %struct.Memory* @routine_movq__0x4b3be0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418190)
  store %struct.Memory* %call_418190, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 41819a	 Bytes: 4
  %loadMem_41819a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41819a = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41819a)
  store %struct.Memory* %call_41819a, %struct.Memory** %MEMORY

  ; Code: addq $0x470, %rcx	 RIP: 41819e	 Bytes: 7
  %loadMem_41819e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41819e = call %struct.Memory* @routine_addq__0x470___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41819e)
  store %struct.Memory* %call_41819e, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 4181a5	 Bytes: 4
  %loadMem_4181a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4181a5 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4181a5)
  store %struct.Memory* %call_4181a5, %struct.Memory** %MEMORY

  ; Code: imulq $0x60, %rdx, %rdx	 RIP: 4181a9	 Bytes: 4
  %loadMem_4181a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4181a9 = call %struct.Memory* @routine_imulq__0x60___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4181a9)
  store %struct.Memory* %call_4181a9, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 4181ad	 Bytes: 3
  %loadMem_4181ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4181ad = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4181ad)
  store %struct.Memory* %call_4181ad, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rdx	 RIP: 4181b0	 Bytes: 4
  %loadMem_4181b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4181b0 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4181b0)
  store %struct.Memory* %call_4181b0, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rdx	 RIP: 4181b4	 Bytes: 4
  %loadMem_4181b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4181b4 = call %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4181b4)
  store %struct.Memory* %call_4181b4, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 4181b8	 Bytes: 3
  %loadMem_4181b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4181b8 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4181b8)
  store %struct.Memory* %call_4181b8, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rdx	 RIP: 4181bb	 Bytes: 8
  %loadMem_4181bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4181bb = call %struct.Memory* @routine_movq_0x6cb900___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4181bb)
  store %struct.Memory* %call_4181bb, %struct.Memory** %MEMORY

  ; Code: movslq 0x11b48(%rdx), %rdx	 RIP: 4181c3	 Bytes: 7
  %loadMem_4181c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4181c3 = call %struct.Memory* @routine_movslq_0x11b48__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4181c3)
  store %struct.Memory* %call_4181c3, %struct.Memory** %MEMORY

  ; Code: imulq $0x60, %rdx, %rdx	 RIP: 4181ca	 Bytes: 4
  %loadMem_4181ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4181ca = call %struct.Memory* @routine_imulq__0x60___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4181ca)
  store %struct.Memory* %call_4181ca, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 4181ce	 Bytes: 3
  %loadMem_4181ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4181ce = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4181ce)
  store %struct.Memory* %call_4181ce, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 4181d1	 Bytes: 4
  %loadMem_4181d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4181d1 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4181d1)
  store %struct.Memory* %call_4181d1, %struct.Memory** %MEMORY

  ; Code: imulq $0x30, %rdx, %rdx	 RIP: 4181d5	 Bytes: 4
  %loadMem_4181d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4181d5 = call %struct.Memory* @routine_imulq__0x30___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4181d5)
  store %struct.Memory* %call_4181d5, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 4181d9	 Bytes: 3
  %loadMem_4181d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4181d9 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4181d9)
  store %struct.Memory* %call_4181d9, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rdx	 RIP: 4181dc	 Bytes: 4
  %loadMem_4181dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4181dc = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4181dc)
  store %struct.Memory* %call_4181dc, %struct.Memory** %MEMORY

  ; Code: shlq $0x3, %rdx	 RIP: 4181e0	 Bytes: 4
  %loadMem_4181e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4181e0 = call %struct.Memory* @routine_shlq__0x3___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4181e0)
  store %struct.Memory* %call_4181e0, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 4181e4	 Bytes: 3
  %loadMem_4181e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4181e4 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4181e4)
  store %struct.Memory* %call_4181e4, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 4181e7	 Bytes: 3
  %loadMem_4181e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4181e7 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4181e7)
  store %struct.Memory* %call_4181e7, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 4181ea	 Bytes: 3
  %loadMem_4181ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4181ea = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4181ea)
  store %struct.Memory* %call_4181ea, %struct.Memory** %MEMORY

  ; Code: callq .biari_init_context	 RIP: 4181ed	 Bytes: 5
  %loadMem1_4181ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4181ed = call %struct.Memory* @routine_callq_.biari_init_context(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4181ed, i64 -89437, i64 5, i64 5)
  store %struct.Memory* %call1_4181ed, %struct.Memory** %MEMORY

  %loadMem2_4181ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4181ed = load i64, i64* %3
  %call2_4181ed = call %struct.Memory* @sub_402490.biari_init_context(%struct.State* %0, i64  %loadPC_4181ed, %struct.Memory* %loadMem2_4181ed)
  store %struct.Memory* %call2_4181ed, %struct.Memory** %MEMORY

  ; Code: .L_4181f2:	 RIP: 4181f2	 Bytes: 0
  br label %block_.L_4181f2
block_.L_4181f2:

  ; Code: jmpq .L_4181f7	 RIP: 4181f2	 Bytes: 5
  %loadMem_4181f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4181f2 = call %struct.Memory* @routine_jmpq_.L_4181f7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4181f2, i64 5, i64 5)
  store %struct.Memory* %call_4181f2, %struct.Memory** %MEMORY

  br label %block_.L_4181f7

  ; Code: .L_4181f7:	 RIP: 4181f7	 Bytes: 0
block_.L_4181f7:

  ; Code: movl -0x18(%rbp), %eax	 RIP: 4181f7	 Bytes: 3
  %loadMem_4181f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4181f7 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4181f7)
  store %struct.Memory* %call_4181f7, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4181fa	 Bytes: 3
  %loadMem_4181fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4181fa = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4181fa)
  store %struct.Memory* %call_4181fa, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x18(%rbp)	 RIP: 4181fd	 Bytes: 3
  %loadMem_4181fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4181fd = call %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4181fd)
  store %struct.Memory* %call_4181fd, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41810d	 RIP: 418200	 Bytes: 5
  %loadMem_418200 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418200 = call %struct.Memory* @routine_jmpq_.L_41810d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418200, i64 -243, i64 5)
  store %struct.Memory* %call_418200, %struct.Memory** %MEMORY

  br label %block_.L_41810d

  ; Code: .L_418205:	 RIP: 418205	 Bytes: 0
block_.L_418205:

  ; Code: jmpq .L_41820a	 RIP: 418205	 Bytes: 5
  %loadMem_418205 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418205 = call %struct.Memory* @routine_jmpq_.L_41820a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418205, i64 5, i64 5)
  store %struct.Memory* %call_418205, %struct.Memory** %MEMORY

  br label %block_.L_41820a

  ; Code: .L_41820a:	 RIP: 41820a	 Bytes: 0
block_.L_41820a:

  ; Code: movl -0x14(%rbp), %eax	 RIP: 41820a	 Bytes: 3
  %loadMem_41820a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41820a = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41820a)
  store %struct.Memory* %call_41820a, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 41820d	 Bytes: 3
  %loadMem_41820d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41820d = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41820d)
  store %struct.Memory* %call_41820d, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x14(%rbp)	 RIP: 418210	 Bytes: 3
  %loadMem_418210 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418210 = call %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418210)
  store %struct.Memory* %call_418210, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4180fc	 RIP: 418213	 Bytes: 5
  %loadMem_418213 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418213 = call %struct.Memory* @routine_jmpq_.L_4180fc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418213, i64 -279, i64 5)
  store %struct.Memory* %call_418213, %struct.Memory** %MEMORY

  br label %block_.L_4180fc

  ; Code: .L_418218:	 RIP: 418218	 Bytes: 0
block_.L_418218:

  ; Code: movl $0x0, -0x18(%rbp)	 RIP: 418218	 Bytes: 7
  %loadMem_418218 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418218 = call %struct.Memory* @routine_movl__0x0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418218)
  store %struct.Memory* %call_418218, %struct.Memory** %MEMORY

  ; Code: .L_41821f:	 RIP: 41821f	 Bytes: 0
  br label %block_.L_41821f
block_.L_41821f:

  ; Code: cmpl $0x4, -0x18(%rbp)	 RIP: 41821f	 Bytes: 4
  %loadMem_41821f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41821f = call %struct.Memory* @routine_cmpl__0x4__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41821f)
  store %struct.Memory* %call_41821f, %struct.Memory** %MEMORY

  ; Code: jge .L_4182eb	 RIP: 418223	 Bytes: 6
  %loadMem_418223 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418223 = call %struct.Memory* @routine_jge_.L_4182eb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418223, i8* %BRANCH_TAKEN, i64 200, i64 6, i64 6)
  store %struct.Memory* %call_418223, %struct.Memory** %MEMORY

  %loadBr_418223 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_418223 = icmp eq i8 %loadBr_418223, 1
  br i1 %cmpBr_418223, label %block_.L_4182eb, label %block_418229

block_418229:
  ; Code: movq 0x6cb900, %rax	 RIP: 418229	 Bytes: 8
  %loadMem_418229 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418229 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418229)
  store %struct.Memory* %call_418229, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, 0x18(%rax)	 RIP: 418231	 Bytes: 4
  %loadMem_418231 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418231 = call %struct.Memory* @routine_cmpl__0x2__0x18__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418231)
  store %struct.Memory* %call_418231, %struct.Memory** %MEMORY

  ; Code: jne .L_41828c	 RIP: 418235	 Bytes: 6
  %loadMem_418235 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418235 = call %struct.Memory* @routine_jne_.L_41828c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418235, i8* %BRANCH_TAKEN, i64 87, i64 6, i64 6)
  store %struct.Memory* %call_418235, %struct.Memory** %MEMORY

  %loadBr_418235 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_418235 = icmp eq i8 %loadBr_418235, 1
  br i1 %cmpBr_418235, label %block_.L_41828c, label %block_41823b

block_41823b:
  ; Code: movq $0x4b3d00, %rax	 RIP: 41823b	 Bytes: 10
  %loadMem_41823b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41823b = call %struct.Memory* @routine_movq__0x4b3d00___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41823b)
  store %struct.Memory* %call_41823b, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 418245	 Bytes: 4
  %loadMem_418245 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418245 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418245)
  store %struct.Memory* %call_418245, %struct.Memory** %MEMORY

  ; Code: addq $0x530, %rcx	 RIP: 418249	 Bytes: 7
  %loadMem_418249 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418249 = call %struct.Memory* @routine_addq__0x530___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418249)
  store %struct.Memory* %call_418249, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rdx	 RIP: 418250	 Bytes: 4
  %loadMem_418250 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418250 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418250)
  store %struct.Memory* %call_418250, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rdx	 RIP: 418254	 Bytes: 4
  %loadMem_418254 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418254 = call %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418254)
  store %struct.Memory* %call_418254, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 418258	 Bytes: 3
  %loadMem_418258 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418258 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418258)
  store %struct.Memory* %call_418258, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rdx	 RIP: 41825b	 Bytes: 8
  %loadMem_41825b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41825b = call %struct.Memory* @routine_movq_0x6cb900___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41825b)
  store %struct.Memory* %call_41825b, %struct.Memory** %MEMORY

  ; Code: movslq 0x11b48(%rdx), %rdx	 RIP: 418263	 Bytes: 7
  %loadMem_418263 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418263 = call %struct.Memory* @routine_movslq_0x11b48__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418263)
  store %struct.Memory* %call_418263, %struct.Memory** %MEMORY

  ; Code: shlq $0x5, %rdx	 RIP: 41826a	 Bytes: 4
  %loadMem_41826a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41826a = call %struct.Memory* @routine_shlq__0x5___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41826a)
  store %struct.Memory* %call_41826a, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 41826e	 Bytes: 3
  %loadMem_41826e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41826e = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41826e)
  store %struct.Memory* %call_41826e, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rdx	 RIP: 418271	 Bytes: 4
  %loadMem_418271 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418271 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418271)
  store %struct.Memory* %call_418271, %struct.Memory** %MEMORY

  ; Code: shlq $0x3, %rdx	 RIP: 418275	 Bytes: 4
  %loadMem_418275 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418275 = call %struct.Memory* @routine_shlq__0x3___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418275)
  store %struct.Memory* %call_418275, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 418279	 Bytes: 3
  %loadMem_418279 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418279 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418279)
  store %struct.Memory* %call_418279, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 41827c	 Bytes: 3
  %loadMem_41827c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41827c = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41827c)
  store %struct.Memory* %call_41827c, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 41827f	 Bytes: 3
  %loadMem_41827f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41827f = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41827f)
  store %struct.Memory* %call_41827f, %struct.Memory** %MEMORY

  ; Code: callq .biari_init_context	 RIP: 418282	 Bytes: 5
  %loadMem1_418282 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_418282 = call %struct.Memory* @routine_callq_.biari_init_context(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_418282, i64 -89586, i64 5, i64 5)
  store %struct.Memory* %call1_418282, %struct.Memory** %MEMORY

  %loadMem2_418282 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_418282 = load i64, i64* %3
  %call2_418282 = call %struct.Memory* @sub_402490.biari_init_context(%struct.State* %0, i64  %loadPC_418282, %struct.Memory* %loadMem2_418282)
  store %struct.Memory* %call2_418282, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4182d8	 RIP: 418287	 Bytes: 5
  %loadMem_418287 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418287 = call %struct.Memory* @routine_jmpq_.L_4182d8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418287, i64 81, i64 5)
  store %struct.Memory* %call_418287, %struct.Memory** %MEMORY

  br label %block_.L_4182d8

  ; Code: .L_41828c:	 RIP: 41828c	 Bytes: 0
block_.L_41828c:

  ; Code: movq $0x4b3d20, %rax	 RIP: 41828c	 Bytes: 10
  %loadMem_41828c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41828c = call %struct.Memory* @routine_movq__0x4b3d20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41828c)
  store %struct.Memory* %call_41828c, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 418296	 Bytes: 4
  %loadMem_418296 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418296 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418296)
  store %struct.Memory* %call_418296, %struct.Memory** %MEMORY

  ; Code: addq $0x530, %rcx	 RIP: 41829a	 Bytes: 7
  %loadMem_41829a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41829a = call %struct.Memory* @routine_addq__0x530___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41829a)
  store %struct.Memory* %call_41829a, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rdx	 RIP: 4182a1	 Bytes: 4
  %loadMem_4182a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4182a1 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4182a1)
  store %struct.Memory* %call_4182a1, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rdx	 RIP: 4182a5	 Bytes: 4
  %loadMem_4182a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4182a5 = call %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4182a5)
  store %struct.Memory* %call_4182a5, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 4182a9	 Bytes: 3
  %loadMem_4182a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4182a9 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4182a9)
  store %struct.Memory* %call_4182a9, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rdx	 RIP: 4182ac	 Bytes: 8
  %loadMem_4182ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4182ac = call %struct.Memory* @routine_movq_0x6cb900___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4182ac)
  store %struct.Memory* %call_4182ac, %struct.Memory** %MEMORY

  ; Code: movslq 0x11b48(%rdx), %rdx	 RIP: 4182b4	 Bytes: 7
  %loadMem_4182b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4182b4 = call %struct.Memory* @routine_movslq_0x11b48__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4182b4)
  store %struct.Memory* %call_4182b4, %struct.Memory** %MEMORY

  ; Code: shlq $0x5, %rdx	 RIP: 4182bb	 Bytes: 4
  %loadMem_4182bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4182bb = call %struct.Memory* @routine_shlq__0x5___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4182bb)
  store %struct.Memory* %call_4182bb, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 4182bf	 Bytes: 3
  %loadMem_4182bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4182bf = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4182bf)
  store %struct.Memory* %call_4182bf, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rdx	 RIP: 4182c2	 Bytes: 4
  %loadMem_4182c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4182c2 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4182c2)
  store %struct.Memory* %call_4182c2, %struct.Memory** %MEMORY

  ; Code: shlq $0x3, %rdx	 RIP: 4182c6	 Bytes: 4
  %loadMem_4182c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4182c6 = call %struct.Memory* @routine_shlq__0x3___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4182c6)
  store %struct.Memory* %call_4182c6, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 4182ca	 Bytes: 3
  %loadMem_4182ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4182ca = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4182ca)
  store %struct.Memory* %call_4182ca, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 4182cd	 Bytes: 3
  %loadMem_4182cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4182cd = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4182cd)
  store %struct.Memory* %call_4182cd, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 4182d0	 Bytes: 3
  %loadMem_4182d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4182d0 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4182d0)
  store %struct.Memory* %call_4182d0, %struct.Memory** %MEMORY

  ; Code: callq .biari_init_context	 RIP: 4182d3	 Bytes: 5
  %loadMem1_4182d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4182d3 = call %struct.Memory* @routine_callq_.biari_init_context(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4182d3, i64 -89667, i64 5, i64 5)
  store %struct.Memory* %call1_4182d3, %struct.Memory** %MEMORY

  %loadMem2_4182d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4182d3 = load i64, i64* %3
  %call2_4182d3 = call %struct.Memory* @sub_402490.biari_init_context(%struct.State* %0, i64  %loadPC_4182d3, %struct.Memory* %loadMem2_4182d3)
  store %struct.Memory* %call2_4182d3, %struct.Memory** %MEMORY

  ; Code: .L_4182d8:	 RIP: 4182d8	 Bytes: 0
  br label %block_.L_4182d8
block_.L_4182d8:

  ; Code: jmpq .L_4182dd	 RIP: 4182d8	 Bytes: 5
  %loadMem_4182d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4182d8 = call %struct.Memory* @routine_jmpq_.L_4182dd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4182d8, i64 5, i64 5)
  store %struct.Memory* %call_4182d8, %struct.Memory** %MEMORY

  br label %block_.L_4182dd

  ; Code: .L_4182dd:	 RIP: 4182dd	 Bytes: 0
block_.L_4182dd:

  ; Code: movl -0x18(%rbp), %eax	 RIP: 4182dd	 Bytes: 3
  %loadMem_4182dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4182dd = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4182dd)
  store %struct.Memory* %call_4182dd, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4182e0	 Bytes: 3
  %loadMem_4182e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4182e0 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4182e0)
  store %struct.Memory* %call_4182e0, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x18(%rbp)	 RIP: 4182e3	 Bytes: 3
  %loadMem_4182e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4182e3 = call %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4182e3)
  store %struct.Memory* %call_4182e3, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41821f	 RIP: 4182e6	 Bytes: 5
  %loadMem_4182e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4182e6 = call %struct.Memory* @routine_jmpq_.L_41821f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4182e6, i64 -199, i64 5)
  store %struct.Memory* %call_4182e6, %struct.Memory** %MEMORY

  br label %block_.L_41821f

  ; Code: .L_4182eb:	 RIP: 4182eb	 Bytes: 0
block_.L_4182eb:

  ; Code: movl $0x0, -0x18(%rbp)	 RIP: 4182eb	 Bytes: 7
  %loadMem_4182eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4182eb = call %struct.Memory* @routine_movl__0x0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4182eb)
  store %struct.Memory* %call_4182eb, %struct.Memory** %MEMORY

  ; Code: .L_4182f2:	 RIP: 4182f2	 Bytes: 0
  br label %block_.L_4182f2
block_.L_4182f2:

  ; Code: cmpl $0x4, -0x18(%rbp)	 RIP: 4182f2	 Bytes: 4
  %loadMem_4182f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4182f2 = call %struct.Memory* @routine_cmpl__0x4__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4182f2)
  store %struct.Memory* %call_4182f2, %struct.Memory** %MEMORY

  ; Code: jge .L_4183be	 RIP: 4182f6	 Bytes: 6
  %loadMem_4182f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4182f6 = call %struct.Memory* @routine_jge_.L_4183be(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4182f6, i8* %BRANCH_TAKEN, i64 200, i64 6, i64 6)
  store %struct.Memory* %call_4182f6, %struct.Memory** %MEMORY

  %loadBr_4182f6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4182f6 = icmp eq i8 %loadBr_4182f6, 1
  br i1 %cmpBr_4182f6, label %block_.L_4183be, label %block_4182fc

block_4182fc:
  ; Code: movq 0x6cb900, %rax	 RIP: 4182fc	 Bytes: 8
  %loadMem_4182fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4182fc = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4182fc)
  store %struct.Memory* %call_4182fc, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, 0x18(%rax)	 RIP: 418304	 Bytes: 4
  %loadMem_418304 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418304 = call %struct.Memory* @routine_cmpl__0x2__0x18__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418304)
  store %struct.Memory* %call_418304, %struct.Memory** %MEMORY

  ; Code: jne .L_41835f	 RIP: 418308	 Bytes: 6
  %loadMem_418308 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418308 = call %struct.Memory* @routine_jne_.L_41835f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418308, i8* %BRANCH_TAKEN, i64 87, i64 6, i64 6)
  store %struct.Memory* %call_418308, %struct.Memory** %MEMORY

  %loadBr_418308 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_418308 = icmp eq i8 %loadBr_418308, 1
  br i1 %cmpBr_418308, label %block_.L_41835f, label %block_41830e

block_41830e:
  ; Code: movq $0x4b3d80, %rax	 RIP: 41830e	 Bytes: 10
  %loadMem_41830e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41830e = call %struct.Memory* @routine_movq__0x4b3d80___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41830e)
  store %struct.Memory* %call_41830e, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 418318	 Bytes: 4
  %loadMem_418318 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418318 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418318)
  store %struct.Memory* %call_418318, %struct.Memory** %MEMORY

  ; Code: addq $0x570, %rcx	 RIP: 41831c	 Bytes: 7
  %loadMem_41831c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41831c = call %struct.Memory* @routine_addq__0x570___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41831c)
  store %struct.Memory* %call_41831c, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rdx	 RIP: 418323	 Bytes: 4
  %loadMem_418323 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418323 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418323)
  store %struct.Memory* %call_418323, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rdx	 RIP: 418327	 Bytes: 4
  %loadMem_418327 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418327 = call %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418327)
  store %struct.Memory* %call_418327, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 41832b	 Bytes: 3
  %loadMem_41832b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41832b = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41832b)
  store %struct.Memory* %call_41832b, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rdx	 RIP: 41832e	 Bytes: 8
  %loadMem_41832e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41832e = call %struct.Memory* @routine_movq_0x6cb900___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41832e)
  store %struct.Memory* %call_41832e, %struct.Memory** %MEMORY

  ; Code: movslq 0x11b48(%rdx), %rdx	 RIP: 418336	 Bytes: 7
  %loadMem_418336 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418336 = call %struct.Memory* @routine_movslq_0x11b48__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418336)
  store %struct.Memory* %call_418336, %struct.Memory** %MEMORY

  ; Code: shlq $0x5, %rdx	 RIP: 41833d	 Bytes: 4
  %loadMem_41833d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41833d = call %struct.Memory* @routine_shlq__0x5___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41833d)
  store %struct.Memory* %call_41833d, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 418341	 Bytes: 3
  %loadMem_418341 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418341 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418341)
  store %struct.Memory* %call_418341, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rdx	 RIP: 418344	 Bytes: 4
  %loadMem_418344 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418344 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418344)
  store %struct.Memory* %call_418344, %struct.Memory** %MEMORY

  ; Code: shlq $0x3, %rdx	 RIP: 418348	 Bytes: 4
  %loadMem_418348 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418348 = call %struct.Memory* @routine_shlq__0x3___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418348)
  store %struct.Memory* %call_418348, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 41834c	 Bytes: 3
  %loadMem_41834c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41834c = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41834c)
  store %struct.Memory* %call_41834c, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 41834f	 Bytes: 3
  %loadMem_41834f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41834f = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41834f)
  store %struct.Memory* %call_41834f, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 418352	 Bytes: 3
  %loadMem_418352 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418352 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418352)
  store %struct.Memory* %call_418352, %struct.Memory** %MEMORY

  ; Code: callq .biari_init_context	 RIP: 418355	 Bytes: 5
  %loadMem1_418355 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_418355 = call %struct.Memory* @routine_callq_.biari_init_context(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_418355, i64 -89797, i64 5, i64 5)
  store %struct.Memory* %call1_418355, %struct.Memory** %MEMORY

  %loadMem2_418355 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_418355 = load i64, i64* %3
  %call2_418355 = call %struct.Memory* @sub_402490.biari_init_context(%struct.State* %0, i64  %loadPC_418355, %struct.Memory* %loadMem2_418355)
  store %struct.Memory* %call2_418355, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4183ab	 RIP: 41835a	 Bytes: 5
  %loadMem_41835a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41835a = call %struct.Memory* @routine_jmpq_.L_4183ab(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41835a, i64 81, i64 5)
  store %struct.Memory* %call_41835a, %struct.Memory** %MEMORY

  br label %block_.L_4183ab

  ; Code: .L_41835f:	 RIP: 41835f	 Bytes: 0
block_.L_41835f:

  ; Code: movq $0x4b3da0, %rax	 RIP: 41835f	 Bytes: 10
  %loadMem_41835f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41835f = call %struct.Memory* @routine_movq__0x4b3da0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41835f)
  store %struct.Memory* %call_41835f, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 418369	 Bytes: 4
  %loadMem_418369 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418369 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418369)
  store %struct.Memory* %call_418369, %struct.Memory** %MEMORY

  ; Code: addq $0x570, %rcx	 RIP: 41836d	 Bytes: 7
  %loadMem_41836d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41836d = call %struct.Memory* @routine_addq__0x570___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41836d)
  store %struct.Memory* %call_41836d, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rdx	 RIP: 418374	 Bytes: 4
  %loadMem_418374 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418374 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418374)
  store %struct.Memory* %call_418374, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rdx	 RIP: 418378	 Bytes: 4
  %loadMem_418378 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418378 = call %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418378)
  store %struct.Memory* %call_418378, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 41837c	 Bytes: 3
  %loadMem_41837c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41837c = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41837c)
  store %struct.Memory* %call_41837c, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rdx	 RIP: 41837f	 Bytes: 8
  %loadMem_41837f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41837f = call %struct.Memory* @routine_movq_0x6cb900___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41837f)
  store %struct.Memory* %call_41837f, %struct.Memory** %MEMORY

  ; Code: movslq 0x11b48(%rdx), %rdx	 RIP: 418387	 Bytes: 7
  %loadMem_418387 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418387 = call %struct.Memory* @routine_movslq_0x11b48__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418387)
  store %struct.Memory* %call_418387, %struct.Memory** %MEMORY

  ; Code: shlq $0x5, %rdx	 RIP: 41838e	 Bytes: 4
  %loadMem_41838e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41838e = call %struct.Memory* @routine_shlq__0x5___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41838e)
  store %struct.Memory* %call_41838e, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 418392	 Bytes: 3
  %loadMem_418392 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418392 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418392)
  store %struct.Memory* %call_418392, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rdx	 RIP: 418395	 Bytes: 4
  %loadMem_418395 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418395 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418395)
  store %struct.Memory* %call_418395, %struct.Memory** %MEMORY

  ; Code: shlq $0x3, %rdx	 RIP: 418399	 Bytes: 4
  %loadMem_418399 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418399 = call %struct.Memory* @routine_shlq__0x3___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418399)
  store %struct.Memory* %call_418399, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 41839d	 Bytes: 3
  %loadMem_41839d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41839d = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41839d)
  store %struct.Memory* %call_41839d, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 4183a0	 Bytes: 3
  %loadMem_4183a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4183a0 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4183a0)
  store %struct.Memory* %call_4183a0, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 4183a3	 Bytes: 3
  %loadMem_4183a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4183a3 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4183a3)
  store %struct.Memory* %call_4183a3, %struct.Memory** %MEMORY

  ; Code: callq .biari_init_context	 RIP: 4183a6	 Bytes: 5
  %loadMem1_4183a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4183a6 = call %struct.Memory* @routine_callq_.biari_init_context(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4183a6, i64 -89878, i64 5, i64 5)
  store %struct.Memory* %call1_4183a6, %struct.Memory** %MEMORY

  %loadMem2_4183a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4183a6 = load i64, i64* %3
  %call2_4183a6 = call %struct.Memory* @sub_402490.biari_init_context(%struct.State* %0, i64  %loadPC_4183a6, %struct.Memory* %loadMem2_4183a6)
  store %struct.Memory* %call2_4183a6, %struct.Memory** %MEMORY

  ; Code: .L_4183ab:	 RIP: 4183ab	 Bytes: 0
  br label %block_.L_4183ab
block_.L_4183ab:

  ; Code: jmpq .L_4183b0	 RIP: 4183ab	 Bytes: 5
  %loadMem_4183ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4183ab = call %struct.Memory* @routine_jmpq_.L_4183b0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4183ab, i64 5, i64 5)
  store %struct.Memory* %call_4183ab, %struct.Memory** %MEMORY

  br label %block_.L_4183b0

  ; Code: .L_4183b0:	 RIP: 4183b0	 Bytes: 0
block_.L_4183b0:

  ; Code: movl -0x18(%rbp), %eax	 RIP: 4183b0	 Bytes: 3
  %loadMem_4183b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4183b0 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4183b0)
  store %struct.Memory* %call_4183b0, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4183b3	 Bytes: 3
  %loadMem_4183b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4183b3 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4183b3)
  store %struct.Memory* %call_4183b3, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x18(%rbp)	 RIP: 4183b6	 Bytes: 3
  %loadMem_4183b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4183b6 = call %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4183b6)
  store %struct.Memory* %call_4183b6, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4182f2	 RIP: 4183b9	 Bytes: 5
  %loadMem_4183b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4183b9 = call %struct.Memory* @routine_jmpq_.L_4182f2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4183b9, i64 -199, i64 5)
  store %struct.Memory* %call_4183b9, %struct.Memory** %MEMORY

  br label %block_.L_4182f2

  ; Code: .L_4183be:	 RIP: 4183be	 Bytes: 0
block_.L_4183be:

  ; Code: movl $0x0, -0x18(%rbp)	 RIP: 4183be	 Bytes: 7
  %loadMem_4183be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4183be = call %struct.Memory* @routine_movl__0x0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4183be)
  store %struct.Memory* %call_4183be, %struct.Memory** %MEMORY

  ; Code: .L_4183c5:	 RIP: 4183c5	 Bytes: 0
  br label %block_.L_4183c5
block_.L_4183c5:

  ; Code: cmpl $0x3, -0x18(%rbp)	 RIP: 4183c5	 Bytes: 4
  %loadMem_4183c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4183c5 = call %struct.Memory* @routine_cmpl__0x3__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4183c5)
  store %struct.Memory* %call_4183c5, %struct.Memory** %MEMORY

  ; Code: jge .L_418491	 RIP: 4183c9	 Bytes: 6
  %loadMem_4183c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4183c9 = call %struct.Memory* @routine_jge_.L_418491(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4183c9, i8* %BRANCH_TAKEN, i64 200, i64 6, i64 6)
  store %struct.Memory* %call_4183c9, %struct.Memory** %MEMORY

  %loadBr_4183c9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4183c9 = icmp eq i8 %loadBr_4183c9, 1
  br i1 %cmpBr_4183c9, label %block_.L_418491, label %block_4183cf

block_4183cf:
  ; Code: movq 0x6cb900, %rax	 RIP: 4183cf	 Bytes: 8
  %loadMem_4183cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4183cf = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4183cf)
  store %struct.Memory* %call_4183cf, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, 0x18(%rax)	 RIP: 4183d7	 Bytes: 4
  %loadMem_4183d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4183d7 = call %struct.Memory* @routine_cmpl__0x2__0x18__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4183d7)
  store %struct.Memory* %call_4183d7, %struct.Memory** %MEMORY

  ; Code: jne .L_418432	 RIP: 4183db	 Bytes: 6
  %loadMem_4183db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4183db = call %struct.Memory* @routine_jne_.L_418432(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4183db, i8* %BRANCH_TAKEN, i64 87, i64 6, i64 6)
  store %struct.Memory* %call_4183db, %struct.Memory** %MEMORY

  %loadBr_4183db = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4183db = icmp eq i8 %loadBr_4183db, 1
  br i1 %cmpBr_4183db, label %block_.L_418432, label %block_4183e1

block_4183e1:
  ; Code: movq $0x4b3e00, %rax	 RIP: 4183e1	 Bytes: 10
  %loadMem_4183e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4183e1 = call %struct.Memory* @routine_movq__0x4b3e00___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4183e1)
  store %struct.Memory* %call_4183e1, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 4183eb	 Bytes: 4
  %loadMem_4183eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4183eb = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4183eb)
  store %struct.Memory* %call_4183eb, %struct.Memory** %MEMORY

  ; Code: addq $0x5b0, %rcx	 RIP: 4183ef	 Bytes: 7
  %loadMem_4183ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4183ef = call %struct.Memory* @routine_addq__0x5b0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4183ef)
  store %struct.Memory* %call_4183ef, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rdx	 RIP: 4183f6	 Bytes: 4
  %loadMem_4183f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4183f6 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4183f6)
  store %struct.Memory* %call_4183f6, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rdx	 RIP: 4183fa	 Bytes: 4
  %loadMem_4183fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4183fa = call %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4183fa)
  store %struct.Memory* %call_4183fa, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 4183fe	 Bytes: 3
  %loadMem_4183fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4183fe = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4183fe)
  store %struct.Memory* %call_4183fe, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rdx	 RIP: 418401	 Bytes: 8
  %loadMem_418401 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418401 = call %struct.Memory* @routine_movq_0x6cb900___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418401)
  store %struct.Memory* %call_418401, %struct.Memory** %MEMORY

  ; Code: movslq 0x11b48(%rdx), %rdx	 RIP: 418409	 Bytes: 7
  %loadMem_418409 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418409 = call %struct.Memory* @routine_movslq_0x11b48__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418409)
  store %struct.Memory* %call_418409, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rdx, %rdx	 RIP: 418410	 Bytes: 4
  %loadMem_418410 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418410 = call %struct.Memory* @routine_imulq__0x18___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418410)
  store %struct.Memory* %call_418410, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 418414	 Bytes: 3
  %loadMem_418414 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418414 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418414)
  store %struct.Memory* %call_418414, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rdx	 RIP: 418417	 Bytes: 4
  %loadMem_418417 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418417 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418417)
  store %struct.Memory* %call_418417, %struct.Memory** %MEMORY

  ; Code: shlq $0x3, %rdx	 RIP: 41841b	 Bytes: 4
  %loadMem_41841b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41841b = call %struct.Memory* @routine_shlq__0x3___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41841b)
  store %struct.Memory* %call_41841b, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 41841f	 Bytes: 3
  %loadMem_41841f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41841f = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41841f)
  store %struct.Memory* %call_41841f, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 418422	 Bytes: 3
  %loadMem_418422 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418422 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418422)
  store %struct.Memory* %call_418422, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 418425	 Bytes: 3
  %loadMem_418425 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418425 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418425)
  store %struct.Memory* %call_418425, %struct.Memory** %MEMORY

  ; Code: callq .biari_init_context	 RIP: 418428	 Bytes: 5
  %loadMem1_418428 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_418428 = call %struct.Memory* @routine_callq_.biari_init_context(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_418428, i64 -90008, i64 5, i64 5)
  store %struct.Memory* %call1_418428, %struct.Memory** %MEMORY

  %loadMem2_418428 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_418428 = load i64, i64* %3
  %call2_418428 = call %struct.Memory* @sub_402490.biari_init_context(%struct.State* %0, i64  %loadPC_418428, %struct.Memory* %loadMem2_418428)
  store %struct.Memory* %call2_418428, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41847e	 RIP: 41842d	 Bytes: 5
  %loadMem_41842d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41842d = call %struct.Memory* @routine_jmpq_.L_41847e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41842d, i64 81, i64 5)
  store %struct.Memory* %call_41842d, %struct.Memory** %MEMORY

  br label %block_.L_41847e

  ; Code: .L_418432:	 RIP: 418432	 Bytes: 0
block_.L_418432:

  ; Code: movq $0x4b3e20, %rax	 RIP: 418432	 Bytes: 10
  %loadMem_418432 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418432 = call %struct.Memory* @routine_movq__0x4b3e20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418432)
  store %struct.Memory* %call_418432, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rcx	 RIP: 41843c	 Bytes: 4
  %loadMem_41843c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41843c = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41843c)
  store %struct.Memory* %call_41843c, %struct.Memory** %MEMORY

  ; Code: addq $0x5b0, %rcx	 RIP: 418440	 Bytes: 7
  %loadMem_418440 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418440 = call %struct.Memory* @routine_addq__0x5b0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418440)
  store %struct.Memory* %call_418440, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rdx	 RIP: 418447	 Bytes: 4
  %loadMem_418447 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418447 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418447)
  store %struct.Memory* %call_418447, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rdx	 RIP: 41844b	 Bytes: 4
  %loadMem_41844b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41844b = call %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41844b)
  store %struct.Memory* %call_41844b, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 41844f	 Bytes: 3
  %loadMem_41844f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41844f = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41844f)
  store %struct.Memory* %call_41844f, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rdx	 RIP: 418452	 Bytes: 8
  %loadMem_418452 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418452 = call %struct.Memory* @routine_movq_0x6cb900___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418452)
  store %struct.Memory* %call_418452, %struct.Memory** %MEMORY

  ; Code: movslq 0x11b48(%rdx), %rdx	 RIP: 41845a	 Bytes: 7
  %loadMem_41845a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41845a = call %struct.Memory* @routine_movslq_0x11b48__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41845a)
  store %struct.Memory* %call_41845a, %struct.Memory** %MEMORY

  ; Code: imulq $0x18, %rdx, %rdx	 RIP: 418461	 Bytes: 4
  %loadMem_418461 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418461 = call %struct.Memory* @routine_imulq__0x18___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418461)
  store %struct.Memory* %call_418461, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 418465	 Bytes: 3
  %loadMem_418465 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418465 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418465)
  store %struct.Memory* %call_418465, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rdx	 RIP: 418468	 Bytes: 4
  %loadMem_418468 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418468 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418468)
  store %struct.Memory* %call_418468, %struct.Memory** %MEMORY

  ; Code: shlq $0x3, %rdx	 RIP: 41846c	 Bytes: 4
  %loadMem_41846c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41846c = call %struct.Memory* @routine_shlq__0x3___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41846c)
  store %struct.Memory* %call_41846c, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 418470	 Bytes: 3
  %loadMem_418470 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418470 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418470)
  store %struct.Memory* %call_418470, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 418473	 Bytes: 3
  %loadMem_418473 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418473 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418473)
  store %struct.Memory* %call_418473, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 418476	 Bytes: 3
  %loadMem_418476 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418476 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418476)
  store %struct.Memory* %call_418476, %struct.Memory** %MEMORY

  ; Code: callq .biari_init_context	 RIP: 418479	 Bytes: 5
  %loadMem1_418479 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_418479 = call %struct.Memory* @routine_callq_.biari_init_context(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_418479, i64 -90089, i64 5, i64 5)
  store %struct.Memory* %call1_418479, %struct.Memory** %MEMORY

  %loadMem2_418479 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_418479 = load i64, i64* %3
  %call2_418479 = call %struct.Memory* @sub_402490.biari_init_context(%struct.State* %0, i64  %loadPC_418479, %struct.Memory* %loadMem2_418479)
  store %struct.Memory* %call2_418479, %struct.Memory** %MEMORY

  ; Code: .L_41847e:	 RIP: 41847e	 Bytes: 0
  br label %block_.L_41847e
block_.L_41847e:

  ; Code: jmpq .L_418483	 RIP: 41847e	 Bytes: 5
  %loadMem_41847e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41847e = call %struct.Memory* @routine_jmpq_.L_418483(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41847e, i64 5, i64 5)
  store %struct.Memory* %call_41847e, %struct.Memory** %MEMORY

  br label %block_.L_418483

  ; Code: .L_418483:	 RIP: 418483	 Bytes: 0
block_.L_418483:

  ; Code: movl -0x18(%rbp), %eax	 RIP: 418483	 Bytes: 3
  %loadMem_418483 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418483 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418483)
  store %struct.Memory* %call_418483, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 418486	 Bytes: 3
  %loadMem_418486 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418486 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418486)
  store %struct.Memory* %call_418486, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x18(%rbp)	 RIP: 418489	 Bytes: 3
  %loadMem_418489 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418489 = call %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418489)
  store %struct.Memory* %call_418489, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4183c5	 RIP: 41848c	 Bytes: 5
  %loadMem_41848c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41848c = call %struct.Memory* @routine_jmpq_.L_4183c5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41848c, i64 -199, i64 5)
  store %struct.Memory* %call_41848c, %struct.Memory** %MEMORY

  br label %block_.L_4183c5

  ; Code: .L_418491:	 RIP: 418491	 Bytes: 0
block_.L_418491:

  ; Code: movl $0x0, -0x18(%rbp)	 RIP: 418491	 Bytes: 7
  %loadMem_418491 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418491 = call %struct.Memory* @routine_movl__0x0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418491)
  store %struct.Memory* %call_418491, %struct.Memory** %MEMORY

  ; Code: .L_418498:	 RIP: 418498	 Bytes: 0
  br label %block_.L_418498
block_.L_418498:

  ; Code: cmpl $0x2, -0x18(%rbp)	 RIP: 418498	 Bytes: 4
  %loadMem_418498 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418498 = call %struct.Memory* @routine_cmpl__0x2__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418498)
  store %struct.Memory* %call_418498, %struct.Memory** %MEMORY

  ; Code: jge .L_418556	 RIP: 41849c	 Bytes: 6
  %loadMem_41849c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41849c = call %struct.Memory* @routine_jge_.L_418556(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41849c, i8* %BRANCH_TAKEN, i64 186, i64 6, i64 6)
  store %struct.Memory* %call_41849c, %struct.Memory** %MEMORY

  %loadBr_41849c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41849c = icmp eq i8 %loadBr_41849c, 1
  br i1 %cmpBr_41849c, label %block_.L_418556, label %block_4184a2

block_4184a2:
  ; Code: movq 0x6cb900, %rax	 RIP: 4184a2	 Bytes: 8
  %loadMem_4184a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4184a2 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4184a2)
  store %struct.Memory* %call_4184a2, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, 0x18(%rax)	 RIP: 4184aa	 Bytes: 4
  %loadMem_4184aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4184aa = call %struct.Memory* @routine_cmpl__0x2__0x18__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4184aa)
  store %struct.Memory* %call_4184aa, %struct.Memory** %MEMORY

  ; Code: jne .L_4184fe	 RIP: 4184ae	 Bytes: 6
  %loadMem_4184ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4184ae = call %struct.Memory* @routine_jne_.L_4184fe(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4184ae, i8* %BRANCH_TAKEN, i64 80, i64 6, i64 6)
  store %struct.Memory* %call_4184ae, %struct.Memory** %MEMORY

  %loadBr_4184ae = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4184ae = icmp eq i8 %loadBr_4184ae, 1
  br i1 %cmpBr_4184ae, label %block_.L_4184fe, label %block_4184b4

block_4184b4:
  ; Code: movq $0x4b3e70, %rax	 RIP: 4184b4	 Bytes: 10
  %loadMem_4184b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4184b4 = call %struct.Memory* @routine_movq__0x4b3e70___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4184b4)
  store %struct.Memory* %call_4184b4, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4184be	 Bytes: 4
  %loadMem_4184be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4184be = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4184be)
  store %struct.Memory* %call_4184be, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rdx	 RIP: 4184c2	 Bytes: 4
  %loadMem_4184c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4184c2 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4184c2)
  store %struct.Memory* %call_4184c2, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rdx	 RIP: 4184c6	 Bytes: 4
  %loadMem_4184c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4184c6 = call %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4184c6)
  store %struct.Memory* %call_4184c6, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 4184ca	 Bytes: 3
  %loadMem_4184ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4184ca = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4184ca)
  store %struct.Memory* %call_4184ca, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rdx	 RIP: 4184cd	 Bytes: 8
  %loadMem_4184cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4184cd = call %struct.Memory* @routine_movq_0x6cb900___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4184cd)
  store %struct.Memory* %call_4184cd, %struct.Memory** %MEMORY

  ; Code: movslq 0x11b48(%rdx), %rdx	 RIP: 4184d5	 Bytes: 7
  %loadMem_4184d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4184d5 = call %struct.Memory* @routine_movslq_0x11b48__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4184d5)
  store %struct.Memory* %call_4184d5, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rdx	 RIP: 4184dc	 Bytes: 4
  %loadMem_4184dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4184dc = call %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4184dc)
  store %struct.Memory* %call_4184dc, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 4184e0	 Bytes: 3
  %loadMem_4184e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4184e0 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4184e0)
  store %struct.Memory* %call_4184e0, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rdx	 RIP: 4184e3	 Bytes: 4
  %loadMem_4184e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4184e3 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4184e3)
  store %struct.Memory* %call_4184e3, %struct.Memory** %MEMORY

  ; Code: shlq $0x3, %rdx	 RIP: 4184e7	 Bytes: 4
  %loadMem_4184e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4184e7 = call %struct.Memory* @routine_shlq__0x3___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4184e7)
  store %struct.Memory* %call_4184e7, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 4184eb	 Bytes: 3
  %loadMem_4184eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4184eb = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4184eb)
  store %struct.Memory* %call_4184eb, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 4184ee	 Bytes: 3
  %loadMem_4184ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4184ee = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4184ee)
  store %struct.Memory* %call_4184ee, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 4184f1	 Bytes: 3
  %loadMem_4184f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4184f1 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4184f1)
  store %struct.Memory* %call_4184f1, %struct.Memory** %MEMORY

  ; Code: callq .biari_init_context	 RIP: 4184f4	 Bytes: 5
  %loadMem1_4184f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4184f4 = call %struct.Memory* @routine_callq_.biari_init_context(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4184f4, i64 -90212, i64 5, i64 5)
  store %struct.Memory* %call1_4184f4, %struct.Memory** %MEMORY

  %loadMem2_4184f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4184f4 = load i64, i64* %3
  %call2_4184f4 = call %struct.Memory* @sub_402490.biari_init_context(%struct.State* %0, i64  %loadPC_4184f4, %struct.Memory* %loadMem2_4184f4)
  store %struct.Memory* %call2_4184f4, %struct.Memory** %MEMORY

  ; Code: jmpq .L_418543	 RIP: 4184f9	 Bytes: 5
  %loadMem_4184f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4184f9 = call %struct.Memory* @routine_jmpq_.L_418543(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4184f9, i64 74, i64 5)
  store %struct.Memory* %call_4184f9, %struct.Memory** %MEMORY

  br label %block_.L_418543

  ; Code: .L_4184fe:	 RIP: 4184fe	 Bytes: 0
block_.L_4184fe:

  ; Code: movq $0x4b3e80, %rax	 RIP: 4184fe	 Bytes: 10
  %loadMem_4184fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4184fe = call %struct.Memory* @routine_movq__0x4b3e80___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4184fe)
  store %struct.Memory* %call_4184fe, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 418508	 Bytes: 4
  %loadMem_418508 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418508 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418508)
  store %struct.Memory* %call_418508, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rdx	 RIP: 41850c	 Bytes: 4
  %loadMem_41850c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41850c = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41850c)
  store %struct.Memory* %call_41850c, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rdx	 RIP: 418510	 Bytes: 4
  %loadMem_418510 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418510 = call %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418510)
  store %struct.Memory* %call_418510, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 418514	 Bytes: 3
  %loadMem_418514 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418514 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418514)
  store %struct.Memory* %call_418514, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rdx	 RIP: 418517	 Bytes: 8
  %loadMem_418517 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418517 = call %struct.Memory* @routine_movq_0x6cb900___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418517)
  store %struct.Memory* %call_418517, %struct.Memory** %MEMORY

  ; Code: movslq 0x11b48(%rdx), %rdx	 RIP: 41851f	 Bytes: 7
  %loadMem_41851f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41851f = call %struct.Memory* @routine_movslq_0x11b48__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41851f)
  store %struct.Memory* %call_41851f, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rdx	 RIP: 418526	 Bytes: 4
  %loadMem_418526 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418526 = call %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418526)
  store %struct.Memory* %call_418526, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 41852a	 Bytes: 3
  %loadMem_41852a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41852a = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41852a)
  store %struct.Memory* %call_41852a, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rdx	 RIP: 41852d	 Bytes: 4
  %loadMem_41852d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41852d = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41852d)
  store %struct.Memory* %call_41852d, %struct.Memory** %MEMORY

  ; Code: shlq $0x3, %rdx	 RIP: 418531	 Bytes: 4
  %loadMem_418531 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418531 = call %struct.Memory* @routine_shlq__0x3___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418531)
  store %struct.Memory* %call_418531, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 418535	 Bytes: 3
  %loadMem_418535 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418535 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418535)
  store %struct.Memory* %call_418535, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 418538	 Bytes: 3
  %loadMem_418538 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418538 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418538)
  store %struct.Memory* %call_418538, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 41853b	 Bytes: 3
  %loadMem_41853b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41853b = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41853b)
  store %struct.Memory* %call_41853b, %struct.Memory** %MEMORY

  ; Code: callq .biari_init_context	 RIP: 41853e	 Bytes: 5
  %loadMem1_41853e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41853e = call %struct.Memory* @routine_callq_.biari_init_context(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41853e, i64 -90286, i64 5, i64 5)
  store %struct.Memory* %call1_41853e, %struct.Memory** %MEMORY

  %loadMem2_41853e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41853e = load i64, i64* %3
  %call2_41853e = call %struct.Memory* @sub_402490.biari_init_context(%struct.State* %0, i64  %loadPC_41853e, %struct.Memory* %loadMem2_41853e)
  store %struct.Memory* %call2_41853e, %struct.Memory** %MEMORY

  ; Code: .L_418543:	 RIP: 418543	 Bytes: 0
  br label %block_.L_418543
block_.L_418543:

  ; Code: jmpq .L_418548	 RIP: 418543	 Bytes: 5
  %loadMem_418543 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418543 = call %struct.Memory* @routine_jmpq_.L_418548(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418543, i64 5, i64 5)
  store %struct.Memory* %call_418543, %struct.Memory** %MEMORY

  br label %block_.L_418548

  ; Code: .L_418548:	 RIP: 418548	 Bytes: 0
block_.L_418548:

  ; Code: movl -0x18(%rbp), %eax	 RIP: 418548	 Bytes: 3
  %loadMem_418548 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418548 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418548)
  store %struct.Memory* %call_418548, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 41854b	 Bytes: 3
  %loadMem_41854b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41854b = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41854b)
  store %struct.Memory* %call_41854b, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x18(%rbp)	 RIP: 41854e	 Bytes: 3
  %loadMem_41854e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41854e = call %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41854e)
  store %struct.Memory* %call_41854e, %struct.Memory** %MEMORY

  ; Code: jmpq .L_418498	 RIP: 418551	 Bytes: 5
  %loadMem_418551 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418551 = call %struct.Memory* @routine_jmpq_.L_418498(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418551, i64 -185, i64 5)
  store %struct.Memory* %call_418551, %struct.Memory** %MEMORY

  br label %block_.L_418498

  ; Code: .L_418556:	 RIP: 418556	 Bytes: 0
block_.L_418556:

  ; Code: movl $0x0, -0x18(%rbp)	 RIP: 418556	 Bytes: 7
  %loadMem_418556 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418556 = call %struct.Memory* @routine_movl__0x0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418556)
  store %struct.Memory* %call_418556, %struct.Memory** %MEMORY

  ; Code: .L_41855d:	 RIP: 41855d	 Bytes: 0
  br label %block_.L_41855d
block_.L_41855d:

  ; Code: cmpl $0x4, -0x18(%rbp)	 RIP: 41855d	 Bytes: 4
  %loadMem_41855d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41855d = call %struct.Memory* @routine_cmpl__0x4__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41855d)
  store %struct.Memory* %call_41855d, %struct.Memory** %MEMORY

  ; Code: jge .L_418623	 RIP: 418561	 Bytes: 6
  %loadMem_418561 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418561 = call %struct.Memory* @routine_jge_.L_418623(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418561, i8* %BRANCH_TAKEN, i64 194, i64 6, i64 6)
  store %struct.Memory* %call_418561, %struct.Memory** %MEMORY

  %loadBr_418561 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_418561 = icmp eq i8 %loadBr_418561, 1
  br i1 %cmpBr_418561, label %block_.L_418623, label %block_418567

block_418567:
  ; Code: movq 0x6cb900, %rax	 RIP: 418567	 Bytes: 8
  %loadMem_418567 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418567 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418567)
  store %struct.Memory* %call_418567, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, 0x18(%rax)	 RIP: 41856f	 Bytes: 4
  %loadMem_41856f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41856f = call %struct.Memory* @routine_cmpl__0x2__0x18__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41856f)
  store %struct.Memory* %call_41856f, %struct.Memory** %MEMORY

  ; Code: jne .L_4185c7	 RIP: 418573	 Bytes: 6
  %loadMem_418573 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418573 = call %struct.Memory* @routine_jne_.L_4185c7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418573, i8* %BRANCH_TAKEN, i64 84, i64 6, i64 6)
  store %struct.Memory* %call_418573, %struct.Memory** %MEMORY

  %loadBr_418573 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_418573 = icmp eq i8 %loadBr_418573, 1
  br i1 %cmpBr_418573, label %block_.L_4185c7, label %block_418579

block_418579:
  ; Code: movq $0x4b3eb0, %rax	 RIP: 418579	 Bytes: 10
  %loadMem_418579 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418579 = call %struct.Memory* @routine_movq__0x4b3eb0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418579)
  store %struct.Memory* %call_418579, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 418583	 Bytes: 4
  %loadMem_418583 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418583 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418583)
  store %struct.Memory* %call_418583, %struct.Memory** %MEMORY

  ; Code: addq $0x20, %rcx	 RIP: 418587	 Bytes: 4
  %loadMem_418587 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418587 = call %struct.Memory* @routine_addq__0x20___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418587)
  store %struct.Memory* %call_418587, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rdx	 RIP: 41858b	 Bytes: 4
  %loadMem_41858b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41858b = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41858b)
  store %struct.Memory* %call_41858b, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rdx	 RIP: 41858f	 Bytes: 4
  %loadMem_41858f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41858f = call %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41858f)
  store %struct.Memory* %call_41858f, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 418593	 Bytes: 3
  %loadMem_418593 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418593 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418593)
  store %struct.Memory* %call_418593, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rdx	 RIP: 418596	 Bytes: 8
  %loadMem_418596 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418596 = call %struct.Memory* @routine_movq_0x6cb900___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418596)
  store %struct.Memory* %call_418596, %struct.Memory** %MEMORY

  ; Code: movslq 0x11b48(%rdx), %rdx	 RIP: 41859e	 Bytes: 7
  %loadMem_41859e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41859e = call %struct.Memory* @routine_movslq_0x11b48__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41859e)
  store %struct.Memory* %call_41859e, %struct.Memory** %MEMORY

  ; Code: shlq $0x5, %rdx	 RIP: 4185a5	 Bytes: 4
  %loadMem_4185a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4185a5 = call %struct.Memory* @routine_shlq__0x5___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4185a5)
  store %struct.Memory* %call_4185a5, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 4185a9	 Bytes: 3
  %loadMem_4185a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4185a9 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4185a9)
  store %struct.Memory* %call_4185a9, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rdx	 RIP: 4185ac	 Bytes: 4
  %loadMem_4185ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4185ac = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4185ac)
  store %struct.Memory* %call_4185ac, %struct.Memory** %MEMORY

  ; Code: shlq $0x3, %rdx	 RIP: 4185b0	 Bytes: 4
  %loadMem_4185b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4185b0 = call %struct.Memory* @routine_shlq__0x3___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4185b0)
  store %struct.Memory* %call_4185b0, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 4185b4	 Bytes: 3
  %loadMem_4185b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4185b4 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4185b4)
  store %struct.Memory* %call_4185b4, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 4185b7	 Bytes: 3
  %loadMem_4185b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4185b7 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4185b7)
  store %struct.Memory* %call_4185b7, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 4185ba	 Bytes: 3
  %loadMem_4185ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4185ba = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4185ba)
  store %struct.Memory* %call_4185ba, %struct.Memory** %MEMORY

  ; Code: callq .biari_init_context	 RIP: 4185bd	 Bytes: 5
  %loadMem1_4185bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4185bd = call %struct.Memory* @routine_callq_.biari_init_context(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4185bd, i64 -90413, i64 5, i64 5)
  store %struct.Memory* %call1_4185bd, %struct.Memory** %MEMORY

  %loadMem2_4185bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4185bd = load i64, i64* %3
  %call2_4185bd = call %struct.Memory* @sub_402490.biari_init_context(%struct.State* %0, i64  %loadPC_4185bd, %struct.Memory* %loadMem2_4185bd)
  store %struct.Memory* %call2_4185bd, %struct.Memory** %MEMORY

  ; Code: jmpq .L_418610	 RIP: 4185c2	 Bytes: 5
  %loadMem_4185c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4185c2 = call %struct.Memory* @routine_jmpq_.L_418610(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4185c2, i64 78, i64 5)
  store %struct.Memory* %call_4185c2, %struct.Memory** %MEMORY

  br label %block_.L_418610

  ; Code: .L_4185c7:	 RIP: 4185c7	 Bytes: 0
block_.L_4185c7:

  ; Code: movq $0x4b3ed0, %rax	 RIP: 4185c7	 Bytes: 10
  %loadMem_4185c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4185c7 = call %struct.Memory* @routine_movq__0x4b3ed0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4185c7)
  store %struct.Memory* %call_4185c7, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4185d1	 Bytes: 4
  %loadMem_4185d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4185d1 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4185d1)
  store %struct.Memory* %call_4185d1, %struct.Memory** %MEMORY

  ; Code: addq $0x20, %rcx	 RIP: 4185d5	 Bytes: 4
  %loadMem_4185d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4185d5 = call %struct.Memory* @routine_addq__0x20___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4185d5)
  store %struct.Memory* %call_4185d5, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rdx	 RIP: 4185d9	 Bytes: 4
  %loadMem_4185d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4185d9 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4185d9)
  store %struct.Memory* %call_4185d9, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rdx	 RIP: 4185dd	 Bytes: 4
  %loadMem_4185dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4185dd = call %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4185dd)
  store %struct.Memory* %call_4185dd, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 4185e1	 Bytes: 3
  %loadMem_4185e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4185e1 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4185e1)
  store %struct.Memory* %call_4185e1, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rdx	 RIP: 4185e4	 Bytes: 8
  %loadMem_4185e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4185e4 = call %struct.Memory* @routine_movq_0x6cb900___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4185e4)
  store %struct.Memory* %call_4185e4, %struct.Memory** %MEMORY

  ; Code: movslq 0x11b48(%rdx), %rdx	 RIP: 4185ec	 Bytes: 7
  %loadMem_4185ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4185ec = call %struct.Memory* @routine_movslq_0x11b48__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4185ec)
  store %struct.Memory* %call_4185ec, %struct.Memory** %MEMORY

  ; Code: shlq $0x5, %rdx	 RIP: 4185f3	 Bytes: 4
  %loadMem_4185f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4185f3 = call %struct.Memory* @routine_shlq__0x5___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4185f3)
  store %struct.Memory* %call_4185f3, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 4185f7	 Bytes: 3
  %loadMem_4185f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4185f7 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4185f7)
  store %struct.Memory* %call_4185f7, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rdx	 RIP: 4185fa	 Bytes: 4
  %loadMem_4185fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4185fa = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4185fa)
  store %struct.Memory* %call_4185fa, %struct.Memory** %MEMORY

  ; Code: shlq $0x3, %rdx	 RIP: 4185fe	 Bytes: 4
  %loadMem_4185fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4185fe = call %struct.Memory* @routine_shlq__0x3___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4185fe)
  store %struct.Memory* %call_4185fe, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 418602	 Bytes: 3
  %loadMem_418602 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418602 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418602)
  store %struct.Memory* %call_418602, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 418605	 Bytes: 3
  %loadMem_418605 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418605 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418605)
  store %struct.Memory* %call_418605, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 418608	 Bytes: 3
  %loadMem_418608 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418608 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418608)
  store %struct.Memory* %call_418608, %struct.Memory** %MEMORY

  ; Code: callq .biari_init_context	 RIP: 41860b	 Bytes: 5
  %loadMem1_41860b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_41860b = call %struct.Memory* @routine_callq_.biari_init_context(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_41860b, i64 -90491, i64 5, i64 5)
  store %struct.Memory* %call1_41860b, %struct.Memory** %MEMORY

  %loadMem2_41860b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41860b = load i64, i64* %3
  %call2_41860b = call %struct.Memory* @sub_402490.biari_init_context(%struct.State* %0, i64  %loadPC_41860b, %struct.Memory* %loadMem2_41860b)
  store %struct.Memory* %call2_41860b, %struct.Memory** %MEMORY

  ; Code: .L_418610:	 RIP: 418610	 Bytes: 0
  br label %block_.L_418610
block_.L_418610:

  ; Code: jmpq .L_418615	 RIP: 418610	 Bytes: 5
  %loadMem_418610 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418610 = call %struct.Memory* @routine_jmpq_.L_418615(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418610, i64 5, i64 5)
  store %struct.Memory* %call_418610, %struct.Memory** %MEMORY

  br label %block_.L_418615

  ; Code: .L_418615:	 RIP: 418615	 Bytes: 0
block_.L_418615:

  ; Code: movl -0x18(%rbp), %eax	 RIP: 418615	 Bytes: 3
  %loadMem_418615 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418615 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418615)
  store %struct.Memory* %call_418615, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 418618	 Bytes: 3
  %loadMem_418618 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418618 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418618)
  store %struct.Memory* %call_418618, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x18(%rbp)	 RIP: 41861b	 Bytes: 3
  %loadMem_41861b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41861b = call %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41861b)
  store %struct.Memory* %call_41861b, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41855d	 RIP: 41861e	 Bytes: 5
  %loadMem_41861e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41861e = call %struct.Memory* @routine_jmpq_.L_41855d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41861e, i64 -193, i64 5)
  store %struct.Memory* %call_41861e, %struct.Memory** %MEMORY

  br label %block_.L_41855d

  ; Code: .L_418623:	 RIP: 418623	 Bytes: 0
block_.L_418623:

  ; Code: movl $0x0, -0x14(%rbp)	 RIP: 418623	 Bytes: 7
  %loadMem_418623 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418623 = call %struct.Memory* @routine_movl__0x0__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418623)
  store %struct.Memory* %call_418623, %struct.Memory** %MEMORY

  ; Code: .L_41862a:	 RIP: 41862a	 Bytes: 0
  br label %block_.L_41862a
block_.L_41862a:

  ; Code: cmpl $0x3, -0x14(%rbp)	 RIP: 41862a	 Bytes: 4
  %loadMem_41862a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41862a = call %struct.Memory* @routine_cmpl__0x3__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41862a)
  store %struct.Memory* %call_41862a, %struct.Memory** %MEMORY

  ; Code: jge .L_418740	 RIP: 41862e	 Bytes: 6
  %loadMem_41862e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41862e = call %struct.Memory* @routine_jge_.L_418740(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41862e, i8* %BRANCH_TAKEN, i64 274, i64 6, i64 6)
  store %struct.Memory* %call_41862e, %struct.Memory** %MEMORY

  %loadBr_41862e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41862e = icmp eq i8 %loadBr_41862e, 1
  br i1 %cmpBr_41862e, label %block_.L_418740, label %block_418634

block_418634:
  ; Code: movl $0x0, -0x18(%rbp)	 RIP: 418634	 Bytes: 7
  %loadMem_418634 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418634 = call %struct.Memory* @routine_movl__0x0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418634)
  store %struct.Memory* %call_418634, %struct.Memory** %MEMORY

  ; Code: .L_41863b:	 RIP: 41863b	 Bytes: 0
  br label %block_.L_41863b
block_.L_41863b:

  ; Code: cmpl $0x4, -0x18(%rbp)	 RIP: 41863b	 Bytes: 4
  %loadMem_41863b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41863b = call %struct.Memory* @routine_cmpl__0x4__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41863b)
  store %struct.Memory* %call_41863b, %struct.Memory** %MEMORY

  ; Code: jge .L_41872d	 RIP: 41863f	 Bytes: 6
  %loadMem_41863f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41863f = call %struct.Memory* @routine_jge_.L_41872d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41863f, i8* %BRANCH_TAKEN, i64 238, i64 6, i64 6)
  store %struct.Memory* %call_41863f, %struct.Memory** %MEMORY

  %loadBr_41863f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41863f = icmp eq i8 %loadBr_41863f, 1
  br i1 %cmpBr_41863f, label %block_.L_41872d, label %block_418645

block_418645:
  ; Code: movq 0x6cb900, %rax	 RIP: 418645	 Bytes: 8
  %loadMem_418645 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418645 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418645)
  store %struct.Memory* %call_418645, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, 0x18(%rax)	 RIP: 41864d	 Bytes: 4
  %loadMem_41864d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41864d = call %struct.Memory* @routine_cmpl__0x2__0x18__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41864d)
  store %struct.Memory* %call_41864d, %struct.Memory** %MEMORY

  ; Code: jne .L_4186bb	 RIP: 418651	 Bytes: 6
  %loadMem_418651 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418651 = call %struct.Memory* @routine_jne_.L_4186bb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418651, i8* %BRANCH_TAKEN, i64 106, i64 6, i64 6)
  store %struct.Memory* %call_418651, %struct.Memory** %MEMORY

  %loadBr_418651 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_418651 = icmp eq i8 %loadBr_418651, 1
  br i1 %cmpBr_418651, label %block_.L_4186bb, label %block_418657

block_418657:
  ; Code: movq $0x4b3f30, %rax	 RIP: 418657	 Bytes: 10
  %loadMem_418657 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418657 = call %struct.Memory* @routine_movq__0x4b3f30___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418657)
  store %struct.Memory* %call_418657, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 418661	 Bytes: 4
  %loadMem_418661 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418661 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418661)
  store %struct.Memory* %call_418661, %struct.Memory** %MEMORY

  ; Code: addq $0x60, %rcx	 RIP: 418665	 Bytes: 4
  %loadMem_418665 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418665 = call %struct.Memory* @routine_addq__0x60___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418665)
  store %struct.Memory* %call_418665, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 418669	 Bytes: 4
  %loadMem_418669 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418669 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418669)
  store %struct.Memory* %call_418669, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rdx	 RIP: 41866d	 Bytes: 4
  %loadMem_41866d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41866d = call %struct.Memory* @routine_shlq__0x6___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41866d)
  store %struct.Memory* %call_41866d, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 418671	 Bytes: 3
  %loadMem_418671 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418671 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418671)
  store %struct.Memory* %call_418671, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rdx	 RIP: 418674	 Bytes: 4
  %loadMem_418674 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418674 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418674)
  store %struct.Memory* %call_418674, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rdx	 RIP: 418678	 Bytes: 4
  %loadMem_418678 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418678 = call %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418678)
  store %struct.Memory* %call_418678, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 41867c	 Bytes: 3
  %loadMem_41867c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41867c = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41867c)
  store %struct.Memory* %call_41867c, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rdx	 RIP: 41867f	 Bytes: 8
  %loadMem_41867f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41867f = call %struct.Memory* @routine_movq_0x6cb900___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41867f)
  store %struct.Memory* %call_41867f, %struct.Memory** %MEMORY

  ; Code: movslq 0x11b48(%rdx), %rdx	 RIP: 418687	 Bytes: 7
  %loadMem_418687 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418687 = call %struct.Memory* @routine_movslq_0x11b48__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418687)
  store %struct.Memory* %call_418687, %struct.Memory** %MEMORY

  ; Code: imulq $0x60, %rdx, %rdx	 RIP: 41868e	 Bytes: 4
  %loadMem_41868e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41868e = call %struct.Memory* @routine_imulq__0x60___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41868e)
  store %struct.Memory* %call_41868e, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 418692	 Bytes: 3
  %loadMem_418692 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418692 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418692)
  store %struct.Memory* %call_418692, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 418695	 Bytes: 4
  %loadMem_418695 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418695 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418695)
  store %struct.Memory* %call_418695, %struct.Memory** %MEMORY

  ; Code: shlq $0x5, %rdx	 RIP: 418699	 Bytes: 4
  %loadMem_418699 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418699 = call %struct.Memory* @routine_shlq__0x5___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418699)
  store %struct.Memory* %call_418699, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 41869d	 Bytes: 3
  %loadMem_41869d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41869d = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41869d)
  store %struct.Memory* %call_41869d, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rdx	 RIP: 4186a0	 Bytes: 4
  %loadMem_4186a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4186a0 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4186a0)
  store %struct.Memory* %call_4186a0, %struct.Memory** %MEMORY

  ; Code: shlq $0x3, %rdx	 RIP: 4186a4	 Bytes: 4
  %loadMem_4186a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4186a4 = call %struct.Memory* @routine_shlq__0x3___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4186a4)
  store %struct.Memory* %call_4186a4, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 4186a8	 Bytes: 3
  %loadMem_4186a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4186a8 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4186a8)
  store %struct.Memory* %call_4186a8, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 4186ab	 Bytes: 3
  %loadMem_4186ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4186ab = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4186ab)
  store %struct.Memory* %call_4186ab, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 4186ae	 Bytes: 3
  %loadMem_4186ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4186ae = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4186ae)
  store %struct.Memory* %call_4186ae, %struct.Memory** %MEMORY

  ; Code: callq .biari_init_context	 RIP: 4186b1	 Bytes: 5
  %loadMem1_4186b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4186b1 = call %struct.Memory* @routine_callq_.biari_init_context(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4186b1, i64 -90657, i64 5, i64 5)
  store %struct.Memory* %call1_4186b1, %struct.Memory** %MEMORY

  %loadMem2_4186b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4186b1 = load i64, i64* %3
  %call2_4186b1 = call %struct.Memory* @sub_402490.biari_init_context(%struct.State* %0, i64  %loadPC_4186b1, %struct.Memory* %loadMem2_4186b1)
  store %struct.Memory* %call2_4186b1, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41871a	 RIP: 4186b6	 Bytes: 5
  %loadMem_4186b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4186b6 = call %struct.Memory* @routine_jmpq_.L_41871a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4186b6, i64 100, i64 5)
  store %struct.Memory* %call_4186b6, %struct.Memory** %MEMORY

  br label %block_.L_41871a

  ; Code: .L_4186bb:	 RIP: 4186bb	 Bytes: 0
block_.L_4186bb:

  ; Code: movq $0x4b3f90, %rax	 RIP: 4186bb	 Bytes: 10
  %loadMem_4186bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4186bb = call %struct.Memory* @routine_movq__0x4b3f90___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4186bb)
  store %struct.Memory* %call_4186bb, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4186c5	 Bytes: 4
  %loadMem_4186c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4186c5 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4186c5)
  store %struct.Memory* %call_4186c5, %struct.Memory** %MEMORY

  ; Code: addq $0x60, %rcx	 RIP: 4186c9	 Bytes: 4
  %loadMem_4186c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4186c9 = call %struct.Memory* @routine_addq__0x60___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4186c9)
  store %struct.Memory* %call_4186c9, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 4186cd	 Bytes: 4
  %loadMem_4186cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4186cd = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4186cd)
  store %struct.Memory* %call_4186cd, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rdx	 RIP: 4186d1	 Bytes: 4
  %loadMem_4186d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4186d1 = call %struct.Memory* @routine_shlq__0x6___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4186d1)
  store %struct.Memory* %call_4186d1, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 4186d5	 Bytes: 3
  %loadMem_4186d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4186d5 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4186d5)
  store %struct.Memory* %call_4186d5, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rdx	 RIP: 4186d8	 Bytes: 4
  %loadMem_4186d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4186d8 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4186d8)
  store %struct.Memory* %call_4186d8, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rdx	 RIP: 4186dc	 Bytes: 4
  %loadMem_4186dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4186dc = call %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4186dc)
  store %struct.Memory* %call_4186dc, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 4186e0	 Bytes: 3
  %loadMem_4186e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4186e0 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4186e0)
  store %struct.Memory* %call_4186e0, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rdx	 RIP: 4186e3	 Bytes: 8
  %loadMem_4186e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4186e3 = call %struct.Memory* @routine_movq_0x6cb900___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4186e3)
  store %struct.Memory* %call_4186e3, %struct.Memory** %MEMORY

  ; Code: movslq 0x11b48(%rdx), %rdx	 RIP: 4186eb	 Bytes: 7
  %loadMem_4186eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4186eb = call %struct.Memory* @routine_movslq_0x11b48__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4186eb)
  store %struct.Memory* %call_4186eb, %struct.Memory** %MEMORY

  ; Code: imulq $0x60, %rdx, %rdx	 RIP: 4186f2	 Bytes: 4
  %loadMem_4186f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4186f2 = call %struct.Memory* @routine_imulq__0x60___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4186f2)
  store %struct.Memory* %call_4186f2, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 4186f6	 Bytes: 3
  %loadMem_4186f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4186f6 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4186f6)
  store %struct.Memory* %call_4186f6, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 4186f9	 Bytes: 4
  %loadMem_4186f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4186f9 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4186f9)
  store %struct.Memory* %call_4186f9, %struct.Memory** %MEMORY

  ; Code: shlq $0x5, %rdx	 RIP: 4186fd	 Bytes: 4
  %loadMem_4186fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4186fd = call %struct.Memory* @routine_shlq__0x5___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4186fd)
  store %struct.Memory* %call_4186fd, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 418701	 Bytes: 3
  %loadMem_418701 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418701 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418701)
  store %struct.Memory* %call_418701, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rdx	 RIP: 418704	 Bytes: 4
  %loadMem_418704 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418704 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418704)
  store %struct.Memory* %call_418704, %struct.Memory** %MEMORY

  ; Code: shlq $0x3, %rdx	 RIP: 418708	 Bytes: 4
  %loadMem_418708 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418708 = call %struct.Memory* @routine_shlq__0x3___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418708)
  store %struct.Memory* %call_418708, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 41870c	 Bytes: 3
  %loadMem_41870c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41870c = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41870c)
  store %struct.Memory* %call_41870c, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 41870f	 Bytes: 3
  %loadMem_41870f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41870f = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41870f)
  store %struct.Memory* %call_41870f, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 418712	 Bytes: 3
  %loadMem_418712 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418712 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418712)
  store %struct.Memory* %call_418712, %struct.Memory** %MEMORY

  ; Code: callq .biari_init_context	 RIP: 418715	 Bytes: 5
  %loadMem1_418715 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_418715 = call %struct.Memory* @routine_callq_.biari_init_context(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_418715, i64 -90757, i64 5, i64 5)
  store %struct.Memory* %call1_418715, %struct.Memory** %MEMORY

  %loadMem2_418715 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_418715 = load i64, i64* %3
  %call2_418715 = call %struct.Memory* @sub_402490.biari_init_context(%struct.State* %0, i64  %loadPC_418715, %struct.Memory* %loadMem2_418715)
  store %struct.Memory* %call2_418715, %struct.Memory** %MEMORY

  ; Code: .L_41871a:	 RIP: 41871a	 Bytes: 0
  br label %block_.L_41871a
block_.L_41871a:

  ; Code: jmpq .L_41871f	 RIP: 41871a	 Bytes: 5
  %loadMem_41871a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41871a = call %struct.Memory* @routine_jmpq_.L_41871f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41871a, i64 5, i64 5)
  store %struct.Memory* %call_41871a, %struct.Memory** %MEMORY

  br label %block_.L_41871f

  ; Code: .L_41871f:	 RIP: 41871f	 Bytes: 0
block_.L_41871f:

  ; Code: movl -0x18(%rbp), %eax	 RIP: 41871f	 Bytes: 3
  %loadMem_41871f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41871f = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41871f)
  store %struct.Memory* %call_41871f, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 418722	 Bytes: 3
  %loadMem_418722 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418722 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418722)
  store %struct.Memory* %call_418722, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x18(%rbp)	 RIP: 418725	 Bytes: 3
  %loadMem_418725 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418725 = call %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418725)
  store %struct.Memory* %call_418725, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41863b	 RIP: 418728	 Bytes: 5
  %loadMem_418728 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418728 = call %struct.Memory* @routine_jmpq_.L_41863b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418728, i64 -237, i64 5)
  store %struct.Memory* %call_418728, %struct.Memory** %MEMORY

  br label %block_.L_41863b

  ; Code: .L_41872d:	 RIP: 41872d	 Bytes: 0
block_.L_41872d:

  ; Code: jmpq .L_418732	 RIP: 41872d	 Bytes: 5
  %loadMem_41872d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41872d = call %struct.Memory* @routine_jmpq_.L_418732(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41872d, i64 5, i64 5)
  store %struct.Memory* %call_41872d, %struct.Memory** %MEMORY

  br label %block_.L_418732

  ; Code: .L_418732:	 RIP: 418732	 Bytes: 0
block_.L_418732:

  ; Code: movl -0x14(%rbp), %eax	 RIP: 418732	 Bytes: 3
  %loadMem_418732 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418732 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418732)
  store %struct.Memory* %call_418732, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 418735	 Bytes: 3
  %loadMem_418735 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418735 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418735)
  store %struct.Memory* %call_418735, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x14(%rbp)	 RIP: 418738	 Bytes: 3
  %loadMem_418738 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418738 = call %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418738)
  store %struct.Memory* %call_418738, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41862a	 RIP: 41873b	 Bytes: 5
  %loadMem_41873b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41873b = call %struct.Memory* @routine_jmpq_.L_41862a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41873b, i64 -273, i64 5)
  store %struct.Memory* %call_41873b, %struct.Memory** %MEMORY

  br label %block_.L_41862a

  ; Code: .L_418740:	 RIP: 418740	 Bytes: 0
block_.L_418740:

  ; Code: movl $0x0, -0x14(%rbp)	 RIP: 418740	 Bytes: 7
  %loadMem_418740 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418740 = call %struct.Memory* @routine_movl__0x0__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418740)
  store %struct.Memory* %call_418740, %struct.Memory** %MEMORY

  ; Code: .L_418747:	 RIP: 418747	 Bytes: 0
  br label %block_.L_418747
block_.L_418747:

  ; Code: cmpl $0xa, -0x14(%rbp)	 RIP: 418747	 Bytes: 4
  %loadMem_418747 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418747 = call %struct.Memory* @routine_cmpl__0xa__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418747)
  store %struct.Memory* %call_418747, %struct.Memory** %MEMORY

  ; Code: jge .L_418863	 RIP: 41874b	 Bytes: 6
  %loadMem_41874b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41874b = call %struct.Memory* @routine_jge_.L_418863(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41874b, i8* %BRANCH_TAKEN, i64 280, i64 6, i64 6)
  store %struct.Memory* %call_41874b, %struct.Memory** %MEMORY

  %loadBr_41874b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41874b = icmp eq i8 %loadBr_41874b, 1
  br i1 %cmpBr_41874b, label %block_.L_418863, label %block_418751

block_418751:
  ; Code: movl $0x0, -0x18(%rbp)	 RIP: 418751	 Bytes: 7
  %loadMem_418751 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418751 = call %struct.Memory* @routine_movl__0x0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418751)
  store %struct.Memory* %call_418751, %struct.Memory** %MEMORY

  ; Code: .L_418758:	 RIP: 418758	 Bytes: 0
  br label %block_.L_418758
block_.L_418758:

  ; Code: cmpl $0x4, -0x18(%rbp)	 RIP: 418758	 Bytes: 4
  %loadMem_418758 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418758 = call %struct.Memory* @routine_cmpl__0x4__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418758)
  store %struct.Memory* %call_418758, %struct.Memory** %MEMORY

  ; Code: jge .L_418850	 RIP: 41875c	 Bytes: 6
  %loadMem_41875c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41875c = call %struct.Memory* @routine_jge_.L_418850(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41875c, i8* %BRANCH_TAKEN, i64 244, i64 6, i64 6)
  store %struct.Memory* %call_41875c, %struct.Memory** %MEMORY

  %loadBr_41875c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41875c = icmp eq i8 %loadBr_41875c, 1
  br i1 %cmpBr_41875c, label %block_.L_418850, label %block_418762

block_418762:
  ; Code: movq 0x6cb900, %rax	 RIP: 418762	 Bytes: 8
  %loadMem_418762 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418762 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418762)
  store %struct.Memory* %call_418762, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, 0x18(%rax)	 RIP: 41876a	 Bytes: 4
  %loadMem_41876a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41876a = call %struct.Memory* @routine_cmpl__0x2__0x18__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41876a)
  store %struct.Memory* %call_41876a, %struct.Memory** %MEMORY

  ; Code: jne .L_4187db	 RIP: 41876e	 Bytes: 6
  %loadMem_41876e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41876e = call %struct.Memory* @routine_jne_.L_4187db(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41876e, i8* %BRANCH_TAKEN, i64 109, i64 6, i64 6)
  store %struct.Memory* %call_41876e, %struct.Memory** %MEMORY

  %loadBr_41876e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41876e = icmp eq i8 %loadBr_41876e, 1
  br i1 %cmpBr_41876e, label %block_.L_4187db, label %block_418774

block_418774:
  ; Code: movq $0x4b40b0, %rax	 RIP: 418774	 Bytes: 10
  %loadMem_418774 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418774 = call %struct.Memory* @routine_movq__0x4b40b0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418774)
  store %struct.Memory* %call_418774, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 41877e	 Bytes: 4
  %loadMem_41877e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41877e = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41877e)
  store %struct.Memory* %call_41877e, %struct.Memory** %MEMORY

  ; Code: addq $0x120, %rcx	 RIP: 418782	 Bytes: 7
  %loadMem_418782 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418782 = call %struct.Memory* @routine_addq__0x120___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418782)
  store %struct.Memory* %call_418782, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 418789	 Bytes: 4
  %loadMem_418789 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418789 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418789)
  store %struct.Memory* %call_418789, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rdx	 RIP: 41878d	 Bytes: 4
  %loadMem_41878d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41878d = call %struct.Memory* @routine_shlq__0x6___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41878d)
  store %struct.Memory* %call_41878d, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 418791	 Bytes: 3
  %loadMem_418791 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418791 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418791)
  store %struct.Memory* %call_418791, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rdx	 RIP: 418794	 Bytes: 4
  %loadMem_418794 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418794 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418794)
  store %struct.Memory* %call_418794, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rdx	 RIP: 418798	 Bytes: 4
  %loadMem_418798 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418798 = call %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418798)
  store %struct.Memory* %call_418798, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 41879c	 Bytes: 3
  %loadMem_41879c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41879c = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41879c)
  store %struct.Memory* %call_41879c, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rdx	 RIP: 41879f	 Bytes: 8
  %loadMem_41879f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41879f = call %struct.Memory* @routine_movq_0x6cb900___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41879f)
  store %struct.Memory* %call_41879f, %struct.Memory** %MEMORY

  ; Code: movslq 0x11b48(%rdx), %rdx	 RIP: 4187a7	 Bytes: 7
  %loadMem_4187a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4187a7 = call %struct.Memory* @routine_movslq_0x11b48__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4187a7)
  store %struct.Memory* %call_4187a7, %struct.Memory** %MEMORY

  ; Code: shlq $0x8, %rdx	 RIP: 4187ae	 Bytes: 4
  %loadMem_4187ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4187ae = call %struct.Memory* @routine_shlq__0x8___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4187ae)
  store %struct.Memory* %call_4187ae, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 4187b2	 Bytes: 3
  %loadMem_4187b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4187b2 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4187b2)
  store %struct.Memory* %call_4187b2, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 4187b5	 Bytes: 4
  %loadMem_4187b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4187b5 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4187b5)
  store %struct.Memory* %call_4187b5, %struct.Memory** %MEMORY

  ; Code: shlq $0x5, %rdx	 RIP: 4187b9	 Bytes: 4
  %loadMem_4187b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4187b9 = call %struct.Memory* @routine_shlq__0x5___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4187b9)
  store %struct.Memory* %call_4187b9, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 4187bd	 Bytes: 3
  %loadMem_4187bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4187bd = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4187bd)
  store %struct.Memory* %call_4187bd, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rdx	 RIP: 4187c0	 Bytes: 4
  %loadMem_4187c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4187c0 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4187c0)
  store %struct.Memory* %call_4187c0, %struct.Memory** %MEMORY

  ; Code: shlq $0x3, %rdx	 RIP: 4187c4	 Bytes: 4
  %loadMem_4187c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4187c4 = call %struct.Memory* @routine_shlq__0x3___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4187c4)
  store %struct.Memory* %call_4187c4, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 4187c8	 Bytes: 3
  %loadMem_4187c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4187c8 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4187c8)
  store %struct.Memory* %call_4187c8, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 4187cb	 Bytes: 3
  %loadMem_4187cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4187cb = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4187cb)
  store %struct.Memory* %call_4187cb, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 4187ce	 Bytes: 3
  %loadMem_4187ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4187ce = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4187ce)
  store %struct.Memory* %call_4187ce, %struct.Memory** %MEMORY

  ; Code: callq .biari_init_context	 RIP: 4187d1	 Bytes: 5
  %loadMem1_4187d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4187d1 = call %struct.Memory* @routine_callq_.biari_init_context(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4187d1, i64 -90945, i64 5, i64 5)
  store %struct.Memory* %call1_4187d1, %struct.Memory** %MEMORY

  %loadMem2_4187d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4187d1 = load i64, i64* %3
  %call2_4187d1 = call %struct.Memory* @sub_402490.biari_init_context(%struct.State* %0, i64  %loadPC_4187d1, %struct.Memory* %loadMem2_4187d1)
  store %struct.Memory* %call2_4187d1, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41883d	 RIP: 4187d6	 Bytes: 5
  %loadMem_4187d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4187d6 = call %struct.Memory* @routine_jmpq_.L_41883d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4187d6, i64 103, i64 5)
  store %struct.Memory* %call_4187d6, %struct.Memory** %MEMORY

  br label %block_.L_41883d

  ; Code: .L_4187db:	 RIP: 4187db	 Bytes: 0
block_.L_4187db:

  ; Code: movq $0x4b41b0, %rax	 RIP: 4187db	 Bytes: 10
  %loadMem_4187db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4187db = call %struct.Memory* @routine_movq__0x4b41b0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4187db)
  store %struct.Memory* %call_4187db, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4187e5	 Bytes: 4
  %loadMem_4187e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4187e5 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4187e5)
  store %struct.Memory* %call_4187e5, %struct.Memory** %MEMORY

  ; Code: addq $0x120, %rcx	 RIP: 4187e9	 Bytes: 7
  %loadMem_4187e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4187e9 = call %struct.Memory* @routine_addq__0x120___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4187e9)
  store %struct.Memory* %call_4187e9, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 4187f0	 Bytes: 4
  %loadMem_4187f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4187f0 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4187f0)
  store %struct.Memory* %call_4187f0, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rdx	 RIP: 4187f4	 Bytes: 4
  %loadMem_4187f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4187f4 = call %struct.Memory* @routine_shlq__0x6___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4187f4)
  store %struct.Memory* %call_4187f4, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 4187f8	 Bytes: 3
  %loadMem_4187f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4187f8 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4187f8)
  store %struct.Memory* %call_4187f8, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rdx	 RIP: 4187fb	 Bytes: 4
  %loadMem_4187fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4187fb = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4187fb)
  store %struct.Memory* %call_4187fb, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rdx	 RIP: 4187ff	 Bytes: 4
  %loadMem_4187ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4187ff = call %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4187ff)
  store %struct.Memory* %call_4187ff, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 418803	 Bytes: 3
  %loadMem_418803 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418803 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418803)
  store %struct.Memory* %call_418803, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rdx	 RIP: 418806	 Bytes: 8
  %loadMem_418806 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418806 = call %struct.Memory* @routine_movq_0x6cb900___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418806)
  store %struct.Memory* %call_418806, %struct.Memory** %MEMORY

  ; Code: movslq 0x11b48(%rdx), %rdx	 RIP: 41880e	 Bytes: 7
  %loadMem_41880e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41880e = call %struct.Memory* @routine_movslq_0x11b48__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41880e)
  store %struct.Memory* %call_41880e, %struct.Memory** %MEMORY

  ; Code: shlq $0x8, %rdx	 RIP: 418815	 Bytes: 4
  %loadMem_418815 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418815 = call %struct.Memory* @routine_shlq__0x8___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418815)
  store %struct.Memory* %call_418815, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 418819	 Bytes: 3
  %loadMem_418819 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418819 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418819)
  store %struct.Memory* %call_418819, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 41881c	 Bytes: 4
  %loadMem_41881c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41881c = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41881c)
  store %struct.Memory* %call_41881c, %struct.Memory** %MEMORY

  ; Code: shlq $0x5, %rdx	 RIP: 418820	 Bytes: 4
  %loadMem_418820 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418820 = call %struct.Memory* @routine_shlq__0x5___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418820)
  store %struct.Memory* %call_418820, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 418824	 Bytes: 3
  %loadMem_418824 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418824 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418824)
  store %struct.Memory* %call_418824, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rdx	 RIP: 418827	 Bytes: 4
  %loadMem_418827 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418827 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418827)
  store %struct.Memory* %call_418827, %struct.Memory** %MEMORY

  ; Code: shlq $0x3, %rdx	 RIP: 41882b	 Bytes: 4
  %loadMem_41882b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41882b = call %struct.Memory* @routine_shlq__0x3___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41882b)
  store %struct.Memory* %call_41882b, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 41882f	 Bytes: 3
  %loadMem_41882f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41882f = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41882f)
  store %struct.Memory* %call_41882f, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 418832	 Bytes: 3
  %loadMem_418832 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418832 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418832)
  store %struct.Memory* %call_418832, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 418835	 Bytes: 3
  %loadMem_418835 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418835 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418835)
  store %struct.Memory* %call_418835, %struct.Memory** %MEMORY

  ; Code: callq .biari_init_context	 RIP: 418838	 Bytes: 5
  %loadMem1_418838 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_418838 = call %struct.Memory* @routine_callq_.biari_init_context(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_418838, i64 -91048, i64 5, i64 5)
  store %struct.Memory* %call1_418838, %struct.Memory** %MEMORY

  %loadMem2_418838 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_418838 = load i64, i64* %3
  %call2_418838 = call %struct.Memory* @sub_402490.biari_init_context(%struct.State* %0, i64  %loadPC_418838, %struct.Memory* %loadMem2_418838)
  store %struct.Memory* %call2_418838, %struct.Memory** %MEMORY

  ; Code: .L_41883d:	 RIP: 41883d	 Bytes: 0
  br label %block_.L_41883d
block_.L_41883d:

  ; Code: jmpq .L_418842	 RIP: 41883d	 Bytes: 5
  %loadMem_41883d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41883d = call %struct.Memory* @routine_jmpq_.L_418842(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41883d, i64 5, i64 5)
  store %struct.Memory* %call_41883d, %struct.Memory** %MEMORY

  br label %block_.L_418842

  ; Code: .L_418842:	 RIP: 418842	 Bytes: 0
block_.L_418842:

  ; Code: movl -0x18(%rbp), %eax	 RIP: 418842	 Bytes: 3
  %loadMem_418842 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418842 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418842)
  store %struct.Memory* %call_418842, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 418845	 Bytes: 3
  %loadMem_418845 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418845 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418845)
  store %struct.Memory* %call_418845, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x18(%rbp)	 RIP: 418848	 Bytes: 3
  %loadMem_418848 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418848 = call %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418848)
  store %struct.Memory* %call_418848, %struct.Memory** %MEMORY

  ; Code: jmpq .L_418758	 RIP: 41884b	 Bytes: 5
  %loadMem_41884b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41884b = call %struct.Memory* @routine_jmpq_.L_418758(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41884b, i64 -243, i64 5)
  store %struct.Memory* %call_41884b, %struct.Memory** %MEMORY

  br label %block_.L_418758

  ; Code: .L_418850:	 RIP: 418850	 Bytes: 0
block_.L_418850:

  ; Code: jmpq .L_418855	 RIP: 418850	 Bytes: 5
  %loadMem_418850 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418850 = call %struct.Memory* @routine_jmpq_.L_418855(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418850, i64 5, i64 5)
  store %struct.Memory* %call_418850, %struct.Memory** %MEMORY

  br label %block_.L_418855

  ; Code: .L_418855:	 RIP: 418855	 Bytes: 0
block_.L_418855:

  ; Code: movl -0x14(%rbp), %eax	 RIP: 418855	 Bytes: 3
  %loadMem_418855 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418855 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418855)
  store %struct.Memory* %call_418855, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 418858	 Bytes: 3
  %loadMem_418858 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418858 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418858)
  store %struct.Memory* %call_418858, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x14(%rbp)	 RIP: 41885b	 Bytes: 3
  %loadMem_41885b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41885b = call %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41885b)
  store %struct.Memory* %call_41885b, %struct.Memory** %MEMORY

  ; Code: jmpq .L_418747	 RIP: 41885e	 Bytes: 5
  %loadMem_41885e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41885e = call %struct.Memory* @routine_jmpq_.L_418747(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41885e, i64 -279, i64 5)
  store %struct.Memory* %call_41885e, %struct.Memory** %MEMORY

  br label %block_.L_418747

  ; Code: .L_418863:	 RIP: 418863	 Bytes: 0
block_.L_418863:

  ; Code: movl $0x0, -0x14(%rbp)	 RIP: 418863	 Bytes: 7
  %loadMem_418863 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418863 = call %struct.Memory* @routine_movl__0x0__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418863)
  store %struct.Memory* %call_418863, %struct.Memory** %MEMORY

  ; Code: .L_41886a:	 RIP: 41886a	 Bytes: 0
  br label %block_.L_41886a
block_.L_41886a:

  ; Code: cmpl $0xa, -0x14(%rbp)	 RIP: 41886a	 Bytes: 4
  %loadMem_41886a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41886a = call %struct.Memory* @routine_cmpl__0xa__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41886a)
  store %struct.Memory* %call_41886a, %struct.Memory** %MEMORY

  ; Code: jge .L_418992	 RIP: 41886e	 Bytes: 6
  %loadMem_41886e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41886e = call %struct.Memory* @routine_jge_.L_418992(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41886e, i8* %BRANCH_TAKEN, i64 292, i64 6, i64 6)
  store %struct.Memory* %call_41886e, %struct.Memory** %MEMORY

  %loadBr_41886e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41886e = icmp eq i8 %loadBr_41886e, 1
  br i1 %cmpBr_41886e, label %block_.L_418992, label %block_418874

block_418874:
  ; Code: movl $0x0, -0x18(%rbp)	 RIP: 418874	 Bytes: 7
  %loadMem_418874 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418874 = call %struct.Memory* @routine_movl__0x0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418874)
  store %struct.Memory* %call_418874, %struct.Memory** %MEMORY

  ; Code: .L_41887b:	 RIP: 41887b	 Bytes: 0
  br label %block_.L_41887b
block_.L_41887b:

  ; Code: cmpl $0xf, -0x18(%rbp)	 RIP: 41887b	 Bytes: 4
  %loadMem_41887b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41887b = call %struct.Memory* @routine_cmpl__0xf__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41887b)
  store %struct.Memory* %call_41887b, %struct.Memory** %MEMORY

  ; Code: jge .L_41897f	 RIP: 41887f	 Bytes: 6
  %loadMem_41887f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41887f = call %struct.Memory* @routine_jge_.L_41897f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41887f, i8* %BRANCH_TAKEN, i64 256, i64 6, i64 6)
  store %struct.Memory* %call_41887f, %struct.Memory** %MEMORY

  %loadBr_41887f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41887f = icmp eq i8 %loadBr_41887f, 1
  br i1 %cmpBr_41887f, label %block_.L_41897f, label %block_418885

block_418885:
  ; Code: movq 0x6cb900, %rax	 RIP: 418885	 Bytes: 8
  %loadMem_418885 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418885 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418885)
  store %struct.Memory* %call_418885, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, 0x18(%rax)	 RIP: 41888d	 Bytes: 4
  %loadMem_41888d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41888d = call %struct.Memory* @routine_cmpl__0x2__0x18__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41888d)
  store %struct.Memory* %call_41888d, %struct.Memory** %MEMORY

  ; Code: jne .L_418904	 RIP: 418891	 Bytes: 6
  %loadMem_418891 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418891 = call %struct.Memory* @routine_jne_.L_418904(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418891, i8* %BRANCH_TAKEN, i64 115, i64 6, i64 6)
  store %struct.Memory* %call_418891, %struct.Memory** %MEMORY

  %loadBr_418891 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_418891 = icmp eq i8 %loadBr_418891, 1
  br i1 %cmpBr_418891, label %block_.L_418904, label %block_418897

block_418897:
  ; Code: movq $0x4b44b0, %rax	 RIP: 418897	 Bytes: 10
  %loadMem_418897 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418897 = call %struct.Memory* @routine_movq__0x4b44b0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418897)
  store %struct.Memory* %call_418897, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4188a1	 Bytes: 4
  %loadMem_4188a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4188a1 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4188a1)
  store %struct.Memory* %call_4188a1, %struct.Memory** %MEMORY

  ; Code: addq $0x3a0, %rcx	 RIP: 4188a5	 Bytes: 7
  %loadMem_4188a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4188a5 = call %struct.Memory* @routine_addq__0x3a0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4188a5)
  store %struct.Memory* %call_4188a5, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 4188ac	 Bytes: 4
  %loadMem_4188ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4188ac = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4188ac)
  store %struct.Memory* %call_4188ac, %struct.Memory** %MEMORY

  ; Code: imulq $0xf0, %rdx, %rdx	 RIP: 4188b0	 Bytes: 7
  %loadMem_4188b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4188b0 = call %struct.Memory* @routine_imulq__0xf0___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4188b0)
  store %struct.Memory* %call_4188b0, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 4188b7	 Bytes: 3
  %loadMem_4188b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4188b7 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4188b7)
  store %struct.Memory* %call_4188b7, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rdx	 RIP: 4188ba	 Bytes: 4
  %loadMem_4188ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4188ba = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4188ba)
  store %struct.Memory* %call_4188ba, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rdx	 RIP: 4188be	 Bytes: 4
  %loadMem_4188be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4188be = call %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4188be)
  store %struct.Memory* %call_4188be, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 4188c2	 Bytes: 3
  %loadMem_4188c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4188c2 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4188c2)
  store %struct.Memory* %call_4188c2, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rdx	 RIP: 4188c5	 Bytes: 8
  %loadMem_4188c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4188c5 = call %struct.Memory* @routine_movq_0x6cb900___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4188c5)
  store %struct.Memory* %call_4188c5, %struct.Memory** %MEMORY

  ; Code: movslq 0x11b48(%rdx), %rdx	 RIP: 4188cd	 Bytes: 7
  %loadMem_4188cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4188cd = call %struct.Memory* @routine_movslq_0x11b48__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4188cd)
  store %struct.Memory* %call_4188cd, %struct.Memory** %MEMORY

  ; Code: imulq $0x3c0, %rdx, %rdx	 RIP: 4188d4	 Bytes: 7
  %loadMem_4188d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4188d4 = call %struct.Memory* @routine_imulq__0x3c0___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4188d4)
  store %struct.Memory* %call_4188d4, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 4188db	 Bytes: 3
  %loadMem_4188db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4188db = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4188db)
  store %struct.Memory* %call_4188db, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 4188de	 Bytes: 4
  %loadMem_4188de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4188de = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4188de)
  store %struct.Memory* %call_4188de, %struct.Memory** %MEMORY

  ; Code: imulq $0x78, %rdx, %rdx	 RIP: 4188e2	 Bytes: 4
  %loadMem_4188e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4188e2 = call %struct.Memory* @routine_imulq__0x78___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4188e2)
  store %struct.Memory* %call_4188e2, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 4188e6	 Bytes: 3
  %loadMem_4188e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4188e6 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4188e6)
  store %struct.Memory* %call_4188e6, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rdx	 RIP: 4188e9	 Bytes: 4
  %loadMem_4188e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4188e9 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4188e9)
  store %struct.Memory* %call_4188e9, %struct.Memory** %MEMORY

  ; Code: shlq $0x3, %rdx	 RIP: 4188ed	 Bytes: 4
  %loadMem_4188ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4188ed = call %struct.Memory* @routine_shlq__0x3___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4188ed)
  store %struct.Memory* %call_4188ed, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 4188f1	 Bytes: 3
  %loadMem_4188f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4188f1 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4188f1)
  store %struct.Memory* %call_4188f1, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 4188f4	 Bytes: 3
  %loadMem_4188f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4188f4 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4188f4)
  store %struct.Memory* %call_4188f4, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 4188f7	 Bytes: 3
  %loadMem_4188f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4188f7 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4188f7)
  store %struct.Memory* %call_4188f7, %struct.Memory** %MEMORY

  ; Code: callq .biari_init_context	 RIP: 4188fa	 Bytes: 5
  %loadMem1_4188fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4188fa = call %struct.Memory* @routine_callq_.biari_init_context(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4188fa, i64 -91242, i64 5, i64 5)
  store %struct.Memory* %call1_4188fa, %struct.Memory** %MEMORY

  %loadMem2_4188fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4188fa = load i64, i64* %3
  %call2_4188fa = call %struct.Memory* @sub_402490.biari_init_context(%struct.State* %0, i64  %loadPC_4188fa, %struct.Memory* %loadMem2_4188fa)
  store %struct.Memory* %call2_4188fa, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41896c	 RIP: 4188ff	 Bytes: 5
  %loadMem_4188ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4188ff = call %struct.Memory* @routine_jmpq_.L_41896c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4188ff, i64 109, i64 5)
  store %struct.Memory* %call_4188ff, %struct.Memory** %MEMORY

  br label %block_.L_41896c

  ; Code: .L_418904:	 RIP: 418904	 Bytes: 0
block_.L_418904:

  ; Code: movq $0x4b4870, %rax	 RIP: 418904	 Bytes: 10
  %loadMem_418904 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418904 = call %struct.Memory* @routine_movq__0x4b4870___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418904)
  store %struct.Memory* %call_418904, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 41890e	 Bytes: 4
  %loadMem_41890e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41890e = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41890e)
  store %struct.Memory* %call_41890e, %struct.Memory** %MEMORY

  ; Code: addq $0x3a0, %rcx	 RIP: 418912	 Bytes: 7
  %loadMem_418912 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418912 = call %struct.Memory* @routine_addq__0x3a0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418912)
  store %struct.Memory* %call_418912, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 418919	 Bytes: 4
  %loadMem_418919 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418919 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418919)
  store %struct.Memory* %call_418919, %struct.Memory** %MEMORY

  ; Code: imulq $0xf0, %rdx, %rdx	 RIP: 41891d	 Bytes: 7
  %loadMem_41891d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41891d = call %struct.Memory* @routine_imulq__0xf0___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41891d)
  store %struct.Memory* %call_41891d, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 418924	 Bytes: 3
  %loadMem_418924 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418924 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418924)
  store %struct.Memory* %call_418924, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rdx	 RIP: 418927	 Bytes: 4
  %loadMem_418927 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418927 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418927)
  store %struct.Memory* %call_418927, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rdx	 RIP: 41892b	 Bytes: 4
  %loadMem_41892b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41892b = call %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41892b)
  store %struct.Memory* %call_41892b, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 41892f	 Bytes: 3
  %loadMem_41892f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41892f = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41892f)
  store %struct.Memory* %call_41892f, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rdx	 RIP: 418932	 Bytes: 8
  %loadMem_418932 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418932 = call %struct.Memory* @routine_movq_0x6cb900___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418932)
  store %struct.Memory* %call_418932, %struct.Memory** %MEMORY

  ; Code: movslq 0x11b48(%rdx), %rdx	 RIP: 41893a	 Bytes: 7
  %loadMem_41893a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41893a = call %struct.Memory* @routine_movslq_0x11b48__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41893a)
  store %struct.Memory* %call_41893a, %struct.Memory** %MEMORY

  ; Code: imulq $0x3c0, %rdx, %rdx	 RIP: 418941	 Bytes: 7
  %loadMem_418941 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418941 = call %struct.Memory* @routine_imulq__0x3c0___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418941)
  store %struct.Memory* %call_418941, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 418948	 Bytes: 3
  %loadMem_418948 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418948 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418948)
  store %struct.Memory* %call_418948, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 41894b	 Bytes: 4
  %loadMem_41894b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41894b = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41894b)
  store %struct.Memory* %call_41894b, %struct.Memory** %MEMORY

  ; Code: imulq $0x78, %rdx, %rdx	 RIP: 41894f	 Bytes: 4
  %loadMem_41894f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41894f = call %struct.Memory* @routine_imulq__0x78___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41894f)
  store %struct.Memory* %call_41894f, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 418953	 Bytes: 3
  %loadMem_418953 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418953 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418953)
  store %struct.Memory* %call_418953, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rdx	 RIP: 418956	 Bytes: 4
  %loadMem_418956 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418956 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418956)
  store %struct.Memory* %call_418956, %struct.Memory** %MEMORY

  ; Code: shlq $0x3, %rdx	 RIP: 41895a	 Bytes: 4
  %loadMem_41895a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41895a = call %struct.Memory* @routine_shlq__0x3___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41895a)
  store %struct.Memory* %call_41895a, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 41895e	 Bytes: 3
  %loadMem_41895e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41895e = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41895e)
  store %struct.Memory* %call_41895e, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 418961	 Bytes: 3
  %loadMem_418961 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418961 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418961)
  store %struct.Memory* %call_418961, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 418964	 Bytes: 3
  %loadMem_418964 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418964 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418964)
  store %struct.Memory* %call_418964, %struct.Memory** %MEMORY

  ; Code: callq .biari_init_context	 RIP: 418967	 Bytes: 5
  %loadMem1_418967 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_418967 = call %struct.Memory* @routine_callq_.biari_init_context(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_418967, i64 -91351, i64 5, i64 5)
  store %struct.Memory* %call1_418967, %struct.Memory** %MEMORY

  %loadMem2_418967 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_418967 = load i64, i64* %3
  %call2_418967 = call %struct.Memory* @sub_402490.biari_init_context(%struct.State* %0, i64  %loadPC_418967, %struct.Memory* %loadMem2_418967)
  store %struct.Memory* %call2_418967, %struct.Memory** %MEMORY

  ; Code: .L_41896c:	 RIP: 41896c	 Bytes: 0
  br label %block_.L_41896c
block_.L_41896c:

  ; Code: jmpq .L_418971	 RIP: 41896c	 Bytes: 5
  %loadMem_41896c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41896c = call %struct.Memory* @routine_jmpq_.L_418971(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41896c, i64 5, i64 5)
  store %struct.Memory* %call_41896c, %struct.Memory** %MEMORY

  br label %block_.L_418971

  ; Code: .L_418971:	 RIP: 418971	 Bytes: 0
block_.L_418971:

  ; Code: movl -0x18(%rbp), %eax	 RIP: 418971	 Bytes: 3
  %loadMem_418971 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418971 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418971)
  store %struct.Memory* %call_418971, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 418974	 Bytes: 3
  %loadMem_418974 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418974 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418974)
  store %struct.Memory* %call_418974, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x18(%rbp)	 RIP: 418977	 Bytes: 3
  %loadMem_418977 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418977 = call %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418977)
  store %struct.Memory* %call_418977, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41887b	 RIP: 41897a	 Bytes: 5
  %loadMem_41897a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41897a = call %struct.Memory* @routine_jmpq_.L_41887b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41897a, i64 -255, i64 5)
  store %struct.Memory* %call_41897a, %struct.Memory** %MEMORY

  br label %block_.L_41887b

  ; Code: .L_41897f:	 RIP: 41897f	 Bytes: 0
block_.L_41897f:

  ; Code: jmpq .L_418984	 RIP: 41897f	 Bytes: 5
  %loadMem_41897f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41897f = call %struct.Memory* @routine_jmpq_.L_418984(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41897f, i64 5, i64 5)
  store %struct.Memory* %call_41897f, %struct.Memory** %MEMORY

  br label %block_.L_418984

  ; Code: .L_418984:	 RIP: 418984	 Bytes: 0
block_.L_418984:

  ; Code: movl -0x14(%rbp), %eax	 RIP: 418984	 Bytes: 3
  %loadMem_418984 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418984 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418984)
  store %struct.Memory* %call_418984, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 418987	 Bytes: 3
  %loadMem_418987 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418987 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418987)
  store %struct.Memory* %call_418987, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x14(%rbp)	 RIP: 41898a	 Bytes: 3
  %loadMem_41898a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41898a = call %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41898a)
  store %struct.Memory* %call_41898a, %struct.Memory** %MEMORY

  ; Code: jmpq .L_41886a	 RIP: 41898d	 Bytes: 5
  %loadMem_41898d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41898d = call %struct.Memory* @routine_jmpq_.L_41886a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41898d, i64 -291, i64 5)
  store %struct.Memory* %call_41898d, %struct.Memory** %MEMORY

  br label %block_.L_41886a

  ; Code: .L_418992:	 RIP: 418992	 Bytes: 0
block_.L_418992:

  ; Code: movl $0x0, -0x14(%rbp)	 RIP: 418992	 Bytes: 7
  %loadMem_418992 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418992 = call %struct.Memory* @routine_movl__0x0__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418992)
  store %struct.Memory* %call_418992, %struct.Memory** %MEMORY

  ; Code: .L_418999:	 RIP: 418999	 Bytes: 0
  br label %block_.L_418999
block_.L_418999:

  ; Code: cmpl $0xa, -0x14(%rbp)	 RIP: 418999	 Bytes: 4
  %loadMem_418999 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418999 = call %struct.Memory* @routine_cmpl__0xa__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418999)
  store %struct.Memory* %call_418999, %struct.Memory** %MEMORY

  ; Code: jge .L_418ac1	 RIP: 41899d	 Bytes: 6
  %loadMem_41899d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_41899d = call %struct.Memory* @routine_jge_.L_418ac1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_41899d, i8* %BRANCH_TAKEN, i64 292, i64 6, i64 6)
  store %struct.Memory* %call_41899d, %struct.Memory** %MEMORY

  %loadBr_41899d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41899d = icmp eq i8 %loadBr_41899d, 1
  br i1 %cmpBr_41899d, label %block_.L_418ac1, label %block_4189a3

block_4189a3:
  ; Code: movl $0x0, -0x18(%rbp)	 RIP: 4189a3	 Bytes: 7
  %loadMem_4189a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4189a3 = call %struct.Memory* @routine_movl__0x0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4189a3)
  store %struct.Memory* %call_4189a3, %struct.Memory** %MEMORY

  ; Code: .L_4189aa:	 RIP: 4189aa	 Bytes: 0
  br label %block_.L_4189aa
block_.L_4189aa:

  ; Code: cmpl $0xf, -0x18(%rbp)	 RIP: 4189aa	 Bytes: 4
  %loadMem_4189aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4189aa = call %struct.Memory* @routine_cmpl__0xf__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4189aa)
  store %struct.Memory* %call_4189aa, %struct.Memory** %MEMORY

  ; Code: jge .L_418aae	 RIP: 4189ae	 Bytes: 6
  %loadMem_4189ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4189ae = call %struct.Memory* @routine_jge_.L_418aae(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4189ae, i8* %BRANCH_TAKEN, i64 256, i64 6, i64 6)
  store %struct.Memory* %call_4189ae, %struct.Memory** %MEMORY

  %loadBr_4189ae = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4189ae = icmp eq i8 %loadBr_4189ae, 1
  br i1 %cmpBr_4189ae, label %block_.L_418aae, label %block_4189b4

block_4189b4:
  ; Code: movq 0x6cb900, %rax	 RIP: 4189b4	 Bytes: 8
  %loadMem_4189b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4189b4 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4189b4)
  store %struct.Memory* %call_4189b4, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, 0x18(%rax)	 RIP: 4189bc	 Bytes: 4
  %loadMem_4189bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4189bc = call %struct.Memory* @routine_cmpl__0x2__0x18__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4189bc)
  store %struct.Memory* %call_4189bc, %struct.Memory** %MEMORY

  ; Code: jne .L_418a33	 RIP: 4189c0	 Bytes: 6
  %loadMem_4189c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4189c0 = call %struct.Memory* @routine_jne_.L_418a33(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4189c0, i8* %BRANCH_TAKEN, i64 115, i64 6, i64 6)
  store %struct.Memory* %call_4189c0, %struct.Memory** %MEMORY

  %loadBr_4189c0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4189c0 = icmp eq i8 %loadBr_4189c0, 1
  br i1 %cmpBr_4189c0, label %block_.L_418a33, label %block_4189c6

block_4189c6:
  ; Code: movq $0x4b53b0, %rax	 RIP: 4189c6	 Bytes: 10
  %loadMem_4189c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4189c6 = call %struct.Memory* @routine_movq__0x4b53b0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4189c6)
  store %struct.Memory* %call_4189c6, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4189d0	 Bytes: 4
  %loadMem_4189d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4189d0 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4189d0)
  store %struct.Memory* %call_4189d0, %struct.Memory** %MEMORY

  ; Code: addq $0xd00, %rcx	 RIP: 4189d4	 Bytes: 7
  %loadMem_4189d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4189d4 = call %struct.Memory* @routine_addq__0xd00___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4189d4)
  store %struct.Memory* %call_4189d4, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 4189db	 Bytes: 4
  %loadMem_4189db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4189db = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4189db)
  store %struct.Memory* %call_4189db, %struct.Memory** %MEMORY

  ; Code: imulq $0xf0, %rdx, %rdx	 RIP: 4189df	 Bytes: 7
  %loadMem_4189df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4189df = call %struct.Memory* @routine_imulq__0xf0___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4189df)
  store %struct.Memory* %call_4189df, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 4189e6	 Bytes: 3
  %loadMem_4189e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4189e6 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4189e6)
  store %struct.Memory* %call_4189e6, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rdx	 RIP: 4189e9	 Bytes: 4
  %loadMem_4189e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4189e9 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4189e9)
  store %struct.Memory* %call_4189e9, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rdx	 RIP: 4189ed	 Bytes: 4
  %loadMem_4189ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4189ed = call %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4189ed)
  store %struct.Memory* %call_4189ed, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 4189f1	 Bytes: 3
  %loadMem_4189f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4189f1 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4189f1)
  store %struct.Memory* %call_4189f1, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rdx	 RIP: 4189f4	 Bytes: 8
  %loadMem_4189f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4189f4 = call %struct.Memory* @routine_movq_0x6cb900___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4189f4)
  store %struct.Memory* %call_4189f4, %struct.Memory** %MEMORY

  ; Code: movslq 0x11b48(%rdx), %rdx	 RIP: 4189fc	 Bytes: 7
  %loadMem_4189fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4189fc = call %struct.Memory* @routine_movslq_0x11b48__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4189fc)
  store %struct.Memory* %call_4189fc, %struct.Memory** %MEMORY

  ; Code: imulq $0x3c0, %rdx, %rdx	 RIP: 418a03	 Bytes: 7
  %loadMem_418a03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418a03 = call %struct.Memory* @routine_imulq__0x3c0___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418a03)
  store %struct.Memory* %call_418a03, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 418a0a	 Bytes: 3
  %loadMem_418a0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418a0a = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418a0a)
  store %struct.Memory* %call_418a0a, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 418a0d	 Bytes: 4
  %loadMem_418a0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418a0d = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418a0d)
  store %struct.Memory* %call_418a0d, %struct.Memory** %MEMORY

  ; Code: imulq $0x78, %rdx, %rdx	 RIP: 418a11	 Bytes: 4
  %loadMem_418a11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418a11 = call %struct.Memory* @routine_imulq__0x78___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418a11)
  store %struct.Memory* %call_418a11, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 418a15	 Bytes: 3
  %loadMem_418a15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418a15 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418a15)
  store %struct.Memory* %call_418a15, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rdx	 RIP: 418a18	 Bytes: 4
  %loadMem_418a18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418a18 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418a18)
  store %struct.Memory* %call_418a18, %struct.Memory** %MEMORY

  ; Code: shlq $0x3, %rdx	 RIP: 418a1c	 Bytes: 4
  %loadMem_418a1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418a1c = call %struct.Memory* @routine_shlq__0x3___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418a1c)
  store %struct.Memory* %call_418a1c, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 418a20	 Bytes: 3
  %loadMem_418a20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418a20 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418a20)
  store %struct.Memory* %call_418a20, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 418a23	 Bytes: 3
  %loadMem_418a23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418a23 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418a23)
  store %struct.Memory* %call_418a23, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 418a26	 Bytes: 3
  %loadMem_418a26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418a26 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418a26)
  store %struct.Memory* %call_418a26, %struct.Memory** %MEMORY

  ; Code: callq .biari_init_context	 RIP: 418a29	 Bytes: 5
  %loadMem1_418a29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_418a29 = call %struct.Memory* @routine_callq_.biari_init_context(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_418a29, i64 -91545, i64 5, i64 5)
  store %struct.Memory* %call1_418a29, %struct.Memory** %MEMORY

  %loadMem2_418a29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_418a29 = load i64, i64* %3
  %call2_418a29 = call %struct.Memory* @sub_402490.biari_init_context(%struct.State* %0, i64  %loadPC_418a29, %struct.Memory* %loadMem2_418a29)
  store %struct.Memory* %call2_418a29, %struct.Memory** %MEMORY

  ; Code: jmpq .L_418a9b	 RIP: 418a2e	 Bytes: 5
  %loadMem_418a2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418a2e = call %struct.Memory* @routine_jmpq_.L_418a9b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418a2e, i64 109, i64 5)
  store %struct.Memory* %call_418a2e, %struct.Memory** %MEMORY

  br label %block_.L_418a9b

  ; Code: .L_418a33:	 RIP: 418a33	 Bytes: 0
block_.L_418a33:

  ; Code: movq $0x4b5770, %rax	 RIP: 418a33	 Bytes: 10
  %loadMem_418a33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418a33 = call %struct.Memory* @routine_movq__0x4b5770___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418a33)
  store %struct.Memory* %call_418a33, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 418a3d	 Bytes: 4
  %loadMem_418a3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418a3d = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418a3d)
  store %struct.Memory* %call_418a3d, %struct.Memory** %MEMORY

  ; Code: addq $0xd00, %rcx	 RIP: 418a41	 Bytes: 7
  %loadMem_418a41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418a41 = call %struct.Memory* @routine_addq__0xd00___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418a41)
  store %struct.Memory* %call_418a41, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 418a48	 Bytes: 4
  %loadMem_418a48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418a48 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418a48)
  store %struct.Memory* %call_418a48, %struct.Memory** %MEMORY

  ; Code: imulq $0xf0, %rdx, %rdx	 RIP: 418a4c	 Bytes: 7
  %loadMem_418a4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418a4c = call %struct.Memory* @routine_imulq__0xf0___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418a4c)
  store %struct.Memory* %call_418a4c, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 418a53	 Bytes: 3
  %loadMem_418a53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418a53 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418a53)
  store %struct.Memory* %call_418a53, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rdx	 RIP: 418a56	 Bytes: 4
  %loadMem_418a56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418a56 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418a56)
  store %struct.Memory* %call_418a56, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rdx	 RIP: 418a5a	 Bytes: 4
  %loadMem_418a5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418a5a = call %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418a5a)
  store %struct.Memory* %call_418a5a, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 418a5e	 Bytes: 3
  %loadMem_418a5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418a5e = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418a5e)
  store %struct.Memory* %call_418a5e, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rdx	 RIP: 418a61	 Bytes: 8
  %loadMem_418a61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418a61 = call %struct.Memory* @routine_movq_0x6cb900___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418a61)
  store %struct.Memory* %call_418a61, %struct.Memory** %MEMORY

  ; Code: movslq 0x11b48(%rdx), %rdx	 RIP: 418a69	 Bytes: 7
  %loadMem_418a69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418a69 = call %struct.Memory* @routine_movslq_0x11b48__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418a69)
  store %struct.Memory* %call_418a69, %struct.Memory** %MEMORY

  ; Code: imulq $0x3c0, %rdx, %rdx	 RIP: 418a70	 Bytes: 7
  %loadMem_418a70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418a70 = call %struct.Memory* @routine_imulq__0x3c0___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418a70)
  store %struct.Memory* %call_418a70, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 418a77	 Bytes: 3
  %loadMem_418a77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418a77 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418a77)
  store %struct.Memory* %call_418a77, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 418a7a	 Bytes: 4
  %loadMem_418a7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418a7a = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418a7a)
  store %struct.Memory* %call_418a7a, %struct.Memory** %MEMORY

  ; Code: imulq $0x78, %rdx, %rdx	 RIP: 418a7e	 Bytes: 4
  %loadMem_418a7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418a7e = call %struct.Memory* @routine_imulq__0x78___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418a7e)
  store %struct.Memory* %call_418a7e, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 418a82	 Bytes: 3
  %loadMem_418a82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418a82 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418a82)
  store %struct.Memory* %call_418a82, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rdx	 RIP: 418a85	 Bytes: 4
  %loadMem_418a85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418a85 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418a85)
  store %struct.Memory* %call_418a85, %struct.Memory** %MEMORY

  ; Code: shlq $0x3, %rdx	 RIP: 418a89	 Bytes: 4
  %loadMem_418a89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418a89 = call %struct.Memory* @routine_shlq__0x3___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418a89)
  store %struct.Memory* %call_418a89, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 418a8d	 Bytes: 3
  %loadMem_418a8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418a8d = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418a8d)
  store %struct.Memory* %call_418a8d, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 418a90	 Bytes: 3
  %loadMem_418a90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418a90 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418a90)
  store %struct.Memory* %call_418a90, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 418a93	 Bytes: 3
  %loadMem_418a93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418a93 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418a93)
  store %struct.Memory* %call_418a93, %struct.Memory** %MEMORY

  ; Code: callq .biari_init_context	 RIP: 418a96	 Bytes: 5
  %loadMem1_418a96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_418a96 = call %struct.Memory* @routine_callq_.biari_init_context(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_418a96, i64 -91654, i64 5, i64 5)
  store %struct.Memory* %call1_418a96, %struct.Memory** %MEMORY

  %loadMem2_418a96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_418a96 = load i64, i64* %3
  %call2_418a96 = call %struct.Memory* @sub_402490.biari_init_context(%struct.State* %0, i64  %loadPC_418a96, %struct.Memory* %loadMem2_418a96)
  store %struct.Memory* %call2_418a96, %struct.Memory** %MEMORY

  ; Code: .L_418a9b:	 RIP: 418a9b	 Bytes: 0
  br label %block_.L_418a9b
block_.L_418a9b:

  ; Code: jmpq .L_418aa0	 RIP: 418a9b	 Bytes: 5
  %loadMem_418a9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418a9b = call %struct.Memory* @routine_jmpq_.L_418aa0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418a9b, i64 5, i64 5)
  store %struct.Memory* %call_418a9b, %struct.Memory** %MEMORY

  br label %block_.L_418aa0

  ; Code: .L_418aa0:	 RIP: 418aa0	 Bytes: 0
block_.L_418aa0:

  ; Code: movl -0x18(%rbp), %eax	 RIP: 418aa0	 Bytes: 3
  %loadMem_418aa0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418aa0 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418aa0)
  store %struct.Memory* %call_418aa0, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 418aa3	 Bytes: 3
  %loadMem_418aa3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418aa3 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418aa3)
  store %struct.Memory* %call_418aa3, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x18(%rbp)	 RIP: 418aa6	 Bytes: 3
  %loadMem_418aa6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418aa6 = call %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418aa6)
  store %struct.Memory* %call_418aa6, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4189aa	 RIP: 418aa9	 Bytes: 5
  %loadMem_418aa9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418aa9 = call %struct.Memory* @routine_jmpq_.L_4189aa(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418aa9, i64 -255, i64 5)
  store %struct.Memory* %call_418aa9, %struct.Memory** %MEMORY

  br label %block_.L_4189aa

  ; Code: .L_418aae:	 RIP: 418aae	 Bytes: 0
block_.L_418aae:

  ; Code: jmpq .L_418ab3	 RIP: 418aae	 Bytes: 5
  %loadMem_418aae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418aae = call %struct.Memory* @routine_jmpq_.L_418ab3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418aae, i64 5, i64 5)
  store %struct.Memory* %call_418aae, %struct.Memory** %MEMORY

  br label %block_.L_418ab3

  ; Code: .L_418ab3:	 RIP: 418ab3	 Bytes: 0
block_.L_418ab3:

  ; Code: movl -0x14(%rbp), %eax	 RIP: 418ab3	 Bytes: 3
  %loadMem_418ab3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418ab3 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418ab3)
  store %struct.Memory* %call_418ab3, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 418ab6	 Bytes: 3
  %loadMem_418ab6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418ab6 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418ab6)
  store %struct.Memory* %call_418ab6, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x14(%rbp)	 RIP: 418ab9	 Bytes: 3
  %loadMem_418ab9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418ab9 = call %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418ab9)
  store %struct.Memory* %call_418ab9, %struct.Memory** %MEMORY

  ; Code: jmpq .L_418999	 RIP: 418abc	 Bytes: 5
  %loadMem_418abc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418abc = call %struct.Memory* @routine_jmpq_.L_418999(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418abc, i64 -291, i64 5)
  store %struct.Memory* %call_418abc, %struct.Memory** %MEMORY

  br label %block_.L_418999

  ; Code: .L_418ac1:	 RIP: 418ac1	 Bytes: 0
block_.L_418ac1:

  ; Code: movl $0x0, -0x14(%rbp)	 RIP: 418ac1	 Bytes: 7
  %loadMem_418ac1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418ac1 = call %struct.Memory* @routine_movl__0x0__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418ac1)
  store %struct.Memory* %call_418ac1, %struct.Memory** %MEMORY

  ; Code: .L_418ac8:	 RIP: 418ac8	 Bytes: 0
  br label %block_.L_418ac8
block_.L_418ac8:

  ; Code: cmpl $0xa, -0x14(%rbp)	 RIP: 418ac8	 Bytes: 4
  %loadMem_418ac8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418ac8 = call %struct.Memory* @routine_cmpl__0xa__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418ac8)
  store %struct.Memory* %call_418ac8, %struct.Memory** %MEMORY

  ; Code: jge .L_418bea	 RIP: 418acc	 Bytes: 6
  %loadMem_418acc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418acc = call %struct.Memory* @routine_jge_.L_418bea(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418acc, i8* %BRANCH_TAKEN, i64 286, i64 6, i64 6)
  store %struct.Memory* %call_418acc, %struct.Memory** %MEMORY

  %loadBr_418acc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_418acc = icmp eq i8 %loadBr_418acc, 1
  br i1 %cmpBr_418acc, label %block_.L_418bea, label %block_418ad2

block_418ad2:
  ; Code: movl $0x0, -0x18(%rbp)	 RIP: 418ad2	 Bytes: 7
  %loadMem_418ad2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418ad2 = call %struct.Memory* @routine_movl__0x0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418ad2)
  store %struct.Memory* %call_418ad2, %struct.Memory** %MEMORY

  ; Code: .L_418ad9:	 RIP: 418ad9	 Bytes: 0
  br label %block_.L_418ad9
block_.L_418ad9:

  ; Code: cmpl $0x5, -0x18(%rbp)	 RIP: 418ad9	 Bytes: 4
  %loadMem_418ad9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418ad9 = call %struct.Memory* @routine_cmpl__0x5__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418ad9)
  store %struct.Memory* %call_418ad9, %struct.Memory** %MEMORY

  ; Code: jge .L_418bd7	 RIP: 418add	 Bytes: 6
  %loadMem_418add = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418add = call %struct.Memory* @routine_jge_.L_418bd7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418add, i8* %BRANCH_TAKEN, i64 250, i64 6, i64 6)
  store %struct.Memory* %call_418add, %struct.Memory** %MEMORY

  %loadBr_418add = load i8, i8* %BRANCH_TAKEN
  %cmpBr_418add = icmp eq i8 %loadBr_418add, 1
  br i1 %cmpBr_418add, label %block_.L_418bd7, label %block_418ae3

block_418ae3:
  ; Code: movq 0x6cb900, %rax	 RIP: 418ae3	 Bytes: 8
  %loadMem_418ae3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418ae3 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418ae3)
  store %struct.Memory* %call_418ae3, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, 0x18(%rax)	 RIP: 418aeb	 Bytes: 4
  %loadMem_418aeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418aeb = call %struct.Memory* @routine_cmpl__0x2__0x18__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418aeb)
  store %struct.Memory* %call_418aeb, %struct.Memory** %MEMORY

  ; Code: jne .L_418b5f	 RIP: 418aef	 Bytes: 6
  %loadMem_418aef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418aef = call %struct.Memory* @routine_jne_.L_418b5f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418aef, i8* %BRANCH_TAKEN, i64 112, i64 6, i64 6)
  store %struct.Memory* %call_418aef, %struct.Memory** %MEMORY

  %loadBr_418aef = load i8, i8* %BRANCH_TAKEN
  %cmpBr_418aef = icmp eq i8 %loadBr_418aef, 1
  br i1 %cmpBr_418aef, label %block_.L_418b5f, label %block_418af5

block_418af5:
  ; Code: movq $0x4b62b0, %rax	 RIP: 418af5	 Bytes: 10
  %loadMem_418af5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418af5 = call %struct.Memory* @routine_movq__0x4b62b0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418af5)
  store %struct.Memory* %call_418af5, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 418aff	 Bytes: 4
  %loadMem_418aff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418aff = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418aff)
  store %struct.Memory* %call_418aff, %struct.Memory** %MEMORY

  ; Code: addq $0x1660, %rcx	 RIP: 418b03	 Bytes: 7
  %loadMem_418b03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418b03 = call %struct.Memory* @routine_addq__0x1660___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418b03)
  store %struct.Memory* %call_418b03, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 418b0a	 Bytes: 4
  %loadMem_418b0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418b0a = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418b0a)
  store %struct.Memory* %call_418b0a, %struct.Memory** %MEMORY

  ; Code: imulq $0x50, %rdx, %rdx	 RIP: 418b0e	 Bytes: 4
  %loadMem_418b0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418b0e = call %struct.Memory* @routine_imulq__0x50___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418b0e)
  store %struct.Memory* %call_418b0e, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 418b12	 Bytes: 3
  %loadMem_418b12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418b12 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418b12)
  store %struct.Memory* %call_418b12, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rdx	 RIP: 418b15	 Bytes: 4
  %loadMem_418b15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418b15 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418b15)
  store %struct.Memory* %call_418b15, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rdx	 RIP: 418b19	 Bytes: 4
  %loadMem_418b19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418b19 = call %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418b19)
  store %struct.Memory* %call_418b19, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 418b1d	 Bytes: 3
  %loadMem_418b1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418b1d = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418b1d)
  store %struct.Memory* %call_418b1d, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rdx	 RIP: 418b20	 Bytes: 8
  %loadMem_418b20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418b20 = call %struct.Memory* @routine_movq_0x6cb900___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418b20)
  store %struct.Memory* %call_418b20, %struct.Memory** %MEMORY

  ; Code: movslq 0x11b48(%rdx), %rdx	 RIP: 418b28	 Bytes: 7
  %loadMem_418b28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418b28 = call %struct.Memory* @routine_movslq_0x11b48__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418b28)
  store %struct.Memory* %call_418b28, %struct.Memory** %MEMORY

  ; Code: imulq $0x140, %rdx, %rdx	 RIP: 418b2f	 Bytes: 7
  %loadMem_418b2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418b2f = call %struct.Memory* @routine_imulq__0x140___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418b2f)
  store %struct.Memory* %call_418b2f, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 418b36	 Bytes: 3
  %loadMem_418b36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418b36 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418b36)
  store %struct.Memory* %call_418b36, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 418b39	 Bytes: 4
  %loadMem_418b39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418b39 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418b39)
  store %struct.Memory* %call_418b39, %struct.Memory** %MEMORY

  ; Code: imulq $0x28, %rdx, %rdx	 RIP: 418b3d	 Bytes: 4
  %loadMem_418b3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418b3d = call %struct.Memory* @routine_imulq__0x28___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418b3d)
  store %struct.Memory* %call_418b3d, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 418b41	 Bytes: 3
  %loadMem_418b41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418b41 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418b41)
  store %struct.Memory* %call_418b41, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rdx	 RIP: 418b44	 Bytes: 4
  %loadMem_418b44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418b44 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418b44)
  store %struct.Memory* %call_418b44, %struct.Memory** %MEMORY

  ; Code: shlq $0x3, %rdx	 RIP: 418b48	 Bytes: 4
  %loadMem_418b48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418b48 = call %struct.Memory* @routine_shlq__0x3___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418b48)
  store %struct.Memory* %call_418b48, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 418b4c	 Bytes: 3
  %loadMem_418b4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418b4c = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418b4c)
  store %struct.Memory* %call_418b4c, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 418b4f	 Bytes: 3
  %loadMem_418b4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418b4f = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418b4f)
  store %struct.Memory* %call_418b4f, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 418b52	 Bytes: 3
  %loadMem_418b52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418b52 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418b52)
  store %struct.Memory* %call_418b52, %struct.Memory** %MEMORY

  ; Code: callq .biari_init_context	 RIP: 418b55	 Bytes: 5
  %loadMem1_418b55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_418b55 = call %struct.Memory* @routine_callq_.biari_init_context(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_418b55, i64 -91845, i64 5, i64 5)
  store %struct.Memory* %call1_418b55, %struct.Memory** %MEMORY

  %loadMem2_418b55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_418b55 = load i64, i64* %3
  %call2_418b55 = call %struct.Memory* @sub_402490.biari_init_context(%struct.State* %0, i64  %loadPC_418b55, %struct.Memory* %loadMem2_418b55)
  store %struct.Memory* %call2_418b55, %struct.Memory** %MEMORY

  ; Code: jmpq .L_418bc4	 RIP: 418b5a	 Bytes: 5
  %loadMem_418b5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418b5a = call %struct.Memory* @routine_jmpq_.L_418bc4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418b5a, i64 106, i64 5)
  store %struct.Memory* %call_418b5a, %struct.Memory** %MEMORY

  br label %block_.L_418bc4

  ; Code: .L_418b5f:	 RIP: 418b5f	 Bytes: 0
block_.L_418b5f:

  ; Code: movq $0x4b63f0, %rax	 RIP: 418b5f	 Bytes: 10
  %loadMem_418b5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418b5f = call %struct.Memory* @routine_movq__0x4b63f0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418b5f)
  store %struct.Memory* %call_418b5f, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 418b69	 Bytes: 4
  %loadMem_418b69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418b69 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418b69)
  store %struct.Memory* %call_418b69, %struct.Memory** %MEMORY

  ; Code: addq $0x1660, %rcx	 RIP: 418b6d	 Bytes: 7
  %loadMem_418b6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418b6d = call %struct.Memory* @routine_addq__0x1660___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418b6d)
  store %struct.Memory* %call_418b6d, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 418b74	 Bytes: 4
  %loadMem_418b74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418b74 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418b74)
  store %struct.Memory* %call_418b74, %struct.Memory** %MEMORY

  ; Code: imulq $0x50, %rdx, %rdx	 RIP: 418b78	 Bytes: 4
  %loadMem_418b78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418b78 = call %struct.Memory* @routine_imulq__0x50___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418b78)
  store %struct.Memory* %call_418b78, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 418b7c	 Bytes: 3
  %loadMem_418b7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418b7c = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418b7c)
  store %struct.Memory* %call_418b7c, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rdx	 RIP: 418b7f	 Bytes: 4
  %loadMem_418b7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418b7f = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418b7f)
  store %struct.Memory* %call_418b7f, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rdx	 RIP: 418b83	 Bytes: 4
  %loadMem_418b83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418b83 = call %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418b83)
  store %struct.Memory* %call_418b83, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 418b87	 Bytes: 3
  %loadMem_418b87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418b87 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418b87)
  store %struct.Memory* %call_418b87, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rdx	 RIP: 418b8a	 Bytes: 8
  %loadMem_418b8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418b8a = call %struct.Memory* @routine_movq_0x6cb900___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418b8a)
  store %struct.Memory* %call_418b8a, %struct.Memory** %MEMORY

  ; Code: movslq 0x11b48(%rdx), %rdx	 RIP: 418b92	 Bytes: 7
  %loadMem_418b92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418b92 = call %struct.Memory* @routine_movslq_0x11b48__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418b92)
  store %struct.Memory* %call_418b92, %struct.Memory** %MEMORY

  ; Code: imulq $0x140, %rdx, %rdx	 RIP: 418b99	 Bytes: 7
  %loadMem_418b99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418b99 = call %struct.Memory* @routine_imulq__0x140___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418b99)
  store %struct.Memory* %call_418b99, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 418ba0	 Bytes: 3
  %loadMem_418ba0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418ba0 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418ba0)
  store %struct.Memory* %call_418ba0, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 418ba3	 Bytes: 4
  %loadMem_418ba3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418ba3 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418ba3)
  store %struct.Memory* %call_418ba3, %struct.Memory** %MEMORY

  ; Code: imulq $0x28, %rdx, %rdx	 RIP: 418ba7	 Bytes: 4
  %loadMem_418ba7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418ba7 = call %struct.Memory* @routine_imulq__0x28___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418ba7)
  store %struct.Memory* %call_418ba7, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 418bab	 Bytes: 3
  %loadMem_418bab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418bab = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418bab)
  store %struct.Memory* %call_418bab, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rdx	 RIP: 418bae	 Bytes: 4
  %loadMem_418bae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418bae = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418bae)
  store %struct.Memory* %call_418bae, %struct.Memory** %MEMORY

  ; Code: shlq $0x3, %rdx	 RIP: 418bb2	 Bytes: 4
  %loadMem_418bb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418bb2 = call %struct.Memory* @routine_shlq__0x3___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418bb2)
  store %struct.Memory* %call_418bb2, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 418bb6	 Bytes: 3
  %loadMem_418bb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418bb6 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418bb6)
  store %struct.Memory* %call_418bb6, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 418bb9	 Bytes: 3
  %loadMem_418bb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418bb9 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418bb9)
  store %struct.Memory* %call_418bb9, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 418bbc	 Bytes: 3
  %loadMem_418bbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418bbc = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418bbc)
  store %struct.Memory* %call_418bbc, %struct.Memory** %MEMORY

  ; Code: callq .biari_init_context	 RIP: 418bbf	 Bytes: 5
  %loadMem1_418bbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_418bbf = call %struct.Memory* @routine_callq_.biari_init_context(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_418bbf, i64 -91951, i64 5, i64 5)
  store %struct.Memory* %call1_418bbf, %struct.Memory** %MEMORY

  %loadMem2_418bbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_418bbf = load i64, i64* %3
  %call2_418bbf = call %struct.Memory* @sub_402490.biari_init_context(%struct.State* %0, i64  %loadPC_418bbf, %struct.Memory* %loadMem2_418bbf)
  store %struct.Memory* %call2_418bbf, %struct.Memory** %MEMORY

  ; Code: .L_418bc4:	 RIP: 418bc4	 Bytes: 0
  br label %block_.L_418bc4
block_.L_418bc4:

  ; Code: jmpq .L_418bc9	 RIP: 418bc4	 Bytes: 5
  %loadMem_418bc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418bc4 = call %struct.Memory* @routine_jmpq_.L_418bc9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418bc4, i64 5, i64 5)
  store %struct.Memory* %call_418bc4, %struct.Memory** %MEMORY

  br label %block_.L_418bc9

  ; Code: .L_418bc9:	 RIP: 418bc9	 Bytes: 0
block_.L_418bc9:

  ; Code: movl -0x18(%rbp), %eax	 RIP: 418bc9	 Bytes: 3
  %loadMem_418bc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418bc9 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418bc9)
  store %struct.Memory* %call_418bc9, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 418bcc	 Bytes: 3
  %loadMem_418bcc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418bcc = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418bcc)
  store %struct.Memory* %call_418bcc, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x18(%rbp)	 RIP: 418bcf	 Bytes: 3
  %loadMem_418bcf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418bcf = call %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418bcf)
  store %struct.Memory* %call_418bcf, %struct.Memory** %MEMORY

  ; Code: jmpq .L_418ad9	 RIP: 418bd2	 Bytes: 5
  %loadMem_418bd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418bd2 = call %struct.Memory* @routine_jmpq_.L_418ad9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418bd2, i64 -249, i64 5)
  store %struct.Memory* %call_418bd2, %struct.Memory** %MEMORY

  br label %block_.L_418ad9

  ; Code: .L_418bd7:	 RIP: 418bd7	 Bytes: 0
block_.L_418bd7:

  ; Code: jmpq .L_418bdc	 RIP: 418bd7	 Bytes: 5
  %loadMem_418bd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418bd7 = call %struct.Memory* @routine_jmpq_.L_418bdc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418bd7, i64 5, i64 5)
  store %struct.Memory* %call_418bd7, %struct.Memory** %MEMORY

  br label %block_.L_418bdc

  ; Code: .L_418bdc:	 RIP: 418bdc	 Bytes: 0
block_.L_418bdc:

  ; Code: movl -0x14(%rbp), %eax	 RIP: 418bdc	 Bytes: 3
  %loadMem_418bdc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418bdc = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418bdc)
  store %struct.Memory* %call_418bdc, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 418bdf	 Bytes: 3
  %loadMem_418bdf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418bdf = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418bdf)
  store %struct.Memory* %call_418bdf, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x14(%rbp)	 RIP: 418be2	 Bytes: 3
  %loadMem_418be2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418be2 = call %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418be2)
  store %struct.Memory* %call_418be2, %struct.Memory** %MEMORY

  ; Code: jmpq .L_418ac8	 RIP: 418be5	 Bytes: 5
  %loadMem_418be5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418be5 = call %struct.Memory* @routine_jmpq_.L_418ac8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418be5, i64 -285, i64 5)
  store %struct.Memory* %call_418be5, %struct.Memory** %MEMORY

  br label %block_.L_418ac8

  ; Code: .L_418bea:	 RIP: 418bea	 Bytes: 0
block_.L_418bea:

  ; Code: movl $0x0, -0x14(%rbp)	 RIP: 418bea	 Bytes: 7
  %loadMem_418bea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418bea = call %struct.Memory* @routine_movl__0x0__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418bea)
  store %struct.Memory* %call_418bea, %struct.Memory** %MEMORY

  ; Code: .L_418bf1:	 RIP: 418bf1	 Bytes: 0
  br label %block_.L_418bf1
block_.L_418bf1:

  ; Code: cmpl $0xa, -0x14(%rbp)	 RIP: 418bf1	 Bytes: 4
  %loadMem_418bf1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418bf1 = call %struct.Memory* @routine_cmpl__0xa__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418bf1)
  store %struct.Memory* %call_418bf1, %struct.Memory** %MEMORY

  ; Code: jge .L_418d13	 RIP: 418bf5	 Bytes: 6
  %loadMem_418bf5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418bf5 = call %struct.Memory* @routine_jge_.L_418d13(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418bf5, i8* %BRANCH_TAKEN, i64 286, i64 6, i64 6)
  store %struct.Memory* %call_418bf5, %struct.Memory** %MEMORY

  %loadBr_418bf5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_418bf5 = icmp eq i8 %loadBr_418bf5, 1
  br i1 %cmpBr_418bf5, label %block_.L_418d13, label %block_418bfb

block_418bfb:
  ; Code: movl $0x0, -0x18(%rbp)	 RIP: 418bfb	 Bytes: 7
  %loadMem_418bfb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418bfb = call %struct.Memory* @routine_movl__0x0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418bfb)
  store %struct.Memory* %call_418bfb, %struct.Memory** %MEMORY

  ; Code: .L_418c02:	 RIP: 418c02	 Bytes: 0
  br label %block_.L_418c02
block_.L_418c02:

  ; Code: cmpl $0x5, -0x18(%rbp)	 RIP: 418c02	 Bytes: 4
  %loadMem_418c02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418c02 = call %struct.Memory* @routine_cmpl__0x5__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418c02)
  store %struct.Memory* %call_418c02, %struct.Memory** %MEMORY

  ; Code: jge .L_418d00	 RIP: 418c06	 Bytes: 6
  %loadMem_418c06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418c06 = call %struct.Memory* @routine_jge_.L_418d00(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418c06, i8* %BRANCH_TAKEN, i64 250, i64 6, i64 6)
  store %struct.Memory* %call_418c06, %struct.Memory** %MEMORY

  %loadBr_418c06 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_418c06 = icmp eq i8 %loadBr_418c06, 1
  br i1 %cmpBr_418c06, label %block_.L_418d00, label %block_418c0c

block_418c0c:
  ; Code: movq 0x6cb900, %rax	 RIP: 418c0c	 Bytes: 8
  %loadMem_418c0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418c0c = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418c0c)
  store %struct.Memory* %call_418c0c, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, 0x18(%rax)	 RIP: 418c14	 Bytes: 4
  %loadMem_418c14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418c14 = call %struct.Memory* @routine_cmpl__0x2__0x18__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418c14)
  store %struct.Memory* %call_418c14, %struct.Memory** %MEMORY

  ; Code: jne .L_418c88	 RIP: 418c18	 Bytes: 6
  %loadMem_418c18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418c18 = call %struct.Memory* @routine_jne_.L_418c88(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418c18, i8* %BRANCH_TAKEN, i64 112, i64 6, i64 6)
  store %struct.Memory* %call_418c18, %struct.Memory** %MEMORY

  %loadBr_418c18 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_418c18 = icmp eq i8 %loadBr_418c18, 1
  br i1 %cmpBr_418c18, label %block_.L_418c88, label %block_418c1e

block_418c1e:
  ; Code: movq $0x4b67b0, %rax	 RIP: 418c1e	 Bytes: 10
  %loadMem_418c1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418c1e = call %struct.Memory* @routine_movq__0x4b67b0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418c1e)
  store %struct.Memory* %call_418c1e, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 418c28	 Bytes: 4
  %loadMem_418c28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418c28 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418c28)
  store %struct.Memory* %call_418c28, %struct.Memory** %MEMORY

  ; Code: addq $0x1980, %rcx	 RIP: 418c2c	 Bytes: 7
  %loadMem_418c2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418c2c = call %struct.Memory* @routine_addq__0x1980___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418c2c)
  store %struct.Memory* %call_418c2c, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 418c33	 Bytes: 4
  %loadMem_418c33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418c33 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418c33)
  store %struct.Memory* %call_418c33, %struct.Memory** %MEMORY

  ; Code: imulq $0x50, %rdx, %rdx	 RIP: 418c37	 Bytes: 4
  %loadMem_418c37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418c37 = call %struct.Memory* @routine_imulq__0x50___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418c37)
  store %struct.Memory* %call_418c37, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 418c3b	 Bytes: 3
  %loadMem_418c3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418c3b = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418c3b)
  store %struct.Memory* %call_418c3b, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rdx	 RIP: 418c3e	 Bytes: 4
  %loadMem_418c3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418c3e = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418c3e)
  store %struct.Memory* %call_418c3e, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rdx	 RIP: 418c42	 Bytes: 4
  %loadMem_418c42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418c42 = call %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418c42)
  store %struct.Memory* %call_418c42, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 418c46	 Bytes: 3
  %loadMem_418c46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418c46 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418c46)
  store %struct.Memory* %call_418c46, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rdx	 RIP: 418c49	 Bytes: 8
  %loadMem_418c49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418c49 = call %struct.Memory* @routine_movq_0x6cb900___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418c49)
  store %struct.Memory* %call_418c49, %struct.Memory** %MEMORY

  ; Code: movslq 0x11b48(%rdx), %rdx	 RIP: 418c51	 Bytes: 7
  %loadMem_418c51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418c51 = call %struct.Memory* @routine_movslq_0x11b48__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418c51)
  store %struct.Memory* %call_418c51, %struct.Memory** %MEMORY

  ; Code: imulq $0x140, %rdx, %rdx	 RIP: 418c58	 Bytes: 7
  %loadMem_418c58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418c58 = call %struct.Memory* @routine_imulq__0x140___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418c58)
  store %struct.Memory* %call_418c58, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 418c5f	 Bytes: 3
  %loadMem_418c5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418c5f = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418c5f)
  store %struct.Memory* %call_418c5f, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 418c62	 Bytes: 4
  %loadMem_418c62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418c62 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418c62)
  store %struct.Memory* %call_418c62, %struct.Memory** %MEMORY

  ; Code: imulq $0x28, %rdx, %rdx	 RIP: 418c66	 Bytes: 4
  %loadMem_418c66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418c66 = call %struct.Memory* @routine_imulq__0x28___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418c66)
  store %struct.Memory* %call_418c66, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 418c6a	 Bytes: 3
  %loadMem_418c6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418c6a = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418c6a)
  store %struct.Memory* %call_418c6a, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rdx	 RIP: 418c6d	 Bytes: 4
  %loadMem_418c6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418c6d = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418c6d)
  store %struct.Memory* %call_418c6d, %struct.Memory** %MEMORY

  ; Code: shlq $0x3, %rdx	 RIP: 418c71	 Bytes: 4
  %loadMem_418c71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418c71 = call %struct.Memory* @routine_shlq__0x3___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418c71)
  store %struct.Memory* %call_418c71, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 418c75	 Bytes: 3
  %loadMem_418c75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418c75 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418c75)
  store %struct.Memory* %call_418c75, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 418c78	 Bytes: 3
  %loadMem_418c78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418c78 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418c78)
  store %struct.Memory* %call_418c78, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 418c7b	 Bytes: 3
  %loadMem_418c7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418c7b = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418c7b)
  store %struct.Memory* %call_418c7b, %struct.Memory** %MEMORY

  ; Code: callq .biari_init_context	 RIP: 418c7e	 Bytes: 5
  %loadMem1_418c7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_418c7e = call %struct.Memory* @routine_callq_.biari_init_context(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_418c7e, i64 -92142, i64 5, i64 5)
  store %struct.Memory* %call1_418c7e, %struct.Memory** %MEMORY

  %loadMem2_418c7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_418c7e = load i64, i64* %3
  %call2_418c7e = call %struct.Memory* @sub_402490.biari_init_context(%struct.State* %0, i64  %loadPC_418c7e, %struct.Memory* %loadMem2_418c7e)
  store %struct.Memory* %call2_418c7e, %struct.Memory** %MEMORY

  ; Code: jmpq .L_418ced	 RIP: 418c83	 Bytes: 5
  %loadMem_418c83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418c83 = call %struct.Memory* @routine_jmpq_.L_418ced(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418c83, i64 106, i64 5)
  store %struct.Memory* %call_418c83, %struct.Memory** %MEMORY

  br label %block_.L_418ced

  ; Code: .L_418c88:	 RIP: 418c88	 Bytes: 0
block_.L_418c88:

  ; Code: movq $0x4b68f0, %rax	 RIP: 418c88	 Bytes: 10
  %loadMem_418c88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418c88 = call %struct.Memory* @routine_movq__0x4b68f0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418c88)
  store %struct.Memory* %call_418c88, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 418c92	 Bytes: 4
  %loadMem_418c92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418c92 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418c92)
  store %struct.Memory* %call_418c92, %struct.Memory** %MEMORY

  ; Code: addq $0x1980, %rcx	 RIP: 418c96	 Bytes: 7
  %loadMem_418c96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418c96 = call %struct.Memory* @routine_addq__0x1980___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418c96)
  store %struct.Memory* %call_418c96, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 418c9d	 Bytes: 4
  %loadMem_418c9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418c9d = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418c9d)
  store %struct.Memory* %call_418c9d, %struct.Memory** %MEMORY

  ; Code: imulq $0x50, %rdx, %rdx	 RIP: 418ca1	 Bytes: 4
  %loadMem_418ca1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418ca1 = call %struct.Memory* @routine_imulq__0x50___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418ca1)
  store %struct.Memory* %call_418ca1, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 418ca5	 Bytes: 3
  %loadMem_418ca5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418ca5 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418ca5)
  store %struct.Memory* %call_418ca5, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rdx	 RIP: 418ca8	 Bytes: 4
  %loadMem_418ca8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418ca8 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418ca8)
  store %struct.Memory* %call_418ca8, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rdx	 RIP: 418cac	 Bytes: 4
  %loadMem_418cac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418cac = call %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418cac)
  store %struct.Memory* %call_418cac, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 418cb0	 Bytes: 3
  %loadMem_418cb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418cb0 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418cb0)
  store %struct.Memory* %call_418cb0, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rdx	 RIP: 418cb3	 Bytes: 8
  %loadMem_418cb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418cb3 = call %struct.Memory* @routine_movq_0x6cb900___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418cb3)
  store %struct.Memory* %call_418cb3, %struct.Memory** %MEMORY

  ; Code: movslq 0x11b48(%rdx), %rdx	 RIP: 418cbb	 Bytes: 7
  %loadMem_418cbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418cbb = call %struct.Memory* @routine_movslq_0x11b48__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418cbb)
  store %struct.Memory* %call_418cbb, %struct.Memory** %MEMORY

  ; Code: imulq $0x140, %rdx, %rdx	 RIP: 418cc2	 Bytes: 7
  %loadMem_418cc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418cc2 = call %struct.Memory* @routine_imulq__0x140___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418cc2)
  store %struct.Memory* %call_418cc2, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 418cc9	 Bytes: 3
  %loadMem_418cc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418cc9 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418cc9)
  store %struct.Memory* %call_418cc9, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 418ccc	 Bytes: 4
  %loadMem_418ccc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418ccc = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418ccc)
  store %struct.Memory* %call_418ccc, %struct.Memory** %MEMORY

  ; Code: imulq $0x28, %rdx, %rdx	 RIP: 418cd0	 Bytes: 4
  %loadMem_418cd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418cd0 = call %struct.Memory* @routine_imulq__0x28___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418cd0)
  store %struct.Memory* %call_418cd0, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 418cd4	 Bytes: 3
  %loadMem_418cd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418cd4 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418cd4)
  store %struct.Memory* %call_418cd4, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rdx	 RIP: 418cd7	 Bytes: 4
  %loadMem_418cd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418cd7 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418cd7)
  store %struct.Memory* %call_418cd7, %struct.Memory** %MEMORY

  ; Code: shlq $0x3, %rdx	 RIP: 418cdb	 Bytes: 4
  %loadMem_418cdb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418cdb = call %struct.Memory* @routine_shlq__0x3___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418cdb)
  store %struct.Memory* %call_418cdb, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 418cdf	 Bytes: 3
  %loadMem_418cdf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418cdf = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418cdf)
  store %struct.Memory* %call_418cdf, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 418ce2	 Bytes: 3
  %loadMem_418ce2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418ce2 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418ce2)
  store %struct.Memory* %call_418ce2, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 418ce5	 Bytes: 3
  %loadMem_418ce5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418ce5 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418ce5)
  store %struct.Memory* %call_418ce5, %struct.Memory** %MEMORY

  ; Code: callq .biari_init_context	 RIP: 418ce8	 Bytes: 5
  %loadMem1_418ce8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_418ce8 = call %struct.Memory* @routine_callq_.biari_init_context(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_418ce8, i64 -92248, i64 5, i64 5)
  store %struct.Memory* %call1_418ce8, %struct.Memory** %MEMORY

  %loadMem2_418ce8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_418ce8 = load i64, i64* %3
  %call2_418ce8 = call %struct.Memory* @sub_402490.biari_init_context(%struct.State* %0, i64  %loadPC_418ce8, %struct.Memory* %loadMem2_418ce8)
  store %struct.Memory* %call2_418ce8, %struct.Memory** %MEMORY

  ; Code: .L_418ced:	 RIP: 418ced	 Bytes: 0
  br label %block_.L_418ced
block_.L_418ced:

  ; Code: jmpq .L_418cf2	 RIP: 418ced	 Bytes: 5
  %loadMem_418ced = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418ced = call %struct.Memory* @routine_jmpq_.L_418cf2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418ced, i64 5, i64 5)
  store %struct.Memory* %call_418ced, %struct.Memory** %MEMORY

  br label %block_.L_418cf2

  ; Code: .L_418cf2:	 RIP: 418cf2	 Bytes: 0
block_.L_418cf2:

  ; Code: movl -0x18(%rbp), %eax	 RIP: 418cf2	 Bytes: 3
  %loadMem_418cf2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418cf2 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418cf2)
  store %struct.Memory* %call_418cf2, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 418cf5	 Bytes: 3
  %loadMem_418cf5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418cf5 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418cf5)
  store %struct.Memory* %call_418cf5, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x18(%rbp)	 RIP: 418cf8	 Bytes: 3
  %loadMem_418cf8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418cf8 = call %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418cf8)
  store %struct.Memory* %call_418cf8, %struct.Memory** %MEMORY

  ; Code: jmpq .L_418c02	 RIP: 418cfb	 Bytes: 5
  %loadMem_418cfb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418cfb = call %struct.Memory* @routine_jmpq_.L_418c02(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418cfb, i64 -249, i64 5)
  store %struct.Memory* %call_418cfb, %struct.Memory** %MEMORY

  br label %block_.L_418c02

  ; Code: .L_418d00:	 RIP: 418d00	 Bytes: 0
block_.L_418d00:

  ; Code: jmpq .L_418d05	 RIP: 418d00	 Bytes: 5
  %loadMem_418d00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418d00 = call %struct.Memory* @routine_jmpq_.L_418d05(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418d00, i64 5, i64 5)
  store %struct.Memory* %call_418d00, %struct.Memory** %MEMORY

  br label %block_.L_418d05

  ; Code: .L_418d05:	 RIP: 418d05	 Bytes: 0
block_.L_418d05:

  ; Code: movl -0x14(%rbp), %eax	 RIP: 418d05	 Bytes: 3
  %loadMem_418d05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418d05 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418d05)
  store %struct.Memory* %call_418d05, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 418d08	 Bytes: 3
  %loadMem_418d08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418d08 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418d08)
  store %struct.Memory* %call_418d08, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x14(%rbp)	 RIP: 418d0b	 Bytes: 3
  %loadMem_418d0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418d0b = call %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418d0b)
  store %struct.Memory* %call_418d0b, %struct.Memory** %MEMORY

  ; Code: jmpq .L_418bf1	 RIP: 418d0e	 Bytes: 5
  %loadMem_418d0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418d0e = call %struct.Memory* @routine_jmpq_.L_418bf1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418d0e, i64 -285, i64 5)
  store %struct.Memory* %call_418d0e, %struct.Memory** %MEMORY

  br label %block_.L_418bf1

  ; Code: .L_418d13:	 RIP: 418d13	 Bytes: 0
block_.L_418d13:

  ; Code: movl $0x0, -0x14(%rbp)	 RIP: 418d13	 Bytes: 7
  %loadMem_418d13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418d13 = call %struct.Memory* @routine_movl__0x0__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418d13)
  store %struct.Memory* %call_418d13, %struct.Memory** %MEMORY

  ; Code: .L_418d1a:	 RIP: 418d1a	 Bytes: 0
  br label %block_.L_418d1a
block_.L_418d1a:

  ; Code: cmpl $0xa, -0x14(%rbp)	 RIP: 418d1a	 Bytes: 4
  %loadMem_418d1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418d1a = call %struct.Memory* @routine_cmpl__0xa__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418d1a)
  store %struct.Memory* %call_418d1a, %struct.Memory** %MEMORY

  ; Code: jge .L_418e42	 RIP: 418d1e	 Bytes: 6
  %loadMem_418d1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418d1e = call %struct.Memory* @routine_jge_.L_418e42(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418d1e, i8* %BRANCH_TAKEN, i64 292, i64 6, i64 6)
  store %struct.Memory* %call_418d1e, %struct.Memory** %MEMORY

  %loadBr_418d1e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_418d1e = icmp eq i8 %loadBr_418d1e, 1
  br i1 %cmpBr_418d1e, label %block_.L_418e42, label %block_418d24

block_418d24:
  ; Code: movl $0x0, -0x18(%rbp)	 RIP: 418d24	 Bytes: 7
  %loadMem_418d24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418d24 = call %struct.Memory* @routine_movl__0x0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418d24)
  store %struct.Memory* %call_418d24, %struct.Memory** %MEMORY

  ; Code: .L_418d2b:	 RIP: 418d2b	 Bytes: 0
  br label %block_.L_418d2b
block_.L_418d2b:

  ; Code: cmpl $0xf, -0x18(%rbp)	 RIP: 418d2b	 Bytes: 4
  %loadMem_418d2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418d2b = call %struct.Memory* @routine_cmpl__0xf__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418d2b)
  store %struct.Memory* %call_418d2b, %struct.Memory** %MEMORY

  ; Code: jge .L_418e2f	 RIP: 418d2f	 Bytes: 6
  %loadMem_418d2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418d2f = call %struct.Memory* @routine_jge_.L_418e2f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418d2f, i8* %BRANCH_TAKEN, i64 256, i64 6, i64 6)
  store %struct.Memory* %call_418d2f, %struct.Memory** %MEMORY

  %loadBr_418d2f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_418d2f = icmp eq i8 %loadBr_418d2f, 1
  br i1 %cmpBr_418d2f, label %block_.L_418e2f, label %block_418d35

block_418d35:
  ; Code: movq 0x6cb900, %rax	 RIP: 418d35	 Bytes: 8
  %loadMem_418d35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418d35 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418d35)
  store %struct.Memory* %call_418d35, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, 0x18(%rax)	 RIP: 418d3d	 Bytes: 4
  %loadMem_418d3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418d3d = call %struct.Memory* @routine_cmpl__0x2__0x18__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418d3d)
  store %struct.Memory* %call_418d3d, %struct.Memory** %MEMORY

  ; Code: jne .L_418db4	 RIP: 418d41	 Bytes: 6
  %loadMem_418d41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418d41 = call %struct.Memory* @routine_jne_.L_418db4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418d41, i8* %BRANCH_TAKEN, i64 115, i64 6, i64 6)
  store %struct.Memory* %call_418d41, %struct.Memory** %MEMORY

  %loadBr_418d41 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_418d41 = icmp eq i8 %loadBr_418d41, 1
  br i1 %cmpBr_418d41, label %block_.L_418db4, label %block_418d47

block_418d47:
  ; Code: movq $0x4b6cb0, %rax	 RIP: 418d47	 Bytes: 10
  %loadMem_418d47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418d47 = call %struct.Memory* @routine_movq__0x4b6cb0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418d47)
  store %struct.Memory* %call_418d47, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 418d51	 Bytes: 4
  %loadMem_418d51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418d51 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418d51)
  store %struct.Memory* %call_418d51, %struct.Memory** %MEMORY

  ; Code: addq $0x1ca0, %rcx	 RIP: 418d55	 Bytes: 7
  %loadMem_418d55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418d55 = call %struct.Memory* @routine_addq__0x1ca0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418d55)
  store %struct.Memory* %call_418d55, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 418d5c	 Bytes: 4
  %loadMem_418d5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418d5c = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418d5c)
  store %struct.Memory* %call_418d5c, %struct.Memory** %MEMORY

  ; Code: imulq $0xf0, %rdx, %rdx	 RIP: 418d60	 Bytes: 7
  %loadMem_418d60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418d60 = call %struct.Memory* @routine_imulq__0xf0___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418d60)
  store %struct.Memory* %call_418d60, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 418d67	 Bytes: 3
  %loadMem_418d67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418d67 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418d67)
  store %struct.Memory* %call_418d67, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rdx	 RIP: 418d6a	 Bytes: 4
  %loadMem_418d6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418d6a = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418d6a)
  store %struct.Memory* %call_418d6a, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rdx	 RIP: 418d6e	 Bytes: 4
  %loadMem_418d6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418d6e = call %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418d6e)
  store %struct.Memory* %call_418d6e, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 418d72	 Bytes: 3
  %loadMem_418d72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418d72 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418d72)
  store %struct.Memory* %call_418d72, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rdx	 RIP: 418d75	 Bytes: 8
  %loadMem_418d75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418d75 = call %struct.Memory* @routine_movq_0x6cb900___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418d75)
  store %struct.Memory* %call_418d75, %struct.Memory** %MEMORY

  ; Code: movslq 0x11b48(%rdx), %rdx	 RIP: 418d7d	 Bytes: 7
  %loadMem_418d7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418d7d = call %struct.Memory* @routine_movslq_0x11b48__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418d7d)
  store %struct.Memory* %call_418d7d, %struct.Memory** %MEMORY

  ; Code: imulq $0x3c0, %rdx, %rdx	 RIP: 418d84	 Bytes: 7
  %loadMem_418d84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418d84 = call %struct.Memory* @routine_imulq__0x3c0___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418d84)
  store %struct.Memory* %call_418d84, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 418d8b	 Bytes: 3
  %loadMem_418d8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418d8b = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418d8b)
  store %struct.Memory* %call_418d8b, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 418d8e	 Bytes: 4
  %loadMem_418d8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418d8e = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418d8e)
  store %struct.Memory* %call_418d8e, %struct.Memory** %MEMORY

  ; Code: imulq $0x78, %rdx, %rdx	 RIP: 418d92	 Bytes: 4
  %loadMem_418d92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418d92 = call %struct.Memory* @routine_imulq__0x78___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418d92)
  store %struct.Memory* %call_418d92, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 418d96	 Bytes: 3
  %loadMem_418d96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418d96 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418d96)
  store %struct.Memory* %call_418d96, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rdx	 RIP: 418d99	 Bytes: 4
  %loadMem_418d99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418d99 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418d99)
  store %struct.Memory* %call_418d99, %struct.Memory** %MEMORY

  ; Code: shlq $0x3, %rdx	 RIP: 418d9d	 Bytes: 4
  %loadMem_418d9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418d9d = call %struct.Memory* @routine_shlq__0x3___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418d9d)
  store %struct.Memory* %call_418d9d, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 418da1	 Bytes: 3
  %loadMem_418da1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418da1 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418da1)
  store %struct.Memory* %call_418da1, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 418da4	 Bytes: 3
  %loadMem_418da4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418da4 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418da4)
  store %struct.Memory* %call_418da4, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 418da7	 Bytes: 3
  %loadMem_418da7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418da7 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418da7)
  store %struct.Memory* %call_418da7, %struct.Memory** %MEMORY

  ; Code: callq .biari_init_context	 RIP: 418daa	 Bytes: 5
  %loadMem1_418daa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_418daa = call %struct.Memory* @routine_callq_.biari_init_context(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_418daa, i64 -92442, i64 5, i64 5)
  store %struct.Memory* %call1_418daa, %struct.Memory** %MEMORY

  %loadMem2_418daa = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_418daa = load i64, i64* %3
  %call2_418daa = call %struct.Memory* @sub_402490.biari_init_context(%struct.State* %0, i64  %loadPC_418daa, %struct.Memory* %loadMem2_418daa)
  store %struct.Memory* %call2_418daa, %struct.Memory** %MEMORY

  ; Code: jmpq .L_418e1c	 RIP: 418daf	 Bytes: 5
  %loadMem_418daf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418daf = call %struct.Memory* @routine_jmpq_.L_418e1c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418daf, i64 109, i64 5)
  store %struct.Memory* %call_418daf, %struct.Memory** %MEMORY

  br label %block_.L_418e1c

  ; Code: .L_418db4:	 RIP: 418db4	 Bytes: 0
block_.L_418db4:

  ; Code: movq $0x4b7070, %rax	 RIP: 418db4	 Bytes: 10
  %loadMem_418db4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418db4 = call %struct.Memory* @routine_movq__0x4b7070___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418db4)
  store %struct.Memory* %call_418db4, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 418dbe	 Bytes: 4
  %loadMem_418dbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418dbe = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418dbe)
  store %struct.Memory* %call_418dbe, %struct.Memory** %MEMORY

  ; Code: addq $0x1ca0, %rcx	 RIP: 418dc2	 Bytes: 7
  %loadMem_418dc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418dc2 = call %struct.Memory* @routine_addq__0x1ca0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418dc2)
  store %struct.Memory* %call_418dc2, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 418dc9	 Bytes: 4
  %loadMem_418dc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418dc9 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418dc9)
  store %struct.Memory* %call_418dc9, %struct.Memory** %MEMORY

  ; Code: imulq $0xf0, %rdx, %rdx	 RIP: 418dcd	 Bytes: 7
  %loadMem_418dcd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418dcd = call %struct.Memory* @routine_imulq__0xf0___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418dcd)
  store %struct.Memory* %call_418dcd, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 418dd4	 Bytes: 3
  %loadMem_418dd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418dd4 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418dd4)
  store %struct.Memory* %call_418dd4, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rdx	 RIP: 418dd7	 Bytes: 4
  %loadMem_418dd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418dd7 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418dd7)
  store %struct.Memory* %call_418dd7, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rdx	 RIP: 418ddb	 Bytes: 4
  %loadMem_418ddb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418ddb = call %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418ddb)
  store %struct.Memory* %call_418ddb, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 418ddf	 Bytes: 3
  %loadMem_418ddf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418ddf = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418ddf)
  store %struct.Memory* %call_418ddf, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rdx	 RIP: 418de2	 Bytes: 8
  %loadMem_418de2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418de2 = call %struct.Memory* @routine_movq_0x6cb900___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418de2)
  store %struct.Memory* %call_418de2, %struct.Memory** %MEMORY

  ; Code: movslq 0x11b48(%rdx), %rdx	 RIP: 418dea	 Bytes: 7
  %loadMem_418dea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418dea = call %struct.Memory* @routine_movslq_0x11b48__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418dea)
  store %struct.Memory* %call_418dea, %struct.Memory** %MEMORY

  ; Code: imulq $0x3c0, %rdx, %rdx	 RIP: 418df1	 Bytes: 7
  %loadMem_418df1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418df1 = call %struct.Memory* @routine_imulq__0x3c0___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418df1)
  store %struct.Memory* %call_418df1, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 418df8	 Bytes: 3
  %loadMem_418df8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418df8 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418df8)
  store %struct.Memory* %call_418df8, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 418dfb	 Bytes: 4
  %loadMem_418dfb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418dfb = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418dfb)
  store %struct.Memory* %call_418dfb, %struct.Memory** %MEMORY

  ; Code: imulq $0x78, %rdx, %rdx	 RIP: 418dff	 Bytes: 4
  %loadMem_418dff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418dff = call %struct.Memory* @routine_imulq__0x78___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418dff)
  store %struct.Memory* %call_418dff, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 418e03	 Bytes: 3
  %loadMem_418e03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418e03 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418e03)
  store %struct.Memory* %call_418e03, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rdx	 RIP: 418e06	 Bytes: 4
  %loadMem_418e06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418e06 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418e06)
  store %struct.Memory* %call_418e06, %struct.Memory** %MEMORY

  ; Code: shlq $0x3, %rdx	 RIP: 418e0a	 Bytes: 4
  %loadMem_418e0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418e0a = call %struct.Memory* @routine_shlq__0x3___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418e0a)
  store %struct.Memory* %call_418e0a, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 418e0e	 Bytes: 3
  %loadMem_418e0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418e0e = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418e0e)
  store %struct.Memory* %call_418e0e, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 418e11	 Bytes: 3
  %loadMem_418e11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418e11 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418e11)
  store %struct.Memory* %call_418e11, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 418e14	 Bytes: 3
  %loadMem_418e14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418e14 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418e14)
  store %struct.Memory* %call_418e14, %struct.Memory** %MEMORY

  ; Code: callq .biari_init_context	 RIP: 418e17	 Bytes: 5
  %loadMem1_418e17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_418e17 = call %struct.Memory* @routine_callq_.biari_init_context(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_418e17, i64 -92551, i64 5, i64 5)
  store %struct.Memory* %call1_418e17, %struct.Memory** %MEMORY

  %loadMem2_418e17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_418e17 = load i64, i64* %3
  %call2_418e17 = call %struct.Memory* @sub_402490.biari_init_context(%struct.State* %0, i64  %loadPC_418e17, %struct.Memory* %loadMem2_418e17)
  store %struct.Memory* %call2_418e17, %struct.Memory** %MEMORY

  ; Code: .L_418e1c:	 RIP: 418e1c	 Bytes: 0
  br label %block_.L_418e1c
block_.L_418e1c:

  ; Code: jmpq .L_418e21	 RIP: 418e1c	 Bytes: 5
  %loadMem_418e1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418e1c = call %struct.Memory* @routine_jmpq_.L_418e21(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418e1c, i64 5, i64 5)
  store %struct.Memory* %call_418e1c, %struct.Memory** %MEMORY

  br label %block_.L_418e21

  ; Code: .L_418e21:	 RIP: 418e21	 Bytes: 0
block_.L_418e21:

  ; Code: movl -0x18(%rbp), %eax	 RIP: 418e21	 Bytes: 3
  %loadMem_418e21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418e21 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418e21)
  store %struct.Memory* %call_418e21, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 418e24	 Bytes: 3
  %loadMem_418e24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418e24 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418e24)
  store %struct.Memory* %call_418e24, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x18(%rbp)	 RIP: 418e27	 Bytes: 3
  %loadMem_418e27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418e27 = call %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418e27)
  store %struct.Memory* %call_418e27, %struct.Memory** %MEMORY

  ; Code: jmpq .L_418d2b	 RIP: 418e2a	 Bytes: 5
  %loadMem_418e2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418e2a = call %struct.Memory* @routine_jmpq_.L_418d2b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418e2a, i64 -255, i64 5)
  store %struct.Memory* %call_418e2a, %struct.Memory** %MEMORY

  br label %block_.L_418d2b

  ; Code: .L_418e2f:	 RIP: 418e2f	 Bytes: 0
block_.L_418e2f:

  ; Code: jmpq .L_418e34	 RIP: 418e2f	 Bytes: 5
  %loadMem_418e2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418e2f = call %struct.Memory* @routine_jmpq_.L_418e34(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418e2f, i64 5, i64 5)
  store %struct.Memory* %call_418e2f, %struct.Memory** %MEMORY

  br label %block_.L_418e34

  ; Code: .L_418e34:	 RIP: 418e34	 Bytes: 0
block_.L_418e34:

  ; Code: movl -0x14(%rbp), %eax	 RIP: 418e34	 Bytes: 3
  %loadMem_418e34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418e34 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418e34)
  store %struct.Memory* %call_418e34, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 418e37	 Bytes: 3
  %loadMem_418e37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418e37 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418e37)
  store %struct.Memory* %call_418e37, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x14(%rbp)	 RIP: 418e3a	 Bytes: 3
  %loadMem_418e3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418e3a = call %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418e3a)
  store %struct.Memory* %call_418e3a, %struct.Memory** %MEMORY

  ; Code: jmpq .L_418d1a	 RIP: 418e3d	 Bytes: 5
  %loadMem_418e3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418e3d = call %struct.Memory* @routine_jmpq_.L_418d1a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418e3d, i64 -291, i64 5)
  store %struct.Memory* %call_418e3d, %struct.Memory** %MEMORY

  br label %block_.L_418d1a

  ; Code: .L_418e42:	 RIP: 418e42	 Bytes: 0
block_.L_418e42:

  ; Code: movl $0x0, -0x14(%rbp)	 RIP: 418e42	 Bytes: 7
  %loadMem_418e42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418e42 = call %struct.Memory* @routine_movl__0x0__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418e42)
  store %struct.Memory* %call_418e42, %struct.Memory** %MEMORY

  ; Code: .L_418e49:	 RIP: 418e49	 Bytes: 0
  br label %block_.L_418e49
block_.L_418e49:

  ; Code: cmpl $0xa, -0x14(%rbp)	 RIP: 418e49	 Bytes: 4
  %loadMem_418e49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418e49 = call %struct.Memory* @routine_cmpl__0xa__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418e49)
  store %struct.Memory* %call_418e49, %struct.Memory** %MEMORY

  ; Code: jge .L_418f71	 RIP: 418e4d	 Bytes: 6
  %loadMem_418e4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418e4d = call %struct.Memory* @routine_jge_.L_418f71(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418e4d, i8* %BRANCH_TAKEN, i64 292, i64 6, i64 6)
  store %struct.Memory* %call_418e4d, %struct.Memory** %MEMORY

  %loadBr_418e4d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_418e4d = icmp eq i8 %loadBr_418e4d, 1
  br i1 %cmpBr_418e4d, label %block_.L_418f71, label %block_418e53

block_418e53:
  ; Code: movl $0x0, -0x18(%rbp)	 RIP: 418e53	 Bytes: 7
  %loadMem_418e53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418e53 = call %struct.Memory* @routine_movl__0x0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418e53)
  store %struct.Memory* %call_418e53, %struct.Memory** %MEMORY

  ; Code: .L_418e5a:	 RIP: 418e5a	 Bytes: 0
  br label %block_.L_418e5a
block_.L_418e5a:

  ; Code: cmpl $0xf, -0x18(%rbp)	 RIP: 418e5a	 Bytes: 4
  %loadMem_418e5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418e5a = call %struct.Memory* @routine_cmpl__0xf__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418e5a)
  store %struct.Memory* %call_418e5a, %struct.Memory** %MEMORY

  ; Code: jge .L_418f5e	 RIP: 418e5e	 Bytes: 6
  %loadMem_418e5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418e5e = call %struct.Memory* @routine_jge_.L_418f5e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418e5e, i8* %BRANCH_TAKEN, i64 256, i64 6, i64 6)
  store %struct.Memory* %call_418e5e, %struct.Memory** %MEMORY

  %loadBr_418e5e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_418e5e = icmp eq i8 %loadBr_418e5e, 1
  br i1 %cmpBr_418e5e, label %block_.L_418f5e, label %block_418e64

block_418e64:
  ; Code: movq 0x6cb900, %rax	 RIP: 418e64	 Bytes: 8
  %loadMem_418e64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418e64 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418e64)
  store %struct.Memory* %call_418e64, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, 0x18(%rax)	 RIP: 418e6c	 Bytes: 4
  %loadMem_418e6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418e6c = call %struct.Memory* @routine_cmpl__0x2__0x18__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418e6c)
  store %struct.Memory* %call_418e6c, %struct.Memory** %MEMORY

  ; Code: jne .L_418ee3	 RIP: 418e70	 Bytes: 6
  %loadMem_418e70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418e70 = call %struct.Memory* @routine_jne_.L_418ee3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418e70, i8* %BRANCH_TAKEN, i64 115, i64 6, i64 6)
  store %struct.Memory* %call_418e70, %struct.Memory** %MEMORY

  %loadBr_418e70 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_418e70 = icmp eq i8 %loadBr_418e70, 1
  br i1 %cmpBr_418e70, label %block_.L_418ee3, label %block_418e76

block_418e76:
  ; Code: movq $0x4b7bb0, %rax	 RIP: 418e76	 Bytes: 10
  %loadMem_418e76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418e76 = call %struct.Memory* @routine_movq__0x4b7bb0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418e76)
  store %struct.Memory* %call_418e76, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 418e80	 Bytes: 4
  %loadMem_418e80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418e80 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418e80)
  store %struct.Memory* %call_418e80, %struct.Memory** %MEMORY

  ; Code: addq $0x2600, %rcx	 RIP: 418e84	 Bytes: 7
  %loadMem_418e84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418e84 = call %struct.Memory* @routine_addq__0x2600___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418e84)
  store %struct.Memory* %call_418e84, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 418e8b	 Bytes: 4
  %loadMem_418e8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418e8b = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418e8b)
  store %struct.Memory* %call_418e8b, %struct.Memory** %MEMORY

  ; Code: imulq $0xf0, %rdx, %rdx	 RIP: 418e8f	 Bytes: 7
  %loadMem_418e8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418e8f = call %struct.Memory* @routine_imulq__0xf0___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418e8f)
  store %struct.Memory* %call_418e8f, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 418e96	 Bytes: 3
  %loadMem_418e96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418e96 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418e96)
  store %struct.Memory* %call_418e96, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rdx	 RIP: 418e99	 Bytes: 4
  %loadMem_418e99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418e99 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418e99)
  store %struct.Memory* %call_418e99, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rdx	 RIP: 418e9d	 Bytes: 4
  %loadMem_418e9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418e9d = call %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418e9d)
  store %struct.Memory* %call_418e9d, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 418ea1	 Bytes: 3
  %loadMem_418ea1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418ea1 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418ea1)
  store %struct.Memory* %call_418ea1, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rdx	 RIP: 418ea4	 Bytes: 8
  %loadMem_418ea4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418ea4 = call %struct.Memory* @routine_movq_0x6cb900___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418ea4)
  store %struct.Memory* %call_418ea4, %struct.Memory** %MEMORY

  ; Code: movslq 0x11b48(%rdx), %rdx	 RIP: 418eac	 Bytes: 7
  %loadMem_418eac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418eac = call %struct.Memory* @routine_movslq_0x11b48__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418eac)
  store %struct.Memory* %call_418eac, %struct.Memory** %MEMORY

  ; Code: imulq $0x3c0, %rdx, %rdx	 RIP: 418eb3	 Bytes: 7
  %loadMem_418eb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418eb3 = call %struct.Memory* @routine_imulq__0x3c0___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418eb3)
  store %struct.Memory* %call_418eb3, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 418eba	 Bytes: 3
  %loadMem_418eba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418eba = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418eba)
  store %struct.Memory* %call_418eba, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 418ebd	 Bytes: 4
  %loadMem_418ebd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418ebd = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418ebd)
  store %struct.Memory* %call_418ebd, %struct.Memory** %MEMORY

  ; Code: imulq $0x78, %rdx, %rdx	 RIP: 418ec1	 Bytes: 4
  %loadMem_418ec1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418ec1 = call %struct.Memory* @routine_imulq__0x78___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418ec1)
  store %struct.Memory* %call_418ec1, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 418ec5	 Bytes: 3
  %loadMem_418ec5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418ec5 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418ec5)
  store %struct.Memory* %call_418ec5, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rdx	 RIP: 418ec8	 Bytes: 4
  %loadMem_418ec8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418ec8 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418ec8)
  store %struct.Memory* %call_418ec8, %struct.Memory** %MEMORY

  ; Code: shlq $0x3, %rdx	 RIP: 418ecc	 Bytes: 4
  %loadMem_418ecc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418ecc = call %struct.Memory* @routine_shlq__0x3___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418ecc)
  store %struct.Memory* %call_418ecc, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 418ed0	 Bytes: 3
  %loadMem_418ed0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418ed0 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418ed0)
  store %struct.Memory* %call_418ed0, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 418ed3	 Bytes: 3
  %loadMem_418ed3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418ed3 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418ed3)
  store %struct.Memory* %call_418ed3, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 418ed6	 Bytes: 3
  %loadMem_418ed6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418ed6 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418ed6)
  store %struct.Memory* %call_418ed6, %struct.Memory** %MEMORY

  ; Code: callq .biari_init_context	 RIP: 418ed9	 Bytes: 5
  %loadMem1_418ed9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_418ed9 = call %struct.Memory* @routine_callq_.biari_init_context(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_418ed9, i64 -92745, i64 5, i64 5)
  store %struct.Memory* %call1_418ed9, %struct.Memory** %MEMORY

  %loadMem2_418ed9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_418ed9 = load i64, i64* %3
  %call2_418ed9 = call %struct.Memory* @sub_402490.biari_init_context(%struct.State* %0, i64  %loadPC_418ed9, %struct.Memory* %loadMem2_418ed9)
  store %struct.Memory* %call2_418ed9, %struct.Memory** %MEMORY

  ; Code: jmpq .L_418f4b	 RIP: 418ede	 Bytes: 5
  %loadMem_418ede = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418ede = call %struct.Memory* @routine_jmpq_.L_418f4b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418ede, i64 109, i64 5)
  store %struct.Memory* %call_418ede, %struct.Memory** %MEMORY

  br label %block_.L_418f4b

  ; Code: .L_418ee3:	 RIP: 418ee3	 Bytes: 0
block_.L_418ee3:

  ; Code: movq $0x4b7f70, %rax	 RIP: 418ee3	 Bytes: 10
  %loadMem_418ee3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418ee3 = call %struct.Memory* @routine_movq__0x4b7f70___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418ee3)
  store %struct.Memory* %call_418ee3, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 418eed	 Bytes: 4
  %loadMem_418eed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418eed = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418eed)
  store %struct.Memory* %call_418eed, %struct.Memory** %MEMORY

  ; Code: addq $0x2600, %rcx	 RIP: 418ef1	 Bytes: 7
  %loadMem_418ef1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418ef1 = call %struct.Memory* @routine_addq__0x2600___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418ef1)
  store %struct.Memory* %call_418ef1, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 418ef8	 Bytes: 4
  %loadMem_418ef8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418ef8 = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418ef8)
  store %struct.Memory* %call_418ef8, %struct.Memory** %MEMORY

  ; Code: imulq $0xf0, %rdx, %rdx	 RIP: 418efc	 Bytes: 7
  %loadMem_418efc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418efc = call %struct.Memory* @routine_imulq__0xf0___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418efc)
  store %struct.Memory* %call_418efc, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 418f03	 Bytes: 3
  %loadMem_418f03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418f03 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418f03)
  store %struct.Memory* %call_418f03, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rdx	 RIP: 418f06	 Bytes: 4
  %loadMem_418f06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418f06 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418f06)
  store %struct.Memory* %call_418f06, %struct.Memory** %MEMORY

  ; Code: shlq $0x4, %rdx	 RIP: 418f0a	 Bytes: 4
  %loadMem_418f0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418f0a = call %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418f0a)
  store %struct.Memory* %call_418f0a, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 418f0e	 Bytes: 3
  %loadMem_418f0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418f0e = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418f0e)
  store %struct.Memory* %call_418f0e, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rdx	 RIP: 418f11	 Bytes: 8
  %loadMem_418f11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418f11 = call %struct.Memory* @routine_movq_0x6cb900___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418f11)
  store %struct.Memory* %call_418f11, %struct.Memory** %MEMORY

  ; Code: movslq 0x11b48(%rdx), %rdx	 RIP: 418f19	 Bytes: 7
  %loadMem_418f19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418f19 = call %struct.Memory* @routine_movslq_0x11b48__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418f19)
  store %struct.Memory* %call_418f19, %struct.Memory** %MEMORY

  ; Code: imulq $0x3c0, %rdx, %rdx	 RIP: 418f20	 Bytes: 7
  %loadMem_418f20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418f20 = call %struct.Memory* @routine_imulq__0x3c0___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418f20)
  store %struct.Memory* %call_418f20, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 418f27	 Bytes: 3
  %loadMem_418f27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418f27 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418f27)
  store %struct.Memory* %call_418f27, %struct.Memory** %MEMORY

  ; Code: movslq -0x14(%rbp), %rdx	 RIP: 418f2a	 Bytes: 4
  %loadMem_418f2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418f2a = call %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418f2a)
  store %struct.Memory* %call_418f2a, %struct.Memory** %MEMORY

  ; Code: imulq $0x78, %rdx, %rdx	 RIP: 418f2e	 Bytes: 4
  %loadMem_418f2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418f2e = call %struct.Memory* @routine_imulq__0x78___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418f2e)
  store %struct.Memory* %call_418f2e, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 418f32	 Bytes: 3
  %loadMem_418f32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418f32 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418f32)
  store %struct.Memory* %call_418f32, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rdx	 RIP: 418f35	 Bytes: 4
  %loadMem_418f35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418f35 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418f35)
  store %struct.Memory* %call_418f35, %struct.Memory** %MEMORY

  ; Code: shlq $0x3, %rdx	 RIP: 418f39	 Bytes: 4
  %loadMem_418f39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418f39 = call %struct.Memory* @routine_shlq__0x3___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418f39)
  store %struct.Memory* %call_418f39, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 418f3d	 Bytes: 3
  %loadMem_418f3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418f3d = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418f3d)
  store %struct.Memory* %call_418f3d, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 418f40	 Bytes: 3
  %loadMem_418f40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418f40 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418f40)
  store %struct.Memory* %call_418f40, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 418f43	 Bytes: 3
  %loadMem_418f43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418f43 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418f43)
  store %struct.Memory* %call_418f43, %struct.Memory** %MEMORY

  ; Code: callq .biari_init_context	 RIP: 418f46	 Bytes: 5
  %loadMem1_418f46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_418f46 = call %struct.Memory* @routine_callq_.biari_init_context(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_418f46, i64 -92854, i64 5, i64 5)
  store %struct.Memory* %call1_418f46, %struct.Memory** %MEMORY

  %loadMem2_418f46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_418f46 = load i64, i64* %3
  %call2_418f46 = call %struct.Memory* @sub_402490.biari_init_context(%struct.State* %0, i64  %loadPC_418f46, %struct.Memory* %loadMem2_418f46)
  store %struct.Memory* %call2_418f46, %struct.Memory** %MEMORY

  ; Code: .L_418f4b:	 RIP: 418f4b	 Bytes: 0
  br label %block_.L_418f4b
block_.L_418f4b:

  ; Code: jmpq .L_418f50	 RIP: 418f4b	 Bytes: 5
  %loadMem_418f4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418f4b = call %struct.Memory* @routine_jmpq_.L_418f50(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418f4b, i64 5, i64 5)
  store %struct.Memory* %call_418f4b, %struct.Memory** %MEMORY

  br label %block_.L_418f50

  ; Code: .L_418f50:	 RIP: 418f50	 Bytes: 0
block_.L_418f50:

  ; Code: movl -0x18(%rbp), %eax	 RIP: 418f50	 Bytes: 3
  %loadMem_418f50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418f50 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418f50)
  store %struct.Memory* %call_418f50, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 418f53	 Bytes: 3
  %loadMem_418f53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418f53 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418f53)
  store %struct.Memory* %call_418f53, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x18(%rbp)	 RIP: 418f56	 Bytes: 3
  %loadMem_418f56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418f56 = call %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418f56)
  store %struct.Memory* %call_418f56, %struct.Memory** %MEMORY

  ; Code: jmpq .L_418e5a	 RIP: 418f59	 Bytes: 5
  %loadMem_418f59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418f59 = call %struct.Memory* @routine_jmpq_.L_418e5a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418f59, i64 -255, i64 5)
  store %struct.Memory* %call_418f59, %struct.Memory** %MEMORY

  br label %block_.L_418e5a

  ; Code: .L_418f5e:	 RIP: 418f5e	 Bytes: 0
block_.L_418f5e:

  ; Code: jmpq .L_418f63	 RIP: 418f5e	 Bytes: 5
  %loadMem_418f5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418f5e = call %struct.Memory* @routine_jmpq_.L_418f63(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418f5e, i64 5, i64 5)
  store %struct.Memory* %call_418f5e, %struct.Memory** %MEMORY

  br label %block_.L_418f63

  ; Code: .L_418f63:	 RIP: 418f63	 Bytes: 0
block_.L_418f63:

  ; Code: movl -0x14(%rbp), %eax	 RIP: 418f63	 Bytes: 3
  %loadMem_418f63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418f63 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418f63)
  store %struct.Memory* %call_418f63, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 418f66	 Bytes: 3
  %loadMem_418f66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418f66 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418f66)
  store %struct.Memory* %call_418f66, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x14(%rbp)	 RIP: 418f69	 Bytes: 3
  %loadMem_418f69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418f69 = call %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418f69)
  store %struct.Memory* %call_418f69, %struct.Memory** %MEMORY

  ; Code: jmpq .L_418e49	 RIP: 418f6c	 Bytes: 5
  %loadMem_418f6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418f6c = call %struct.Memory* @routine_jmpq_.L_418e49(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418f6c, i64 -291, i64 5)
  store %struct.Memory* %call_418f6c, %struct.Memory** %MEMORY

  br label %block_.L_418e49

  ; Code: .L_418f71:	 RIP: 418f71	 Bytes: 0
block_.L_418f71:

  ; Code: addq $0x20, %rsp	 RIP: 418f71	 Bytes: 4
  %loadMem_418f71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418f71 = call %struct.Memory* @routine_addq__0x20___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418f71)
  store %struct.Memory* %call_418f71, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 418f75	 Bytes: 1
  %loadMem_418f75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418f75 = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418f75)
  store %struct.Memory* %call_418f75, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 418f76	 Bytes: 1
  %loadMem_418f76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_418f76 = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_418f76)
  store %struct.Memory* %call_418f76, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_418f76
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


define %struct.Memory* @routine_movq_0x20__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 32
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = inttoptr i64 %2 to i64*
  store i64 %3, i64* %5
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__rax__MINUS0x8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}






define %struct.Memory* @routine_movq_0x28__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 40
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movq__rax__MINUS0x10__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0x0__MINUS0x14__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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

define %struct.Memory* @routine_cmpl__0x3__MINUS0x14__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 3)
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

define %struct.Memory* @routine_jge_.L_417e97(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0xb__MINUS0x18__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 11)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_417e84(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jne_.L_417e10(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = sext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
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


define %struct.Memory* @routine_movslq_0x11b48__rdx____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 72520
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %10)
  ret %struct.Memory* %13
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

define %struct.Memory* @routine_callq_.biari_init_context(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jmpq_.L_417e71(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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










































define %struct.Memory* @routine_jmpq_.L_417e76(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
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


define %struct.Memory* @routine_jmpq_.L_417d8e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_417e89(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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


define %struct.Memory* @routine_jmpq_.L_417d7d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_cmpl__0x2__MINUS0x14__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 2)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_417fc6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpl__0x9__MINUS0x18__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 9)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_417fb3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jne_.L_417f38(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
















define %struct.Memory* @routine_jmpq_.L_417fa0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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












































define %struct.Memory* @routine_jmpq_.L_417fa5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_417eaf(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_417fb8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_417e9e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_jge_.L_4180f5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpl__0xa__MINUS0x18__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_4180e2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jne_.L_418067(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
















define %struct.Memory* @routine_jmpq_.L_4180cf(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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












































define %struct.Memory* @routine_jmpq_.L_4180d4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_417fde(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_4180e7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_417fcd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_jge_.L_418218(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpl__0x6__MINUS0x18__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 6)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_418205(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jne_.L_418190(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
















define %struct.Memory* @routine_jmpq_.L_4181f2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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












































define %struct.Memory* @routine_jmpq_.L_4181f7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_41810d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_41820a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_4180fc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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


define %struct.Memory* @routine_jge_.L_4182eb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jne_.L_41828c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
















define %struct.Memory* @routine_jmpq_.L_4182d8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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
































define %struct.Memory* @routine_jmpq_.L_4182dd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_41821f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_jge_.L_4183be(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jne_.L_41835f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




























define %struct.Memory* @routine_jmpq_.L_4183ab(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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
































define %struct.Memory* @routine_jmpq_.L_4183b0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_4182f2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_cmpl__0x3__MINUS0x18__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 3)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_418491(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jne_.L_418432(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
















define %struct.Memory* @routine_jmpq_.L_41847e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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
































define %struct.Memory* @routine_jmpq_.L_418483(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_4183c5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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


define %struct.Memory* @routine_jge_.L_418556(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jne_.L_4184fe(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




























define %struct.Memory* @routine_jmpq_.L_418543(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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






























define %struct.Memory* @routine_jmpq_.L_418548(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_418498(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_jge_.L_418623(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jne_.L_4185c7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




























define %struct.Memory* @routine_jmpq_.L_418610(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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
































define %struct.Memory* @routine_jmpq_.L_418615(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_41855d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_jge_.L_418740(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jge_.L_41872d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jne_.L_4186bb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




































define %struct.Memory* @routine_jmpq_.L_41871a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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












































define %struct.Memory* @routine_jmpq_.L_41871f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_41863b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_418732(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_41862a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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


define %struct.Memory* @routine_jge_.L_418863(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jge_.L_418850(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jne_.L_4187db(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






















define %struct.Memory* @routine_jmpq_.L_41883d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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












































define %struct.Memory* @routine_jmpq_.L_418842(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_418758(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_418855(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_418747(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_jge_.L_418992(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpl__0xf__MINUS0x18__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 15)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_41897f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jne_.L_418904(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
















define %struct.Memory* @routine_jmpq_.L_41896c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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












































define %struct.Memory* @routine_jmpq_.L_418971(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_41887b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_418984(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_41886a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_jge_.L_418ac1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jge_.L_418aae(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jne_.L_418a33(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








































define %struct.Memory* @routine_jmpq_.L_418a9b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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












































define %struct.Memory* @routine_jmpq_.L_418aa0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_4189aa(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_418ab3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_418999(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_jge_.L_418bea(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpl__0x5__MINUS0x18__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 5)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_418bd7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jne_.L_418b5f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
















define %struct.Memory* @routine_jmpq_.L_418bc4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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












































define %struct.Memory* @routine_jmpq_.L_418bc9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_418ad9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_418bdc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_418ac8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_jge_.L_418d13(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jge_.L_418d00(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jne_.L_418c88(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








































define %struct.Memory* @routine_jmpq_.L_418ced(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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












































define %struct.Memory* @routine_jmpq_.L_418cf2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_418c02(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_418d05(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_418bf1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_jge_.L_418e42(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jge_.L_418e2f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jne_.L_418db4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








































define %struct.Memory* @routine_jmpq_.L_418e1c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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












































define %struct.Memory* @routine_jmpq_.L_418e21(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_418d2b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_418e34(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_418d1a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_jge_.L_418f71(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jge_.L_418f5e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jne_.L_418ee3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








































define %struct.Memory* @routine_jmpq_.L_418f4b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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












































define %struct.Memory* @routine_jmpq_.L_418f50(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_418e5a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_418f63(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_418e49(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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

