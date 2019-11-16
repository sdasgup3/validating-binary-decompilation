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
%G_0x70ea90_type = type <{ [8 x i8] }>
@G_0x70ea90= global %G_0x70ea90_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x70eaa8_type = type <{ [4 x i8] }>
@G_0x70eaa8= global %G_0x70eaa8_type <{ [4 x i8] c"\00\00\00\00" }>
%G__0x4c1b0f_type = type <{ [8 x i8] }>
@G__0x4c1b0f= global %G__0x4c1b0f_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4c1b49_type = type <{ [8 x i8] }>
@G__0x4c1b49= global %G__0x4c1b49_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4c1b8c_type = type <{ [8 x i8] }>
@G__0x4c1b8c= global %G__0x4c1b8c_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>


define %struct.Memory* @mark_pic_long_term(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .mark_pic_long_term:	 RIP: 454400	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 454400	 Bytes: 1
  %loadMem_454400 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454400 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454400)
  store %struct.Memory* %call_454400, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 454401	 Bytes: 3
  %loadMem_454401 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454401 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454401)
  store %struct.Memory* %call_454401, %struct.Memory** %MEMORY

  ; Code: subq $0x30, %rsp	 RIP: 454404	 Bytes: 4
  %loadMem_454404 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454404 = call %struct.Memory* @routine_subq__0x30___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454404)
  store %struct.Memory* %call_454404, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x8(%rbp)	 RIP: 454408	 Bytes: 4
  %loadMem_454408 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454408 = call %struct.Memory* @routine_movq__rdi__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454408)
  store %struct.Memory* %call_454408, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0xc(%rbp)	 RIP: 45440c	 Bytes: 3
  %loadMem_45440c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45440c = call %struct.Memory* @routine_movl__esi__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45440c)
  store %struct.Memory* %call_45440c, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x10(%rbp)	 RIP: 45440f	 Bytes: 3
  %loadMem_45440f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45440f = call %struct.Memory* @routine_movl__edx__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45440f)
  store %struct.Memory* %call_45440f, %struct.Memory** %MEMORY

  ; Code: movq -0x8(%rbp), %rdi	 RIP: 454412	 Bytes: 4
  %loadMem_454412 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454412 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454412)
  store %struct.Memory* %call_454412, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, (%rdi)	 RIP: 454416	 Bytes: 3
  %loadMem_454416 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454416 = call %struct.Memory* @routine_cmpl__0x0____rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454416)
  store %struct.Memory* %call_454416, %struct.Memory** %MEMORY

  ; Code: jne .L_4545fe	 RIP: 454419	 Bytes: 6
  %loadMem_454419 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454419 = call %struct.Memory* @routine_jne_.L_4545fe(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454419, i8* %BRANCH_TAKEN, i64 485, i64 6, i64 6)
  store %struct.Memory* %call_454419, %struct.Memory** %MEMORY

  %loadBr_454419 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_454419 = icmp eq i8 %loadBr_454419, 1
  br i1 %cmpBr_454419, label %block_.L_4545fe, label %block_45441f

block_45441f:
  ; Code: movl $0x0, -0x14(%rbp)	 RIP: 45441f	 Bytes: 7
  %loadMem_45441f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45441f = call %struct.Memory* @routine_movl__0x0__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45441f)
  store %struct.Memory* %call_45441f, %struct.Memory** %MEMORY

  ; Code: .L_454426:	 RIP: 454426	 Bytes: 0
  br label %block_.L_454426
block_.L_454426:

  ; Code: movl -0x14(%rbp), %eax	 RIP: 454426	 Bytes: 3
  %loadMem_454426 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454426 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454426)
  store %struct.Memory* %call_454426, %struct.Memory** %MEMORY

  ; Code: cmpl 0x70eaa8, %eax	 RIP: 454429	 Bytes: 7
  %loadMem_454429 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454429 = call %struct.Memory* @routine_cmpl_0x70eaa8___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454429)
  store %struct.Memory* %call_454429, %struct.Memory** %MEMORY

  ; Code: jae .L_4545e5	 RIP: 454430	 Bytes: 6
  %loadMem_454430 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454430 = call %struct.Memory* @routine_jae_.L_4545e5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454430, i8* %BRANCH_TAKEN, i64 437, i64 6, i64 6)
  store %struct.Memory* %call_454430, %struct.Memory** %MEMORY

  %loadBr_454430 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_454430 = icmp eq i8 %loadBr_454430, 1
  br i1 %cmpBr_454430, label %block_.L_4545e5, label %block_454436

block_454436:
  ; Code: movq 0x70ea90, %rax	 RIP: 454436	 Bytes: 8
  %loadMem_454436 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454436 = call %struct.Memory* @routine_movq_0x70ea90___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454436)
  store %struct.Memory* %call_454436, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %ecx	 RIP: 45443e	 Bytes: 3
  %loadMem_45443e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45443e = call %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45443e)
  store %struct.Memory* %call_45443e, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 454441	 Bytes: 2
  %loadMem_454441 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454441 = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454441)
  store %struct.Memory* %call_454441, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 454443	 Bytes: 4
  %loadMem_454443 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454443 = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454443)
  store %struct.Memory* %call_454443, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, 0x4(%rax)	 RIP: 454447	 Bytes: 4
  %loadMem_454447 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454447 = call %struct.Memory* @routine_cmpl__0x3__0x4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454447)
  store %struct.Memory* %call_454447, %struct.Memory** %MEMORY

  ; Code: jne .L_4545d2	 RIP: 45444b	 Bytes: 6
  %loadMem_45444b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45444b = call %struct.Memory* @routine_jne_.L_4545d2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45444b, i8* %BRANCH_TAKEN, i64 391, i64 6, i64 6)
  store %struct.Memory* %call_45444b, %struct.Memory** %MEMORY

  %loadBr_45444b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45444b = icmp eq i8 %loadBr_45444b, 1
  br i1 %cmpBr_45444b, label %block_.L_4545d2, label %block_454451

block_454451:
  ; Code: movq 0x70ea90, %rax	 RIP: 454451	 Bytes: 8
  %loadMem_454451 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454451 = call %struct.Memory* @routine_movq_0x70ea90___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454451)
  store %struct.Memory* %call_454451, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %ecx	 RIP: 454459	 Bytes: 3
  %loadMem_454459 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454459 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454459)
  store %struct.Memory* %call_454459, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 45445c	 Bytes: 2
  %loadMem_45445c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45445c = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45445c)
  store %struct.Memory* %call_45445c, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 45445e	 Bytes: 4
  %loadMem_45445e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45445e = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45445e)
  store %struct.Memory* %call_45445e, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rax), %rax	 RIP: 454462	 Bytes: 4
  %loadMem_454462 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454462 = call %struct.Memory* @routine_movq_0x28__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454462)
  store %struct.Memory* %call_454462, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x18e8(%rax)	 RIP: 454466	 Bytes: 7
  %loadMem_454466 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454466 = call %struct.Memory* @routine_cmpl__0x0__0x18e8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454466)
  store %struct.Memory* %call_454466, %struct.Memory** %MEMORY

  ; Code: jne .L_4545cd	 RIP: 45446d	 Bytes: 6
  %loadMem_45446d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45446d = call %struct.Memory* @routine_jne_.L_4545cd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45446d, i8* %BRANCH_TAKEN, i64 352, i64 6, i64 6)
  store %struct.Memory* %call_45446d, %struct.Memory** %MEMORY

  %loadBr_45446d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45446d = icmp eq i8 %loadBr_45446d, 1
  br i1 %cmpBr_45446d, label %block_.L_4545cd, label %block_454473

block_454473:
  ; Code: movq 0x70ea90, %rax	 RIP: 454473	 Bytes: 8
  %loadMem_454473 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454473 = call %struct.Memory* @routine_movq_0x70ea90___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454473)
  store %struct.Memory* %call_454473, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %ecx	 RIP: 45447b	 Bytes: 3
  %loadMem_45447b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45447b = call %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45447b)
  store %struct.Memory* %call_45447b, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 45447e	 Bytes: 2
  %loadMem_45447e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45447e = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45447e)
  store %struct.Memory* %call_45447e, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 454480	 Bytes: 4
  %loadMem_454480 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454480 = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454480)
  store %struct.Memory* %call_454480, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rax), %rax	 RIP: 454484	 Bytes: 4
  %loadMem_454484 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454484 = call %struct.Memory* @routine_movq_0x28__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454484)
  store %struct.Memory* %call_454484, %struct.Memory** %MEMORY

  ; Code: movl 0x18dc(%rax), %ecx	 RIP: 454488	 Bytes: 6
  %loadMem_454488 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454488 = call %struct.Memory* @routine_movl_0x18dc__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454488)
  store %struct.Memory* %call_454488, %struct.Memory** %MEMORY

  ; Code: cmpl -0x10(%rbp), %ecx	 RIP: 45448e	 Bytes: 3
  %loadMem_45448e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45448e = call %struct.Memory* @routine_cmpl_MINUS0x10__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45448e)
  store %struct.Memory* %call_45448e, %struct.Memory** %MEMORY

  ; Code: jne .L_4545cd	 RIP: 454491	 Bytes: 6
  %loadMem_454491 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454491 = call %struct.Memory* @routine_jne_.L_4545cd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454491, i8* %BRANCH_TAKEN, i64 316, i64 6, i64 6)
  store %struct.Memory* %call_454491, %struct.Memory** %MEMORY

  %loadBr_454491 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_454491 = icmp eq i8 %loadBr_454491, 1
  br i1 %cmpBr_454491, label %block_.L_4545cd, label %block_454497

