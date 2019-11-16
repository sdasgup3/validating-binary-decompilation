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
%G_0x24eb12__rip__type = type <{ [8 x i8] }>
@G_0x24eb12__rip_= global %G_0x24eb12__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x33cb1__rip__type = type <{ [8 x i8] }>
@G_0x33cb1__rip_= global %G_0x33cb1__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x33e6d__rip__type = type <{ [8 x i8] }>
@G_0x33e6d__rip_= global %G_0x33e6d__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x33ed2__rip__type = type <{ [8 x i8] }>
@G_0x33ed2__rip_= global %G_0x33ed2__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x33f02__rip__type = type <{ [8 x i8] }>
@G_0x33f02__rip_= global %G_0x33f02__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x33ff2__rip__type = type <{ [8 x i8] }>
@G_0x33ff2__rip_= global %G_0x33ff2__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x34045__rip__type = type <{ [8 x i8] }>
@G_0x34045__rip_= global %G_0x34045__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x34075__rip__type = type <{ [8 x i8] }>
@G_0x34075__rip_= global %G_0x34075__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x34169__rip__type = type <{ [8 x i8] }>
@G_0x34169__rip_= global %G_0x34169__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x341cf__rip__type = type <{ [8 x i8] }>
@G_0x341cf__rip_= global %G_0x341cf__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x341ff__rip__type = type <{ [8 x i8] }>
@G_0x341ff__rip_= global %G_0x341ff__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x342ef__rip__type = type <{ [8 x i8] }>
@G_0x342ef__rip_= global %G_0x342ef__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x343ba__rip__type = type <{ [8 x i8] }>
@G_0x343ba__rip_= global %G_0x343ba__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x34422__rip__type = type <{ [8 x i8] }>
@G_0x34422__rip_= global %G_0x34422__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x344bb__rip__type = type <{ [8 x i8] }>
@G_0x344bb__rip_= global %G_0x344bb__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x345fa__rip__type = type <{ [8 x i8] }>
@G_0x345fa__rip_= global %G_0x345fa__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x34662__rip__type = type <{ [8 x i8] }>
@G_0x34662__rip_= global %G_0x34662__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x34a48__rip__type = type <{ [8 x i8] }>
@G_0x34a48__rip_= global %G_0x34a48__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x34ba7__rip__type = type <{ [8 x i8] }>
@G_0x34ba7__rip_= global %G_0x34ba7__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x6cb8f8_type = type <{ [8 x i8] }>
@G_0x6cb8f8= global %G_0x6cb8f8_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x6cb900_type = type <{ [8 x i8] }>
@G_0x6cb900= global %G_0x6cb900_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x6cc5d8_type = type <{ [4 x i8] }>
@G_0x6cc5d8= global %G_0x6cc5d8_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x6cc5dc_type = type <{ [4 x i8] }>
@G_0x6cc5dc= global %G_0x6cc5dc_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x6cc5e0_type = type <{ [4 x i8] }>
@G_0x6cc5e0= global %G_0x6cc5e0_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x6cc5e4_type = type <{ [4 x i8] }>
@G_0x6cc5e4= global %G_0x6cc5e4_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x6cc5e8_type = type <{ [4 x i8] }>
@G_0x6cc5e8= global %G_0x6cc5e8_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x6ccaf0_type = type <{ [16 x i8] }>
@G_0x6ccaf0= global %G_0x6ccaf0_type <{ [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }>
%G_0x6ccf88_type = type <{ [16 x i8] }>
@G_0x6ccf88= global %G_0x6ccf88_type <{ [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }>
%G_0x6cd478_type = type <{ [8 x i8] }>
@G_0x6cd478= global %G_0x6cd478_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x6cea28_type = type <{ [8 x i8] }>
@G_0x6cea28= global %G_0x6cea28_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x6cea38_type = type <{ [8 x i8] }>
@G_0x6cea38= global %G_0x6cea38_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x6cea40_type = type <{ [8 x i8] }>
@G_0x6cea40= global %G_0x6cea40_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x6d0270_type = type <{ [8 x i8] }>
@G_0x6d0270= global %G_0x6d0270_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x6d1fb0_type = type <{ [8 x i8] }>
@G_0x6d1fb0= global %G_0x6d1fb0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x6d45f0_type = type <{ [8 x i8] }>
@G_0x6d45f0= global %G_0x6d45f0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x6d4680_type = type <{ [16 x i8] }>
@G_0x6d4680= global %G_0x6d4680_type <{ [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }>
%G_0x6f6f80_type = type <{ [16 x i8] }>
@G_0x6f6f80= global %G_0x6f6f80_type <{ [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }>
%G_0x6f80a0_type = type <{ [4 x i8] }>
@G_0x6f80a0= global %G_0x6f80a0_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x6f9350_type = type <{ [8 x i8] }>
@G_0x6f9350= global %G_0x6f9350_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x6f9688_type = type <{ [4 x i8] }>
@G_0x6f9688= global %G_0x6f9688_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x6f9690_type = type <{ [16 x i8] }>
@G_0x6f9690= global %G_0x6f9690_type <{ [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }>
%G_0x70f6d8_type = type <{ [8 x i8] }>
@G_0x70f6d8= global %G_0x70f6d8_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x710368_type = type <{ [8 x i8] }>
@G_0x710368= global %G_0x710368_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x710a48_type = type <{ [8 x i8] }>
@G_0x710a48= global %G_0x710a48_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x722b78_type = type <{ [4 x i8] }>
@G_0x722b78= global %G_0x722b78_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x722fd8_type = type <{ [4 x i8] }>
@G_0x722fd8= global %G_0x722fd8_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x722fe0_type = type <{ [8 x i8] }>
@G_0x722fe0= global %G_0x722fe0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x723630_type = type <{ [8 x i8] }>
@G_0x723630= global %G_0x723630_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x724bd8_type = type <{ [8 x i8] }>
@G_0x724bd8= global %G_0x724bd8_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x725570_type = type <{ [8 x i8] }>
@G_0x725570= global %G_0x725570_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x726838_type = type <{ [16 x i8] }>
@G_0x726838= global %G_0x726838_type <{ [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }>


define %struct.Memory* @rc_init_pict(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .rc_init_pict:	 RIP: 47ccf0	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 47ccf0	 Bytes: 1
  %loadMem_47ccf0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ccf0 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ccf0)
  store %struct.Memory* %call_47ccf0, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 47ccf1	 Bytes: 3
  %loadMem_47ccf1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ccf1 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ccf1)
  store %struct.Memory* %call_47ccf1, %struct.Memory** %MEMORY

  ; Code: subq $0x80, %rsp	 RIP: 47ccf4	 Bytes: 7
  %loadMem_47ccf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ccf4 = call %struct.Memory* @routine_subq__0x80___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ccf4)
  store %struct.Memory* %call_47ccf4, %struct.Memory** %MEMORY

  ; Code: movl %edi, -0x4(%rbp)	 RIP: 47ccfb	 Bytes: 3
  %loadMem_47ccfb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ccfb = call %struct.Memory* @routine_movl__edi__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ccfb)
  store %struct.Memory* %call_47ccfb, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x8(%rbp)	 RIP: 47ccfe	 Bytes: 3
  %loadMem_47ccfe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ccfe = call %struct.Memory* @routine_movl__esi__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ccfe)
  store %struct.Memory* %call_47ccfe, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0xc(%rbp)	 RIP: 47cd01	 Bytes: 3
  %loadMem_47cd01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cd01 = call %struct.Memory* @routine_movl__edx__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cd01)
  store %struct.Memory* %call_47cd01, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rax	 RIP: 47cd04	 Bytes: 8
  %loadMem_47cd04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cd04 = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cd04)
  store %struct.Memory* %call_47cd04, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0xb44(%rax)	 RIP: 47cd0c	 Bytes: 7
  %loadMem_47cd0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cd0c = call %struct.Memory* @routine_cmpl__0x0__0xb44__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cd0c)
  store %struct.Memory* %call_47cd0c, %struct.Memory** %MEMORY

  ; Code: je .L_47cd3d	 RIP: 47cd13	 Bytes: 6
  %loadMem_47cd13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cd13 = call %struct.Memory* @routine_je_.L_47cd3d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cd13, i8* %BRANCH_TAKEN, i64 42, i64 6, i64 6)
  store %struct.Memory* %call_47cd13, %struct.Memory** %MEMORY

  %loadBr_47cd13 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47cd13 = icmp eq i8 %loadBr_47cd13, 1
  br i1 %cmpBr_47cd13, label %block_.L_47cd3d, label %block_47cd19

block_47cd19:
  ; Code: movq 0x6cb900, %rax	 RIP: 47cd19	 Bytes: 8
  %loadMem_47cd19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cd19 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cd19)
  store %struct.Memory* %call_47cd19, %struct.Memory** %MEMORY

  ; Code: movl 0x11ba0(%rax), %eax	 RIP: 47cd21	 Bytes: 6
  %loadMem_47cd21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cd21 = call %struct.Memory* @routine_movl_0x11ba0__rax____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cd21)
  store %struct.Memory* %call_47cd21, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 47cd27	 Bytes: 8
  %loadMem_47cd27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cd27 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cd27)
  store %struct.Memory* %call_47cd27, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 47cd2f	 Bytes: 1
  %loadMem_47cd2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cd2f = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cd2f)
  store %struct.Memory* %call_47cd2f, %struct.Memory** %MEMORY

  ; Code: idivl 0x11bac(%rcx)	 RIP: 47cd30	 Bytes: 6
  %loadMem_47cd30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cd30 = call %struct.Memory* @routine_idivl_0x11bac__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cd30)
  store %struct.Memory* %call_47cd30, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x6f80a0	 RIP: 47cd36	 Bytes: 7
  %loadMem_47cd36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cd36 = call %struct.Memory* @routine_movl__eax__0x6f80a0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cd36)
  store %struct.Memory* %call_47cd36, %struct.Memory** %MEMORY

  ; Code: .L_47cd3d:	 RIP: 47cd3d	 Bytes: 0
  br label %block_.L_47cd3d
block_.L_47cd3d:

  ; Code: movq 0x6cb900, %rax	 RIP: 47cd3d	 Bytes: 8
  %loadMem_47cd3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cd3d = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cd3d)
  store %struct.Memory* %call_47cd3d, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x11ba8(%rax)	 RIP: 47cd45	 Bytes: 10
  %loadMem_47cd45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cd45 = call %struct.Memory* @routine_movl__0x0__0x11ba8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cd45)
  store %struct.Memory* %call_47cd45, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rax	 RIP: 47cd4f	 Bytes: 8
  %loadMem_47cd4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cd4f = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cd4f)
  store %struct.Memory* %call_47cd4f, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, 0xcb4(%rax)	 RIP: 47cd57	 Bytes: 7
  %loadMem_47cd57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cd57 = call %struct.Memory* @routine_cmpl__0x1__0xcb4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cd57)
  store %struct.Memory* %call_47cd57, %struct.Memory** %MEMORY

  ; Code: jne .L_47cdc9	 RIP: 47cd5e	 Bytes: 6
  %loadMem_47cd5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cd5e = call %struct.Memory* @routine_jne_.L_47cdc9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cd5e, i8* %BRANCH_TAKEN, i64 107, i64 6, i64 6)
  store %struct.Memory* %call_47cd5e, %struct.Memory** %MEMORY

  %loadBr_47cd5e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47cd5e = icmp eq i8 %loadBr_47cd5e, 1
  br i1 %cmpBr_47cd5e, label %block_.L_47cdc9, label %block_47cd64

block_47cd64:
  ; Code: movq 0x6cb900, %rax	 RIP: 47cd64	 Bytes: 8
  %loadMem_47cd64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cd64 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cd64)
  store %struct.Memory* %call_47cd64, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3a, 0x11b74(%rax)	 RIP: 47cd6c	 Bytes: 7
  %loadMem_47cd6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cd6c = call %struct.Memory* @routine_cmpl__0x3a__0x11b74__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cd6c)
  store %struct.Memory* %call_47cd6c, %struct.Memory** %MEMORY

  ; Code: jne .L_47cd98	 RIP: 47cd73	 Bytes: 6
  %loadMem_47cd73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cd73 = call %struct.Memory* @routine_jne_.L_47cd98(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cd73, i8* %BRANCH_TAKEN, i64 37, i64 6, i64 6)
  store %struct.Memory* %call_47cd73, %struct.Memory** %MEMORY

  %loadBr_47cd73 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47cd73 = icmp eq i8 %loadBr_47cd73, 1
  br i1 %cmpBr_47cd73, label %block_.L_47cd98, label %block_47cd79

block_47cd79:
  ; Code: movsd 0x34ba7(%rip), %xmm0	 RIP: 47cd79	 Bytes: 8
  %loadMem_47cd79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cd79 = call %struct.Memory* @routine_movsd_0x34ba7__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cd79)
  store %struct.Memory* %call_47cd79, %struct.Memory** %MEMORY

  ; Code: mulsd 0x6ccf88, %xmm0	 RIP: 47cd81	 Bytes: 9
  %loadMem_47cd81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cd81 = call %struct.Memory* @routine_mulsd_0x6ccf88___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cd81)
  store %struct.Memory* %call_47cd81, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, 0x6ccf88	 RIP: 47cd8a	 Bytes: 9
  %loadMem_47cd8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cd8a = call %struct.Memory* @routine_movsd__xmm0__0x6ccf88(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cd8a)
  store %struct.Memory* %call_47cd8a, %struct.Memory** %MEMORY

  ; Code: jmpq .L_47cdc4	 RIP: 47cd93	 Bytes: 5
  %loadMem_47cd93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cd93 = call %struct.Memory* @routine_jmpq_.L_47cdc4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cd93, i64 49, i64 5)
  store %struct.Memory* %call_47cd93, %struct.Memory** %MEMORY

  br label %block_.L_47cdc4

  ; Code: .L_47cd98:	 RIP: 47cd98	 Bytes: 0
block_.L_47cd98:

  ; Code: movq 0x6cb900, %rax	 RIP: 47cd98	 Bytes: 8
  %loadMem_47cd98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cd98 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cd98)
  store %struct.Memory* %call_47cd98, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3b, 0x11b74(%rax)	 RIP: 47cda0	 Bytes: 7
  %loadMem_47cda0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cda0 = call %struct.Memory* @routine_cmpl__0x3b__0x11b74__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cda0)
  store %struct.Memory* %call_47cda0, %struct.Memory** %MEMORY

  ; Code: jne .L_47cdbf	 RIP: 47cda7	 Bytes: 6
  %loadMem_47cda7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cda7 = call %struct.Memory* @routine_jne_.L_47cdbf(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cda7, i8* %BRANCH_TAKEN, i64 24, i64 6, i64 6)
  store %struct.Memory* %call_47cda7, %struct.Memory** %MEMORY

  %loadBr_47cda7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47cda7 = icmp eq i8 %loadBr_47cda7, 1
  br i1 %cmpBr_47cda7, label %block_.L_47cdbf, label %block_47cdad

block_47cdad:
  ; Code: movsd 0x6ccf88, %xmm0	 RIP: 47cdad	 Bytes: 9
  %loadMem_47cdad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cdad = call %struct.Memory* @routine_movsd_0x6ccf88___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cdad)
  store %struct.Memory* %call_47cdad, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, 0x6f6f80	 RIP: 47cdb6	 Bytes: 9
  %loadMem_47cdb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cdb6 = call %struct.Memory* @routine_movsd__xmm0__0x6f6f80(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cdb6)
  store %struct.Memory* %call_47cdb6, %struct.Memory** %MEMORY

  ; Code: .L_47cdbf:	 RIP: 47cdbf	 Bytes: 0
  br label %block_.L_47cdbf
block_.L_47cdbf:

  ; Code: jmpq .L_47cdc4	 RIP: 47cdbf	 Bytes: 5
  %loadMem_47cdbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cdbf = call %struct.Memory* @routine_jmpq_.L_47cdc4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cdbf, i64 5, i64 5)
  store %struct.Memory* %call_47cdbf, %struct.Memory** %MEMORY

  br label %block_.L_47cdc4

  ; Code: .L_47cdc4:	 RIP: 47cdc4	 Bytes: 0
block_.L_47cdc4:

  ; Code: jmpq .L_47cdc9	 RIP: 47cdc4	 Bytes: 5
  %loadMem_47cdc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cdc4 = call %struct.Memory* @routine_jmpq_.L_47cdc9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cdc4, i64 5, i64 5)
  store %struct.Memory* %call_47cdc4, %struct.Memory** %MEMORY

  br label %block_.L_47cdc9

  ; Code: .L_47cdc9:	 RIP: 47cdc9	 Bytes: 0
block_.L_47cdc9:

  ; Code: cmpl $0x0, -0x4(%rbp)	 RIP: 47cdc9	 Bytes: 4
  %loadMem_47cdc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cdc9 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cdc9)
  store %struct.Memory* %call_47cdc9, %struct.Memory** %MEMORY

  ; Code: jne .L_47cddd	 RIP: 47cdcd	 Bytes: 6
  %loadMem_47cdcd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cdcd = call %struct.Memory* @routine_jne_.L_47cddd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cdcd, i8* %BRANCH_TAKEN, i64 16, i64 6, i64 6)
  store %struct.Memory* %call_47cdcd, %struct.Memory** %MEMORY

  %loadBr_47cdcd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47cdcd = icmp eq i8 %loadBr_47cdcd, 1
  br i1 %cmpBr_47cdcd, label %block_.L_47cddd, label %block_47cdd3

block_47cdd3:
  ; Code: cmpl $0x0, -0x8(%rbp)	 RIP: 47cdd3	 Bytes: 4
  %loadMem_47cdd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cdd3 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cdd3)
  store %struct.Memory* %call_47cdd3, %struct.Memory** %MEMORY

  ; Code: je .L_47db00	 RIP: 47cdd7	 Bytes: 6
  %loadMem_47cdd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cdd7 = call %struct.Memory* @routine_je_.L_47db00(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cdd7, i8* %BRANCH_TAKEN, i64 3369, i64 6, i64 6)
  store %struct.Memory* %call_47cdd7, %struct.Memory** %MEMORY

  %loadBr_47cdd7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47cdd7 = icmp eq i8 %loadBr_47cdd7, 1
  br i1 %cmpBr_47cdd7, label %block_.L_47db00, label %block_.L_47cddd

  ; Code: .L_47cddd:	 RIP: 47cddd	 Bytes: 0
block_.L_47cddd:

  ; Code: cmpl $0x0, -0xc(%rbp)	 RIP: 47cddd	 Bytes: 4
  %loadMem_47cddd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cddd = call %struct.Memory* @routine_cmpl__0x0__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cddd)
  store %struct.Memory* %call_47cddd, %struct.Memory** %MEMORY

  ; Code: je .L_47db00	 RIP: 47cde1	 Bytes: 6
  %loadMem_47cde1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cde1 = call %struct.Memory* @routine_je_.L_47db00(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cde1, i8* %BRANCH_TAKEN, i64 3359, i64 6, i64 6)
  store %struct.Memory* %call_47cde1, %struct.Memory** %MEMORY

  %loadBr_47cde1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47cde1 = icmp eq i8 %loadBr_47cde1, 1
  br i1 %cmpBr_47cde1, label %block_.L_47db00, label %block_47cde7

block_47cde7:
  ; Code: movq 0x24eb12(%rip), %rax	 RIP: 47cde7	 Bytes: 7
  %loadMem_47cde7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cde7 = call %struct.Memory* @routine_movq_0x24eb12__rip____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cde7)
  store %struct.Memory* %call_47cde7, %struct.Memory** %MEMORY

  ; Code: movl 0x18(%rax), %ecx	 RIP: 47cdee	 Bytes: 3
  %loadMem_47cdee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cdee = call %struct.Memory* @routine_movl_0x18__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cdee)
  store %struct.Memory* %call_47cdee, %struct.Memory** %MEMORY

  ; Code: testl %ecx, %ecx	 RIP: 47cdf1	 Bytes: 2
  %loadMem_47cdf1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cdf1 = call %struct.Memory* @routine_testl__ecx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cdf1)
  store %struct.Memory* %call_47cdf1, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x14(%rbp)	 RIP: 47cdf3	 Bytes: 3
  %loadMem_47cdf3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cdf3 = call %struct.Memory* @routine_movl__ecx__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cdf3)
  store %struct.Memory* %call_47cdf3, %struct.Memory** %MEMORY

  ; Code: je .L_47ce15	 RIP: 47cdf6	 Bytes: 6
  %loadMem_47cdf6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cdf6 = call %struct.Memory* @routine_je_.L_47ce15(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cdf6, i8* %BRANCH_TAKEN, i64 31, i64 6, i64 6)
  store %struct.Memory* %call_47cdf6, %struct.Memory** %MEMORY

  %loadBr_47cdf6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47cdf6 = icmp eq i8 %loadBr_47cdf6, 1
  br i1 %cmpBr_47cdf6, label %block_.L_47ce15, label %block_47cdfc

block_47cdfc:
  ; Code: jmpq .L_47ce01	 RIP: 47cdfc	 Bytes: 5
  %loadMem_47cdfc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cdfc = call %struct.Memory* @routine_jmpq_.L_47ce01(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cdfc, i64 5, i64 5)
  store %struct.Memory* %call_47cdfc, %struct.Memory** %MEMORY

  br label %block_.L_47ce01

  ; Code: .L_47ce01:	 RIP: 47ce01	 Bytes: 0
block_.L_47ce01:

  ; Code: movl -0x14(%rbp), %eax	 RIP: 47ce01	 Bytes: 3
  %loadMem_47ce01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ce01 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ce01)
  store %struct.Memory* %call_47ce01, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 47ce04	 Bytes: 3
  %loadMem_47ce04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ce04 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ce04)
  store %struct.Memory* %call_47ce04, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x18(%rbp)	 RIP: 47ce07	 Bytes: 3
  %loadMem_47ce07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ce07 = call %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ce07)
  store %struct.Memory* %call_47ce07, %struct.Memory** %MEMORY

  ; Code: je .L_47d3a2	 RIP: 47ce0a	 Bytes: 6
  %loadMem_47ce0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ce0a = call %struct.Memory* @routine_je_.L_47d3a2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ce0a, i8* %BRANCH_TAKEN, i64 1432, i64 6, i64 6)
  store %struct.Memory* %call_47ce0a, %struct.Memory** %MEMORY

  %loadBr_47ce0a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47ce0a = icmp eq i8 %loadBr_47ce0a, 1
  br i1 %cmpBr_47ce0a, label %block_.L_47d3a2, label %block_47ce10

block_47ce10:
  ; Code: jmpq .L_47d544	 RIP: 47ce10	 Bytes: 5
  %loadMem_47ce10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ce10 = call %struct.Memory* @routine_jmpq_.L_47d544(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ce10, i64 1844, i64 5)
  store %struct.Memory* %call_47ce10, %struct.Memory** %MEMORY

  br label %block_.L_47d544

  ; Code: .L_47ce15:	 RIP: 47ce15	 Bytes: 0
block_.L_47ce15:

  ; Code: movsd 0x6f6f80, %xmm0	 RIP: 47ce15	 Bytes: 9
  %loadMem_47ce15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ce15 = call %struct.Memory* @routine_movsd_0x6f6f80___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ce15)
  store %struct.Memory* %call_47ce15, %struct.Memory** %MEMORY

  ; Code: ucomisd 0x6ccf88, %xmm0	 RIP: 47ce1e	 Bytes: 9
  %loadMem_47ce1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ce1e = call %struct.Memory* @routine_ucomisd_0x6ccf88___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ce1e)
  store %struct.Memory* %call_47ce1e, %struct.Memory** %MEMORY

  ; Code: jne .L_47ce38	 RIP: 47ce27	 Bytes: 6
  %loadMem_47ce27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ce27 = call %struct.Memory* @routine_jne_.L_47ce38(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ce27, i8* %BRANCH_TAKEN, i64 17, i64 6, i64 6)
  store %struct.Memory* %call_47ce27, %struct.Memory** %MEMORY

  %loadBr_47ce27 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47ce27 = icmp eq i8 %loadBr_47ce27, 1
  br i1 %cmpBr_47ce27, label %block_.L_47ce38, label %block_47ce2d

block_47ce2d:
  ; Code: jp .L_47ce38	 RIP: 47ce2d	 Bytes: 6
  %loadMem_47ce2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ce2d = call %struct.Memory* @routine_jp_.L_47ce38(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ce2d, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_47ce2d, %struct.Memory** %MEMORY

  %loadBr_47ce2d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47ce2d = icmp eq i8 %loadBr_47ce2d, 1
  br i1 %cmpBr_47ce2d, label %block_.L_47ce38, label %block_47ce33

block_47ce33:
  ; Code: jmpq .L_47ce8f	 RIP: 47ce33	 Bytes: 5
  %loadMem_47ce33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ce33 = call %struct.Memory* @routine_jmpq_.L_47ce8f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ce33, i64 92, i64 5)
  store %struct.Memory* %call_47ce33, %struct.Memory** %MEMORY

  br label %block_.L_47ce8f

  ; Code: .L_47ce38:	 RIP: 47ce38	 Bytes: 0
block_.L_47ce38:

  ; Code: movsd 0x34a48(%rip), %xmm0	 RIP: 47ce38	 Bytes: 8
  %loadMem_47ce38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ce38 = call %struct.Memory* @routine_movsd_0x34a48__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ce38)
  store %struct.Memory* %call_47ce38, %struct.Memory** %MEMORY

  ; Code: movsd 0x6ccf88, %xmm1	 RIP: 47ce40	 Bytes: 9
  %loadMem_47ce40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ce40 = call %struct.Memory* @routine_movsd_0x6ccf88___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ce40)
  store %struct.Memory* %call_47ce40, %struct.Memory** %MEMORY

  ; Code: subsd 0x6f6f80, %xmm1	 RIP: 47ce49	 Bytes: 9
  %loadMem_47ce49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ce49 = call %struct.Memory* @routine_subsd_0x6f6f80___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ce49)
  store %struct.Memory* %call_47ce49, %struct.Memory** %MEMORY

  ; Code: movl 0x6cc5dc, %eax	 RIP: 47ce52	 Bytes: 7
  %loadMem_47ce52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ce52 = call %struct.Memory* @routine_movl_0x6cc5dc___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ce52)
  store %struct.Memory* %call_47ce52, %struct.Memory** %MEMORY

  ; Code: addl 0x6cc5e0, %eax	 RIP: 47ce59	 Bytes: 7
  %loadMem_47ce59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ce59 = call %struct.Memory* @routine_addl_0x6cc5e0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ce59)
  store %struct.Memory* %call_47ce59, %struct.Memory** %MEMORY

  ; Code: cvtsi2sdl %eax, %xmm2	 RIP: 47ce60	 Bytes: 4
  %loadMem_47ce60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ce60 = call %struct.Memory* @routine_cvtsi2sdl__eax___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ce60)
  store %struct.Memory* %call_47ce60, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm2, %xmm1	 RIP: 47ce64	 Bytes: 4
  %loadMem_47ce64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ce64 = call %struct.Memory* @routine_mulsd__xmm2___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ce64)
  store %struct.Memory* %call_47ce64, %struct.Memory** %MEMORY

  ; Code: divsd 0x6d1fb0, %xmm1	 RIP: 47ce68	 Bytes: 9
  %loadMem_47ce68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ce68 = call %struct.Memory* @routine_divsd_0x6d1fb0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ce68)
  store %struct.Memory* %call_47ce68, %struct.Memory** %MEMORY

  ; Code: addsd %xmm0, %xmm1	 RIP: 47ce71	 Bytes: 4
  %loadMem_47ce71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ce71 = call %struct.Memory* @routine_addsd__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ce71)
  store %struct.Memory* %call_47ce71, %struct.Memory** %MEMORY

  ; Code: movaps %xmm1, %xmm0	 RIP: 47ce75	 Bytes: 3
  %loadMem_47ce75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ce75 = call %struct.Memory* @routine_movaps__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ce75)
  store %struct.Memory* %call_47ce75, %struct.Memory** %MEMORY

  ; Code: callq .floor_plt	 RIP: 47ce78	 Bytes: 5
  %loadMem1_47ce78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_47ce78 = call %struct.Memory* @routine_callq_.floor_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_47ce78, i64 -507080, i64 5, i64 5)
  store %struct.Memory* %call1_47ce78, %struct.Memory** %MEMORY

  %loadMem2_47ce78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47ce78 = load i64, i64* %3
  %call2_47ce78 = call %struct.Memory* @ext_floor(%struct.State* %0, i64  %loadPC_47ce78, %struct.Memory* %loadMem2_47ce78)
  store %struct.Memory* %call2_47ce78, %struct.Memory** %MEMORY

  ; Code: cvttsd2si %xmm0, %eax	 RIP: 47ce7d	 Bytes: 4
  %loadMem_47ce7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ce7d = call %struct.Memory* @routine_cvttsd2si__xmm0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ce7d)
  store %struct.Memory* %call_47ce7d, %struct.Memory** %MEMORY

  ; Code: addl 0x6cc5d8, %eax	 RIP: 47ce81	 Bytes: 7
  %loadMem_47ce81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ce81 = call %struct.Memory* @routine_addl_0x6cc5d8___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ce81)
  store %struct.Memory* %call_47ce81, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x6cc5d8	 RIP: 47ce88	 Bytes: 7
  %loadMem_47ce88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ce88 = call %struct.Memory* @routine_movl__eax__0x6cc5d8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ce88)
  store %struct.Memory* %call_47ce88, %struct.Memory** %MEMORY

  ; Code: .L_47ce8f:	 RIP: 47ce8f	 Bytes: 0
  br label %block_.L_47ce8f
block_.L_47ce8f:

  ; Code: movq 0x6cb900, %rax	 RIP: 47ce8f	 Bytes: 8
  %loadMem_47ce8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ce8f = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ce8f)
  store %struct.Memory* %call_47ce8f, %struct.Memory** %MEMORY

  ; Code: movl 0x11bac(%rax), %ecx	 RIP: 47ce97	 Bytes: 6
  %loadMem_47ce97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ce97 = call %struct.Memory* @routine_movl_0x11bac__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ce97)
  store %struct.Memory* %call_47ce97, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 47ce9d	 Bytes: 8
  %loadMem_47ce9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ce9d = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ce9d)
  store %struct.Memory* %call_47ce9d, %struct.Memory** %MEMORY

  ; Code: cmpl 0x11ba0(%rax), %ecx	 RIP: 47cea5	 Bytes: 6
  %loadMem_47cea5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cea5 = call %struct.Memory* @routine_cmpl_0x11ba0__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cea5)
  store %struct.Memory* %call_47cea5, %struct.Memory** %MEMORY

  ; Code: jne .L_47cf67	 RIP: 47ceab	 Bytes: 6
  %loadMem_47ceab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ceab = call %struct.Memory* @routine_jne_.L_47cf67(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ceab, i8* %BRANCH_TAKEN, i64 188, i64 6, i64 6)
  store %struct.Memory* %call_47ceab, %struct.Memory** %MEMORY

  %loadBr_47ceab = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47ceab = icmp eq i8 %loadBr_47ceab, 1
  br i1 %cmpBr_47ceab, label %block_.L_47cf67, label %block_47ceb1

block_47ceb1:
  ; Code: movq 0x6cb900, %rax	 RIP: 47ceb1	 Bytes: 8
  %loadMem_47ceb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ceb1 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ceb1)
  store %struct.Memory* %call_47ceb1, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, 0x11b80(%rax)	 RIP: 47ceb9	 Bytes: 7
  %loadMem_47ceb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ceb9 = call %struct.Memory* @routine_cmpl__0x1__0x11b80__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ceb9)
  store %struct.Memory* %call_47ceb9, %struct.Memory** %MEMORY

  ; Code: jne .L_47cf29	 RIP: 47cec0	 Bytes: 6
  %loadMem_47cec0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cec0 = call %struct.Memory* @routine_jne_.L_47cf29(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cec0, i8* %BRANCH_TAKEN, i64 105, i64 6, i64 6)
  store %struct.Memory* %call_47cec0, %struct.Memory** %MEMORY

  %loadBr_47cec0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47cec0 = icmp eq i8 %loadBr_47cec0, 1
  br i1 %cmpBr_47cec0, label %block_.L_47cf29, label %block_47cec6

block_47cec6:
  ; Code: movsd 0x6d45f0, %xmm0	 RIP: 47cec6	 Bytes: 9
  %loadMem_47cec6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cec6 = call %struct.Memory* @routine_movsd_0x6d45f0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cec6)
  store %struct.Memory* %call_47cec6, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, 0x6d4680	 RIP: 47cecf	 Bytes: 9
  %loadMem_47cecf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cecf = call %struct.Memory* @routine_movsd__xmm0__0x6d4680(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cecf)
  store %struct.Memory* %call_47cecf, %struct.Memory** %MEMORY

  ; Code: movsd 0x6d45f0, %xmm0	 RIP: 47ced8	 Bytes: 9
  %loadMem_47ced8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ced8 = call %struct.Memory* @routine_movsd_0x6d45f0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ced8)
  store %struct.Memory* %call_47ced8, %struct.Memory** %MEMORY

  ; Code: subsd 0x722fe0, %xmm0	 RIP: 47cee1	 Bytes: 9
  %loadMem_47cee1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cee1 = call %struct.Memory* @routine_subsd_0x722fe0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cee1)
  store %struct.Memory* %call_47cee1, %struct.Memory** %MEMORY

  ; Code: movl 0x722fd8, %eax	 RIP: 47ceea	 Bytes: 7
  %loadMem_47ceea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47ceea = call %struct.Memory* @routine_movl_0x722fd8___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47ceea)
  store %struct.Memory* %call_47ceea, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 47cef1	 Bytes: 3
  %loadMem_47cef1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cef1 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cef1)
  store %struct.Memory* %call_47cef1, %struct.Memory** %MEMORY

  ; Code: cvtsi2sdl %eax, %xmm1	 RIP: 47cef4	 Bytes: 4
  %loadMem_47cef4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cef4 = call %struct.Memory* @routine_cvtsi2sdl__eax___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cef4)
  store %struct.Memory* %call_47cef4, %struct.Memory** %MEMORY

  ; Code: divsd %xmm1, %xmm0	 RIP: 47cef8	 Bytes: 4
  %loadMem_47cef8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cef8 = call %struct.Memory* @routine_divsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cef8)
  store %struct.Memory* %call_47cef8, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, 0x6f9690	 RIP: 47cefc	 Bytes: 9
  %loadMem_47cefc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cefc = call %struct.Memory* @routine_movsd__xmm0__0x6f9690(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cefc)
  store %struct.Memory* %call_47cefc, %struct.Memory** %MEMORY

  ; Code: movsd 0x6f9690, %xmm0	 RIP: 47cf05	 Bytes: 9
  %loadMem_47cf05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cf05 = call %struct.Memory* @routine_movsd_0x6f9690___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cf05)
  store %struct.Memory* %call_47cf05, %struct.Memory** %MEMORY

  ; Code: movsd 0x6d4680, %xmm1	 RIP: 47cf0e	 Bytes: 9
  %loadMem_47cf0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cf0e = call %struct.Memory* @routine_movsd_0x6d4680___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cf0e)
  store %struct.Memory* %call_47cf0e, %struct.Memory** %MEMORY

  ; Code: subsd %xmm0, %xmm1	 RIP: 47cf17	 Bytes: 4
  %loadMem_47cf17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cf17 = call %struct.Memory* @routine_subsd__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cf17)
  store %struct.Memory* %call_47cf17, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, 0x6d4680	 RIP: 47cf1b	 Bytes: 9
  %loadMem_47cf1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cf1b = call %struct.Memory* @routine_movsd__xmm1__0x6d4680(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cf1b)
  store %struct.Memory* %call_47cf1b, %struct.Memory** %MEMORY

  ; Code: jmpq .L_47cf62	 RIP: 47cf24	 Bytes: 5
  %loadMem_47cf24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cf24 = call %struct.Memory* @routine_jmpq_.L_47cf62(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cf24, i64 62, i64 5)
  store %struct.Memory* %call_47cf24, %struct.Memory** %MEMORY

  br label %block_.L_47cf62

  ; Code: .L_47cf29:	 RIP: 47cf29	 Bytes: 0
block_.L_47cf29:

  ; Code: movq 0x6cb900, %rax	 RIP: 47cf29	 Bytes: 8
  %loadMem_47cf29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cf29 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cf29)
  store %struct.Memory* %call_47cf29, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, 0x11b80(%rax)	 RIP: 47cf31	 Bytes: 7
  %loadMem_47cf31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cf31 = call %struct.Memory* @routine_cmpl__0x1__0x11b80__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cf31)
  store %struct.Memory* %call_47cf31, %struct.Memory** %MEMORY

  ; Code: jle .L_47cf5d	 RIP: 47cf38	 Bytes: 6
  %loadMem_47cf38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cf38 = call %struct.Memory* @routine_jle_.L_47cf5d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cf38, i8* %BRANCH_TAKEN, i64 37, i64 6, i64 6)
  store %struct.Memory* %call_47cf38, %struct.Memory** %MEMORY

  %loadBr_47cf38 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47cf38 = icmp eq i8 %loadBr_47cf38, 1
  br i1 %cmpBr_47cf38, label %block_.L_47cf5d, label %block_47cf3e

block_47cf3e:
  ; Code: movsd 0x6f9690, %xmm0	 RIP: 47cf3e	 Bytes: 9
  %loadMem_47cf3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cf3e = call %struct.Memory* @routine_movsd_0x6f9690___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cf3e)
  store %struct.Memory* %call_47cf3e, %struct.Memory** %MEMORY

  ; Code: movsd 0x6d4680, %xmm1	 RIP: 47cf47	 Bytes: 9
  %loadMem_47cf47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cf47 = call %struct.Memory* @routine_movsd_0x6d4680___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cf47)
  store %struct.Memory* %call_47cf47, %struct.Memory** %MEMORY

  ; Code: subsd %xmm0, %xmm1	 RIP: 47cf50	 Bytes: 4
  %loadMem_47cf50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cf50 = call %struct.Memory* @routine_subsd__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cf50)
  store %struct.Memory* %call_47cf50, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, 0x6d4680	 RIP: 47cf54	 Bytes: 9
  %loadMem_47cf54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cf54 = call %struct.Memory* @routine_movsd__xmm1__0x6d4680(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cf54)
  store %struct.Memory* %call_47cf54, %struct.Memory** %MEMORY

  ; Code: .L_47cf5d:	 RIP: 47cf5d	 Bytes: 0
  br label %block_.L_47cf5d
block_.L_47cf5d:

  ; Code: jmpq .L_47cf62	 RIP: 47cf5d	 Bytes: 5
  %loadMem_47cf5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cf5d = call %struct.Memory* @routine_jmpq_.L_47cf62(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cf5d, i64 5, i64 5)
  store %struct.Memory* %call_47cf5d, %struct.Memory** %MEMORY

  br label %block_.L_47cf62

  ; Code: .L_47cf62:	 RIP: 47cf62	 Bytes: 0
block_.L_47cf62:

  ; Code: jmpq .L_47d1f3	 RIP: 47cf62	 Bytes: 5
  %loadMem_47cf62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cf62 = call %struct.Memory* @routine_jmpq_.L_47d1f3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cf62, i64 657, i64 5)
  store %struct.Memory* %call_47cf62, %struct.Memory** %MEMORY

  br label %block_.L_47d1f3

  ; Code: .L_47cf67:	 RIP: 47cf67	 Bytes: 0
block_.L_47cf67:

  ; Code: movq 0x6cb900, %rax	 RIP: 47cf67	 Bytes: 8
  %loadMem_47cf67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cf67 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cf67)
  store %struct.Memory* %call_47cf67, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x11b74(%rax)	 RIP: 47cf6f	 Bytes: 7
  %loadMem_47cf6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cf6f = call %struct.Memory* @routine_cmpl__0x0__0x11b74__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cf6f)
  store %struct.Memory* %call_47cf6f, %struct.Memory** %MEMORY

  ; Code: jle .L_47d058	 RIP: 47cf76	 Bytes: 6
  %loadMem_47cf76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cf76 = call %struct.Memory* @routine_jle_.L_47d058(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cf76, i8* %BRANCH_TAKEN, i64 226, i64 6, i64 6)
  store %struct.Memory* %call_47cf76, %struct.Memory** %MEMORY

  %loadBr_47cf76 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47cf76 = icmp eq i8 %loadBr_47cf76, 1
  br i1 %cmpBr_47cf76, label %block_.L_47d058, label %block_47cf7c

block_47cf7c:
  ; Code: movq 0x6cb8f8, %rax	 RIP: 47cf7c	 Bytes: 8
  %loadMem_47cf7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cf7c = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cf7c)
  store %struct.Memory* %call_47cf7c, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, 0xb40(%rax)	 RIP: 47cf84	 Bytes: 7
  %loadMem_47cf84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cf84 = call %struct.Memory* @routine_cmpl__0x2__0xb40__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cf84)
  store %struct.Memory* %call_47cf84, %struct.Memory** %MEMORY

  ; Code: je .L_47cfa6	 RIP: 47cf8b	 Bytes: 6
  %loadMem_47cf8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cf8b = call %struct.Memory* @routine_je_.L_47cfa6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cf8b, i8* %BRANCH_TAKEN, i64 27, i64 6, i64 6)
  store %struct.Memory* %call_47cf8b, %struct.Memory** %MEMORY

  %loadBr_47cf8b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47cf8b = icmp eq i8 %loadBr_47cf8b, 1
  br i1 %cmpBr_47cf8b, label %block_.L_47cfa6, label %block_47cf91

block_47cf91:
  ; Code: movq 0x6cb8f8, %rax	 RIP: 47cf91	 Bytes: 8
  %loadMem_47cf91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cf91 = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cf91)
  store %struct.Memory* %call_47cf91, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0xb44(%rax)	 RIP: 47cf99	 Bytes: 7
  %loadMem_47cf99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cf99 = call %struct.Memory* @routine_cmpl__0x0__0xb44__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cf99)
  store %struct.Memory* %call_47cf99, %struct.Memory** %MEMORY

  ; Code: je .L_47d007	 RIP: 47cfa0	 Bytes: 6
  %loadMem_47cfa0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cfa0 = call %struct.Memory* @routine_je_.L_47d007(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cfa0, i8* %BRANCH_TAKEN, i64 103, i64 6, i64 6)
  store %struct.Memory* %call_47cfa0, %struct.Memory** %MEMORY

  %loadBr_47cfa0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47cfa0 = icmp eq i8 %loadBr_47cfa0, 1
  br i1 %cmpBr_47cfa0, label %block_.L_47d007, label %block_.L_47cfa6

  ; Code: .L_47cfa6:	 RIP: 47cfa6	 Bytes: 0
block_.L_47cfa6:

  ; Code: movq 0x6cb900, %rax	 RIP: 47cfa6	 Bytes: 8
  %loadMem_47cfa6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cfa6 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cfa6)
  store %struct.Memory* %call_47cfa6, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, 0x11b98(%rax)	 RIP: 47cfae	 Bytes: 7
  %loadMem_47cfae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cfae = call %struct.Memory* @routine_cmpl__0x1__0x11b98__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cfae)
  store %struct.Memory* %call_47cfae, %struct.Memory** %MEMORY

  ; Code: jne .L_47d007	 RIP: 47cfb5	 Bytes: 6
  %loadMem_47cfb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cfb5 = call %struct.Memory* @routine_jne_.L_47d007(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cfb5, i8* %BRANCH_TAKEN, i64 82, i64 6, i64 6)
  store %struct.Memory* %call_47cfb5, %struct.Memory** %MEMORY

  %loadBr_47cfb5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47cfb5 = icmp eq i8 %loadBr_47cfb5, 1
  br i1 %cmpBr_47cfb5, label %block_.L_47d007, label %block_47cfbb

block_47cfbb:
  ; Code: movl $0x0, -0x10(%rbp)	 RIP: 47cfbb	 Bytes: 7
  %loadMem_47cfbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cfbb = call %struct.Memory* @routine_movl__0x0__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cfbb)
  store %struct.Memory* %call_47cfbb, %struct.Memory** %MEMORY

  ; Code: .L_47cfc2:	 RIP: 47cfc2	 Bytes: 0
  br label %block_.L_47cfc2
block_.L_47cfc2:

  ; Code: movl -0x10(%rbp), %eax	 RIP: 47cfc2	 Bytes: 3
  %loadMem_47cfc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cfc2 = call %struct.Memory* @routine_movl_MINUS0x10__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cfc2)
  store %struct.Memory* %call_47cfc2, %struct.Memory** %MEMORY

  ; Code: cmpl 0x6f80a0, %eax	 RIP: 47cfc5	 Bytes: 7
  %loadMem_47cfc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cfc5 = call %struct.Memory* @routine_cmpl_0x6f80a0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cfc5)
  store %struct.Memory* %call_47cfc5, %struct.Memory** %MEMORY

  ; Code: jge .L_47d002	 RIP: 47cfcc	 Bytes: 6
  %loadMem_47cfcc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cfcc = call %struct.Memory* @routine_jge_.L_47d002(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cfcc, i8* %BRANCH_TAKEN, i64 54, i64 6, i64 6)
  store %struct.Memory* %call_47cfcc, %struct.Memory** %MEMORY

  %loadBr_47cfcc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47cfcc = icmp eq i8 %loadBr_47cfcc, 1
  br i1 %cmpBr_47cfcc, label %block_.L_47d002, label %block_47cfd2

block_47cfd2:
  ; Code: movq 0x723630, %rax	 RIP: 47cfd2	 Bytes: 8
  %loadMem_47cfd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cfd2 = call %struct.Memory* @routine_movq_0x723630___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cfd2)
  store %struct.Memory* %call_47cfd2, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rcx	 RIP: 47cfda	 Bytes: 4
  %loadMem_47cfda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cfda = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cfda)
  store %struct.Memory* %call_47cfda, %struct.Memory** %MEMORY

  ; Code: movsd (%rax,%rcx,8), %xmm0	 RIP: 47cfde	 Bytes: 5
  %loadMem_47cfde = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cfde = call %struct.Memory* @routine_movsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cfde)
  store %struct.Memory* %call_47cfde, %struct.Memory** %MEMORY

  ; Code: movq 0x6cea38, %rax	 RIP: 47cfe3	 Bytes: 8
  %loadMem_47cfe3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cfe3 = call %struct.Memory* @routine_movq_0x6cea38___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cfe3)
  store %struct.Memory* %call_47cfe3, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rcx	 RIP: 47cfeb	 Bytes: 4
  %loadMem_47cfeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cfeb = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cfeb)
  store %struct.Memory* %call_47cfeb, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rcx,8)	 RIP: 47cfef	 Bytes: 5
  %loadMem_47cfef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cfef = call %struct.Memory* @routine_movsd__xmm0____rax__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cfef)
  store %struct.Memory* %call_47cfef, %struct.Memory** %MEMORY

  ; Code: movl -0x10(%rbp), %eax	 RIP: 47cff4	 Bytes: 3
  %loadMem_47cff4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cff4 = call %struct.Memory* @routine_movl_MINUS0x10__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cff4)
  store %struct.Memory* %call_47cff4, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 47cff7	 Bytes: 3
  %loadMem_47cff7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cff7 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cff7)
  store %struct.Memory* %call_47cff7, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x10(%rbp)	 RIP: 47cffa	 Bytes: 3
  %loadMem_47cffa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cffa = call %struct.Memory* @routine_movl__eax__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cffa)
  store %struct.Memory* %call_47cffa, %struct.Memory** %MEMORY

  ; Code: jmpq .L_47cfc2	 RIP: 47cffd	 Bytes: 5
  %loadMem_47cffd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47cffd = call %struct.Memory* @routine_jmpq_.L_47cfc2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47cffd, i64 -59, i64 5)
  store %struct.Memory* %call_47cffd, %struct.Memory** %MEMORY

  br label %block_.L_47cfc2

  ; Code: .L_47d002:	 RIP: 47d002	 Bytes: 0
block_.L_47d002:

  ; Code: jmpq .L_47d053	 RIP: 47d002	 Bytes: 5
  %loadMem_47d002 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d002 = call %struct.Memory* @routine_jmpq_.L_47d053(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d002, i64 81, i64 5)
  store %struct.Memory* %call_47d002, %struct.Memory** %MEMORY

  br label %block_.L_47d053

  ; Code: .L_47d007:	 RIP: 47d007	 Bytes: 0
block_.L_47d007:

  ; Code: movl $0x0, -0x10(%rbp)	 RIP: 47d007	 Bytes: 7
  %loadMem_47d007 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d007 = call %struct.Memory* @routine_movl__0x0__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d007)
  store %struct.Memory* %call_47d007, %struct.Memory** %MEMORY

  ; Code: .L_47d00e:	 RIP: 47d00e	 Bytes: 0
  br label %block_.L_47d00e
block_.L_47d00e:

  ; Code: movl -0x10(%rbp), %eax	 RIP: 47d00e	 Bytes: 3
  %loadMem_47d00e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d00e = call %struct.Memory* @routine_movl_MINUS0x10__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d00e)
  store %struct.Memory* %call_47d00e, %struct.Memory** %MEMORY

  ; Code: cmpl 0x6f80a0, %eax	 RIP: 47d011	 Bytes: 7
  %loadMem_47d011 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d011 = call %struct.Memory* @routine_cmpl_0x6f80a0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d011)
  store %struct.Memory* %call_47d011, %struct.Memory** %MEMORY

  ; Code: jge .L_47d04e	 RIP: 47d018	 Bytes: 6
  %loadMem_47d018 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d018 = call %struct.Memory* @routine_jge_.L_47d04e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d018, i8* %BRANCH_TAKEN, i64 54, i64 6, i64 6)
  store %struct.Memory* %call_47d018, %struct.Memory** %MEMORY

  %loadBr_47d018 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47d018 = icmp eq i8 %loadBr_47d018, 1
  br i1 %cmpBr_47d018, label %block_.L_47d04e, label %block_47d01e

block_47d01e:
  ; Code: movq 0x724bd8, %rax	 RIP: 47d01e	 Bytes: 8
  %loadMem_47d01e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d01e = call %struct.Memory* @routine_movq_0x724bd8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d01e)
  store %struct.Memory* %call_47d01e, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rcx	 RIP: 47d026	 Bytes: 4
  %loadMem_47d026 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d026 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d026)
  store %struct.Memory* %call_47d026, %struct.Memory** %MEMORY

  ; Code: movsd (%rax,%rcx,8), %xmm0	 RIP: 47d02a	 Bytes: 5
  %loadMem_47d02a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d02a = call %struct.Memory* @routine_movsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d02a)
  store %struct.Memory* %call_47d02a, %struct.Memory** %MEMORY

  ; Code: movq 0x6f9350, %rax	 RIP: 47d02f	 Bytes: 8
  %loadMem_47d02f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d02f = call %struct.Memory* @routine_movq_0x6f9350___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d02f)
  store %struct.Memory* %call_47d02f, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rcx	 RIP: 47d037	 Bytes: 4
  %loadMem_47d037 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d037 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d037)
  store %struct.Memory* %call_47d037, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rcx,8)	 RIP: 47d03b	 Bytes: 5
  %loadMem_47d03b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d03b = call %struct.Memory* @routine_movsd__xmm0____rax__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d03b)
  store %struct.Memory* %call_47d03b, %struct.Memory** %MEMORY

  ; Code: movl -0x10(%rbp), %eax	 RIP: 47d040	 Bytes: 3
  %loadMem_47d040 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d040 = call %struct.Memory* @routine_movl_MINUS0x10__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d040)
  store %struct.Memory* %call_47d040, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 47d043	 Bytes: 3
  %loadMem_47d043 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d043 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d043)
  store %struct.Memory* %call_47d043, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x10(%rbp)	 RIP: 47d046	 Bytes: 3
  %loadMem_47d046 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d046 = call %struct.Memory* @routine_movl__eax__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d046)
  store %struct.Memory* %call_47d046, %struct.Memory** %MEMORY

  ; Code: jmpq .L_47d00e	 RIP: 47d049	 Bytes: 5
  %loadMem_47d049 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d049 = call %struct.Memory* @routine_jmpq_.L_47d00e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d049, i64 -59, i64 5)
  store %struct.Memory* %call_47d049, %struct.Memory** %MEMORY

  br label %block_.L_47d00e

  ; Code: .L_47d04e:	 RIP: 47d04e	 Bytes: 0
block_.L_47d04e:

  ; Code: jmpq .L_47d053	 RIP: 47d04e	 Bytes: 5
  %loadMem_47d04e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d04e = call %struct.Memory* @routine_jmpq_.L_47d053(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d04e, i64 5, i64 5)
  store %struct.Memory* %call_47d04e, %struct.Memory** %MEMORY

  br label %block_.L_47d053

  ; Code: .L_47d053:	 RIP: 47d053	 Bytes: 0
block_.L_47d053:

  ; Code: jmpq .L_47d058	 RIP: 47d053	 Bytes: 5
  %loadMem_47d053 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d053 = call %struct.Memory* @routine_jmpq_.L_47d058(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d053, i64 5, i64 5)
  store %struct.Memory* %call_47d053, %struct.Memory** %MEMORY

  br label %block_.L_47d058

  ; Code: .L_47d058:	 RIP: 47d058	 Bytes: 0
block_.L_47d058:

  ; Code: movq 0x6cb900, %rax	 RIP: 47d058	 Bytes: 8
  %loadMem_47d058 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d058 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d058)
  store %struct.Memory* %call_47d058, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, 0x11b78(%rax)	 RIP: 47d060	 Bytes: 7
  %loadMem_47d060 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d060 = call %struct.Memory* @routine_cmpl__0x1__0x11b78__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d060)
  store %struct.Memory* %call_47d060, %struct.Memory** %MEMORY

  ; Code: jne .L_47d123	 RIP: 47d067	 Bytes: 6
  %loadMem_47d067 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d067 = call %struct.Memory* @routine_jne_.L_47d123(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d067, i8* %BRANCH_TAKEN, i64 188, i64 6, i64 6)
  store %struct.Memory* %call_47d067, %struct.Memory** %MEMORY

  %loadBr_47d067 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47d067 = icmp eq i8 %loadBr_47d067, 1
  br i1 %cmpBr_47d067, label %block_.L_47d123, label %block_47d06d

block_47d06d:
  ; Code: movq 0x6cb900, %rax	 RIP: 47d06d	 Bytes: 8
  %loadMem_47d06d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d06d = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d06d)
  store %struct.Memory* %call_47d06d, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, 0x11b80(%rax)	 RIP: 47d075	 Bytes: 7
  %loadMem_47d075 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d075 = call %struct.Memory* @routine_cmpl__0x1__0x11b80__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d075)
  store %struct.Memory* %call_47d075, %struct.Memory** %MEMORY

  ; Code: jne .L_47d0e5	 RIP: 47d07c	 Bytes: 6
  %loadMem_47d07c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d07c = call %struct.Memory* @routine_jne_.L_47d0e5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d07c, i8* %BRANCH_TAKEN, i64 105, i64 6, i64 6)
  store %struct.Memory* %call_47d07c, %struct.Memory** %MEMORY

  %loadBr_47d07c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47d07c = icmp eq i8 %loadBr_47d07c, 1
  br i1 %cmpBr_47d07c, label %block_.L_47d0e5, label %block_47d082

block_47d082:
  ; Code: movsd 0x6d45f0, %xmm0	 RIP: 47d082	 Bytes: 9
  %loadMem_47d082 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d082 = call %struct.Memory* @routine_movsd_0x6d45f0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d082)
  store %struct.Memory* %call_47d082, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, 0x6d4680	 RIP: 47d08b	 Bytes: 9
  %loadMem_47d08b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d08b = call %struct.Memory* @routine_movsd__xmm0__0x6d4680(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d08b)
  store %struct.Memory* %call_47d08b, %struct.Memory** %MEMORY

  ; Code: movsd 0x6d45f0, %xmm0	 RIP: 47d094	 Bytes: 9
  %loadMem_47d094 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d094 = call %struct.Memory* @routine_movsd_0x6d45f0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d094)
  store %struct.Memory* %call_47d094, %struct.Memory** %MEMORY

  ; Code: subsd 0x722fe0, %xmm0	 RIP: 47d09d	 Bytes: 9
  %loadMem_47d09d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d09d = call %struct.Memory* @routine_subsd_0x722fe0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d09d)
  store %struct.Memory* %call_47d09d, %struct.Memory** %MEMORY

  ; Code: movl 0x722fd8, %eax	 RIP: 47d0a6	 Bytes: 7
  %loadMem_47d0a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d0a6 = call %struct.Memory* @routine_movl_0x722fd8___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d0a6)
  store %struct.Memory* %call_47d0a6, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 47d0ad	 Bytes: 3
  %loadMem_47d0ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d0ad = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d0ad)
  store %struct.Memory* %call_47d0ad, %struct.Memory** %MEMORY

  ; Code: cvtsi2sdl %eax, %xmm1	 RIP: 47d0b0	 Bytes: 4
  %loadMem_47d0b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d0b0 = call %struct.Memory* @routine_cvtsi2sdl__eax___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d0b0)
  store %struct.Memory* %call_47d0b0, %struct.Memory** %MEMORY

  ; Code: divsd %xmm1, %xmm0	 RIP: 47d0b4	 Bytes: 4
  %loadMem_47d0b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d0b4 = call %struct.Memory* @routine_divsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d0b4)
  store %struct.Memory* %call_47d0b4, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, 0x6f9690	 RIP: 47d0b8	 Bytes: 9
  %loadMem_47d0b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d0b8 = call %struct.Memory* @routine_movsd__xmm0__0x6f9690(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d0b8)
  store %struct.Memory* %call_47d0b8, %struct.Memory** %MEMORY

  ; Code: movsd 0x6f9690, %xmm0	 RIP: 47d0c1	 Bytes: 9
  %loadMem_47d0c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d0c1 = call %struct.Memory* @routine_movsd_0x6f9690___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d0c1)
  store %struct.Memory* %call_47d0c1, %struct.Memory** %MEMORY

  ; Code: movsd 0x6d4680, %xmm1	 RIP: 47d0ca	 Bytes: 9
  %loadMem_47d0ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d0ca = call %struct.Memory* @routine_movsd_0x6d4680___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d0ca)
  store %struct.Memory* %call_47d0ca, %struct.Memory** %MEMORY

  ; Code: subsd %xmm0, %xmm1	 RIP: 47d0d3	 Bytes: 4
  %loadMem_47d0d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d0d3 = call %struct.Memory* @routine_subsd__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d0d3)
  store %struct.Memory* %call_47d0d3, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, 0x6d4680	 RIP: 47d0d7	 Bytes: 9
  %loadMem_47d0d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d0d7 = call %struct.Memory* @routine_movsd__xmm1__0x6d4680(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d0d7)
  store %struct.Memory* %call_47d0d7, %struct.Memory** %MEMORY

  ; Code: jmpq .L_47d11e	 RIP: 47d0e0	 Bytes: 5
  %loadMem_47d0e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d0e0 = call %struct.Memory* @routine_jmpq_.L_47d11e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d0e0, i64 62, i64 5)
  store %struct.Memory* %call_47d0e0, %struct.Memory** %MEMORY

  br label %block_.L_47d11e

  ; Code: .L_47d0e5:	 RIP: 47d0e5	 Bytes: 0
block_.L_47d0e5:

  ; Code: movq 0x6cb900, %rax	 RIP: 47d0e5	 Bytes: 8
  %loadMem_47d0e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d0e5 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d0e5)
  store %struct.Memory* %call_47d0e5, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, 0x11b80(%rax)	 RIP: 47d0ed	 Bytes: 7
  %loadMem_47d0ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d0ed = call %struct.Memory* @routine_cmpl__0x1__0x11b80__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d0ed)
  store %struct.Memory* %call_47d0ed, %struct.Memory** %MEMORY

  ; Code: jle .L_47d119	 RIP: 47d0f4	 Bytes: 6
  %loadMem_47d0f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d0f4 = call %struct.Memory* @routine_jle_.L_47d119(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d0f4, i8* %BRANCH_TAKEN, i64 37, i64 6, i64 6)
  store %struct.Memory* %call_47d0f4, %struct.Memory** %MEMORY

  %loadBr_47d0f4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47d0f4 = icmp eq i8 %loadBr_47d0f4, 1
  br i1 %cmpBr_47d0f4, label %block_.L_47d119, label %block_47d0fa