block_454497:
  ; Code: movl -0xc(%rbp), %eax	 RIP: 454497	 Bytes: 3
  %loadMem_454497 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454497 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454497)
  store %struct.Memory* %call_454497, %struct.Memory** %MEMORY

  ; Code: movq 0x70ea90, %rcx	 RIP: 45449a	 Bytes: 8
  %loadMem_45449a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45449a = call %struct.Memory* @routine_movq_0x70ea90___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45449a)
  store %struct.Memory* %call_45449a, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %edx	 RIP: 4544a2	 Bytes: 3
  %loadMem_4544a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4544a2 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4544a2)
  store %struct.Memory* %call_4544a2, %struct.Memory** %MEMORY

  ; Code: movl %edx, %esi	 RIP: 4544a5	 Bytes: 2
  %loadMem_4544a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4544a5 = call %struct.Memory* @routine_movl__edx___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4544a5)
  store %struct.Memory* %call_4544a5, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rsi,8), %rcx	 RIP: 4544a7	 Bytes: 4
  %loadMem_4544a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4544a7 = call %struct.Memory* @routine_movq___rcx__rsi_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4544a7)
  store %struct.Memory* %call_4544a7, %struct.Memory** %MEMORY

  ; Code: movq 0x38(%rcx), %rcx	 RIP: 4544ab	 Bytes: 4
  %loadMem_4544ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4544ab = call %struct.Memory* @routine_movq_0x38__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4544ab)
  store %struct.Memory* %call_4544ab, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x18e4(%rcx)	 RIP: 4544af	 Bytes: 6
  %loadMem_4544af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4544af = call %struct.Memory* @routine_movl__eax__0x18e4__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4544af)
  store %struct.Memory* %call_4544af, %struct.Memory** %MEMORY

  ; Code: movq 0x70ea90, %rcx	 RIP: 4544b5	 Bytes: 8
  %loadMem_4544b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4544b5 = call %struct.Memory* @routine_movq_0x70ea90___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4544b5)
  store %struct.Memory* %call_4544b5, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %edx	 RIP: 4544bd	 Bytes: 3
  %loadMem_4544bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4544bd = call %struct.Memory* @routine_movl_MINUS0x14__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4544bd)
  store %struct.Memory* %call_4544bd, %struct.Memory** %MEMORY

  ; Code: movl %edx, %esi	 RIP: 4544c0	 Bytes: 2
  %loadMem_4544c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4544c0 = call %struct.Memory* @routine_movl__edx___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4544c0)
  store %struct.Memory* %call_4544c0, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rsi,8), %rcx	 RIP: 4544c2	 Bytes: 4
  %loadMem_4544c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4544c2 = call %struct.Memory* @routine_movq___rcx__rsi_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4544c2)
  store %struct.Memory* %call_4544c2, %struct.Memory** %MEMORY

  ; Code: movq 0x30(%rcx), %rcx	 RIP: 4544c6	 Bytes: 4
  %loadMem_4544c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4544c6 = call %struct.Memory* @routine_movq_0x30__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4544c6)
  store %struct.Memory* %call_4544c6, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x18e4(%rcx)	 RIP: 4544ca	 Bytes: 6
  %loadMem_4544ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4544ca = call %struct.Memory* @routine_movl__eax__0x18e4__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4544ca)
  store %struct.Memory* %call_4544ca, %struct.Memory** %MEMORY

  ; Code: movq 0x70ea90, %rcx	 RIP: 4544d0	 Bytes: 8
  %loadMem_4544d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4544d0 = call %struct.Memory* @routine_movq_0x70ea90___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4544d0)
  store %struct.Memory* %call_4544d0, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %edx	 RIP: 4544d8	 Bytes: 3
  %loadMem_4544d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4544d8 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4544d8)
  store %struct.Memory* %call_4544d8, %struct.Memory** %MEMORY

  ; Code: movl %edx, %esi	 RIP: 4544db	 Bytes: 2
  %loadMem_4544db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4544db = call %struct.Memory* @routine_movl__edx___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4544db)
  store %struct.Memory* %call_4544db, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rsi,8), %rcx	 RIP: 4544dd	 Bytes: 4
  %loadMem_4544dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4544dd = call %struct.Memory* @routine_movq___rcx__rsi_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4544dd)
  store %struct.Memory* %call_4544dd, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rcx), %rcx	 RIP: 4544e1	 Bytes: 4
  %loadMem_4544e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4544e1 = call %struct.Memory* @routine_movq_0x28__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4544e1)
  store %struct.Memory* %call_4544e1, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x18e4(%rcx)	 RIP: 4544e5	 Bytes: 6
  %loadMem_4544e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4544e5 = call %struct.Memory* @routine_movl__eax__0x18e4__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4544e5)
  store %struct.Memory* %call_4544e5, %struct.Memory** %MEMORY

  ; Code: movq 0x70ea90, %rcx	 RIP: 4544eb	 Bytes: 8
  %loadMem_4544eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4544eb = call %struct.Memory* @routine_movq_0x70ea90___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4544eb)
  store %struct.Memory* %call_4544eb, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %edx	 RIP: 4544f3	 Bytes: 3
  %loadMem_4544f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4544f3 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4544f3)
  store %struct.Memory* %call_4544f3, %struct.Memory** %MEMORY

  ; Code: movl %edx, %esi	 RIP: 4544f6	 Bytes: 2
  %loadMem_4544f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4544f6 = call %struct.Memory* @routine_movl__edx___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4544f6)
  store %struct.Memory* %call_4544f6, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rsi,8), %rcx	 RIP: 4544f8	 Bytes: 4
  %loadMem_4544f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4544f8 = call %struct.Memory* @routine_movq___rcx__rsi_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4544f8)
  store %struct.Memory* %call_4544f8, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x1c(%rcx)	 RIP: 4544fc	 Bytes: 3
  %loadMem_4544fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4544fc = call %struct.Memory* @routine_movl__eax__0x1c__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4544fc)
  store %struct.Memory* %call_4544fc, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %eax	 RIP: 4544ff	 Bytes: 3
  %loadMem_4544ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4544ff = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4544ff)
  store %struct.Memory* %call_4544ff, %struct.Memory** %MEMORY

  ; Code: movq 0x70ea90, %rcx	 RIP: 454502	 Bytes: 8
  %loadMem_454502 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454502 = call %struct.Memory* @routine_movq_0x70ea90___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454502)
  store %struct.Memory* %call_454502, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %edx	 RIP: 45450a	 Bytes: 3
  %loadMem_45450a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45450a = call %struct.Memory* @routine_movl_MINUS0x14__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45450a)
  store %struct.Memory* %call_45450a, %struct.Memory** %MEMORY

  ; Code: movl %edx, %esi	 RIP: 45450d	 Bytes: 2
  %loadMem_45450d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45450d = call %struct.Memory* @routine_movl__edx___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45450d)
  store %struct.Memory* %call_45450d, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rsi,8), %rcx	 RIP: 45450f	 Bytes: 4
  %loadMem_45450f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45450f = call %struct.Memory* @routine_movq___rcx__rsi_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45450f)
  store %struct.Memory* %call_45450f, %struct.Memory** %MEMORY

  ; Code: movq 0x38(%rcx), %rcx	 RIP: 454513	 Bytes: 4
  %loadMem_454513 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454513 = call %struct.Memory* @routine_movq_0x38__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454513)
  store %struct.Memory* %call_454513, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x18e0(%rcx)	 RIP: 454517	 Bytes: 6
  %loadMem_454517 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454517 = call %struct.Memory* @routine_movl__eax__0x18e0__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454517)
  store %struct.Memory* %call_454517, %struct.Memory** %MEMORY

  ; Code: movq 0x70ea90, %rcx	 RIP: 45451d	 Bytes: 8
  %loadMem_45451d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45451d = call %struct.Memory* @routine_movq_0x70ea90___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45451d)
  store %struct.Memory* %call_45451d, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %edx	 RIP: 454525	 Bytes: 3
  %loadMem_454525 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454525 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454525)
  store %struct.Memory* %call_454525, %struct.Memory** %MEMORY

  ; Code: movl %edx, %esi	 RIP: 454528	 Bytes: 2
  %loadMem_454528 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454528 = call %struct.Memory* @routine_movl__edx___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454528)
  store %struct.Memory* %call_454528, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rsi,8), %rcx	 RIP: 45452a	 Bytes: 4
  %loadMem_45452a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45452a = call %struct.Memory* @routine_movq___rcx__rsi_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45452a)
  store %struct.Memory* %call_45452a, %struct.Memory** %MEMORY

  ; Code: movq 0x30(%rcx), %rcx	 RIP: 45452e	 Bytes: 4
  %loadMem_45452e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45452e = call %struct.Memory* @routine_movq_0x30__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45452e)
  store %struct.Memory* %call_45452e, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x18e0(%rcx)	 RIP: 454532	 Bytes: 6
  %loadMem_454532 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454532 = call %struct.Memory* @routine_movl__eax__0x18e0__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454532)
  store %struct.Memory* %call_454532, %struct.Memory** %MEMORY

  ; Code: movq 0x70ea90, %rcx	 RIP: 454538	 Bytes: 8
  %loadMem_454538 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454538 = call %struct.Memory* @routine_movq_0x70ea90___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454538)
  store %struct.Memory* %call_454538, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %edx	 RIP: 454540	 Bytes: 3
  %loadMem_454540 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454540 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454540)
  store %struct.Memory* %call_454540, %struct.Memory** %MEMORY

  ; Code: movl %edx, %esi	 RIP: 454543	 Bytes: 2
  %loadMem_454543 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454543 = call %struct.Memory* @routine_movl__edx___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454543)
  store %struct.Memory* %call_454543, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rsi,8), %rcx	 RIP: 454545	 Bytes: 4
  %loadMem_454545 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454545 = call %struct.Memory* @routine_movq___rcx__rsi_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454545)
  store %struct.Memory* %call_454545, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rcx), %rcx	 RIP: 454549	 Bytes: 4
  %loadMem_454549 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454549 = call %struct.Memory* @routine_movq_0x28__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454549)
  store %struct.Memory* %call_454549, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x18e0(%rcx)	 RIP: 45454d	 Bytes: 6
  %loadMem_45454d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45454d = call %struct.Memory* @routine_movl__eax__0x18e0__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45454d)
  store %struct.Memory* %call_45454d, %struct.Memory** %MEMORY

  ; Code: movq 0x70ea90, %rcx	 RIP: 454553	 Bytes: 8
  %loadMem_454553 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454553 = call %struct.Memory* @routine_movq_0x70ea90___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454553)
  store %struct.Memory* %call_454553, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %eax	 RIP: 45455b	 Bytes: 3
  %loadMem_45455b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45455b = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45455b)
  store %struct.Memory* %call_45455b, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 45455e	 Bytes: 2
  %loadMem_45455e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45455e = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45455e)
  store %struct.Memory* %call_45455e, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rsi,8), %rcx	 RIP: 454560	 Bytes: 4
  %loadMem_454560 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454560 = call %struct.Memory* @routine_movq___rcx__rsi_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454560)
  store %struct.Memory* %call_454560, %struct.Memory** %MEMORY

  ; Code: movq 0x38(%rcx), %rcx	 RIP: 454564	 Bytes: 4
  %loadMem_454564 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454564 = call %struct.Memory* @routine_movq_0x38__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454564)
  store %struct.Memory* %call_454564, %struct.Memory** %MEMORY

  ; Code: movl $0x1, 0x18e8(%rcx)	 RIP: 454568	 Bytes: 10
  %loadMem_454568 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454568 = call %struct.Memory* @routine_movl__0x1__0x18e8__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454568)
  store %struct.Memory* %call_454568, %struct.Memory** %MEMORY

  ; Code: movq 0x70ea90, %rcx	 RIP: 454572	 Bytes: 8
  %loadMem_454572 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454572 = call %struct.Memory* @routine_movq_0x70ea90___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454572)
  store %struct.Memory* %call_454572, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %eax	 RIP: 45457a	 Bytes: 3
  %loadMem_45457a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45457a = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45457a)
  store %struct.Memory* %call_45457a, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 45457d	 Bytes: 2
  %loadMem_45457d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45457d = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45457d)
  store %struct.Memory* %call_45457d, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rsi,8), %rcx	 RIP: 45457f	 Bytes: 4
  %loadMem_45457f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45457f = call %struct.Memory* @routine_movq___rcx__rsi_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45457f)
  store %struct.Memory* %call_45457f, %struct.Memory** %MEMORY

  ; Code: movq 0x30(%rcx), %rcx	 RIP: 454583	 Bytes: 4
  %loadMem_454583 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454583 = call %struct.Memory* @routine_movq_0x30__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454583)
  store %struct.Memory* %call_454583, %struct.Memory** %MEMORY

  ; Code: movl $0x1, 0x18e8(%rcx)	 RIP: 454587	 Bytes: 10
  %loadMem_454587 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454587 = call %struct.Memory* @routine_movl__0x1__0x18e8__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454587)
  store %struct.Memory* %call_454587, %struct.Memory** %MEMORY

  ; Code: movq 0x70ea90, %rcx	 RIP: 454591	 Bytes: 8
  %loadMem_454591 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454591 = call %struct.Memory* @routine_movq_0x70ea90___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454591)
  store %struct.Memory* %call_454591, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %eax	 RIP: 454599	 Bytes: 3
  %loadMem_454599 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454599 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454599)
  store %struct.Memory* %call_454599, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 45459c	 Bytes: 2
  %loadMem_45459c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45459c = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45459c)
  store %struct.Memory* %call_45459c, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rsi,8), %rcx	 RIP: 45459e	 Bytes: 4
  %loadMem_45459e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45459e = call %struct.Memory* @routine_movq___rcx__rsi_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45459e)
  store %struct.Memory* %call_45459e, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rcx), %rcx	 RIP: 4545a2	 Bytes: 4
  %loadMem_4545a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4545a2 = call %struct.Memory* @routine_movq_0x28__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4545a2)
  store %struct.Memory* %call_4545a2, %struct.Memory** %MEMORY

  ; Code: movl $0x1, 0x18e8(%rcx)	 RIP: 4545a6	 Bytes: 10
  %loadMem_4545a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4545a6 = call %struct.Memory* @routine_movl__0x1__0x18e8__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4545a6)
  store %struct.Memory* %call_4545a6, %struct.Memory** %MEMORY

  ; Code: movq 0x70ea90, %rcx	 RIP: 4545b0	 Bytes: 8
  %loadMem_4545b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4545b0 = call %struct.Memory* @routine_movq_0x70ea90___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4545b0)
  store %struct.Memory* %call_4545b0, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %eax	 RIP: 4545b8	 Bytes: 3
  %loadMem_4545b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4545b8 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4545b8)
  store %struct.Memory* %call_4545b8, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 4545bb	 Bytes: 2
  %loadMem_4545bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4545bb = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4545bb)
  store %struct.Memory* %call_4545bb, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rsi,8), %rcx	 RIP: 4545bd	 Bytes: 4
  %loadMem_4545bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4545bd = call %struct.Memory* @routine_movq___rcx__rsi_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4545bd)
  store %struct.Memory* %call_4545bd, %struct.Memory** %MEMORY

  ; Code: movl $0x3, 0x8(%rcx)	 RIP: 4545c1	 Bytes: 7
  %loadMem_4545c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4545c1 = call %struct.Memory* @routine_movl__0x3__0x8__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4545c1)
  store %struct.Memory* %call_4545c1, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4549e6	 RIP: 4545c8	 Bytes: 5
  %loadMem_4545c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4545c8 = call %struct.Memory* @routine_jmpq_.L_4549e6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4545c8, i64 1054, i64 5)
  store %struct.Memory* %call_4545c8, %struct.Memory** %MEMORY

  br label %block_.L_4549e6

  ; Code: .L_4545cd:	 RIP: 4545cd	 Bytes: 0