block_47d0fa:
  ; Code: movsd 0x6f9690, %xmm0	 RIP: 47d0fa	 Bytes: 9
  %loadMem_47d0fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d0fa = call %struct.Memory* @routine_movsd_0x6f9690___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d0fa)
  store %struct.Memory* %call_47d0fa, %struct.Memory** %MEMORY

  ; Code: movsd 0x6d4680, %xmm1	 RIP: 47d103	 Bytes: 9
  %loadMem_47d103 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d103 = call %struct.Memory* @routine_movsd_0x6d4680___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d103)
  store %struct.Memory* %call_47d103, %struct.Memory** %MEMORY

  ; Code: subsd %xmm0, %xmm1	 RIP: 47d10c	 Bytes: 4
  %loadMem_47d10c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d10c = call %struct.Memory* @routine_subsd__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d10c)
  store %struct.Memory* %call_47d10c, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, 0x6d4680	 RIP: 47d110	 Bytes: 9
  %loadMem_47d110 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d110 = call %struct.Memory* @routine_movsd__xmm1__0x6d4680(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d110)
  store %struct.Memory* %call_47d110, %struct.Memory** %MEMORY

  ; Code: .L_47d119:	 RIP: 47d119	 Bytes: 0
  br label %block_.L_47d119
block_.L_47d119:

  ; Code: jmpq .L_47d11e	 RIP: 47d119	 Bytes: 5
  %loadMem_47d119 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d119 = call %struct.Memory* @routine_jmpq_.L_47d11e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d119, i64 5, i64 5)
  store %struct.Memory* %call_47d119, %struct.Memory** %MEMORY

  br label %block_.L_47d11e

  ; Code: .L_47d11e:	 RIP: 47d11e	 Bytes: 0
block_.L_47d11e:

  ; Code: jmpq .L_47d1ee	 RIP: 47d11e	 Bytes: 5
  %loadMem_47d11e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d11e = call %struct.Memory* @routine_jmpq_.L_47d1ee(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d11e, i64 208, i64 5)
  store %struct.Memory* %call_47d11e, %struct.Memory** %MEMORY

  br label %block_.L_47d1ee

  ; Code: .L_47d123:	 RIP: 47d123	 Bytes: 0
block_.L_47d123:

  ; Code: movq 0x6cb900, %rax	 RIP: 47d123	 Bytes: 8
  %loadMem_47d123 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d123 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d123)
  store %struct.Memory* %call_47d123, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, 0x11b78(%rax)	 RIP: 47d12b	 Bytes: 7
  %loadMem_47d12b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d12b = call %struct.Memory* @routine_cmpl__0x1__0x11b78__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d12b)
  store %struct.Memory* %call_47d12b, %struct.Memory** %MEMORY

  ; Code: jle .L_47d1e9	 RIP: 47d132	 Bytes: 6
  %loadMem_47d132 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d132 = call %struct.Memory* @routine_jle_.L_47d1e9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d132, i8* %BRANCH_TAKEN, i64 183, i64 6, i64 6)
  store %struct.Memory* %call_47d132, %struct.Memory** %MEMORY

  %loadBr_47d132 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47d132 = icmp eq i8 %loadBr_47d132, 1
  br i1 %cmpBr_47d132, label %block_.L_47d1e9, label %block_47d138

block_47d138:
  ; Code: movq 0x6cb900, %rax	 RIP: 47d138	 Bytes: 8
  %loadMem_47d138 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d138 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d138)
  store %struct.Memory* %call_47d138, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x11b80(%rax)	 RIP: 47d140	 Bytes: 7
  %loadMem_47d140 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d140 = call %struct.Memory* @routine_cmpl__0x0__0x11b80__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d140)
  store %struct.Memory* %call_47d140, %struct.Memory** %MEMORY

  ; Code: jne .L_47d1ab	 RIP: 47d147	 Bytes: 6
  %loadMem_47d147 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d147 = call %struct.Memory* @routine_jne_.L_47d1ab(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d147, i8* %BRANCH_TAKEN, i64 100, i64 6, i64 6)
  store %struct.Memory* %call_47d147, %struct.Memory** %MEMORY

  %loadBr_47d147 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47d147 = icmp eq i8 %loadBr_47d147, 1
  br i1 %cmpBr_47d147, label %block_.L_47d1ab, label %block_47d14d

block_47d14d:
  ; Code: movsd 0x6d45f0, %xmm0	 RIP: 47d14d	 Bytes: 9
  %loadMem_47d14d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d14d = call %struct.Memory* @routine_movsd_0x6d45f0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d14d)
  store %struct.Memory* %call_47d14d, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, 0x6d4680	 RIP: 47d156	 Bytes: 9
  %loadMem_47d156 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d156 = call %struct.Memory* @routine_movsd__xmm0__0x6d4680(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d156)
  store %struct.Memory* %call_47d156, %struct.Memory** %MEMORY

  ; Code: movsd 0x6d45f0, %xmm0	 RIP: 47d15f	 Bytes: 9
  %loadMem_47d15f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d15f = call %struct.Memory* @routine_movsd_0x6d45f0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d15f)
  store %struct.Memory* %call_47d15f, %struct.Memory** %MEMORY

  ; Code: subsd 0x722fe0, %xmm0	 RIP: 47d168	 Bytes: 9
  %loadMem_47d168 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d168 = call %struct.Memory* @routine_subsd_0x722fe0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d168)
  store %struct.Memory* %call_47d168, %struct.Memory** %MEMORY

  ; Code: cvtsi2sdl 0x722fd8, %xmm1	 RIP: 47d171	 Bytes: 9
  %loadMem_47d171 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d171 = call %struct.Memory* @routine_cvtsi2sdl_0x722fd8___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d171)
  store %struct.Memory* %call_47d171, %struct.Memory** %MEMORY

  ; Code: divsd %xmm1, %xmm0	 RIP: 47d17a	 Bytes: 4
  %loadMem_47d17a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d17a = call %struct.Memory* @routine_divsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d17a)
  store %struct.Memory* %call_47d17a, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, 0x6f9690	 RIP: 47d17e	 Bytes: 9
  %loadMem_47d17e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d17e = call %struct.Memory* @routine_movsd__xmm0__0x6f9690(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d17e)
  store %struct.Memory* %call_47d17e, %struct.Memory** %MEMORY

  ; Code: movsd 0x6f9690, %xmm0	 RIP: 47d187	 Bytes: 9
  %loadMem_47d187 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d187 = call %struct.Memory* @routine_movsd_0x6f9690___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d187)
  store %struct.Memory* %call_47d187, %struct.Memory** %MEMORY

  ; Code: movsd 0x6d4680, %xmm1	 RIP: 47d190	 Bytes: 9
  %loadMem_47d190 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d190 = call %struct.Memory* @routine_movsd_0x6d4680___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d190)
  store %struct.Memory* %call_47d190, %struct.Memory** %MEMORY

  ; Code: subsd %xmm0, %xmm1	 RIP: 47d199	 Bytes: 4
  %loadMem_47d199 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d199 = call %struct.Memory* @routine_subsd__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d199)
  store %struct.Memory* %call_47d199, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, 0x6d4680	 RIP: 47d19d	 Bytes: 9
  %loadMem_47d19d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d19d = call %struct.Memory* @routine_movsd__xmm1__0x6d4680(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d19d)
  store %struct.Memory* %call_47d19d, %struct.Memory** %MEMORY

  ; Code: jmpq .L_47d1e4	 RIP: 47d1a6	 Bytes: 5
  %loadMem_47d1a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d1a6 = call %struct.Memory* @routine_jmpq_.L_47d1e4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d1a6, i64 62, i64 5)
  store %struct.Memory* %call_47d1a6, %struct.Memory** %MEMORY

  br label %block_.L_47d1e4

  ; Code: .L_47d1ab:	 RIP: 47d1ab	 Bytes: 0
block_.L_47d1ab:

  ; Code: movq 0x6cb900, %rax	 RIP: 47d1ab	 Bytes: 8
  %loadMem_47d1ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d1ab = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d1ab)
  store %struct.Memory* %call_47d1ab, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x11b80(%rax)	 RIP: 47d1b3	 Bytes: 7
  %loadMem_47d1b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d1b3 = call %struct.Memory* @routine_cmpl__0x0__0x11b80__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d1b3)
  store %struct.Memory* %call_47d1b3, %struct.Memory** %MEMORY

  ; Code: jle .L_47d1df	 RIP: 47d1ba	 Bytes: 6
  %loadMem_47d1ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d1ba = call %struct.Memory* @routine_jle_.L_47d1df(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d1ba, i8* %BRANCH_TAKEN, i64 37, i64 6, i64 6)
  store %struct.Memory* %call_47d1ba, %struct.Memory** %MEMORY

  %loadBr_47d1ba = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47d1ba = icmp eq i8 %loadBr_47d1ba, 1
  br i1 %cmpBr_47d1ba, label %block_.L_47d1df, label %block_47d1c0

block_47d1c0:
  ; Code: movsd 0x6f9690, %xmm0	 RIP: 47d1c0	 Bytes: 9
  %loadMem_47d1c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d1c0 = call %struct.Memory* @routine_movsd_0x6f9690___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d1c0)
  store %struct.Memory* %call_47d1c0, %struct.Memory** %MEMORY

  ; Code: movsd 0x6d4680, %xmm1	 RIP: 47d1c9	 Bytes: 9
  %loadMem_47d1c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d1c9 = call %struct.Memory* @routine_movsd_0x6d4680___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d1c9)
  store %struct.Memory* %call_47d1c9, %struct.Memory** %MEMORY

  ; Code: subsd %xmm0, %xmm1	 RIP: 47d1d2	 Bytes: 4
  %loadMem_47d1d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d1d2 = call %struct.Memory* @routine_subsd__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d1d2)
  store %struct.Memory* %call_47d1d2, %struct.Memory** %MEMORY

  ; Code: movsd %xmm1, 0x6d4680	 RIP: 47d1d6	 Bytes: 9
  %loadMem_47d1d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d1d6 = call %struct.Memory* @routine_movsd__xmm1__0x6d4680(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d1d6)
  store %struct.Memory* %call_47d1d6, %struct.Memory** %MEMORY

  ; Code: .L_47d1df:	 RIP: 47d1df	 Bytes: 0
  br label %block_.L_47d1df
block_.L_47d1df:

  ; Code: jmpq .L_47d1e4	 RIP: 47d1df	 Bytes: 5
  %loadMem_47d1df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d1df = call %struct.Memory* @routine_jmpq_.L_47d1e4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d1df, i64 5, i64 5)
  store %struct.Memory* %call_47d1df, %struct.Memory** %MEMORY

  br label %block_.L_47d1e4

  ; Code: .L_47d1e4:	 RIP: 47d1e4	 Bytes: 0
block_.L_47d1e4:

  ; Code: jmpq .L_47d1e9	 RIP: 47d1e4	 Bytes: 5
  %loadMem_47d1e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d1e4 = call %struct.Memory* @routine_jmpq_.L_47d1e9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d1e4, i64 5, i64 5)
  store %struct.Memory* %call_47d1e4, %struct.Memory** %MEMORY

  br label %block_.L_47d1e9

  ; Code: .L_47d1e9:	 RIP: 47d1e9	 Bytes: 0
block_.L_47d1e9:

  ; Code: jmpq .L_47d1ee	 RIP: 47d1e9	 Bytes: 5
  %loadMem_47d1e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d1e9 = call %struct.Memory* @routine_jmpq_.L_47d1ee(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d1e9, i64 5, i64 5)
  store %struct.Memory* %call_47d1e9, %struct.Memory** %MEMORY

  br label %block_.L_47d1ee

  ; Code: .L_47d1ee:	 RIP: 47d1ee	 Bytes: 0
block_.L_47d1ee:

  ; Code: jmpq .L_47d1f3	 RIP: 47d1ee	 Bytes: 5
  %loadMem_47d1ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d1ee = call %struct.Memory* @routine_jmpq_.L_47d1f3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d1ee, i64 5, i64 5)
  store %struct.Memory* %call_47d1ee, %struct.Memory** %MEMORY

  br label %block_.L_47d1f3

  ; Code: .L_47d1f3:	 RIP: 47d1f3	 Bytes: 0
block_.L_47d1f3:

  ; Code: movq 0x6cb900, %rax	 RIP: 47d1f3	 Bytes: 8
  %loadMem_47d1f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d1f3 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d1f3)
  store %struct.Memory* %call_47d1f3, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, 0x11b74(%rax)	 RIP: 47d1fb	 Bytes: 7
  %loadMem_47d1fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d1fb = call %struct.Memory* @routine_cmpl__0x1__0x11b74__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d1fb)
  store %struct.Memory* %call_47d1fb, %struct.Memory** %MEMORY

  ; Code: jne .L_47d21a	 RIP: 47d202	 Bytes: 6
  %loadMem_47d202 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d202 = call %struct.Memory* @routine_jne_.L_47d21a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d202, i8* %BRANCH_TAKEN, i64 24, i64 6, i64 6)
  store %struct.Memory* %call_47d202, %struct.Memory** %MEMORY

  %loadBr_47d202 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47d202 = icmp eq i8 %loadBr_47d202, 1
  br i1 %cmpBr_47d202, label %block_.L_47d21a, label %block_47d208

block_47d208:
  ; Code: movsd 0x70f6d8, %xmm0	 RIP: 47d208	 Bytes: 9
  %loadMem_47d208 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d208 = call %struct.Memory* @routine_movsd_0x70f6d8___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d208)
  store %struct.Memory* %call_47d208, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, 0x6ccaf0	 RIP: 47d211	 Bytes: 9
  %loadMem_47d211 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d211 = call %struct.Memory* @routine_movsd__xmm0__0x6ccaf0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d211)
  store %struct.Memory* %call_47d211, %struct.Memory** %MEMORY

  ; Code: .L_47d21a:	 RIP: 47d21a	 Bytes: 0
  br label %block_.L_47d21a
block_.L_47d21a:

  ; Code: movq 0x6cb900, %rax	 RIP: 47d21a	 Bytes: 8
  %loadMem_47d21a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d21a = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d21a)
  store %struct.Memory* %call_47d21a, %struct.Memory** %MEMORY

  ; Code: cmpl $0x8, 0x11b74(%rax)	 RIP: 47d222	 Bytes: 7
  %loadMem_47d222 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d222 = call %struct.Memory* @routine_cmpl__0x8__0x11b74__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d222)
  store %struct.Memory* %call_47d222, %struct.Memory** %MEMORY

  ; Code: jge .L_47d2a9	 RIP: 47d229	 Bytes: 6
  %loadMem_47d229 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d229 = call %struct.Memory* @routine_jge_.L_47d2a9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d229, i8* %BRANCH_TAKEN, i64 128, i64 6, i64 6)
  store %struct.Memory* %call_47d229, %struct.Memory** %MEMORY

  %loadBr_47d229 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47d229 = icmp eq i8 %loadBr_47d229, 1
  br i1 %cmpBr_47d229, label %block_.L_47d2a9, label %block_47d22f

block_47d22f:
  ; Code: movq 0x6cb900, %rax	 RIP: 47d22f	 Bytes: 8
  %loadMem_47d22f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d22f = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d22f)
  store %struct.Memory* %call_47d22f, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, 0x11b74(%rax)	 RIP: 47d237	 Bytes: 7
  %loadMem_47d237 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d237 = call %struct.Memory* @routine_cmpl__0x1__0x11b74__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d237)
  store %struct.Memory* %call_47d237, %struct.Memory** %MEMORY

  ; Code: jle .L_47d2a9	 RIP: 47d23e	 Bytes: 6
  %loadMem_47d23e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d23e = call %struct.Memory* @routine_jle_.L_47d2a9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d23e, i8* %BRANCH_TAKEN, i64 107, i64 6, i64 6)
  store %struct.Memory* %call_47d23e, %struct.Memory** %MEMORY

  %loadBr_47d23e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47d23e = icmp eq i8 %loadBr_47d23e, 1
  br i1 %cmpBr_47d23e, label %block_.L_47d2a9, label %block_47d244

block_47d244:
  ; Code: movsd 0x70f6d8, %xmm0	 RIP: 47d244	 Bytes: 9
  %loadMem_47d244 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d244 = call %struct.Memory* @routine_movsd_0x70f6d8___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d244)
  store %struct.Memory* %call_47d244, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 47d24d	 Bytes: 8
  %loadMem_47d24d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d24d = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d24d)
  store %struct.Memory* %call_47d24d, %struct.Memory** %MEMORY

  ; Code: movl 0x11b74(%rax), %ecx	 RIP: 47d255	 Bytes: 6
  %loadMem_47d255 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d255 = call %struct.Memory* @routine_movl_0x11b74__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d255)
  store %struct.Memory* %call_47d255, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 47d25b	 Bytes: 3
  %loadMem_47d25b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d25b = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d25b)
  store %struct.Memory* %call_47d25b, %struct.Memory** %MEMORY

  ; Code: cvtsi2sdl %ecx, %xmm1	 RIP: 47d25e	 Bytes: 4
  %loadMem_47d25e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d25e = call %struct.Memory* @routine_cvtsi2sdl__ecx___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d25e)
  store %struct.Memory* %call_47d25e, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm1, %xmm0	 RIP: 47d262	 Bytes: 4
  %loadMem_47d262 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d262 = call %struct.Memory* @routine_mulsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d262)
  store %struct.Memory* %call_47d262, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 47d266	 Bytes: 8
  %loadMem_47d266 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d266 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d266)
  store %struct.Memory* %call_47d266, %struct.Memory** %MEMORY

  ; Code: cvtsi2sdl 0x11b74(%rax), %xmm1	 RIP: 47d26e	 Bytes: 8
  %loadMem_47d26e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d26e = call %struct.Memory* @routine_cvtsi2sdl_0x11b74__rax____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d26e)
  store %struct.Memory* %call_47d26e, %struct.Memory** %MEMORY

  ; Code: divsd %xmm1, %xmm0	 RIP: 47d276	 Bytes: 4
  %loadMem_47d276 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d276 = call %struct.Memory* @routine_divsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d276)
  store %struct.Memory* %call_47d276, %struct.Memory** %MEMORY

  ; Code: movsd 0x6ccaf0, %xmm1	 RIP: 47d27a	 Bytes: 9
  %loadMem_47d27a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d27a = call %struct.Memory* @routine_movsd_0x6ccaf0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d27a)
  store %struct.Memory* %call_47d27a, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 47d283	 Bytes: 8
  %loadMem_47d283 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d283 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d283)
  store %struct.Memory* %call_47d283, %struct.Memory** %MEMORY

  ; Code: cvtsi2sdl 0x11b74(%rax), %xmm2	 RIP: 47d28b	 Bytes: 8
  %loadMem_47d28b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d28b = call %struct.Memory* @routine_cvtsi2sdl_0x11b74__rax____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d28b)
  store %struct.Memory* %call_47d28b, %struct.Memory** %MEMORY

  ; Code: divsd %xmm2, %xmm1	 RIP: 47d293	 Bytes: 4
  %loadMem_47d293 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d293 = call %struct.Memory* @routine_divsd__xmm2___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d293)
  store %struct.Memory* %call_47d293, %struct.Memory** %MEMORY

  ; Code: addsd %xmm1, %xmm0	 RIP: 47d297	 Bytes: 4
  %loadMem_47d297 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d297 = call %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d297)
  store %struct.Memory* %call_47d297, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, 0x6ccaf0	 RIP: 47d29b	 Bytes: 9
  %loadMem_47d29b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d29b = call %struct.Memory* @routine_movsd__xmm0__0x6ccaf0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d29b)
  store %struct.Memory* %call_47d29b, %struct.Memory** %MEMORY

  ; Code: jmpq .L_47d2fa	 RIP: 47d2a4	 Bytes: 5
  %loadMem_47d2a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d2a4 = call %struct.Memory* @routine_jmpq_.L_47d2fa(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d2a4, i64 86, i64 5)
  store %struct.Memory* %call_47d2a4, %struct.Memory** %MEMORY

  br label %block_.L_47d2fa

  ; Code: .L_47d2a9:	 RIP: 47d2a9	 Bytes: 0
block_.L_47d2a9:

  ; Code: movq 0x6cb900, %rax	 RIP: 47d2a9	 Bytes: 8
  %loadMem_47d2a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d2a9 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d2a9)
  store %struct.Memory* %call_47d2a9, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, 0x11b74(%rax)	 RIP: 47d2b1	 Bytes: 7
  %loadMem_47d2b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d2b1 = call %struct.Memory* @routine_cmpl__0x1__0x11b74__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d2b1)
  store %struct.Memory* %call_47d2b1, %struct.Memory** %MEMORY

  ; Code: jle .L_47d2f5	 RIP: 47d2b8	 Bytes: 6
  %loadMem_47d2b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d2b8 = call %struct.Memory* @routine_jle_.L_47d2f5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d2b8, i8* %BRANCH_TAKEN, i64 61, i64 6, i64 6)
  store %struct.Memory* %call_47d2b8, %struct.Memory** %MEMORY

  %loadBr_47d2b8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47d2b8 = icmp eq i8 %loadBr_47d2b8, 1
  br i1 %cmpBr_47d2b8, label %block_.L_47d2f5, label %block_47d2be

block_47d2be:
  ; Code: movsd 0x345fa(%rip), %xmm0	 RIP: 47d2be	 Bytes: 8
  %loadMem_47d2be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d2be = call %struct.Memory* @routine_movsd_0x345fa__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d2be)
  store %struct.Memory* %call_47d2be, %struct.Memory** %MEMORY

  ; Code: movsd 0x34662(%rip), %xmm1	 RIP: 47d2c6	 Bytes: 8
  %loadMem_47d2c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d2c6 = call %struct.Memory* @routine_movsd_0x34662__rip____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d2c6)
  store %struct.Memory* %call_47d2c6, %struct.Memory** %MEMORY

  ; Code: movsd 0x70f6d8, %xmm2	 RIP: 47d2ce	 Bytes: 9
  %loadMem_47d2ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d2ce = call %struct.Memory* @routine_movsd_0x70f6d8___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d2ce)
  store %struct.Memory* %call_47d2ce, %struct.Memory** %MEMORY

  ; Code: divsd %xmm0, %xmm2	 RIP: 47d2d7	 Bytes: 4
  %loadMem_47d2d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d2d7 = call %struct.Memory* @routine_divsd__xmm0___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d2d7)
  store %struct.Memory* %call_47d2d7, %struct.Memory** %MEMORY

  ; Code: mulsd 0x6ccaf0, %xmm1	 RIP: 47d2db	 Bytes: 9
  %loadMem_47d2db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d2db = call %struct.Memory* @routine_mulsd_0x6ccaf0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d2db)
  store %struct.Memory* %call_47d2db, %struct.Memory** %MEMORY

  ; Code: divsd %xmm0, %xmm1	 RIP: 47d2e4	 Bytes: 4
  %loadMem_47d2e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d2e4 = call %struct.Memory* @routine_divsd__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d2e4)
  store %struct.Memory* %call_47d2e4, %struct.Memory** %MEMORY

  ; Code: addsd %xmm1, %xmm2	 RIP: 47d2e8	 Bytes: 4
  %loadMem_47d2e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d2e8 = call %struct.Memory* @routine_addsd__xmm1___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d2e8)
  store %struct.Memory* %call_47d2e8, %struct.Memory** %MEMORY

  ; Code: movsd %xmm2, 0x6ccaf0	 RIP: 47d2ec	 Bytes: 9
  %loadMem_47d2ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d2ec = call %struct.Memory* @routine_movsd__xmm2__0x6ccaf0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d2ec)
  store %struct.Memory* %call_47d2ec, %struct.Memory** %MEMORY

  ; Code: .L_47d2f5:	 RIP: 47d2f5	 Bytes: 0
  br label %block_.L_47d2f5
block_.L_47d2f5:

  ; Code: jmpq .L_47d2fa	 RIP: 47d2f5	 Bytes: 5
  %loadMem_47d2f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d2f5 = call %struct.Memory* @routine_jmpq_.L_47d2fa(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d2f5, i64 5, i64 5)
  store %struct.Memory* %call_47d2f5, %struct.Memory** %MEMORY

  br label %block_.L_47d2fa

  ; Code: .L_47d2fa:	 RIP: 47d2fa	 Bytes: 0
block_.L_47d2fa:

  ; Code: movq 0x6cb8f8, %rax	 RIP: 47d2fa	 Bytes: 8
  %loadMem_47d2fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d2fa = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d2fa)
  store %struct.Memory* %call_47d2fa, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x4d4(%rax)	 RIP: 47d302	 Bytes: 7
  %loadMem_47d302 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d302 = call %struct.Memory* @routine_cmpl__0x0__0x4d4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d302)
  store %struct.Memory* %call_47d302, %struct.Memory** %MEMORY

  ; Code: jle .L_47d39d	 RIP: 47d309	 Bytes: 6
  %loadMem_47d309 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d309 = call %struct.Memory* @routine_jle_.L_47d39d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d309, i8* %BRANCH_TAKEN, i64 148, i64 6, i64 6)
  store %struct.Memory* %call_47d309, %struct.Memory** %MEMORY

  %loadBr_47d309 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47d309 = icmp eq i8 %loadBr_47d309, 1
  br i1 %cmpBr_47d309, label %block_.L_47d39d, label %block_47d30f

block_47d30f:
  ; Code: movsd 0x6ccaf0, %xmm0	 RIP: 47d30f	 Bytes: 9
  %loadMem_47d30f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d30f = call %struct.Memory* @routine_movsd_0x6ccaf0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d30f)
  store %struct.Memory* %call_47d30f, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rax	 RIP: 47d318	 Bytes: 8
  %loadMem_47d318 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d318 = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d318)
  store %struct.Memory* %call_47d318, %struct.Memory** %MEMORY

  ; Code: movl 0x4d4(%rax), %ecx	 RIP: 47d320	 Bytes: 6
  %loadMem_47d320 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d320 = call %struct.Memory* @routine_movl_0x4d4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d320)
  store %struct.Memory* %call_47d320, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 47d326	 Bytes: 3
  %loadMem_47d326 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d326 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d326)
  store %struct.Memory* %call_47d326, %struct.Memory** %MEMORY

  ; Code: cvtsi2sdl %ecx, %xmm1	 RIP: 47d329	 Bytes: 4
  %loadMem_47d329 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d329 = call %struct.Memory* @routine_cvtsi2sdl__ecx___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d329)
  store %struct.Memory* %call_47d329, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm1, %xmm0	 RIP: 47d32d	 Bytes: 4
  %loadMem_47d32d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d32d = call %struct.Memory* @routine_mulsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d32d)
  store %struct.Memory* %call_47d32d, %struct.Memory** %MEMORY

  ; Code: mulsd 0x6ccf88, %xmm0	 RIP: 47d331	 Bytes: 9
  %loadMem_47d331 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d331 = call %struct.Memory* @routine_mulsd_0x6ccf88___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d331)
  store %struct.Memory* %call_47d331, %struct.Memory** %MEMORY

  ; Code: movsd 0x6d1fb0, %xmm1	 RIP: 47d33a	 Bytes: 9
  %loadMem_47d33a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d33a = call %struct.Memory* @routine_movsd_0x6d1fb0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d33a)
  store %struct.Memory* %call_47d33a, %struct.Memory** %MEMORY

  ; Code: movsd 0x6ccaf0, %xmm2	 RIP: 47d343	 Bytes: 9
  %loadMem_47d343 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d343 = call %struct.Memory* @routine_movsd_0x6ccaf0___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d343)
  store %struct.Memory* %call_47d343, %struct.Memory** %MEMORY

  ; Code: movsd 0x726838, %xmm3	 RIP: 47d34c	 Bytes: 9
  %loadMem_47d34c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d34c = call %struct.Memory* @routine_movsd_0x726838___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d34c)
  store %struct.Memory* %call_47d34c, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rax	 RIP: 47d355	 Bytes: 8
  %loadMem_47d355 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d355 = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d355)
  store %struct.Memory* %call_47d355, %struct.Memory** %MEMORY

  ; Code: cvtsi2sdl 0x4d4(%rax), %xmm4	 RIP: 47d35d	 Bytes: 8
  %loadMem_47d35d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d35d = call %struct.Memory* @routine_cvtsi2sdl_0x4d4__rax____xmm4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d35d)
  store %struct.Memory* %call_47d35d, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm4, %xmm3	 RIP: 47d365	 Bytes: 4
  %loadMem_47d365 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d365 = call %struct.Memory* @routine_mulsd__xmm4___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d365)
  store %struct.Memory* %call_47d365, %struct.Memory** %MEMORY

  ; Code: addsd %xmm3, %xmm2	 RIP: 47d369	 Bytes: 4
  %loadMem_47d369 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d369 = call %struct.Memory* @routine_addsd__xmm3___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d369)
  store %struct.Memory* %call_47d369, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm2, %xmm1	 RIP: 47d36d	 Bytes: 4
  %loadMem_47d36d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d36d = call %struct.Memory* @routine_mulsd__xmm2___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d36d)
  store %struct.Memory* %call_47d36d, %struct.Memory** %MEMORY

  ; Code: divsd %xmm1, %xmm0	 RIP: 47d371	 Bytes: 4
  %loadMem_47d371 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d371 = call %struct.Memory* @routine_divsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d371)
  store %struct.Memory* %call_47d371, %struct.Memory** %MEMORY

  ; Code: movsd 0x6ccf88, %xmm1	 RIP: 47d375	 Bytes: 9
  %loadMem_47d375 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d375 = call %struct.Memory* @routine_movsd_0x6ccf88___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d375)
  store %struct.Memory* %call_47d375, %struct.Memory** %MEMORY

  ; Code: divsd 0x6d1fb0, %xmm1	 RIP: 47d37e	 Bytes: 9
  %loadMem_47d37e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d37e = call %struct.Memory* @routine_divsd_0x6d1fb0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d37e)
  store %struct.Memory* %call_47d37e, %struct.Memory** %MEMORY

  ; Code: subsd %xmm1, %xmm0	 RIP: 47d387	 Bytes: 4
  %loadMem_47d387 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d387 = call %struct.Memory* @routine_subsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d387)
  store %struct.Memory* %call_47d387, %struct.Memory** %MEMORY

  ; Code: addsd 0x6d4680, %xmm0	 RIP: 47d38b	 Bytes: 9
  %loadMem_47d38b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d38b = call %struct.Memory* @routine_addsd_0x6d4680___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d38b)
  store %struct.Memory* %call_47d38b, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, 0x6d4680	 RIP: 47d394	 Bytes: 9
  %loadMem_47d394 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d394 = call %struct.Memory* @routine_movsd__xmm0__0x6d4680(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d394)
  store %struct.Memory* %call_47d394, %struct.Memory** %MEMORY

  ; Code: .L_47d39d:	 RIP: 47d39d	 Bytes: 0
  br label %block_.L_47d39d
block_.L_47d39d:

  ; Code: jmpq .L_47d544	 RIP: 47d39d	 Bytes: 5
  %loadMem_47d39d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d39d = call %struct.Memory* @routine_jmpq_.L_47d544(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d39d, i64 423, i64 5)
  store %struct.Memory* %call_47d39d, %struct.Memory** %MEMORY

  br label %block_.L_47d544

  ; Code: .L_47d3a2:	 RIP: 47d3a2	 Bytes: 0
block_.L_47d3a2:

  ; Code: movsd 0x6f6f80, %xmm0	 RIP: 47d3a2	 Bytes: 9
  %loadMem_47d3a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d3a2 = call %struct.Memory* @routine_movsd_0x6f6f80___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d3a2)
  store %struct.Memory* %call_47d3a2, %struct.Memory** %MEMORY

  ; Code: ucomisd 0x6ccf88, %xmm0	 RIP: 47d3ab	 Bytes: 9
  %loadMem_47d3ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d3ab = call %struct.Memory* @routine_ucomisd_0x6ccf88___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d3ab)
  store %struct.Memory* %call_47d3ab, %struct.Memory** %MEMORY

  ; Code: jne .L_47d3c5	 RIP: 47d3b4	 Bytes: 6
  %loadMem_47d3b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d3b4 = call %struct.Memory* @routine_jne_.L_47d3c5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d3b4, i8* %BRANCH_TAKEN, i64 17, i64 6, i64 6)
  store %struct.Memory* %call_47d3b4, %struct.Memory** %MEMORY

  %loadBr_47d3b4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47d3b4 = icmp eq i8 %loadBr_47d3b4, 1
  br i1 %cmpBr_47d3b4, label %block_.L_47d3c5, label %block_47d3ba

block_47d3ba:
  ; Code: jp .L_47d3c5	 RIP: 47d3ba	 Bytes: 6
  %loadMem_47d3ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d3ba = call %struct.Memory* @routine_jp_.L_47d3c5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d3ba, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_47d3ba, %struct.Memory** %MEMORY

  %loadBr_47d3ba = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47d3ba = icmp eq i8 %loadBr_47d3ba, 1
  br i1 %cmpBr_47d3ba, label %block_.L_47d3c5, label %block_47d3c0

block_47d3c0:
  ; Code: jmpq .L_47d41c	 RIP: 47d3c0	 Bytes: 5
  %loadMem_47d3c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d3c0 = call %struct.Memory* @routine_jmpq_.L_47d41c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d3c0, i64 92, i64 5)
  store %struct.Memory* %call_47d3c0, %struct.Memory** %MEMORY

  br label %block_.L_47d41c

  ; Code: .L_47d3c5:	 RIP: 47d3c5	 Bytes: 0
block_.L_47d3c5:

  ; Code: movsd 0x344bb(%rip), %xmm0	 RIP: 47d3c5	 Bytes: 8
  %loadMem_47d3c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d3c5 = call %struct.Memory* @routine_movsd_0x344bb__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d3c5)
  store %struct.Memory* %call_47d3c5, %struct.Memory** %MEMORY

  ; Code: movsd 0x6ccf88, %xmm1	 RIP: 47d3cd	 Bytes: 9
  %loadMem_47d3cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d3cd = call %struct.Memory* @routine_movsd_0x6ccf88___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d3cd)
  store %struct.Memory* %call_47d3cd, %struct.Memory** %MEMORY

  ; Code: subsd 0x6f6f80, %xmm1	 RIP: 47d3d6	 Bytes: 9
  %loadMem_47d3d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d3d6 = call %struct.Memory* @routine_subsd_0x6f6f80___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d3d6)
  store %struct.Memory* %call_47d3d6, %struct.Memory** %MEMORY

  ; Code: movl 0x6cc5dc, %eax	 RIP: 47d3df	 Bytes: 7
  %loadMem_47d3df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d3df = call %struct.Memory* @routine_movl_0x6cc5dc___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d3df)
  store %struct.Memory* %call_47d3df, %struct.Memory** %MEMORY

  ; Code: addl 0x6cc5e0, %eax	 RIP: 47d3e6	 Bytes: 7
  %loadMem_47d3e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d3e6 = call %struct.Memory* @routine_addl_0x6cc5e0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d3e6)
  store %struct.Memory* %call_47d3e6, %struct.Memory** %MEMORY

  ; Code: cvtsi2sdl %eax, %xmm2	 RIP: 47d3ed	 Bytes: 4
  %loadMem_47d3ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d3ed = call %struct.Memory* @routine_cvtsi2sdl__eax___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d3ed)
  store %struct.Memory* %call_47d3ed, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm2, %xmm1	 RIP: 47d3f1	 Bytes: 4
  %loadMem_47d3f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d3f1 = call %struct.Memory* @routine_mulsd__xmm2___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d3f1)
  store %struct.Memory* %call_47d3f1, %struct.Memory** %MEMORY

  ; Code: divsd 0x6d1fb0, %xmm1	 RIP: 47d3f5	 Bytes: 9
  %loadMem_47d3f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d3f5 = call %struct.Memory* @routine_divsd_0x6d1fb0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d3f5)
  store %struct.Memory* %call_47d3f5, %struct.Memory** %MEMORY

  ; Code: addsd %xmm0, %xmm1	 RIP: 47d3fe	 Bytes: 4
  %loadMem_47d3fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d3fe = call %struct.Memory* @routine_addsd__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d3fe)
  store %struct.Memory* %call_47d3fe, %struct.Memory** %MEMORY

  ; Code: movaps %xmm1, %xmm0	 RIP: 47d402	 Bytes: 3
  %loadMem_47d402 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d402 = call %struct.Memory* @routine_movaps__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d402)
  store %struct.Memory* %call_47d402, %struct.Memory** %MEMORY

  ; Code: callq .floor_plt	 RIP: 47d405	 Bytes: 5
  %loadMem1_47d405 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_47d405 = call %struct.Memory* @routine_callq_.floor_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_47d405, i64 -508501, i64 5, i64 5)
  store %struct.Memory* %call1_47d405, %struct.Memory** %MEMORY

  %loadMem2_47d405 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47d405 = load i64, i64* %3
  %call2_47d405 = call %struct.Memory* @ext_floor(%struct.State* %0, i64  %loadPC_47d405, %struct.Memory* %loadMem2_47d405)
  store %struct.Memory* %call2_47d405, %struct.Memory** %MEMORY

  ; Code: cvttsd2si %xmm0, %eax	 RIP: 47d40a	 Bytes: 4
  %loadMem_47d40a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d40a = call %struct.Memory* @routine_cvttsd2si__xmm0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d40a)
  store %struct.Memory* %call_47d40a, %struct.Memory** %MEMORY

  ; Code: addl 0x6cc5d8, %eax	 RIP: 47d40e	 Bytes: 7
  %loadMem_47d40e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d40e = call %struct.Memory* @routine_addl_0x6cc5d8___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d40e)
  store %struct.Memory* %call_47d40e, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x6cc5d8	 RIP: 47d415	 Bytes: 7
  %loadMem_47d415 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d415 = call %struct.Memory* @routine_movl__eax__0x6cc5d8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d415)
  store %struct.Memory* %call_47d415, %struct.Memory** %MEMORY

  ; Code: .L_47d41c:	 RIP: 47d41c	 Bytes: 0
  br label %block_.L_47d41c
block_.L_47d41c:

  ; Code: movq 0x6cb900, %rax	 RIP: 47d41c	 Bytes: 8
  %loadMem_47d41c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d41c = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d41c)
  store %struct.Memory* %call_47d41c, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, 0x11b74(%rax)	 RIP: 47d424	 Bytes: 7
  %loadMem_47d424 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d424 = call %struct.Memory* @routine_cmpl__0x1__0x11b74__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d424)
  store %struct.Memory* %call_47d424, %struct.Memory** %MEMORY

  ; Code: jne .L_47d46f	 RIP: 47d42b	 Bytes: 6
  %loadMem_47d42b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d42b = call %struct.Memory* @routine_jne_.L_47d46f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d42b, i8* %BRANCH_TAKEN, i64 68, i64 6, i64 6)
  store %struct.Memory* %call_47d42b, %struct.Memory** %MEMORY

  %loadBr_47d42b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47d42b = icmp eq i8 %loadBr_47d42b, 1
  br i1 %cmpBr_47d42b, label %block_.L_47d46f, label %block_47d431

block_47d431:
  ; Code: movq 0x6cb900, %rax	 RIP: 47d431	 Bytes: 8
  %loadMem_47d431 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d431 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d431)
  store %struct.Memory* %call_47d431, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, 0x11b70(%rax)	 RIP: 47d439	 Bytes: 7
  %loadMem_47d439 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d439 = call %struct.Memory* @routine_cmpl__0x1__0x11b70__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d439)
  store %struct.Memory* %call_47d439, %struct.Memory** %MEMORY

  ; Code: jne .L_47d46f	 RIP: 47d440	 Bytes: 6
  %loadMem_47d440 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d440 = call %struct.Memory* @routine_jne_.L_47d46f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d440, i8* %BRANCH_TAKEN, i64 47, i64 6, i64 6)
  store %struct.Memory* %call_47d440, %struct.Memory** %MEMORY

  %loadBr_47d440 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47d440 = icmp eq i8 %loadBr_47d440, 1
  br i1 %cmpBr_47d440, label %block_.L_47d46f, label %block_47d446

block_47d446:
  ; Code: movsd 0x70f6d8, %xmm0	 RIP: 47d446	 Bytes: 9
  %loadMem_47d446 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d446 = call %struct.Memory* @routine_movsd_0x70f6d8___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d446)
  store %struct.Memory* %call_47d446, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, 0x6ccaf0	 RIP: 47d44f	 Bytes: 9
  %loadMem_47d44f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d44f = call %struct.Memory* @routine_movsd__xmm0__0x6ccaf0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d44f)
  store %struct.Memory* %call_47d44f, %struct.Memory** %MEMORY

  ; Code: movsd 0x710368, %xmm0	 RIP: 47d458	 Bytes: 9
  %loadMem_47d458 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d458 = call %struct.Memory* @routine_movsd_0x710368___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d458)
  store %struct.Memory* %call_47d458, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, 0x726838	 RIP: 47d461	 Bytes: 9
  %loadMem_47d461 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d461 = call %struct.Memory* @routine_movsd__xmm0__0x726838(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d461)
  store %struct.Memory* %call_47d461, %struct.Memory** %MEMORY

  ; Code: jmpq .L_47d53f	 RIP: 47d46a	 Bytes: 5
  %loadMem_47d46a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d46a = call %struct.Memory* @routine_jmpq_.L_47d53f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d46a, i64 213, i64 5)
  store %struct.Memory* %call_47d46a, %struct.Memory** %MEMORY

  br label %block_.L_47d53f

  ; Code: .L_47d46f:	 RIP: 47d46f	 Bytes: 0
block_.L_47d46f:

  ; Code: movq 0x6cb900, %rax	 RIP: 47d46f	 Bytes: 8
  %loadMem_47d46f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d46f = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d46f)
  store %struct.Memory* %call_47d46f, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, 0x11b70(%rax)	 RIP: 47d477	 Bytes: 7
  %loadMem_47d477 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d477 = call %struct.Memory* @routine_cmpl__0x1__0x11b70__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d477)
  store %struct.Memory* %call_47d477, %struct.Memory** %MEMORY

  ; Code: jle .L_47d53a	 RIP: 47d47e	 Bytes: 6
  %loadMem_47d47e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d47e = call %struct.Memory* @routine_jle_.L_47d53a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d47e, i8* %BRANCH_TAKEN, i64 188, i64 6, i64 6)
  store %struct.Memory* %call_47d47e, %struct.Memory** %MEMORY

  %loadBr_47d47e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47d47e = icmp eq i8 %loadBr_47d47e, 1
  br i1 %cmpBr_47d47e, label %block_.L_47d53a, label %block_47d484

block_47d484:
  ; Code: movq 0x6cb900, %rax	 RIP: 47d484	 Bytes: 8
  %loadMem_47d484 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d484 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d484)
  store %struct.Memory* %call_47d484, %struct.Memory** %MEMORY

  ; Code: cmpl $0x8, 0x11b70(%rax)	 RIP: 47d48c	 Bytes: 7
  %loadMem_47d48c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d48c = call %struct.Memory* @routine_cmpl__0x8__0x11b70__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d48c)
  store %struct.Memory* %call_47d48c, %struct.Memory** %MEMORY

  ; Code: jge .L_47d4fe	 RIP: 47d493	 Bytes: 6
  %loadMem_47d493 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d493 = call %struct.Memory* @routine_jge_.L_47d4fe(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d493, i8* %BRANCH_TAKEN, i64 107, i64 6, i64 6)
  store %struct.Memory* %call_47d493, %struct.Memory** %MEMORY

  %loadBr_47d493 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47d493 = icmp eq i8 %loadBr_47d493, 1
  br i1 %cmpBr_47d493, label %block_.L_47d4fe, label %block_47d499

block_47d499:
  ; Code: movsd 0x710368, %xmm0	 RIP: 47d499	 Bytes: 9
  %loadMem_47d499 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d499 = call %struct.Memory* @routine_movsd_0x710368___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d499)
  store %struct.Memory* %call_47d499, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 47d4a2	 Bytes: 8
  %loadMem_47d4a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d4a2 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d4a2)
  store %struct.Memory* %call_47d4a2, %struct.Memory** %MEMORY

  ; Code: movl 0x11b70(%rax), %ecx	 RIP: 47d4aa	 Bytes: 6
  %loadMem_47d4aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d4aa = call %struct.Memory* @routine_movl_0x11b70__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d4aa)
  store %struct.Memory* %call_47d4aa, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 47d4b0	 Bytes: 3
  %loadMem_47d4b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d4b0 = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d4b0)
  store %struct.Memory* %call_47d4b0, %struct.Memory** %MEMORY

  ; Code: cvtsi2sdl %ecx, %xmm1	 RIP: 47d4b3	 Bytes: 4
  %loadMem_47d4b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d4b3 = call %struct.Memory* @routine_cvtsi2sdl__ecx___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d4b3)
  store %struct.Memory* %call_47d4b3, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm1, %xmm0	 RIP: 47d4b7	 Bytes: 4
  %loadMem_47d4b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d4b7 = call %struct.Memory* @routine_mulsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d4b7)
  store %struct.Memory* %call_47d4b7, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 47d4bb	 Bytes: 8
  %loadMem_47d4bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d4bb = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d4bb)
  store %struct.Memory* %call_47d4bb, %struct.Memory** %MEMORY

  ; Code: cvtsi2sdl 0x11b70(%rax), %xmm1	 RIP: 47d4c3	 Bytes: 8
  %loadMem_47d4c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d4c3 = call %struct.Memory* @routine_cvtsi2sdl_0x11b70__rax____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d4c3)
  store %struct.Memory* %call_47d4c3, %struct.Memory** %MEMORY

  ; Code: divsd %xmm1, %xmm0	 RIP: 47d4cb	 Bytes: 4
  %loadMem_47d4cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d4cb = call %struct.Memory* @routine_divsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d4cb)
  store %struct.Memory* %call_47d4cb, %struct.Memory** %MEMORY

  ; Code: movsd 0x726838, %xmm1	 RIP: 47d4cf	 Bytes: 9
  %loadMem_47d4cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d4cf = call %struct.Memory* @routine_movsd_0x726838___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d4cf)
  store %struct.Memory* %call_47d4cf, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 47d4d8	 Bytes: 8
  %loadMem_47d4d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d4d8 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d4d8)
  store %struct.Memory* %call_47d4d8, %struct.Memory** %MEMORY

  ; Code: cvtsi2sdl 0x11b70(%rax), %xmm2	 RIP: 47d4e0	 Bytes: 8
  %loadMem_47d4e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d4e0 = call %struct.Memory* @routine_cvtsi2sdl_0x11b70__rax____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d4e0)
  store %struct.Memory* %call_47d4e0, %struct.Memory** %MEMORY

  ; Code: divsd %xmm2, %xmm1	 RIP: 47d4e8	 Bytes: 4
  %loadMem_47d4e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d4e8 = call %struct.Memory* @routine_divsd__xmm2___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d4e8)
  store %struct.Memory* %call_47d4e8, %struct.Memory** %MEMORY

  ; Code: addsd %xmm1, %xmm0	 RIP: 47d4ec	 Bytes: 4
  %loadMem_47d4ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d4ec = call %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d4ec)
  store %struct.Memory* %call_47d4ec, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, 0x726838	 RIP: 47d4f0	 Bytes: 9
  %loadMem_47d4f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d4f0 = call %struct.Memory* @routine_movsd__xmm0__0x726838(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d4f0)
  store %struct.Memory* %call_47d4f0, %struct.Memory** %MEMORY

  ; Code: jmpq .L_47d535	 RIP: 47d4f9	 Bytes: 5
  %loadMem_47d4f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d4f9 = call %struct.Memory* @routine_jmpq_.L_47d535(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d4f9, i64 60, i64 5)
  store %struct.Memory* %call_47d4f9, %struct.Memory** %MEMORY

  br label %block_.L_47d535

  ; Code: .L_47d4fe:	 RIP: 47d4fe	 Bytes: 0
block_.L_47d4fe:

  ; Code: movsd 0x343ba(%rip), %xmm0	 RIP: 47d4fe	 Bytes: 8
  %loadMem_47d4fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d4fe = call %struct.Memory* @routine_movsd_0x343ba__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d4fe)
  store %struct.Memory* %call_47d4fe, %struct.Memory** %MEMORY

  ; Code: movsd 0x34422(%rip), %xmm1	 RIP: 47d506	 Bytes: 8
  %loadMem_47d506 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d506 = call %struct.Memory* @routine_movsd_0x34422__rip____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d506)
  store %struct.Memory* %call_47d506, %struct.Memory** %MEMORY

  ; Code: movsd 0x710368, %xmm2	 RIP: 47d50e	 Bytes: 9
  %loadMem_47d50e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d50e = call %struct.Memory* @routine_movsd_0x710368___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d50e)
  store %struct.Memory* %call_47d50e, %struct.Memory** %MEMORY

  ; Code: divsd %xmm0, %xmm2	 RIP: 47d517	 Bytes: 4
  %loadMem_47d517 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d517 = call %struct.Memory* @routine_divsd__xmm0___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d517)
  store %struct.Memory* %call_47d517, %struct.Memory** %MEMORY

  ; Code: mulsd 0x726838, %xmm1	 RIP: 47d51b	 Bytes: 9
  %loadMem_47d51b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d51b = call %struct.Memory* @routine_mulsd_0x726838___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d51b)
  store %struct.Memory* %call_47d51b, %struct.Memory** %MEMORY

  ; Code: divsd %xmm0, %xmm1	 RIP: 47d524	 Bytes: 4
  %loadMem_47d524 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d524 = call %struct.Memory* @routine_divsd__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d524)
  store %struct.Memory* %call_47d524, %struct.Memory** %MEMORY

  ; Code: addsd %xmm1, %xmm2	 RIP: 47d528	 Bytes: 4
  %loadMem_47d528 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d528 = call %struct.Memory* @routine_addsd__xmm1___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d528)
  store %struct.Memory* %call_47d528, %struct.Memory** %MEMORY

  ; Code: movsd %xmm2, 0x726838	 RIP: 47d52c	 Bytes: 9
  %loadMem_47d52c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d52c = call %struct.Memory* @routine_movsd__xmm2__0x726838(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d52c)
  store %struct.Memory* %call_47d52c, %struct.Memory** %MEMORY

  ; Code: .L_47d535:	 RIP: 47d535	 Bytes: 0
  br label %block_.L_47d535
block_.L_47d535:

  ; Code: jmpq .L_47d53a	 RIP: 47d535	 Bytes: 5
  %loadMem_47d535 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d535 = call %struct.Memory* @routine_jmpq_.L_47d53a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d535, i64 5, i64 5)
  store %struct.Memory* %call_47d535, %struct.Memory** %MEMORY

  br label %block_.L_47d53a

  ; Code: .L_47d53a:	 RIP: 47d53a	 Bytes: 0
block_.L_47d53a:

  ; Code: jmpq .L_47d53f	 RIP: 47d53a	 Bytes: 5
  %loadMem_47d53a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d53a = call %struct.Memory* @routine_jmpq_.L_47d53f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d53a, i64 5, i64 5)
  store %struct.Memory* %call_47d53a, %struct.Memory** %MEMORY

  br label %block_.L_47d53f

  ; Code: .L_47d53f:	 RIP: 47d53f	 Bytes: 0
block_.L_47d53f:

  ; Code: jmpq .L_47d544	 RIP: 47d53f	 Bytes: 5
  %loadMem_47d53f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d53f = call %struct.Memory* @routine_jmpq_.L_47d544(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d53f, i64 5, i64 5)
  store %struct.Memory* %call_47d53f, %struct.Memory** %MEMORY

  br label %block_.L_47d544

  ; Code: .L_47d544:	 RIP: 47d544	 Bytes: 0
block_.L_47d544:

  ; Code: movq 0x6cb900, %rax	 RIP: 47d544	 Bytes: 8
  %loadMem_47d544 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d544 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d544)
  store %struct.Memory* %call_47d544, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x18(%rax)	 RIP: 47d54c	 Bytes: 4
  %loadMem_47d54c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d54c = call %struct.Memory* @routine_cmpl__0x0__0x18__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d54c)
  store %struct.Memory* %call_47d54c, %struct.Memory** %MEMORY

  ; Code: jne .L_47dafb	 RIP: 47d550	 Bytes: 6
  %loadMem_47d550 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d550 = call %struct.Memory* @routine_jne_.L_47dafb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d550, i8* %BRANCH_TAKEN, i64 1451, i64 6, i64 6)
  store %struct.Memory* %call_47d550, %struct.Memory** %MEMORY

  %loadBr_47d550 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47d550 = icmp eq i8 %loadBr_47d550, 1
  br i1 %cmpBr_47d550, label %block_.L_47dafb, label %block_47d556

block_47d556:
  ; Code: movq 0x6cb900, %rax	 RIP: 47d556	 Bytes: 8
  %loadMem_47d556 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d556 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d556)
  store %struct.Memory* %call_47d556, %struct.Memory** %MEMORY

  ; Code: movl 0x11bac(%rax), %ecx	 RIP: 47d55e	 Bytes: 6
  %loadMem_47d55e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d55e = call %struct.Memory* @routine_movl_0x11bac__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d55e)
  store %struct.Memory* %call_47d55e, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 47d564	 Bytes: 8
  %loadMem_47d564 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d564 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d564)
  store %struct.Memory* %call_47d564, %struct.Memory** %MEMORY

  ; Code: cmpl 0x11ba0(%rax), %ecx	 RIP: 47d56c	 Bytes: 6
  %loadMem_47d56c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d56c = call %struct.Memory* @routine_cmpl_0x11ba0__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d56c)
  store %struct.Memory* %call_47d56c, %struct.Memory** %MEMORY

  ; Code: jne .L_47d6e9	 RIP: 47d572	 Bytes: 6
  %loadMem_47d572 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d572 = call %struct.Memory* @routine_jne_.L_47d6e9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d572, i8* %BRANCH_TAKEN, i64 375, i64 6, i64 6)
  store %struct.Memory* %call_47d572, %struct.Memory** %MEMORY

  %loadBr_47d572 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47d572 = icmp eq i8 %loadBr_47d572, 1
  br i1 %cmpBr_47d572, label %block_.L_47d6e9, label %block_47d578

block_47d578:
  ; Code: movq 0x6cb900, %rax	 RIP: 47d578	 Bytes: 8
  %loadMem_47d578 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d578 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d578)
  store %struct.Memory* %call_47d578, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x11b74(%rax)	 RIP: 47d580	 Bytes: 7
  %loadMem_47d580 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d580 = call %struct.Memory* @routine_cmpl__0x0__0x11b74__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d580)
  store %struct.Memory* %call_47d580, %struct.Memory** %MEMORY

  ; Code: jle .L_47d6e4	 RIP: 47d587	 Bytes: 6
  %loadMem_47d587 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d587 = call %struct.Memory* @routine_jle_.L_47d6e4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d587, i8* %BRANCH_TAKEN, i64 349, i64 6, i64 6)
  store %struct.Memory* %call_47d587, %struct.Memory** %MEMORY

  %loadBr_47d587 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47d587 = icmp eq i8 %loadBr_47d587, 1
  br i1 %cmpBr_47d587, label %block_.L_47d6e4, label %block_47d58d