block_.L_4545cd:

  ; Code: jmpq .L_4545d2	 RIP: 4545cd	 Bytes: 5
  %loadMem_4545cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4545cd = call %struct.Memory* @routine_jmpq_.L_4545d2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4545cd, i64 5, i64 5)
  store %struct.Memory* %call_4545cd, %struct.Memory** %MEMORY

  br label %block_.L_4545d2

  ; Code: .L_4545d2:	 RIP: 4545d2	 Bytes: 0
block_.L_4545d2:

  ; Code: jmpq .L_4545d7	 RIP: 4545d2	 Bytes: 5
  %loadMem_4545d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4545d2 = call %struct.Memory* @routine_jmpq_.L_4545d7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4545d2, i64 5, i64 5)
  store %struct.Memory* %call_4545d2, %struct.Memory** %MEMORY

  br label %block_.L_4545d7

  ; Code: .L_4545d7:	 RIP: 4545d7	 Bytes: 0
block_.L_4545d7:

  ; Code: movl -0x14(%rbp), %eax	 RIP: 4545d7	 Bytes: 3
  %loadMem_4545d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4545d7 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4545d7)
  store %struct.Memory* %call_4545d7, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4545da	 Bytes: 3
  %loadMem_4545da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4545da = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4545da)
  store %struct.Memory* %call_4545da, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x14(%rbp)	 RIP: 4545dd	 Bytes: 3
  %loadMem_4545dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4545dd = call %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4545dd)
  store %struct.Memory* %call_4545dd, %struct.Memory** %MEMORY

  ; Code: jmpq .L_454426	 RIP: 4545e0	 Bytes: 5
  %loadMem_4545e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4545e0 = call %struct.Memory* @routine_jmpq_.L_454426(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4545e0, i64 -442, i64 5)
  store %struct.Memory* %call_4545e0, %struct.Memory** %MEMORY

  br label %block_.L_454426

  ; Code: .L_4545e5:	 RIP: 4545e5	 Bytes: 0
block_.L_4545e5:

  ; Code: movq $0x4c1b0f, %rdi	 RIP: 4545e5	 Bytes: 10
  %loadMem_4545e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4545e5 = call %struct.Memory* @routine_movq__0x4c1b0f___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4545e5)
  store %struct.Memory* %call_4545e5, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 4545ef	 Bytes: 2
  %loadMem_4545ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4545ef = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4545ef)
  store %struct.Memory* %call_4545ef, %struct.Memory** %MEMORY

  ; Code: callq .printf_plt	 RIP: 4545f1	 Bytes: 5
  %loadMem1_4545f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4545f1 = call %struct.Memory* @routine_callq_.printf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4545f1, i64 -341425, i64 5, i64 5)
  store %struct.Memory* %call1_4545f1, %struct.Memory** %MEMORY

  %loadMem2_4545f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4545f1 = load i64, i64* %3
  %call2_4545f1 = call %struct.Memory* @ext_printf(%struct.State* %0, i64  %loadPC_4545f1, %struct.Memory* %loadMem2_4545f1)
  store %struct.Memory* %call2_4545f1, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x20(%rbp)	 RIP: 4545f6	 Bytes: 3
  %loadMem_4545f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4545f6 = call %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4545f6)
  store %struct.Memory* %call_4545f6, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4549e6	 RIP: 4545f9	 Bytes: 5
  %loadMem_4545f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4545f9 = call %struct.Memory* @routine_jmpq_.L_4549e6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4545f9, i64 1005, i64 5)
  store %struct.Memory* %call_4545f9, %struct.Memory** %MEMORY

  br label %block_.L_4549e6

  ; Code: .L_4545fe:	 RIP: 4545fe	 Bytes: 0
block_.L_4545fe:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 4545fe	 Bytes: 4
  %loadMem_4545fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4545fe = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4545fe)
  store %struct.Memory* %call_4545fe, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, (%rax)	 RIP: 454602	 Bytes: 3
  %loadMem_454602 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454602 = call %struct.Memory* @routine_cmpl__0x1____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454602)
  store %struct.Memory* %call_454602, %struct.Memory** %MEMORY

  ; Code: jne .L_45461e	 RIP: 454605	 Bytes: 6
  %loadMem_454605 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454605 = call %struct.Memory* @routine_jne_.L_45461e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454605, i8* %BRANCH_TAKEN, i64 25, i64 6, i64 6)
  store %struct.Memory* %call_454605, %struct.Memory** %MEMORY

  %loadBr_454605 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_454605 = icmp eq i8 %loadBr_454605, 1
  br i1 %cmpBr_454605, label %block_.L_45461e, label %block_45460b

block_45460b:
  ; Code: movl $0x1, -0x18(%rbp)	 RIP: 45460b	 Bytes: 7
  %loadMem_45460b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45460b = call %struct.Memory* @routine_movl__0x1__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45460b)
  store %struct.Memory* %call_45460b, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x1c(%rbp)	 RIP: 454612	 Bytes: 7
  %loadMem_454612 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454612 = call %struct.Memory* @routine_movl__0x0__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454612)
  store %struct.Memory* %call_454612, %struct.Memory** %MEMORY

  ; Code: jmpq .L_45462c	 RIP: 454619	 Bytes: 5
  %loadMem_454619 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454619 = call %struct.Memory* @routine_jmpq_.L_45462c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454619, i64 19, i64 5)
  store %struct.Memory* %call_454619, %struct.Memory** %MEMORY

  br label %block_.L_45462c

  ; Code: .L_45461e:	 RIP: 45461e	 Bytes: 0
block_.L_45461e:

  ; Code: movl $0x0, -0x18(%rbp)	 RIP: 45461e	 Bytes: 7
  %loadMem_45461e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45461e = call %struct.Memory* @routine_movl__0x0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45461e)
  store %struct.Memory* %call_45461e, %struct.Memory** %MEMORY

  ; Code: movl $0x1, -0x1c(%rbp)	 RIP: 454625	 Bytes: 7
  %loadMem_454625 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454625 = call %struct.Memory* @routine_movl__0x1__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454625)
  store %struct.Memory* %call_454625, %struct.Memory** %MEMORY

  ; Code: .L_45462c:	 RIP: 45462c	 Bytes: 0
  br label %block_.L_45462c
block_.L_45462c:

  ; Code: movl $0x0, -0x14(%rbp)	 RIP: 45462c	 Bytes: 7
  %loadMem_45462c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45462c = call %struct.Memory* @routine_movl__0x0__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45462c)
  store %struct.Memory* %call_45462c, %struct.Memory** %MEMORY

  ; Code: .L_454633:	 RIP: 454633	 Bytes: 0
  br label %block_.L_454633
block_.L_454633:

  ; Code: movl -0x14(%rbp), %eax	 RIP: 454633	 Bytes: 3
  %loadMem_454633 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454633 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454633)
  store %struct.Memory* %call_454633, %struct.Memory** %MEMORY

  ; Code: cmpl 0x70eaa8, %eax	 RIP: 454636	 Bytes: 7
  %loadMem_454636 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454636 = call %struct.Memory* @routine_cmpl_0x70eaa8___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454636)
  store %struct.Memory* %call_454636, %struct.Memory** %MEMORY

  ; Code: jae .L_4549d2	 RIP: 45463d	 Bytes: 6
  %loadMem_45463d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45463d = call %struct.Memory* @routine_jae_.L_4549d2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45463d, i8* %BRANCH_TAKEN, i64 917, i64 6, i64 6)
  store %struct.Memory* %call_45463d, %struct.Memory** %MEMORY

  %loadBr_45463d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45463d = icmp eq i8 %loadBr_45463d, 1
  br i1 %cmpBr_45463d, label %block_.L_4549d2, label %block_454643