block_47d58d:
  ; Code: xorl %eax, %eax	 RIP: 47d58d	 Bytes: 2
  %loadMem_47d58d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d58d = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d58d)
  store %struct.Memory* %call_47d58d, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 47d58f	 Bytes: 2
  %loadMem_47d58f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d58f = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d58f)
  store %struct.Memory* %call_47d58f, %struct.Memory** %MEMORY

  ; Code: movsd 0x342ef(%rip), %xmm0	 RIP: 47d591	 Bytes: 8
  %loadMem_47d591 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d591 = call %struct.Memory* @routine_movsd_0x342ef__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d591)
  store %struct.Memory* %call_47d591, %struct.Memory** %MEMORY

  ; Code: movsd 0x70f6d8, %xmm1	 RIP: 47d599	 Bytes: 9
  %loadMem_47d599 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d599 = call %struct.Memory* @routine_movsd_0x70f6d8___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d599)
  store %struct.Memory* %call_47d599, %struct.Memory** %MEMORY

  ; Code: cvtsi2sdl 0x6cc5d8, %xmm2	 RIP: 47d5a2	 Bytes: 9
  %loadMem_47d5a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d5a2 = call %struct.Memory* @routine_cvtsi2sdl_0x6cc5d8___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d5a2)
  store %struct.Memory* %call_47d5a2, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm2, %xmm1	 RIP: 47d5ab	 Bytes: 4
  %loadMem_47d5ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d5ab = call %struct.Memory* @routine_mulsd__xmm2___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d5ab)
  store %struct.Memory* %call_47d5ab, %struct.Memory** %MEMORY

  ; Code: cvtsi2sdl 0x6cc5dc, %xmm2	 RIP: 47d5af	 Bytes: 9
  %loadMem_47d5af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d5af = call %struct.Memory* @routine_cvtsi2sdl_0x6cc5dc___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d5af)
  store %struct.Memory* %call_47d5af, %struct.Memory** %MEMORY

  ; Code: mulsd 0x70f6d8, %xmm2	 RIP: 47d5b8	 Bytes: 9
  %loadMem_47d5b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d5b8 = call %struct.Memory* @routine_mulsd_0x70f6d8___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d5b8)
  store %struct.Memory* %call_47d5b8, %struct.Memory** %MEMORY

  ; Code: cvtsi2sdl 0x6cc5e0, %xmm3	 RIP: 47d5c1	 Bytes: 9
  %loadMem_47d5c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d5c1 = call %struct.Memory* @routine_cvtsi2sdl_0x6cc5e0___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d5c1)
  store %struct.Memory* %call_47d5c1, %struct.Memory** %MEMORY

  ; Code: mulsd 0x710368, %xmm3	 RIP: 47d5ca	 Bytes: 9
  %loadMem_47d5ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d5ca = call %struct.Memory* @routine_mulsd_0x710368___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d5ca)
  store %struct.Memory* %call_47d5ca, %struct.Memory** %MEMORY

  ; Code: addsd %xmm3, %xmm2	 RIP: 47d5d3	 Bytes: 4
  %loadMem_47d5d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d5d3 = call %struct.Memory* @routine_addsd__xmm3___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d5d3)
  store %struct.Memory* %call_47d5d3, %struct.Memory** %MEMORY

  ; Code: divsd %xmm2, %xmm1	 RIP: 47d5d7	 Bytes: 4
  %loadMem_47d5d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d5d7 = call %struct.Memory* @routine_divsd__xmm2___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d5d7)
  store %struct.Memory* %call_47d5d7, %struct.Memory** %MEMORY

  ; Code: addsd %xmm0, %xmm1	 RIP: 47d5db	 Bytes: 4
  %loadMem_47d5db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d5db = call %struct.Memory* @routine_addsd__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d5db)
  store %struct.Memory* %call_47d5db, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x20(%rbp)	 RIP: 47d5df	 Bytes: 5
  %loadMem_47d5df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d5df = call %struct.Memory* @routine_movsd__xmm0__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d5df)
  store %struct.Memory* %call_47d5df, %struct.Memory** %MEMORY

  ; Code: movaps %xmm1, %xmm0	 RIP: 47d5e4	 Bytes: 3
  %loadMem_47d5e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d5e4 = call %struct.Memory* @routine_movaps__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d5e4)
  store %struct.Memory* %call_47d5e4, %struct.Memory** %MEMORY

  ; Code: movq %rcx, -0x28(%rbp)	 RIP: 47d5e7	 Bytes: 4
  %loadMem_47d5e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d5e7 = call %struct.Memory* @routine_movq__rcx__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d5e7)
  store %struct.Memory* %call_47d5e7, %struct.Memory** %MEMORY

  ; Code: callq .floor_plt	 RIP: 47d5eb	 Bytes: 5
  %loadMem1_47d5eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_47d5eb = call %struct.Memory* @routine_callq_.floor_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_47d5eb, i64 -508987, i64 5, i64 5)
  store %struct.Memory* %call1_47d5eb, %struct.Memory** %MEMORY

  %loadMem2_47d5eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47d5eb = load i64, i64* %3
  %call2_47d5eb = call %struct.Memory* @ext_floor(%struct.State* %0, i64  %loadPC_47d5eb, %struct.Memory* %loadMem2_47d5eb)
  store %struct.Memory* %call2_47d5eb, %struct.Memory** %MEMORY

  ; Code: cvttsd2si %xmm0, %rcx	 RIP: 47d5f0	 Bytes: 5
  %loadMem_47d5f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d5f0 = call %struct.Memory* @routine_cvttsd2si__xmm0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d5f0)
  store %struct.Memory* %call_47d5f0, %struct.Memory** %MEMORY

  ; Code: movq %rcx, 0x6cea28	 RIP: 47d5f5	 Bytes: 8
  %loadMem_47d5f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d5f5 = call %struct.Memory* @routine_movq__rcx__0x6cea28(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d5f5)
  store %struct.Memory* %call_47d5f5, %struct.Memory** %MEMORY

  ; Code: movsd 0x6ccf88, %xmm0	 RIP: 47d5fd	 Bytes: 9
  %loadMem_47d5fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d5fd = call %struct.Memory* @routine_movsd_0x6ccf88___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d5fd)
  store %struct.Memory* %call_47d5fd, %struct.Memory** %MEMORY

  ; Code: divsd 0x6d1fb0, %xmm0	 RIP: 47d606	 Bytes: 9
  %loadMem_47d606 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d606 = call %struct.Memory* @routine_divsd_0x6d1fb0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d606)
  store %struct.Memory* %call_47d606, %struct.Memory** %MEMORY

  ; Code: movsd 0x725570, %xmm1	 RIP: 47d60f	 Bytes: 9
  %loadMem_47d60f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d60f = call %struct.Memory* @routine_movsd_0x725570___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d60f)
  store %struct.Memory* %call_47d60f, %struct.Memory** %MEMORY

  ; Code: movsd 0x6d45f0, %xmm2	 RIP: 47d618	 Bytes: 9
  %loadMem_47d618 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d618 = call %struct.Memory* @routine_movsd_0x6d45f0___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d618)
  store %struct.Memory* %call_47d618, %struct.Memory** %MEMORY

  ; Code: subsd 0x6d4680, %xmm2	 RIP: 47d621	 Bytes: 9
  %loadMem_47d621 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d621 = call %struct.Memory* @routine_subsd_0x6d4680___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d621)
  store %struct.Memory* %call_47d621, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm2, %xmm1	 RIP: 47d62a	 Bytes: 4
  %loadMem_47d62a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d62a = call %struct.Memory* @routine_mulsd__xmm2___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d62a)
  store %struct.Memory* %call_47d62a, %struct.Memory** %MEMORY

  ; Code: subsd %xmm1, %xmm0	 RIP: 47d62e	 Bytes: 4
  %loadMem_47d62e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d62e = call %struct.Memory* @routine_subsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d62e)
  store %struct.Memory* %call_47d62e, %struct.Memory** %MEMORY

  ; Code: movsd -0x20(%rbp), %xmm1	 RIP: 47d632	 Bytes: 5
  %loadMem_47d632 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d632 = call %struct.Memory* @routine_movsd_MINUS0x20__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d632)
  store %struct.Memory* %call_47d632, %struct.Memory** %MEMORY

  ; Code: addsd %xmm1, %xmm0	 RIP: 47d637	 Bytes: 4
  %loadMem_47d637 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d637 = call %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d637)
  store %struct.Memory* %call_47d637, %struct.Memory** %MEMORY

  ; Code: callq .floor_plt	 RIP: 47d63b	 Bytes: 5
  %loadMem1_47d63b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_47d63b = call %struct.Memory* @routine_callq_.floor_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_47d63b, i64 -509067, i64 5, i64 5)
  store %struct.Memory* %call1_47d63b, %struct.Memory** %MEMORY

  %loadMem2_47d63b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47d63b = load i64, i64* %3
  %call2_47d63b = call %struct.Memory* @ext_floor(%struct.State* %0, i64  %loadPC_47d63b, %struct.Memory* %loadMem2_47d63b)
  store %struct.Memory* %call2_47d63b, %struct.Memory** %MEMORY

  ; Code: cvttsd2si %xmm0, %rcx	 RIP: 47d640	 Bytes: 5
  %loadMem_47d640 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d640 = call %struct.Memory* @routine_cvttsd2si__xmm0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d640)
  store %struct.Memory* %call_47d640, %struct.Memory** %MEMORY

  ; Code: movq %rcx, 0x6d0270	 RIP: 47d645	 Bytes: 8
  %loadMem_47d645 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d645 = call %struct.Memory* @routine_movq__rcx__0x6d0270(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d645)
  store %struct.Memory* %call_47d645, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 47d64d	 Bytes: 4
  %loadMem_47d64d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d64d = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d64d)
  store %struct.Memory* %call_47d64d, %struct.Memory** %MEMORY

  ; Code: cmpq 0x6d0270, %rcx	 RIP: 47d651	 Bytes: 8
  %loadMem_47d651 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d651 = call %struct.Memory* @routine_cmpq_0x6d0270___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d651)
  store %struct.Memory* %call_47d651, %struct.Memory** %MEMORY

  ; Code: jge .L_47d670	 RIP: 47d659	 Bytes: 6
  %loadMem_47d659 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d659 = call %struct.Memory* @routine_jge_.L_47d670(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d659, i8* %BRANCH_TAKEN, i64 23, i64 6, i64 6)
  store %struct.Memory* %call_47d659, %struct.Memory** %MEMORY

  %loadBr_47d659 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47d659 = icmp eq i8 %loadBr_47d659, 1
  br i1 %cmpBr_47d659, label %block_.L_47d670, label %block_47d65f

block_47d65f:
  ; Code: movq 0x6d0270, %rax	 RIP: 47d65f	 Bytes: 8
  %loadMem_47d65f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d65f = call %struct.Memory* @routine_movq_0x6d0270___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d65f)
  store %struct.Memory* %call_47d65f, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x30(%rbp)	 RIP: 47d667	 Bytes: 4
  %loadMem_47d667 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d667 = call %struct.Memory* @routine_movq__rax__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d667)
  store %struct.Memory* %call_47d667, %struct.Memory** %MEMORY

  ; Code: jmpq .L_47d67d	 RIP: 47d66b	 Bytes: 5
  %loadMem_47d66b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d66b = call %struct.Memory* @routine_jmpq_.L_47d67d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d66b, i64 18, i64 5)
  store %struct.Memory* %call_47d66b, %struct.Memory** %MEMORY

  br label %block_.L_47d67d

  ; Code: .L_47d670:	 RIP: 47d670	 Bytes: 0
block_.L_47d670:

  ; Code: xorl %eax, %eax	 RIP: 47d670	 Bytes: 2
  %loadMem_47d670 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d670 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d670)
  store %struct.Memory* %call_47d670, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 47d672	 Bytes: 2
  %loadMem_47d672 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d672 = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d672)
  store %struct.Memory* %call_47d672, %struct.Memory** %MEMORY

  ; Code: movq %rcx, -0x30(%rbp)	 RIP: 47d674	 Bytes: 4
  %loadMem_47d674 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d674 = call %struct.Memory* @routine_movq__rcx__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d674)
  store %struct.Memory* %call_47d674, %struct.Memory** %MEMORY

  ; Code: jmpq .L_47d67d	 RIP: 47d678	 Bytes: 5
  %loadMem_47d678 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d678 = call %struct.Memory* @routine_jmpq_.L_47d67d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d678, i64 5, i64 5)
  store %struct.Memory* %call_47d678, %struct.Memory** %MEMORY

  br label %block_.L_47d67d

  ; Code: .L_47d67d:	 RIP: 47d67d	 Bytes: 0
block_.L_47d67d:

  ; Code: movq -0x30(%rbp), %rax	 RIP: 47d67d	 Bytes: 4
  %loadMem_47d67d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d67d = call %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d67d)
  store %struct.Memory* %call_47d67d, %struct.Memory** %MEMORY

  ; Code: movsd 0x341ff(%rip), %xmm0	 RIP: 47d681	 Bytes: 8
  %loadMem_47d681 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d681 = call %struct.Memory* @routine_movsd_0x341ff__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d681)
  store %struct.Memory* %call_47d681, %struct.Memory** %MEMORY

  ; Code: movsd 0x341cf(%rip), %xmm1	 RIP: 47d689	 Bytes: 8
  %loadMem_47d689 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d689 = call %struct.Memory* @routine_movsd_0x341cf__rip____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d689)
  store %struct.Memory* %call_47d689, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x6d0270	 RIP: 47d691	 Bytes: 8
  %loadMem_47d691 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d691 = call %struct.Memory* @routine_movq__rax__0x6d0270(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d691)
  store %struct.Memory* %call_47d691, %struct.Memory** %MEMORY

  ; Code: movsd 0x6cea40, %xmm2	 RIP: 47d699	 Bytes: 9
  %loadMem_47d699 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d699 = call %struct.Memory* @routine_movsd_0x6cea40___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d699)
  store %struct.Memory* %call_47d699, %struct.Memory** %MEMORY

  ; Code: cvtsi2sdq 0x6cea28, %xmm3	 RIP: 47d6a2	 Bytes: 10
  %loadMem_47d6a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d6a2 = call %struct.Memory* @routine_cvtsi2sdq_0x6cea28___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d6a2)
  store %struct.Memory* %call_47d6a2, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm3, %xmm2	 RIP: 47d6ac	 Bytes: 4
  %loadMem_47d6ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d6ac = call %struct.Memory* @routine_mulsd__xmm3___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d6ac)
  store %struct.Memory* %call_47d6ac, %struct.Memory** %MEMORY

  ; Code: subsd 0x6cea40, %xmm1	 RIP: 47d6b0	 Bytes: 9
  %loadMem_47d6b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d6b0 = call %struct.Memory* @routine_subsd_0x6cea40___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d6b0)
  store %struct.Memory* %call_47d6b0, %struct.Memory** %MEMORY

  ; Code: cvtsi2sdq 0x6d0270, %xmm3	 RIP: 47d6b9	 Bytes: 10
  %loadMem_47d6b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d6b9 = call %struct.Memory* @routine_cvtsi2sdq_0x6d0270___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d6b9)
  store %struct.Memory* %call_47d6b9, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm3, %xmm1	 RIP: 47d6c3	 Bytes: 4
  %loadMem_47d6c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d6c3 = call %struct.Memory* @routine_mulsd__xmm3___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d6c3)
  store %struct.Memory* %call_47d6c3, %struct.Memory** %MEMORY

  ; Code: addsd %xmm1, %xmm2	 RIP: 47d6c7	 Bytes: 4
  %loadMem_47d6c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d6c7 = call %struct.Memory* @routine_addsd__xmm1___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d6c7)
  store %struct.Memory* %call_47d6c7, %struct.Memory** %MEMORY

  ; Code: addsd %xmm0, %xmm2	 RIP: 47d6cb	 Bytes: 4
  %loadMem_47d6cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d6cb = call %struct.Memory* @routine_addsd__xmm0___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d6cb)
  store %struct.Memory* %call_47d6cb, %struct.Memory** %MEMORY

  ; Code: movaps %xmm2, %xmm0	 RIP: 47d6cf	 Bytes: 3
  %loadMem_47d6cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d6cf = call %struct.Memory* @routine_movaps__xmm2___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d6cf)
  store %struct.Memory* %call_47d6cf, %struct.Memory** %MEMORY

  ; Code: callq .floor_plt	 RIP: 47d6d2	 Bytes: 5
  %loadMem1_47d6d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_47d6d2 = call %struct.Memory* @routine_callq_.floor_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_47d6d2, i64 -509218, i64 5, i64 5)
  store %struct.Memory* %call1_47d6d2, %struct.Memory** %MEMORY

  %loadMem2_47d6d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47d6d2 = load i64, i64* %3
  %call2_47d6d2 = call %struct.Memory* @ext_floor(%struct.State* %0, i64  %loadPC_47d6d2, %struct.Memory* %loadMem2_47d6d2)
  store %struct.Memory* %call2_47d6d2, %struct.Memory** %MEMORY

  ; Code: cvttsd2si %xmm0, %rax	 RIP: 47d6d7	 Bytes: 5
  %loadMem_47d6d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d6d7 = call %struct.Memory* @routine_cvttsd2si__xmm0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d6d7)
  store %struct.Memory* %call_47d6d7, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x6cea28	 RIP: 47d6dc	 Bytes: 8
  %loadMem_47d6dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d6dc = call %struct.Memory* @routine_movq__rax__0x6cea28(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d6dc)
  store %struct.Memory* %call_47d6dc, %struct.Memory** %MEMORY

  ; Code: .L_47d6e4:	 RIP: 47d6e4	 Bytes: 0
  br label %block_.L_47d6e4
block_.L_47d6e4:

  ; Code: jmpq .L_47d9eb	 RIP: 47d6e4	 Bytes: 5
  %loadMem_47d6e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d6e4 = call %struct.Memory* @routine_jmpq_.L_47d9eb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d6e4, i64 775, i64 5)
  store %struct.Memory* %call_47d6e4, %struct.Memory** %MEMORY

  br label %block_.L_47d9eb

  ; Code: .L_47d6e9:	 RIP: 47d6e9	 Bytes: 0
block_.L_47d6e9:

  ; Code: movq 0x6cb900, %rax	 RIP: 47d6e9	 Bytes: 8
  %loadMem_47d6e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d6e9 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d6e9)
  store %struct.Memory* %call_47d6e9, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, 0x11b78(%rax)	 RIP: 47d6f1	 Bytes: 7
  %loadMem_47d6f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d6f1 = call %struct.Memory* @routine_cmpl__0x1__0x11b78__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d6f1)
  store %struct.Memory* %call_47d6f1, %struct.Memory** %MEMORY

  ; Code: jne .L_47d875	 RIP: 47d6f8	 Bytes: 6
  %loadMem_47d6f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d6f8 = call %struct.Memory* @routine_jne_.L_47d875(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d6f8, i8* %BRANCH_TAKEN, i64 381, i64 6, i64 6)
  store %struct.Memory* %call_47d6f8, %struct.Memory** %MEMORY

  %loadBr_47d6f8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47d6f8 = icmp eq i8 %loadBr_47d6f8, 1
  br i1 %cmpBr_47d6f8, label %block_.L_47d875, label %block_47d6fe

block_47d6fe:
  ; Code: movq 0x6cb900, %rax	 RIP: 47d6fe	 Bytes: 8
  %loadMem_47d6fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d6fe = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d6fe)
  store %struct.Memory* %call_47d6fe, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x11b74(%rax)	 RIP: 47d706	 Bytes: 7
  %loadMem_47d706 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d706 = call %struct.Memory* @routine_cmpl__0x0__0x11b74__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d706)
  store %struct.Memory* %call_47d706, %struct.Memory** %MEMORY

  ; Code: jle .L_47d875	 RIP: 47d70d	 Bytes: 6
  %loadMem_47d70d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d70d = call %struct.Memory* @routine_jle_.L_47d875(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d70d, i8* %BRANCH_TAKEN, i64 360, i64 6, i64 6)
  store %struct.Memory* %call_47d70d, %struct.Memory** %MEMORY

  %loadBr_47d70d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47d70d = icmp eq i8 %loadBr_47d70d, 1
  br i1 %cmpBr_47d70d, label %block_.L_47d875, label %block_47d713

block_47d713:
  ; Code: xorl %eax, %eax	 RIP: 47d713	 Bytes: 2
  %loadMem_47d713 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d713 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d713)
  store %struct.Memory* %call_47d713, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 47d715	 Bytes: 2
  %loadMem_47d715 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d715 = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d715)
  store %struct.Memory* %call_47d715, %struct.Memory** %MEMORY

  ; Code: movsd 0x34169(%rip), %xmm0	 RIP: 47d717	 Bytes: 8
  %loadMem_47d717 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d717 = call %struct.Memory* @routine_movsd_0x34169__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d717)
  store %struct.Memory* %call_47d717, %struct.Memory** %MEMORY

  ; Code: movsd 0x70f6d8, %xmm1	 RIP: 47d71f	 Bytes: 9
  %loadMem_47d71f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d71f = call %struct.Memory* @routine_movsd_0x70f6d8___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d71f)
  store %struct.Memory* %call_47d71f, %struct.Memory** %MEMORY

  ; Code: cvtsi2sdl 0x6cc5d8, %xmm2	 RIP: 47d728	 Bytes: 9
  %loadMem_47d728 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d728 = call %struct.Memory* @routine_cvtsi2sdl_0x6cc5d8___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d728)
  store %struct.Memory* %call_47d728, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm2, %xmm1	 RIP: 47d731	 Bytes: 4
  %loadMem_47d731 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d731 = call %struct.Memory* @routine_mulsd__xmm2___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d731)
  store %struct.Memory* %call_47d731, %struct.Memory** %MEMORY

  ; Code: cvtsi2sdl 0x6cc5dc, %xmm2	 RIP: 47d735	 Bytes: 9
  %loadMem_47d735 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d735 = call %struct.Memory* @routine_cvtsi2sdl_0x6cc5dc___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d735)
  store %struct.Memory* %call_47d735, %struct.Memory** %MEMORY

  ; Code: mulsd 0x70f6d8, %xmm2	 RIP: 47d73e	 Bytes: 9
  %loadMem_47d73e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d73e = call %struct.Memory* @routine_mulsd_0x70f6d8___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d73e)
  store %struct.Memory* %call_47d73e, %struct.Memory** %MEMORY

  ; Code: cvtsi2sdl 0x6cc5e0, %xmm3	 RIP: 47d747	 Bytes: 9
  %loadMem_47d747 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d747 = call %struct.Memory* @routine_cvtsi2sdl_0x6cc5e0___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d747)
  store %struct.Memory* %call_47d747, %struct.Memory** %MEMORY

  ; Code: mulsd 0x710368, %xmm3	 RIP: 47d750	 Bytes: 9
  %loadMem_47d750 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d750 = call %struct.Memory* @routine_mulsd_0x710368___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d750)
  store %struct.Memory* %call_47d750, %struct.Memory** %MEMORY

  ; Code: addsd %xmm3, %xmm2	 RIP: 47d759	 Bytes: 4
  %loadMem_47d759 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d759 = call %struct.Memory* @routine_addsd__xmm3___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d759)
  store %struct.Memory* %call_47d759, %struct.Memory** %MEMORY

  ; Code: divsd %xmm2, %xmm1	 RIP: 47d75d	 Bytes: 4
  %loadMem_47d75d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d75d = call %struct.Memory* @routine_divsd__xmm2___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d75d)
  store %struct.Memory* %call_47d75d, %struct.Memory** %MEMORY

  ; Code: addsd %xmm0, %xmm1	 RIP: 47d761	 Bytes: 4
  %loadMem_47d761 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d761 = call %struct.Memory* @routine_addsd__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d761)
  store %struct.Memory* %call_47d761, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x38(%rbp)	 RIP: 47d765	 Bytes: 5
  %loadMem_47d765 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d765 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d765)
  store %struct.Memory* %call_47d765, %struct.Memory** %MEMORY

  ; Code: movaps %xmm1, %xmm0	 RIP: 47d76a	 Bytes: 3
  %loadMem_47d76a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d76a = call %struct.Memory* @routine_movaps__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d76a)
  store %struct.Memory* %call_47d76a, %struct.Memory** %MEMORY

  ; Code: movq %rcx, -0x40(%rbp)	 RIP: 47d76d	 Bytes: 4
  %loadMem_47d76d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d76d = call %struct.Memory* @routine_movq__rcx__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d76d)
  store %struct.Memory* %call_47d76d, %struct.Memory** %MEMORY

  ; Code: callq .floor_plt	 RIP: 47d771	 Bytes: 5
  %loadMem1_47d771 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_47d771 = call %struct.Memory* @routine_callq_.floor_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_47d771, i64 -509377, i64 5, i64 5)
  store %struct.Memory* %call1_47d771, %struct.Memory** %MEMORY

  %loadMem2_47d771 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47d771 = load i64, i64* %3
  %call2_47d771 = call %struct.Memory* @ext_floor(%struct.State* %0, i64  %loadPC_47d771, %struct.Memory* %loadMem2_47d771)
  store %struct.Memory* %call2_47d771, %struct.Memory** %MEMORY

  ; Code: cvttsd2si %xmm0, %eax	 RIP: 47d776	 Bytes: 4
  %loadMem_47d776 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d776 = call %struct.Memory* @routine_cvttsd2si__xmm0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d776)
  store %struct.Memory* %call_47d776, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 47d77a	 Bytes: 3
  %loadMem_47d77a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d77a = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d77a)
  store %struct.Memory* %call_47d77a, %struct.Memory** %MEMORY

  ; Code: movq %rcx, 0x6cea28	 RIP: 47d77d	 Bytes: 8
  %loadMem_47d77d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d77d = call %struct.Memory* @routine_movq__rcx__0x6cea28(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d77d)
  store %struct.Memory* %call_47d77d, %struct.Memory** %MEMORY

  ; Code: movsd 0x6ccf88, %xmm0	 RIP: 47d785	 Bytes: 9
  %loadMem_47d785 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d785 = call %struct.Memory* @routine_movsd_0x6ccf88___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d785)
  store %struct.Memory* %call_47d785, %struct.Memory** %MEMORY

  ; Code: divsd 0x6d1fb0, %xmm0	 RIP: 47d78e	 Bytes: 9
  %loadMem_47d78e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d78e = call %struct.Memory* @routine_divsd_0x6d1fb0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d78e)
  store %struct.Memory* %call_47d78e, %struct.Memory** %MEMORY

  ; Code: movsd 0x725570, %xmm1	 RIP: 47d797	 Bytes: 9
  %loadMem_47d797 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d797 = call %struct.Memory* @routine_movsd_0x725570___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d797)
  store %struct.Memory* %call_47d797, %struct.Memory** %MEMORY

  ; Code: movsd 0x6d45f0, %xmm2	 RIP: 47d7a0	 Bytes: 9
  %loadMem_47d7a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d7a0 = call %struct.Memory* @routine_movsd_0x6d45f0___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d7a0)
  store %struct.Memory* %call_47d7a0, %struct.Memory** %MEMORY

  ; Code: subsd 0x6d4680, %xmm2	 RIP: 47d7a9	 Bytes: 9
  %loadMem_47d7a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d7a9 = call %struct.Memory* @routine_subsd_0x6d4680___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d7a9)
  store %struct.Memory* %call_47d7a9, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm2, %xmm1	 RIP: 47d7b2	 Bytes: 4
  %loadMem_47d7b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d7b2 = call %struct.Memory* @routine_mulsd__xmm2___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d7b2)
  store %struct.Memory* %call_47d7b2, %struct.Memory** %MEMORY

  ; Code: subsd %xmm1, %xmm0	 RIP: 47d7b6	 Bytes: 4
  %loadMem_47d7b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d7b6 = call %struct.Memory* @routine_subsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d7b6)
  store %struct.Memory* %call_47d7b6, %struct.Memory** %MEMORY

  ; Code: movsd -0x38(%rbp), %xmm1	 RIP: 47d7ba	 Bytes: 5
  %loadMem_47d7ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d7ba = call %struct.Memory* @routine_movsd_MINUS0x38__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d7ba)
  store %struct.Memory* %call_47d7ba, %struct.Memory** %MEMORY

  ; Code: addsd %xmm1, %xmm0	 RIP: 47d7bf	 Bytes: 4
  %loadMem_47d7bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d7bf = call %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d7bf)
  store %struct.Memory* %call_47d7bf, %struct.Memory** %MEMORY

  ; Code: callq .floor_plt	 RIP: 47d7c3	 Bytes: 5
  %loadMem1_47d7c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_47d7c3 = call %struct.Memory* @routine_callq_.floor_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_47d7c3, i64 -509459, i64 5, i64 5)
  store %struct.Memory* %call1_47d7c3, %struct.Memory** %MEMORY

  %loadMem2_47d7c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47d7c3 = load i64, i64* %3
  %call2_47d7c3 = call %struct.Memory* @ext_floor(%struct.State* %0, i64  %loadPC_47d7c3, %struct.Memory* %loadMem2_47d7c3)
  store %struct.Memory* %call2_47d7c3, %struct.Memory** %MEMORY

  ; Code: cvttsd2si %xmm0, %eax	 RIP: 47d7c8	 Bytes: 4
  %loadMem_47d7c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d7c8 = call %struct.Memory* @routine_cvttsd2si__xmm0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d7c8)
  store %struct.Memory* %call_47d7c8, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 47d7cc	 Bytes: 3
  %loadMem_47d7cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d7cc = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d7cc)
  store %struct.Memory* %call_47d7cc, %struct.Memory** %MEMORY

  ; Code: movq %rcx, 0x6d0270	 RIP: 47d7cf	 Bytes: 8
  %loadMem_47d7cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d7cf = call %struct.Memory* @routine_movq__rcx__0x6d0270(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d7cf)
  store %struct.Memory* %call_47d7cf, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rcx	 RIP: 47d7d7	 Bytes: 4
  %loadMem_47d7d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d7d7 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d7d7)
  store %struct.Memory* %call_47d7d7, %struct.Memory** %MEMORY

  ; Code: cmpq 0x6d0270, %rcx	 RIP: 47d7db	 Bytes: 8
  %loadMem_47d7db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d7db = call %struct.Memory* @routine_cmpq_0x6d0270___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d7db)
  store %struct.Memory* %call_47d7db, %struct.Memory** %MEMORY

  ; Code: jge .L_47d7fa	 RIP: 47d7e3	 Bytes: 6
  %loadMem_47d7e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d7e3 = call %struct.Memory* @routine_jge_.L_47d7fa(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d7e3, i8* %BRANCH_TAKEN, i64 23, i64 6, i64 6)
  store %struct.Memory* %call_47d7e3, %struct.Memory** %MEMORY

  %loadBr_47d7e3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47d7e3 = icmp eq i8 %loadBr_47d7e3, 1
  br i1 %cmpBr_47d7e3, label %block_.L_47d7fa, label %block_47d7e9

block_47d7e9:
  ; Code: movq 0x6d0270, %rax	 RIP: 47d7e9	 Bytes: 8
  %loadMem_47d7e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d7e9 = call %struct.Memory* @routine_movq_0x6d0270___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d7e9)
  store %struct.Memory* %call_47d7e9, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x48(%rbp)	 RIP: 47d7f1	 Bytes: 4
  %loadMem_47d7f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d7f1 = call %struct.Memory* @routine_movq__rax__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d7f1)
  store %struct.Memory* %call_47d7f1, %struct.Memory** %MEMORY

  ; Code: jmpq .L_47d807	 RIP: 47d7f5	 Bytes: 5
  %loadMem_47d7f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d7f5 = call %struct.Memory* @routine_jmpq_.L_47d807(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d7f5, i64 18, i64 5)
  store %struct.Memory* %call_47d7f5, %struct.Memory** %MEMORY

  br label %block_.L_47d807

  ; Code: .L_47d7fa:	 RIP: 47d7fa	 Bytes: 0
block_.L_47d7fa:

  ; Code: xorl %eax, %eax	 RIP: 47d7fa	 Bytes: 2
  %loadMem_47d7fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d7fa = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d7fa)
  store %struct.Memory* %call_47d7fa, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 47d7fc	 Bytes: 2
  %loadMem_47d7fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d7fc = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d7fc)
  store %struct.Memory* %call_47d7fc, %struct.Memory** %MEMORY

  ; Code: movq %rcx, -0x48(%rbp)	 RIP: 47d7fe	 Bytes: 4
  %loadMem_47d7fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d7fe = call %struct.Memory* @routine_movq__rcx__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d7fe)
  store %struct.Memory* %call_47d7fe, %struct.Memory** %MEMORY

  ; Code: jmpq .L_47d807	 RIP: 47d802	 Bytes: 5
  %loadMem_47d802 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d802 = call %struct.Memory* @routine_jmpq_.L_47d807(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d802, i64 5, i64 5)
  store %struct.Memory* %call_47d802, %struct.Memory** %MEMORY

  br label %block_.L_47d807

  ; Code: .L_47d807:	 RIP: 47d807	 Bytes: 0