block_454643:
  ; Code: movq 0x70ea90, %rax	 RIP: 454643	 Bytes: 8
  %loadMem_454643 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454643 = call %struct.Memory* @routine_movq_0x70ea90___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454643)
  store %struct.Memory* %call_454643, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %ecx	 RIP: 45464b	 Bytes: 3
  %loadMem_45464b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45464b = call %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45464b)
  store %struct.Memory* %call_45464b, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 45464e	 Bytes: 2
  %loadMem_45464e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45464e = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45464e)
  store %struct.Memory* %call_45464e, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 454650	 Bytes: 4
  %loadMem_454650 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454650 = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454650)
  store %struct.Memory* %call_454650, %struct.Memory** %MEMORY

  ; Code: movl 0x4(%rax), %ecx	 RIP: 454654	 Bytes: 3
  %loadMem_454654 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454654 = call %struct.Memory* @routine_movl_0x4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454654)
  store %struct.Memory* %call_454654, %struct.Memory** %MEMORY

  ; Code: andl $0x1, %ecx	 RIP: 454657	 Bytes: 3
  %loadMem_454657 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454657 = call %struct.Memory* @routine_andl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454657)
  store %struct.Memory* %call_454657, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %ecx	 RIP: 45465a	 Bytes: 3
  %loadMem_45465a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45465a = call %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45465a)
  store %struct.Memory* %call_45465a, %struct.Memory** %MEMORY

  ; Code: je .L_454801	 RIP: 45465d	 Bytes: 6
  %loadMem_45465d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45465d = call %struct.Memory* @routine_je_.L_454801(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45465d, i8* %BRANCH_TAKEN, i64 420, i64 6, i64 6)
  store %struct.Memory* %call_45465d, %struct.Memory** %MEMORY

  %loadBr_45465d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45465d = icmp eq i8 %loadBr_45465d, 1
  br i1 %cmpBr_45465d, label %block_.L_454801, label %block_454663

block_454663:
  ; Code: movq 0x70ea90, %rax	 RIP: 454663	 Bytes: 8
  %loadMem_454663 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454663 = call %struct.Memory* @routine_movq_0x70ea90___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454663)
  store %struct.Memory* %call_454663, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %ecx	 RIP: 45466b	 Bytes: 3
  %loadMem_45466b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45466b = call %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45466b)
  store %struct.Memory* %call_45466b, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 45466e	 Bytes: 2
  %loadMem_45466e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45466e = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45466e)
  store %struct.Memory* %call_45466e, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 454670	 Bytes: 4
  %loadMem_454670 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454670 = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454670)
  store %struct.Memory* %call_454670, %struct.Memory** %MEMORY

  ; Code: movq 0x30(%rax), %rax	 RIP: 454674	 Bytes: 4
  %loadMem_454674 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454674 = call %struct.Memory* @routine_movq_0x30__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454674)
  store %struct.Memory* %call_454674, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x18e8(%rax)	 RIP: 454678	 Bytes: 7
  %loadMem_454678 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454678 = call %struct.Memory* @routine_cmpl__0x0__0x18e8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454678)
  store %struct.Memory* %call_454678, %struct.Memory** %MEMORY

  ; Code: jne .L_4547fc	 RIP: 45467f	 Bytes: 6
  %loadMem_45467f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45467f = call %struct.Memory* @routine_jne_.L_4547fc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45467f, i8* %BRANCH_TAKEN, i64 381, i64 6, i64 6)
  store %struct.Memory* %call_45467f, %struct.Memory** %MEMORY

  %loadBr_45467f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45467f = icmp eq i8 %loadBr_45467f, 1
  br i1 %cmpBr_45467f, label %block_.L_4547fc, label %block_454685

block_454685:
  ; Code: movq 0x70ea90, %rax	 RIP: 454685	 Bytes: 8
  %loadMem_454685 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454685 = call %struct.Memory* @routine_movq_0x70ea90___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454685)
  store %struct.Memory* %call_454685, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %ecx	 RIP: 45468d	 Bytes: 3
  %loadMem_45468d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45468d = call %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45468d)
  store %struct.Memory* %call_45468d, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 454690	 Bytes: 2
  %loadMem_454690 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454690 = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454690)
  store %struct.Memory* %call_454690, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 454692	 Bytes: 4
  %loadMem_454692 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454692 = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454692)
  store %struct.Memory* %call_454692, %struct.Memory** %MEMORY

  ; Code: movq 0x30(%rax), %rax	 RIP: 454696	 Bytes: 4
  %loadMem_454696 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454696 = call %struct.Memory* @routine_movq_0x30__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454696)
  store %struct.Memory* %call_454696, %struct.Memory** %MEMORY

  ; Code: movl 0x18dc(%rax), %ecx	 RIP: 45469a	 Bytes: 6
  %loadMem_45469a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45469a = call %struct.Memory* @routine_movl_0x18dc__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45469a)
  store %struct.Memory* %call_45469a, %struct.Memory** %MEMORY

  ; Code: cmpl -0x10(%rbp), %ecx	 RIP: 4546a0	 Bytes: 3
  %loadMem_4546a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4546a0 = call %struct.Memory* @routine_cmpl_MINUS0x10__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4546a0)
  store %struct.Memory* %call_4546a0, %struct.Memory** %MEMORY

  ; Code: jne .L_4547fc	 RIP: 4546a3	 Bytes: 6
  %loadMem_4546a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4546a3 = call %struct.Memory* @routine_jne_.L_4547fc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4546a3, i8* %BRANCH_TAKEN, i64 345, i64 6, i64 6)
  store %struct.Memory* %call_4546a3, %struct.Memory** %MEMORY

  %loadBr_4546a3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4546a3 = icmp eq i8 %loadBr_4546a3, 1
  br i1 %cmpBr_4546a3, label %block_.L_4547fc, label %block_4546a9

block_4546a9:
  ; Code: movq 0x70ea90, %rax	 RIP: 4546a9	 Bytes: 8
  %loadMem_4546a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4546a9 = call %struct.Memory* @routine_movq_0x70ea90___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4546a9)
  store %struct.Memory* %call_4546a9, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %ecx	 RIP: 4546b1	 Bytes: 3
  %loadMem_4546b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4546b1 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4546b1)
  store %struct.Memory* %call_4546b1, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 4546b4	 Bytes: 2
  %loadMem_4546b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4546b4 = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4546b4)
  store %struct.Memory* %call_4546b4, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 4546b6	 Bytes: 4
  %loadMem_4546b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4546b6 = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4546b6)
  store %struct.Memory* %call_4546b6, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x8(%rax)	 RIP: 4546ba	 Bytes: 4
  %loadMem_4546ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4546ba = call %struct.Memory* @routine_cmpl__0x0__0x8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4546ba)
  store %struct.Memory* %call_4546ba, %struct.Memory** %MEMORY

  ; Code: je .L_4546f5	 RIP: 4546be	 Bytes: 6
  %loadMem_4546be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4546be = call %struct.Memory* @routine_je_.L_4546f5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4546be, i8* %BRANCH_TAKEN, i64 55, i64 6, i64 6)
  store %struct.Memory* %call_4546be, %struct.Memory** %MEMORY

  %loadBr_4546be = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4546be = icmp eq i8 %loadBr_4546be, 1
  br i1 %cmpBr_4546be, label %block_.L_4546f5, label %block_4546c4

block_4546c4:
  ; Code: movq 0x70ea90, %rax	 RIP: 4546c4	 Bytes: 8
  %loadMem_4546c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4546c4 = call %struct.Memory* @routine_movq_0x70ea90___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4546c4)
  store %struct.Memory* %call_4546c4, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %ecx	 RIP: 4546cc	 Bytes: 3
  %loadMem_4546cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4546cc = call %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4546cc)
  store %struct.Memory* %call_4546cc, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 4546cf	 Bytes: 2
  %loadMem_4546cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4546cf = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4546cf)
  store %struct.Memory* %call_4546cf, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 4546d1	 Bytes: 4
  %loadMem_4546d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4546d1 = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4546d1)
  store %struct.Memory* %call_4546d1, %struct.Memory** %MEMORY

  ; Code: movl 0x1c(%rax), %ecx	 RIP: 4546d5	 Bytes: 3
  %loadMem_4546d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4546d5 = call %struct.Memory* @routine_movl_0x1c__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4546d5)
  store %struct.Memory* %call_4546d5, %struct.Memory** %MEMORY

  ; Code: cmpl -0xc(%rbp), %ecx	 RIP: 4546d8	 Bytes: 3
  %loadMem_4546d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4546d8 = call %struct.Memory* @routine_cmpl_MINUS0xc__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4546d8)
  store %struct.Memory* %call_4546d8, %struct.Memory** %MEMORY

  ; Code: je .L_4546f5	 RIP: 4546db	 Bytes: 6
  %loadMem_4546db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4546db = call %struct.Memory* @routine_je_.L_4546f5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4546db, i8* %BRANCH_TAKEN, i64 26, i64 6, i64 6)
  store %struct.Memory* %call_4546db, %struct.Memory** %MEMORY

  %loadBr_4546db = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4546db = icmp eq i8 %loadBr_4546db, 1
  br i1 %cmpBr_4546db, label %block_.L_4546f5, label %block_4546e1

block_4546e1:
  ; Code: movq $0x4c1b49, %rdi	 RIP: 4546e1	 Bytes: 10
  %loadMem_4546e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4546e1 = call %struct.Memory* @routine_movq__0x4c1b49___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4546e1)
  store %struct.Memory* %call_4546e1, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 4546eb	 Bytes: 2
  %loadMem_4546eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4546eb = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4546eb)
  store %struct.Memory* %call_4546eb, %struct.Memory** %MEMORY

  ; Code: callq .printf_plt	 RIP: 4546ed	 Bytes: 5
  %loadMem1_4546ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4546ed = call %struct.Memory* @routine_callq_.printf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4546ed, i64 -341677, i64 5, i64 5)
  store %struct.Memory* %call1_4546ed, %struct.Memory** %MEMORY

  %loadMem2_4546ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4546ed = load i64, i64* %3
  %call2_4546ed = call %struct.Memory* @ext_printf(%struct.State* %0, i64  %loadPC_4546ed, %struct.Memory* %loadMem2_4546ed)
  store %struct.Memory* %call2_4546ed, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x24(%rbp)	 RIP: 4546f2	 Bytes: 3
  %loadMem_4546f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4546f2 = call %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4546f2)
  store %struct.Memory* %call_4546f2, %struct.Memory** %MEMORY

  ; Code: .L_4546f5:	 RIP: 4546f5	 Bytes: 0
  br label %block_.L_4546f5
block_.L_4546f5:

  ; Code: movl -0xc(%rbp), %eax	 RIP: 4546f5	 Bytes: 3
  %loadMem_4546f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4546f5 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4546f5)
  store %struct.Memory* %call_4546f5, %struct.Memory** %MEMORY

  ; Code: movq 0x70ea90, %rcx	 RIP: 4546f8	 Bytes: 8
  %loadMem_4546f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4546f8 = call %struct.Memory* @routine_movq_0x70ea90___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4546f8)
  store %struct.Memory* %call_4546f8, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %edx	 RIP: 454700	 Bytes: 3
  %loadMem_454700 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454700 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454700)
  store %struct.Memory* %call_454700, %struct.Memory** %MEMORY

  ; Code: movl %edx, %esi	 RIP: 454703	 Bytes: 2
  %loadMem_454703 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454703 = call %struct.Memory* @routine_movl__edx___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454703)
  store %struct.Memory* %call_454703, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rsi,8), %rcx	 RIP: 454705	 Bytes: 4
  %loadMem_454705 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454705 = call %struct.Memory* @routine_movq___rcx__rsi_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454705)
  store %struct.Memory* %call_454705, %struct.Memory** %MEMORY

  ; Code: movq 0x30(%rcx), %rcx	 RIP: 454709	 Bytes: 4
  %loadMem_454709 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454709 = call %struct.Memory* @routine_movq_0x30__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454709)
  store %struct.Memory* %call_454709, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x18e4(%rcx)	 RIP: 45470d	 Bytes: 6
  %loadMem_45470d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45470d = call %struct.Memory* @routine_movl__eax__0x18e4__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45470d)
  store %struct.Memory* %call_45470d, %struct.Memory** %MEMORY

  ; Code: movq 0x70ea90, %rcx	 RIP: 454713	 Bytes: 8
  %loadMem_454713 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454713 = call %struct.Memory* @routine_movq_0x70ea90___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454713)
  store %struct.Memory* %call_454713, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %edx	 RIP: 45471b	 Bytes: 3
  %loadMem_45471b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45471b = call %struct.Memory* @routine_movl_MINUS0x14__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45471b)
  store %struct.Memory* %call_45471b, %struct.Memory** %MEMORY

  ; Code: movl %edx, %esi	 RIP: 45471e	 Bytes: 2
  %loadMem_45471e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45471e = call %struct.Memory* @routine_movl__edx___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45471e)
  store %struct.Memory* %call_45471e, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rsi,8), %rcx	 RIP: 454720	 Bytes: 4
  %loadMem_454720 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454720 = call %struct.Memory* @routine_movq___rcx__rsi_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454720)
  store %struct.Memory* %call_454720, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x1c(%rcx)	 RIP: 454724	 Bytes: 3
  %loadMem_454724 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454724 = call %struct.Memory* @routine_movl__eax__0x1c__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454724)
  store %struct.Memory* %call_454724, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %eax	 RIP: 454727	 Bytes: 3
  %loadMem_454727 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454727 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454727)
  store %struct.Memory* %call_454727, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %eax	 RIP: 45472a	 Bytes: 3
  %loadMem_45472a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45472a = call %struct.Memory* @routine_shll__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45472a)
  store %struct.Memory* %call_45472a, %struct.Memory** %MEMORY

  ; Code: addl -0x18(%rbp), %eax	 RIP: 45472d	 Bytes: 3
  %loadMem_45472d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45472d = call %struct.Memory* @routine_addl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45472d)
  store %struct.Memory* %call_45472d, %struct.Memory** %MEMORY

  ; Code: movq 0x70ea90, %rcx	 RIP: 454730	 Bytes: 8
  %loadMem_454730 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454730 = call %struct.Memory* @routine_movq_0x70ea90___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454730)
  store %struct.Memory* %call_454730, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %edx	 RIP: 454738	 Bytes: 3
  %loadMem_454738 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454738 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454738)
  store %struct.Memory* %call_454738, %struct.Memory** %MEMORY

  ; Code: movl %edx, %esi	 RIP: 45473b	 Bytes: 2
  %loadMem_45473b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45473b = call %struct.Memory* @routine_movl__edx___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45473b)
  store %struct.Memory* %call_45473b, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rsi,8), %rcx	 RIP: 45473d	 Bytes: 4
  %loadMem_45473d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45473d = call %struct.Memory* @routine_movq___rcx__rsi_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45473d)
  store %struct.Memory* %call_45473d, %struct.Memory** %MEMORY

  ; Code: movq 0x30(%rcx), %rcx	 RIP: 454741	 Bytes: 4
  %loadMem_454741 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454741 = call %struct.Memory* @routine_movq_0x30__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454741)
  store %struct.Memory* %call_454741, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x18e0(%rcx)	 RIP: 454745	 Bytes: 6
  %loadMem_454745 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454745 = call %struct.Memory* @routine_movl__eax__0x18e0__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454745)
  store %struct.Memory* %call_454745, %struct.Memory** %MEMORY

  ; Code: movq 0x70ea90, %rcx	 RIP: 45474b	 Bytes: 8
  %loadMem_45474b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45474b = call %struct.Memory* @routine_movq_0x70ea90___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45474b)
  store %struct.Memory* %call_45474b, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %eax	 RIP: 454753	 Bytes: 3
  %loadMem_454753 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454753 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454753)
  store %struct.Memory* %call_454753, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 454756	 Bytes: 2
  %loadMem_454756 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454756 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454756)
  store %struct.Memory* %call_454756, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rsi,8), %rcx	 RIP: 454758	 Bytes: 4
  %loadMem_454758 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454758 = call %struct.Memory* @routine_movq___rcx__rsi_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454758)
  store %struct.Memory* %call_454758, %struct.Memory** %MEMORY

  ; Code: movq 0x30(%rcx), %rcx	 RIP: 45475c	 Bytes: 4
  %loadMem_45475c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45475c = call %struct.Memory* @routine_movq_0x30__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45475c)
  store %struct.Memory* %call_45475c, %struct.Memory** %MEMORY

  ; Code: movl $0x1, 0x18e8(%rcx)	 RIP: 454760	 Bytes: 10
  %loadMem_454760 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454760 = call %struct.Memory* @routine_movl__0x1__0x18e8__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454760)
  store %struct.Memory* %call_454760, %struct.Memory** %MEMORY

  ; Code: movq 0x70ea90, %rcx	 RIP: 45476a	 Bytes: 8
  %loadMem_45476a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45476a = call %struct.Memory* @routine_movq_0x70ea90___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45476a)
  store %struct.Memory* %call_45476a, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %eax	 RIP: 454772	 Bytes: 3
  %loadMem_454772 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454772 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454772)
  store %struct.Memory* %call_454772, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 454775	 Bytes: 2
  %loadMem_454775 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454775 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454775)
  store %struct.Memory* %call_454775, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rsi,8), %rcx	 RIP: 454777	 Bytes: 4
  %loadMem_454777 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454777 = call %struct.Memory* @routine_movq___rcx__rsi_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454777)
  store %struct.Memory* %call_454777, %struct.Memory** %MEMORY

  ; Code: movl 0x8(%rcx), %eax	 RIP: 45477b	 Bytes: 3
  %loadMem_45477b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45477b = call %struct.Memory* @routine_movl_0x8__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45477b)
  store %struct.Memory* %call_45477b, %struct.Memory** %MEMORY

  ; Code: orl $0x1, %eax	 RIP: 45477e	 Bytes: 3
  %loadMem_45477e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45477e = call %struct.Memory* @routine_orl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45477e)
  store %struct.Memory* %call_45477e, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x8(%rcx)	 RIP: 454781	 Bytes: 3
  %loadMem_454781 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454781 = call %struct.Memory* @routine_movl__eax__0x8__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454781)
  store %struct.Memory* %call_454781, %struct.Memory** %MEMORY

  ; Code: movq 0x70ea90, %rcx	 RIP: 454784	 Bytes: 8
  %loadMem_454784 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454784 = call %struct.Memory* @routine_movq_0x70ea90___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454784)
  store %struct.Memory* %call_454784, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %eax	 RIP: 45478c	 Bytes: 3
  %loadMem_45478c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45478c = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45478c)
  store %struct.Memory* %call_45478c, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 45478f	 Bytes: 2
  %loadMem_45478f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45478f = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45478f)
  store %struct.Memory* %call_45478f, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rsi,8), %rcx	 RIP: 454791	 Bytes: 4
  %loadMem_454791 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454791 = call %struct.Memory* @routine_movq___rcx__rsi_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454791)
  store %struct.Memory* %call_454791, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, 0x8(%rcx)	 RIP: 454795	 Bytes: 4
  %loadMem_454795 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454795 = call %struct.Memory* @routine_cmpl__0x3__0x8__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454795)
  store %struct.Memory* %call_454795, %struct.Memory** %MEMORY

  ; Code: jne .L_4547f7	 RIP: 454799	 Bytes: 6
  %loadMem_454799 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454799 = call %struct.Memory* @routine_jne_.L_4547f7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454799, i8* %BRANCH_TAKEN, i64 94, i64 6, i64 6)
  store %struct.Memory* %call_454799, %struct.Memory** %MEMORY

  %loadBr_454799 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_454799 = icmp eq i8 %loadBr_454799, 1
  br i1 %cmpBr_454799, label %block_.L_4547f7, label %block_45479f

block_45479f:
  ; Code: movq 0x70ea90, %rax	 RIP: 45479f	 Bytes: 8
  %loadMem_45479f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45479f = call %struct.Memory* @routine_movq_0x70ea90___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45479f)
  store %struct.Memory* %call_45479f, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %ecx	 RIP: 4547a7	 Bytes: 3
  %loadMem_4547a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4547a7 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4547a7)
  store %struct.Memory* %call_4547a7, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 4547aa	 Bytes: 2
  %loadMem_4547aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4547aa = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4547aa)
  store %struct.Memory* %call_4547aa, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 4547ac	 Bytes: 4
  %loadMem_4547ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4547ac = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4547ac)
  store %struct.Memory* %call_4547ac, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rax), %rax	 RIP: 4547b0	 Bytes: 4
  %loadMem_4547b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4547b0 = call %struct.Memory* @routine_movq_0x28__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4547b0)
  store %struct.Memory* %call_4547b0, %struct.Memory** %MEMORY

  ; Code: movl $0x1, 0x18e8(%rax)	 RIP: 4547b4	 Bytes: 10
  %loadMem_4547b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4547b4 = call %struct.Memory* @routine_movl__0x1__0x18e8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4547b4)
  store %struct.Memory* %call_4547b4, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %ecx	 RIP: 4547be	 Bytes: 3
  %loadMem_4547be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4547be = call %struct.Memory* @routine_movl_MINUS0xc__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4547be)
  store %struct.Memory* %call_4547be, %struct.Memory** %MEMORY

  ; Code: movq 0x70ea90, %rax	 RIP: 4547c1	 Bytes: 8
  %loadMem_4547c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4547c1 = call %struct.Memory* @routine_movq_0x70ea90___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4547c1)
  store %struct.Memory* %call_4547c1, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %esi	 RIP: 4547c9	 Bytes: 3
  %loadMem_4547c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4547c9 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4547c9)
  store %struct.Memory* %call_4547c9, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 4547cc	 Bytes: 2
  %loadMem_4547cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4547cc = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4547cc)
  store %struct.Memory* %call_4547cc, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 4547ce	 Bytes: 4
  %loadMem_4547ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4547ce = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4547ce)
  store %struct.Memory* %call_4547ce, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rax), %rax	 RIP: 4547d2	 Bytes: 4
  %loadMem_4547d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4547d2 = call %struct.Memory* @routine_movq_0x28__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4547d2)
  store %struct.Memory* %call_4547d2, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x18e0(%rax)	 RIP: 4547d6	 Bytes: 6
  %loadMem_4547d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4547d6 = call %struct.Memory* @routine_movl__ecx__0x18e0__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4547d6)
  store %struct.Memory* %call_4547d6, %struct.Memory** %MEMORY

  ; Code: movq 0x70ea90, %rax	 RIP: 4547dc	 Bytes: 8
  %loadMem_4547dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4547dc = call %struct.Memory* @routine_movq_0x70ea90___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4547dc)
  store %struct.Memory* %call_4547dc, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %esi	 RIP: 4547e4	 Bytes: 3
  %loadMem_4547e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4547e4 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4547e4)
  store %struct.Memory* %call_4547e4, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 4547e7	 Bytes: 2
  %loadMem_4547e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4547e7 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4547e7)
  store %struct.Memory* %call_4547e7, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 4547e9	 Bytes: 4
  %loadMem_4547e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4547e9 = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4547e9)
  store %struct.Memory* %call_4547e9, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rax), %rax	 RIP: 4547ed	 Bytes: 4
  %loadMem_4547ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4547ed = call %struct.Memory* @routine_movq_0x28__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4547ed)
  store %struct.Memory* %call_4547ed, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x18e4(%rax)	 RIP: 4547f1	 Bytes: 6
  %loadMem_4547f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4547f1 = call %struct.Memory* @routine_movl__ecx__0x18e4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4547f1)
  store %struct.Memory* %call_4547f1, %struct.Memory** %MEMORY

  ; Code: .L_4547f7:	 RIP: 4547f7	 Bytes: 0
  br label %block_.L_4547f7