block_.L_47d807:

  ; Code: movq -0x48(%rbp), %rax	 RIP: 47d807	 Bytes: 4
  %loadMem_47d807 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d807 = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d807)
  store %struct.Memory* %call_47d807, %struct.Memory** %MEMORY

  ; Code: movsd 0x34075(%rip), %xmm0	 RIP: 47d80b	 Bytes: 8
  %loadMem_47d80b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d80b = call %struct.Memory* @routine_movsd_0x34075__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d80b)
  store %struct.Memory* %call_47d80b, %struct.Memory** %MEMORY

  ; Code: movsd 0x34045(%rip), %xmm1	 RIP: 47d813	 Bytes: 8
  %loadMem_47d813 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d813 = call %struct.Memory* @routine_movsd_0x34045__rip____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d813)
  store %struct.Memory* %call_47d813, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x6d0270	 RIP: 47d81b	 Bytes: 8
  %loadMem_47d81b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d81b = call %struct.Memory* @routine_movq__rax__0x6d0270(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d81b)
  store %struct.Memory* %call_47d81b, %struct.Memory** %MEMORY

  ; Code: movsd 0x6cea40, %xmm2	 RIP: 47d823	 Bytes: 9
  %loadMem_47d823 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d823 = call %struct.Memory* @routine_movsd_0x6cea40___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d823)
  store %struct.Memory* %call_47d823, %struct.Memory** %MEMORY

  ; Code: cvtsi2sdq 0x6cea28, %xmm3	 RIP: 47d82c	 Bytes: 10
  %loadMem_47d82c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d82c = call %struct.Memory* @routine_cvtsi2sdq_0x6cea28___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d82c)
  store %struct.Memory* %call_47d82c, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm3, %xmm2	 RIP: 47d836	 Bytes: 4
  %loadMem_47d836 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d836 = call %struct.Memory* @routine_mulsd__xmm3___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d836)
  store %struct.Memory* %call_47d836, %struct.Memory** %MEMORY

  ; Code: subsd 0x6cea40, %xmm1	 RIP: 47d83a	 Bytes: 9
  %loadMem_47d83a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d83a = call %struct.Memory* @routine_subsd_0x6cea40___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d83a)
  store %struct.Memory* %call_47d83a, %struct.Memory** %MEMORY

  ; Code: cvtsi2sdq 0x6d0270, %xmm3	 RIP: 47d843	 Bytes: 10
  %loadMem_47d843 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d843 = call %struct.Memory* @routine_cvtsi2sdq_0x6d0270___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d843)
  store %struct.Memory* %call_47d843, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm3, %xmm1	 RIP: 47d84d	 Bytes: 4
  %loadMem_47d84d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d84d = call %struct.Memory* @routine_mulsd__xmm3___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d84d)
  store %struct.Memory* %call_47d84d, %struct.Memory** %MEMORY

  ; Code: addsd %xmm1, %xmm2	 RIP: 47d851	 Bytes: 4
  %loadMem_47d851 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d851 = call %struct.Memory* @routine_addsd__xmm1___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d851)
  store %struct.Memory* %call_47d851, %struct.Memory** %MEMORY

  ; Code: addsd %xmm0, %xmm2	 RIP: 47d855	 Bytes: 4
  %loadMem_47d855 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d855 = call %struct.Memory* @routine_addsd__xmm0___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d855)
  store %struct.Memory* %call_47d855, %struct.Memory** %MEMORY

  ; Code: movaps %xmm2, %xmm0	 RIP: 47d859	 Bytes: 3
  %loadMem_47d859 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d859 = call %struct.Memory* @routine_movaps__xmm2___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d859)
  store %struct.Memory* %call_47d859, %struct.Memory** %MEMORY

  ; Code: callq .floor_plt	 RIP: 47d85c	 Bytes: 5
  %loadMem1_47d85c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_47d85c = call %struct.Memory* @routine_callq_.floor_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_47d85c, i64 -509612, i64 5, i64 5)
  store %struct.Memory* %call1_47d85c, %struct.Memory** %MEMORY

  %loadMem2_47d85c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47d85c = load i64, i64* %3
  %call2_47d85c = call %struct.Memory* @ext_floor(%struct.State* %0, i64  %loadPC_47d85c, %struct.Memory* %loadMem2_47d85c)
  store %struct.Memory* %call2_47d85c, %struct.Memory** %MEMORY

  ; Code: cvttsd2si %xmm0, %ecx	 RIP: 47d861	 Bytes: 4
  %loadMem_47d861 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d861 = call %struct.Memory* @routine_cvttsd2si__xmm0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d861)
  store %struct.Memory* %call_47d861, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rax	 RIP: 47d865	 Bytes: 3
  %loadMem_47d865 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d865 = call %struct.Memory* @routine_movslq__ecx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d865)
  store %struct.Memory* %call_47d865, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x6cea28	 RIP: 47d868	 Bytes: 8
  %loadMem_47d868 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d868 = call %struct.Memory* @routine_movq__rax__0x6cea28(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d868)
  store %struct.Memory* %call_47d868, %struct.Memory** %MEMORY

  ; Code: jmpq .L_47d9e6	 RIP: 47d870	 Bytes: 5
  %loadMem_47d870 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d870 = call %struct.Memory* @routine_jmpq_.L_47d9e6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d870, i64 374, i64 5)
  store %struct.Memory* %call_47d870, %struct.Memory** %MEMORY

  br label %block_.L_47d9e6

  ; Code: .L_47d875:	 RIP: 47d875	 Bytes: 0
block_.L_47d875:

  ; Code: movq 0x6cb900, %rax	 RIP: 47d875	 Bytes: 8
  %loadMem_47d875 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d875 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d875)
  store %struct.Memory* %call_47d875, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, 0x11b78(%rax)	 RIP: 47d87d	 Bytes: 7
  %loadMem_47d87d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d87d = call %struct.Memory* @routine_cmpl__0x1__0x11b78__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d87d)
  store %struct.Memory* %call_47d87d, %struct.Memory** %MEMORY

  ; Code: jle .L_47d9e1	 RIP: 47d884	 Bytes: 6
  %loadMem_47d884 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d884 = call %struct.Memory* @routine_jle_.L_47d9e1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d884, i8* %BRANCH_TAKEN, i64 349, i64 6, i64 6)
  store %struct.Memory* %call_47d884, %struct.Memory** %MEMORY

  %loadBr_47d884 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47d884 = icmp eq i8 %loadBr_47d884, 1
  br i1 %cmpBr_47d884, label %block_.L_47d9e1, label %block_47d88a

block_47d88a:
  ; Code: xorl %eax, %eax	 RIP: 47d88a	 Bytes: 2
  %loadMem_47d88a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d88a = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d88a)
  store %struct.Memory* %call_47d88a, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 47d88c	 Bytes: 2
  %loadMem_47d88c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d88c = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d88c)
  store %struct.Memory* %call_47d88c, %struct.Memory** %MEMORY

  ; Code: movsd 0x33ff2(%rip), %xmm0	 RIP: 47d88e	 Bytes: 8
  %loadMem_47d88e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d88e = call %struct.Memory* @routine_movsd_0x33ff2__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d88e)
  store %struct.Memory* %call_47d88e, %struct.Memory** %MEMORY

  ; Code: movsd 0x70f6d8, %xmm1	 RIP: 47d896	 Bytes: 9
  %loadMem_47d896 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d896 = call %struct.Memory* @routine_movsd_0x70f6d8___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d896)
  store %struct.Memory* %call_47d896, %struct.Memory** %MEMORY

  ; Code: cvtsi2sdl 0x6cc5d8, %xmm2	 RIP: 47d89f	 Bytes: 9
  %loadMem_47d89f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d89f = call %struct.Memory* @routine_cvtsi2sdl_0x6cc5d8___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d89f)
  store %struct.Memory* %call_47d89f, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm2, %xmm1	 RIP: 47d8a8	 Bytes: 4
  %loadMem_47d8a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d8a8 = call %struct.Memory* @routine_mulsd__xmm2___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d8a8)
  store %struct.Memory* %call_47d8a8, %struct.Memory** %MEMORY

  ; Code: cvtsi2sdl 0x6cc5dc, %xmm2	 RIP: 47d8ac	 Bytes: 9
  %loadMem_47d8ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d8ac = call %struct.Memory* @routine_cvtsi2sdl_0x6cc5dc___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d8ac)
  store %struct.Memory* %call_47d8ac, %struct.Memory** %MEMORY

  ; Code: mulsd 0x70f6d8, %xmm2	 RIP: 47d8b5	 Bytes: 9
  %loadMem_47d8b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d8b5 = call %struct.Memory* @routine_mulsd_0x70f6d8___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d8b5)
  store %struct.Memory* %call_47d8b5, %struct.Memory** %MEMORY

  ; Code: cvtsi2sdl 0x6cc5e0, %xmm3	 RIP: 47d8be	 Bytes: 9
  %loadMem_47d8be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d8be = call %struct.Memory* @routine_cvtsi2sdl_0x6cc5e0___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d8be)
  store %struct.Memory* %call_47d8be, %struct.Memory** %MEMORY

  ; Code: mulsd 0x710368, %xmm3	 RIP: 47d8c7	 Bytes: 9
  %loadMem_47d8c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d8c7 = call %struct.Memory* @routine_mulsd_0x710368___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d8c7)
  store %struct.Memory* %call_47d8c7, %struct.Memory** %MEMORY

  ; Code: addsd %xmm3, %xmm2	 RIP: 47d8d0	 Bytes: 4
  %loadMem_47d8d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d8d0 = call %struct.Memory* @routine_addsd__xmm3___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d8d0)
  store %struct.Memory* %call_47d8d0, %struct.Memory** %MEMORY

  ; Code: divsd %xmm2, %xmm1	 RIP: 47d8d4	 Bytes: 4
  %loadMem_47d8d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d8d4 = call %struct.Memory* @routine_divsd__xmm2___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d8d4)
  store %struct.Memory* %call_47d8d4, %struct.Memory** %MEMORY

  ; Code: addsd %xmm0, %xmm1	 RIP: 47d8d8	 Bytes: 4
  %loadMem_47d8d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d8d8 = call %struct.Memory* @routine_addsd__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d8d8)
  store %struct.Memory* %call_47d8d8, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x50(%rbp)	 RIP: 47d8dc	 Bytes: 5
  %loadMem_47d8dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d8dc = call %struct.Memory* @routine_movsd__xmm0__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d8dc)
  store %struct.Memory* %call_47d8dc, %struct.Memory** %MEMORY

  ; Code: movaps %xmm1, %xmm0	 RIP: 47d8e1	 Bytes: 3
  %loadMem_47d8e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d8e1 = call %struct.Memory* @routine_movaps__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d8e1)
  store %struct.Memory* %call_47d8e1, %struct.Memory** %MEMORY

  ; Code: movq %rcx, -0x58(%rbp)	 RIP: 47d8e4	 Bytes: 4
  %loadMem_47d8e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d8e4 = call %struct.Memory* @routine_movq__rcx__MINUS0x58__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d8e4)
  store %struct.Memory* %call_47d8e4, %struct.Memory** %MEMORY

  ; Code: callq .floor_plt	 RIP: 47d8e8	 Bytes: 5
  %loadMem1_47d8e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_47d8e8 = call %struct.Memory* @routine_callq_.floor_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_47d8e8, i64 -509752, i64 5, i64 5)
  store %struct.Memory* %call1_47d8e8, %struct.Memory** %MEMORY

  %loadMem2_47d8e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47d8e8 = load i64, i64* %3
  %call2_47d8e8 = call %struct.Memory* @ext_floor(%struct.State* %0, i64  %loadPC_47d8e8, %struct.Memory* %loadMem2_47d8e8)
  store %struct.Memory* %call2_47d8e8, %struct.Memory** %MEMORY

  ; Code: cvttsd2si %xmm0, %rcx	 RIP: 47d8ed	 Bytes: 5
  %loadMem_47d8ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d8ed = call %struct.Memory* @routine_cvttsd2si__xmm0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d8ed)
  store %struct.Memory* %call_47d8ed, %struct.Memory** %MEMORY

  ; Code: movq %rcx, 0x6cea28	 RIP: 47d8f2	 Bytes: 8
  %loadMem_47d8f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d8f2 = call %struct.Memory* @routine_movq__rcx__0x6cea28(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d8f2)
  store %struct.Memory* %call_47d8f2, %struct.Memory** %MEMORY

  ; Code: movsd 0x6ccf88, %xmm0	 RIP: 47d8fa	 Bytes: 9
  %loadMem_47d8fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d8fa = call %struct.Memory* @routine_movsd_0x6ccf88___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d8fa)
  store %struct.Memory* %call_47d8fa, %struct.Memory** %MEMORY

  ; Code: divsd 0x6d1fb0, %xmm0	 RIP: 47d903	 Bytes: 9
  %loadMem_47d903 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d903 = call %struct.Memory* @routine_divsd_0x6d1fb0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d903)
  store %struct.Memory* %call_47d903, %struct.Memory** %MEMORY

  ; Code: movsd 0x725570, %xmm1	 RIP: 47d90c	 Bytes: 9
  %loadMem_47d90c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d90c = call %struct.Memory* @routine_movsd_0x725570___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d90c)
  store %struct.Memory* %call_47d90c, %struct.Memory** %MEMORY

  ; Code: movsd 0x6d45f0, %xmm2	 RIP: 47d915	 Bytes: 9
  %loadMem_47d915 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d915 = call %struct.Memory* @routine_movsd_0x6d45f0___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d915)
  store %struct.Memory* %call_47d915, %struct.Memory** %MEMORY

  ; Code: subsd 0x6d4680, %xmm2	 RIP: 47d91e	 Bytes: 9
  %loadMem_47d91e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d91e = call %struct.Memory* @routine_subsd_0x6d4680___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d91e)
  store %struct.Memory* %call_47d91e, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm2, %xmm1	 RIP: 47d927	 Bytes: 4
  %loadMem_47d927 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d927 = call %struct.Memory* @routine_mulsd__xmm2___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d927)
  store %struct.Memory* %call_47d927, %struct.Memory** %MEMORY

  ; Code: subsd %xmm1, %xmm0	 RIP: 47d92b	 Bytes: 4
  %loadMem_47d92b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d92b = call %struct.Memory* @routine_subsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d92b)
  store %struct.Memory* %call_47d92b, %struct.Memory** %MEMORY

  ; Code: movsd -0x50(%rbp), %xmm1	 RIP: 47d92f	 Bytes: 5
  %loadMem_47d92f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d92f = call %struct.Memory* @routine_movsd_MINUS0x50__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d92f)
  store %struct.Memory* %call_47d92f, %struct.Memory** %MEMORY

  ; Code: addsd %xmm1, %xmm0	 RIP: 47d934	 Bytes: 4
  %loadMem_47d934 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d934 = call %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d934)
  store %struct.Memory* %call_47d934, %struct.Memory** %MEMORY

  ; Code: callq .floor_plt	 RIP: 47d938	 Bytes: 5
  %loadMem1_47d938 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_47d938 = call %struct.Memory* @routine_callq_.floor_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_47d938, i64 -509832, i64 5, i64 5)
  store %struct.Memory* %call1_47d938, %struct.Memory** %MEMORY

  %loadMem2_47d938 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47d938 = load i64, i64* %3
  %call2_47d938 = call %struct.Memory* @ext_floor(%struct.State* %0, i64  %loadPC_47d938, %struct.Memory* %loadMem2_47d938)
  store %struct.Memory* %call2_47d938, %struct.Memory** %MEMORY

  ; Code: cvttsd2si %xmm0, %rcx	 RIP: 47d93d	 Bytes: 5
  %loadMem_47d93d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d93d = call %struct.Memory* @routine_cvttsd2si__xmm0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d93d)
  store %struct.Memory* %call_47d93d, %struct.Memory** %MEMORY

  ; Code: movq %rcx, 0x6d0270	 RIP: 47d942	 Bytes: 8
  %loadMem_47d942 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d942 = call %struct.Memory* @routine_movq__rcx__0x6d0270(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d942)
  store %struct.Memory* %call_47d942, %struct.Memory** %MEMORY

  ; Code: movq -0x58(%rbp), %rcx	 RIP: 47d94a	 Bytes: 4
  %loadMem_47d94a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d94a = call %struct.Memory* @routine_movq_MINUS0x58__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d94a)
  store %struct.Memory* %call_47d94a, %struct.Memory** %MEMORY

  ; Code: cmpq 0x6d0270, %rcx	 RIP: 47d94e	 Bytes: 8
  %loadMem_47d94e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d94e = call %struct.Memory* @routine_cmpq_0x6d0270___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d94e)
  store %struct.Memory* %call_47d94e, %struct.Memory** %MEMORY

  ; Code: jge .L_47d96d	 RIP: 47d956	 Bytes: 6
  %loadMem_47d956 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d956 = call %struct.Memory* @routine_jge_.L_47d96d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d956, i8* %BRANCH_TAKEN, i64 23, i64 6, i64 6)
  store %struct.Memory* %call_47d956, %struct.Memory** %MEMORY

  %loadBr_47d956 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47d956 = icmp eq i8 %loadBr_47d956, 1
  br i1 %cmpBr_47d956, label %block_.L_47d96d, label %block_47d95c

block_47d95c:
  ; Code: movq 0x6d0270, %rax	 RIP: 47d95c	 Bytes: 8
  %loadMem_47d95c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d95c = call %struct.Memory* @routine_movq_0x6d0270___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d95c)
  store %struct.Memory* %call_47d95c, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x60(%rbp)	 RIP: 47d964	 Bytes: 4
  %loadMem_47d964 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d964 = call %struct.Memory* @routine_movq__rax__MINUS0x60__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d964)
  store %struct.Memory* %call_47d964, %struct.Memory** %MEMORY

  ; Code: jmpq .L_47d97a	 RIP: 47d968	 Bytes: 5
  %loadMem_47d968 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d968 = call %struct.Memory* @routine_jmpq_.L_47d97a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d968, i64 18, i64 5)
  store %struct.Memory* %call_47d968, %struct.Memory** %MEMORY

  br label %block_.L_47d97a

  ; Code: .L_47d96d:	 RIP: 47d96d	 Bytes: 0
block_.L_47d96d:

  ; Code: xorl %eax, %eax	 RIP: 47d96d	 Bytes: 2
  %loadMem_47d96d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d96d = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d96d)
  store %struct.Memory* %call_47d96d, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 47d96f	 Bytes: 2
  %loadMem_47d96f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d96f = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d96f)
  store %struct.Memory* %call_47d96f, %struct.Memory** %MEMORY

  ; Code: movq %rcx, -0x60(%rbp)	 RIP: 47d971	 Bytes: 4
  %loadMem_47d971 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d971 = call %struct.Memory* @routine_movq__rcx__MINUS0x60__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d971)
  store %struct.Memory* %call_47d971, %struct.Memory** %MEMORY

  ; Code: jmpq .L_47d97a	 RIP: 47d975	 Bytes: 5
  %loadMem_47d975 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d975 = call %struct.Memory* @routine_jmpq_.L_47d97a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d975, i64 5, i64 5)
  store %struct.Memory* %call_47d975, %struct.Memory** %MEMORY

  br label %block_.L_47d97a

  ; Code: .L_47d97a:	 RIP: 47d97a	 Bytes: 0
block_.L_47d97a:

  ; Code: movq -0x60(%rbp), %rax	 RIP: 47d97a	 Bytes: 4
  %loadMem_47d97a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d97a = call %struct.Memory* @routine_movq_MINUS0x60__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d97a)
  store %struct.Memory* %call_47d97a, %struct.Memory** %MEMORY

  ; Code: movsd 0x33f02(%rip), %xmm0	 RIP: 47d97e	 Bytes: 8
  %loadMem_47d97e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d97e = call %struct.Memory* @routine_movsd_0x33f02__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d97e)
  store %struct.Memory* %call_47d97e, %struct.Memory** %MEMORY

  ; Code: movsd 0x33ed2(%rip), %xmm1	 RIP: 47d986	 Bytes: 8
  %loadMem_47d986 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d986 = call %struct.Memory* @routine_movsd_0x33ed2__rip____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d986)
  store %struct.Memory* %call_47d986, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x6d0270	 RIP: 47d98e	 Bytes: 8
  %loadMem_47d98e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d98e = call %struct.Memory* @routine_movq__rax__0x6d0270(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d98e)
  store %struct.Memory* %call_47d98e, %struct.Memory** %MEMORY

  ; Code: movsd 0x6cea40, %xmm2	 RIP: 47d996	 Bytes: 9
  %loadMem_47d996 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d996 = call %struct.Memory* @routine_movsd_0x6cea40___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d996)
  store %struct.Memory* %call_47d996, %struct.Memory** %MEMORY

  ; Code: cvtsi2sdq 0x6cea28, %xmm3	 RIP: 47d99f	 Bytes: 10
  %loadMem_47d99f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d99f = call %struct.Memory* @routine_cvtsi2sdq_0x6cea28___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d99f)
  store %struct.Memory* %call_47d99f, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm3, %xmm2	 RIP: 47d9a9	 Bytes: 4
  %loadMem_47d9a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d9a9 = call %struct.Memory* @routine_mulsd__xmm3___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d9a9)
  store %struct.Memory* %call_47d9a9, %struct.Memory** %MEMORY

  ; Code: subsd 0x6cea40, %xmm1	 RIP: 47d9ad	 Bytes: 9
  %loadMem_47d9ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d9ad = call %struct.Memory* @routine_subsd_0x6cea40___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d9ad)
  store %struct.Memory* %call_47d9ad, %struct.Memory** %MEMORY

  ; Code: cvtsi2sdq 0x6d0270, %xmm3	 RIP: 47d9b6	 Bytes: 10
  %loadMem_47d9b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d9b6 = call %struct.Memory* @routine_cvtsi2sdq_0x6d0270___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d9b6)
  store %struct.Memory* %call_47d9b6, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm3, %xmm1	 RIP: 47d9c0	 Bytes: 4
  %loadMem_47d9c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d9c0 = call %struct.Memory* @routine_mulsd__xmm3___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d9c0)
  store %struct.Memory* %call_47d9c0, %struct.Memory** %MEMORY

  ; Code: addsd %xmm1, %xmm2	 RIP: 47d9c4	 Bytes: 4
  %loadMem_47d9c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d9c4 = call %struct.Memory* @routine_addsd__xmm1___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d9c4)
  store %struct.Memory* %call_47d9c4, %struct.Memory** %MEMORY

  ; Code: addsd %xmm0, %xmm2	 RIP: 47d9c8	 Bytes: 4
  %loadMem_47d9c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d9c8 = call %struct.Memory* @routine_addsd__xmm0___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d9c8)
  store %struct.Memory* %call_47d9c8, %struct.Memory** %MEMORY

  ; Code: movaps %xmm2, %xmm0	 RIP: 47d9cc	 Bytes: 3
  %loadMem_47d9cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d9cc = call %struct.Memory* @routine_movaps__xmm2___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d9cc)
  store %struct.Memory* %call_47d9cc, %struct.Memory** %MEMORY

  ; Code: callq .floor_plt	 RIP: 47d9cf	 Bytes: 5
  %loadMem1_47d9cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_47d9cf = call %struct.Memory* @routine_callq_.floor_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_47d9cf, i64 -509983, i64 5, i64 5)
  store %struct.Memory* %call1_47d9cf, %struct.Memory** %MEMORY

  %loadMem2_47d9cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47d9cf = load i64, i64* %3
  %call2_47d9cf = call %struct.Memory* @ext_floor(%struct.State* %0, i64  %loadPC_47d9cf, %struct.Memory* %loadMem2_47d9cf)
  store %struct.Memory* %call2_47d9cf, %struct.Memory** %MEMORY

  ; Code: cvttsd2si %xmm0, %rax	 RIP: 47d9d4	 Bytes: 5
  %loadMem_47d9d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d9d4 = call %struct.Memory* @routine_cvttsd2si__xmm0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d9d4)
  store %struct.Memory* %call_47d9d4, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x6cea28	 RIP: 47d9d9	 Bytes: 8
  %loadMem_47d9d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d9d9 = call %struct.Memory* @routine_movq__rax__0x6cea28(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d9d9)
  store %struct.Memory* %call_47d9d9, %struct.Memory** %MEMORY

  ; Code: .L_47d9e1:	 RIP: 47d9e1	 Bytes: 0
  br label %block_.L_47d9e1
block_.L_47d9e1:

  ; Code: jmpq .L_47d9e6	 RIP: 47d9e1	 Bytes: 5
  %loadMem_47d9e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d9e1 = call %struct.Memory* @routine_jmpq_.L_47d9e6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d9e1, i64 5, i64 5)
  store %struct.Memory* %call_47d9e1, %struct.Memory** %MEMORY

  br label %block_.L_47d9e6

  ; Code: .L_47d9e6:	 RIP: 47d9e6	 Bytes: 0
block_.L_47d9e6:

  ; Code: jmpq .L_47d9eb	 RIP: 47d9e6	 Bytes: 5
  %loadMem_47d9e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d9e6 = call %struct.Memory* @routine_jmpq_.L_47d9eb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d9e6, i64 5, i64 5)
  store %struct.Memory* %call_47d9e6, %struct.Memory** %MEMORY

  br label %block_.L_47d9eb

  ; Code: .L_47d9eb:	 RIP: 47d9eb	 Bytes: 0
block_.L_47d9eb:

  ; Code: movsd 0x33e6d(%rip), %xmm0	 RIP: 47d9eb	 Bytes: 8
  %loadMem_47d9eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d9eb = call %struct.Memory* @routine_movsd_0x33e6d__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d9eb)
  store %struct.Memory* %call_47d9eb, %struct.Memory** %MEMORY

  ; Code: xorps %xmm1, %xmm1	 RIP: 47d9f3	 Bytes: 3
  %loadMem_47d9f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d9f3 = call %struct.Memory* @routine_xorps__xmm1___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d9f3)
  store %struct.Memory* %call_47d9f3, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rax	 RIP: 47d9f6	 Bytes: 8
  %loadMem_47d9f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d9f6 = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d9f6)
  store %struct.Memory* %call_47d9f6, %struct.Memory** %MEMORY

  ; Code: cvtsi2sdl 0x4d4(%rax), %xmm2	 RIP: 47d9fe	 Bytes: 8
  %loadMem_47d9fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47d9fe = call %struct.Memory* @routine_cvtsi2sdl_0x4d4__rax____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47d9fe)
  store %struct.Memory* %call_47d9fe, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm2, %xmm1	 RIP: 47da06	 Bytes: 4
  %loadMem_47da06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47da06 = call %struct.Memory* @routine_mulsd__xmm2___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47da06)
  store %struct.Memory* %call_47da06, %struct.Memory** %MEMORY

  ; Code: subsd %xmm1, %xmm0	 RIP: 47da0a	 Bytes: 4
  %loadMem_47da0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47da0a = call %struct.Memory* @routine_subsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47da0a)
  store %struct.Memory* %call_47da0a, %struct.Memory** %MEMORY

  ; Code: cvtsi2sdq 0x6cea28, %xmm1	 RIP: 47da0e	 Bytes: 10
  %loadMem_47da0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47da0e = call %struct.Memory* @routine_cvtsi2sdq_0x6cea28___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47da0e)
  store %struct.Memory* %call_47da0e, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm1, %xmm0	 RIP: 47da18	 Bytes: 4
  %loadMem_47da18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47da18 = call %struct.Memory* @routine_mulsd__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47da18)
  store %struct.Memory* %call_47da18, %struct.Memory** %MEMORY

  ; Code: cvttsd2si %xmm0, %rax	 RIP: 47da1c	 Bytes: 5
  %loadMem_47da1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47da1c = call %struct.Memory* @routine_cvttsd2si__xmm0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47da1c)
  store %struct.Memory* %call_47da1c, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x6cea28	 RIP: 47da21	 Bytes: 8
  %loadMem_47da21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47da21 = call %struct.Memory* @routine_movq__rax__0x6cea28(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47da21)
  store %struct.Memory* %call_47da21, %struct.Memory** %MEMORY

  ; Code: movq 0x6cea28, %rax	 RIP: 47da29	 Bytes: 8
  %loadMem_47da29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47da29 = call %struct.Memory* @routine_movq_0x6cea28___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47da29)
  store %struct.Memory* %call_47da29, %struct.Memory** %MEMORY

  ; Code: cmpq 0x710a48, %rax	 RIP: 47da31	 Bytes: 8
  %loadMem_47da31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47da31 = call %struct.Memory* @routine_cmpq_0x710a48___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47da31)
  store %struct.Memory* %call_47da31, %struct.Memory** %MEMORY

  ; Code: jge .L_47da50	 RIP: 47da39	 Bytes: 6
  %loadMem_47da39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47da39 = call %struct.Memory* @routine_jge_.L_47da50(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47da39, i8* %BRANCH_TAKEN, i64 23, i64 6, i64 6)
  store %struct.Memory* %call_47da39, %struct.Memory** %MEMORY

  %loadBr_47da39 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47da39 = icmp eq i8 %loadBr_47da39, 1
  br i1 %cmpBr_47da39, label %block_.L_47da50, label %block_47da3f

block_47da3f:
  ; Code: movq 0x710a48, %rax	 RIP: 47da3f	 Bytes: 8
  %loadMem_47da3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47da3f = call %struct.Memory* @routine_movq_0x710a48___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47da3f)
  store %struct.Memory* %call_47da3f, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x68(%rbp)	 RIP: 47da47	 Bytes: 4
  %loadMem_47da47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47da47 = call %struct.Memory* @routine_movq__rax__MINUS0x68__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47da47)
  store %struct.Memory* %call_47da47, %struct.Memory** %MEMORY

  ; Code: jmpq .L_47da5c	 RIP: 47da4b	 Bytes: 5
  %loadMem_47da4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47da4b = call %struct.Memory* @routine_jmpq_.L_47da5c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47da4b, i64 17, i64 5)
  store %struct.Memory* %call_47da4b, %struct.Memory** %MEMORY

  br label %block_.L_47da5c

  ; Code: .L_47da50:	 RIP: 47da50	 Bytes: 0
block_.L_47da50:

  ; Code: movq 0x6cea28, %rax	 RIP: 47da50	 Bytes: 8
  %loadMem_47da50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47da50 = call %struct.Memory* @routine_movq_0x6cea28___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47da50)
  store %struct.Memory* %call_47da50, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x68(%rbp)	 RIP: 47da58	 Bytes: 4
  %loadMem_47da58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47da58 = call %struct.Memory* @routine_movq__rax__MINUS0x68__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47da58)
  store %struct.Memory* %call_47da58, %struct.Memory** %MEMORY

  ; Code: .L_47da5c:	 RIP: 47da5c	 Bytes: 0
  br label %block_.L_47da5c
block_.L_47da5c:

  ; Code: movq -0x68(%rbp), %rax	 RIP: 47da5c	 Bytes: 4
  %loadMem_47da5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47da5c = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47da5c)
  store %struct.Memory* %call_47da5c, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x6cea28	 RIP: 47da60	 Bytes: 8
  %loadMem_47da60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47da60 = call %struct.Memory* @routine_movq__rax__0x6cea28(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47da60)
  store %struct.Memory* %call_47da60, %struct.Memory** %MEMORY

  ; Code: movq 0x6cea28, %rax	 RIP: 47da68	 Bytes: 8
  %loadMem_47da68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47da68 = call %struct.Memory* @routine_movq_0x6cea28___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47da68)
  store %struct.Memory* %call_47da68, %struct.Memory** %MEMORY

  ; Code: cmpq 0x6cd478, %rax	 RIP: 47da70	 Bytes: 8
  %loadMem_47da70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47da70 = call %struct.Memory* @routine_cmpq_0x6cd478___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47da70)
  store %struct.Memory* %call_47da70, %struct.Memory** %MEMORY

  ; Code: jge .L_47da8f	 RIP: 47da78	 Bytes: 6
  %loadMem_47da78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47da78 = call %struct.Memory* @routine_jge_.L_47da8f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47da78, i8* %BRANCH_TAKEN, i64 23, i64 6, i64 6)
  store %struct.Memory* %call_47da78, %struct.Memory** %MEMORY

  %loadBr_47da78 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47da78 = icmp eq i8 %loadBr_47da78, 1
  br i1 %cmpBr_47da78, label %block_.L_47da8f, label %block_47da7e

block_47da7e:
  ; Code: movq 0x6cea28, %rax	 RIP: 47da7e	 Bytes: 8
  %loadMem_47da7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47da7e = call %struct.Memory* @routine_movq_0x6cea28___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47da7e)
  store %struct.Memory* %call_47da7e, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x70(%rbp)	 RIP: 47da86	 Bytes: 4
  %loadMem_47da86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47da86 = call %struct.Memory* @routine_movq__rax__MINUS0x70__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47da86)
  store %struct.Memory* %call_47da86, %struct.Memory** %MEMORY

  ; Code: jmpq .L_47da9b	 RIP: 47da8a	 Bytes: 5
  %loadMem_47da8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47da8a = call %struct.Memory* @routine_jmpq_.L_47da9b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47da8a, i64 17, i64 5)
  store %struct.Memory* %call_47da8a, %struct.Memory** %MEMORY

  br label %block_.L_47da9b

  ; Code: .L_47da8f:	 RIP: 47da8f	 Bytes: 0
block_.L_47da8f:

  ; Code: movq 0x6cd478, %rax	 RIP: 47da8f	 Bytes: 8
  %loadMem_47da8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47da8f = call %struct.Memory* @routine_movq_0x6cd478___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47da8f)
  store %struct.Memory* %call_47da8f, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x70(%rbp)	 RIP: 47da97	 Bytes: 4
  %loadMem_47da97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47da97 = call %struct.Memory* @routine_movq__rax__MINUS0x70__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47da97)
  store %struct.Memory* %call_47da97, %struct.Memory** %MEMORY

  ; Code: .L_47da9b:	 RIP: 47da9b	 Bytes: 0
  br label %block_.L_47da9b
block_.L_47da9b:

  ; Code: movq -0x70(%rbp), %rax	 RIP: 47da9b	 Bytes: 4
  %loadMem_47da9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47da9b = call %struct.Memory* @routine_movq_MINUS0x70__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47da9b)
  store %struct.Memory* %call_47da9b, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x6cea28	 RIP: 47da9f	 Bytes: 8
  %loadMem_47da9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47da9f = call %struct.Memory* @routine_movq__rax__0x6cea28(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47da9f)
  store %struct.Memory* %call_47da9f, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0x8(%rbp)	 RIP: 47daa7	 Bytes: 4
  %loadMem_47daa7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47daa7 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47daa7)
  store %struct.Memory* %call_47daa7, %struct.Memory** %MEMORY

  ; Code: jne .L_47dae5	 RIP: 47daab	 Bytes: 6
  %loadMem_47daab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47daab = call %struct.Memory* @routine_jne_.L_47dae5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47daab, i8* %BRANCH_TAKEN, i64 58, i64 6, i64 6)
  store %struct.Memory* %call_47daab, %struct.Memory** %MEMORY

  %loadBr_47daab = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47daab = icmp eq i8 %loadBr_47daab, 1
  br i1 %cmpBr_47daab, label %block_.L_47dae5, label %block_47dab1

block_47dab1:
  ; Code: cmpl $0x0, -0x4(%rbp)	 RIP: 47dab1	 Bytes: 4
  %loadMem_47dab1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47dab1 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47dab1)
  store %struct.Memory* %call_47dab1, %struct.Memory** %MEMORY

  ; Code: je .L_47daf6	 RIP: 47dab5	 Bytes: 6
  %loadMem_47dab5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47dab5 = call %struct.Memory* @routine_je_.L_47daf6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47dab5, i8* %BRANCH_TAKEN, i64 65, i64 6, i64 6)
  store %struct.Memory* %call_47dab5, %struct.Memory** %MEMORY

  %loadBr_47dab5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47dab5 = icmp eq i8 %loadBr_47dab5, 1
  br i1 %cmpBr_47dab5, label %block_.L_47daf6, label %block_47dabb

block_47dabb:
  ; Code: movq 0x6cb8f8, %rax	 RIP: 47dabb	 Bytes: 8
  %loadMem_47dabb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47dabb = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47dabb)
  store %struct.Memory* %call_47dabb, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, 0xb40(%rax)	 RIP: 47dac3	 Bytes: 7
  %loadMem_47dac3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47dac3 = call %struct.Memory* @routine_cmpl__0x2__0xb40__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47dac3)
  store %struct.Memory* %call_47dac3, %struct.Memory** %MEMORY

  ; Code: je .L_47dae5	 RIP: 47daca	 Bytes: 6
  %loadMem_47daca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47daca = call %struct.Memory* @routine_je_.L_47dae5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47daca, i8* %BRANCH_TAKEN, i64 27, i64 6, i64 6)
  store %struct.Memory* %call_47daca, %struct.Memory** %MEMORY

  %loadBr_47daca = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47daca = icmp eq i8 %loadBr_47daca, 1
  br i1 %cmpBr_47daca, label %block_.L_47dae5, label %block_47dad0

block_47dad0:
  ; Code: movq 0x6cb8f8, %rax	 RIP: 47dad0	 Bytes: 8
  %loadMem_47dad0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47dad0 = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47dad0)
  store %struct.Memory* %call_47dad0, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0xb44(%rax)	 RIP: 47dad8	 Bytes: 7
  %loadMem_47dad8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47dad8 = call %struct.Memory* @routine_cmpl__0x0__0xb44__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47dad8)
  store %struct.Memory* %call_47dad8, %struct.Memory** %MEMORY

  ; Code: je .L_47daf6	 RIP: 47dadf	 Bytes: 6
  %loadMem_47dadf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47dadf = call %struct.Memory* @routine_je_.L_47daf6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47dadf, i8* %BRANCH_TAKEN, i64 23, i64 6, i64 6)
  store %struct.Memory* %call_47dadf, %struct.Memory** %MEMORY

  %loadBr_47dadf = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47dadf = icmp eq i8 %loadBr_47dadf, 1
  br i1 %cmpBr_47dadf, label %block_.L_47daf6, label %block_.L_47dae5

  ; Code: .L_47dae5:	 RIP: 47dae5	 Bytes: 0
block_.L_47dae5:

  ; Code: movq 0x6cea28, %rax	 RIP: 47dae5	 Bytes: 8
  %loadMem_47dae5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47dae5 = call %struct.Memory* @routine_movq_0x6cea28___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47dae5)
  store %struct.Memory* %call_47dae5, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 47daed	 Bytes: 2
  %loadMem_47daed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47daed = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47daed)
  store %struct.Memory* %call_47daed, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x6cc5e4	 RIP: 47daef	 Bytes: 7
  %loadMem_47daef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47daef = call %struct.Memory* @routine_movl__ecx__0x6cc5e4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47daef)
  store %struct.Memory* %call_47daef, %struct.Memory** %MEMORY

  ; Code: .L_47daf6:	 RIP: 47daf6	 Bytes: 0
  br label %block_.L_47daf6
block_.L_47daf6:

  ; Code: jmpq .L_47dafb	 RIP: 47daf6	 Bytes: 5
  %loadMem_47daf6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47daf6 = call %struct.Memory* @routine_jmpq_.L_47dafb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47daf6, i64 5, i64 5)
  store %struct.Memory* %call_47daf6, %struct.Memory** %MEMORY

  br label %block_.L_47dafb

  ; Code: .L_47dafb:	 RIP: 47dafb	 Bytes: 0
block_.L_47dafb:

  ; Code: jmpq .L_47db00	 RIP: 47dafb	 Bytes: 5
  %loadMem_47dafb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47dafb = call %struct.Memory* @routine_jmpq_.L_47db00(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47dafb, i64 5, i64 5)
  store %struct.Memory* %call_47dafb, %struct.Memory** %MEMORY

  br label %block_.L_47db00

  ; Code: .L_47db00:	 RIP: 47db00	 Bytes: 0
block_.L_47db00:

  ; Code: cmpl $0x0, -0x4(%rbp)	 RIP: 47db00	 Bytes: 4
  %loadMem_47db00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47db00 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47db00)
  store %struct.Memory* %call_47db00, %struct.Memory** %MEMORY

  ; Code: jne .L_47db14	 RIP: 47db04	 Bytes: 6
  %loadMem_47db04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47db04 = call %struct.Memory* @routine_jne_.L_47db14(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47db04, i8* %BRANCH_TAKEN, i64 16, i64 6, i64 6)
  store %struct.Memory* %call_47db04, %struct.Memory** %MEMORY

  %loadBr_47db04 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47db04 = icmp eq i8 %loadBr_47db04, 1
  br i1 %cmpBr_47db04, label %block_.L_47db14, label %block_47db0a

block_47db0a:
  ; Code: cmpl $0x0, -0x8(%rbp)	 RIP: 47db0a	 Bytes: 4
  %loadMem_47db0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47db0a = call %struct.Memory* @routine_cmpl__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47db0a)
  store %struct.Memory* %call_47db0a, %struct.Memory** %MEMORY

  ; Code: je .L_47dbec	 RIP: 47db0e	 Bytes: 6
  %loadMem_47db0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47db0e = call %struct.Memory* @routine_je_.L_47dbec(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47db0e, i8* %BRANCH_TAKEN, i64 222, i64 6, i64 6)
  store %struct.Memory* %call_47db0e, %struct.Memory** %MEMORY

  %loadBr_47db0e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47db0e = icmp eq i8 %loadBr_47db0e, 1
  br i1 %cmpBr_47db0e, label %block_.L_47dbec, label %block_.L_47db14

  ; Code: .L_47db14:	 RIP: 47db14	 Bytes: 0
block_.L_47db14:

  ; Code: movq 0x6cb900, %rax	 RIP: 47db14	 Bytes: 8
  %loadMem_47db14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47db14 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47db14)
  store %struct.Memory* %call_47db14, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x11b4c(%rax)	 RIP: 47db1c	 Bytes: 10
  %loadMem_47db1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47db1c = call %struct.Memory* @routine_movl__0x0__0x11b4c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47db1c)
  store %struct.Memory* %call_47db1c, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 47db26	 Bytes: 8
  %loadMem_47db26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47db26 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47db26)
  store %struct.Memory* %call_47db26, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x11b50(%rax)	 RIP: 47db2e	 Bytes: 10
  %loadMem_47db2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47db2e = call %struct.Memory* @routine_movl__0x0__0x11b50__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47db2e)
  store %struct.Memory* %call_47db2e, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 47db38	 Bytes: 8
  %loadMem_47db38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47db38 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47db38)
  store %struct.Memory* %call_47db38, %struct.Memory** %MEMORY

  ; Code: movl 0x11bac(%rax), %ecx	 RIP: 47db40	 Bytes: 6
  %loadMem_47db40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47db40 = call %struct.Memory* @routine_movl_0x11bac__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47db40)
  store %struct.Memory* %call_47db40, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 47db46	 Bytes: 8
  %loadMem_47db46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47db46 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47db46)
  store %struct.Memory* %call_47db46, %struct.Memory** %MEMORY

  ; Code: cmpl 0x11ba0(%rax), %ecx	 RIP: 47db4e	 Bytes: 6
  %loadMem_47db4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47db4e = call %struct.Memory* @routine_cmpl_0x11ba0__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47db4e)
  store %struct.Memory* %call_47db4e, %struct.Memory** %MEMORY

  ; Code: jge .L_47dbe7	 RIP: 47db54	 Bytes: 6
  %loadMem_47db54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47db54 = call %struct.Memory* @routine_jge_.L_47dbe7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47db54, i8* %BRANCH_TAKEN, i64 147, i64 6, i64 6)
  store %struct.Memory* %call_47db54, %struct.Memory** %MEMORY

  %loadBr_47db54 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47db54 = icmp eq i8 %loadBr_47db54, 1
  br i1 %cmpBr_47db54, label %block_.L_47dbe7, label %block_47db5a

block_47db5a:
  ; Code: xorps %xmm0, %xmm0	 RIP: 47db5a	 Bytes: 3
  %loadMem_47db5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47db5a = call %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47db5a)
  store %struct.Memory* %call_47db5a, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x722b78	 RIP: 47db5d	 Bytes: 11
  %loadMem_47db5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47db5d = call %struct.Memory* @routine_movl__0x0__0x722b78(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47db5d)
  store %struct.Memory* %call_47db5d, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 47db68	 Bytes: 8
  %loadMem_47db68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47db68 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47db68)
  store %struct.Memory* %call_47db68, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x11b54(%rax)	 RIP: 47db70	 Bytes: 10
  %loadMem_47db70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47db70 = call %struct.Memory* @routine_movl__0x0__0x11b54__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47db70)
  store %struct.Memory* %call_47db70, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 47db7a	 Bytes: 8
  %loadMem_47db7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47db7a = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47db7a)
  store %struct.Memory* %call_47db7a, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x11b58(%rax)	 RIP: 47db82	 Bytes: 10
  %loadMem_47db82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47db82 = call %struct.Memory* @routine_movl__0x0__0x11b58__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47db82)
  store %struct.Memory* %call_47db82, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 47db8c	 Bytes: 8
  %loadMem_47db8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47db8c = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47db8c)
  store %struct.Memory* %call_47db8c, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, 0x11b60(%rax)	 RIP: 47db94	 Bytes: 8
  %loadMem_47db94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47db94 = call %struct.Memory* @routine_movsd__xmm0__0x11b60__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47db94)
  store %struct.Memory* %call_47db94, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 47db9c	 Bytes: 8
  %loadMem_47db9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47db9c = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47db9c)
  store %struct.Memory* %call_47db9c, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x11b98(%rax)	 RIP: 47dba4	 Bytes: 7
  %loadMem_47dba4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47dba4 = call %struct.Memory* @routine_cmpl__0x0__0x11b98__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47dba4)
  store %struct.Memory* %call_47dba4, %struct.Memory** %MEMORY

  ; Code: jne .L_47dbc4	 RIP: 47dbab	 Bytes: 6
  %loadMem_47dbab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47dbab = call %struct.Memory* @routine_jne_.L_47dbc4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47dbab, i8* %BRANCH_TAKEN, i64 25, i64 6, i64 6)
  store %struct.Memory* %call_47dbab, %struct.Memory** %MEMORY

  %loadBr_47dbab = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47dbab = icmp eq i8 %loadBr_47dbab, 1
  br i1 %cmpBr_47dbab, label %block_.L_47dbc4, label %block_47dbb1

block_47dbb1:
  ; Code: movl 0x6f80a0, %eax	 RIP: 47dbb1	 Bytes: 7
  %loadMem_47dbb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47dbb1 = call %struct.Memory* @routine_movl_0x6f80a0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47dbb1)
  store %struct.Memory* %call_47dbb1, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x6f9688	 RIP: 47dbb8	 Bytes: 7
  %loadMem_47dbb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47dbb8 = call %struct.Memory* @routine_movl__eax__0x6f9688(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47dbb8)
  store %struct.Memory* %call_47dbb8, %struct.Memory** %MEMORY

  ; Code: jmpq .L_47dbe2	 RIP: 47dbbf	 Bytes: 5
  %loadMem_47dbbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47dbbf = call %struct.Memory* @routine_jmpq_.L_47dbe2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47dbbf, i64 35, i64 5)
  store %struct.Memory* %call_47dbbf, %struct.Memory** %MEMORY

  br label %block_.L_47dbe2

  ; Code: .L_47dbc4:	 RIP: 47dbc4	 Bytes: 0
block_.L_47dbc4:

  ; Code: movl $0x2, %eax	 RIP: 47dbc4	 Bytes: 5
  %loadMem_47dbc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47dbc4 = call %struct.Memory* @routine_movl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47dbc4)
  store %struct.Memory* %call_47dbc4, %struct.Memory** %MEMORY

  ; Code: movl 0x6f80a0, %ecx	 RIP: 47dbc9	 Bytes: 7
  %loadMem_47dbc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47dbc9 = call %struct.Memory* @routine_movl_0x6f80a0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47dbc9)
  store %struct.Memory* %call_47dbc9, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x74(%rbp)	 RIP: 47dbd0	 Bytes: 3
  %loadMem_47dbd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47dbd0 = call %struct.Memory* @routine_movl__eax__MINUS0x74__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47dbd0)
  store %struct.Memory* %call_47dbd0, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %eax	 RIP: 47dbd3	 Bytes: 2
  %loadMem_47dbd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47dbd3 = call %struct.Memory* @routine_movl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47dbd3)
  store %struct.Memory* %call_47dbd3, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 47dbd5	 Bytes: 1
  %loadMem_47dbd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47dbd5 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47dbd5)
  store %struct.Memory* %call_47dbd5, %struct.Memory** %MEMORY

  ; Code: movl -0x74(%rbp), %ecx	 RIP: 47dbd6	 Bytes: 3
  %loadMem_47dbd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47dbd6 = call %struct.Memory* @routine_movl_MINUS0x74__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47dbd6)
  store %struct.Memory* %call_47dbd6, %struct.Memory** %MEMORY

  ; Code: idivl %ecx	 RIP: 47dbd9	 Bytes: 2
  %loadMem_47dbd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47dbd9 = call %struct.Memory* @routine_idivl__ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47dbd9)
  store %struct.Memory* %call_47dbd9, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x6f9688	 RIP: 47dbdb	 Bytes: 7
  %loadMem_47dbdb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47dbdb = call %struct.Memory* @routine_movl__eax__0x6f9688(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47dbdb)
  store %struct.Memory* %call_47dbdb, %struct.Memory** %MEMORY

  ; Code: .L_47dbe2:	 RIP: 47dbe2	 Bytes: 0
  br label %block_.L_47dbe2
block_.L_47dbe2:

  ; Code: jmpq .L_47dbe7	 RIP: 47dbe2	 Bytes: 5
  %loadMem_47dbe2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47dbe2 = call %struct.Memory* @routine_jmpq_.L_47dbe7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47dbe2, i64 5, i64 5)
  store %struct.Memory* %call_47dbe2, %struct.Memory** %MEMORY

  br label %block_.L_47dbe7

  ; Code: .L_47dbe7:	 RIP: 47dbe7	 Bytes: 0
block_.L_47dbe7:

  ; Code: jmpq .L_47dbec	 RIP: 47dbe7	 Bytes: 5
  %loadMem_47dbe7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47dbe7 = call %struct.Memory* @routine_jmpq_.L_47dbec(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47dbe7, i64 5, i64 5)
  store %struct.Memory* %call_47dbe7, %struct.Memory** %MEMORY

  br label %block_.L_47dbec

  ; Code: .L_47dbec:	 RIP: 47dbec	 Bytes: 0
block_.L_47dbec:

  ; Code: movq 0x6cb900, %rax	 RIP: 47dbec	 Bytes: 8
  %loadMem_47dbec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47dbec = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47dbec)
  store %struct.Memory* %call_47dbec, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x18(%rax)	 RIP: 47dbf4	 Bytes: 4
  %loadMem_47dbf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47dbf4 = call %struct.Memory* @routine_cmpl__0x0__0x18__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47dbf4)
  store %struct.Memory* %call_47dbf4, %struct.Memory** %MEMORY

  ; Code: jne .L_47dce4	 RIP: 47dbf8	 Bytes: 6
  %loadMem_47dbf8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47dbf8 = call %struct.Memory* @routine_jne_.L_47dce4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47dbf8, i8* %BRANCH_TAKEN, i64 236, i64 6, i64 6)
  store %struct.Memory* %call_47dbf8, %struct.Memory** %MEMORY

  %loadBr_47dbf8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47dbf8 = icmp eq i8 %loadBr_47dbf8, 1
  br i1 %cmpBr_47dbf8, label %block_.L_47dce4, label %block_47dbfe

block_47dbfe:
  ; Code: movq 0x6cb900, %rax	 RIP: 47dbfe	 Bytes: 8
  %loadMem_47dbfe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47dbfe = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47dbfe)
  store %struct.Memory* %call_47dbfe, %struct.Memory** %MEMORY

  ; Code: movl 0x11bac(%rax), %ecx	 RIP: 47dc06	 Bytes: 6
  %loadMem_47dc06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47dc06 = call %struct.Memory* @routine_movl_0x11bac__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47dc06)
  store %struct.Memory* %call_47dc06, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 47dc0c	 Bytes: 8
  %loadMem_47dc0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47dc0c = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47dc0c)
  store %struct.Memory* %call_47dc0c, %struct.Memory** %MEMORY

  ; Code: cmpl 0x11ba0(%rax), %ecx	 RIP: 47dc14	 Bytes: 6
  %loadMem_47dc14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47dc14 = call %struct.Memory* @routine_cmpl_0x11ba0__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47dc14)
  store %struct.Memory* %call_47dc14, %struct.Memory** %MEMORY

  ; Code: jge .L_47dce4	 RIP: 47dc1a	 Bytes: 6
  %loadMem_47dc1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47dc1a = call %struct.Memory* @routine_jge_.L_47dce4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47dc1a, i8* %BRANCH_TAKEN, i64 202, i64 6, i64 6)
  store %struct.Memory* %call_47dc1a, %struct.Memory** %MEMORY

  %loadBr_47dc1a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47dc1a = icmp eq i8 %loadBr_47dc1a, 1
  br i1 %cmpBr_47dc1a, label %block_.L_47dce4, label %block_47dc20

block_47dc20:
  ; Code: movq 0x6cb900, %rax	 RIP: 47dc20	 Bytes: 8
  %loadMem_47dc20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47dc20 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47dc20)
  store %struct.Memory* %call_47dc20, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, 0x11b98(%rax)	 RIP: 47dc28	 Bytes: 7
  %loadMem_47dc28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47dc28 = call %struct.Memory* @routine_cmpl__0x1__0x11b98__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47dc28)
  store %struct.Memory* %call_47dc28, %struct.Memory** %MEMORY

  ; Code: jne .L_47dce4	 RIP: 47dc2f	 Bytes: 6
  %loadMem_47dc2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47dc2f = call %struct.Memory* @routine_jne_.L_47dce4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47dc2f, i8* %BRANCH_TAKEN, i64 181, i64 6, i64 6)
  store %struct.Memory* %call_47dc2f, %struct.Memory** %MEMORY

  %loadBr_47dc2f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47dc2f = icmp eq i8 %loadBr_47dc2f, 1
  br i1 %cmpBr_47dc2f, label %block_.L_47dce4, label %block_47dc35

block_47dc35:
  ; Code: cmpl $0x0, -0x8(%rbp)	 RIP: 47dc35	 Bytes: 4
  %loadMem_47dc35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47dc35 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47dc35)
  store %struct.Memory* %call_47dc35, %struct.Memory** %MEMORY

  ; Code: je .L_47dc71	 RIP: 47dc39	 Bytes: 6
  %loadMem_47dc39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47dc39 = call %struct.Memory* @routine_je_.L_47dc71(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47dc39, i8* %BRANCH_TAKEN, i64 56, i64 6, i64 6)
  store %struct.Memory* %call_47dc39, %struct.Memory** %MEMORY

  %loadBr_47dc39 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_47dc39 = icmp eq i8 %loadBr_47dc39, 1
  br i1 %cmpBr_47dc39, label %block_.L_47dc71, label %block_47dc3f

block_47dc3f:
  ; Code: movsd 0x33cb1(%rip), %xmm0	 RIP: 47dc3f	 Bytes: 8
  %loadMem_47dc3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47dc3f = call %struct.Memory* @routine_movsd_0x33cb1__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47dc3f)
  store %struct.Memory* %call_47dc3f, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x6cc5e8	 RIP: 47dc47	 Bytes: 11
  %loadMem_47dc47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47dc47 = call %struct.Memory* @routine_movl__0x0__0x6cc5e8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47dc47)
  store %struct.Memory* %call_47dc47, %struct.Memory** %MEMORY

  ; Code: cvtsi2sdl 0x6cc5e4, %xmm1	 RIP: 47dc52	 Bytes: 9
  %loadMem_47dc52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47dc52 = call %struct.Memory* @routine_cvtsi2sdl_0x6cc5e4___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47dc52)
  store %struct.Memory* %call_47dc52, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm0, %xmm1	 RIP: 47dc5b	 Bytes: 4
  %loadMem_47dc5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47dc5b = call %struct.Memory* @routine_mulsd__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47dc5b)
  store %struct.Memory* %call_47dc5b, %struct.Memory** %MEMORY

  ; Code: cvttsd2si %xmm1, %rax	 RIP: 47dc5f	 Bytes: 5
  %loadMem_47dc5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47dc5f = call %struct.Memory* @routine_cvttsd2si__xmm1___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47dc5f)
  store %struct.Memory* %call_47dc5f, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x6cea28	 RIP: 47dc64	 Bytes: 8
  %loadMem_47dc64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47dc64 = call %struct.Memory* @routine_movq__rax__0x6cea28(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47dc64)
  store %struct.Memory* %call_47dc64, %struct.Memory** %MEMORY

  ; Code: jmpq .L_47dcdf	 RIP: 47dc6c	 Bytes: 5
  %loadMem_47dc6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47dc6c = call %struct.Memory* @routine_jmpq_.L_47dcdf(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47dc6c, i64 115, i64 5)
  store %struct.Memory* %call_47dc6c, %struct.Memory** %MEMORY

  br label %block_.L_47dcdf

  ; Code: .L_47dc71:	 RIP: 47dc71	 Bytes: 0
block_.L_47dc71:

  ; Code: movl $0x2, %eax	 RIP: 47dc71	 Bytes: 5
  %loadMem_47dc71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47dc71 = call %struct.Memory* @routine_movl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47dc71)
  store %struct.Memory* %call_47dc71, %struct.Memory** %MEMORY

  ; Code: xorps %xmm0, %xmm0	 RIP: 47dc76	 Bytes: 3
  %loadMem_47dc76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47dc76 = call %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47dc76)
  store %struct.Memory* %call_47dc76, %struct.Memory** %MEMORY

  ; Code: movl 0x6cc5e4, %ecx	 RIP: 47dc79	 Bytes: 7
  %loadMem_47dc79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47dc79 = call %struct.Memory* @routine_movl_0x6cc5e4___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47dc79)
  store %struct.Memory* %call_47dc79, %struct.Memory** %MEMORY

  ; Code: subl 0x6cc5e8, %ecx	 RIP: 47dc80	 Bytes: 7
  %loadMem_47dc80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47dc80 = call %struct.Memory* @routine_subl_0x6cc5e8___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47dc80)
  store %struct.Memory* %call_47dc80, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 47dc87	 Bytes: 3
  %loadMem_47dc87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47dc87 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47dc87)
  store %struct.Memory* %call_47dc87, %struct.Memory** %MEMORY

  ; Code: movq %rdx, 0x6cea28	 RIP: 47dc8a	 Bytes: 8
  %loadMem_47dc8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47dc8a = call %struct.Memory* @routine_movq__rdx__0x6cea28(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47dc8a)
  store %struct.Memory* %call_47dc8a, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rdx	 RIP: 47dc92	 Bytes: 8
  %loadMem_47dc92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47dc92 = call %struct.Memory* @routine_movq_0x6cb900___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47dc92)
  store %struct.Memory* %call_47dc92, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x11b54(%rdx)	 RIP: 47dc9a	 Bytes: 10
  %loadMem_47dc9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47dc9a = call %struct.Memory* @routine_movl__0x0__0x11b54__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47dc9a)
  store %struct.Memory* %call_47dc9a, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rdx	 RIP: 47dca4	 Bytes: 8
  %loadMem_47dca4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47dca4 = call %struct.Memory* @routine_movq_0x6cb900___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47dca4)
  store %struct.Memory* %call_47dca4, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x11b58(%rdx)	 RIP: 47dcac	 Bytes: 10
  %loadMem_47dcac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47dcac = call %struct.Memory* @routine_movl__0x0__0x11b58__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47dcac)
  store %struct.Memory* %call_47dcac, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rdx	 RIP: 47dcb6	 Bytes: 8
  %loadMem_47dcb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47dcb6 = call %struct.Memory* @routine_movq_0x6cb900___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47dcb6)
  store %struct.Memory* %call_47dcb6, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, 0x11b60(%rdx)	 RIP: 47dcbe	 Bytes: 8
  %loadMem_47dcbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47dcbe = call %struct.Memory* @routine_movsd__xmm0__0x11b60__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47dcbe)
  store %struct.Memory* %call_47dcbe, %struct.Memory** %MEMORY

  ; Code: movl 0x6f80a0, %ecx	 RIP: 47dcc6	 Bytes: 7
  %loadMem_47dcc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47dcc6 = call %struct.Memory* @routine_movl_0x6f80a0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47dcc6)
  store %struct.Memory* %call_47dcc6, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x78(%rbp)	 RIP: 47dccd	 Bytes: 3
  %loadMem_47dccd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47dccd = call %struct.Memory* @routine_movl__eax__MINUS0x78__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47dccd)
  store %struct.Memory* %call_47dccd, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %eax	 RIP: 47dcd0	 Bytes: 2
  %loadMem_47dcd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47dcd0 = call %struct.Memory* @routine_movl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47dcd0)
  store %struct.Memory* %call_47dcd0, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 47dcd2	 Bytes: 1
  %loadMem_47dcd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47dcd2 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47dcd2)
  store %struct.Memory* %call_47dcd2, %struct.Memory** %MEMORY

  ; Code: movl -0x78(%rbp), %ecx	 RIP: 47dcd3	 Bytes: 3
  %loadMem_47dcd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47dcd3 = call %struct.Memory* @routine_movl_MINUS0x78__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47dcd3)
  store %struct.Memory* %call_47dcd3, %struct.Memory** %MEMORY

  ; Code: idivl %ecx	 RIP: 47dcd6	 Bytes: 2
  %loadMem_47dcd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47dcd6 = call %struct.Memory* @routine_idivl__ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47dcd6)
  store %struct.Memory* %call_47dcd6, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x6f9688	 RIP: 47dcd8	 Bytes: 7
  %loadMem_47dcd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47dcd8 = call %struct.Memory* @routine_movl__eax__0x6f9688(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47dcd8)
  store %struct.Memory* %call_47dcd8, %struct.Memory** %MEMORY

  ; Code: .L_47dcdf:	 RIP: 47dcdf	 Bytes: 0
  br label %block_.L_47dcdf