block_.L_4547f7:

  ; Code: jmpq .L_4549e6	 RIP: 4547f7	 Bytes: 5
  %loadMem_4547f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4547f7 = call %struct.Memory* @routine_jmpq_.L_4549e6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4547f7, i64 495, i64 5)
  store %struct.Memory* %call_4547f7, %struct.Memory** %MEMORY

  br label %block_.L_4549e6

  ; Code: .L_4547fc:	 RIP: 4547fc	 Bytes: 0
block_.L_4547fc:

  ; Code: jmpq .L_454801	 RIP: 4547fc	 Bytes: 5
  %loadMem_4547fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4547fc = call %struct.Memory* @routine_jmpq_.L_454801(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4547fc, i64 5, i64 5)
  store %struct.Memory* %call_4547fc, %struct.Memory** %MEMORY

  br label %block_.L_454801

  ; Code: .L_454801:	 RIP: 454801	 Bytes: 0
block_.L_454801:

  ; Code: movq 0x70ea90, %rax	 RIP: 454801	 Bytes: 8
  %loadMem_454801 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454801 = call %struct.Memory* @routine_movq_0x70ea90___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454801)
  store %struct.Memory* %call_454801, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %ecx	 RIP: 454809	 Bytes: 3
  %loadMem_454809 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454809 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454809)
  store %struct.Memory* %call_454809, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 45480c	 Bytes: 2
  %loadMem_45480c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45480c = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45480c)
  store %struct.Memory* %call_45480c, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 45480e	 Bytes: 4
  %loadMem_45480e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45480e = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45480e)
  store %struct.Memory* %call_45480e, %struct.Memory** %MEMORY

  ; Code: movl 0x4(%rax), %ecx	 RIP: 454812	 Bytes: 3
  %loadMem_454812 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454812 = call %struct.Memory* @routine_movl_0x4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454812)
  store %struct.Memory* %call_454812, %struct.Memory** %MEMORY

  ; Code: andl $0x2, %ecx	 RIP: 454815	 Bytes: 3
  %loadMem_454815 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454815 = call %struct.Memory* @routine_andl__0x2___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454815)
  store %struct.Memory* %call_454815, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %ecx	 RIP: 454818	 Bytes: 3
  %loadMem_454818 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454818 = call %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454818)
  store %struct.Memory* %call_454818, %struct.Memory** %MEMORY

  ; Code: je .L_4549bf	 RIP: 45481b	 Bytes: 6
  %loadMem_45481b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45481b = call %struct.Memory* @routine_je_.L_4549bf(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45481b, i8* %BRANCH_TAKEN, i64 420, i64 6, i64 6)
  store %struct.Memory* %call_45481b, %struct.Memory** %MEMORY

  %loadBr_45481b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45481b = icmp eq i8 %loadBr_45481b, 1
  br i1 %cmpBr_45481b, label %block_.L_4549bf, label %block_454821

block_454821:
  ; Code: movq 0x70ea90, %rax	 RIP: 454821	 Bytes: 8
  %loadMem_454821 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454821 = call %struct.Memory* @routine_movq_0x70ea90___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454821)
  store %struct.Memory* %call_454821, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %ecx	 RIP: 454829	 Bytes: 3
  %loadMem_454829 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454829 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454829)
  store %struct.Memory* %call_454829, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 45482c	 Bytes: 2
  %loadMem_45482c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45482c = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45482c)
  store %struct.Memory* %call_45482c, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 45482e	 Bytes: 4
  %loadMem_45482e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45482e = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45482e)
  store %struct.Memory* %call_45482e, %struct.Memory** %MEMORY

  ; Code: movq 0x38(%rax), %rax	 RIP: 454832	 Bytes: 4
  %loadMem_454832 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454832 = call %struct.Memory* @routine_movq_0x38__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454832)
  store %struct.Memory* %call_454832, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x18e8(%rax)	 RIP: 454836	 Bytes: 7
  %loadMem_454836 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454836 = call %struct.Memory* @routine_cmpl__0x0__0x18e8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454836)
  store %struct.Memory* %call_454836, %struct.Memory** %MEMORY

  ; Code: jne .L_4549ba	 RIP: 45483d	 Bytes: 6
  %loadMem_45483d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45483d = call %struct.Memory* @routine_jne_.L_4549ba(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45483d, i8* %BRANCH_TAKEN, i64 381, i64 6, i64 6)
  store %struct.Memory* %call_45483d, %struct.Memory** %MEMORY

  %loadBr_45483d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45483d = icmp eq i8 %loadBr_45483d, 1
  br i1 %cmpBr_45483d, label %block_.L_4549ba, label %block_454843

block_454843:
  ; Code: movq 0x70ea90, %rax	 RIP: 454843	 Bytes: 8
  %loadMem_454843 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454843 = call %struct.Memory* @routine_movq_0x70ea90___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454843)
  store %struct.Memory* %call_454843, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %ecx	 RIP: 45484b	 Bytes: 3
  %loadMem_45484b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45484b = call %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45484b)
  store %struct.Memory* %call_45484b, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 45484e	 Bytes: 2
  %loadMem_45484e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45484e = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45484e)
  store %struct.Memory* %call_45484e, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 454850	 Bytes: 4
  %loadMem_454850 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454850 = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454850)
  store %struct.Memory* %call_454850, %struct.Memory** %MEMORY

  ; Code: movq 0x38(%rax), %rax	 RIP: 454854	 Bytes: 4
  %loadMem_454854 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454854 = call %struct.Memory* @routine_movq_0x38__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454854)
  store %struct.Memory* %call_454854, %struct.Memory** %MEMORY

  ; Code: movl 0x18dc(%rax), %ecx	 RIP: 454858	 Bytes: 6
  %loadMem_454858 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454858 = call %struct.Memory* @routine_movl_0x18dc__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454858)
  store %struct.Memory* %call_454858, %struct.Memory** %MEMORY

  ; Code: cmpl -0x10(%rbp), %ecx	 RIP: 45485e	 Bytes: 3
  %loadMem_45485e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45485e = call %struct.Memory* @routine_cmpl_MINUS0x10__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45485e)
  store %struct.Memory* %call_45485e, %struct.Memory** %MEMORY

  ; Code: jne .L_4549ba	 RIP: 454861	 Bytes: 6
  %loadMem_454861 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454861 = call %struct.Memory* @routine_jne_.L_4549ba(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454861, i8* %BRANCH_TAKEN, i64 345, i64 6, i64 6)
  store %struct.Memory* %call_454861, %struct.Memory** %MEMORY

  %loadBr_454861 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_454861 = icmp eq i8 %loadBr_454861, 1
  br i1 %cmpBr_454861, label %block_.L_4549ba, label %block_454867

block_454867:
  ; Code: movq 0x70ea90, %rax	 RIP: 454867	 Bytes: 8
  %loadMem_454867 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454867 = call %struct.Memory* @routine_movq_0x70ea90___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454867)
  store %struct.Memory* %call_454867, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %ecx	 RIP: 45486f	 Bytes: 3
  %loadMem_45486f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45486f = call %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45486f)
  store %struct.Memory* %call_45486f, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 454872	 Bytes: 2
  %loadMem_454872 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454872 = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454872)
  store %struct.Memory* %call_454872, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 454874	 Bytes: 4
  %loadMem_454874 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454874 = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454874)
  store %struct.Memory* %call_454874, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x8(%rax)	 RIP: 454878	 Bytes: 4
  %loadMem_454878 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454878 = call %struct.Memory* @routine_cmpl__0x0__0x8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454878)
  store %struct.Memory* %call_454878, %struct.Memory** %MEMORY

  ; Code: je .L_4548b3	 RIP: 45487c	 Bytes: 6
  %loadMem_45487c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45487c = call %struct.Memory* @routine_je_.L_4548b3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45487c, i8* %BRANCH_TAKEN, i64 55, i64 6, i64 6)
  store %struct.Memory* %call_45487c, %struct.Memory** %MEMORY

  %loadBr_45487c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45487c = icmp eq i8 %loadBr_45487c, 1
  br i1 %cmpBr_45487c, label %block_.L_4548b3, label %block_454882

block_454882:
  ; Code: movq 0x70ea90, %rax	 RIP: 454882	 Bytes: 8
  %loadMem_454882 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454882 = call %struct.Memory* @routine_movq_0x70ea90___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454882)
  store %struct.Memory* %call_454882, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %ecx	 RIP: 45488a	 Bytes: 3
  %loadMem_45488a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45488a = call %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45488a)
  store %struct.Memory* %call_45488a, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 45488d	 Bytes: 2
  %loadMem_45488d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45488d = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45488d)
  store %struct.Memory* %call_45488d, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 45488f	 Bytes: 4
  %loadMem_45488f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45488f = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45488f)
  store %struct.Memory* %call_45488f, %struct.Memory** %MEMORY

  ; Code: movl 0x1c(%rax), %ecx	 RIP: 454893	 Bytes: 3
  %loadMem_454893 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454893 = call %struct.Memory* @routine_movl_0x1c__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454893)
  store %struct.Memory* %call_454893, %struct.Memory** %MEMORY

  ; Code: cmpl -0xc(%rbp), %ecx	 RIP: 454896	 Bytes: 3
  %loadMem_454896 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454896 = call %struct.Memory* @routine_cmpl_MINUS0xc__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454896)
  store %struct.Memory* %call_454896, %struct.Memory** %MEMORY

  ; Code: je .L_4548b3	 RIP: 454899	 Bytes: 6
  %loadMem_454899 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454899 = call %struct.Memory* @routine_je_.L_4548b3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454899, i8* %BRANCH_TAKEN, i64 26, i64 6, i64 6)
  store %struct.Memory* %call_454899, %struct.Memory** %MEMORY

  %loadBr_454899 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_454899 = icmp eq i8 %loadBr_454899, 1
  br i1 %cmpBr_454899, label %block_.L_4548b3, label %block_45489f

block_45489f:
  ; Code: movq $0x4c1b49, %rdi	 RIP: 45489f	 Bytes: 10
  %loadMem_45489f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45489f = call %struct.Memory* @routine_movq__0x4c1b49___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45489f)
  store %struct.Memory* %call_45489f, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 4548a9	 Bytes: 2
  %loadMem_4548a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4548a9 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4548a9)
  store %struct.Memory* %call_4548a9, %struct.Memory** %MEMORY

  ; Code: callq .printf_plt	 RIP: 4548ab	 Bytes: 5
  %loadMem1_4548ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4548ab = call %struct.Memory* @routine_callq_.printf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4548ab, i64 -342123, i64 5, i64 5)
  store %struct.Memory* %call1_4548ab, %struct.Memory** %MEMORY

  %loadMem2_4548ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4548ab = load i64, i64* %3
  %call2_4548ab = call %struct.Memory* @ext_printf(%struct.State* %0, i64  %loadPC_4548ab, %struct.Memory* %loadMem2_4548ab)
  store %struct.Memory* %call2_4548ab, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x28(%rbp)	 RIP: 4548b0	 Bytes: 3
  %loadMem_4548b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4548b0 = call %struct.Memory* @routine_movl__eax__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4548b0)
  store %struct.Memory* %call_4548b0, %struct.Memory** %MEMORY

  ; Code: .L_4548b3:	 RIP: 4548b3	 Bytes: 0
  br label %block_.L_4548b3