block_.L_47dcdf:

  ; Code: jmpq .L_47dce4	 RIP: 47dcdf	 Bytes: 5
  %loadMem_47dcdf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47dcdf = call %struct.Memory* @routine_jmpq_.L_47dce4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47dcdf, i64 5, i64 5)
  store %struct.Memory* %call_47dcdf, %struct.Memory** %MEMORY

  br label %block_.L_47dce4

  ; Code: .L_47dce4:	 RIP: 47dce4	 Bytes: 0
block_.L_47dce4:

  ; Code: addq $0x80, %rsp	 RIP: 47dce4	 Bytes: 7
  %loadMem_47dce4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47dce4 = call %struct.Memory* @routine_addq__0x80___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47dce4)
  store %struct.Memory* %call_47dce4, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 47dceb	 Bytes: 1
  %loadMem_47dceb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47dceb = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47dceb)
  store %struct.Memory* %call_47dceb, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 47dcec	 Bytes: 1
  %loadMem_47dcec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_47dcec = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_47dcec)
  store %struct.Memory* %call_47dcec, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_47dcec
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

define %struct.Memory* @routine_subq__0x80___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 128)
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i64*
  %6 = load i64, i64* %5
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
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

define %struct.Memory* @routine_je_.L_47cd3d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl_0x11ba0__rax____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 72608
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 6
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
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

define %struct.Memory* @routine_idivl_0x11bac__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 72620
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 6
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__eax__0x6f80a0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x6f80a0_type* @G_0x6f80a0 to i64), i64 %10)
  ret %struct.Memory* %13
}



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0x0__0x11ba8__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 72616
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_cmpl__0x1__0xcb4__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 3252
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
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

define %struct.Memory* @routine_jne_.L_47cdc9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpl__0x3a__0x11b74__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 72564
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 58)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_47cd98(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movsd_0x34ba7__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0x34ba7__rip__type* @G_0x34ba7__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
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

define %struct.Memory* @routine_mulsd_0x6ccf88___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %8, i8* %9, i64 ptrtoint( %G_0x6ccf88_type* @G_0x6ccf88 to i64))
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i8* nocapture readonly) #7 {
  %5 = bitcast i8* %3 to double*
  %6 = load double, double* %5, align 1
  %7 = inttoptr i64 %2 to double*
  store double %6, double* %7
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movsd__xmm0__0x6ccf88(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM0 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x6ccf88_type* @G_0x6ccf88 to i64), i8* %8)
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64) #2 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2, i64* %4, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jmpq_.L_47cdc4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_cmpl__0x3b__0x11b74__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 72564
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 59)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_47cdbf(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movsd_0x6ccf88___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 ptrtoint( %G_0x6ccf88_type* @G_0x6ccf88 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movsd__xmm0__0x6f6f80(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM0 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x6f6f80_type* @G_0x6f6f80 to i64), i8* %8)
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_jmpq_.L_47cdc9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_cmpl__0x0__MINUS0x4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_47cddd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x0__MINUS0x8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_47db00(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x0__MINUS0xc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movq_0x24eb12__rip____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0x24eb12__rip__type* @G_0x24eb12__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_0x18__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L4TESTI2RnIjES2_EEP6MemoryS4_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64, i64) #0 {
  %5 = and i64 %3, %2
  %6 = trunc i64 %5 to i32
  %7 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 0, i8* %7, align 1
  %8 = and i32 %6, 255
  %9 = tail call i32 @llvm.ctpop.i32(i32 %8) #22
  %10 = trunc i32 %9 to i8
  %11 = and i8 %10, 1
  %12 = xor i8 %11, 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 %12, i8* %13, align 1
  %14 = icmp eq i32 %6, 0
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 %15, i8* %16, align 1
  %17 = lshr i32 %6, 31
  %18 = trunc i32 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 %18, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 0, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 0, i8* %21, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_testl__ecx___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = load i32, i32* %ECX
  %12 = zext i32 %11 to i64
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 2
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4TESTI2RnIjES2_EEP6MemoryS4_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 %12)
  ret %struct.Memory* %15
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


define %struct.Memory* @routine_je_.L_47ce15(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_47ce01(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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

define %struct.Memory* @routine_subl__0x1___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 1)
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


define %struct.Memory* @routine_je_.L_47d3a2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_47d544(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movsd_0x6f6f80___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 ptrtoint( %G_0x6f6f80_type* @G_0x6f6f80 to i64))
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory*, %struct.State* dereferenceable(3376), i8* nocapture readonly, i64) #0 {
  %5 = bitcast i8* %2 to double*
  %6 = load double, double* %5, align 1
  %7 = inttoptr i64 %3 to double*
  %8 = load double, double* %7
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

define %struct.Memory* @routine_ucomisd_0x6ccf88___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM0 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 ptrtoint( %G_0x6ccf88_type* @G_0x6ccf88 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_jne_.L_47ce38(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jp_.L_47ce38(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_47ce8f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movsd_0x34a48__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0x34a48__rip__type* @G_0x34a48__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movsd_0x6ccf88___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 ptrtoint( %G_0x6ccf88_type* @G_0x6ccf88 to i64))
  ret %struct.Memory* %11
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

define %struct.Memory* @routine_subsd_0x6f6f80___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5SUBSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %8, i8* %9, i64 ptrtoint( %G_0x6f6f80_type* @G_0x6f6f80 to i64))
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl_0x6cc5dc___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x6cc5dc_type* @G_0x6cc5dc to i64))
  ret %struct.Memory* %11
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

define %struct.Memory* @routine_addl_0x6cc5e0___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 ptrtoint( %G_0x6cc5e0_type* @G_0x6cc5e0 to i64))
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SDI2RnIjEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #0 {
  %5 = trunc i64 %3 to i32
  %6 = sitofp i32 %5 to double
  %7 = bitcast i8* %2 to double*
  store double %6, double* %7, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_cvtsi2sdl__eax___xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EAX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SDI2RnIjEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
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

define %struct.Memory* @routine_mulsd__xmm2___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = bitcast %union.vec128_t* %XMM2 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
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

define %struct.Memory* @routine_divsd_0x6d1fb0___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5DIVSDI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %8, i8* %9, i64 ptrtoint( %G_0x6d1fb0_type* @G_0x6d1fb0 to i64))
  ret %struct.Memory* %12
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L6MOVxPSI3VnWI8vec128_tE2VnIS2_EEEP6MemoryS7_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly) #0 {
  %5 = bitcast i8* %3 to <2 x i32>*
  %6 = load <2 x i32>, <2 x i32>* %5, align 1
  %7 = getelementptr inbounds i8, i8* %3, i64 8
  %8 = bitcast i8* %7 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = extractelement <2 x i32> %6, i32 0
  %11 = bitcast i8* %2 to i32*
  store i32 %10, i32* %11, align 1
  %12 = extractelement <2 x i32> %6, i32 1
  %13 = getelementptr inbounds i8, i8* %2, i64 4
  %14 = bitcast i8* %13 to i32*
  store i32 %12, i32* %14, align 1
  %15 = extractelement <2 x i32> %9, i32 0
  %16 = getelementptr inbounds i8, i8* %2, i64 8
  %17 = bitcast i8* %16 to i32*
  store i32 %15, i32* %17, align 1
  %18 = extractelement <2 x i32> %9, i32 1
  %19 = getelementptr inbounds i8, i8* %2, i64 12
  %20 = bitcast i8* %19 to i32*
  store i32 %18, i32* %20, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movaps__xmm1___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %11 = bitcast %union.vec128_t* %XMM1 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 3
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L6MOVxPSI3VnWI8vec128_tE2VnIS2_EEEP6MemoryS7_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11)
  ret %struct.Memory* %14
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

define %struct.Memory* @routine_callq_.floor_plt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_cvttsd2si__xmm0___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = bitcast %union.vec128_t* %XMM0 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L11CVTSD2SI_32I2VnI8vec128_tEXadL_ZNS_L18FTruncTowardZero64EdEEEEP6MemoryS5_R5State3RnWImET_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i8* %11)
  ret %struct.Memory* %14
}


define %struct.Memory* @routine_addl_0x6cc5d8___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 ptrtoint( %G_0x6cc5d8_type* @G_0x6cc5d8 to i64))
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl__eax__0x6cc5d8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x6cc5d8_type* @G_0x6cc5d8 to i64), i64 %10)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movl_0x11bac__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 72620
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
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

define %struct.Memory* @routine_cmpl_0x11ba0__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RAX
  %15 = add i64 %14, 72608
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jne_.L_47cf67(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpl__0x1__0x11b80__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 72576
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_47cf29(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movsd_0x6d45f0___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 ptrtoint( %G_0x6d45f0_type* @G_0x6d45f0 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movsd__xmm0__0x6d4680(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM0 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x6d4680_type* @G_0x6d4680 to i64), i8* %8)
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_subsd_0x722fe0___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5SUBSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %8, i8* %9, i64 ptrtoint( %G_0x722fe0_type* @G_0x722fe0 to i64))
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl_0x722fd8___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x722fd8_type* @G_0x722fd8 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_cvtsi2sdl__eax___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EAX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SDI2RnIjEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5DIVSDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i8* nocapture readonly) #0 {
  %6 = bitcast i8* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = getelementptr inbounds i8, i8* %3, i64 8
  %9 = bitcast i8* %8 to i64*
  %10 = load i64, i64* %9, align 1
  %11 = bitcast i8* %4 to double*
  %12 = load double, double* %11, align 1
  %13 = fdiv double %7, %12
  %14 = bitcast i8* %2 to double*
  store double %13, double* %14, align 1
  %15 = getelementptr inbounds i8, i8* %2, i64 8
  %16 = bitcast i8* %15 to i64*
  store i64 %10, i64* %16, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_divsd__xmm1___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = bitcast %union.vec128_t* %XMM1 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5DIVSDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_movsd__xmm0__0x6f9690(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM0 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x6f9690_type* @G_0x6f9690 to i64), i8* %8)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movsd_0x6f9690___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 ptrtoint( %G_0x6f9690_type* @G_0x6f9690 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movsd_0x6d4680___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 ptrtoint( %G_0x6d4680_type* @G_0x6d4680 to i64))
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5SUBSDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i8* nocapture readonly) #0 {
  %6 = bitcast i8* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = getelementptr inbounds i8, i8* %3, i64 8
  %9 = bitcast i8* %8 to i64*
  %10 = load i64, i64* %9, align 1
  %11 = bitcast i8* %4 to double*
  %12 = load double, double* %11, align 1
  %13 = fsub double %7, %12
  %14 = bitcast i8* %2 to double*
  store double %13, double* %14, align 1
  %15 = getelementptr inbounds i8, i8* %2, i64 8
  %16 = bitcast i8* %15 to i64*
  store i64 %10, i64* %16, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_subsd__xmm0___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5SUBSDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_movsd__xmm1__0x6d4680(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM1 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x6d4680_type* @G_0x6d4680 to i64), i8* %8)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_jmpq_.L_47cf62(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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

define %struct.Memory* @routine_jle_.L_47cf5d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_jmpq_.L_47d1f3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_cmpl__0x0__0x11b74__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 72564
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jle_.L_47d058(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpl__0x2__0xb40__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 2880
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 2)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_47cfa6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_je_.L_47d007(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpl__0x1__0x11b98__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 72600
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_47d007(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl_0x6f80a0___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 ptrtoint( %G_0x6f80a0_type* @G_0x6f80a0 to i64))
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

define %struct.Memory* @routine_jge_.L_47d002(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq_0x723630___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x723630_type* @G_0x723630 to i64))
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = sext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
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


define %struct.Memory* @routine_movsd___rax__rcx_8____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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


define %struct.Memory* @routine_movq_0x6cea38___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x6cea38_type* @G_0x6cea38 to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_jmpq_.L_47cfc2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_47d053(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jge_.L_47d04e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq_0x724bd8___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x724bd8_type* @G_0x724bd8 to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movq_0x6f9350___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x6f9350_type* @G_0x6f9350 to i64))
  ret %struct.Memory* %11
}












define %struct.Memory* @routine_jmpq_.L_47d00e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_jmpq_.L_47d058(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_cmpl__0x1__0x11b78__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 72568
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_47d123(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jne_.L_47d0e5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




























define %struct.Memory* @routine_jmpq_.L_47d11e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_jle_.L_47d119(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_jmpq_.L_47d1ee(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_jle_.L_47d1e9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpl__0x0__0x11b80__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 72576
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_47d1ab(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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









define internal %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SDI2MnIjEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory*, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = sitofp i32 %6 to double
  %8 = bitcast i8* %2 to double*
  store double %7, double* %8, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_cvtsi2sdl_0x722fd8___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SDI2MnIjEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 ptrtoint( %G_0x722fd8_type* @G_0x722fd8 to i64))
  ret %struct.Memory* %11
}














define %struct.Memory* @routine_jmpq_.L_47d1e4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_jle_.L_47d1df(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_jmpq_.L_47d1e9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_cmpl__0x1__0x11b74__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 72564
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_47d21a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movsd_0x70f6d8___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 ptrtoint( %G_0x70f6d8_type* @G_0x70f6d8 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movsd__xmm0__0x6ccaf0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM0 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x6ccaf0_type* @G_0x6ccaf0 to i64), i8* %8)
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_cmpl__0x8__0x11b74__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 72564
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 8)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_47d2a9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jle_.L_47d2a9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movl_0x11b74__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 72564
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_cvtsi2sdl__ecx___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %ECX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = load i32, i32* %ECX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SDI2RnIjEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_mulsd__xmm1___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = bitcast %union.vec128_t* %XMM1 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
}




define %struct.Memory* @routine_cvtsi2sdl_0x11b74__rax____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 72564
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SDI2MnIjEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movsd_0x6ccaf0___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 ptrtoint( %G_0x6ccaf0_type* @G_0x6ccaf0 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_cvtsi2sdl_0x11b74__rax____xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 72564
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SDI2MnIjEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_divsd__xmm2___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = bitcast %union.vec128_t* %XMM2 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5DIVSDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = bitcast %union.vec128_t* %XMM1 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
}




define %struct.Memory* @routine_jmpq_.L_47d2fa(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_jle_.L_47d2f5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movsd_0x345fa__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0x345fa__rip__type* @G_0x345fa__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movsd_0x34662__rip____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0x34662__rip__type* @G_0x34662__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movsd_0x70f6d8___xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 ptrtoint( %G_0x70f6d8_type* @G_0x70f6d8 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_divsd__xmm0___xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5DIVSDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_mulsd_0x6ccaf0___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %8, i8* %9, i64 ptrtoint( %G_0x6ccaf0_type* @G_0x6ccaf0 to i64))
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_divsd__xmm0___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5DIVSDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_addsd__xmm1___xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = bitcast %union.vec128_t* %XMM1 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_movsd__xmm2__0x6ccaf0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM2 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x6ccaf0_type* @G_0x6ccaf0 to i64), i8* %8)
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_cmpl__0x0__0x4d4__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 1236
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jle_.L_47d39d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movsd_0x6ccaf0___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 ptrtoint( %G_0x6ccaf0_type* @G_0x6ccaf0 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movl_0x4d4__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 1236
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
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








define %struct.Memory* @routine_movsd_0x6d1fb0___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 ptrtoint( %G_0x6d1fb0_type* @G_0x6d1fb0 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movsd_0x6ccaf0___xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 ptrtoint( %G_0x6ccaf0_type* @G_0x6ccaf0 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movsd_0x726838___xmm3(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 ptrtoint( %G_0x726838_type* @G_0x726838 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_cvtsi2sdl_0x4d4__rax____xmm4(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 4
  %YMM4 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM4 to i8*
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 1236
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SDI2MnIjEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_mulsd__xmm4___xmm3(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 4
  %XMM4 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %12 = bitcast %union.vec128_t* %XMM4 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_addsd__xmm3___xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 3
  %XMM3 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = bitcast %union.vec128_t* %XMM3 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
}










define %struct.Memory* @routine_subsd__xmm1___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = bitcast %union.vec128_t* %XMM1 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5SUBSDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
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

define %struct.Memory* @routine_addsd_0x6d4680___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %8, i8* %9, i64 ptrtoint( %G_0x6d4680_type* @G_0x6d4680 to i64))
  ret %struct.Memory* %12
}










define %struct.Memory* @routine_jne_.L_47d3c5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jp_.L_47d3c5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_47d41c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movsd_0x344bb__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0x344bb__rip__type* @G_0x344bb__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}
































define %struct.Memory* @routine_jne_.L_47d46f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpl__0x1__0x11b70__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 72560
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}








define %struct.Memory* @routine_movsd_0x710368___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 ptrtoint( %G_0x710368_type* @G_0x710368 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movsd__xmm0__0x726838(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM0 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x726838_type* @G_0x726838 to i64), i8* %8)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_jmpq_.L_47d53f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_jle_.L_47d53a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpl__0x8__0x11b70__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 72560
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 8)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_47d4fe(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movl_0x11b70__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 72560
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_cvtsi2sdl_0x11b70__rax____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 72560
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SDI2MnIjEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movsd_0x726838___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 ptrtoint( %G_0x726838_type* @G_0x726838 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_cvtsi2sdl_0x11b70__rax____xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 72560
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SDI2MnIjEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_jmpq_.L_47d535(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movsd_0x343ba__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0x343ba__rip__type* @G_0x343ba__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movsd_0x34422__rip____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0x34422__rip__type* @G_0x34422__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movsd_0x710368___xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 ptrtoint( %G_0x710368_type* @G_0x710368 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_mulsd_0x726838___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %8, i8* %9, i64 ptrtoint( %G_0x726838_type* @G_0x726838 to i64))
  ret %struct.Memory* %12
}






define %struct.Memory* @routine_movsd__xmm2__0x726838(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = bitcast %union.vec128_t* %XMM2 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x726838_type* @G_0x726838 to i64), i8* %8)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_jmpq_.L_47d53a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_cmpl__0x0__0x18__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_47dafb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_jne_.L_47d6e9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jle_.L_47d6e4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movsd_0x342ef__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0x342ef__rip__type* @G_0x342ef__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movsd_0x70f6d8___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 ptrtoint( %G_0x70f6d8_type* @G_0x70f6d8 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_cvtsi2sdl_0x6cc5d8___xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SDI2MnIjEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 ptrtoint( %G_0x6cc5d8_type* @G_0x6cc5d8 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_cvtsi2sdl_0x6cc5dc___xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SDI2MnIjEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 ptrtoint( %G_0x6cc5dc_type* @G_0x6cc5dc to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_mulsd_0x70f6d8___xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %8, i8* %9, i64 ptrtoint( %G_0x70f6d8_type* @G_0x70f6d8 to i64))
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_cvtsi2sdl_0x6cc5e0___xmm3(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SDI2MnIjEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 ptrtoint( %G_0x6cc5e0_type* @G_0x6cc5e0 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_mulsd_0x710368___xmm3(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %8, i8* %9, i64 ptrtoint( %G_0x710368_type* @G_0x710368 to i64))
  ret %struct.Memory* %12
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



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = inttoptr i64 %2 to i64*
  store i64 %3, i64* %5
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__rcx__MINUS0x28__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L11CVTSD2SI_64I2VnI8vec128_tEXadL_ZNS_L18FTruncTowardZero64EdEEEEP6MemoryS5_R5State3RnWImET_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i8* nocapture readonly) #0 {
  %5 = bitcast i8* %3 to double*
  %6 = load double, double* %5, align 1
  %7 = tail call double @llvm.trunc.f64(double %6) #22
  %8 = tail call double @llvm.fabs.f64(double %7) #22
  %9 = fcmp ogt double %8, 0x43E0000000000000
  %10 = fptosi double %7 to i64
  %11 = select i1 %9, i64 -9223372036854775808, i64 %10
  store i64 %11, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_cvttsd2si__xmm0___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RCX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = bitcast %union.vec128_t* %XMM0 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 5
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L11CVTSD2SI_64I2VnI8vec128_tEXadL_ZNS_L18FTruncTowardZero64EdEEEEP6MemoryS5_R5State3RnWImET_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i8* %11)
  ret %struct.Memory* %14
}


define %struct.Memory* @routine_movq__rcx__0x6cea28(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 8
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x6cea28_type* @G_0x6cea28 to i64), i64 %9)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_divsd_0x6d1fb0___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5DIVSDI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %8, i8* %9, i64 ptrtoint( %G_0x6d1fb0_type* @G_0x6d1fb0 to i64))
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movsd_0x725570___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 ptrtoint( %G_0x725570_type* @G_0x725570 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movsd_0x6d45f0___xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 ptrtoint( %G_0x6d45f0_type* @G_0x6d45f0 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_subsd_0x6d4680___xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5SUBSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %8, i8* %9, i64 ptrtoint( %G_0x6d4680_type* @G_0x6d4680 to i64))
  ret %struct.Memory* %12
}






define %struct.Memory* @routine_movsd_MINUS0x20__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 32
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_movq__rcx__0x6d0270(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 8
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x6d0270_type* @G_0x6d0270 to i64), i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory*, %struct.State* nocapture dereferenceable(3376), i64, i64) #0 {
  %5 = inttoptr i64 %3 to i64*
  %6 = load i64, i64* %5
  %7 = sub i64 %2, %6
  %8 = icmp ugt i64 %6, %2
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
  %18 = xor i64 %6, %2
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
  %30 = lshr i64 %2, 63
  %31 = lshr i64 %6, 63
  %32 = xor i64 %31, %30
  %33 = xor i64 %27, %30
  %34 = add   i64 %33, %32
  %35 = icmp eq i64 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_cmpq_0x6d0270___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 8
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %9, i64 ptrtoint( %G_0x6d0270_type* @G_0x6d0270 to i64))
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_jge_.L_47d670(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq_0x6d0270___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x6d0270_type* @G_0x6d0270 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__rax__MINUS0x30__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_jmpq_.L_47d67d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_movq__rcx__MINUS0x30__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movsd_0x341ff__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0x341ff__rip__type* @G_0x341ff__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movsd_0x341cf__rip____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0x341cf__rip__type* @G_0x341cf__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movq__rax__0x6d0270(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x6d0270_type* @G_0x6d0270 to i64), i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movsd_0x6cea40___xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 ptrtoint( %G_0x6cea40_type* @G_0x6cea40 to i64))
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SDI2MnImEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory*, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i64*
  %6 = load i64, i64* %5
  %7 = sitofp i64 %6 to double
  %8 = bitcast i8* %2 to double*
  store double %7, double* %8, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_cvtsi2sdq_0x6cea28___xmm3(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SDI2MnImEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 ptrtoint( %G_0x6cea28_type* @G_0x6cea28 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_mulsd__xmm3___xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 3
  %XMM3 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = bitcast %union.vec128_t* %XMM3 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_subsd_0x6cea40___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %9 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5SUBSDI3VnWI8vec128_tE2VnIS2_E3MVnI7vec64_tEEEP6MemorySA_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %8, i8* %9, i64 ptrtoint( %G_0x6cea40_type* @G_0x6cea40 to i64))
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_cvtsi2sdq_0x6d0270___xmm3(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SDI2MnImEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 ptrtoint( %G_0x6d0270_type* @G_0x6d0270 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_mulsd__xmm3___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 3
  %XMM3 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = bitcast %union.vec128_t* %XMM3 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
}




define %struct.Memory* @routine_addsd__xmm0___xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_movaps__xmm2___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = bitcast %union.vec128_t* %XMM2 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 3
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L6MOVxPSI3VnWI8vec128_tE2VnIS2_EEEP6MemoryS7_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11)
  ret %struct.Memory* %14
}




define %struct.Memory* @routine_cvttsd2si__xmm0___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = bitcast %union.vec128_t* %XMM0 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 5
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L11CVTSD2SI_64I2VnI8vec128_tEXadL_ZNS_L18FTruncTowardZero64EdEEEEP6MemoryS5_R5State3RnWImET_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i8* %11)
  ret %struct.Memory* %14
}


define %struct.Memory* @routine_movq__rax__0x6cea28(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x6cea28_type* @G_0x6cea28 to i64), i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_jmpq_.L_47d9eb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_jne_.L_47d875(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jle_.L_47d875(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movsd_0x34169__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0x34169__rip__type* @G_0x34169__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}






















define %struct.Memory* @routine_movsd__xmm0__MINUS0x38__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 56
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movq__rcx__MINUS0x40__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}





define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = shl i64 %3, 32
  %6 = ashr exact i64 %5, 32
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movslq__eax___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


















define %struct.Memory* @routine_movsd_MINUS0x38__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 56
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
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




define %struct.Memory* @routine_jge_.L_47d7fa(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movq__rax__MINUS0x48__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_jmpq_.L_47d807(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_movq__rcx__MINUS0x48__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movsd_0x34075__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0x34075__rip__type* @G_0x34075__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movsd_0x34045__rip____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0x34045__rip__type* @G_0x34045__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}
























define %struct.Memory* @routine_cvttsd2si__xmm0___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RCX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = bitcast %union.vec128_t* %XMM0 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L11CVTSD2SI_32I2VnI8vec128_tEXadL_ZNS_L18FTruncTowardZero64EdEEEEP6MemoryS5_R5State3RnWImET_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i8* %11)
  ret %struct.Memory* %14
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




define %struct.Memory* @routine_jmpq_.L_47d9e6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_jle_.L_47d9e1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movsd_0x33ff2__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0x33ff2__rip__type* @G_0x33ff2__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}






















define %struct.Memory* @routine_movsd__xmm0__MINUS0x50__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 80
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movq__rcx__MINUS0x58__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}






















define %struct.Memory* @routine_movsd_MINUS0x50__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 80
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_movq_MINUS0x58__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_jge_.L_47d96d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movq__rax__MINUS0x60__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_jmpq_.L_47d97a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_movq__rcx__MINUS0x60__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq_MINUS0x60__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movsd_0x33f02__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0x33f02__rip__type* @G_0x33f02__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movsd_0x33ed2__rip____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0x33ed2__rip__type* @G_0x33ed2__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}
































define %struct.Memory* @routine_movsd_0x33e6d__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0x33e6d__rip__type* @G_0x33e6d__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
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

define %struct.Memory* @routine_xorps__xmm1___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = bitcast %union.vec128_t* %XMM1 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4PXORI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
}




define %struct.Memory* @routine_cvtsi2sdl_0x4d4__rax____xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 1236
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SDI2MnIjEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_cvtsi2sdq_0x6cea28___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SDI2MnImEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 ptrtoint( %G_0x6cea28_type* @G_0x6cea28 to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_movq_0x6cea28___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x6cea28_type* @G_0x6cea28 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_cmpq_0x710a48___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %9, i64 ptrtoint( %G_0x710a48_type* @G_0x710a48 to i64))
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_jge_.L_47da50(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq_0x710a48___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x710a48_type* @G_0x710a48 to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_jmpq_.L_47da5c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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






define %struct.Memory* @routine_cmpq_0x6cd478___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %9, i64 ptrtoint( %G_0x6cd478_type* @G_0x6cd478 to i64))
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_jge_.L_47da8f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_47da9b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movq_0x6cd478___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x6cd478_type* @G_0x6cd478 to i64))
  ret %struct.Memory* %11
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






define %struct.Memory* @routine_jne_.L_47dae5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_je_.L_47daf6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_je_.L_47dae5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_movl__ecx__0x6cc5e4(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x6cc5e4_type* @G_0x6cc5e4 to i64), i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jmpq_.L_47dafb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_47db00(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_jne_.L_47db14(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_je_.L_47dbec(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl__0x0__0x11b4c__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 72524
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movl__0x0__0x11b50__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 72528
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}










define %struct.Memory* @routine_jge_.L_47dbe7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x0__0x722b78(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x722b78_type* @G_0x722b78 to i64), i64 0)
  ret %struct.Memory* %8
}




define %struct.Memory* @routine_movl__0x0__0x11b54__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 72532
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movl__0x0__0x11b58__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 72536
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movsd__xmm0__0x11b60__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 72544
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_cmpl__0x0__0x11b98__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 72600
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_47dbc4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_0x6f80a0___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x6f80a0_type* @G_0x6f80a0 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__eax__0x6f9688(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x6f9688_type* @G_0x6f9688 to i64), i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jmpq_.L_47dbe2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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


define %struct.Memory* @routine_movl_0x6f80a0___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G_0x6f80a0_type* @G_0x6f80a0 to i64))
  ret %struct.Memory* %11
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




define %struct.Memory* @routine_movl_MINUS0x74__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 116
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
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




define %struct.Memory* @routine_jmpq_.L_47dbe7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_47dbec(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_jne_.L_47dce4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_jge_.L_47dce4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_je_.L_47dc71(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movsd_0x33cb1__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0x33cb1__rip__type* @G_0x33cb1__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x0__0x6cc5e8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x6cc5e8_type* @G_0x6cc5e8 to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_cvtsi2sdl_0x6cc5e4___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SDI2MnIjEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 ptrtoint( %G_0x6cc5e4_type* @G_0x6cc5e4 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_mulsd__xmm0___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_cvttsd2si__xmm1___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = bitcast %union.vec128_t* %XMM1 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 5
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L11CVTSD2SI_64I2VnI8vec128_tEXadL_ZNS_L18FTruncTowardZero64EdEEEEP6MemoryS5_R5State3RnWImET_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i8* %11)
  ret %struct.Memory* %14
}




define %struct.Memory* @routine_jmpq_.L_47dcdf(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_movl_0x6cc5e4___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G_0x6cc5e4_type* @G_0x6cc5e4 to i64))
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

define %struct.Memory* @routine_subl_0x6cc5e8___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 ptrtoint( %G_0x6cc5e8_type* @G_0x6cc5e8 to i64))
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


define %struct.Memory* @routine_movq__rdx__0x6cea28(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 8
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x6cea28_type* @G_0x6cea28 to i64), i64 %9)
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


define %struct.Memory* @routine_movl__0x0__0x11b54__rdx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 72532
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movl__0x0__0x11b58__rdx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 72536
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movsd__xmm0__0x11b60__rdx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RDX
  %12 = add i64 %11, 72544
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
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






define %struct.Memory* @routine_jmpq_.L_47dce4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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

define %struct.Memory* @routine_addq__0x80___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 128)
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