block_.L_4548b3:

  ; Code: movl -0xc(%rbp), %eax	 RIP: 4548b3	 Bytes: 3
  %loadMem_4548b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4548b3 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4548b3)
  store %struct.Memory* %call_4548b3, %struct.Memory** %MEMORY

  ; Code: movq 0x70ea90, %rcx	 RIP: 4548b6	 Bytes: 8
  %loadMem_4548b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4548b6 = call %struct.Memory* @routine_movq_0x70ea90___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4548b6)
  store %struct.Memory* %call_4548b6, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %edx	 RIP: 4548be	 Bytes: 3
  %loadMem_4548be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4548be = call %struct.Memory* @routine_movl_MINUS0x14__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4548be)
  store %struct.Memory* %call_4548be, %struct.Memory** %MEMORY

  ; Code: movl %edx, %esi	 RIP: 4548c1	 Bytes: 2
  %loadMem_4548c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4548c1 = call %struct.Memory* @routine_movl__edx___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4548c1)
  store %struct.Memory* %call_4548c1, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rsi,8), %rcx	 RIP: 4548c3	 Bytes: 4
  %loadMem_4548c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4548c3 = call %struct.Memory* @routine_movq___rcx__rsi_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4548c3)
  store %struct.Memory* %call_4548c3, %struct.Memory** %MEMORY

  ; Code: movq 0x38(%rcx), %rcx	 RIP: 4548c7	 Bytes: 4
  %loadMem_4548c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4548c7 = call %struct.Memory* @routine_movq_0x38__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4548c7)
  store %struct.Memory* %call_4548c7, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x18e4(%rcx)	 RIP: 4548cb	 Bytes: 6
  %loadMem_4548cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4548cb = call %struct.Memory* @routine_movl__eax__0x18e4__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4548cb)
  store %struct.Memory* %call_4548cb, %struct.Memory** %MEMORY

  ; Code: movq 0x70ea90, %rcx	 RIP: 4548d1	 Bytes: 8
  %loadMem_4548d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4548d1 = call %struct.Memory* @routine_movq_0x70ea90___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4548d1)
  store %struct.Memory* %call_4548d1, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %edx	 RIP: 4548d9	 Bytes: 3
  %loadMem_4548d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4548d9 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4548d9)
  store %struct.Memory* %call_4548d9, %struct.Memory** %MEMORY

  ; Code: movl %edx, %esi	 RIP: 4548dc	 Bytes: 2
  %loadMem_4548dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4548dc = call %struct.Memory* @routine_movl__edx___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4548dc)
  store %struct.Memory* %call_4548dc, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rsi,8), %rcx	 RIP: 4548de	 Bytes: 4
  %loadMem_4548de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4548de = call %struct.Memory* @routine_movq___rcx__rsi_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4548de)
  store %struct.Memory* %call_4548de, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x1c(%rcx)	 RIP: 4548e2	 Bytes: 3
  %loadMem_4548e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4548e2 = call %struct.Memory* @routine_movl__eax__0x1c__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4548e2)
  store %struct.Memory* %call_4548e2, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %eax	 RIP: 4548e5	 Bytes: 3
  %loadMem_4548e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4548e5 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4548e5)
  store %struct.Memory* %call_4548e5, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %eax	 RIP: 4548e8	 Bytes: 3
  %loadMem_4548e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4548e8 = call %struct.Memory* @routine_shll__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4548e8)
  store %struct.Memory* %call_4548e8, %struct.Memory** %MEMORY

  ; Code: addl -0x18(%rbp), %eax	 RIP: 4548eb	 Bytes: 3
  %loadMem_4548eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4548eb = call %struct.Memory* @routine_addl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4548eb)
  store %struct.Memory* %call_4548eb, %struct.Memory** %MEMORY

  ; Code: movq 0x70ea90, %rcx	 RIP: 4548ee	 Bytes: 8
  %loadMem_4548ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4548ee = call %struct.Memory* @routine_movq_0x70ea90___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4548ee)
  store %struct.Memory* %call_4548ee, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %edx	 RIP: 4548f6	 Bytes: 3
  %loadMem_4548f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4548f6 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4548f6)
  store %struct.Memory* %call_4548f6, %struct.Memory** %MEMORY

  ; Code: movl %edx, %esi	 RIP: 4548f9	 Bytes: 2
  %loadMem_4548f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4548f9 = call %struct.Memory* @routine_movl__edx___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4548f9)
  store %struct.Memory* %call_4548f9, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rsi,8), %rcx	 RIP: 4548fb	 Bytes: 4
  %loadMem_4548fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4548fb = call %struct.Memory* @routine_movq___rcx__rsi_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4548fb)
  store %struct.Memory* %call_4548fb, %struct.Memory** %MEMORY

  ; Code: movq 0x38(%rcx), %rcx	 RIP: 4548ff	 Bytes: 4
  %loadMem_4548ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4548ff = call %struct.Memory* @routine_movq_0x38__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4548ff)
  store %struct.Memory* %call_4548ff, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x18e0(%rcx)	 RIP: 454903	 Bytes: 6
  %loadMem_454903 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454903 = call %struct.Memory* @routine_movl__eax__0x18e0__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454903)
  store %struct.Memory* %call_454903, %struct.Memory** %MEMORY

  ; Code: movq 0x70ea90, %rcx	 RIP: 454909	 Bytes: 8
  %loadMem_454909 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454909 = call %struct.Memory* @routine_movq_0x70ea90___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454909)
  store %struct.Memory* %call_454909, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %eax	 RIP: 454911	 Bytes: 3
  %loadMem_454911 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454911 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454911)
  store %struct.Memory* %call_454911, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 454914	 Bytes: 2
  %loadMem_454914 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454914 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454914)
  store %struct.Memory* %call_454914, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rsi,8), %rcx	 RIP: 454916	 Bytes: 4
  %loadMem_454916 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454916 = call %struct.Memory* @routine_movq___rcx__rsi_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454916)
  store %struct.Memory* %call_454916, %struct.Memory** %MEMORY

  ; Code: movq 0x38(%rcx), %rcx	 RIP: 45491a	 Bytes: 4
  %loadMem_45491a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45491a = call %struct.Memory* @routine_movq_0x38__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45491a)
  store %struct.Memory* %call_45491a, %struct.Memory** %MEMORY

  ; Code: movl $0x1, 0x18e8(%rcx)	 RIP: 45491e	 Bytes: 10
  %loadMem_45491e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45491e = call %struct.Memory* @routine_movl__0x1__0x18e8__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45491e)
  store %struct.Memory* %call_45491e, %struct.Memory** %MEMORY

  ; Code: movq 0x70ea90, %rcx	 RIP: 454928	 Bytes: 8
  %loadMem_454928 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454928 = call %struct.Memory* @routine_movq_0x70ea90___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454928)
  store %struct.Memory* %call_454928, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %eax	 RIP: 454930	 Bytes: 3
  %loadMem_454930 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454930 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454930)
  store %struct.Memory* %call_454930, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 454933	 Bytes: 2
  %loadMem_454933 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454933 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454933)
  store %struct.Memory* %call_454933, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rsi,8), %rcx	 RIP: 454935	 Bytes: 4
  %loadMem_454935 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454935 = call %struct.Memory* @routine_movq___rcx__rsi_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454935)
  store %struct.Memory* %call_454935, %struct.Memory** %MEMORY

  ; Code: movl 0x8(%rcx), %eax	 RIP: 454939	 Bytes: 3
  %loadMem_454939 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454939 = call %struct.Memory* @routine_movl_0x8__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454939)
  store %struct.Memory* %call_454939, %struct.Memory** %MEMORY

  ; Code: orl $0x2, %eax	 RIP: 45493c	 Bytes: 3
  %loadMem_45493c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45493c = call %struct.Memory* @routine_orl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45493c)
  store %struct.Memory* %call_45493c, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x8(%rcx)	 RIP: 45493f	 Bytes: 3
  %loadMem_45493f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45493f = call %struct.Memory* @routine_movl__eax__0x8__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45493f)
  store %struct.Memory* %call_45493f, %struct.Memory** %MEMORY

  ; Code: movq 0x70ea90, %rcx	 RIP: 454942	 Bytes: 8
  %loadMem_454942 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454942 = call %struct.Memory* @routine_movq_0x70ea90___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454942)
  store %struct.Memory* %call_454942, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %eax	 RIP: 45494a	 Bytes: 3
  %loadMem_45494a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45494a = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45494a)
  store %struct.Memory* %call_45494a, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 45494d	 Bytes: 2
  %loadMem_45494d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45494d = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45494d)
  store %struct.Memory* %call_45494d, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rsi,8), %rcx	 RIP: 45494f	 Bytes: 4
  %loadMem_45494f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45494f = call %struct.Memory* @routine_movq___rcx__rsi_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45494f)
  store %struct.Memory* %call_45494f, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, 0x8(%rcx)	 RIP: 454953	 Bytes: 4
  %loadMem_454953 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454953 = call %struct.Memory* @routine_cmpl__0x3__0x8__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454953)
  store %struct.Memory* %call_454953, %struct.Memory** %MEMORY

  ; Code: jne .L_4549b5	 RIP: 454957	 Bytes: 6
  %loadMem_454957 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454957 = call %struct.Memory* @routine_jne_.L_4549b5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454957, i8* %BRANCH_TAKEN, i64 94, i64 6, i64 6)
  store %struct.Memory* %call_454957, %struct.Memory** %MEMORY

  %loadBr_454957 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_454957 = icmp eq i8 %loadBr_454957, 1
  br i1 %cmpBr_454957, label %block_.L_4549b5, label %block_45495d

block_45495d:
  ; Code: movq 0x70ea90, %rax	 RIP: 45495d	 Bytes: 8
  %loadMem_45495d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45495d = call %struct.Memory* @routine_movq_0x70ea90___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45495d)
  store %struct.Memory* %call_45495d, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %ecx	 RIP: 454965	 Bytes: 3
  %loadMem_454965 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454965 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454965)
  store %struct.Memory* %call_454965, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 454968	 Bytes: 2
  %loadMem_454968 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454968 = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454968)
  store %struct.Memory* %call_454968, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 45496a	 Bytes: 4
  %loadMem_45496a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45496a = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45496a)
  store %struct.Memory* %call_45496a, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rax), %rax	 RIP: 45496e	 Bytes: 4
  %loadMem_45496e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45496e = call %struct.Memory* @routine_movq_0x28__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45496e)
  store %struct.Memory* %call_45496e, %struct.Memory** %MEMORY

  ; Code: movl $0x1, 0x18e8(%rax)	 RIP: 454972	 Bytes: 10
  %loadMem_454972 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454972 = call %struct.Memory* @routine_movl__0x1__0x18e8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454972)
  store %struct.Memory* %call_454972, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %ecx	 RIP: 45497c	 Bytes: 3
  %loadMem_45497c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45497c = call %struct.Memory* @routine_movl_MINUS0xc__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45497c)
  store %struct.Memory* %call_45497c, %struct.Memory** %MEMORY

  ; Code: movq 0x70ea90, %rax	 RIP: 45497f	 Bytes: 8
  %loadMem_45497f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45497f = call %struct.Memory* @routine_movq_0x70ea90___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45497f)
  store %struct.Memory* %call_45497f, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %esi	 RIP: 454987	 Bytes: 3
  %loadMem_454987 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454987 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454987)
  store %struct.Memory* %call_454987, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 45498a	 Bytes: 2
  %loadMem_45498a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45498a = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45498a)
  store %struct.Memory* %call_45498a, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 45498c	 Bytes: 4
  %loadMem_45498c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45498c = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45498c)
  store %struct.Memory* %call_45498c, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rax), %rax	 RIP: 454990	 Bytes: 4
  %loadMem_454990 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454990 = call %struct.Memory* @routine_movq_0x28__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454990)
  store %struct.Memory* %call_454990, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x18e0(%rax)	 RIP: 454994	 Bytes: 6
  %loadMem_454994 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_454994 = call %struct.Memory* @routine_movl__ecx__0x18e0__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_454994)
  store %struct.Memory* %call_454994, %struct.Memory** %MEMORY

  ; Code: movq 0x70ea90, %rax	 RIP: 45499a	 Bytes: 8
  %loadMem_45499a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45499a = call %struct.Memory* @routine_movq_0x70ea90___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45499a)
  store %struct.Memory* %call_45499a, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %esi	 RIP: 4549a2	 Bytes: 3
  %loadMem_4549a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4549a2 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4549a2)
  store %struct.Memory* %call_4549a2, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 4549a5	 Bytes: 2
  %loadMem_4549a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4549a5 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4549a5)
  store %struct.Memory* %call_4549a5, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 4549a7	 Bytes: 4
  %loadMem_4549a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4549a7 = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4549a7)
  store %struct.Memory* %call_4549a7, %struct.Memory** %MEMORY

  ; Code: movq 0x28(%rax), %rax	 RIP: 4549ab	 Bytes: 4
  %loadMem_4549ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4549ab = call %struct.Memory* @routine_movq_0x28__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4549ab)
  store %struct.Memory* %call_4549ab, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x18e4(%rax)	 RIP: 4549af	 Bytes: 6
  %loadMem_4549af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4549af = call %struct.Memory* @routine_movl__ecx__0x18e4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4549af)
  store %struct.Memory* %call_4549af, %struct.Memory** %MEMORY

  ; Code: .L_4549b5:	 RIP: 4549b5	 Bytes: 0
  br label %block_.L_4549b5
block_.L_4549b5:

  ; Code: jmpq .L_4549e6	 RIP: 4549b5	 Bytes: 5
  %loadMem_4549b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4549b5 = call %struct.Memory* @routine_jmpq_.L_4549e6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4549b5, i64 49, i64 5)
  store %struct.Memory* %call_4549b5, %struct.Memory** %MEMORY

  br label %block_.L_4549e6

  ; Code: .L_4549ba:	 RIP: 4549ba	 Bytes: 0
block_.L_4549ba:

  ; Code: jmpq .L_4549bf	 RIP: 4549ba	 Bytes: 5
  %loadMem_4549ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4549ba = call %struct.Memory* @routine_jmpq_.L_4549bf(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4549ba, i64 5, i64 5)
  store %struct.Memory* %call_4549ba, %struct.Memory** %MEMORY

  br label %block_.L_4549bf

  ; Code: .L_4549bf:	 RIP: 4549bf	 Bytes: 0
block_.L_4549bf:

  ; Code: jmpq .L_4549c4	 RIP: 4549bf	 Bytes: 5
  %loadMem_4549bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4549bf = call %struct.Memory* @routine_jmpq_.L_4549c4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4549bf, i64 5, i64 5)
  store %struct.Memory* %call_4549bf, %struct.Memory** %MEMORY

  br label %block_.L_4549c4

  ; Code: .L_4549c4:	 RIP: 4549c4	 Bytes: 0
block_.L_4549c4:

  ; Code: movl -0x14(%rbp), %eax	 RIP: 4549c4	 Bytes: 3
  %loadMem_4549c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4549c4 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4549c4)
  store %struct.Memory* %call_4549c4, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4549c7	 Bytes: 3
  %loadMem_4549c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4549c7 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4549c7)
  store %struct.Memory* %call_4549c7, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x14(%rbp)	 RIP: 4549ca	 Bytes: 3
  %loadMem_4549ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4549ca = call %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4549ca)
  store %struct.Memory* %call_4549ca, %struct.Memory** %MEMORY

  ; Code: jmpq .L_454633	 RIP: 4549cd	 Bytes: 5
  %loadMem_4549cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4549cd = call %struct.Memory* @routine_jmpq_.L_454633(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4549cd, i64 -922, i64 5)
  store %struct.Memory* %call_4549cd, %struct.Memory** %MEMORY

  br label %block_.L_454633

  ; Code: .L_4549d2:	 RIP: 4549d2	 Bytes: 0
block_.L_4549d2:

  ; Code: movq $0x4c1b8c, %rdi	 RIP: 4549d2	 Bytes: 10
  %loadMem_4549d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4549d2 = call %struct.Memory* @routine_movq__0x4c1b8c___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4549d2)
  store %struct.Memory* %call_4549d2, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 4549dc	 Bytes: 2
  %loadMem_4549dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4549dc = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4549dc)
  store %struct.Memory* %call_4549dc, %struct.Memory** %MEMORY

  ; Code: callq .printf_plt	 RIP: 4549de	 Bytes: 5
  %loadMem1_4549de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4549de = call %struct.Memory* @routine_callq_.printf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4549de, i64 -342430, i64 5, i64 5)
  store %struct.Memory* %call1_4549de, %struct.Memory** %MEMORY

  %loadMem2_4549de = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4549de = load i64, i64* %3
  %call2_4549de = call %struct.Memory* @ext_printf(%struct.State* %0, i64  %loadPC_4549de, %struct.Memory* %loadMem2_4549de)
  store %struct.Memory* %call2_4549de, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2c(%rbp)	 RIP: 4549e3	 Bytes: 3
  %loadMem_4549e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4549e3 = call %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4549e3)
  store %struct.Memory* %call_4549e3, %struct.Memory** %MEMORY

  ; Code: .L_4549e6:	 RIP: 4549e6	 Bytes: 0
  br label %block_.L_4549e6
block_.L_4549e6:

  ; Code: addq $0x30, %rsp	 RIP: 4549e6	 Bytes: 4
  %loadMem_4549e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4549e6 = call %struct.Memory* @routine_addq__0x30___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4549e6)
  store %struct.Memory* %call_4549e6, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 4549ea	 Bytes: 1
  %loadMem_4549ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4549ea = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4549ea)
  store %struct.Memory* %call_4549ea, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 4549eb	 Bytes: 1
  %loadMem_4549eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4549eb = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4549eb)
  store %struct.Memory* %call_4549eb, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_4549eb
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

define %struct.Memory* @routine_subq__0x30___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 48)
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


define %struct.Memory* @routine_movl__edx__MINUS0x10__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16
  %14 = load i32, i32* %EDX
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

define %struct.Memory* @routine_cmpl__0x0____rdi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %9, i64 0)
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

define %struct.Memory* @routine_jne_.L_4545fe(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
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

define %struct.Memory* @routine_cmpl_0x70eaa8___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 ptrtoint( %G_0x70eaa8_type* @G_0x70eaa8 to i64))
  ret %struct.Memory* %13
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

define %struct.Memory* @routine_jae_.L_4545e5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq_0x70ea90___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x70ea90_type* @G_0x70ea90 to i64))
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
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


define %struct.Memory* @routine_cmpl__0x3__0x4__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 3)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_4545d2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x0__0x18e8__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 6376
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_4545cd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_movl_0x18dc__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 6364
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_cmpl_MINUS0x10__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i32, i32* %ECX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %RBP
  %15 = sub i64 %14, 16
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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


define %struct.Memory* @routine_movq_0x70ea90___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G_0x70ea90_type* @G_0x70ea90 to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_movl__edx___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
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


define %struct.Memory* @routine_movq_0x38__rcx____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 56
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__eax__0x18e4__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 6372
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}










define %struct.Memory* @routine_movq_0x30__rcx____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 48
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %10)
  ret %struct.Memory* %13
}












define %struct.Memory* @routine_movq_0x28__rcx____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 40
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %10)
  ret %struct.Memory* %13
}












define %struct.Memory* @routine_movl__eax__0x1c__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 28
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}














define %struct.Memory* @routine_movl__eax__0x18e0__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 6368
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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






define %struct.Memory* @routine_movl__0x1__0x18e8__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 6376
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


































define %struct.Memory* @routine_movl__0x3__0x8__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 3)
  ret %struct.Memory* %13
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64) #2 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2, i64* %4, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jmpq_.L_4549e6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_4545d2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_4545d7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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


define %struct.Memory* @routine_jmpq_.L_454426(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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

define %struct.Memory* @routine_movq__0x4c1b0f___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x4c1b0f_type* @G__0x4c1b0f to i64))
  ret %struct.Memory* %11
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

define %struct.Memory* @routine_callq_.printf_plt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x1____rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %9, i64 1)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_jne_.L_45461e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x1__MINUS0x18__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
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


define %struct.Memory* @routine_jmpq_.L_45462c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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


define %struct.Memory* @routine_movl__0x1__MINUS0x1c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}








define %struct.Memory* @routine_jae_.L_4549d2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
  %6 = and i64 %4, %3
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

define %struct.Memory* @routine_andl__0x1___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 1)
  ret %struct.Memory* %12
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

define %struct.Memory* @routine_je_.L_454801(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_movq_0x30__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 48
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_jne_.L_4547fc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


























define %struct.Memory* @routine_cmpl__0x0__0x8__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_4546f5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_movl_0x1c__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 28
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_cmpl_MINUS0xc__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i32, i32* %ECX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %RBP
  %15 = sub i64 %14, 12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movq__0x4c1b49___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x4c1b49_type* @G__0x4c1b49 to i64))
  ret %struct.Memory* %11
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

define %struct.Memory* @routine_addl_MINUS0x18__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


































define %struct.Memory* @routine_movl_0x8__rcx____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L2ORI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
  %6 = or i64 %4, %3
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

define %struct.Memory* @routine_orl__0x1___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L2ORI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 1)
  ret %struct.Memory* %12
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










define %struct.Memory* @routine_cmpl__0x3__0x8__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 3)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_4547f7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_movl__0x1__0x18e8__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 6376
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_MINUS0xc__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl_MINUS0x14__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__esi___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movl__ecx__0x18e0__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 6368
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}












define %struct.Memory* @routine_movl__ecx__0x18e4__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 6372
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_jmpq_.L_454801(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}












define %struct.Memory* @routine_andl__0x2___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 2)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_je_.L_4549bf(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_movq_0x38__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 56
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_jne_.L_4549ba(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




























define %struct.Memory* @routine_je_.L_4548b3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


































































define %struct.Memory* @routine_orl__0x2___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L2ORI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 2)
  ret %struct.Memory* %12
}














define %struct.Memory* @routine_jne_.L_4549b5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










































define %struct.Memory* @routine_jmpq_.L_4549bf(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_4549c4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_454633(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movq__0x4c1b8c___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x4c1b8c_type* @G__0x4c1b8c to i64))
  ret %struct.Memory* %11
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

define %struct.Memory* @routine_addq__0x30___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 48)
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

