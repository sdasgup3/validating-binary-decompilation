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

declare %struct.Memory* @sub_4010a0.strncat_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4011a0.fopen_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_401050.snprintf_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_401020.fclose_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Data Access Globals
%G_0x294aa2__rip__type = type <{ [8 x i8] }>
@G_0x294aa2__rip_= global %G_0x294aa2__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x294b43__rip__type = type <{ [8 x i8] }>
@G_0x294b43__rip_= global %G_0x294b43__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x6cb8f8_type = type <{ [8 x i8] }>
@G_0x6cb8f8= global %G_0x6cb8f8_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x6cb900_type = type <{ [8 x i8] }>
@G_0x6cb900= global %G_0x6cb900_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x6cb908_type = type <{ [8 x i8] }>
@G_0x6cb908= global %G_0x6cb908_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x6cb910_type = type <{ [8 x i8] }>
@G_0x6cb910= global %G_0x6cb910_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x6cbe00_type = type <{ [8 x i8] }>
@G_0x6cbe00= global %G_0x6cbe00_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x6cee50_type = type <{ [4 x i8] }>
@G_0x6cee50= global %G_0x6cee50_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x6f8edc_type = type <{ [4 x i8] }>
@G_0x6f8edc= global %G_0x6f8edc_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x6f968c_type = type <{ [4 x i8] }>
@G_0x6f968c= global %G_0x6f968c_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x70d198_type = type <{ [8 x i8] }>
@G_0x70d198= global %G_0x70d198_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x722ca8_type = type <{ [4 x i8] }>
@G_0x722ca8= global %G_0x722ca8_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x725260_type = type <{ [4 x i8] }>
@G_0x725260= global %G_0x725260_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x7b214__rip__type = type <{ [8 x i8] }>
@G_0x7b214__rip_= global %G_0x7b214__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x7b245__rip__type = type <{ [8 x i8] }>
@G_0x7b245__rip_= global %G_0x7b245__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x864f9__rip__type = type <{ [4 x i8] }>
@G_0x864f9__rip_= global %G_0x864f9__rip__type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x86629__rip__type = type <{ [4 x i8] }>
@G_0x86629__rip_= global %G_0x86629__rip__type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x86790__rip__type = type <{ [4 x i8] }>
@G_0x86790__rip_= global %G_0x86790__rip__type <{ [4 x i8] c"\00\00\00\00" }>
%G__0x4bdcdc_type = type <{ [4 x i8] }>
@G__0x4bdcdc= global %G__0x4bdcdc_type <{ [4 x i8] c"\00\00\00\00" }>
%G__0x4be20a_type = type <{ [8 x i8] }>
@G__0x4be20a= global %G__0x4be20a_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4c04eb_type = type <{ [8 x i8] }>
@G__0x4c04eb= global %G__0x4c04eb_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4c04ff_type = type <{ [8 x i8] }>
@G__0x4c04ff= global %G__0x4c04ff_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4c054d_type = type <{ [8 x i8] }>
@G__0x4c054d= global %G__0x4c054d_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4c0609_type = type <{ [8 x i8] }>
@G__0x4c0609= global %G__0x4c0609_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4c0635_type = type <{ [8 x i8] }>
@G__0x4c0635= global %G__0x4c0635_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4c0669_type = type <{ [8 x i8] }>
@G__0x4c0669= global %G__0x4c0669_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4c0694_type = type <{ [8 x i8] }>
@G__0x4c0694= global %G__0x4c0694_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4c06c3_type = type <{ [8 x i8] }>
@G__0x4c06c3= global %G__0x4c06c3_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4c06ef_type = type <{ [8 x i8] }>
@G__0x4c06ef= global %G__0x4c06ef_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4c0718_type = type <{ [8 x i8] }>
@G__0x4c0718= global %G__0x4c0718_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4c0742_type = type <{ [8 x i8] }>
@G__0x4c0742= global %G__0x4c0742_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4c076b_type = type <{ [8 x i8] }>
@G__0x4c076b= global %G__0x4c076b_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4c0794_type = type <{ [8 x i8] }>
@G__0x4c0794= global %G__0x4c0794_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4c07bd_type = type <{ [8 x i8] }>
@G__0x4c07bd= global %G__0x4c07bd_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4c07e6_type = type <{ [8 x i8] }>
@G__0x4c07e6= global %G__0x4c07e6_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4c080f_type = type <{ [8 x i8] }>
@G__0x4c080f= global %G__0x4c080f_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4c083f_type = type <{ [8 x i8] }>
@G__0x4c083f= global %G__0x4c083f_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4c086f_type = type <{ [8 x i8] }>
@G__0x4c086f= global %G__0x4c086f_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4c0894_type = type <{ [8 x i8] }>
@G__0x4c0894= global %G__0x4c0894_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4c08b6_type = type <{ [8 x i8] }>
@G__0x4c08b6= global %G__0x4c08b6_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4c08ba_type = type <{ [8 x i8] }>
@G__0x4c08ba= global %G__0x4c08ba_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4c08bd_type = type <{ [8 x i8] }>
@G__0x4c08bd= global %G__0x4c08bd_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4c08c0_type = type <{ [8 x i8] }>
@G__0x4c08c0= global %G__0x4c08c0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4c08de_type = type <{ [8 x i8] }>
@G__0x4c08de= global %G__0x4c08de_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4c08fb_type = type <{ [8 x i8] }>
@G__0x4c08fb= global %G__0x4c08fb_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4c0914_type = type <{ [8 x i8] }>
@G__0x4c0914= global %G__0x4c0914_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4c0940_type = type <{ [8 x i8] }>
@G__0x4c0940= global %G__0x4c0940_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4c096c_type = type <{ [8 x i8] }>
@G__0x4c096c= global %G__0x4c096c_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4c0998_type = type <{ [8 x i8] }>
@G__0x4c0998= global %G__0x4c0998_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4c09c6_type = type <{ [8 x i8] }>
@G__0x4c09c6= global %G__0x4c09c6_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4c09f1_type = type <{ [8 x i8] }>
@G__0x4c09f1= global %G__0x4c09f1_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4c0a2e_type = type <{ [8 x i8] }>
@G__0x4c0a2e= global %G__0x4c0a2e_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4c0a7e_type = type <{ [8 x i8] }>
@G__0x4c0a7e= global %G__0x4c0a7e_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4c0aa9_type = type <{ [8 x i8] }>
@G__0x4c0aa9= global %G__0x4c0aa9_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4c0ad8_type = type <{ [8 x i8] }>
@G__0x4c0ad8= global %G__0x4c0ad8_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4c0b0b_type = type <{ [8 x i8] }>
@G__0x4c0b0b= global %G__0x4c0b0b_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4c0b3f_type = type <{ [8 x i8] }>
@G__0x4c0b3f= global %G__0x4c0b3f_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4c0b73_type = type <{ [8 x i8] }>
@G__0x4c0b73= global %G__0x4c0b73_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4c0bb7_type = type <{ [8 x i8] }>
@G__0x4c0bb7= global %G__0x4c0bb7_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4c0bf5_type = type <{ [8 x i8] }>
@G__0x4c0bf5= global %G__0x4c0bf5_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4c0c29_type = type <{ [8 x i8] }>
@G__0x4c0c29= global %G__0x4c0c29_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4c0c54_type = type <{ [8 x i8] }>
@G__0x4c0c54= global %G__0x4c0c54_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4c0c83_type = type <{ [8 x i8] }>
@G__0x4c0c83= global %G__0x4c0c83_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4c0cd4_type = type <{ [8 x i8] }>
@G__0x4c0cd4= global %G__0x4c0cd4_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4c0d00_type = type <{ [8 x i8] }>
@G__0x4c0d00= global %G__0x4c0d00_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4c0d2c_type = type <{ [8 x i8] }>
@G__0x4c0d2c= global %G__0x4c0d2c_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4c0d58_type = type <{ [8 x i8] }>
@G__0x4c0d58= global %G__0x4c0d58_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4c0d9e_type = type <{ [8 x i8] }>
@G__0x4c0d9e= global %G__0x4c0d9e_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4c0dca_type = type <{ [8 x i8] }>
@G__0x4c0dca= global %G__0x4c0dca_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4c0e0b_type = type <{ [8 x i8] }>
@G__0x4c0e0b= global %G__0x4c0e0b_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4c0e35_type = type <{ [8 x i8] }>
@G__0x4c0e35= global %G__0x4c0e35_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4c0e5f_type = type <{ [8 x i8] }>
@G__0x4c0e5f= global %G__0x4c0e5f_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4c0e7a_type = type <{ [8 x i8] }>
@G__0x4c0e7a= global %G__0x4c0e7a_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4c0e84_type = type <{ [8 x i8] }>
@G__0x4c0e84= global %G__0x4c0e84_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4c0e88_type = type <{ [8 x i8] }>
@G__0x4c0e88= global %G__0x4c0e88_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4c0e97_type = type <{ [8 x i8] }>
@G__0x4c0e97= global %G__0x4c0e97_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4c0eaa_type = type <{ [8 x i8] }>
@G__0x4c0eaa= global %G__0x4c0eaa_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x720c60_type = type <{ [8 x i8] }>
@G__0x720c60= global %G__0x720c60_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>


define %struct.Memory* @report(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .report:	 RIP: 436060	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 436060	 Bytes: 1
  %loadMem_436060 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436060 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436060)
  store %struct.Memory* %call_436060, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 436061	 Bytes: 3
  %loadMem_436061 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436061 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436061)
  store %struct.Memory* %call_436061, %struct.Memory** %MEMORY

  ; Code: subq $0x6c0, %rsp	 RIP: 436064	 Bytes: 7
  %loadMem_436064 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436064 = call %struct.Memory* @routine_subq__0x6c0___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436064)
  store %struct.Memory* %call_436064, %struct.Memory** %MEMORY

  ; Code: movl 0x6f8edc, %eax	 RIP: 43606b	 Bytes: 7
  %loadMem_43606b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43606b = call %struct.Memory* @routine_movl_0x6f8edc___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43606b)
  store %struct.Memory* %call_43606b, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x20(%rbp)	 RIP: 436072	 Bytes: 3
  %loadMem_436072 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436072 = call %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436072)
  store %struct.Memory* %call_436072, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, 0x6cee50	 RIP: 436075	 Bytes: 8
  %loadMem_436075 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436075 = call %struct.Memory* @routine_cmpl__0x1__0x6cee50(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436075)
  store %struct.Memory* %call_436075, %struct.Memory** %MEMORY

  ; Code: jle .L_436095	 RIP: 43607d	 Bytes: 6
  %loadMem_43607d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43607d = call %struct.Memory* @routine_jle_.L_436095(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43607d, i8* %BRANCH_TAKEN, i64 24, i64 6, i64 6)
  store %struct.Memory* %call_43607d, %struct.Memory** %MEMORY

  %loadBr_43607d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43607d = icmp eq i8 %loadBr_43607d, 1
  br i1 %cmpBr_43607d, label %block_.L_436095, label %block_436083

block_436083:
  ; Code: movl 0x6cee50, %eax	 RIP: 436083	 Bytes: 7
  %loadMem_436083 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436083 = call %struct.Memory* @routine_movl_0x6cee50___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436083)
  store %struct.Memory* %call_436083, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4bc(%rbp)	 RIP: 43608a	 Bytes: 6
  %loadMem_43608a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43608a = call %struct.Memory* @routine_movl__eax__MINUS0x4bc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43608a)
  store %struct.Memory* %call_43608a, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4360a5	 RIP: 436090	 Bytes: 5
  %loadMem_436090 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436090 = call %struct.Memory* @routine_jmpq_.L_4360a5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436090, i64 21, i64 5)
  store %struct.Memory* %call_436090, %struct.Memory** %MEMORY

  br label %block_.L_4360a5

  ; Code: .L_436095:	 RIP: 436095	 Bytes: 0
block_.L_436095:

  ; Code: movl $0x1, %eax	 RIP: 436095	 Bytes: 5
  %loadMem_436095 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436095 = call %struct.Memory* @routine_movl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436095)
  store %struct.Memory* %call_436095, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4bc(%rbp)	 RIP: 43609a	 Bytes: 6
  %loadMem_43609a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43609a = call %struct.Memory* @routine_movl__eax__MINUS0x4bc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43609a)
  store %struct.Memory* %call_43609a, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4360a5	 RIP: 4360a0	 Bytes: 5
  %loadMem_4360a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4360a0 = call %struct.Memory* @routine_jmpq_.L_4360a5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4360a0, i64 5, i64 5)
  store %struct.Memory* %call_4360a0, %struct.Memory** %MEMORY

  br label %block_.L_4360a5

  ; Code: .L_4360a5:	 RIP: 4360a5	 Bytes: 0
block_.L_4360a5:

  ; Code: movl -0x4bc(%rbp), %eax	 RIP: 4360a5	 Bytes: 6
  %loadMem_4360a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4360a5 = call %struct.Memory* @routine_movl_MINUS0x4bc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4360a5)
  store %struct.Memory* %call_4360a5, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x30(%rbp)	 RIP: 4360ab	 Bytes: 3
  %loadMem_4360ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4360ab = call %struct.Memory* @routine_movl__eax__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4360ab)
  store %struct.Memory* %call_4360ab, %struct.Memory** %MEMORY

  ; Code: movl 0x722ca8, %eax	 RIP: 4360ae	 Bytes: 7
  %loadMem_4360ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4360ae = call %struct.Memory* @routine_movl_0x722ca8___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4360ae)
  store %struct.Memory* %call_4360ae, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x28(%rbp)	 RIP: 4360b5	 Bytes: 3
  %loadMem_4360b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4360b5 = call %struct.Memory* @routine_movl__eax__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4360b5)
  store %struct.Memory* %call_4360b5, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x38(%rbp)	 RIP: 4360b8	 Bytes: 7
  %loadMem_4360b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4360b8 = call %struct.Memory* @routine_movl__0x0__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4360b8)
  store %struct.Memory* %call_4360b8, %struct.Memory** %MEMORY

  ; Code: .L_4360bf:	 RIP: 4360bf	 Bytes: 0
  br label %block_.L_4360bf
block_.L_4360bf:

  ; Code: cmpl $0x5, -0x38(%rbp)	 RIP: 4360bf	 Bytes: 4
  %loadMem_4360bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4360bf = call %struct.Memory* @routine_cmpl__0x5__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4360bf)
  store %struct.Memory* %call_4360bf, %struct.Memory** %MEMORY

  ; Code: jge .L_4360e3	 RIP: 4360c3	 Bytes: 6
  %loadMem_4360c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4360c3 = call %struct.Memory* @routine_jge_.L_4360e3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4360c3, i8* %BRANCH_TAKEN, i64 32, i64 6, i64 6)
  store %struct.Memory* %call_4360c3, %struct.Memory** %MEMORY

  %loadBr_4360c3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4360c3 = icmp eq i8 %loadBr_4360c3, 1
  br i1 %cmpBr_4360c3, label %block_.L_4360e3, label %block_4360c9

block_4360c9:
  ; Code: movslq -0x38(%rbp), %rax	 RIP: 4360c9	 Bytes: 4
  %loadMem_4360c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4360c9 = call %struct.Memory* @routine_movslq_MINUS0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4360c9)
  store %struct.Memory* %call_4360c9, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x2c(%rbp,%rax,8)	 RIP: 4360cd	 Bytes: 8
  %loadMem_4360cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4360cd = call %struct.Memory* @routine_movl__0x0__MINUS0x2c__rbp__rax_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4360cd)
  store %struct.Memory* %call_4360cd, %struct.Memory** %MEMORY

  ; Code: movl -0x38(%rbp), %eax	 RIP: 4360d5	 Bytes: 3
  %loadMem_4360d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4360d5 = call %struct.Memory* @routine_movl_MINUS0x38__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4360d5)
  store %struct.Memory* %call_4360d5, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4360d8	 Bytes: 3
  %loadMem_4360d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4360d8 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4360d8)
  store %struct.Memory* %call_4360d8, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x38(%rbp)	 RIP: 4360db	 Bytes: 3
  %loadMem_4360db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4360db = call %struct.Memory* @routine_movl__eax__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4360db)
  store %struct.Memory* %call_4360db, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4360bf	 RIP: 4360de	 Bytes: 5
  %loadMem_4360de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4360de = call %struct.Memory* @routine_jmpq_.L_4360bf(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4360de, i64 -31, i64 5)
  store %struct.Memory* %call_4360de, %struct.Memory** %MEMORY

  br label %block_.L_4360bf

  ; Code: .L_4360e3:	 RIP: 4360e3	 Bytes: 0
block_.L_4360e3:

  ; Code: movl $0x0, -0x38(%rbp)	 RIP: 4360e3	 Bytes: 7
  %loadMem_4360e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4360e3 = call %struct.Memory* @routine_movl__0x0__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4360e3)
  store %struct.Memory* %call_4360e3, %struct.Memory** %MEMORY

  ; Code: .L_4360ea:	 RIP: 4360ea	 Bytes: 0
  br label %block_.L_4360ea
block_.L_4360ea:

  ; Code: cmpl $0x5, -0x38(%rbp)	 RIP: 4360ea	 Bytes: 4
  %loadMem_4360ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4360ea = call %struct.Memory* @routine_cmpl__0x5__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4360ea)
  store %struct.Memory* %call_4360ea, %struct.Memory** %MEMORY

  ; Code: jge .L_436226	 RIP: 4360ee	 Bytes: 6
  %loadMem_4360ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4360ee = call %struct.Memory* @routine_jge_.L_436226(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4360ee, i8* %BRANCH_TAKEN, i64 312, i64 6, i64 6)
  store %struct.Memory* %call_4360ee, %struct.Memory** %MEMORY

  %loadBr_4360ee = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4360ee = icmp eq i8 %loadBr_4360ee, 1
  br i1 %cmpBr_4360ee, label %block_.L_436226, label %block_4360f4

block_4360f4:
  ; Code: movl $0x0, -0x34(%rbp)	 RIP: 4360f4	 Bytes: 7
  %loadMem_4360f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4360f4 = call %struct.Memory* @routine_movl__0x0__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4360f4)
  store %struct.Memory* %call_4360f4, %struct.Memory** %MEMORY

  ; Code: .L_4360fb:	 RIP: 4360fb	 Bytes: 0
  br label %block_.L_4360fb
block_.L_4360fb:

  ; Code: cmpl $0xf, -0x34(%rbp)	 RIP: 4360fb	 Bytes: 4
  %loadMem_4360fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4360fb = call %struct.Memory* @routine_cmpl__0xf__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4360fb)
  store %struct.Memory* %call_4360fb, %struct.Memory** %MEMORY

  ; Code: jge .L_43613f	 RIP: 4360ff	 Bytes: 6
  %loadMem_4360ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4360ff = call %struct.Memory* @routine_jge_.L_43613f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4360ff, i8* %BRANCH_TAKEN, i64 64, i64 6, i64 6)
  store %struct.Memory* %call_4360ff, %struct.Memory** %MEMORY

  %loadBr_4360ff = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4360ff = icmp eq i8 %loadBr_4360ff, 1
  br i1 %cmpBr_4360ff, label %block_.L_43613f, label %block_436105

block_436105:
  ; Code: movq 0x6cb908, %rax	 RIP: 436105	 Bytes: 8
  %loadMem_436105 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436105 = call %struct.Memory* @routine_movq_0x6cb908___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436105)
  store %struct.Memory* %call_436105, %struct.Memory** %MEMORY

  ; Code: addq $0x404, %rax	 RIP: 43610d	 Bytes: 6
  %loadMem_43610d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43610d = call %struct.Memory* @routine_addq__0x404___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43610d)
  store %struct.Memory* %call_43610d, %struct.Memory** %MEMORY

  ; Code: movslq -0x38(%rbp), %rcx	 RIP: 436113	 Bytes: 4
  %loadMem_436113 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436113 = call %struct.Memory* @routine_movslq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436113)
  store %struct.Memory* %call_436113, %struct.Memory** %MEMORY

  ; Code: imulq $0x3c, %rcx, %rcx	 RIP: 436117	 Bytes: 4
  %loadMem_436117 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436117 = call %struct.Memory* @routine_imulq__0x3c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436117)
  store %struct.Memory* %call_436117, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 43611b	 Bytes: 3
  %loadMem_43611b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43611b = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43611b)
  store %struct.Memory* %call_43611b, %struct.Memory** %MEMORY

  ; Code: movslq -0x34(%rbp), %rcx	 RIP: 43611e	 Bytes: 4
  %loadMem_43611e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43611e = call %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43611e)
  store %struct.Memory* %call_43611e, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rcx,4), %edx	 RIP: 436122	 Bytes: 3
  %loadMem_436122 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436122 = call %struct.Memory* @routine_movl___rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436122)
  store %struct.Memory* %call_436122, %struct.Memory** %MEMORY

  ; Code: movslq -0x38(%rbp), %rax	 RIP: 436125	 Bytes: 4
  %loadMem_436125 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436125 = call %struct.Memory* @routine_movslq_MINUS0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436125)
  store %struct.Memory* %call_436125, %struct.Memory** %MEMORY

  ; Code: addl -0x2c(%rbp,%rax,8), %edx	 RIP: 436129	 Bytes: 4
  %loadMem_436129 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436129 = call %struct.Memory* @routine_addl_MINUS0x2c__rbp__rax_8____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436129)
  store %struct.Memory* %call_436129, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x2c(%rbp,%rax,8)	 RIP: 43612d	 Bytes: 4
  %loadMem_43612d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43612d = call %struct.Memory* @routine_movl__edx__MINUS0x2c__rbp__rax_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43612d)
  store %struct.Memory* %call_43612d, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %eax	 RIP: 436131	 Bytes: 3
  %loadMem_436131 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436131 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436131)
  store %struct.Memory* %call_436131, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 436134	 Bytes: 3
  %loadMem_436134 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436134 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436134)
  store %struct.Memory* %call_436134, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x34(%rbp)	 RIP: 436137	 Bytes: 3
  %loadMem_436137 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436137 = call %struct.Memory* @routine_movl__eax__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436137)
  store %struct.Memory* %call_436137, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4360fb	 RIP: 43613a	 Bytes: 5
  %loadMem_43613a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43613a = call %struct.Memory* @routine_jmpq_.L_4360fb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43613a, i64 -63, i64 5)
  store %struct.Memory* %call_43613a, %struct.Memory** %MEMORY

  br label %block_.L_4360fb

  ; Code: .L_43613f:	 RIP: 43613f	 Bytes: 0
block_.L_43613f:

  ; Code: movq 0x6cb908, %rax	 RIP: 43613f	 Bytes: 8
  %loadMem_43613f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43613f = call %struct.Memory* @routine_movq_0x6cb908___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43613f)
  store %struct.Memory* %call_43613f, %struct.Memory** %MEMORY

  ; Code: movslq -0x38(%rbp), %rcx	 RIP: 436147	 Bytes: 4
  %loadMem_436147 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436147 = call %struct.Memory* @routine_movslq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436147)
  store %struct.Memory* %call_436147, %struct.Memory** %MEMORY

  ; Code: movl 0x558(%rax,%rcx,4), %edx	 RIP: 43614b	 Bytes: 7
  %loadMem_43614b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43614b = call %struct.Memory* @routine_movl_0x558__rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43614b)
  store %struct.Memory* %call_43614b, %struct.Memory** %MEMORY

  ; Code: movslq -0x38(%rbp), %rax	 RIP: 436152	 Bytes: 4
  %loadMem_436152 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436152 = call %struct.Memory* @routine_movslq_MINUS0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436152)
  store %struct.Memory* %call_436152, %struct.Memory** %MEMORY

  ; Code: addl -0x2c(%rbp,%rax,8), %edx	 RIP: 436156	 Bytes: 4
  %loadMem_436156 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436156 = call %struct.Memory* @routine_addl_MINUS0x2c__rbp__rax_8____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436156)
  store %struct.Memory* %call_436156, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x2c(%rbp,%rax,8)	 RIP: 43615a	 Bytes: 4
  %loadMem_43615a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43615a = call %struct.Memory* @routine_movl__edx__MINUS0x2c__rbp__rax_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43615a)
  store %struct.Memory* %call_43615a, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb908, %rax	 RIP: 43615e	 Bytes: 8
  %loadMem_43615e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43615e = call %struct.Memory* @routine_movq_0x6cb908___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43615e)
  store %struct.Memory* %call_43615e, %struct.Memory** %MEMORY

  ; Code: movslq -0x38(%rbp), %rcx	 RIP: 436166	 Bytes: 4
  %loadMem_436166 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436166 = call %struct.Memory* @routine_movslq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436166)
  store %struct.Memory* %call_436166, %struct.Memory** %MEMORY

  ; Code: movl 0x544(%rax,%rcx,4), %edx	 RIP: 43616a	 Bytes: 7
  %loadMem_43616a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43616a = call %struct.Memory* @routine_movl_0x544__rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43616a)
  store %struct.Memory* %call_43616a, %struct.Memory** %MEMORY

  ; Code: movslq -0x38(%rbp), %rax	 RIP: 436171	 Bytes: 4
  %loadMem_436171 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436171 = call %struct.Memory* @routine_movslq_MINUS0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436171)
  store %struct.Memory* %call_436171, %struct.Memory** %MEMORY

  ; Code: addl -0x2c(%rbp,%rax,8), %edx	 RIP: 436175	 Bytes: 4
  %loadMem_436175 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436175 = call %struct.Memory* @routine_addl_MINUS0x2c__rbp__rax_8____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436175)
  store %struct.Memory* %call_436175, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x2c(%rbp,%rax,8)	 RIP: 436179	 Bytes: 4
  %loadMem_436179 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436179 = call %struct.Memory* @routine_movl__edx__MINUS0x2c__rbp__rax_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436179)
  store %struct.Memory* %call_436179, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb908, %rax	 RIP: 43617d	 Bytes: 8
  %loadMem_43617d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43617d = call %struct.Memory* @routine_movq_0x6cb908___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43617d)
  store %struct.Memory* %call_43617d, %struct.Memory** %MEMORY

  ; Code: movslq -0x38(%rbp), %rcx	 RIP: 436185	 Bytes: 4
  %loadMem_436185 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436185 = call %struct.Memory* @routine_movslq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436185)
  store %struct.Memory* %call_436185, %struct.Memory** %MEMORY

  ; Code: movl 0x56c(%rax,%rcx,4), %edx	 RIP: 436189	 Bytes: 7
  %loadMem_436189 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436189 = call %struct.Memory* @routine_movl_0x56c__rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436189)
  store %struct.Memory* %call_436189, %struct.Memory** %MEMORY

  ; Code: movslq -0x38(%rbp), %rax	 RIP: 436190	 Bytes: 4
  %loadMem_436190 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436190 = call %struct.Memory* @routine_movslq_MINUS0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436190)
  store %struct.Memory* %call_436190, %struct.Memory** %MEMORY

  ; Code: addl -0x2c(%rbp,%rax,8), %edx	 RIP: 436194	 Bytes: 4
  %loadMem_436194 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436194 = call %struct.Memory* @routine_addl_MINUS0x2c__rbp__rax_8____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436194)
  store %struct.Memory* %call_436194, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x2c(%rbp,%rax,8)	 RIP: 436198	 Bytes: 4
  %loadMem_436198 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436198 = call %struct.Memory* @routine_movl__edx__MINUS0x2c__rbp__rax_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436198)
  store %struct.Memory* %call_436198, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb908, %rax	 RIP: 43619c	 Bytes: 8
  %loadMem_43619c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43619c = call %struct.Memory* @routine_movq_0x6cb908___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43619c)
  store %struct.Memory* %call_43619c, %struct.Memory** %MEMORY

  ; Code: movslq -0x38(%rbp), %rcx	 RIP: 4361a4	 Bytes: 4
  %loadMem_4361a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4361a4 = call %struct.Memory* @routine_movslq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4361a4)
  store %struct.Memory* %call_4361a4, %struct.Memory** %MEMORY

  ; Code: movl 0x580(%rax,%rcx,4), %edx	 RIP: 4361a8	 Bytes: 7
  %loadMem_4361a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4361a8 = call %struct.Memory* @routine_movl_0x580__rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4361a8)
  store %struct.Memory* %call_4361a8, %struct.Memory** %MEMORY

  ; Code: movslq -0x38(%rbp), %rax	 RIP: 4361af	 Bytes: 4
  %loadMem_4361af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4361af = call %struct.Memory* @routine_movslq_MINUS0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4361af)
  store %struct.Memory* %call_4361af, %struct.Memory** %MEMORY

  ; Code: addl -0x2c(%rbp,%rax,8), %edx	 RIP: 4361b3	 Bytes: 4
  %loadMem_4361b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4361b3 = call %struct.Memory* @routine_addl_MINUS0x2c__rbp__rax_8____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4361b3)
  store %struct.Memory* %call_4361b3, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x2c(%rbp,%rax,8)	 RIP: 4361b7	 Bytes: 4
  %loadMem_4361b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4361b7 = call %struct.Memory* @routine_movl__edx__MINUS0x2c__rbp__rax_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4361b7)
  store %struct.Memory* %call_4361b7, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb908, %rax	 RIP: 4361bb	 Bytes: 8
  %loadMem_4361bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4361bb = call %struct.Memory* @routine_movq_0x6cb908___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4361bb)
  store %struct.Memory* %call_4361bb, %struct.Memory** %MEMORY

  ; Code: movslq -0x38(%rbp), %rcx	 RIP: 4361c3	 Bytes: 4
  %loadMem_4361c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4361c3 = call %struct.Memory* @routine_movslq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4361c3)
  store %struct.Memory* %call_4361c3, %struct.Memory** %MEMORY

  ; Code: movl 0x594(%rax,%rcx,4), %edx	 RIP: 4361c7	 Bytes: 7
  %loadMem_4361c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4361c7 = call %struct.Memory* @routine_movl_0x594__rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4361c7)
  store %struct.Memory* %call_4361c7, %struct.Memory** %MEMORY

  ; Code: movslq -0x38(%rbp), %rax	 RIP: 4361ce	 Bytes: 4
  %loadMem_4361ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4361ce = call %struct.Memory* @routine_movslq_MINUS0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4361ce)
  store %struct.Memory* %call_4361ce, %struct.Memory** %MEMORY

  ; Code: addl -0x2c(%rbp,%rax,8), %edx	 RIP: 4361d2	 Bytes: 4
  %loadMem_4361d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4361d2 = call %struct.Memory* @routine_addl_MINUS0x2c__rbp__rax_8____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4361d2)
  store %struct.Memory* %call_4361d2, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x2c(%rbp,%rax,8)	 RIP: 4361d6	 Bytes: 4
  %loadMem_4361d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4361d6 = call %struct.Memory* @routine_movl__edx__MINUS0x2c__rbp__rax_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4361d6)
  store %struct.Memory* %call_4361d6, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb908, %rax	 RIP: 4361da	 Bytes: 8
  %loadMem_4361da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4361da = call %struct.Memory* @routine_movq_0x6cb908___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4361da)
  store %struct.Memory* %call_4361da, %struct.Memory** %MEMORY

  ; Code: movslq -0x38(%rbp), %rcx	 RIP: 4361e2	 Bytes: 4
  %loadMem_4361e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4361e2 = call %struct.Memory* @routine_movslq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4361e2)
  store %struct.Memory* %call_4361e2, %struct.Memory** %MEMORY

  ; Code: movl 0x5a8(%rax,%rcx,4), %edx	 RIP: 4361e6	 Bytes: 7
  %loadMem_4361e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4361e6 = call %struct.Memory* @routine_movl_0x5a8__rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4361e6)
  store %struct.Memory* %call_4361e6, %struct.Memory** %MEMORY

  ; Code: movslq -0x38(%rbp), %rax	 RIP: 4361ed	 Bytes: 4
  %loadMem_4361ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4361ed = call %struct.Memory* @routine_movslq_MINUS0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4361ed)
  store %struct.Memory* %call_4361ed, %struct.Memory** %MEMORY

  ; Code: addl -0x2c(%rbp,%rax,8), %edx	 RIP: 4361f1	 Bytes: 4
  %loadMem_4361f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4361f1 = call %struct.Memory* @routine_addl_MINUS0x2c__rbp__rax_8____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4361f1)
  store %struct.Memory* %call_4361f1, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x2c(%rbp,%rax,8)	 RIP: 4361f5	 Bytes: 4
  %loadMem_4361f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4361f5 = call %struct.Memory* @routine_movl__edx__MINUS0x2c__rbp__rax_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4361f5)
  store %struct.Memory* %call_4361f5, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb908, %rax	 RIP: 4361f9	 Bytes: 8
  %loadMem_4361f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4361f9 = call %struct.Memory* @routine_movq_0x6cb908___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4361f9)
  store %struct.Memory* %call_4361f9, %struct.Memory** %MEMORY

  ; Code: movslq -0x38(%rbp), %rcx	 RIP: 436201	 Bytes: 4
  %loadMem_436201 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436201 = call %struct.Memory* @routine_movslq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436201)
  store %struct.Memory* %call_436201, %struct.Memory** %MEMORY

  ; Code: movl 0x530(%rax,%rcx,4), %edx	 RIP: 436205	 Bytes: 7
  %loadMem_436205 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436205 = call %struct.Memory* @routine_movl_0x530__rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436205)
  store %struct.Memory* %call_436205, %struct.Memory** %MEMORY

  ; Code: movslq -0x38(%rbp), %rax	 RIP: 43620c	 Bytes: 4
  %loadMem_43620c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43620c = call %struct.Memory* @routine_movslq_MINUS0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43620c)
  store %struct.Memory* %call_43620c, %struct.Memory** %MEMORY

  ; Code: addl -0x2c(%rbp,%rax,8), %edx	 RIP: 436210	 Bytes: 4
  %loadMem_436210 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436210 = call %struct.Memory* @routine_addl_MINUS0x2c__rbp__rax_8____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436210)
  store %struct.Memory* %call_436210, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x2c(%rbp,%rax,8)	 RIP: 436214	 Bytes: 4
  %loadMem_436214 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436214 = call %struct.Memory* @routine_movl__edx__MINUS0x2c__rbp__rax_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436214)
  store %struct.Memory* %call_436214, %struct.Memory** %MEMORY

  ; Code: movl -0x38(%rbp), %eax	 RIP: 436218	 Bytes: 3
  %loadMem_436218 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436218 = call %struct.Memory* @routine_movl_MINUS0x38__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436218)
  store %struct.Memory* %call_436218, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 43621b	 Bytes: 3
  %loadMem_43621b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43621b = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43621b)
  store %struct.Memory* %call_43621b, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x38(%rbp)	 RIP: 43621e	 Bytes: 3
  %loadMem_43621e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43621e = call %struct.Memory* @routine_movl__eax__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43621e)
  store %struct.Memory* %call_43621e, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4360ea	 RIP: 436221	 Bytes: 5
  %loadMem_436221 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436221 = call %struct.Memory* @routine_jmpq_.L_4360ea(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436221, i64 -311, i64 5)
  store %struct.Memory* %call_436221, %struct.Memory** %MEMORY

  br label %block_.L_4360ea

  ; Code: .L_436226:	 RIP: 436226	 Bytes: 0
block_.L_436226:

  ; Code: movq $0x4c054d, %rsi	 RIP: 436226	 Bytes: 10
  %loadMem_436226 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436226 = call %struct.Memory* @routine_movq__0x4c054d___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436226)
  store %struct.Memory* %call_436226, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 436230	 Bytes: 8
  %loadMem_436230 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436230 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436230)
  store %struct.Memory* %call_436230, %struct.Memory** %MEMORY

  ; Code: movss 0x30(%rax), %xmm0	 RIP: 436238	 Bytes: 5
  %loadMem_436238 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436238 = call %struct.Memory* @routine_movss_0x30__rax____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436238)
  store %struct.Memory* %call_436238, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rax	 RIP: 43623d	 Bytes: 8
  %loadMem_43623d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43623d = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43623d)
  store %struct.Memory* %call_43623d, %struct.Memory** %MEMORY

  ; Code: movl 0x4d4(%rax), %ecx	 RIP: 436245	 Bytes: 6
  %loadMem_436245 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436245 = call %struct.Memory* @routine_movl_0x4d4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436245)
  store %struct.Memory* %call_436245, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 43624b	 Bytes: 3
  %loadMem_43624b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43624b = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43624b)
  store %struct.Memory* %call_43624b, %struct.Memory** %MEMORY

  ; Code: cvtsi2ssl %ecx, %xmm1	 RIP: 43624e	 Bytes: 4
  %loadMem_43624e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43624e = call %struct.Memory* @routine_cvtsi2ssl__ecx___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43624e)
  store %struct.Memory* %call_43624e, %struct.Memory** %MEMORY

  ; Code: mulss %xmm1, %xmm0	 RIP: 436252	 Bytes: 4
  %loadMem_436252 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436252 = call %struct.Memory* @routine_mulss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436252)
  store %struct.Memory* %call_436252, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rax	 RIP: 436256	 Bytes: 8
  %loadMem_436256 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436256 = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436256)
  store %struct.Memory* %call_436256, %struct.Memory** %MEMORY

  ; Code: movl 0x14(%rax), %ecx	 RIP: 43625e	 Bytes: 3
  %loadMem_43625e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43625e = call %struct.Memory* @routine_movl_0x14__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43625e)
  store %struct.Memory* %call_43625e, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 436261	 Bytes: 3
  %loadMem_436261 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436261 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436261)
  store %struct.Memory* %call_436261, %struct.Memory** %MEMORY

  ; Code: cvtsi2ssl %ecx, %xmm1	 RIP: 436264	 Bytes: 4
  %loadMem_436264 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436264 = call %struct.Memory* @routine_cvtsi2ssl__ecx___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436264)
  store %struct.Memory* %call_436264, %struct.Memory** %MEMORY

  ; Code: divss %xmm1, %xmm0	 RIP: 436268	 Bytes: 4
  %loadMem_436268 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436268 = call %struct.Memory* @routine_divss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436268)
  store %struct.Memory* %call_436268, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, -0x58(%rbp)	 RIP: 43626c	 Bytes: 5
  %loadMem_43626c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43626c = call %struct.Memory* @routine_movss__xmm0__MINUS0x58__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43626c)
  store %struct.Memory* %call_43626c, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb908, %rax	 RIP: 436271	 Bytes: 8
  %loadMem_436271 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436271 = call %struct.Memory* @routine_movq_0x6cb908___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436271)
  store %struct.Memory* %call_436271, %struct.Memory** %MEMORY

  ; Code: cvtsi2ssl 0x2c0(%rax), %xmm0	 RIP: 436279	 Bytes: 8
  %loadMem_436279 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436279 = call %struct.Memory* @routine_cvtsi2ssl_0x2c0__rax____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436279)
  store %struct.Memory* %call_436279, %struct.Memory** %MEMORY

  ; Code: mulss -0x58(%rbp), %xmm0	 RIP: 436281	 Bytes: 5
  %loadMem_436281 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436281 = call %struct.Memory* @routine_mulss_MINUS0x58__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436281)
  store %struct.Memory* %call_436281, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rax	 RIP: 436286	 Bytes: 8
  %loadMem_436286 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436286 = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436286)
  store %struct.Memory* %call_436286, %struct.Memory** %MEMORY

  ; Code: movl 0x8(%rax), %ecx	 RIP: 43628e	 Bytes: 3
  %loadMem_43628e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43628e = call %struct.Memory* @routine_movl_0x8__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43628e)
  store %struct.Memory* %call_43628e, %struct.Memory** %MEMORY

  ; Code: addl 0x722ca8, %ecx	 RIP: 436291	 Bytes: 7
  %loadMem_436291 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436291 = call %struct.Memory* @routine_addl_0x722ca8___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436291)
  store %struct.Memory* %call_436291, %struct.Memory** %MEMORY

  ; Code: cvtsi2ssl %ecx, %xmm1	 RIP: 436298	 Bytes: 4
  %loadMem_436298 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436298 = call %struct.Memory* @routine_cvtsi2ssl__ecx___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436298)
  store %struct.Memory* %call_436298, %struct.Memory** %MEMORY

  ; Code: divss %xmm1, %xmm0	 RIP: 43629c	 Bytes: 4
  %loadMem_43629c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43629c = call %struct.Memory* @routine_divss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43629c)
  store %struct.Memory* %call_43629c, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb908, %rax	 RIP: 4362a0	 Bytes: 8
  %loadMem_4362a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4362a0 = call %struct.Memory* @routine_movq_0x6cb908___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4362a0)
  store %struct.Memory* %call_4362a0, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, 0x2cc(%rax)	 RIP: 4362a8	 Bytes: 8
  %loadMem_4362a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4362a8 = call %struct.Memory* @routine_movss__xmm0__0x2cc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4362a8)
  store %struct.Memory* %call_4362a8, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb908, %rax	 RIP: 4362b0	 Bytes: 8
  %loadMem_4362b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4362b0 = call %struct.Memory* @routine_movq_0x6cb908___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4362b0)
  store %struct.Memory* %call_4362b0, %struct.Memory** %MEMORY

  ; Code: cvtsi2ssl 0x2c4(%rax), %xmm0	 RIP: 4362b8	 Bytes: 8
  %loadMem_4362b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4362b8 = call %struct.Memory* @routine_cvtsi2ssl_0x2c4__rax____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4362b8)
  store %struct.Memory* %call_4362b8, %struct.Memory** %MEMORY

  ; Code: mulss -0x58(%rbp), %xmm0	 RIP: 4362c0	 Bytes: 5
  %loadMem_4362c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4362c0 = call %struct.Memory* @routine_mulss_MINUS0x58__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4362c0)
  store %struct.Memory* %call_4362c0, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rax	 RIP: 4362c5	 Bytes: 8
  %loadMem_4362c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4362c5 = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4362c5)
  store %struct.Memory* %call_4362c5, %struct.Memory** %MEMORY

  ; Code: movl 0x8(%rax), %ecx	 RIP: 4362cd	 Bytes: 3
  %loadMem_4362cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4362cd = call %struct.Memory* @routine_movl_0x8__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4362cd)
  store %struct.Memory* %call_4362cd, %struct.Memory** %MEMORY

  ; Code: addl 0x722ca8, %ecx	 RIP: 4362d0	 Bytes: 7
  %loadMem_4362d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4362d0 = call %struct.Memory* @routine_addl_0x722ca8___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4362d0)
  store %struct.Memory* %call_4362d0, %struct.Memory** %MEMORY

  ; Code: cvtsi2ssl %ecx, %xmm1	 RIP: 4362d7	 Bytes: 4
  %loadMem_4362d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4362d7 = call %struct.Memory* @routine_cvtsi2ssl__ecx___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4362d7)
  store %struct.Memory* %call_4362d7, %struct.Memory** %MEMORY

  ; Code: divss %xmm1, %xmm0	 RIP: 4362db	 Bytes: 4
  %loadMem_4362db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4362db = call %struct.Memory* @routine_divss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4362db)
  store %struct.Memory* %call_4362db, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb908, %rax	 RIP: 4362df	 Bytes: 8
  %loadMem_4362df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4362df = call %struct.Memory* @routine_movq_0x6cb908___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4362df)
  store %struct.Memory* %call_4362df, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, 0x2d0(%rax)	 RIP: 4362e7	 Bytes: 8
  %loadMem_4362e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4362e7 = call %struct.Memory* @routine_movss__xmm0__0x2d0__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4362e7)
  store %struct.Memory* %call_4362e7, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb908, %rax	 RIP: 4362ef	 Bytes: 8
  %loadMem_4362ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4362ef = call %struct.Memory* @routine_movq_0x6cb908___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4362ef)
  store %struct.Memory* %call_4362ef, %struct.Memory** %MEMORY

  ; Code: cvtsi2ssl 0x2c8(%rax), %xmm0	 RIP: 4362f7	 Bytes: 8
  %loadMem_4362f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4362f7 = call %struct.Memory* @routine_cvtsi2ssl_0x2c8__rax____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4362f7)
  store %struct.Memory* %call_4362f7, %struct.Memory** %MEMORY

  ; Code: mulss -0x58(%rbp), %xmm0	 RIP: 4362ff	 Bytes: 5
  %loadMem_4362ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4362ff = call %struct.Memory* @routine_mulss_MINUS0x58__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4362ff)
  store %struct.Memory* %call_4362ff, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rax	 RIP: 436304	 Bytes: 8
  %loadMem_436304 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436304 = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436304)
  store %struct.Memory* %call_436304, %struct.Memory** %MEMORY

  ; Code: movl 0x8(%rax), %ecx	 RIP: 43630c	 Bytes: 3
  %loadMem_43630c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43630c = call %struct.Memory* @routine_movl_0x8__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43630c)
  store %struct.Memory* %call_43630c, %struct.Memory** %MEMORY

  ; Code: addl 0x722ca8, %ecx	 RIP: 43630f	 Bytes: 7
  %loadMem_43630f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43630f = call %struct.Memory* @routine_addl_0x722ca8___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43630f)
  store %struct.Memory* %call_43630f, %struct.Memory** %MEMORY

  ; Code: cvtsi2ssl %ecx, %xmm1	 RIP: 436316	 Bytes: 4
  %loadMem_436316 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436316 = call %struct.Memory* @routine_cvtsi2ssl__ecx___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436316)
  store %struct.Memory* %call_436316, %struct.Memory** %MEMORY

  ; Code: divss %xmm1, %xmm0	 RIP: 43631a	 Bytes: 4
  %loadMem_43631a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43631a = call %struct.Memory* @routine_divss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43631a)
  store %struct.Memory* %call_43631a, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb908, %rax	 RIP: 43631e	 Bytes: 8
  %loadMem_43631e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43631e = call %struct.Memory* @routine_movq_0x6cb908___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43631e)
  store %struct.Memory* %call_43631e, %struct.Memory** %MEMORY

  ; Code: movss %xmm0, 0x2d4(%rax)	 RIP: 436326	 Bytes: 8
  %loadMem_436326 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436326 = call %struct.Memory* @routine_movss__xmm0__0x2d4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436326)
  store %struct.Memory* %call_436326, %struct.Memory** %MEMORY

  ; Code: movq 0x6cbe00, %rdi	 RIP: 43632e	 Bytes: 8
  %loadMem_43632e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43632e = call %struct.Memory* @routine_movq_0x6cbe00___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43632e)
  store %struct.Memory* %call_43632e, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 436336	 Bytes: 2
  %loadMem_436336 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436336 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436336)
  store %struct.Memory* %call_436336, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 436338	 Bytes: 5
  %loadMem1_436338 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_436338 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_436338, i64 -217640, i64 5, i64 5)
  store %struct.Memory* %call1_436338, %struct.Memory** %MEMORY

  %loadMem2_436338 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_436338 = load i64, i64* %3
  %call2_436338 = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_436338, %struct.Memory* %loadMem2_436338)
  store %struct.Memory* %call2_436338, %struct.Memory** %MEMORY

  ; Code: movq $0x4c0609, %rsi	 RIP: 43633d	 Bytes: 10
  %loadMem_43633d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43633d = call %struct.Memory* @routine_movq__0x4c0609___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43633d)
  store %struct.Memory* %call_43633d, %struct.Memory** %MEMORY

  ; Code: movq 0x6cbe00, %rdi	 RIP: 436347	 Bytes: 8
  %loadMem_436347 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436347 = call %struct.Memory* @routine_movq_0x6cbe00___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436347)
  store %struct.Memory* %call_436347, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rdx	 RIP: 43634f	 Bytes: 8
  %loadMem_43634f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43634f = call %struct.Memory* @routine_movq_0x6cb900___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43634f)
  store %struct.Memory* %call_43634f, %struct.Memory** %MEMORY

  ; Code: movss 0x30(%rdx), %xmm0	 RIP: 436357	 Bytes: 5
  %loadMem_436357 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436357 = call %struct.Memory* @routine_movss_0x30__rdx____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436357)
  store %struct.Memory* %call_436357, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rdx	 RIP: 43635c	 Bytes: 8
  %loadMem_43635c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43635c = call %struct.Memory* @routine_movq_0x6cb8f8___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43635c)
  store %struct.Memory* %call_43635c, %struct.Memory** %MEMORY

  ; Code: movl 0x14(%rdx), %ecx	 RIP: 436364	 Bytes: 3
  %loadMem_436364 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436364 = call %struct.Memory* @routine_movl_0x14__rdx____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436364)
  store %struct.Memory* %call_436364, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 436367	 Bytes: 3
  %loadMem_436367 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436367 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436367)
  store %struct.Memory* %call_436367, %struct.Memory** %MEMORY

  ; Code: cvtsi2ssl %ecx, %xmm1	 RIP: 43636a	 Bytes: 4
  %loadMem_43636a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43636a = call %struct.Memory* @routine_cvtsi2ssl__ecx___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43636a)
  store %struct.Memory* %call_43636a, %struct.Memory** %MEMORY

  ; Code: divss %xmm1, %xmm0	 RIP: 43636e	 Bytes: 4
  %loadMem_43636e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43636e = call %struct.Memory* @routine_divss__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43636e)
  store %struct.Memory* %call_43636e, %struct.Memory** %MEMORY

  ; Code: cvtss2sd %xmm0, %xmm0	 RIP: 436372	 Bytes: 4
  %loadMem_436372 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436372 = call %struct.Memory* @routine_cvtss2sd__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436372)
  store %struct.Memory* %call_436372, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4c0(%rbp)	 RIP: 436376	 Bytes: 6
  %loadMem_436376 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436376 = call %struct.Memory* @routine_movl__eax__MINUS0x4c0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436376)
  store %struct.Memory* %call_436376, %struct.Memory** %MEMORY

  ; Code: movb $0x1, %al	 RIP: 43637c	 Bytes: 2
  %loadMem_43637c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43637c = call %struct.Memory* @routine_movb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43637c)
  store %struct.Memory* %call_43637c, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 43637e	 Bytes: 5
  %loadMem1_43637e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43637e = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43637e, i64 -217710, i64 5, i64 5)
  store %struct.Memory* %call1_43637e, %struct.Memory** %MEMORY

  %loadMem2_43637e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43637e = load i64, i64* %3
  %call2_43637e = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_43637e, %struct.Memory* %loadMem2_43637e)
  store %struct.Memory* %call2_43637e, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rdx	 RIP: 436383	 Bytes: 8
  %loadMem_436383 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436383 = call %struct.Memory* @routine_movq_0x6cb8f8___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436383)
  store %struct.Memory* %call_436383, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x18(%rdx)	 RIP: 43638b	 Bytes: 4
  %loadMem_43638b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43638b = call %struct.Memory* @routine_cmpl__0x0__0x18__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43638b)
  store %struct.Memory* %call_43638b, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4c4(%rbp)	 RIP: 43638f	 Bytes: 6
  %loadMem_43638f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43638f = call %struct.Memory* @routine_movl__eax__MINUS0x4c4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43638f)
  store %struct.Memory* %call_43638f, %struct.Memory** %MEMORY

  ; Code: je .L_4363f5	 RIP: 436395	 Bytes: 6
  %loadMem_436395 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436395 = call %struct.Memory* @routine_je_.L_4363f5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436395, i8* %BRANCH_TAKEN, i64 96, i64 6, i64 6)
  store %struct.Memory* %call_436395, %struct.Memory** %MEMORY

  %loadBr_436395 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_436395 = icmp eq i8 %loadBr_436395, 1
  br i1 %cmpBr_436395, label %block_.L_4363f5, label %block_43639b

block_43639b:
  ; Code: movq 0x6cb8f8, %rax	 RIP: 43639b	 Bytes: 8
  %loadMem_43639b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43639b = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43639b)
  store %struct.Memory* %call_43639b, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x1c(%rax)	 RIP: 4363a3	 Bytes: 4
  %loadMem_4363a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4363a3 = call %struct.Memory* @routine_cmpl__0x0__0x1c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4363a3)
  store %struct.Memory* %call_4363a3, %struct.Memory** %MEMORY

  ; Code: je .L_4363d1	 RIP: 4363a7	 Bytes: 6
  %loadMem_4363a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4363a7 = call %struct.Memory* @routine_je_.L_4363d1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4363a7, i8* %BRANCH_TAKEN, i64 42, i64 6, i64 6)
  store %struct.Memory* %call_4363a7, %struct.Memory** %MEMORY

  %loadBr_4363a7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4363a7 = icmp eq i8 %loadBr_4363a7, 1
  br i1 %cmpBr_4363a7, label %block_.L_4363d1, label %block_4363ad

block_4363ad:
  ; Code: movq $0x4c0635, %rsi	 RIP: 4363ad	 Bytes: 10
  %loadMem_4363ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4363ad = call %struct.Memory* @routine_movq__0x4c0635___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4363ad)
  store %struct.Memory* %call_4363ad, %struct.Memory** %MEMORY

  ; Code: movq 0x6cbe00, %rdi	 RIP: 4363b7	 Bytes: 8
  %loadMem_4363b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4363b7 = call %struct.Memory* @routine_movq_0x6cbe00___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4363b7)
  store %struct.Memory* %call_4363b7, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 4363bf	 Bytes: 2
  %loadMem_4363bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4363bf = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4363bf)
  store %struct.Memory* %call_4363bf, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 4363c1	 Bytes: 5
  %loadMem1_4363c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4363c1 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4363c1, i64 -217777, i64 5, i64 5)
  store %struct.Memory* %call1_4363c1, %struct.Memory** %MEMORY

  %loadMem2_4363c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4363c1 = load i64, i64* %3
  %call2_4363c1 = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_4363c1, %struct.Memory* %loadMem2_4363c1)
  store %struct.Memory* %call2_4363c1, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4c8(%rbp)	 RIP: 4363c6	 Bytes: 6
  %loadMem_4363c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4363c6 = call %struct.Memory* @routine_movl__eax__MINUS0x4c8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4363c6)
  store %struct.Memory* %call_4363c6, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4363f0	 RIP: 4363cc	 Bytes: 5
  %loadMem_4363cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4363cc = call %struct.Memory* @routine_jmpq_.L_4363f0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4363cc, i64 36, i64 5)
  store %struct.Memory* %call_4363cc, %struct.Memory** %MEMORY

  br label %block_.L_4363f0

  ; Code: .L_4363d1:	 RIP: 4363d1	 Bytes: 0
block_.L_4363d1:

  ; Code: movq $0x4c0669, %rsi	 RIP: 4363d1	 Bytes: 10
  %loadMem_4363d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4363d1 = call %struct.Memory* @routine_movq__0x4c0669___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4363d1)
  store %struct.Memory* %call_4363d1, %struct.Memory** %MEMORY

  ; Code: movq 0x6cbe00, %rdi	 RIP: 4363db	 Bytes: 8
  %loadMem_4363db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4363db = call %struct.Memory* @routine_movq_0x6cbe00___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4363db)
  store %struct.Memory* %call_4363db, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 4363e3	 Bytes: 2
  %loadMem_4363e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4363e3 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4363e3)
  store %struct.Memory* %call_4363e3, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 4363e5	 Bytes: 5
  %loadMem1_4363e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4363e5 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4363e5, i64 -217813, i64 5, i64 5)
  store %struct.Memory* %call1_4363e5, %struct.Memory** %MEMORY

  %loadMem2_4363e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4363e5 = load i64, i64* %3
  %call2_4363e5 = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_4363e5, %struct.Memory* %loadMem2_4363e5)
  store %struct.Memory* %call2_4363e5, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4cc(%rbp)	 RIP: 4363ea	 Bytes: 6
  %loadMem_4363ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4363ea = call %struct.Memory* @routine_movl__eax__MINUS0x4cc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4363ea)
  store %struct.Memory* %call_4363ea, %struct.Memory** %MEMORY

  ; Code: .L_4363f0:	 RIP: 4363f0	 Bytes: 0
  br label %block_.L_4363f0
block_.L_4363f0:

  ; Code: jmpq .L_436414	 RIP: 4363f0	 Bytes: 5
  %loadMem_4363f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4363f0 = call %struct.Memory* @routine_jmpq_.L_436414(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4363f0, i64 36, i64 5)
  store %struct.Memory* %call_4363f0, %struct.Memory** %MEMORY

  br label %block_.L_436414

  ; Code: .L_4363f5:	 RIP: 4363f5	 Bytes: 0
block_.L_4363f5:

  ; Code: movq $0x4c0694, %rsi	 RIP: 4363f5	 Bytes: 10
  %loadMem_4363f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4363f5 = call %struct.Memory* @routine_movq__0x4c0694___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4363f5)
  store %struct.Memory* %call_4363f5, %struct.Memory** %MEMORY

  ; Code: movq 0x6cbe00, %rdi	 RIP: 4363ff	 Bytes: 8
  %loadMem_4363ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4363ff = call %struct.Memory* @routine_movq_0x6cbe00___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4363ff)
  store %struct.Memory* %call_4363ff, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 436407	 Bytes: 2
  %loadMem_436407 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436407 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436407)
  store %struct.Memory* %call_436407, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 436409	 Bytes: 5
  %loadMem1_436409 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_436409 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_436409, i64 -217849, i64 5, i64 5)
  store %struct.Memory* %call1_436409, %struct.Memory** %MEMORY

  %loadMem2_436409 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_436409 = load i64, i64* %3
  %call2_436409 = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_436409, %struct.Memory* %loadMem2_436409)
  store %struct.Memory* %call2_436409, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4d0(%rbp)	 RIP: 43640e	 Bytes: 6
  %loadMem_43640e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43640e = call %struct.Memory* @routine_movl__eax__MINUS0x4d0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43640e)
  store %struct.Memory* %call_43640e, %struct.Memory** %MEMORY

  ; Code: .L_436414:	 RIP: 436414	 Bytes: 0
  br label %block_.L_436414
block_.L_436414:

  ; Code: movq $0x4c06c3, %rsi	 RIP: 436414	 Bytes: 10
  %loadMem_436414 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436414 = call %struct.Memory* @routine_movq__0x4c06c3___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436414)
  store %struct.Memory* %call_436414, %struct.Memory** %MEMORY

  ; Code: movq 0x6cbe00, %rdi	 RIP: 43641e	 Bytes: 8
  %loadMem_43641e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43641e = call %struct.Memory* @routine_movq_0x6cbe00___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43641e)
  store %struct.Memory* %call_43641e, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rax	 RIP: 436426	 Bytes: 8
  %loadMem_436426 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436426 = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436426)
  store %struct.Memory* %call_436426, %struct.Memory** %MEMORY

  ; Code: movl 0x40(%rax), %edx	 RIP: 43642e	 Bytes: 3
  %loadMem_43642e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43642e = call %struct.Memory* @routine_movl_0x40__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43642e)
  store %struct.Memory* %call_43642e, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rax	 RIP: 436431	 Bytes: 8
  %loadMem_436431 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436431 = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436431)
  store %struct.Memory* %call_436431, %struct.Memory** %MEMORY

  ; Code: movl 0x44(%rax), %ecx	 RIP: 436439	 Bytes: 3
  %loadMem_436439 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436439 = call %struct.Memory* @routine_movl_0x44__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436439)
  store %struct.Memory* %call_436439, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 43643c	 Bytes: 2
  %loadMem_43643c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43643c = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43643c)
  store %struct.Memory* %call_43643c, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 43643e	 Bytes: 5
  %loadMem1_43643e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43643e = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43643e, i64 -217902, i64 5, i64 5)
  store %struct.Memory* %call1_43643e, %struct.Memory** %MEMORY

  %loadMem2_43643e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43643e = load i64, i64* %3
  %call2_43643e = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_43643e, %struct.Memory* %loadMem2_43643e)
  store %struct.Memory* %call2_43643e, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rsi	 RIP: 436443	 Bytes: 8
  %loadMem_436443 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436443 = call %struct.Memory* @routine_movq_0x6cb8f8___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436443)
  store %struct.Memory* %call_436443, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x4c(%rsi)	 RIP: 43644b	 Bytes: 4
  %loadMem_43644b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43644b = call %struct.Memory* @routine_cmpl__0x0__0x4c__rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43644b)
  store %struct.Memory* %call_43644b, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4d4(%rbp)	 RIP: 43644f	 Bytes: 6
  %loadMem_43644f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43644f = call %struct.Memory* @routine_movl__eax__MINUS0x4d4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43644f)
  store %struct.Memory* %call_43644f, %struct.Memory** %MEMORY

  ; Code: je .L_43647f	 RIP: 436455	 Bytes: 6
  %loadMem_436455 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436455 = call %struct.Memory* @routine_je_.L_43647f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436455, i8* %BRANCH_TAKEN, i64 42, i64 6, i64 6)
  store %struct.Memory* %call_436455, %struct.Memory** %MEMORY

  %loadBr_436455 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_436455 = icmp eq i8 %loadBr_436455, 1
  br i1 %cmpBr_436455, label %block_.L_43647f, label %block_43645b

block_43645b:
  ; Code: movq $0x4c06ef, %rsi	 RIP: 43645b	 Bytes: 10
  %loadMem_43645b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43645b = call %struct.Memory* @routine_movq__0x4c06ef___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43645b)
  store %struct.Memory* %call_43645b, %struct.Memory** %MEMORY

  ; Code: movq 0x6cbe00, %rdi	 RIP: 436465	 Bytes: 8
  %loadMem_436465 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436465 = call %struct.Memory* @routine_movq_0x6cbe00___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436465)
  store %struct.Memory* %call_436465, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 43646d	 Bytes: 2
  %loadMem_43646d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43646d = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43646d)
  store %struct.Memory* %call_43646d, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 43646f	 Bytes: 5
  %loadMem1_43646f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43646f = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43646f, i64 -217951, i64 5, i64 5)
  store %struct.Memory* %call1_43646f, %struct.Memory** %MEMORY

  %loadMem2_43646f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43646f = load i64, i64* %3
  %call2_43646f = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_43646f, %struct.Memory* %loadMem2_43646f)
  store %struct.Memory* %call2_43646f, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4d8(%rbp)	 RIP: 436474	 Bytes: 6
  %loadMem_436474 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436474 = call %struct.Memory* @routine_movl__eax__MINUS0x4d8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436474)
  store %struct.Memory* %call_436474, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43649e	 RIP: 43647a	 Bytes: 5
  %loadMem_43647a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43647a = call %struct.Memory* @routine_jmpq_.L_43649e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43647a, i64 36, i64 5)
  store %struct.Memory* %call_43647a, %struct.Memory** %MEMORY

  br label %block_.L_43649e

  ; Code: .L_43647f:	 RIP: 43647f	 Bytes: 0
block_.L_43647f:

  ; Code: movq $0x4c0718, %rsi	 RIP: 43647f	 Bytes: 10
  %loadMem_43647f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43647f = call %struct.Memory* @routine_movq__0x4c0718___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43647f)
  store %struct.Memory* %call_43647f, %struct.Memory** %MEMORY

  ; Code: movq 0x6cbe00, %rdi	 RIP: 436489	 Bytes: 8
  %loadMem_436489 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436489 = call %struct.Memory* @routine_movq_0x6cbe00___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436489)
  store %struct.Memory* %call_436489, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 436491	 Bytes: 2
  %loadMem_436491 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436491 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436491)
  store %struct.Memory* %call_436491, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 436493	 Bytes: 5
  %loadMem1_436493 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_436493 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_436493, i64 -217987, i64 5, i64 5)
  store %struct.Memory* %call1_436493, %struct.Memory** %MEMORY

  %loadMem2_436493 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_436493 = load i64, i64* %3
  %call2_436493 = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_436493, %struct.Memory* %loadMem2_436493)
  store %struct.Memory* %call2_436493, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4dc(%rbp)	 RIP: 436498	 Bytes: 6
  %loadMem_436498 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436498 = call %struct.Memory* @routine_movl__eax__MINUS0x4dc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436498)
  store %struct.Memory* %call_436498, %struct.Memory** %MEMORY

  ; Code: .L_43649e:	 RIP: 43649e	 Bytes: 0
  br label %block_.L_43649e
block_.L_43649e:

  ; Code: movq $0x4c0742, %rsi	 RIP: 43649e	 Bytes: 10
  %loadMem_43649e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43649e = call %struct.Memory* @routine_movq__0x4c0742___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43649e)
  store %struct.Memory* %call_43649e, %struct.Memory** %MEMORY

  ; Code: movq 0x6cbe00, %rdi	 RIP: 4364a8	 Bytes: 8
  %loadMem_4364a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4364a8 = call %struct.Memory* @routine_movq_0x6cbe00___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4364a8)
  store %struct.Memory* %call_4364a8, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rax	 RIP: 4364b0	 Bytes: 8
  %loadMem_4364b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4364b0 = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4364b0)
  store %struct.Memory* %call_4364b0, %struct.Memory** %MEMORY

  ; Code: movl 0x20(%rax), %edx	 RIP: 4364b8	 Bytes: 3
  %loadMem_4364b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4364b8 = call %struct.Memory* @routine_movl_0x20__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4364b8)
  store %struct.Memory* %call_4364b8, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 4364bb	 Bytes: 2
  %loadMem_4364bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4364bb = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4364bb)
  store %struct.Memory* %call_4364bb, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 4364bd	 Bytes: 5
  %loadMem1_4364bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4364bd = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4364bd, i64 -218029, i64 5, i64 5)
  store %struct.Memory* %call1_4364bd, %struct.Memory** %MEMORY

  %loadMem2_4364bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4364bd = load i64, i64* %3
  %call2_4364bd = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_4364bd, %struct.Memory* %loadMem2_4364bd)
  store %struct.Memory* %call2_4364bd, %struct.Memory** %MEMORY

  ; Code: movq $0x4c076b, %rsi	 RIP: 4364c2	 Bytes: 10
  %loadMem_4364c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4364c2 = call %struct.Memory* @routine_movq__0x4c076b___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4364c2)
  store %struct.Memory* %call_4364c2, %struct.Memory** %MEMORY

  ; Code: movq 0x6cbe00, %rdi	 RIP: 4364cc	 Bytes: 8
  %loadMem_4364cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4364cc = call %struct.Memory* @routine_movq_0x6cbe00___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4364cc)
  store %struct.Memory* %call_4364cc, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rcx	 RIP: 4364d4	 Bytes: 8
  %loadMem_4364d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4364d4 = call %struct.Memory* @routine_movq_0x6cb8f8___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4364d4)
  store %struct.Memory* %call_4364d4, %struct.Memory** %MEMORY

  ; Code: movl 0x24(%rcx), %edx	 RIP: 4364dc	 Bytes: 3
  %loadMem_4364dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4364dc = call %struct.Memory* @routine_movl_0x24__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4364dc)
  store %struct.Memory* %call_4364dc, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4e0(%rbp)	 RIP: 4364df	 Bytes: 6
  %loadMem_4364df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4364df = call %struct.Memory* @routine_movl__eax__MINUS0x4e0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4364df)
  store %struct.Memory* %call_4364df, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 4364e5	 Bytes: 2
  %loadMem_4364e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4364e5 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4364e5)
  store %struct.Memory* %call_4364e5, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 4364e7	 Bytes: 5
  %loadMem1_4364e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4364e7 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4364e7, i64 -218071, i64 5, i64 5)
  store %struct.Memory* %call1_4364e7, %struct.Memory** %MEMORY

  %loadMem2_4364e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4364e7 = load i64, i64* %3
  %call2_4364e7 = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_4364e7, %struct.Memory* %loadMem2_4364e7)
  store %struct.Memory* %call2_4364e7, %struct.Memory** %MEMORY

  ; Code: movq 0x6cbe00, %rdi	 RIP: 4364ec	 Bytes: 8
  %loadMem_4364ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4364ec = call %struct.Memory* @routine_movq_0x6cbe00___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4364ec)
  store %struct.Memory* %call_4364ec, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rcx	 RIP: 4364f4	 Bytes: 8
  %loadMem_4364f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4364f4 = call %struct.Memory* @routine_movq_0x6cb8f8___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4364f4)
  store %struct.Memory* %call_4364f4, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x28(%rcx)	 RIP: 4364fc	 Bytes: 4
  %loadMem_4364fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4364fc = call %struct.Memory* @routine_cmpl__0x0__0x28__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4364fc)
  store %struct.Memory* %call_4364fc, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4e4(%rbp)	 RIP: 436500	 Bytes: 6
  %loadMem_436500 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436500 = call %struct.Memory* @routine_movl__eax__MINUS0x4e4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436500)
  store %struct.Memory* %call_436500, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x4f0(%rbp)	 RIP: 436506	 Bytes: 7
  %loadMem_436506 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436506 = call %struct.Memory* @routine_movq__rdi__MINUS0x4f0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436506)
  store %struct.Memory* %call_436506, %struct.Memory** %MEMORY

  ; Code: je .L_436529	 RIP: 43650d	 Bytes: 6
  %loadMem_43650d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43650d = call %struct.Memory* @routine_je_.L_436529(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43650d, i8* %BRANCH_TAKEN, i64 28, i64 6, i64 6)
  store %struct.Memory* %call_43650d, %struct.Memory** %MEMORY

  %loadBr_43650d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43650d = icmp eq i8 %loadBr_43650d, 1
  br i1 %cmpBr_43650d, label %block_.L_436529, label %block_436513

block_436513:
  ; Code: movq 0x6cb8f8, %rax	 RIP: 436513	 Bytes: 8
  %loadMem_436513 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436513 = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436513)
  store %struct.Memory* %call_436513, %struct.Memory** %MEMORY

  ; Code: movl 0x28(%rax), %ecx	 RIP: 43651b	 Bytes: 3
  %loadMem_43651b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43651b = call %struct.Memory* @routine_movl_0x28__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43651b)
  store %struct.Memory* %call_43651b, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x4f4(%rbp)	 RIP: 43651e	 Bytes: 6
  %loadMem_43651e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43651e = call %struct.Memory* @routine_movl__ecx__MINUS0x4f4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43651e)
  store %struct.Memory* %call_43651e, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43653a	 RIP: 436524	 Bytes: 5
  %loadMem_436524 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436524 = call %struct.Memory* @routine_jmpq_.L_43653a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436524, i64 22, i64 5)
  store %struct.Memory* %call_436524, %struct.Memory** %MEMORY

  br label %block_.L_43653a

  ; Code: .L_436529:	 RIP: 436529	 Bytes: 0
block_.L_436529:

  ; Code: movq 0x6cb8f8, %rax	 RIP: 436529	 Bytes: 8
  %loadMem_436529 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436529 = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436529)
  store %struct.Memory* %call_436529, %struct.Memory** %MEMORY

  ; Code: movl 0x24(%rax), %ecx	 RIP: 436531	 Bytes: 3
  %loadMem_436531 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436531 = call %struct.Memory* @routine_movl_0x24__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436531)
  store %struct.Memory* %call_436531, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x4f4(%rbp)	 RIP: 436534	 Bytes: 6
  %loadMem_436534 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436534 = call %struct.Memory* @routine_movl__ecx__MINUS0x4f4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436534)
  store %struct.Memory* %call_436534, %struct.Memory** %MEMORY

  ; Code: .L_43653a:	 RIP: 43653a	 Bytes: 0
  br label %block_.L_43653a
block_.L_43653a:

  ; Code: movl -0x4f4(%rbp), %eax	 RIP: 43653a	 Bytes: 6
  %loadMem_43653a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43653a = call %struct.Memory* @routine_movl_MINUS0x4f4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43653a)
  store %struct.Memory* %call_43653a, %struct.Memory** %MEMORY

  ; Code: movq $0x4c0794, %rsi	 RIP: 436540	 Bytes: 10
  %loadMem_436540 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436540 = call %struct.Memory* @routine_movq__0x4c0794___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436540)
  store %struct.Memory* %call_436540, %struct.Memory** %MEMORY

  ; Code: movq -0x4f0(%rbp), %rdi	 RIP: 43654a	 Bytes: 7
  %loadMem_43654a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43654a = call %struct.Memory* @routine_movq_MINUS0x4f0__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43654a)
  store %struct.Memory* %call_43654a, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 436551	 Bytes: 2
  %loadMem_436551 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436551 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436551)
  store %struct.Memory* %call_436551, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 436553	 Bytes: 2
  %loadMem_436553 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436553 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436553)
  store %struct.Memory* %call_436553, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 436555	 Bytes: 5
  %loadMem1_436555 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_436555 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_436555, i64 -218181, i64 5, i64 5)
  store %struct.Memory* %call1_436555, %struct.Memory** %MEMORY

  %loadMem2_436555 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_436555 = load i64, i64* %3
  %call2_436555 = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_436555, %struct.Memory* %loadMem2_436555)
  store %struct.Memory* %call2_436555, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rsi	 RIP: 43655a	 Bytes: 8
  %loadMem_43655a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43655a = call %struct.Memory* @routine_movq_0x6cb8f8___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43655a)
  store %struct.Memory* %call_43655a, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x4d4(%rsi)	 RIP: 436562	 Bytes: 7
  %loadMem_436562 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436562 = call %struct.Memory* @routine_cmpl__0x0__0x4d4__rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436562)
  store %struct.Memory* %call_436562, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4f8(%rbp)	 RIP: 436569	 Bytes: 6
  %loadMem_436569 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436569 = call %struct.Memory* @routine_movl__eax__MINUS0x4f8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436569)
  store %struct.Memory* %call_436569, %struct.Memory** %MEMORY

  ; Code: je .L_436651	 RIP: 43656f	 Bytes: 6
  %loadMem_43656f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43656f = call %struct.Memory* @routine_je_.L_436651(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43656f, i8* %BRANCH_TAKEN, i64 226, i64 6, i64 6)
  store %struct.Memory* %call_43656f, %struct.Memory** %MEMORY

  %loadBr_43656f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43656f = icmp eq i8 %loadBr_43656f, 1
  br i1 %cmpBr_43656f, label %block_.L_436651, label %block_436575

block_436575:
  ; Code: movq 0x6cbe00, %rdi	 RIP: 436575	 Bytes: 8
  %loadMem_436575 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436575 = call %struct.Memory* @routine_movq_0x6cbe00___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436575)
  store %struct.Memory* %call_436575, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rax	 RIP: 43657d	 Bytes: 8
  %loadMem_43657d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43657d = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43657d)
  store %struct.Memory* %call_43657d, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x2c(%rax)	 RIP: 436585	 Bytes: 4
  %loadMem_436585 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436585 = call %struct.Memory* @routine_cmpl__0x0__0x2c__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436585)
  store %struct.Memory* %call_436585, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x500(%rbp)	 RIP: 436589	 Bytes: 7
  %loadMem_436589 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436589 = call %struct.Memory* @routine_movq__rdi__MINUS0x500__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436589)
  store %struct.Memory* %call_436589, %struct.Memory** %MEMORY

  ; Code: je .L_4365ac	 RIP: 436590	 Bytes: 6
  %loadMem_436590 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436590 = call %struct.Memory* @routine_je_.L_4365ac(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436590, i8* %BRANCH_TAKEN, i64 28, i64 6, i64 6)
  store %struct.Memory* %call_436590, %struct.Memory** %MEMORY

  %loadBr_436590 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_436590 = icmp eq i8 %loadBr_436590, 1
  br i1 %cmpBr_436590, label %block_.L_4365ac, label %block_436596

block_436596:
  ; Code: movq 0x6cb8f8, %rax	 RIP: 436596	 Bytes: 8
  %loadMem_436596 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436596 = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436596)
  store %struct.Memory* %call_436596, %struct.Memory** %MEMORY

  ; Code: movl 0x2c(%rax), %ecx	 RIP: 43659e	 Bytes: 3
  %loadMem_43659e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43659e = call %struct.Memory* @routine_movl_0x2c__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43659e)
  store %struct.Memory* %call_43659e, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x504(%rbp)	 RIP: 4365a1	 Bytes: 6
  %loadMem_4365a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4365a1 = call %struct.Memory* @routine_movl__ecx__MINUS0x504__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4365a1)
  store %struct.Memory* %call_4365a1, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4365bd	 RIP: 4365a7	 Bytes: 5
  %loadMem_4365a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4365a7 = call %struct.Memory* @routine_jmpq_.L_4365bd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4365a7, i64 22, i64 5)
  store %struct.Memory* %call_4365a7, %struct.Memory** %MEMORY

  br label %block_.L_4365bd

  ; Code: .L_4365ac:	 RIP: 4365ac	 Bytes: 0
block_.L_4365ac:

  ; Code: movq 0x6cb8f8, %rax	 RIP: 4365ac	 Bytes: 8
  %loadMem_4365ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4365ac = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4365ac)
  store %struct.Memory* %call_4365ac, %struct.Memory** %MEMORY

  ; Code: movl 0x24(%rax), %ecx	 RIP: 4365b4	 Bytes: 3
  %loadMem_4365b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4365b4 = call %struct.Memory* @routine_movl_0x24__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4365b4)
  store %struct.Memory* %call_4365b4, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x504(%rbp)	 RIP: 4365b7	 Bytes: 6
  %loadMem_4365b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4365b7 = call %struct.Memory* @routine_movl__ecx__MINUS0x504__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4365b7)
  store %struct.Memory* %call_4365b7, %struct.Memory** %MEMORY

  ; Code: .L_4365bd:	 RIP: 4365bd	 Bytes: 0
  br label %block_.L_4365bd
block_.L_4365bd:

  ; Code: movl -0x504(%rbp), %eax	 RIP: 4365bd	 Bytes: 6
  %loadMem_4365bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4365bd = call %struct.Memory* @routine_movl_MINUS0x504__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4365bd)
  store %struct.Memory* %call_4365bd, %struct.Memory** %MEMORY

  ; Code: movq $0x4c07bd, %rsi	 RIP: 4365c3	 Bytes: 10
  %loadMem_4365c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4365c3 = call %struct.Memory* @routine_movq__0x4c07bd___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4365c3)
  store %struct.Memory* %call_4365c3, %struct.Memory** %MEMORY

  ; Code: movq -0x500(%rbp), %rdi	 RIP: 4365cd	 Bytes: 7
  %loadMem_4365cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4365cd = call %struct.Memory* @routine_movq_MINUS0x500__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4365cd)
  store %struct.Memory* %call_4365cd, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 4365d4	 Bytes: 2
  %loadMem_4365d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4365d4 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4365d4)
  store %struct.Memory* %call_4365d4, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 4365d6	 Bytes: 2
  %loadMem_4365d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4365d6 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4365d6)
  store %struct.Memory* %call_4365d6, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 4365d8	 Bytes: 5
  %loadMem1_4365d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4365d8 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4365d8, i64 -218312, i64 5, i64 5)
  store %struct.Memory* %call1_4365d8, %struct.Memory** %MEMORY

  %loadMem2_4365d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4365d8 = load i64, i64* %3
  %call2_4365d8 = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_4365d8, %struct.Memory* %loadMem2_4365d8)
  store %struct.Memory* %call2_4365d8, %struct.Memory** %MEMORY

  ; Code: movq 0x6cbe00, %rdi	 RIP: 4365dd	 Bytes: 8
  %loadMem_4365dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4365dd = call %struct.Memory* @routine_movq_0x6cbe00___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4365dd)
  store %struct.Memory* %call_4365dd, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rsi	 RIP: 4365e5	 Bytes: 8
  %loadMem_4365e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4365e5 = call %struct.Memory* @routine_movq_0x6cb8f8___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4365e5)
  store %struct.Memory* %call_4365e5, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x30(%rsi)	 RIP: 4365ed	 Bytes: 4
  %loadMem_4365ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4365ed = call %struct.Memory* @routine_cmpl__0x0__0x30__rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4365ed)
  store %struct.Memory* %call_4365ed, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x508(%rbp)	 RIP: 4365f1	 Bytes: 6
  %loadMem_4365f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4365f1 = call %struct.Memory* @routine_movl__eax__MINUS0x508__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4365f1)
  store %struct.Memory* %call_4365f1, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x510(%rbp)	 RIP: 4365f7	 Bytes: 7
  %loadMem_4365f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4365f7 = call %struct.Memory* @routine_movq__rdi__MINUS0x510__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4365f7)
  store %struct.Memory* %call_4365f7, %struct.Memory** %MEMORY

  ; Code: je .L_43661a	 RIP: 4365fe	 Bytes: 6
  %loadMem_4365fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4365fe = call %struct.Memory* @routine_je_.L_43661a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4365fe, i8* %BRANCH_TAKEN, i64 28, i64 6, i64 6)
  store %struct.Memory* %call_4365fe, %struct.Memory** %MEMORY

  %loadBr_4365fe = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4365fe = icmp eq i8 %loadBr_4365fe, 1
  br i1 %cmpBr_4365fe, label %block_.L_43661a, label %block_436604

block_436604:
  ; Code: movq 0x6cb8f8, %rax	 RIP: 436604	 Bytes: 8
  %loadMem_436604 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436604 = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436604)
  store %struct.Memory* %call_436604, %struct.Memory** %MEMORY

  ; Code: movl 0x30(%rax), %ecx	 RIP: 43660c	 Bytes: 3
  %loadMem_43660c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43660c = call %struct.Memory* @routine_movl_0x30__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43660c)
  store %struct.Memory* %call_43660c, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x514(%rbp)	 RIP: 43660f	 Bytes: 6
  %loadMem_43660f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43660f = call %struct.Memory* @routine_movl__ecx__MINUS0x514__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43660f)
  store %struct.Memory* %call_43660f, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43662b	 RIP: 436615	 Bytes: 5
  %loadMem_436615 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436615 = call %struct.Memory* @routine_jmpq_.L_43662b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436615, i64 22, i64 5)
  store %struct.Memory* %call_436615, %struct.Memory** %MEMORY

  br label %block_.L_43662b

  ; Code: .L_43661a:	 RIP: 43661a	 Bytes: 0
block_.L_43661a:

  ; Code: movq 0x6cb8f8, %rax	 RIP: 43661a	 Bytes: 8
  %loadMem_43661a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43661a = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43661a)
  store %struct.Memory* %call_43661a, %struct.Memory** %MEMORY

  ; Code: movl 0x24(%rax), %ecx	 RIP: 436622	 Bytes: 3
  %loadMem_436622 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436622 = call %struct.Memory* @routine_movl_0x24__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436622)
  store %struct.Memory* %call_436622, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x514(%rbp)	 RIP: 436625	 Bytes: 6
  %loadMem_436625 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436625 = call %struct.Memory* @routine_movl__ecx__MINUS0x514__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436625)
  store %struct.Memory* %call_436625, %struct.Memory** %MEMORY

  ; Code: .L_43662b:	 RIP: 43662b	 Bytes: 0
  br label %block_.L_43662b
block_.L_43662b:

  ; Code: movl -0x514(%rbp), %eax	 RIP: 43662b	 Bytes: 6
  %loadMem_43662b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43662b = call %struct.Memory* @routine_movl_MINUS0x514__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43662b)
  store %struct.Memory* %call_43662b, %struct.Memory** %MEMORY

  ; Code: movq $0x4c07e6, %rsi	 RIP: 436631	 Bytes: 10
  %loadMem_436631 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436631 = call %struct.Memory* @routine_movq__0x4c07e6___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436631)
  store %struct.Memory* %call_436631, %struct.Memory** %MEMORY

  ; Code: movq -0x510(%rbp), %rdi	 RIP: 43663b	 Bytes: 7
  %loadMem_43663b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43663b = call %struct.Memory* @routine_movq_MINUS0x510__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43663b)
  store %struct.Memory* %call_43663b, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 436642	 Bytes: 2
  %loadMem_436642 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436642 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436642)
  store %struct.Memory* %call_436642, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 436644	 Bytes: 2
  %loadMem_436644 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436644 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436644)
  store %struct.Memory* %call_436644, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 436646	 Bytes: 5
  %loadMem1_436646 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_436646 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_436646, i64 -218422, i64 5, i64 5)
  store %struct.Memory* %call1_436646, %struct.Memory** %MEMORY

  %loadMem2_436646 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_436646 = load i64, i64* %3
  %call2_436646 = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_436646, %struct.Memory* %loadMem2_436646)
  store %struct.Memory* %call2_436646, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x518(%rbp)	 RIP: 43664b	 Bytes: 6
  %loadMem_43664b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43664b = call %struct.Memory* @routine_movl__eax__MINUS0x518__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43664b)
  store %struct.Memory* %call_43664b, %struct.Memory** %MEMORY

  ; Code: .L_436651:	 RIP: 436651	 Bytes: 0
  br label %block_.L_436651
block_.L_436651:

  ; Code: movq $0x4c080f, %rsi	 RIP: 436651	 Bytes: 10
  %loadMem_436651 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436651 = call %struct.Memory* @routine_movq__0x4c080f___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436651)
  store %struct.Memory* %call_436651, %struct.Memory** %MEMORY

  ; Code: movsd 0x7b245(%rip), %xmm0	 RIP: 43665b	 Bytes: 8
  %loadMem_43665b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43665b = call %struct.Memory* @routine_movsd_0x7b245__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43665b)
  store %struct.Memory* %call_43665b, %struct.Memory** %MEMORY

  ; Code: movq 0x6cbe00, %rdi	 RIP: 436663	 Bytes: 8
  %loadMem_436663 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436663 = call %struct.Memory* @routine_movq_0x6cbe00___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436663)
  store %struct.Memory* %call_436663, %struct.Memory** %MEMORY

  ; Code: cvtsi2sdl 0x725260, %xmm1	 RIP: 43666b	 Bytes: 9
  %loadMem_43666b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43666b = call %struct.Memory* @routine_cvtsi2sdl_0x725260___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43666b)
  store %struct.Memory* %call_43666b, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm0, %xmm1	 RIP: 436674	 Bytes: 4
  %loadMem_436674 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436674 = call %struct.Memory* @routine_mulsd__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436674)
  store %struct.Memory* %call_436674, %struct.Memory** %MEMORY

  ; Code: movaps %xmm1, %xmm0	 RIP: 436678	 Bytes: 3
  %loadMem_436678 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436678 = call %struct.Memory* @routine_movaps__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436678)
  store %struct.Memory* %call_436678, %struct.Memory** %MEMORY

  ; Code: movb $0x1, %al	 RIP: 43667b	 Bytes: 2
  %loadMem_43667b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43667b = call %struct.Memory* @routine_movb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43667b)
  store %struct.Memory* %call_43667b, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 43667d	 Bytes: 5
  %loadMem1_43667d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43667d = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43667d, i64 -218477, i64 5, i64 5)
  store %struct.Memory* %call1_43667d, %struct.Memory** %MEMORY

  %loadMem2_43667d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43667d = load i64, i64* %3
  %call2_43667d = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_43667d, %struct.Memory* %loadMem2_43667d)
  store %struct.Memory* %call2_43667d, %struct.Memory** %MEMORY

  ; Code: movq $0x4c083f, %rsi	 RIP: 436682	 Bytes: 10
  %loadMem_436682 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436682 = call %struct.Memory* @routine_movq__0x4c083f___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436682)
  store %struct.Memory* %call_436682, %struct.Memory** %MEMORY

  ; Code: movsd 0x7b214(%rip), %xmm0	 RIP: 43668c	 Bytes: 8
  %loadMem_43668c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43668c = call %struct.Memory* @routine_movsd_0x7b214__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43668c)
  store %struct.Memory* %call_43668c, %struct.Memory** %MEMORY

  ; Code: movq 0x6cbe00, %rdi	 RIP: 436694	 Bytes: 8
  %loadMem_436694 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436694 = call %struct.Memory* @routine_movq_0x6cbe00___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436694)
  store %struct.Memory* %call_436694, %struct.Memory** %MEMORY

  ; Code: cvtsi2sdl 0x6f968c, %xmm1	 RIP: 43669c	 Bytes: 9
  %loadMem_43669c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43669c = call %struct.Memory* @routine_cvtsi2sdl_0x6f968c___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43669c)
  store %struct.Memory* %call_43669c, %struct.Memory** %MEMORY

  ; Code: mulsd %xmm0, %xmm1	 RIP: 4366a5	 Bytes: 4
  %loadMem_4366a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4366a5 = call %struct.Memory* @routine_mulsd__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4366a5)
  store %struct.Memory* %call_4366a5, %struct.Memory** %MEMORY

  ; Code: movaps %xmm1, %xmm0	 RIP: 4366a9	 Bytes: 3
  %loadMem_4366a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4366a9 = call %struct.Memory* @routine_movaps__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4366a9)
  store %struct.Memory* %call_4366a9, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x51c(%rbp)	 RIP: 4366ac	 Bytes: 6
  %loadMem_4366ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4366ac = call %struct.Memory* @routine_movl__eax__MINUS0x51c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4366ac)
  store %struct.Memory* %call_4366ac, %struct.Memory** %MEMORY

  ; Code: movb $0x1, %al	 RIP: 4366b2	 Bytes: 2
  %loadMem_4366b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4366b2 = call %struct.Memory* @routine_movb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4366b2)
  store %struct.Memory* %call_4366b2, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 4366b4	 Bytes: 5
  %loadMem1_4366b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4366b4 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4366b4, i64 -218532, i64 5, i64 5)
  store %struct.Memory* %call1_4366b4, %struct.Memory** %MEMORY

  %loadMem2_4366b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4366b4 = load i64, i64* %3
  %call2_4366b4 = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_4366b4, %struct.Memory* %loadMem2_4366b4)
  store %struct.Memory* %call2_4366b4, %struct.Memory** %MEMORY

  ; Code: movq $0x4c086f, %rsi	 RIP: 4366b9	 Bytes: 10
  %loadMem_4366b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4366b9 = call %struct.Memory* @routine_movq__0x4c086f___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4366b9)
  store %struct.Memory* %call_4366b9, %struct.Memory** %MEMORY

  ; Code: movq 0x6cbe00, %rdi	 RIP: 4366c3	 Bytes: 8
  %loadMem_4366c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4366c3 = call %struct.Memory* @routine_movq_0x6cbe00___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4366c3)
  store %struct.Memory* %call_4366c3, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x520(%rbp)	 RIP: 4366cb	 Bytes: 6
  %loadMem_4366cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4366cb = call %struct.Memory* @routine_movl__eax__MINUS0x520__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4366cb)
  store %struct.Memory* %call_4366cb, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 4366d1	 Bytes: 2
  %loadMem_4366d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4366d1 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4366d1)
  store %struct.Memory* %call_4366d1, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 4366d3	 Bytes: 5
  %loadMem1_4366d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4366d3 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4366d3, i64 -218563, i64 5, i64 5)
  store %struct.Memory* %call1_4366d3, %struct.Memory** %MEMORY

  %loadMem2_4366d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4366d3 = load i64, i64* %3
  %call2_4366d3 = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_4366d3, %struct.Memory* %loadMem2_4366d3)
  store %struct.Memory* %call2_4366d3, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rsi	 RIP: 4366d8	 Bytes: 8
  %loadMem_4366d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4366d8 = call %struct.Memory* @routine_movq_0x6cb8f8___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4366d8)
  store %struct.Memory* %call_4366d8, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x4d4(%rsi)	 RIP: 4366e0	 Bytes: 7
  %loadMem_4366e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4366e0 = call %struct.Memory* @routine_cmpl__0x0__0x4d4__rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4366e0)
  store %struct.Memory* %call_4366e0, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x524(%rbp)	 RIP: 4366e7	 Bytes: 6
  %loadMem_4366e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4366e7 = call %struct.Memory* @routine_movl__eax__MINUS0x524__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4366e7)
  store %struct.Memory* %call_4366e7, %struct.Memory** %MEMORY

  ; Code: jle .L_436751	 RIP: 4366ed	 Bytes: 6
  %loadMem_4366ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4366ed = call %struct.Memory* @routine_jle_.L_436751(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4366ed, i8* %BRANCH_TAKEN, i64 100, i64 6, i64 6)
  store %struct.Memory* %call_4366ed, %struct.Memory** %MEMORY

  %loadBr_4366ed = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4366ed = icmp eq i8 %loadBr_4366ed, 1
  br i1 %cmpBr_4366ed, label %block_.L_436751, label %block_4366f3

block_4366f3:
  ; Code: movq 0x6cb8f8, %rax	 RIP: 4366f3	 Bytes: 8
  %loadMem_4366f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4366f3 = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4366f3)
  store %struct.Memory* %call_4366f3, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x528(%rax)	 RIP: 4366fb	 Bytes: 7
  %loadMem_4366fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4366fb = call %struct.Memory* @routine_cmpl__0x0__0x528__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4366fb)
  store %struct.Memory* %call_4366fb, %struct.Memory** %MEMORY

  ; Code: je .L_436751	 RIP: 436702	 Bytes: 6
  %loadMem_436702 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436702 = call %struct.Memory* @routine_je_.L_436751(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436702, i8* %BRANCH_TAKEN, i64 79, i64 6, i64 6)
  store %struct.Memory* %call_436702, %struct.Memory** %MEMORY

  %loadBr_436702 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_436702 = icmp eq i8 %loadBr_436702, 1
  br i1 %cmpBr_436702, label %block_.L_436751, label %block_436708

block_436708:
  ; Code: movq $0x4c0894, %rsi	 RIP: 436708	 Bytes: 10
  %loadMem_436708 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436708 = call %struct.Memory* @routine_movq__0x4c0894___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436708)
  store %struct.Memory* %call_436708, %struct.Memory** %MEMORY

  ; Code: movq 0x6cbe00, %rdi	 RIP: 436712	 Bytes: 8
  %loadMem_436712 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436712 = call %struct.Memory* @routine_movq_0x6cbe00___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436712)
  store %struct.Memory* %call_436712, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rax	 RIP: 43671a	 Bytes: 8
  %loadMem_43671a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43671a = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43671a)
  store %struct.Memory* %call_43671a, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%rax), %edx	 RIP: 436722	 Bytes: 3
  %loadMem_436722 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436722 = call %struct.Memory* @routine_movl_0xc__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436722)
  store %struct.Memory* %call_436722, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rax	 RIP: 436725	 Bytes: 8
  %loadMem_436725 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436725 = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436725)
  store %struct.Memory* %call_436725, %struct.Memory** %MEMORY

  ; Code: movl 0x10(%rax), %ecx	 RIP: 43672d	 Bytes: 3
  %loadMem_43672d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43672d = call %struct.Memory* @routine_movl_0x10__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43672d)
  store %struct.Memory* %call_43672d, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rax	 RIP: 436730	 Bytes: 8
  %loadMem_436730 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436730 = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436730)
  store %struct.Memory* %call_436730, %struct.Memory** %MEMORY

  ; Code: movl 0x4d8(%rax), %r8d	 RIP: 436738	 Bytes: 7
  %loadMem_436738 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436738 = call %struct.Memory* @routine_movl_0x4d8__rax____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436738)
  store %struct.Memory* %call_436738, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 43673f	 Bytes: 2
  %loadMem_43673f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43673f = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43673f)
  store %struct.Memory* %call_43673f, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 436741	 Bytes: 5
  %loadMem1_436741 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_436741 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_436741, i64 -218673, i64 5, i64 5)
  store %struct.Memory* %call1_436741, %struct.Memory** %MEMORY

  %loadMem2_436741 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_436741 = load i64, i64* %3
  %call2_436741 = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_436741, %struct.Memory* %loadMem2_436741)
  store %struct.Memory* %call2_436741, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x528(%rbp)	 RIP: 436746	 Bytes: 6
  %loadMem_436746 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436746 = call %struct.Memory* @routine_movl__eax__MINUS0x528__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436746)
  store %struct.Memory* %call_436746, %struct.Memory** %MEMORY

  ; Code: jmpq .L_436c34	 RIP: 43674c	 Bytes: 5
  %loadMem_43674c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43674c = call %struct.Memory* @routine_jmpq_.L_436c34(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43674c, i64 1256, i64 5)
  store %struct.Memory* %call_43674c, %struct.Memory** %MEMORY

  br label %block_.L_436c34

  ; Code: .L_436751:	 RIP: 436751	 Bytes: 0
block_.L_436751:

  ; Code: movq 0x6cb8f8, %rax	 RIP: 436751	 Bytes: 8
  %loadMem_436751 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436751 = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436751)
  store %struct.Memory* %call_436751, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x4d4(%rax)	 RIP: 436759	 Bytes: 7
  %loadMem_436759 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436759 = call %struct.Memory* @routine_cmpl__0x0__0x4d4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436759)
  store %struct.Memory* %call_436759, %struct.Memory** %MEMORY

  ; Code: jle .L_436b73	 RIP: 436760	 Bytes: 6
  %loadMem_436760 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436760 = call %struct.Memory* @routine_jle_.L_436b73(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436760, i8* %BRANCH_TAKEN, i64 1043, i64 6, i64 6)
  store %struct.Memory* %call_436760, %struct.Memory** %MEMORY

  %loadBr_436760 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_436760 = icmp eq i8 %loadBr_436760, 1
  br i1 %cmpBr_436760, label %block_.L_436b73, label %block_436766

block_436766:
  ; Code: leaq -0x4b0(%rbp), %rdi	 RIP: 436766	 Bytes: 7
  %loadMem_436766 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436766 = call %struct.Memory* @routine_leaq_MINUS0x4b0__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436766)
  store %struct.Memory* %call_436766, %struct.Memory** %MEMORY

  ; Code: movl $0x4bdcdc, %eax	 RIP: 43676d	 Bytes: 5
  %loadMem_43676d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43676d = call %struct.Memory* @routine_movl__0x4bdcdc___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43676d)
  store %struct.Memory* %call_43676d, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 436772	 Bytes: 2
  %loadMem_436772 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436772 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436772)
  store %struct.Memory* %call_436772, %struct.Memory** %MEMORY

  ; Code: callq .strcpy_plt	 RIP: 436774	 Bytes: 5
  %loadMem1_436774 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_436774 = call %struct.Memory* @routine_callq_.strcpy_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_436774, i64 -219060, i64 5, i64 5)
  store %struct.Memory* %call1_436774, %struct.Memory** %MEMORY

  %loadMem2_436774 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_436774 = load i64, i64* %3
  %call2_436774 = call %struct.Memory* @ext_strcpy(%struct.State* %0, i64  %loadPC_436774, %struct.Memory* %loadMem2_436774)
  store %struct.Memory* %call2_436774, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x4b8(%rbp)	 RIP: 436779	 Bytes: 10
  %loadMem_436779 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436779 = call %struct.Memory* @routine_movl__0x0__MINUS0x4b8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436779)
  store %struct.Memory* %call_436779, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x530(%rbp)	 RIP: 436783	 Bytes: 7
  %loadMem_436783 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436783 = call %struct.Memory* @routine_movq__rax__MINUS0x530__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436783)
  store %struct.Memory* %call_436783, %struct.Memory** %MEMORY

  ; Code: .L_43678a:	 RIP: 43678a	 Bytes: 0
  br label %block_.L_43678a
block_.L_43678a:

  ; Code: cmpl $0x2, -0x4b8(%rbp)	 RIP: 43678a	 Bytes: 7
  %loadMem_43678a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43678a = call %struct.Memory* @routine_cmpl__0x2__MINUS0x4b8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43678a)
  store %struct.Memory* %call_43678a, %struct.Memory** %MEMORY

  ; Code: jge .L_4369f7	 RIP: 436791	 Bytes: 6
  %loadMem_436791 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436791 = call %struct.Memory* @routine_jge_.L_4369f7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436791, i8* %BRANCH_TAKEN, i64 614, i64 6, i64 6)
  store %struct.Memory* %call_436791, %struct.Memory** %MEMORY

  %loadBr_436791 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_436791 = icmp eq i8 %loadBr_436791, 1
  br i1 %cmpBr_436791, label %block_.L_4369f7, label %block_436797

block_436797:
  ; Code: movl $0x0, -0x4b4(%rbp)	 RIP: 436797	 Bytes: 10
  %loadMem_436797 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436797 = call %struct.Memory* @routine_movl__0x0__MINUS0x4b4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436797)
  store %struct.Memory* %call_436797, %struct.Memory** %MEMORY

  ; Code: .L_4367a1:	 RIP: 4367a1	 Bytes: 0
  br label %block_.L_4367a1
block_.L_4367a1:

  ; Code: movl -0x4b4(%rbp), %eax	 RIP: 4367a1	 Bytes: 6
  %loadMem_4367a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4367a1 = call %struct.Memory* @routine_movl_MINUS0x4b4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4367a1)
  store %struct.Memory* %call_4367a1, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rcx	 RIP: 4367a7	 Bytes: 8
  %loadMem_4367a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4367a7 = call %struct.Memory* @routine_movq_0x6cb8f8___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4367a7)
  store %struct.Memory* %call_4367a7, %struct.Memory** %MEMORY

  ; Code: cmpl 0x4d4(%rcx), %eax	 RIP: 4367af	 Bytes: 6
  %loadMem_4367af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4367af = call %struct.Memory* @routine_cmpl_0x4d4__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4367af)
  store %struct.Memory* %call_4367af, %struct.Memory** %MEMORY

  ; Code: jge .L_43693c	 RIP: 4367b5	 Bytes: 6
  %loadMem_4367b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4367b5 = call %struct.Memory* @routine_jge_.L_43693c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4367b5, i8* %BRANCH_TAKEN, i64 391, i64 6, i64 6)
  store %struct.Memory* %call_4367b5, %struct.Memory** %MEMORY

  %loadBr_4367b5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4367b5 = icmp eq i8 %loadBr_4367b5, 1
  br i1 %cmpBr_4367b5, label %block_.L_43693c, label %block_4367bb

block_4367bb:
  ; Code: movq 0x6cb8f8, %rax	 RIP: 4367bb	 Bytes: 8
  %loadMem_4367bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4367bb = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4367bb)
  store %struct.Memory* %call_4367bb, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x524(%rax)	 RIP: 4367c3	 Bytes: 7
  %loadMem_4367c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4367c3 = call %struct.Memory* @routine_cmpl__0x0__0x524__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4367c3)
  store %struct.Memory* %call_4367c3, %struct.Memory** %MEMORY

  ; Code: je .L_43687c	 RIP: 4367ca	 Bytes: 6
  %loadMem_4367ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4367ca = call %struct.Memory* @routine_je_.L_43687c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4367ca, i8* %BRANCH_TAKEN, i64 178, i64 6, i64 6)
  store %struct.Memory* %call_4367ca, %struct.Memory** %MEMORY

  %loadBr_4367ca = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4367ca = icmp eq i8 %loadBr_4367ca, 1
  br i1 %cmpBr_4367ca, label %block_.L_43687c, label %block_4367d0

block_4367d0:
  ; Code: xorl %eax, %eax	 RIP: 4367d0	 Bytes: 2
  %loadMem_4367d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4367d0 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4367d0)
  store %struct.Memory* %call_4367d0, %struct.Memory** %MEMORY

  ; Code: movl $0x4f, %ecx	 RIP: 4367d2	 Bytes: 5
  %loadMem_4367d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4367d2 = call %struct.Memory* @routine_movl__0x4f___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4367d2)
  store %struct.Memory* %call_4367d2, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 4367d7	 Bytes: 2
  %loadMem_4367d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4367d7 = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4367d7)
  store %struct.Memory* %call_4367d7, %struct.Memory** %MEMORY

  ; Code: leaq -0x4b0(%rbp), %rsi	 RIP: 4367d9	 Bytes: 7
  %loadMem_4367d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4367d9 = call %struct.Memory* @routine_leaq_MINUS0x4b0__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4367d9)
  store %struct.Memory* %call_4367d9, %struct.Memory** %MEMORY

  ; Code: movq %rsi, %rdi	 RIP: 4367e0	 Bytes: 3
  %loadMem_4367e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4367e0 = call %struct.Memory* @routine_movq__rsi___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4367e0)
  store %struct.Memory* %call_4367e0, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x534(%rbp)	 RIP: 4367e3	 Bytes: 6
  %loadMem_4367e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4367e3 = call %struct.Memory* @routine_movl__eax__MINUS0x534__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4367e3)
  store %struct.Memory* %call_4367e3, %struct.Memory** %MEMORY

  ; Code: movq %rdx, -0x540(%rbp)	 RIP: 4367e9	 Bytes: 7
  %loadMem_4367e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4367e9 = call %struct.Memory* @routine_movq__rdx__MINUS0x540__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4367e9)
  store %struct.Memory* %call_4367e9, %struct.Memory** %MEMORY

  ; Code: movq %rsi, -0x548(%rbp)	 RIP: 4367f0	 Bytes: 7
  %loadMem_4367f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4367f0 = call %struct.Memory* @routine_movq__rsi__MINUS0x548__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4367f0)
  store %struct.Memory* %call_4367f0, %struct.Memory** %MEMORY

  ; Code: callq .strlen_plt	 RIP: 4367f7	 Bytes: 5
  %loadMem1_4367f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4367f7 = call %struct.Memory* @routine_callq_.strlen_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4367f7, i64 -219079, i64 5, i64 5)
  store %struct.Memory* %call1_4367f7, %struct.Memory** %MEMORY

  %loadMem2_4367f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4367f7 = load i64, i64* %3
  %call2_4367f7 = call %struct.Memory* @ext_strlen(%struct.State* %0, i64  %loadPC_4367f7, %struct.Memory* %loadMem2_4367f7)
  store %struct.Memory* %call2_4367f7, %struct.Memory** %MEMORY

  ; Code: movq -0x540(%rbp), %rdx	 RIP: 4367fc	 Bytes: 7
  %loadMem_4367fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4367fc = call %struct.Memory* @routine_movq_MINUS0x540__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4367fc)
  store %struct.Memory* %call_4367fc, %struct.Memory** %MEMORY

  ; Code: subq %rax, %rdx	 RIP: 436803	 Bytes: 3
  %loadMem_436803 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436803 = call %struct.Memory* @routine_subq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436803)
  store %struct.Memory* %call_436803, %struct.Memory** %MEMORY

  ; Code: movl %edx, %ecx	 RIP: 436806	 Bytes: 2
  %loadMem_436806 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436806 = call %struct.Memory* @routine_movl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436806)
  store %struct.Memory* %call_436806, %struct.Memory** %MEMORY

  ; Code: movl -0x534(%rbp), %r8d	 RIP: 436808	 Bytes: 7
  %loadMem_436808 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436808 = call %struct.Memory* @routine_movl_MINUS0x534__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436808)
  store %struct.Memory* %call_436808, %struct.Memory** %MEMORY

  ; Code: cmpl %ecx, %r8d	 RIP: 43680f	 Bytes: 3
  %loadMem_43680f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43680f = call %struct.Memory* @routine_cmpl__ecx___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43680f)
  store %struct.Memory* %call_43680f, %struct.Memory** %MEMORY

  ; Code: jle .L_436825	 RIP: 436812	 Bytes: 6
  %loadMem_436812 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436812 = call %struct.Memory* @routine_jle_.L_436825(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436812, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_436812, %struct.Memory** %MEMORY

  %loadBr_436812 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_436812 = icmp eq i8 %loadBr_436812, 1
  br i1 %cmpBr_436812, label %block_.L_436825, label %block_436818

block_436818:
  ; Code: xorl %eax, %eax	 RIP: 436818	 Bytes: 2
  %loadMem_436818 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436818 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436818)
  store %struct.Memory* %call_436818, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x54c(%rbp)	 RIP: 43681a	 Bytes: 6
  %loadMem_43681a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43681a = call %struct.Memory* @routine_movl__eax__MINUS0x54c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43681a)
  store %struct.Memory* %call_43681a, %struct.Memory** %MEMORY

  ; Code: jmpq .L_436851	 RIP: 436820	 Bytes: 5
  %loadMem_436820 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436820 = call %struct.Memory* @routine_jmpq_.L_436851(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436820, i64 49, i64 5)
  store %struct.Memory* %call_436820, %struct.Memory** %MEMORY

  br label %block_.L_436851

  ; Code: .L_436825:	 RIP: 436825	 Bytes: 0
block_.L_436825:

  ; Code: movl $0x4f, %eax	 RIP: 436825	 Bytes: 5
  %loadMem_436825 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436825 = call %struct.Memory* @routine_movl__0x4f___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436825)
  store %struct.Memory* %call_436825, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 43682a	 Bytes: 2
  %loadMem_43682a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43682a = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43682a)
  store %struct.Memory* %call_43682a, %struct.Memory** %MEMORY

  ; Code: leaq -0x4b0(%rbp), %rdi	 RIP: 43682c	 Bytes: 7
  %loadMem_43682c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43682c = call %struct.Memory* @routine_leaq_MINUS0x4b0__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43682c)
  store %struct.Memory* %call_43682c, %struct.Memory** %MEMORY

  ; Code: movq %rcx, -0x558(%rbp)	 RIP: 436833	 Bytes: 7
  %loadMem_436833 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436833 = call %struct.Memory* @routine_movq__rcx__MINUS0x558__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436833)
  store %struct.Memory* %call_436833, %struct.Memory** %MEMORY

  ; Code: callq .strlen_plt	 RIP: 43683a	 Bytes: 5
  %loadMem1_43683a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43683a = call %struct.Memory* @routine_callq_.strlen_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43683a, i64 -219146, i64 5, i64 5)
  store %struct.Memory* %call1_43683a, %struct.Memory** %MEMORY

  %loadMem2_43683a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43683a = load i64, i64* %3
  %call2_43683a = call %struct.Memory* @ext_strlen(%struct.State* %0, i64  %loadPC_43683a, %struct.Memory* %loadMem2_43683a)
  store %struct.Memory* %call2_43683a, %struct.Memory** %MEMORY

  ; Code: movq -0x558(%rbp), %rcx	 RIP: 43683f	 Bytes: 7
  %loadMem_43683f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43683f = call %struct.Memory* @routine_movq_MINUS0x558__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43683f)
  store %struct.Memory* %call_43683f, %struct.Memory** %MEMORY

  ; Code: subq %rax, %rcx	 RIP: 436846	 Bytes: 3
  %loadMem_436846 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436846 = call %struct.Memory* @routine_subq__rax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436846)
  store %struct.Memory* %call_436846, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 436849	 Bytes: 2
  %loadMem_436849 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436849 = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436849)
  store %struct.Memory* %call_436849, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x54c(%rbp)	 RIP: 43684b	 Bytes: 6
  %loadMem_43684b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43684b = call %struct.Memory* @routine_movl__edx__MINUS0x54c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43684b)
  store %struct.Memory* %call_43684b, %struct.Memory** %MEMORY

  ; Code: .L_436851:	 RIP: 436851	 Bytes: 0
  br label %block_.L_436851
block_.L_436851:

  ; Code: movl -0x54c(%rbp), %eax	 RIP: 436851	 Bytes: 6
  %loadMem_436851 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436851 = call %struct.Memory* @routine_movl_MINUS0x54c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436851)
  store %struct.Memory* %call_436851, %struct.Memory** %MEMORY

  ; Code: movq $0x4c08b6, %rsi	 RIP: 436857	 Bytes: 10
  %loadMem_436857 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436857 = call %struct.Memory* @routine_movq__0x4c08b6___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436857)
  store %struct.Memory* %call_436857, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 436861	 Bytes: 3
  %loadMem_436861 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436861 = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436861)
  store %struct.Memory* %call_436861, %struct.Memory** %MEMORY

  ; Code: movq -0x548(%rbp), %rdi	 RIP: 436864	 Bytes: 7
  %loadMem_436864 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436864 = call %struct.Memory* @routine_movq_MINUS0x548__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436864)
  store %struct.Memory* %call_436864, %struct.Memory** %MEMORY

  ; Code: callq .strncat_plt	 RIP: 43686b	 Bytes: 5
  %loadMem1_43686b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43686b = call %struct.Memory* @routine_callq_.strncat_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43686b, i64 -219083, i64 5, i64 5)
  store %struct.Memory* %call1_43686b, %struct.Memory** %MEMORY

  %loadMem2_43686b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43686b = load i64, i64* %3
  %call2_43686b = call %struct.Memory* @sub_4010a0.strncat_plt(%struct.State* %0, i64  %loadPC_43686b, %struct.Memory* %loadMem2_43686b)
  store %struct.Memory* %call2_43686b, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x560(%rbp)	 RIP: 436870	 Bytes: 7
  %loadMem_436870 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436870 = call %struct.Memory* @routine_movq__rax__MINUS0x560__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436870)
  store %struct.Memory* %call_436870, %struct.Memory** %MEMORY

  ; Code: jmpq .L_436923	 RIP: 436877	 Bytes: 5
  %loadMem_436877 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436877 = call %struct.Memory* @routine_jmpq_.L_436923(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436877, i64 172, i64 5)
  store %struct.Memory* %call_436877, %struct.Memory** %MEMORY

  br label %block_.L_436923

  ; Code: .L_43687c:	 RIP: 43687c	 Bytes: 0
block_.L_43687c:

  ; Code: xorl %eax, %eax	 RIP: 43687c	 Bytes: 2
  %loadMem_43687c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43687c = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43687c)
  store %struct.Memory* %call_43687c, %struct.Memory** %MEMORY

  ; Code: movl $0x4f, %ecx	 RIP: 43687e	 Bytes: 5
  %loadMem_43687e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43687e = call %struct.Memory* @routine_movl__0x4f___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43687e)
  store %struct.Memory* %call_43687e, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 436883	 Bytes: 2
  %loadMem_436883 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436883 = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436883)
  store %struct.Memory* %call_436883, %struct.Memory** %MEMORY

  ; Code: leaq -0x4b0(%rbp), %rsi	 RIP: 436885	 Bytes: 7
  %loadMem_436885 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436885 = call %struct.Memory* @routine_leaq_MINUS0x4b0__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436885)
  store %struct.Memory* %call_436885, %struct.Memory** %MEMORY

  ; Code: movq %rsi, %rdi	 RIP: 43688c	 Bytes: 3
  %loadMem_43688c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43688c = call %struct.Memory* @routine_movq__rsi___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43688c)
  store %struct.Memory* %call_43688c, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x564(%rbp)	 RIP: 43688f	 Bytes: 6
  %loadMem_43688f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43688f = call %struct.Memory* @routine_movl__eax__MINUS0x564__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43688f)
  store %struct.Memory* %call_43688f, %struct.Memory** %MEMORY

  ; Code: movq %rdx, -0x570(%rbp)	 RIP: 436895	 Bytes: 7
  %loadMem_436895 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436895 = call %struct.Memory* @routine_movq__rdx__MINUS0x570__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436895)
  store %struct.Memory* %call_436895, %struct.Memory** %MEMORY

  ; Code: movq %rsi, -0x578(%rbp)	 RIP: 43689c	 Bytes: 7
  %loadMem_43689c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43689c = call %struct.Memory* @routine_movq__rsi__MINUS0x578__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43689c)
  store %struct.Memory* %call_43689c, %struct.Memory** %MEMORY

  ; Code: callq .strlen_plt	 RIP: 4368a3	 Bytes: 5
  %loadMem1_4368a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4368a3 = call %struct.Memory* @routine_callq_.strlen_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4368a3, i64 -219251, i64 5, i64 5)
  store %struct.Memory* %call1_4368a3, %struct.Memory** %MEMORY

  %loadMem2_4368a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4368a3 = load i64, i64* %3
  %call2_4368a3 = call %struct.Memory* @ext_strlen(%struct.State* %0, i64  %loadPC_4368a3, %struct.Memory* %loadMem2_4368a3)
  store %struct.Memory* %call2_4368a3, %struct.Memory** %MEMORY

  ; Code: movq -0x570(%rbp), %rdx	 RIP: 4368a8	 Bytes: 7
  %loadMem_4368a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4368a8 = call %struct.Memory* @routine_movq_MINUS0x570__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4368a8)
  store %struct.Memory* %call_4368a8, %struct.Memory** %MEMORY

  ; Code: subq %rax, %rdx	 RIP: 4368af	 Bytes: 3
  %loadMem_4368af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4368af = call %struct.Memory* @routine_subq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4368af)
  store %struct.Memory* %call_4368af, %struct.Memory** %MEMORY

  ; Code: movl %edx, %ecx	 RIP: 4368b2	 Bytes: 2
  %loadMem_4368b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4368b2 = call %struct.Memory* @routine_movl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4368b2)
  store %struct.Memory* %call_4368b2, %struct.Memory** %MEMORY

  ; Code: movl -0x564(%rbp), %r8d	 RIP: 4368b4	 Bytes: 7
  %loadMem_4368b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4368b4 = call %struct.Memory* @routine_movl_MINUS0x564__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4368b4)
  store %struct.Memory* %call_4368b4, %struct.Memory** %MEMORY

  ; Code: cmpl %ecx, %r8d	 RIP: 4368bb	 Bytes: 3
  %loadMem_4368bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4368bb = call %struct.Memory* @routine_cmpl__ecx___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4368bb)
  store %struct.Memory* %call_4368bb, %struct.Memory** %MEMORY

  ; Code: jle .L_4368d1	 RIP: 4368be	 Bytes: 6
  %loadMem_4368be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4368be = call %struct.Memory* @routine_jle_.L_4368d1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4368be, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_4368be, %struct.Memory** %MEMORY

  %loadBr_4368be = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4368be = icmp eq i8 %loadBr_4368be, 1
  br i1 %cmpBr_4368be, label %block_.L_4368d1, label %block_4368c4

block_4368c4:
  ; Code: xorl %eax, %eax	 RIP: 4368c4	 Bytes: 2
  %loadMem_4368c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4368c4 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4368c4)
  store %struct.Memory* %call_4368c4, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x57c(%rbp)	 RIP: 4368c6	 Bytes: 6
  %loadMem_4368c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4368c6 = call %struct.Memory* @routine_movl__eax__MINUS0x57c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4368c6)
  store %struct.Memory* %call_4368c6, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4368fd	 RIP: 4368cc	 Bytes: 5
  %loadMem_4368cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4368cc = call %struct.Memory* @routine_jmpq_.L_4368fd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4368cc, i64 49, i64 5)
  store %struct.Memory* %call_4368cc, %struct.Memory** %MEMORY

  br label %block_.L_4368fd

  ; Code: .L_4368d1:	 RIP: 4368d1	 Bytes: 0
block_.L_4368d1:

  ; Code: movl $0x4f, %eax	 RIP: 4368d1	 Bytes: 5
  %loadMem_4368d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4368d1 = call %struct.Memory* @routine_movl__0x4f___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4368d1)
  store %struct.Memory* %call_4368d1, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 4368d6	 Bytes: 2
  %loadMem_4368d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4368d6 = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4368d6)
  store %struct.Memory* %call_4368d6, %struct.Memory** %MEMORY

  ; Code: leaq -0x4b0(%rbp), %rdi	 RIP: 4368d8	 Bytes: 7
  %loadMem_4368d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4368d8 = call %struct.Memory* @routine_leaq_MINUS0x4b0__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4368d8)
  store %struct.Memory* %call_4368d8, %struct.Memory** %MEMORY

  ; Code: movq %rcx, -0x588(%rbp)	 RIP: 4368df	 Bytes: 7
  %loadMem_4368df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4368df = call %struct.Memory* @routine_movq__rcx__MINUS0x588__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4368df)
  store %struct.Memory* %call_4368df, %struct.Memory** %MEMORY

  ; Code: callq .strlen_plt	 RIP: 4368e6	 Bytes: 5
  %loadMem1_4368e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4368e6 = call %struct.Memory* @routine_callq_.strlen_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4368e6, i64 -219318, i64 5, i64 5)
  store %struct.Memory* %call1_4368e6, %struct.Memory** %MEMORY

  %loadMem2_4368e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4368e6 = load i64, i64* %3
  %call2_4368e6 = call %struct.Memory* @ext_strlen(%struct.State* %0, i64  %loadPC_4368e6, %struct.Memory* %loadMem2_4368e6)
  store %struct.Memory* %call2_4368e6, %struct.Memory** %MEMORY

  ; Code: movq -0x588(%rbp), %rcx	 RIP: 4368eb	 Bytes: 7
  %loadMem_4368eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4368eb = call %struct.Memory* @routine_movq_MINUS0x588__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4368eb)
  store %struct.Memory* %call_4368eb, %struct.Memory** %MEMORY

  ; Code: subq %rax, %rcx	 RIP: 4368f2	 Bytes: 3
  %loadMem_4368f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4368f2 = call %struct.Memory* @routine_subq__rax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4368f2)
  store %struct.Memory* %call_4368f2, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 4368f5	 Bytes: 2
  %loadMem_4368f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4368f5 = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4368f5)
  store %struct.Memory* %call_4368f5, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x57c(%rbp)	 RIP: 4368f7	 Bytes: 6
  %loadMem_4368f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4368f7 = call %struct.Memory* @routine_movl__edx__MINUS0x57c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4368f7)
  store %struct.Memory* %call_4368f7, %struct.Memory** %MEMORY

  ; Code: .L_4368fd:	 RIP: 4368fd	 Bytes: 0
  br label %block_.L_4368fd
block_.L_4368fd:

  ; Code: movl -0x57c(%rbp), %eax	 RIP: 4368fd	 Bytes: 6
  %loadMem_4368fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4368fd = call %struct.Memory* @routine_movl_MINUS0x57c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4368fd)
  store %struct.Memory* %call_4368fd, %struct.Memory** %MEMORY

  ; Code: movq $0x4c08ba, %rsi	 RIP: 436903	 Bytes: 10
  %loadMem_436903 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436903 = call %struct.Memory* @routine_movq__0x4c08ba___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436903)
  store %struct.Memory* %call_436903, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 43690d	 Bytes: 3
  %loadMem_43690d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43690d = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43690d)
  store %struct.Memory* %call_43690d, %struct.Memory** %MEMORY

  ; Code: movq -0x578(%rbp), %rdi	 RIP: 436910	 Bytes: 7
  %loadMem_436910 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436910 = call %struct.Memory* @routine_movq_MINUS0x578__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436910)
  store %struct.Memory* %call_436910, %struct.Memory** %MEMORY

  ; Code: callq .strncat_plt	 RIP: 436917	 Bytes: 5
  %loadMem1_436917 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_436917 = call %struct.Memory* @routine_callq_.strncat_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_436917, i64 -219255, i64 5, i64 5)
  store %struct.Memory* %call1_436917, %struct.Memory** %MEMORY

  %loadMem2_436917 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_436917 = load i64, i64* %3
  %call2_436917 = call %struct.Memory* @sub_4010a0.strncat_plt(%struct.State* %0, i64  %loadPC_436917, %struct.Memory* %loadMem2_436917)
  store %struct.Memory* %call2_436917, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x590(%rbp)	 RIP: 43691c	 Bytes: 7
  %loadMem_43691c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43691c = call %struct.Memory* @routine_movq__rax__MINUS0x590__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43691c)
  store %struct.Memory* %call_43691c, %struct.Memory** %MEMORY

  ; Code: .L_436923:	 RIP: 436923	 Bytes: 0
  br label %block_.L_436923
block_.L_436923:

  ; Code: jmpq .L_436928	 RIP: 436923	 Bytes: 5
  %loadMem_436923 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436923 = call %struct.Memory* @routine_jmpq_.L_436928(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436923, i64 5, i64 5)
  store %struct.Memory* %call_436923, %struct.Memory** %MEMORY

  br label %block_.L_436928

  ; Code: .L_436928:	 RIP: 436928	 Bytes: 0
block_.L_436928:

  ; Code: movl -0x4b4(%rbp), %eax	 RIP: 436928	 Bytes: 6
  %loadMem_436928 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436928 = call %struct.Memory* @routine_movl_MINUS0x4b4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436928)
  store %struct.Memory* %call_436928, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 43692e	 Bytes: 3
  %loadMem_43692e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43692e = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43692e)
  store %struct.Memory* %call_43692e, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4b4(%rbp)	 RIP: 436931	 Bytes: 6
  %loadMem_436931 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436931 = call %struct.Memory* @routine_movl__eax__MINUS0x4b4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436931)
  store %struct.Memory* %call_436931, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4367a1	 RIP: 436937	 Bytes: 5
  %loadMem_436937 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436937 = call %struct.Memory* @routine_jmpq_.L_4367a1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436937, i64 -406, i64 5)
  store %struct.Memory* %call_436937, %struct.Memory** %MEMORY

  br label %block_.L_4367a1

  ; Code: .L_43693c:	 RIP: 43693c	 Bytes: 0
block_.L_43693c:

  ; Code: xorl %eax, %eax	 RIP: 43693c	 Bytes: 2
  %loadMem_43693c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43693c = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43693c)
  store %struct.Memory* %call_43693c, %struct.Memory** %MEMORY

  ; Code: movl $0x4f, %ecx	 RIP: 43693e	 Bytes: 5
  %loadMem_43693e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43693e = call %struct.Memory* @routine_movl__0x4f___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43693e)
  store %struct.Memory* %call_43693e, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 436943	 Bytes: 2
  %loadMem_436943 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436943 = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436943)
  store %struct.Memory* %call_436943, %struct.Memory** %MEMORY

  ; Code: leaq -0x4b0(%rbp), %rsi	 RIP: 436945	 Bytes: 7
  %loadMem_436945 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436945 = call %struct.Memory* @routine_leaq_MINUS0x4b0__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436945)
  store %struct.Memory* %call_436945, %struct.Memory** %MEMORY

  ; Code: movq %rsi, %rdi	 RIP: 43694c	 Bytes: 3
  %loadMem_43694c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43694c = call %struct.Memory* @routine_movq__rsi___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43694c)
  store %struct.Memory* %call_43694c, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x594(%rbp)	 RIP: 43694f	 Bytes: 6
  %loadMem_43694f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43694f = call %struct.Memory* @routine_movl__eax__MINUS0x594__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43694f)
  store %struct.Memory* %call_43694f, %struct.Memory** %MEMORY

  ; Code: movq %rdx, -0x5a0(%rbp)	 RIP: 436955	 Bytes: 7
  %loadMem_436955 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436955 = call %struct.Memory* @routine_movq__rdx__MINUS0x5a0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436955)
  store %struct.Memory* %call_436955, %struct.Memory** %MEMORY

  ; Code: movq %rsi, -0x5a8(%rbp)	 RIP: 43695c	 Bytes: 7
  %loadMem_43695c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43695c = call %struct.Memory* @routine_movq__rsi__MINUS0x5a8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43695c)
  store %struct.Memory* %call_43695c, %struct.Memory** %MEMORY

  ; Code: callq .strlen_plt	 RIP: 436963	 Bytes: 5
  %loadMem1_436963 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_436963 = call %struct.Memory* @routine_callq_.strlen_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_436963, i64 -219443, i64 5, i64 5)
  store %struct.Memory* %call1_436963, %struct.Memory** %MEMORY

  %loadMem2_436963 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_436963 = load i64, i64* %3
  %call2_436963 = call %struct.Memory* @ext_strlen(%struct.State* %0, i64  %loadPC_436963, %struct.Memory* %loadMem2_436963)
  store %struct.Memory* %call2_436963, %struct.Memory** %MEMORY

  ; Code: movq -0x5a0(%rbp), %rdx	 RIP: 436968	 Bytes: 7
  %loadMem_436968 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436968 = call %struct.Memory* @routine_movq_MINUS0x5a0__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436968)
  store %struct.Memory* %call_436968, %struct.Memory** %MEMORY

  ; Code: subq %rax, %rdx	 RIP: 43696f	 Bytes: 3
  %loadMem_43696f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43696f = call %struct.Memory* @routine_subq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43696f)
  store %struct.Memory* %call_43696f, %struct.Memory** %MEMORY

  ; Code: movl %edx, %ecx	 RIP: 436972	 Bytes: 2
  %loadMem_436972 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436972 = call %struct.Memory* @routine_movl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436972)
  store %struct.Memory* %call_436972, %struct.Memory** %MEMORY

  ; Code: movl -0x594(%rbp), %r8d	 RIP: 436974	 Bytes: 7
  %loadMem_436974 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436974 = call %struct.Memory* @routine_movl_MINUS0x594__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436974)
  store %struct.Memory* %call_436974, %struct.Memory** %MEMORY

  ; Code: cmpl %ecx, %r8d	 RIP: 43697b	 Bytes: 3
  %loadMem_43697b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43697b = call %struct.Memory* @routine_cmpl__ecx___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43697b)
  store %struct.Memory* %call_43697b, %struct.Memory** %MEMORY

  ; Code: jle .L_436991	 RIP: 43697e	 Bytes: 6
  %loadMem_43697e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43697e = call %struct.Memory* @routine_jle_.L_436991(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43697e, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_43697e, %struct.Memory** %MEMORY

  %loadBr_43697e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43697e = icmp eq i8 %loadBr_43697e, 1
  br i1 %cmpBr_43697e, label %block_.L_436991, label %block_436984

block_436984:
  ; Code: xorl %eax, %eax	 RIP: 436984	 Bytes: 2
  %loadMem_436984 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436984 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436984)
  store %struct.Memory* %call_436984, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x5ac(%rbp)	 RIP: 436986	 Bytes: 6
  %loadMem_436986 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436986 = call %struct.Memory* @routine_movl__eax__MINUS0x5ac__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436986)
  store %struct.Memory* %call_436986, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4369bd	 RIP: 43698c	 Bytes: 5
  %loadMem_43698c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43698c = call %struct.Memory* @routine_jmpq_.L_4369bd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43698c, i64 49, i64 5)
  store %struct.Memory* %call_43698c, %struct.Memory** %MEMORY

  br label %block_.L_4369bd

  ; Code: .L_436991:	 RIP: 436991	 Bytes: 0
block_.L_436991:

  ; Code: movl $0x4f, %eax	 RIP: 436991	 Bytes: 5
  %loadMem_436991 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436991 = call %struct.Memory* @routine_movl__0x4f___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436991)
  store %struct.Memory* %call_436991, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 436996	 Bytes: 2
  %loadMem_436996 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436996 = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436996)
  store %struct.Memory* %call_436996, %struct.Memory** %MEMORY

  ; Code: leaq -0x4b0(%rbp), %rdi	 RIP: 436998	 Bytes: 7
  %loadMem_436998 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436998 = call %struct.Memory* @routine_leaq_MINUS0x4b0__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436998)
  store %struct.Memory* %call_436998, %struct.Memory** %MEMORY

  ; Code: movq %rcx, -0x5b8(%rbp)	 RIP: 43699f	 Bytes: 7
  %loadMem_43699f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43699f = call %struct.Memory* @routine_movq__rcx__MINUS0x5b8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43699f)
  store %struct.Memory* %call_43699f, %struct.Memory** %MEMORY

  ; Code: callq .strlen_plt	 RIP: 4369a6	 Bytes: 5
  %loadMem1_4369a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4369a6 = call %struct.Memory* @routine_callq_.strlen_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4369a6, i64 -219510, i64 5, i64 5)
  store %struct.Memory* %call1_4369a6, %struct.Memory** %MEMORY

  %loadMem2_4369a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4369a6 = load i64, i64* %3
  %call2_4369a6 = call %struct.Memory* @ext_strlen(%struct.State* %0, i64  %loadPC_4369a6, %struct.Memory* %loadMem2_4369a6)
  store %struct.Memory* %call2_4369a6, %struct.Memory** %MEMORY

  ; Code: movq -0x5b8(%rbp), %rcx	 RIP: 4369ab	 Bytes: 7
  %loadMem_4369ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4369ab = call %struct.Memory* @routine_movq_MINUS0x5b8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4369ab)
  store %struct.Memory* %call_4369ab, %struct.Memory** %MEMORY

  ; Code: subq %rax, %rcx	 RIP: 4369b2	 Bytes: 3
  %loadMem_4369b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4369b2 = call %struct.Memory* @routine_subq__rax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4369b2)
  store %struct.Memory* %call_4369b2, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 4369b5	 Bytes: 2
  %loadMem_4369b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4369b5 = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4369b5)
  store %struct.Memory* %call_4369b5, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x5ac(%rbp)	 RIP: 4369b7	 Bytes: 6
  %loadMem_4369b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4369b7 = call %struct.Memory* @routine_movl__edx__MINUS0x5ac__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4369b7)
  store %struct.Memory* %call_4369b7, %struct.Memory** %MEMORY

  ; Code: .L_4369bd:	 RIP: 4369bd	 Bytes: 0
  br label %block_.L_4369bd
block_.L_4369bd:

  ; Code: movl -0x5ac(%rbp), %eax	 RIP: 4369bd	 Bytes: 6
  %loadMem_4369bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4369bd = call %struct.Memory* @routine_movl_MINUS0x5ac__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4369bd)
  store %struct.Memory* %call_4369bd, %struct.Memory** %MEMORY

  ; Code: movq $0x4c08bd, %rsi	 RIP: 4369c3	 Bytes: 10
  %loadMem_4369c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4369c3 = call %struct.Memory* @routine_movq__0x4c08bd___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4369c3)
  store %struct.Memory* %call_4369c3, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rdx	 RIP: 4369cd	 Bytes: 3
  %loadMem_4369cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4369cd = call %struct.Memory* @routine_movslq__eax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4369cd)
  store %struct.Memory* %call_4369cd, %struct.Memory** %MEMORY

  ; Code: movq -0x5a8(%rbp), %rdi	 RIP: 4369d0	 Bytes: 7
  %loadMem_4369d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4369d0 = call %struct.Memory* @routine_movq_MINUS0x5a8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4369d0)
  store %struct.Memory* %call_4369d0, %struct.Memory** %MEMORY

  ; Code: callq .strncat_plt	 RIP: 4369d7	 Bytes: 5
  %loadMem1_4369d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4369d7 = call %struct.Memory* @routine_callq_.strncat_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4369d7, i64 -219447, i64 5, i64 5)
  store %struct.Memory* %call1_4369d7, %struct.Memory** %MEMORY

  %loadMem2_4369d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4369d7 = load i64, i64* %3
  %call2_4369d7 = call %struct.Memory* @sub_4010a0.strncat_plt(%struct.State* %0, i64  %loadPC_4369d7, %struct.Memory* %loadMem2_4369d7)
  store %struct.Memory* %call2_4369d7, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x5c0(%rbp)	 RIP: 4369dc	 Bytes: 7
  %loadMem_4369dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4369dc = call %struct.Memory* @routine_movq__rax__MINUS0x5c0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4369dc)
  store %struct.Memory* %call_4369dc, %struct.Memory** %MEMORY

  ; Code: movl -0x4b8(%rbp), %eax	 RIP: 4369e3	 Bytes: 6
  %loadMem_4369e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4369e3 = call %struct.Memory* @routine_movl_MINUS0x4b8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4369e3)
  store %struct.Memory* %call_4369e3, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4369e9	 Bytes: 3
  %loadMem_4369e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4369e9 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4369e9)
  store %struct.Memory* %call_4369e9, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4b8(%rbp)	 RIP: 4369ec	 Bytes: 6
  %loadMem_4369ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4369ec = call %struct.Memory* @routine_movl__eax__MINUS0x4b8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4369ec)
  store %struct.Memory* %call_4369ec, %struct.Memory** %MEMORY

  ; Code: jmpq .L_43678a	 RIP: 4369f2	 Bytes: 5
  %loadMem_4369f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4369f2 = call %struct.Memory* @routine_jmpq_.L_43678a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4369f2, i64 -616, i64 5)
  store %struct.Memory* %call_4369f2, %struct.Memory** %MEMORY

  br label %block_.L_43678a

  ; Code: .L_4369f7:	 RIP: 4369f7	 Bytes: 0
block_.L_4369f7:

  ; Code: movq 0x6cb8f8, %rax	 RIP: 4369f7	 Bytes: 8
  %loadMem_4369f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4369f7 = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4369f7)
  store %struct.Memory* %call_4369f7, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x524(%rax)	 RIP: 4369ff	 Bytes: 7
  %loadMem_4369ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4369ff = call %struct.Memory* @routine_cmpl__0x0__0x524__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4369ff)
  store %struct.Memory* %call_4369ff, %struct.Memory** %MEMORY

  ; Code: je .L_436b22	 RIP: 436a06	 Bytes: 6
  %loadMem_436a06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436a06 = call %struct.Memory* @routine_je_.L_436b22(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436a06, i8* %BRANCH_TAKEN, i64 284, i64 6, i64 6)
  store %struct.Memory* %call_436a06, %struct.Memory** %MEMORY

  %loadBr_436a06 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_436a06 = icmp eq i8 %loadBr_436a06, 1
  br i1 %cmpBr_436a06, label %block_.L_436b22, label %block_436a0c

block_436a0c:
  ; Code: leaq -0x4b0(%rbp), %rdx	 RIP: 436a0c	 Bytes: 7
  %loadMem_436a0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436a0c = call %struct.Memory* @routine_leaq_MINUS0x4b0__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436a0c)
  store %struct.Memory* %call_436a0c, %struct.Memory** %MEMORY

  ; Code: movq 0x6cbe00, %rdi	 RIP: 436a13	 Bytes: 8
  %loadMem_436a13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436a13 = call %struct.Memory* @routine_movq_0x6cbe00___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436a13)
  store %struct.Memory* %call_436a13, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rax	 RIP: 436a1b	 Bytes: 8
  %loadMem_436a1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436a1b = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436a1b)
  store %struct.Memory* %call_436a1b, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%rax), %ecx	 RIP: 436a23	 Bytes: 3
  %loadMem_436a23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436a23 = call %struct.Memory* @routine_movl_0xc__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436a23)
  store %struct.Memory* %call_436a23, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rax	 RIP: 436a26	 Bytes: 8
  %loadMem_436a26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436a26 = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436a26)
  store %struct.Memory* %call_436a26, %struct.Memory** %MEMORY

  ; Code: movl 0x10(%rax), %r8d	 RIP: 436a2e	 Bytes: 4
  %loadMem_436a2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436a2e = call %struct.Memory* @routine_movl_0x10__rax____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436a2e)
  store %struct.Memory* %call_436a2e, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rax	 RIP: 436a32	 Bytes: 8
  %loadMem_436a32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436a32 = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436a32)
  store %struct.Memory* %call_436a32, %struct.Memory** %MEMORY

  ; Code: movl 0x4d8(%rax), %esi	 RIP: 436a3a	 Bytes: 6
  %loadMem_436a3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436a3a = call %struct.Memory* @routine_movl_0x4d8__rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436a3a)
  store %struct.Memory* %call_436a3a, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rax	 RIP: 436a40	 Bytes: 8
  %loadMem_436a40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436a40 = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436a40)
  store %struct.Memory* %call_436a40, %struct.Memory** %MEMORY

  ; Code: addl 0x4dc(%rax), %esi	 RIP: 436a48	 Bytes: 6
  %loadMem_436a48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436a48 = call %struct.Memory* @routine_addl_0x4dc__rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436a48)
  store %struct.Memory* %call_436a48, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %esi	 RIP: 436a4e	 Bytes: 3
  %loadMem_436a4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436a4e = call %struct.Memory* @routine_cmpl__0x0___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436a4e)
  store %struct.Memory* %call_436a4e, %struct.Memory** %MEMORY

  ; Code: movq %rdx, -0x5c8(%rbp)	 RIP: 436a51	 Bytes: 7
  %loadMem_436a51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436a51 = call %struct.Memory* @routine_movq__rdx__MINUS0x5c8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436a51)
  store %struct.Memory* %call_436a51, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x5d0(%rbp)	 RIP: 436a58	 Bytes: 7
  %loadMem_436a58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436a58 = call %struct.Memory* @routine_movq__rdi__MINUS0x5d0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436a58)
  store %struct.Memory* %call_436a58, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x5d4(%rbp)	 RIP: 436a5f	 Bytes: 6
  %loadMem_436a5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436a5f = call %struct.Memory* @routine_movl__ecx__MINUS0x5d4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436a5f)
  store %struct.Memory* %call_436a5f, %struct.Memory** %MEMORY

  ; Code: movl %r8d, -0x5d8(%rbp)	 RIP: 436a65	 Bytes: 7
  %loadMem_436a65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436a65 = call %struct.Memory* @routine_movl__r8d__MINUS0x5d8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436a65)
  store %struct.Memory* %call_436a65, %struct.Memory** %MEMORY

  ; Code: jge .L_436a7f	 RIP: 436a6c	 Bytes: 6
  %loadMem_436a6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436a6c = call %struct.Memory* @routine_jge_.L_436a7f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436a6c, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_436a6c, %struct.Memory** %MEMORY

  %loadBr_436a6c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_436a6c = icmp eq i8 %loadBr_436a6c, 1
  br i1 %cmpBr_436a6c, label %block_.L_436a7f, label %block_436a72

block_436a72:
  ; Code: xorl %eax, %eax	 RIP: 436a72	 Bytes: 2
  %loadMem_436a72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436a72 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436a72)
  store %struct.Memory* %call_436a72, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x5dc(%rbp)	 RIP: 436a74	 Bytes: 6
  %loadMem_436a74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436a74 = call %struct.Memory* @routine_movl__eax__MINUS0x5dc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436a74)
  store %struct.Memory* %call_436a74, %struct.Memory** %MEMORY

  ; Code: jmpq .L_436ae2	 RIP: 436a7a	 Bytes: 5
  %loadMem_436a7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436a7a = call %struct.Memory* @routine_jmpq_.L_436ae2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436a7a, i64 104, i64 5)
  store %struct.Memory* %call_436a7a, %struct.Memory** %MEMORY

  br label %block_.L_436ae2

  ; Code: .L_436a7f:	 RIP: 436a7f	 Bytes: 0
block_.L_436a7f:

  ; Code: movq 0x6cb8f8, %rax	 RIP: 436a7f	 Bytes: 8
  %loadMem_436a7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436a7f = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436a7f)
  store %struct.Memory* %call_436a7f, %struct.Memory** %MEMORY

  ; Code: movl 0x4d8(%rax), %ecx	 RIP: 436a87	 Bytes: 6
  %loadMem_436a87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436a87 = call %struct.Memory* @routine_movl_0x4d8__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436a87)
  store %struct.Memory* %call_436a87, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rax	 RIP: 436a8d	 Bytes: 8
  %loadMem_436a8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436a8d = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436a8d)
  store %struct.Memory* %call_436a8d, %struct.Memory** %MEMORY

  ; Code: addl 0x4dc(%rax), %ecx	 RIP: 436a95	 Bytes: 6
  %loadMem_436a95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436a95 = call %struct.Memory* @routine_addl_0x4dc__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436a95)
  store %struct.Memory* %call_436a95, %struct.Memory** %MEMORY

  ; Code: cmpl $0x33, %ecx	 RIP: 436a9b	 Bytes: 3
  %loadMem_436a9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436a9b = call %struct.Memory* @routine_cmpl__0x33___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436a9b)
  store %struct.Memory* %call_436a9b, %struct.Memory** %MEMORY

  ; Code: jle .L_436ab4	 RIP: 436a9e	 Bytes: 6
  %loadMem_436a9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436a9e = call %struct.Memory* @routine_jle_.L_436ab4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436a9e, i8* %BRANCH_TAKEN, i64 22, i64 6, i64 6)
  store %struct.Memory* %call_436a9e, %struct.Memory** %MEMORY

  %loadBr_436a9e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_436a9e = icmp eq i8 %loadBr_436a9e, 1
  br i1 %cmpBr_436a9e, label %block_.L_436ab4, label %block_436aa4

block_436aa4:
  ; Code: movl $0x33, %eax	 RIP: 436aa4	 Bytes: 5
  %loadMem_436aa4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436aa4 = call %struct.Memory* @routine_movl__0x33___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436aa4)
  store %struct.Memory* %call_436aa4, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x5e0(%rbp)	 RIP: 436aa9	 Bytes: 6
  %loadMem_436aa9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436aa9 = call %struct.Memory* @routine_movl__eax__MINUS0x5e0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436aa9)
  store %struct.Memory* %call_436aa9, %struct.Memory** %MEMORY

  ; Code: jmpq .L_436ad6	 RIP: 436aaf	 Bytes: 5
  %loadMem_436aaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436aaf = call %struct.Memory* @routine_jmpq_.L_436ad6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436aaf, i64 39, i64 5)
  store %struct.Memory* %call_436aaf, %struct.Memory** %MEMORY

  br label %block_.L_436ad6

  ; Code: .L_436ab4:	 RIP: 436ab4	 Bytes: 0
block_.L_436ab4:

  ; Code: movq 0x6cb8f8, %rax	 RIP: 436ab4	 Bytes: 8
  %loadMem_436ab4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436ab4 = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436ab4)
  store %struct.Memory* %call_436ab4, %struct.Memory** %MEMORY

  ; Code: movl 0x4d8(%rax), %ecx	 RIP: 436abc	 Bytes: 6
  %loadMem_436abc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436abc = call %struct.Memory* @routine_movl_0x4d8__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436abc)
  store %struct.Memory* %call_436abc, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rax	 RIP: 436ac2	 Bytes: 8
  %loadMem_436ac2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436ac2 = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436ac2)
  store %struct.Memory* %call_436ac2, %struct.Memory** %MEMORY

  ; Code: addl 0x4dc(%rax), %ecx	 RIP: 436aca	 Bytes: 6
  %loadMem_436aca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436aca = call %struct.Memory* @routine_addl_0x4dc__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436aca)
  store %struct.Memory* %call_436aca, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x5e0(%rbp)	 RIP: 436ad0	 Bytes: 6
  %loadMem_436ad0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436ad0 = call %struct.Memory* @routine_movl__ecx__MINUS0x5e0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436ad0)
  store %struct.Memory* %call_436ad0, %struct.Memory** %MEMORY

  ; Code: .L_436ad6:	 RIP: 436ad6	 Bytes: 0
  br label %block_.L_436ad6
block_.L_436ad6:

  ; Code: movl -0x5e0(%rbp), %eax	 RIP: 436ad6	 Bytes: 6
  %loadMem_436ad6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436ad6 = call %struct.Memory* @routine_movl_MINUS0x5e0__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436ad6)
  store %struct.Memory* %call_436ad6, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x5dc(%rbp)	 RIP: 436adc	 Bytes: 6
  %loadMem_436adc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436adc = call %struct.Memory* @routine_movl__eax__MINUS0x5dc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436adc)
  store %struct.Memory* %call_436adc, %struct.Memory** %MEMORY

  ; Code: .L_436ae2:	 RIP: 436ae2	 Bytes: 0
  br label %block_.L_436ae2
block_.L_436ae2:

  ; Code: movl -0x5dc(%rbp), %eax	 RIP: 436ae2	 Bytes: 6
  %loadMem_436ae2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436ae2 = call %struct.Memory* @routine_movl_MINUS0x5dc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436ae2)
  store %struct.Memory* %call_436ae2, %struct.Memory** %MEMORY

  ; Code: movq $0x4c08c0, %rsi	 RIP: 436ae8	 Bytes: 10
  %loadMem_436ae8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436ae8 = call %struct.Memory* @routine_movq__0x4c08c0___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436ae8)
  store %struct.Memory* %call_436ae8, %struct.Memory** %MEMORY

  ; Code: movq -0x5d0(%rbp), %rdi	 RIP: 436af2	 Bytes: 7
  %loadMem_436af2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436af2 = call %struct.Memory* @routine_movq_MINUS0x5d0__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436af2)
  store %struct.Memory* %call_436af2, %struct.Memory** %MEMORY

  ; Code: movq -0x5c8(%rbp), %rdx	 RIP: 436af9	 Bytes: 7
  %loadMem_436af9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436af9 = call %struct.Memory* @routine_movq_MINUS0x5c8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436af9)
  store %struct.Memory* %call_436af9, %struct.Memory** %MEMORY

  ; Code: movl -0x5d4(%rbp), %ecx	 RIP: 436b00	 Bytes: 6
  %loadMem_436b00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436b00 = call %struct.Memory* @routine_movl_MINUS0x5d4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436b00)
  store %struct.Memory* %call_436b00, %struct.Memory** %MEMORY

  ; Code: movl -0x5d8(%rbp), %r8d	 RIP: 436b06	 Bytes: 7
  %loadMem_436b06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436b06 = call %struct.Memory* @routine_movl_MINUS0x5d8__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436b06)
  store %struct.Memory* %call_436b06, %struct.Memory** %MEMORY

  ; Code: movl %eax, %r9d	 RIP: 436b0d	 Bytes: 3
  %loadMem_436b0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436b0d = call %struct.Memory* @routine_movl__eax___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436b0d)
  store %struct.Memory* %call_436b0d, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 436b10	 Bytes: 2
  %loadMem_436b10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436b10 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436b10)
  store %struct.Memory* %call_436b10, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 436b12	 Bytes: 5
  %loadMem1_436b12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_436b12 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_436b12, i64 -219650, i64 5, i64 5)
  store %struct.Memory* %call1_436b12, %struct.Memory** %MEMORY

  %loadMem2_436b12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_436b12 = load i64, i64* %3
  %call2_436b12 = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_436b12, %struct.Memory* %loadMem2_436b12)
  store %struct.Memory* %call2_436b12, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x5e4(%rbp)	 RIP: 436b17	 Bytes: 6
  %loadMem_436b17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436b17 = call %struct.Memory* @routine_movl__eax__MINUS0x5e4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436b17)
  store %struct.Memory* %call_436b17, %struct.Memory** %MEMORY

  ; Code: jmpq .L_436b6e	 RIP: 436b1d	 Bytes: 5
  %loadMem_436b1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436b1d = call %struct.Memory* @routine_jmpq_.L_436b6e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436b1d, i64 81, i64 5)
  store %struct.Memory* %call_436b1d, %struct.Memory** %MEMORY

  br label %block_.L_436b6e

  ; Code: .L_436b22:	 RIP: 436b22	 Bytes: 0
block_.L_436b22:

  ; Code: movq $0x4c08de, %rsi	 RIP: 436b22	 Bytes: 10
  %loadMem_436b22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436b22 = call %struct.Memory* @routine_movq__0x4c08de___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436b22)
  store %struct.Memory* %call_436b22, %struct.Memory** %MEMORY

  ; Code: leaq -0x4b0(%rbp), %rdx	 RIP: 436b2c	 Bytes: 7
  %loadMem_436b2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436b2c = call %struct.Memory* @routine_leaq_MINUS0x4b0__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436b2c)
  store %struct.Memory* %call_436b2c, %struct.Memory** %MEMORY

  ; Code: movq 0x6cbe00, %rdi	 RIP: 436b33	 Bytes: 8
  %loadMem_436b33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436b33 = call %struct.Memory* @routine_movq_0x6cbe00___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436b33)
  store %struct.Memory* %call_436b33, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rax	 RIP: 436b3b	 Bytes: 8
  %loadMem_436b3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436b3b = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436b3b)
  store %struct.Memory* %call_436b3b, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%rax), %ecx	 RIP: 436b43	 Bytes: 3
  %loadMem_436b43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436b43 = call %struct.Memory* @routine_movl_0xc__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436b43)
  store %struct.Memory* %call_436b43, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rax	 RIP: 436b46	 Bytes: 8
  %loadMem_436b46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436b46 = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436b46)
  store %struct.Memory* %call_436b46, %struct.Memory** %MEMORY

  ; Code: movl 0x10(%rax), %r8d	 RIP: 436b4e	 Bytes: 4
  %loadMem_436b4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436b4e = call %struct.Memory* @routine_movl_0x10__rax____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436b4e)
  store %struct.Memory* %call_436b4e, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rax	 RIP: 436b52	 Bytes: 8
  %loadMem_436b52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436b52 = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436b52)
  store %struct.Memory* %call_436b52, %struct.Memory** %MEMORY

  ; Code: movl 0x4d8(%rax), %r9d	 RIP: 436b5a	 Bytes: 7
  %loadMem_436b5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436b5a = call %struct.Memory* @routine_movl_0x4d8__rax____r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436b5a)
  store %struct.Memory* %call_436b5a, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 436b61	 Bytes: 2
  %loadMem_436b61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436b61 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436b61)
  store %struct.Memory* %call_436b61, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 436b63	 Bytes: 5
  %loadMem1_436b63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_436b63 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_436b63, i64 -219731, i64 5, i64 5)
  store %struct.Memory* %call1_436b63, %struct.Memory** %MEMORY

  %loadMem2_436b63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_436b63 = load i64, i64* %3
  %call2_436b63 = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_436b63, %struct.Memory* %loadMem2_436b63)
  store %struct.Memory* %call2_436b63, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x5e8(%rbp)	 RIP: 436b68	 Bytes: 6
  %loadMem_436b68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436b68 = call %struct.Memory* @routine_movl__eax__MINUS0x5e8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436b68)
  store %struct.Memory* %call_436b68, %struct.Memory** %MEMORY

  ; Code: .L_436b6e:	 RIP: 436b6e	 Bytes: 0
  br label %block_.L_436b6e
block_.L_436b6e:

  ; Code: jmpq .L_436c2f	 RIP: 436b6e	 Bytes: 5
  %loadMem_436b6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436b6e = call %struct.Memory* @routine_jmpq_.L_436c2f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436b6e, i64 193, i64 5)
  store %struct.Memory* %call_436b6e, %struct.Memory** %MEMORY

  br label %block_.L_436c2f

  ; Code: .L_436b73:	 RIP: 436b73	 Bytes: 0
block_.L_436b73:

  ; Code: movq 0x6cb8f8, %rax	 RIP: 436b73	 Bytes: 8
  %loadMem_436b73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436b73 = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436b73)
  store %struct.Memory* %call_436b73, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x4d4(%rax)	 RIP: 436b7b	 Bytes: 7
  %loadMem_436b7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436b7b = call %struct.Memory* @routine_cmpl__0x0__0x4d4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436b7b)
  store %struct.Memory* %call_436b7b, %struct.Memory** %MEMORY

  ; Code: jne .L_436bd7	 RIP: 436b82	 Bytes: 6
  %loadMem_436b82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436b82 = call %struct.Memory* @routine_jne_.L_436bd7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436b82, i8* %BRANCH_TAKEN, i64 85, i64 6, i64 6)
  store %struct.Memory* %call_436b82, %struct.Memory** %MEMORY

  %loadBr_436b82 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_436b82 = icmp eq i8 %loadBr_436b82, 1
  br i1 %cmpBr_436b82, label %block_.L_436bd7, label %block_436b88

block_436b88:
  ; Code: movq 0x6cb8f8, %rax	 RIP: 436b88	 Bytes: 8
  %loadMem_436b88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436b88 = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436b88)
  store %struct.Memory* %call_436b88, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x4f8(%rax)	 RIP: 436b90	 Bytes: 7
  %loadMem_436b90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436b90 = call %struct.Memory* @routine_cmpl__0x0__0x4f8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436b90)
  store %struct.Memory* %call_436b90, %struct.Memory** %MEMORY

  ; Code: jne .L_436bd7	 RIP: 436b97	 Bytes: 6
  %loadMem_436b97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436b97 = call %struct.Memory* @routine_jne_.L_436bd7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436b97, i8* %BRANCH_TAKEN, i64 64, i64 6, i64 6)
  store %struct.Memory* %call_436b97, %struct.Memory** %MEMORY

  %loadBr_436b97 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_436b97 = icmp eq i8 %loadBr_436b97, 1
  br i1 %cmpBr_436b97, label %block_.L_436bd7, label %block_436b9d

block_436b9d:
  ; Code: movq $0x4c08fb, %rsi	 RIP: 436b9d	 Bytes: 10
  %loadMem_436b9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436b9d = call %struct.Memory* @routine_movq__0x4c08fb___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436b9d)
  store %struct.Memory* %call_436b9d, %struct.Memory** %MEMORY

  ; Code: movq 0x6cbe00, %rdi	 RIP: 436ba7	 Bytes: 8
  %loadMem_436ba7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436ba7 = call %struct.Memory* @routine_movq_0x6cbe00___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436ba7)
  store %struct.Memory* %call_436ba7, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rax	 RIP: 436baf	 Bytes: 8
  %loadMem_436baf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436baf = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436baf)
  store %struct.Memory* %call_436baf, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%rax), %edx	 RIP: 436bb7	 Bytes: 3
  %loadMem_436bb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436bb7 = call %struct.Memory* @routine_movl_0xc__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436bb7)
  store %struct.Memory* %call_436bb7, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rax	 RIP: 436bba	 Bytes: 8
  %loadMem_436bba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436bba = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436bba)
  store %struct.Memory* %call_436bba, %struct.Memory** %MEMORY

  ; Code: movl 0x10(%rax), %ecx	 RIP: 436bc2	 Bytes: 3
  %loadMem_436bc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436bc2 = call %struct.Memory* @routine_movl_0x10__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436bc2)
  store %struct.Memory* %call_436bc2, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 436bc5	 Bytes: 2
  %loadMem_436bc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436bc5 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436bc5)
  store %struct.Memory* %call_436bc5, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 436bc7	 Bytes: 5
  %loadMem1_436bc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_436bc7 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_436bc7, i64 -219831, i64 5, i64 5)
  store %struct.Memory* %call1_436bc7, %struct.Memory** %MEMORY

  %loadMem2_436bc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_436bc7 = load i64, i64* %3
  %call2_436bc7 = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_436bc7, %struct.Memory* %loadMem2_436bc7)
  store %struct.Memory* %call2_436bc7, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x5ec(%rbp)	 RIP: 436bcc	 Bytes: 6
  %loadMem_436bcc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436bcc = call %struct.Memory* @routine_movl__eax__MINUS0x5ec__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436bcc)
  store %struct.Memory* %call_436bcc, %struct.Memory** %MEMORY

  ; Code: jmpq .L_436c2a	 RIP: 436bd2	 Bytes: 5
  %loadMem_436bd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436bd2 = call %struct.Memory* @routine_jmpq_.L_436c2a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436bd2, i64 88, i64 5)
  store %struct.Memory* %call_436bd2, %struct.Memory** %MEMORY

  br label %block_.L_436c2a

  ; Code: .L_436bd7:	 RIP: 436bd7	 Bytes: 0
block_.L_436bd7:

  ; Code: movq $0x4c0914, %rsi	 RIP: 436bd7	 Bytes: 10
  %loadMem_436bd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436bd7 = call %struct.Memory* @routine_movq__0x4c0914___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436bd7)
  store %struct.Memory* %call_436bd7, %struct.Memory** %MEMORY

  ; Code: movq 0x6cbe00, %rdi	 RIP: 436be1	 Bytes: 8
  %loadMem_436be1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436be1 = call %struct.Memory* @routine_movq_0x6cbe00___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436be1)
  store %struct.Memory* %call_436be1, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rax	 RIP: 436be9	 Bytes: 8
  %loadMem_436be9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436be9 = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436be9)
  store %struct.Memory* %call_436be9, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%rax), %edx	 RIP: 436bf1	 Bytes: 3
  %loadMem_436bf1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436bf1 = call %struct.Memory* @routine_movl_0xc__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436bf1)
  store %struct.Memory* %call_436bf1, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rax	 RIP: 436bf4	 Bytes: 8
  %loadMem_436bf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436bf4 = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436bf4)
  store %struct.Memory* %call_436bf4, %struct.Memory** %MEMORY

  ; Code: movl 0x10(%rax), %ecx	 RIP: 436bfc	 Bytes: 3
  %loadMem_436bfc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436bfc = call %struct.Memory* @routine_movl_0x10__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436bfc)
  store %struct.Memory* %call_436bfc, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rax	 RIP: 436bff	 Bytes: 8
  %loadMem_436bff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436bff = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436bff)
  store %struct.Memory* %call_436bff, %struct.Memory** %MEMORY

  ; Code: movl 0x4fc(%rax), %r8d	 RIP: 436c07	 Bytes: 7
  %loadMem_436c07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436c07 = call %struct.Memory* @routine_movl_0x4fc__rax____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436c07)
  store %struct.Memory* %call_436c07, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rax	 RIP: 436c0e	 Bytes: 8
  %loadMem_436c0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436c0e = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436c0e)
  store %struct.Memory* %call_436c0e, %struct.Memory** %MEMORY

  ; Code: movl 0x500(%rax), %r9d	 RIP: 436c16	 Bytes: 7
  %loadMem_436c16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436c16 = call %struct.Memory* @routine_movl_0x500__rax____r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436c16)
  store %struct.Memory* %call_436c16, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 436c1d	 Bytes: 2
  %loadMem_436c1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436c1d = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436c1d)
  store %struct.Memory* %call_436c1d, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 436c1f	 Bytes: 5
  %loadMem1_436c1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_436c1f = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_436c1f, i64 -219919, i64 5, i64 5)
  store %struct.Memory* %call1_436c1f, %struct.Memory** %MEMORY

  %loadMem2_436c1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_436c1f = load i64, i64* %3
  %call2_436c1f = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_436c1f, %struct.Memory* %loadMem2_436c1f)
  store %struct.Memory* %call2_436c1f, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x5f0(%rbp)	 RIP: 436c24	 Bytes: 6
  %loadMem_436c24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436c24 = call %struct.Memory* @routine_movl__eax__MINUS0x5f0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436c24)
  store %struct.Memory* %call_436c24, %struct.Memory** %MEMORY

  ; Code: .L_436c2a:	 RIP: 436c2a	 Bytes: 0
  br label %block_.L_436c2a
block_.L_436c2a:

  ; Code: jmpq .L_436c2f	 RIP: 436c2a	 Bytes: 5
  %loadMem_436c2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436c2a = call %struct.Memory* @routine_jmpq_.L_436c2f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436c2a, i64 5, i64 5)
  store %struct.Memory* %call_436c2a, %struct.Memory** %MEMORY

  br label %block_.L_436c2f

  ; Code: .L_436c2f:	 RIP: 436c2f	 Bytes: 0
block_.L_436c2f:

  ; Code: jmpq .L_436c34	 RIP: 436c2f	 Bytes: 5
  %loadMem_436c2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436c2f = call %struct.Memory* @routine_jmpq_.L_436c34(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436c2f, i64 5, i64 5)
  store %struct.Memory* %call_436c2f, %struct.Memory** %MEMORY

  br label %block_.L_436c34

  ; Code: .L_436c34:	 RIP: 436c34	 Bytes: 0
block_.L_436c34:

  ; Code: movq 0x6cb8f8, %rax	 RIP: 436c34	 Bytes: 8
  %loadMem_436c34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436c34 = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436c34)
  store %struct.Memory* %call_436c34, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x934(%rax)	 RIP: 436c3c	 Bytes: 7
  %loadMem_436c3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436c3c = call %struct.Memory* @routine_cmpl__0x0__0x934__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436c3c)
  store %struct.Memory* %call_436c3c, %struct.Memory** %MEMORY

  ; Code: jne .L_436c6d	 RIP: 436c43	 Bytes: 6
  %loadMem_436c43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436c43 = call %struct.Memory* @routine_jne_.L_436c6d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436c43, i8* %BRANCH_TAKEN, i64 42, i64 6, i64 6)
  store %struct.Memory* %call_436c43, %struct.Memory** %MEMORY

  %loadBr_436c43 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_436c43 = icmp eq i8 %loadBr_436c43, 1
  br i1 %cmpBr_436c43, label %block_.L_436c6d, label %block_436c49

block_436c49:
  ; Code: movq $0x4c0940, %rsi	 RIP: 436c49	 Bytes: 10
  %loadMem_436c49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436c49 = call %struct.Memory* @routine_movq__0x4c0940___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436c49)
  store %struct.Memory* %call_436c49, %struct.Memory** %MEMORY

  ; Code: movq 0x6cbe00, %rdi	 RIP: 436c53	 Bytes: 8
  %loadMem_436c53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436c53 = call %struct.Memory* @routine_movq_0x6cbe00___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436c53)
  store %struct.Memory* %call_436c53, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 436c5b	 Bytes: 2
  %loadMem_436c5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436c5b = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436c5b)
  store %struct.Memory* %call_436c5b, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 436c5d	 Bytes: 5
  %loadMem1_436c5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_436c5d = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_436c5d, i64 -219981, i64 5, i64 5)
  store %struct.Memory* %call1_436c5d, %struct.Memory** %MEMORY

  %loadMem2_436c5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_436c5d = load i64, i64* %3
  %call2_436c5d = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_436c5d, %struct.Memory* %loadMem2_436c5d)
  store %struct.Memory* %call2_436c5d, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x5f4(%rbp)	 RIP: 436c62	 Bytes: 6
  %loadMem_436c62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436c62 = call %struct.Memory* @routine_movl__eax__MINUS0x5f4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436c62)
  store %struct.Memory* %call_436c62, %struct.Memory** %MEMORY

  ; Code: jmpq .L_436c8c	 RIP: 436c68	 Bytes: 5
  %loadMem_436c68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436c68 = call %struct.Memory* @routine_jmpq_.L_436c8c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436c68, i64 36, i64 5)
  store %struct.Memory* %call_436c68, %struct.Memory** %MEMORY

  br label %block_.L_436c8c

  ; Code: .L_436c6d:	 RIP: 436c6d	 Bytes: 0
block_.L_436c6d:

  ; Code: movq $0x4c096c, %rsi	 RIP: 436c6d	 Bytes: 10
  %loadMem_436c6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436c6d = call %struct.Memory* @routine_movq__0x4c096c___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436c6d)
  store %struct.Memory* %call_436c6d, %struct.Memory** %MEMORY

  ; Code: movq 0x6cbe00, %rdi	 RIP: 436c77	 Bytes: 8
  %loadMem_436c77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436c77 = call %struct.Memory* @routine_movq_0x6cbe00___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436c77)
  store %struct.Memory* %call_436c77, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 436c7f	 Bytes: 2
  %loadMem_436c7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436c7f = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436c7f)
  store %struct.Memory* %call_436c7f, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 436c81	 Bytes: 5
  %loadMem1_436c81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_436c81 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_436c81, i64 -220017, i64 5, i64 5)
  store %struct.Memory* %call1_436c81, %struct.Memory** %MEMORY

  %loadMem2_436c81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_436c81 = load i64, i64* %3
  %call2_436c81 = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_436c81, %struct.Memory* %loadMem2_436c81)
  store %struct.Memory* %call2_436c81, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x5f8(%rbp)	 RIP: 436c86	 Bytes: 6
  %loadMem_436c86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436c86 = call %struct.Memory* @routine_movl__eax__MINUS0x5f8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436c86)
  store %struct.Memory* %call_436c86, %struct.Memory** %MEMORY

  ; Code: .L_436c8c:	 RIP: 436c8c	 Bytes: 0
  br label %block_.L_436c8c
block_.L_436c8c:

  ; Code: movq $0x4c0998, %rsi	 RIP: 436c8c	 Bytes: 10
  %loadMem_436c8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436c8c = call %struct.Memory* @routine_movq__0x4c0998___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436c8c)
  store %struct.Memory* %call_436c8c, %struct.Memory** %MEMORY

  ; Code: movq 0x6cbe00, %rdi	 RIP: 436c96	 Bytes: 8
  %loadMem_436c96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436c96 = call %struct.Memory* @routine_movq_0x6cbe00___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436c96)
  store %struct.Memory* %call_436c96, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rax	 RIP: 436c9e	 Bytes: 8
  %loadMem_436c9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436c9e = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436c9e)
  store %struct.Memory* %call_436c9e, %struct.Memory** %MEMORY

  ; Code: movl (%rax), %edx	 RIP: 436ca6	 Bytes: 2
  %loadMem_436ca6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436ca6 = call %struct.Memory* @routine_movl___rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436ca6)
  store %struct.Memory* %call_436ca6, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rax	 RIP: 436ca8	 Bytes: 8
  %loadMem_436ca8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436ca8 = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436ca8)
  store %struct.Memory* %call_436ca8, %struct.Memory** %MEMORY

  ; Code: movl 0x4(%rax), %ecx	 RIP: 436cb0	 Bytes: 3
  %loadMem_436cb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436cb0 = call %struct.Memory* @routine_movl_0x4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436cb0)
  store %struct.Memory* %call_436cb0, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 436cb3	 Bytes: 2
  %loadMem_436cb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436cb3 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436cb3)
  store %struct.Memory* %call_436cb3, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 436cb5	 Bytes: 5
  %loadMem1_436cb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_436cb5 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_436cb5, i64 -220069, i64 5, i64 5)
  store %struct.Memory* %call1_436cb5, %struct.Memory** %MEMORY

  %loadMem2_436cb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_436cb5 = load i64, i64* %3
  %call2_436cb5 = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_436cb5, %struct.Memory* %loadMem2_436cb5)
  store %struct.Memory* %call2_436cb5, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rsi	 RIP: 436cba	 Bytes: 8
  %loadMem_436cba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436cba = call %struct.Memory* @routine_movq_0x6cb8f8___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436cba)
  store %struct.Memory* %call_436cba, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, 0x984(%rsi)	 RIP: 436cc2	 Bytes: 7
  %loadMem_436cc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436cc2 = call %struct.Memory* @routine_cmpl__0x2__0x984__rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436cc2)
  store %struct.Memory* %call_436cc2, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x5fc(%rbp)	 RIP: 436cc9	 Bytes: 6
  %loadMem_436cc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436cc9 = call %struct.Memory* @routine_movl__eax__MINUS0x5fc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436cc9)
  store %struct.Memory* %call_436cc9, %struct.Memory** %MEMORY

  ; Code: jne .L_436cf9	 RIP: 436ccf	 Bytes: 6
  %loadMem_436ccf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436ccf = call %struct.Memory* @routine_jne_.L_436cf9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436ccf, i8* %BRANCH_TAKEN, i64 42, i64 6, i64 6)
  store %struct.Memory* %call_436ccf, %struct.Memory** %MEMORY

  %loadBr_436ccf = load i8, i8* %BRANCH_TAKEN
  %cmpBr_436ccf = icmp eq i8 %loadBr_436ccf, 1
  br i1 %cmpBr_436ccf, label %block_.L_436cf9, label %block_436cd5

block_436cd5:
  ; Code: movq $0x4c09c6, %rsi	 RIP: 436cd5	 Bytes: 10
  %loadMem_436cd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436cd5 = call %struct.Memory* @routine_movq__0x4c09c6___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436cd5)
  store %struct.Memory* %call_436cd5, %struct.Memory** %MEMORY

  ; Code: movq 0x6cbe00, %rdi	 RIP: 436cdf	 Bytes: 8
  %loadMem_436cdf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436cdf = call %struct.Memory* @routine_movq_0x6cbe00___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436cdf)
  store %struct.Memory* %call_436cdf, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 436ce7	 Bytes: 2
  %loadMem_436ce7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436ce7 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436ce7)
  store %struct.Memory* %call_436ce7, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 436ce9	 Bytes: 5
  %loadMem1_436ce9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_436ce9 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_436ce9, i64 -220121, i64 5, i64 5)
  store %struct.Memory* %call1_436ce9, %struct.Memory** %MEMORY

  %loadMem2_436ce9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_436ce9 = load i64, i64* %3
  %call2_436ce9 = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_436ce9, %struct.Memory* %loadMem2_436ce9)
  store %struct.Memory* %call2_436ce9, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x600(%rbp)	 RIP: 436cee	 Bytes: 6
  %loadMem_436cee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436cee = call %struct.Memory* @routine_movl__eax__MINUS0x600__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436cee)
  store %struct.Memory* %call_436cee, %struct.Memory** %MEMORY

  ; Code: jmpq .L_436d56	 RIP: 436cf4	 Bytes: 5
  %loadMem_436cf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436cf4 = call %struct.Memory* @routine_jmpq_.L_436d56(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436cf4, i64 98, i64 5)
  store %struct.Memory* %call_436cf4, %struct.Memory** %MEMORY

  br label %block_.L_436d56

  ; Code: .L_436cf9:	 RIP: 436cf9	 Bytes: 0
block_.L_436cf9:

  ; Code: movq 0x6cb8f8, %rax	 RIP: 436cf9	 Bytes: 8
  %loadMem_436cf9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436cf9 = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436cf9)
  store %struct.Memory* %call_436cf9, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, 0x984(%rax)	 RIP: 436d01	 Bytes: 7
  %loadMem_436d01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436d01 = call %struct.Memory* @routine_cmpl__0x1__0x984__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436d01)
  store %struct.Memory* %call_436d01, %struct.Memory** %MEMORY

  ; Code: jne .L_436d32	 RIP: 436d08	 Bytes: 6
  %loadMem_436d08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436d08 = call %struct.Memory* @routine_jne_.L_436d32(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436d08, i8* %BRANCH_TAKEN, i64 42, i64 6, i64 6)
  store %struct.Memory* %call_436d08, %struct.Memory** %MEMORY

  %loadBr_436d08 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_436d08 = icmp eq i8 %loadBr_436d08, 1
  br i1 %cmpBr_436d08, label %block_.L_436d32, label %block_436d0e

block_436d0e:
  ; Code: movq $0x4c09f1, %rsi	 RIP: 436d0e	 Bytes: 10
  %loadMem_436d0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436d0e = call %struct.Memory* @routine_movq__0x4c09f1___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436d0e)
  store %struct.Memory* %call_436d0e, %struct.Memory** %MEMORY

  ; Code: movq 0x6cbe00, %rdi	 RIP: 436d18	 Bytes: 8
  %loadMem_436d18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436d18 = call %struct.Memory* @routine_movq_0x6cbe00___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436d18)
  store %struct.Memory* %call_436d18, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 436d20	 Bytes: 2
  %loadMem_436d20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436d20 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436d20)
  store %struct.Memory* %call_436d20, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 436d22	 Bytes: 5
  %loadMem1_436d22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_436d22 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_436d22, i64 -220178, i64 5, i64 5)
  store %struct.Memory* %call1_436d22, %struct.Memory** %MEMORY

  %loadMem2_436d22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_436d22 = load i64, i64* %3
  %call2_436d22 = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_436d22, %struct.Memory* %loadMem2_436d22)
  store %struct.Memory* %call2_436d22, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x604(%rbp)	 RIP: 436d27	 Bytes: 6
  %loadMem_436d27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436d27 = call %struct.Memory* @routine_movl__eax__MINUS0x604__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436d27)
  store %struct.Memory* %call_436d27, %struct.Memory** %MEMORY

  ; Code: jmpq .L_436d51	 RIP: 436d2d	 Bytes: 5
  %loadMem_436d2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436d2d = call %struct.Memory* @routine_jmpq_.L_436d51(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436d2d, i64 36, i64 5)
  store %struct.Memory* %call_436d2d, %struct.Memory** %MEMORY

  br label %block_.L_436d51

  ; Code: .L_436d32:	 RIP: 436d32	 Bytes: 0
block_.L_436d32:

  ; Code: movq $0x4c0a2e, %rsi	 RIP: 436d32	 Bytes: 10
  %loadMem_436d32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436d32 = call %struct.Memory* @routine_movq__0x4c0a2e___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436d32)
  store %struct.Memory* %call_436d32, %struct.Memory** %MEMORY

  ; Code: movq 0x6cbe00, %rdi	 RIP: 436d3c	 Bytes: 8
  %loadMem_436d3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436d3c = call %struct.Memory* @routine_movq_0x6cbe00___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436d3c)
  store %struct.Memory* %call_436d3c, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 436d44	 Bytes: 2
  %loadMem_436d44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436d44 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436d44)
  store %struct.Memory* %call_436d44, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 436d46	 Bytes: 5
  %loadMem1_436d46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_436d46 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_436d46, i64 -220214, i64 5, i64 5)
  store %struct.Memory* %call1_436d46, %struct.Memory** %MEMORY

  %loadMem2_436d46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_436d46 = load i64, i64* %3
  %call2_436d46 = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_436d46, %struct.Memory* %loadMem2_436d46)
  store %struct.Memory* %call2_436d46, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x608(%rbp)	 RIP: 436d4b	 Bytes: 6
  %loadMem_436d4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436d4b = call %struct.Memory* @routine_movl__eax__MINUS0x608__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436d4b)
  store %struct.Memory* %call_436d4b, %struct.Memory** %MEMORY

  ; Code: .L_436d51:	 RIP: 436d51	 Bytes: 0
  br label %block_.L_436d51
block_.L_436d51:

  ; Code: jmpq .L_436d56	 RIP: 436d51	 Bytes: 5
  %loadMem_436d51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436d51 = call %struct.Memory* @routine_jmpq_.L_436d56(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436d51, i64 5, i64 5)
  store %struct.Memory* %call_436d51, %struct.Memory** %MEMORY

  br label %block_.L_436d56

  ; Code: .L_436d56:	 RIP: 436d56	 Bytes: 0
block_.L_436d56:

  ; Code: movq 0x6cb8f8, %rax	 RIP: 436d56	 Bytes: 8
  %loadMem_436d56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436d56 = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436d56)
  store %struct.Memory* %call_436d56, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x9a0(%rax)	 RIP: 436d5e	 Bytes: 7
  %loadMem_436d5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436d5e = call %struct.Memory* @routine_cmpl__0x0__0x9a0__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436d5e)
  store %struct.Memory* %call_436d5e, %struct.Memory** %MEMORY

  ; Code: je .L_436d8f	 RIP: 436d65	 Bytes: 6
  %loadMem_436d65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436d65 = call %struct.Memory* @routine_je_.L_436d8f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436d65, i8* %BRANCH_TAKEN, i64 42, i64 6, i64 6)
  store %struct.Memory* %call_436d65, %struct.Memory** %MEMORY

  %loadBr_436d65 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_436d65 = icmp eq i8 %loadBr_436d65, 1
  br i1 %cmpBr_436d65, label %block_.L_436d8f, label %block_436d6b

block_436d6b:
  ; Code: movq $0x4c0a7e, %rsi	 RIP: 436d6b	 Bytes: 10
  %loadMem_436d6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436d6b = call %struct.Memory* @routine_movq__0x4c0a7e___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436d6b)
  store %struct.Memory* %call_436d6b, %struct.Memory** %MEMORY

  ; Code: movq 0x6cbe00, %rdi	 RIP: 436d75	 Bytes: 8
  %loadMem_436d75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436d75 = call %struct.Memory* @routine_movq_0x6cbe00___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436d75)
  store %struct.Memory* %call_436d75, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 436d7d	 Bytes: 2
  %loadMem_436d7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436d7d = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436d7d)
  store %struct.Memory* %call_436d7d, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 436d7f	 Bytes: 5
  %loadMem1_436d7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_436d7f = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_436d7f, i64 -220271, i64 5, i64 5)
  store %struct.Memory* %call1_436d7f, %struct.Memory** %MEMORY

  %loadMem2_436d7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_436d7f = load i64, i64* %3
  %call2_436d7f = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_436d7f, %struct.Memory* %loadMem2_436d7f)
  store %struct.Memory* %call2_436d7f, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x60c(%rbp)	 RIP: 436d84	 Bytes: 6
  %loadMem_436d84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436d84 = call %struct.Memory* @routine_movl__eax__MINUS0x60c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436d84)
  store %struct.Memory* %call_436d84, %struct.Memory** %MEMORY

  ; Code: jmpq .L_436dae	 RIP: 436d8a	 Bytes: 5
  %loadMem_436d8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436d8a = call %struct.Memory* @routine_jmpq_.L_436dae(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436d8a, i64 36, i64 5)
  store %struct.Memory* %call_436d8a, %struct.Memory** %MEMORY

  br label %block_.L_436dae

  ; Code: .L_436d8f:	 RIP: 436d8f	 Bytes: 0
block_.L_436d8f:

  ; Code: movq $0x4c0aa9, %rsi	 RIP: 436d8f	 Bytes: 10
  %loadMem_436d8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436d8f = call %struct.Memory* @routine_movq__0x4c0aa9___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436d8f)
  store %struct.Memory* %call_436d8f, %struct.Memory** %MEMORY

  ; Code: movq 0x6cbe00, %rdi	 RIP: 436d99	 Bytes: 8
  %loadMem_436d99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436d99 = call %struct.Memory* @routine_movq_0x6cbe00___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436d99)
  store %struct.Memory* %call_436d99, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 436da1	 Bytes: 2
  %loadMem_436da1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436da1 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436da1)
  store %struct.Memory* %call_436da1, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 436da3	 Bytes: 5
  %loadMem1_436da3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_436da3 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_436da3, i64 -220307, i64 5, i64 5)
  store %struct.Memory* %call1_436da3, %struct.Memory** %MEMORY

  %loadMem2_436da3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_436da3 = load i64, i64* %3
  %call2_436da3 = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_436da3, %struct.Memory* %loadMem2_436da3)
  store %struct.Memory* %call2_436da3, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x610(%rbp)	 RIP: 436da8	 Bytes: 6
  %loadMem_436da8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436da8 = call %struct.Memory* @routine_movl__eax__MINUS0x610__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436da8)
  store %struct.Memory* %call_436da8, %struct.Memory** %MEMORY

  ; Code: .L_436dae:	 RIP: 436dae	 Bytes: 0
  br label %block_.L_436dae
block_.L_436dae:

  ; Code: movq 0x294b43(%rip), %rax	 RIP: 436dae	 Bytes: 7
  %loadMem_436dae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436dae = call %struct.Memory* @routine_movq_0x294b43__rip____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436dae)
  store %struct.Memory* %call_436dae, %struct.Memory** %MEMORY

  ; Code: movl 0x93c(%rax), %ecx	 RIP: 436db5	 Bytes: 6
  %loadMem_436db5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436db5 = call %struct.Memory* @routine_movl_0x93c__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436db5)
  store %struct.Memory* %call_436db5, %struct.Memory** %MEMORY

  ; Code: testl %ecx, %ecx	 RIP: 436dbb	 Bytes: 2
  %loadMem_436dbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436dbb = call %struct.Memory* @routine_testl__ecx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436dbb)
  store %struct.Memory* %call_436dbb, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x614(%rbp)	 RIP: 436dbd	 Bytes: 6
  %loadMem_436dbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436dbd = call %struct.Memory* @routine_movl__ecx__MINUS0x614__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436dbd)
  store %struct.Memory* %call_436dbd, %struct.Memory** %MEMORY

  ; Code: je .L_436de8	 RIP: 436dc3	 Bytes: 6
  %loadMem_436dc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436dc3 = call %struct.Memory* @routine_je_.L_436de8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436dc3, i8* %BRANCH_TAKEN, i64 37, i64 6, i64 6)
  store %struct.Memory* %call_436dc3, %struct.Memory** %MEMORY

  %loadBr_436dc3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_436dc3 = icmp eq i8 %loadBr_436dc3, 1
  br i1 %cmpBr_436dc3, label %block_.L_436de8, label %block_436dc9

block_436dc9:
  ; Code: jmpq .L_436dce	 RIP: 436dc9	 Bytes: 5
  %loadMem_436dc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436dc9 = call %struct.Memory* @routine_jmpq_.L_436dce(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436dc9, i64 5, i64 5)
  store %struct.Memory* %call_436dc9, %struct.Memory** %MEMORY

  br label %block_.L_436dce

  ; Code: .L_436dce:	 RIP: 436dce	 Bytes: 0
block_.L_436dce:

  ; Code: movl -0x614(%rbp), %eax	 RIP: 436dce	 Bytes: 6
  %loadMem_436dce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436dce = call %struct.Memory* @routine_movl_MINUS0x614__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436dce)
  store %struct.Memory* %call_436dce, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 436dd4	 Bytes: 3
  %loadMem_436dd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436dd4 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436dd4)
  store %struct.Memory* %call_436dd4, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x618(%rbp)	 RIP: 436dd7	 Bytes: 6
  %loadMem_436dd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436dd7 = call %struct.Memory* @routine_movl__eax__MINUS0x618__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436dd7)
  store %struct.Memory* %call_436dd7, %struct.Memory** %MEMORY

  ; Code: je .L_436e0c	 RIP: 436ddd	 Bytes: 6
  %loadMem_436ddd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436ddd = call %struct.Memory* @routine_je_.L_436e0c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436ddd, i8* %BRANCH_TAKEN, i64 47, i64 6, i64 6)
  store %struct.Memory* %call_436ddd, %struct.Memory** %MEMORY

  %loadBr_436ddd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_436ddd = icmp eq i8 %loadBr_436ddd, 1
  br i1 %cmpBr_436ddd, label %block_.L_436e0c, label %block_436de3

block_436de3:
  ; Code: jmpq .L_436e30	 RIP: 436de3	 Bytes: 5
  %loadMem_436de3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436de3 = call %struct.Memory* @routine_jmpq_.L_436e30(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436de3, i64 77, i64 5)
  store %struct.Memory* %call_436de3, %struct.Memory** %MEMORY

  br label %block_.L_436e30

  ; Code: .L_436de8:	 RIP: 436de8	 Bytes: 0
block_.L_436de8:

  ; Code: movq $0x4c0ad8, %rsi	 RIP: 436de8	 Bytes: 10
  %loadMem_436de8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436de8 = call %struct.Memory* @routine_movq__0x4c0ad8___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436de8)
  store %struct.Memory* %call_436de8, %struct.Memory** %MEMORY

  ; Code: movq 0x6cbe00, %rdi	 RIP: 436df2	 Bytes: 8
  %loadMem_436df2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436df2 = call %struct.Memory* @routine_movq_0x6cbe00___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436df2)
  store %struct.Memory* %call_436df2, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 436dfa	 Bytes: 2
  %loadMem_436dfa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436dfa = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436dfa)
  store %struct.Memory* %call_436dfa, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 436dfc	 Bytes: 5
  %loadMem1_436dfc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_436dfc = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_436dfc, i64 -220396, i64 5, i64 5)
  store %struct.Memory* %call1_436dfc, %struct.Memory** %MEMORY

  %loadMem2_436dfc = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_436dfc = load i64, i64* %3
  %call2_436dfc = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_436dfc, %struct.Memory* %loadMem2_436dfc)
  store %struct.Memory* %call2_436dfc, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x61c(%rbp)	 RIP: 436e01	 Bytes: 6
  %loadMem_436e01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436e01 = call %struct.Memory* @routine_movl__eax__MINUS0x61c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436e01)
  store %struct.Memory* %call_436e01, %struct.Memory** %MEMORY

  ; Code: jmpq .L_436e4f	 RIP: 436e07	 Bytes: 5
  %loadMem_436e07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436e07 = call %struct.Memory* @routine_jmpq_.L_436e4f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436e07, i64 72, i64 5)
  store %struct.Memory* %call_436e07, %struct.Memory** %MEMORY

  br label %block_.L_436e4f

  ; Code: .L_436e0c:	 RIP: 436e0c	 Bytes: 0
block_.L_436e0c:

  ; Code: movq $0x4c0b0b, %rsi	 RIP: 436e0c	 Bytes: 10
  %loadMem_436e0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436e0c = call %struct.Memory* @routine_movq__0x4c0b0b___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436e0c)
  store %struct.Memory* %call_436e0c, %struct.Memory** %MEMORY

  ; Code: movq 0x6cbe00, %rdi	 RIP: 436e16	 Bytes: 8
  %loadMem_436e16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436e16 = call %struct.Memory* @routine_movq_0x6cbe00___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436e16)
  store %struct.Memory* %call_436e16, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 436e1e	 Bytes: 2
  %loadMem_436e1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436e1e = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436e1e)
  store %struct.Memory* %call_436e1e, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 436e20	 Bytes: 5
  %loadMem1_436e20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_436e20 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_436e20, i64 -220432, i64 5, i64 5)
  store %struct.Memory* %call1_436e20, %struct.Memory** %MEMORY

  %loadMem2_436e20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_436e20 = load i64, i64* %3
  %call2_436e20 = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_436e20, %struct.Memory* %loadMem2_436e20)
  store %struct.Memory* %call2_436e20, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x620(%rbp)	 RIP: 436e25	 Bytes: 6
  %loadMem_436e25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436e25 = call %struct.Memory* @routine_movl__eax__MINUS0x620__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436e25)
  store %struct.Memory* %call_436e25, %struct.Memory** %MEMORY

  ; Code: jmpq .L_436e4f	 RIP: 436e2b	 Bytes: 5
  %loadMem_436e2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436e2b = call %struct.Memory* @routine_jmpq_.L_436e4f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436e2b, i64 36, i64 5)
  store %struct.Memory* %call_436e2b, %struct.Memory** %MEMORY

  br label %block_.L_436e4f

  ; Code: .L_436e30:	 RIP: 436e30	 Bytes: 0
block_.L_436e30:

  ; Code: movq $0x4c0b3f, %rsi	 RIP: 436e30	 Bytes: 10
  %loadMem_436e30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436e30 = call %struct.Memory* @routine_movq__0x4c0b3f___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436e30)
  store %struct.Memory* %call_436e30, %struct.Memory** %MEMORY

  ; Code: movq 0x6cbe00, %rdi	 RIP: 436e3a	 Bytes: 8
  %loadMem_436e3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436e3a = call %struct.Memory* @routine_movq_0x6cbe00___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436e3a)
  store %struct.Memory* %call_436e3a, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 436e42	 Bytes: 2
  %loadMem_436e42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436e42 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436e42)
  store %struct.Memory* %call_436e42, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 436e44	 Bytes: 5
  %loadMem1_436e44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_436e44 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_436e44, i64 -220468, i64 5, i64 5)
  store %struct.Memory* %call1_436e44, %struct.Memory** %MEMORY

  %loadMem2_436e44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_436e44 = load i64, i64* %3
  %call2_436e44 = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_436e44, %struct.Memory* %loadMem2_436e44)
  store %struct.Memory* %call2_436e44, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x624(%rbp)	 RIP: 436e49	 Bytes: 6
  %loadMem_436e49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436e49 = call %struct.Memory* @routine_movl__eax__MINUS0x624__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436e49)
  store %struct.Memory* %call_436e49, %struct.Memory** %MEMORY

  ; Code: .L_436e4f:	 RIP: 436e4f	 Bytes: 0
  br label %block_.L_436e4f
block_.L_436e4f:

  ; Code: movq 0x294aa2(%rip), %rax	 RIP: 436e4f	 Bytes: 7
  %loadMem_436e4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436e4f = call %struct.Memory* @routine_movq_0x294aa2__rip____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436e4f)
  store %struct.Memory* %call_436e4f, %struct.Memory** %MEMORY

  ; Code: movl 0x938(%rax), %ecx	 RIP: 436e56	 Bytes: 6
  %loadMem_436e56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436e56 = call %struct.Memory* @routine_movl_0x938__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436e56)
  store %struct.Memory* %call_436e56, %struct.Memory** %MEMORY

  ; Code: testl %ecx, %ecx	 RIP: 436e5c	 Bytes: 2
  %loadMem_436e5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436e5c = call %struct.Memory* @routine_testl__ecx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436e5c)
  store %struct.Memory* %call_436e5c, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x628(%rbp)	 RIP: 436e5e	 Bytes: 6
  %loadMem_436e5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436e5e = call %struct.Memory* @routine_movl__ecx__MINUS0x628__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436e5e)
  store %struct.Memory* %call_436e5e, %struct.Memory** %MEMORY

  ; Code: je .L_436e89	 RIP: 436e64	 Bytes: 6
  %loadMem_436e64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436e64 = call %struct.Memory* @routine_je_.L_436e89(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436e64, i8* %BRANCH_TAKEN, i64 37, i64 6, i64 6)
  store %struct.Memory* %call_436e64, %struct.Memory** %MEMORY

  %loadBr_436e64 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_436e64 = icmp eq i8 %loadBr_436e64, 1
  br i1 %cmpBr_436e64, label %block_.L_436e89, label %block_436e6a

block_436e6a:
  ; Code: jmpq .L_436e6f	 RIP: 436e6a	 Bytes: 5
  %loadMem_436e6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436e6a = call %struct.Memory* @routine_jmpq_.L_436e6f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436e6a, i64 5, i64 5)
  store %struct.Memory* %call_436e6a, %struct.Memory** %MEMORY

  br label %block_.L_436e6f

  ; Code: .L_436e6f:	 RIP: 436e6f	 Bytes: 0
block_.L_436e6f:

  ; Code: movl -0x628(%rbp), %eax	 RIP: 436e6f	 Bytes: 6
  %loadMem_436e6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436e6f = call %struct.Memory* @routine_movl_MINUS0x628__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436e6f)
  store %struct.Memory* %call_436e6f, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 436e75	 Bytes: 3
  %loadMem_436e75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436e75 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436e75)
  store %struct.Memory* %call_436e75, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x62c(%rbp)	 RIP: 436e78	 Bytes: 6
  %loadMem_436e78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436e78 = call %struct.Memory* @routine_movl__eax__MINUS0x62c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436e78)
  store %struct.Memory* %call_436e78, %struct.Memory** %MEMORY

  ; Code: je .L_436ead	 RIP: 436e7e	 Bytes: 6
  %loadMem_436e7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436e7e = call %struct.Memory* @routine_je_.L_436ead(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436e7e, i8* %BRANCH_TAKEN, i64 47, i64 6, i64 6)
  store %struct.Memory* %call_436e7e, %struct.Memory** %MEMORY

  %loadBr_436e7e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_436e7e = icmp eq i8 %loadBr_436e7e, 1
  br i1 %cmpBr_436e7e, label %block_.L_436ead, label %block_436e84

block_436e84:
  ; Code: jmpq .L_436ed1	 RIP: 436e84	 Bytes: 5
  %loadMem_436e84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436e84 = call %struct.Memory* @routine_jmpq_.L_436ed1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436e84, i64 77, i64 5)
  store %struct.Memory* %call_436e84, %struct.Memory** %MEMORY

  br label %block_.L_436ed1

  ; Code: .L_436e89:	 RIP: 436e89	 Bytes: 0
block_.L_436e89:

  ; Code: movq $0x4c0b73, %rsi	 RIP: 436e89	 Bytes: 10
  %loadMem_436e89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436e89 = call %struct.Memory* @routine_movq__0x4c0b73___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436e89)
  store %struct.Memory* %call_436e89, %struct.Memory** %MEMORY

  ; Code: movq 0x6cbe00, %rdi	 RIP: 436e93	 Bytes: 8
  %loadMem_436e93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436e93 = call %struct.Memory* @routine_movq_0x6cbe00___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436e93)
  store %struct.Memory* %call_436e93, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 436e9b	 Bytes: 2
  %loadMem_436e9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436e9b = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436e9b)
  store %struct.Memory* %call_436e9b, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 436e9d	 Bytes: 5
  %loadMem1_436e9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_436e9d = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_436e9d, i64 -220557, i64 5, i64 5)
  store %struct.Memory* %call1_436e9d, %struct.Memory** %MEMORY

  %loadMem2_436e9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_436e9d = load i64, i64* %3
  %call2_436e9d = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_436e9d, %struct.Memory* %loadMem2_436e9d)
  store %struct.Memory* %call2_436e9d, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x630(%rbp)	 RIP: 436ea2	 Bytes: 6
  %loadMem_436ea2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436ea2 = call %struct.Memory* @routine_movl__eax__MINUS0x630__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436ea2)
  store %struct.Memory* %call_436ea2, %struct.Memory** %MEMORY

  ; Code: jmpq .L_436ef0	 RIP: 436ea8	 Bytes: 5
  %loadMem_436ea8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436ea8 = call %struct.Memory* @routine_jmpq_.L_436ef0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436ea8, i64 72, i64 5)
  store %struct.Memory* %call_436ea8, %struct.Memory** %MEMORY

  br label %block_.L_436ef0

  ; Code: .L_436ead:	 RIP: 436ead	 Bytes: 0
block_.L_436ead:

  ; Code: movq $0x4c0bb7, %rsi	 RIP: 436ead	 Bytes: 10
  %loadMem_436ead = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436ead = call %struct.Memory* @routine_movq__0x4c0bb7___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436ead)
  store %struct.Memory* %call_436ead, %struct.Memory** %MEMORY

  ; Code: movq 0x6cbe00, %rdi	 RIP: 436eb7	 Bytes: 8
  %loadMem_436eb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436eb7 = call %struct.Memory* @routine_movq_0x6cbe00___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436eb7)
  store %struct.Memory* %call_436eb7, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 436ebf	 Bytes: 2
  %loadMem_436ebf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436ebf = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436ebf)
  store %struct.Memory* %call_436ebf, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 436ec1	 Bytes: 5
  %loadMem1_436ec1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_436ec1 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_436ec1, i64 -220593, i64 5, i64 5)
  store %struct.Memory* %call1_436ec1, %struct.Memory** %MEMORY

  %loadMem2_436ec1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_436ec1 = load i64, i64* %3
  %call2_436ec1 = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_436ec1, %struct.Memory* %loadMem2_436ec1)
  store %struct.Memory* %call2_436ec1, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x634(%rbp)	 RIP: 436ec6	 Bytes: 6
  %loadMem_436ec6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436ec6 = call %struct.Memory* @routine_movl__eax__MINUS0x634__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436ec6)
  store %struct.Memory* %call_436ec6, %struct.Memory** %MEMORY

  ; Code: jmpq .L_436ef0	 RIP: 436ecc	 Bytes: 5
  %loadMem_436ecc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436ecc = call %struct.Memory* @routine_jmpq_.L_436ef0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436ecc, i64 36, i64 5)
  store %struct.Memory* %call_436ecc, %struct.Memory** %MEMORY

  br label %block_.L_436ef0

  ; Code: .L_436ed1:	 RIP: 436ed1	 Bytes: 0
block_.L_436ed1:

  ; Code: movq $0x4c0bf5, %rsi	 RIP: 436ed1	 Bytes: 10
  %loadMem_436ed1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436ed1 = call %struct.Memory* @routine_movq__0x4c0bf5___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436ed1)
  store %struct.Memory* %call_436ed1, %struct.Memory** %MEMORY

  ; Code: movq 0x6cbe00, %rdi	 RIP: 436edb	 Bytes: 8
  %loadMem_436edb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436edb = call %struct.Memory* @routine_movq_0x6cbe00___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436edb)
  store %struct.Memory* %call_436edb, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 436ee3	 Bytes: 2
  %loadMem_436ee3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436ee3 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436ee3)
  store %struct.Memory* %call_436ee3, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 436ee5	 Bytes: 5
  %loadMem1_436ee5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_436ee5 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_436ee5, i64 -220629, i64 5, i64 5)
  store %struct.Memory* %call1_436ee5, %struct.Memory** %MEMORY

  %loadMem2_436ee5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_436ee5 = load i64, i64* %3
  %call2_436ee5 = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_436ee5, %struct.Memory* %loadMem2_436ee5)
  store %struct.Memory* %call2_436ee5, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x638(%rbp)	 RIP: 436eea	 Bytes: 6
  %loadMem_436eea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436eea = call %struct.Memory* @routine_movl__eax__MINUS0x638__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436eea)
  store %struct.Memory* %call_436eea, %struct.Memory** %MEMORY

  ; Code: .L_436ef0:	 RIP: 436ef0	 Bytes: 0
  br label %block_.L_436ef0
block_.L_436ef0:

  ; Code: movq 0x6cb8f8, %rax	 RIP: 436ef0	 Bytes: 8
  %loadMem_436ef0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436ef0 = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436ef0)
  store %struct.Memory* %call_436ef0, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0xd00(%rax)	 RIP: 436ef8	 Bytes: 7
  %loadMem_436ef8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436ef8 = call %struct.Memory* @routine_cmpl__0x0__0xd00__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436ef8)
  store %struct.Memory* %call_436ef8, %struct.Memory** %MEMORY

  ; Code: je .L_436f29	 RIP: 436eff	 Bytes: 6
  %loadMem_436eff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436eff = call %struct.Memory* @routine_je_.L_436f29(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436eff, i8* %BRANCH_TAKEN, i64 42, i64 6, i64 6)
  store %struct.Memory* %call_436eff, %struct.Memory** %MEMORY

  %loadBr_436eff = load i8, i8* %BRANCH_TAKEN
  %cmpBr_436eff = icmp eq i8 %loadBr_436eff, 1
  br i1 %cmpBr_436eff, label %block_.L_436f29, label %block_436f05

block_436f05:
  ; Code: movq $0x4c0c29, %rsi	 RIP: 436f05	 Bytes: 10
  %loadMem_436f05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436f05 = call %struct.Memory* @routine_movq__0x4c0c29___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436f05)
  store %struct.Memory* %call_436f05, %struct.Memory** %MEMORY

  ; Code: movq 0x6cbe00, %rdi	 RIP: 436f0f	 Bytes: 8
  %loadMem_436f0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436f0f = call %struct.Memory* @routine_movq_0x6cbe00___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436f0f)
  store %struct.Memory* %call_436f0f, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 436f17	 Bytes: 2
  %loadMem_436f17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436f17 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436f17)
  store %struct.Memory* %call_436f17, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 436f19	 Bytes: 5
  %loadMem1_436f19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_436f19 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_436f19, i64 -220681, i64 5, i64 5)
  store %struct.Memory* %call1_436f19, %struct.Memory** %MEMORY

  %loadMem2_436f19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_436f19 = load i64, i64* %3
  %call2_436f19 = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_436f19, %struct.Memory* %loadMem2_436f19)
  store %struct.Memory* %call2_436f19, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x63c(%rbp)	 RIP: 436f1e	 Bytes: 6
  %loadMem_436f1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436f1e = call %struct.Memory* @routine_movl__eax__MINUS0x63c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436f1e)
  store %struct.Memory* %call_436f1e, %struct.Memory** %MEMORY

  ; Code: jmpq .L_436f48	 RIP: 436f24	 Bytes: 5
  %loadMem_436f24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436f24 = call %struct.Memory* @routine_jmpq_.L_436f48(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436f24, i64 36, i64 5)
  store %struct.Memory* %call_436f24, %struct.Memory** %MEMORY

  br label %block_.L_436f48

  ; Code: .L_436f29:	 RIP: 436f29	 Bytes: 0
block_.L_436f29:

  ; Code: movq $0x4c0c54, %rsi	 RIP: 436f29	 Bytes: 10
  %loadMem_436f29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436f29 = call %struct.Memory* @routine_movq__0x4c0c54___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436f29)
  store %struct.Memory* %call_436f29, %struct.Memory** %MEMORY

  ; Code: movq 0x6cbe00, %rdi	 RIP: 436f33	 Bytes: 8
  %loadMem_436f33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436f33 = call %struct.Memory* @routine_movq_0x6cbe00___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436f33)
  store %struct.Memory* %call_436f33, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 436f3b	 Bytes: 2
  %loadMem_436f3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436f3b = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436f3b)
  store %struct.Memory* %call_436f3b, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 436f3d	 Bytes: 5
  %loadMem1_436f3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_436f3d = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_436f3d, i64 -220717, i64 5, i64 5)
  store %struct.Memory* %call1_436f3d, %struct.Memory** %MEMORY

  %loadMem2_436f3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_436f3d = load i64, i64* %3
  %call2_436f3d = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_436f3d, %struct.Memory* %loadMem2_436f3d)
  store %struct.Memory* %call2_436f3d, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x640(%rbp)	 RIP: 436f42	 Bytes: 6
  %loadMem_436f42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436f42 = call %struct.Memory* @routine_movl__eax__MINUS0x640__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436f42)
  store %struct.Memory* %call_436f42, %struct.Memory** %MEMORY

  ; Code: .L_436f48:	 RIP: 436f48	 Bytes: 0
  br label %block_.L_436f48
block_.L_436f48:

  ; Code: movq $0x4c0c83, %rsi	 RIP: 436f48	 Bytes: 10
  %loadMem_436f48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436f48 = call %struct.Memory* @routine_movq__0x4c0c83___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436f48)
  store %struct.Memory* %call_436f48, %struct.Memory** %MEMORY

  ; Code: movq 0x6cbe00, %rdi	 RIP: 436f52	 Bytes: 8
  %loadMem_436f52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436f52 = call %struct.Memory* @routine_movq_0x6cbe00___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436f52)
  store %struct.Memory* %call_436f52, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 436f5a	 Bytes: 2
  %loadMem_436f5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436f5a = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436f5a)
  store %struct.Memory* %call_436f5a, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 436f5c	 Bytes: 5
  %loadMem1_436f5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_436f5c = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_436f5c, i64 -220748, i64 5, i64 5)
  store %struct.Memory* %call1_436f5c, %struct.Memory** %MEMORY

  %loadMem2_436f5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_436f5c = load i64, i64* %3
  %call2_436f5c = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_436f5c, %struct.Memory* %loadMem2_436f5c)
  store %struct.Memory* %call2_436f5c, %struct.Memory** %MEMORY

  ; Code: movq $0x4c0cd4, %rsi	 RIP: 436f61	 Bytes: 10
  %loadMem_436f61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436f61 = call %struct.Memory* @routine_movq__0x4c0cd4___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436f61)
  store %struct.Memory* %call_436f61, %struct.Memory** %MEMORY

  ; Code: movq 0x6cbe00, %rdi	 RIP: 436f6b	 Bytes: 8
  %loadMem_436f6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436f6b = call %struct.Memory* @routine_movq_0x6cbe00___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436f6b)
  store %struct.Memory* %call_436f6b, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb910, %rcx	 RIP: 436f73	 Bytes: 8
  %loadMem_436f73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436f73 = call %struct.Memory* @routine_movq_0x6cb910___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436f73)
  store %struct.Memory* %call_436f73, %struct.Memory** %MEMORY

  ; Code: cvtss2sd 0x3c(%rcx), %xmm0	 RIP: 436f7b	 Bytes: 5
  %loadMem_436f7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436f7b = call %struct.Memory* @routine_cvtss2sd_0x3c__rcx____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436f7b)
  store %struct.Memory* %call_436f7b, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x644(%rbp)	 RIP: 436f80	 Bytes: 6
  %loadMem_436f80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436f80 = call %struct.Memory* @routine_movl__eax__MINUS0x644__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436f80)
  store %struct.Memory* %call_436f80, %struct.Memory** %MEMORY

  ; Code: movb $0x1, %al	 RIP: 436f86	 Bytes: 2
  %loadMem_436f86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436f86 = call %struct.Memory* @routine_movb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436f86)
  store %struct.Memory* %call_436f86, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 436f88	 Bytes: 5
  %loadMem1_436f88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_436f88 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_436f88, i64 -220792, i64 5, i64 5)
  store %struct.Memory* %call1_436f88, %struct.Memory** %MEMORY

  %loadMem2_436f88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_436f88 = load i64, i64* %3
  %call2_436f88 = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_436f88, %struct.Memory* %loadMem2_436f88)
  store %struct.Memory* %call2_436f88, %struct.Memory** %MEMORY

  ; Code: movq $0x4c0d00, %rsi	 RIP: 436f8d	 Bytes: 10
  %loadMem_436f8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436f8d = call %struct.Memory* @routine_movq__0x4c0d00___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436f8d)
  store %struct.Memory* %call_436f8d, %struct.Memory** %MEMORY

  ; Code: movq 0x6cbe00, %rdi	 RIP: 436f97	 Bytes: 8
  %loadMem_436f97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436f97 = call %struct.Memory* @routine_movq_0x6cbe00___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436f97)
  store %struct.Memory* %call_436f97, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb910, %rcx	 RIP: 436f9f	 Bytes: 8
  %loadMem_436f9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436f9f = call %struct.Memory* @routine_movq_0x6cb910___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436f9f)
  store %struct.Memory* %call_436f9f, %struct.Memory** %MEMORY

  ; Code: cvtss2sd 0x40(%rcx), %xmm0	 RIP: 436fa7	 Bytes: 5
  %loadMem_436fa7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436fa7 = call %struct.Memory* @routine_cvtss2sd_0x40__rcx____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436fa7)
  store %struct.Memory* %call_436fa7, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x648(%rbp)	 RIP: 436fac	 Bytes: 6
  %loadMem_436fac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436fac = call %struct.Memory* @routine_movl__eax__MINUS0x648__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436fac)
  store %struct.Memory* %call_436fac, %struct.Memory** %MEMORY

  ; Code: movb $0x1, %al	 RIP: 436fb2	 Bytes: 2
  %loadMem_436fb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436fb2 = call %struct.Memory* @routine_movb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436fb2)
  store %struct.Memory* %call_436fb2, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 436fb4	 Bytes: 5
  %loadMem1_436fb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_436fb4 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_436fb4, i64 -220836, i64 5, i64 5)
  store %struct.Memory* %call1_436fb4, %struct.Memory** %MEMORY

  %loadMem2_436fb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_436fb4 = load i64, i64* %3
  %call2_436fb4 = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_436fb4, %struct.Memory* %loadMem2_436fb4)
  store %struct.Memory* %call2_436fb4, %struct.Memory** %MEMORY

  ; Code: movq $0x4c0d2c, %rsi	 RIP: 436fb9	 Bytes: 10
  %loadMem_436fb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436fb9 = call %struct.Memory* @routine_movq__0x4c0d2c___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436fb9)
  store %struct.Memory* %call_436fb9, %struct.Memory** %MEMORY

  ; Code: movq 0x6cbe00, %rdi	 RIP: 436fc3	 Bytes: 8
  %loadMem_436fc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436fc3 = call %struct.Memory* @routine_movq_0x6cbe00___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436fc3)
  store %struct.Memory* %call_436fc3, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb910, %rcx	 RIP: 436fcb	 Bytes: 8
  %loadMem_436fcb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436fcb = call %struct.Memory* @routine_movq_0x6cb910___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436fcb)
  store %struct.Memory* %call_436fcb, %struct.Memory** %MEMORY

  ; Code: cvtss2sd 0x44(%rcx), %xmm0	 RIP: 436fd3	 Bytes: 5
  %loadMem_436fd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436fd3 = call %struct.Memory* @routine_cvtss2sd_0x44__rcx____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436fd3)
  store %struct.Memory* %call_436fd3, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x64c(%rbp)	 RIP: 436fd8	 Bytes: 6
  %loadMem_436fd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436fd8 = call %struct.Memory* @routine_movl__eax__MINUS0x64c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436fd8)
  store %struct.Memory* %call_436fd8, %struct.Memory** %MEMORY

  ; Code: movb $0x1, %al	 RIP: 436fde	 Bytes: 2
  %loadMem_436fde = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436fde = call %struct.Memory* @routine_movb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436fde)
  store %struct.Memory* %call_436fde, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 436fe0	 Bytes: 5
  %loadMem1_436fe0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_436fe0 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_436fe0, i64 -220880, i64 5, i64 5)
  store %struct.Memory* %call1_436fe0, %struct.Memory** %MEMORY

  %loadMem2_436fe0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_436fe0 = load i64, i64* %3
  %call2_436fe0 = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_436fe0, %struct.Memory* %loadMem2_436fe0)
  store %struct.Memory* %call2_436fe0, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x722ca8	 RIP: 436fe5	 Bytes: 8
  %loadMem_436fe5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436fe5 = call %struct.Memory* @routine_cmpl__0x0__0x722ca8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436fe5)
  store %struct.Memory* %call_436fe5, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x650(%rbp)	 RIP: 436fed	 Bytes: 6
  %loadMem_436fed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436fed = call %struct.Memory* @routine_movl__eax__MINUS0x650__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436fed)
  store %struct.Memory* %call_436fed, %struct.Memory** %MEMORY

  ; Code: je .L_43716c	 RIP: 436ff3	 Bytes: 6
  %loadMem_436ff3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436ff3 = call %struct.Memory* @routine_je_.L_43716c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436ff3, i8* %BRANCH_TAKEN, i64 377, i64 6, i64 6)
  store %struct.Memory* %call_436ff3, %struct.Memory** %MEMORY

  %loadBr_436ff3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_436ff3 = icmp eq i8 %loadBr_436ff3, 1
  br i1 %cmpBr_436ff3, label %block_.L_43716c, label %block_436ff9

block_436ff9:
  ; Code: movq $0x4c0d58, %rsi	 RIP: 436ff9	 Bytes: 10
  %loadMem_436ff9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_436ff9 = call %struct.Memory* @routine_movq__0x4c0d58___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_436ff9)
  store %struct.Memory* %call_436ff9, %struct.Memory** %MEMORY

  ; Code: movq 0x6cbe00, %rdi	 RIP: 437003	 Bytes: 8
  %loadMem_437003 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437003 = call %struct.Memory* @routine_movq_0x6cbe00___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437003)
  store %struct.Memory* %call_437003, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb908, %rax	 RIP: 43700b	 Bytes: 8
  %loadMem_43700b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43700b = call %struct.Memory* @routine_movq_0x6cb908___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43700b)
  store %struct.Memory* %call_43700b, %struct.Memory** %MEMORY

  ; Code: movl 0x2c4(%rax), %ecx	 RIP: 437013	 Bytes: 6
  %loadMem_437013 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437013 = call %struct.Memory* @routine_movl_0x2c4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437013)
  store %struct.Memory* %call_437013, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb908, %rax	 RIP: 437019	 Bytes: 8
  %loadMem_437019 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437019 = call %struct.Memory* @routine_movq_0x6cb908___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437019)
  store %struct.Memory* %call_437019, %struct.Memory** %MEMORY

  ; Code: addl 0x2c0(%rax), %ecx	 RIP: 437021	 Bytes: 6
  %loadMem_437021 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437021 = call %struct.Memory* @routine_addl_0x2c0__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437021)
  store %struct.Memory* %call_437021, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb908, %rax	 RIP: 437027	 Bytes: 8
  %loadMem_437027 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437027 = call %struct.Memory* @routine_movq_0x6cb908___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437027)
  store %struct.Memory* %call_437027, %struct.Memory** %MEMORY

  ; Code: addl 0x2c8(%rax), %ecx	 RIP: 43702f	 Bytes: 6
  %loadMem_43702f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43702f = call %struct.Memory* @routine_addl_0x2c8__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43702f)
  store %struct.Memory* %call_43702f, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb908, %rax	 RIP: 437035	 Bytes: 8
  %loadMem_437035 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437035 = call %struct.Memory* @routine_movq_0x6cb908___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437035)
  store %struct.Memory* %call_437035, %struct.Memory** %MEMORY

  ; Code: addl 0x5d0(%rax), %ecx	 RIP: 43703d	 Bytes: 6
  %loadMem_43703d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43703d = call %struct.Memory* @routine_addl_0x5d0__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43703d)
  store %struct.Memory* %call_43703d, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x54(%rbp)	 RIP: 437043	 Bytes: 3
  %loadMem_437043 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437043 = call %struct.Memory* @routine_movl__ecx__MINUS0x54__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437043)
  store %struct.Memory* %call_437043, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb908, %rax	 RIP: 437046	 Bytes: 8
  %loadMem_437046 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437046 = call %struct.Memory* @routine_movq_0x6cb908___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437046)
  store %struct.Memory* %call_437046, %struct.Memory** %MEMORY

  ; Code: movl 0x2c0(%rax), %edx	 RIP: 43704e	 Bytes: 6
  %loadMem_43704e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43704e = call %struct.Memory* @routine_movl_0x2c0__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43704e)
  store %struct.Memory* %call_43704e, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb908, %rax	 RIP: 437054	 Bytes: 8
  %loadMem_437054 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437054 = call %struct.Memory* @routine_movq_0x6cb908___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437054)
  store %struct.Memory* %call_437054, %struct.Memory** %MEMORY

  ; Code: movl 0x2c4(%rax), %r8d	 RIP: 43705c	 Bytes: 7
  %loadMem_43705c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43705c = call %struct.Memory* @routine_movl_0x2c4__rax____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43705c)
  store %struct.Memory* %call_43705c, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb908, %rax	 RIP: 437063	 Bytes: 8
  %loadMem_437063 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437063 = call %struct.Memory* @routine_movq_0x6cb908___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437063)
  store %struct.Memory* %call_437063, %struct.Memory** %MEMORY

  ; Code: movl 0x2c8(%rax), %r9d	 RIP: 43706b	 Bytes: 7
  %loadMem_43706b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43706b = call %struct.Memory* @routine_movl_0x2c8__rax____r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43706b)
  store %struct.Memory* %call_43706b, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb908, %rax	 RIP: 437072	 Bytes: 8
  %loadMem_437072 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437072 = call %struct.Memory* @routine_movq_0x6cb908___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437072)
  store %struct.Memory* %call_437072, %struct.Memory** %MEMORY

  ; Code: movl 0x5d0(%rax), %r10d	 RIP: 43707a	 Bytes: 7
  %loadMem_43707a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43707a = call %struct.Memory* @routine_movl_0x5d0__rax____r10d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43707a)
  store %struct.Memory* %call_43707a, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x654(%rbp)	 RIP: 437081	 Bytes: 6
  %loadMem_437081 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437081 = call %struct.Memory* @routine_movl__edx__MINUS0x654__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437081)
  store %struct.Memory* %call_437081, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 437087	 Bytes: 2
  %loadMem_437087 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437087 = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437087)
  store %struct.Memory* %call_437087, %struct.Memory** %MEMORY

  ; Code: movl -0x654(%rbp), %ecx	 RIP: 437089	 Bytes: 6
  %loadMem_437089 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437089 = call %struct.Memory* @routine_movl_MINUS0x654__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437089)
  store %struct.Memory* %call_437089, %struct.Memory** %MEMORY

  ; Code: movl %r10d, (%rsp)	 RIP: 43708f	 Bytes: 4
  %loadMem_43708f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43708f = call %struct.Memory* @routine_movl__r10d____rsp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43708f)
  store %struct.Memory* %call_43708f, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 437093	 Bytes: 2
  %loadMem_437093 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437093 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437093)
  store %struct.Memory* %call_437093, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 437095	 Bytes: 5
  %loadMem1_437095 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_437095 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_437095, i64 -221061, i64 5, i64 5)
  store %struct.Memory* %call1_437095, %struct.Memory** %MEMORY

  %loadMem2_437095 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_437095 = load i64, i64* %3
  %call2_437095 = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_437095, %struct.Memory* %loadMem2_437095)
  store %struct.Memory* %call2_437095, %struct.Memory** %MEMORY

  ; Code: movq $0x4c0d9e, %rsi	 RIP: 43709a	 Bytes: 10
  %loadMem_43709a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43709a = call %struct.Memory* @routine_movq__0x4c0d9e___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43709a)
  store %struct.Memory* %call_43709a, %struct.Memory** %MEMORY

  ; Code: movss 0x86790(%rip), %xmm0	 RIP: 4370a4	 Bytes: 8
  %loadMem_4370a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4370a4 = call %struct.Memory* @routine_movss_0x86790__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4370a4)
  store %struct.Memory* %call_4370a4, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rdi	 RIP: 4370ac	 Bytes: 8
  %loadMem_4370ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4370ac = call %struct.Memory* @routine_movq_0x6cb900___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4370ac)
  store %struct.Memory* %call_4370ac, %struct.Memory** %MEMORY

  ; Code: movss 0x30(%rdi), %xmm1	 RIP: 4370b4	 Bytes: 5
  %loadMem_4370b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4370b4 = call %struct.Memory* @routine_movss_0x30__rdi____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4370b4)
  store %struct.Memory* %call_4370b4, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rdi	 RIP: 4370b9	 Bytes: 8
  %loadMem_4370b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4370b9 = call %struct.Memory* @routine_movq_0x6cb8f8___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4370b9)
  store %struct.Memory* %call_4370b9, %struct.Memory** %MEMORY

  ; Code: movl 0x4d4(%rdi), %ecx	 RIP: 4370c1	 Bytes: 6
  %loadMem_4370c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4370c1 = call %struct.Memory* @routine_movl_0x4d4__rdi____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4370c1)
  store %struct.Memory* %call_4370c1, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 4370c7	 Bytes: 3
  %loadMem_4370c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4370c7 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4370c7)
  store %struct.Memory* %call_4370c7, %struct.Memory** %MEMORY

  ; Code: cvtsi2ssl %ecx, %xmm2	 RIP: 4370ca	 Bytes: 4
  %loadMem_4370ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4370ca = call %struct.Memory* @routine_cvtsi2ssl__ecx___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4370ca)
  store %struct.Memory* %call_4370ca, %struct.Memory** %MEMORY

  ; Code: mulss %xmm2, %xmm1	 RIP: 4370ce	 Bytes: 4
  %loadMem_4370ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4370ce = call %struct.Memory* @routine_mulss__xmm2___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4370ce)
  store %struct.Memory* %call_4370ce, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rdi	 RIP: 4370d2	 Bytes: 8
  %loadMem_4370d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4370d2 = call %struct.Memory* @routine_movq_0x6cb8f8___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4370d2)
  store %struct.Memory* %call_4370d2, %struct.Memory** %MEMORY

  ; Code: movl 0x14(%rdi), %ecx	 RIP: 4370da	 Bytes: 3
  %loadMem_4370da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4370da = call %struct.Memory* @routine_movl_0x14__rdi____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4370da)
  store %struct.Memory* %call_4370da, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 4370dd	 Bytes: 3
  %loadMem_4370dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4370dd = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4370dd)
  store %struct.Memory* %call_4370dd, %struct.Memory** %MEMORY

  ; Code: cvtsi2ssl %ecx, %xmm2	 RIP: 4370e0	 Bytes: 4
  %loadMem_4370e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4370e0 = call %struct.Memory* @routine_cvtsi2ssl__ecx___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4370e0)
  store %struct.Memory* %call_4370e0, %struct.Memory** %MEMORY

  ; Code: divss %xmm2, %xmm1	 RIP: 4370e4	 Bytes: 4
  %loadMem_4370e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4370e4 = call %struct.Memory* @routine_divss__xmm2___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4370e4)
  store %struct.Memory* %call_4370e4, %struct.Memory** %MEMORY

  ; Code: movss %xmm1, -0x58(%rbp)	 RIP: 4370e8	 Bytes: 5
  %loadMem_4370e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4370e8 = call %struct.Memory* @routine_movss__xmm1__MINUS0x58__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4370e8)
  store %struct.Memory* %call_4370e8, %struct.Memory** %MEMORY

  ; Code: cvtsi2ssl -0x54(%rbp), %xmm1	 RIP: 4370ed	 Bytes: 5
  %loadMem_4370ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4370ed = call %struct.Memory* @routine_cvtsi2ssl_MINUS0x54__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4370ed)
  store %struct.Memory* %call_4370ed, %struct.Memory** %MEMORY

  ; Code: mulss -0x58(%rbp), %xmm1	 RIP: 4370f2	 Bytes: 5
  %loadMem_4370f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4370f2 = call %struct.Memory* @routine_mulss_MINUS0x58__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4370f2)
  store %struct.Memory* %call_4370f2, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rdi	 RIP: 4370f7	 Bytes: 8
  %loadMem_4370f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4370f7 = call %struct.Memory* @routine_movq_0x6cb8f8___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4370f7)
  store %struct.Memory* %call_4370f7, %struct.Memory** %MEMORY

  ; Code: movl 0x8(%rdi), %ecx	 RIP: 4370ff	 Bytes: 3
  %loadMem_4370ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4370ff = call %struct.Memory* @routine_movl_0x8__rdi____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4370ff)
  store %struct.Memory* %call_4370ff, %struct.Memory** %MEMORY

  ; Code: addl 0x722ca8, %ecx	 RIP: 437102	 Bytes: 7
  %loadMem_437102 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437102 = call %struct.Memory* @routine_addl_0x722ca8___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437102)
  store %struct.Memory* %call_437102, %struct.Memory** %MEMORY

  ; Code: cvtsi2ssl %ecx, %xmm2	 RIP: 437109	 Bytes: 4
  %loadMem_437109 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437109 = call %struct.Memory* @routine_cvtsi2ssl__ecx___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437109)
  store %struct.Memory* %call_437109, %struct.Memory** %MEMORY

  ; Code: divss %xmm2, %xmm1	 RIP: 43710d	 Bytes: 4
  %loadMem_43710d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43710d = call %struct.Memory* @routine_divss__xmm2___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43710d)
  store %struct.Memory* %call_43710d, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb908, %rdi	 RIP: 437111	 Bytes: 8
  %loadMem_437111 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437111 = call %struct.Memory* @routine_movq_0x6cb908___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437111)
  store %struct.Memory* %call_437111, %struct.Memory** %MEMORY

  ; Code: movss %xmm1, 0xc(%rdi)	 RIP: 437119	 Bytes: 5
  %loadMem_437119 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437119 = call %struct.Memory* @routine_movss__xmm1__0xc__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437119)
  store %struct.Memory* %call_437119, %struct.Memory** %MEMORY

  ; Code: movq 0x6cbe00, %rdi	 RIP: 43711e	 Bytes: 8
  %loadMem_43711e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43711e = call %struct.Memory* @routine_movq_0x6cbe00___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43711e)
  store %struct.Memory* %call_43711e, %struct.Memory** %MEMORY

  ; Code: cvtss2sd -0x58(%rbp), %xmm1	 RIP: 437126	 Bytes: 5
  %loadMem_437126 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437126 = call %struct.Memory* @routine_cvtss2sd_MINUS0x58__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437126)
  store %struct.Memory* %call_437126, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb908, %r11	 RIP: 43712b	 Bytes: 8
  %loadMem_43712b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43712b = call %struct.Memory* @routine_movq_0x6cb908___r11(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43712b)
  store %struct.Memory* %call_43712b, %struct.Memory** %MEMORY

  ; Code: movss 0xc(%r11), %xmm2	 RIP: 437133	 Bytes: 6
  %loadMem_437133 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437133 = call %struct.Memory* @routine_movss_0xc__r11____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437133)
  store %struct.Memory* %call_437133, %struct.Memory** %MEMORY

  ; Code: divss %xmm0, %xmm2	 RIP: 437139	 Bytes: 4
  %loadMem_437139 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437139 = call %struct.Memory* @routine_divss__xmm0___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437139)
  store %struct.Memory* %call_437139, %struct.Memory** %MEMORY

  ; Code: cvtss2sd %xmm2, %xmm0	 RIP: 43713d	 Bytes: 4
  %loadMem_43713d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43713d = call %struct.Memory* @routine_cvtss2sd__xmm2___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43713d)
  store %struct.Memory* %call_43713d, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x660(%rbp)	 RIP: 437141	 Bytes: 8
  %loadMem_437141 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437141 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x660__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437141)
  store %struct.Memory* %call_437141, %struct.Memory** %MEMORY

  ; Code: movaps %xmm1, %xmm0	 RIP: 437149	 Bytes: 3
  %loadMem_437149 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437149 = call %struct.Memory* @routine_movaps__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437149)
  store %struct.Memory* %call_437149, %struct.Memory** %MEMORY

  ; Code: movsd -0x660(%rbp), %xmm1	 RIP: 43714c	 Bytes: 8
  %loadMem_43714c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43714c = call %struct.Memory* @routine_movsd_MINUS0x660__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43714c)
  store %struct.Memory* %call_43714c, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x664(%rbp)	 RIP: 437154	 Bytes: 6
  %loadMem_437154 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437154 = call %struct.Memory* @routine_movl__eax__MINUS0x664__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437154)
  store %struct.Memory* %call_437154, %struct.Memory** %MEMORY

  ; Code: movb $0x2, %al	 RIP: 43715a	 Bytes: 2
  %loadMem_43715a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43715a = call %struct.Memory* @routine_movb__0x2___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43715a)
  store %struct.Memory* %call_43715a, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 43715c	 Bytes: 5
  %loadMem1_43715c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43715c = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43715c, i64 -221260, i64 5, i64 5)
  store %struct.Memory* %call1_43715c, %struct.Memory** %MEMORY

  %loadMem2_43715c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43715c = load i64, i64* %3
  %call2_43715c = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_43715c, %struct.Memory* %loadMem2_43715c)
  store %struct.Memory* %call2_43715c, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x668(%rbp)	 RIP: 437161	 Bytes: 6
  %loadMem_437161 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437161 = call %struct.Memory* @routine_movl__eax__MINUS0x668__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437161)
  store %struct.Memory* %call_437161, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4373e1	 RIP: 437167	 Bytes: 5
  %loadMem_437167 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437167 = call %struct.Memory* @routine_jmpq_.L_4373e1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437167, i64 634, i64 5)
  store %struct.Memory* %call_437167, %struct.Memory** %MEMORY

  br label %block_.L_4373e1

  ; Code: .L_43716c:	 RIP: 43716c	 Bytes: 0
block_.L_43716c:

  ; Code: movq 0x6cb8f8, %rax	 RIP: 43716c	 Bytes: 8
  %loadMem_43716c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43716c = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43716c)
  store %struct.Memory* %call_43716c, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x4f8(%rax)	 RIP: 437174	 Bytes: 7
  %loadMem_437174 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437174 = call %struct.Memory* @routine_cmpl__0x0__0x4f8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437174)
  store %struct.Memory* %call_437174, %struct.Memory** %MEMORY

  ; Code: jne .L_4372b1	 RIP: 43717b	 Bytes: 6
  %loadMem_43717b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43717b = call %struct.Memory* @routine_jne_.L_4372b1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43717b, i8* %BRANCH_TAKEN, i64 310, i64 6, i64 6)
  store %struct.Memory* %call_43717b, %struct.Memory** %MEMORY

  %loadBr_43717b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43717b = icmp eq i8 %loadBr_43717b, 1
  br i1 %cmpBr_43717b, label %block_.L_4372b1, label %block_437181

block_437181:
  ; Code: movq $0x4c0dca, %rsi	 RIP: 437181	 Bytes: 10
  %loadMem_437181 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437181 = call %struct.Memory* @routine_movq__0x4c0dca___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437181)
  store %struct.Memory* %call_437181, %struct.Memory** %MEMORY

  ; Code: movq 0x6cbe00, %rdi	 RIP: 43718b	 Bytes: 8
  %loadMem_43718b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43718b = call %struct.Memory* @routine_movq_0x6cbe00___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43718b)
  store %struct.Memory* %call_43718b, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb908, %rax	 RIP: 437193	 Bytes: 8
  %loadMem_437193 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437193 = call %struct.Memory* @routine_movq_0x6cb908___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437193)
  store %struct.Memory* %call_437193, %struct.Memory** %MEMORY

  ; Code: movl 0x2c4(%rax), %ecx	 RIP: 43719b	 Bytes: 6
  %loadMem_43719b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43719b = call %struct.Memory* @routine_movl_0x2c4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43719b)
  store %struct.Memory* %call_43719b, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb908, %rax	 RIP: 4371a1	 Bytes: 8
  %loadMem_4371a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4371a1 = call %struct.Memory* @routine_movq_0x6cb908___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4371a1)
  store %struct.Memory* %call_4371a1, %struct.Memory** %MEMORY

  ; Code: addl 0x2c0(%rax), %ecx	 RIP: 4371a9	 Bytes: 6
  %loadMem_4371a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4371a9 = call %struct.Memory* @routine_addl_0x2c0__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4371a9)
  store %struct.Memory* %call_4371a9, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb908, %rax	 RIP: 4371af	 Bytes: 8
  %loadMem_4371af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4371af = call %struct.Memory* @routine_movq_0x6cb908___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4371af)
  store %struct.Memory* %call_4371af, %struct.Memory** %MEMORY

  ; Code: addl 0x5d0(%rax), %ecx	 RIP: 4371b7	 Bytes: 6
  %loadMem_4371b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4371b7 = call %struct.Memory* @routine_addl_0x5d0__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4371b7)
  store %struct.Memory* %call_4371b7, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x54(%rbp)	 RIP: 4371bd	 Bytes: 3
  %loadMem_4371bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4371bd = call %struct.Memory* @routine_movl__ecx__MINUS0x54__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4371bd)
  store %struct.Memory* %call_4371bd, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb908, %rax	 RIP: 4371c0	 Bytes: 8
  %loadMem_4371c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4371c0 = call %struct.Memory* @routine_movq_0x6cb908___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4371c0)
  store %struct.Memory* %call_4371c0, %struct.Memory** %MEMORY

  ; Code: movl 0x2c0(%rax), %edx	 RIP: 4371c8	 Bytes: 6
  %loadMem_4371c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4371c8 = call %struct.Memory* @routine_movl_0x2c0__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4371c8)
  store %struct.Memory* %call_4371c8, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb908, %rax	 RIP: 4371ce	 Bytes: 8
  %loadMem_4371ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4371ce = call %struct.Memory* @routine_movq_0x6cb908___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4371ce)
  store %struct.Memory* %call_4371ce, %struct.Memory** %MEMORY

  ; Code: movl 0x2c4(%rax), %r8d	 RIP: 4371d6	 Bytes: 7
  %loadMem_4371d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4371d6 = call %struct.Memory* @routine_movl_0x2c4__rax____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4371d6)
  store %struct.Memory* %call_4371d6, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb908, %rax	 RIP: 4371dd	 Bytes: 8
  %loadMem_4371dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4371dd = call %struct.Memory* @routine_movq_0x6cb908___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4371dd)
  store %struct.Memory* %call_4371dd, %struct.Memory** %MEMORY

  ; Code: movl 0x5d0(%rax), %r9d	 RIP: 4371e5	 Bytes: 7
  %loadMem_4371e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4371e5 = call %struct.Memory* @routine_movl_0x5d0__rax____r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4371e5)
  store %struct.Memory* %call_4371e5, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x66c(%rbp)	 RIP: 4371ec	 Bytes: 6
  %loadMem_4371ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4371ec = call %struct.Memory* @routine_movl__edx__MINUS0x66c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4371ec)
  store %struct.Memory* %call_4371ec, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 4371f2	 Bytes: 2
  %loadMem_4371f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4371f2 = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4371f2)
  store %struct.Memory* %call_4371f2, %struct.Memory** %MEMORY

  ; Code: movl -0x66c(%rbp), %ecx	 RIP: 4371f4	 Bytes: 6
  %loadMem_4371f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4371f4 = call %struct.Memory* @routine_movl_MINUS0x66c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4371f4)
  store %struct.Memory* %call_4371f4, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 4371fa	 Bytes: 2
  %loadMem_4371fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4371fa = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4371fa)
  store %struct.Memory* %call_4371fa, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 4371fc	 Bytes: 5
  %loadMem1_4371fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4371fc = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4371fc, i64 -221420, i64 5, i64 5)
  store %struct.Memory* %call1_4371fc, %struct.Memory** %MEMORY

  %loadMem2_4371fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4371fc = load i64, i64* %3
  %call2_4371fc = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_4371fc, %struct.Memory* %loadMem2_4371fc)
  store %struct.Memory* %call2_4371fc, %struct.Memory** %MEMORY

  ; Code: movq $0x4c0d9e, %rsi	 RIP: 437201	 Bytes: 10
  %loadMem_437201 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437201 = call %struct.Memory* @routine_movq__0x4c0d9e___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437201)
  store %struct.Memory* %call_437201, %struct.Memory** %MEMORY

  ; Code: movss 0x86629(%rip), %xmm0	 RIP: 43720b	 Bytes: 8
  %loadMem_43720b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43720b = call %struct.Memory* @routine_movss_0x86629__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43720b)
  store %struct.Memory* %call_43720b, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rdi	 RIP: 437213	 Bytes: 8
  %loadMem_437213 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437213 = call %struct.Memory* @routine_movq_0x6cb900___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437213)
  store %struct.Memory* %call_437213, %struct.Memory** %MEMORY

  ; Code: movss 0x30(%rdi), %xmm1	 RIP: 43721b	 Bytes: 5
  %loadMem_43721b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43721b = call %struct.Memory* @routine_movss_0x30__rdi____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43721b)
  store %struct.Memory* %call_43721b, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rdi	 RIP: 437220	 Bytes: 8
  %loadMem_437220 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437220 = call %struct.Memory* @routine_movq_0x6cb8f8___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437220)
  store %struct.Memory* %call_437220, %struct.Memory** %MEMORY

  ; Code: movl 0x14(%rdi), %ecx	 RIP: 437228	 Bytes: 3
  %loadMem_437228 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437228 = call %struct.Memory* @routine_movl_0x14__rdi____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437228)
  store %struct.Memory* %call_437228, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 43722b	 Bytes: 3
  %loadMem_43722b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43722b = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43722b)
  store %struct.Memory* %call_43722b, %struct.Memory** %MEMORY

  ; Code: cvtsi2ssl %ecx, %xmm2	 RIP: 43722e	 Bytes: 4
  %loadMem_43722e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43722e = call %struct.Memory* @routine_cvtsi2ssl__ecx___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43722e)
  store %struct.Memory* %call_43722e, %struct.Memory** %MEMORY

  ; Code: divss %xmm2, %xmm1	 RIP: 437232	 Bytes: 4
  %loadMem_437232 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437232 = call %struct.Memory* @routine_divss__xmm2___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437232)
  store %struct.Memory* %call_437232, %struct.Memory** %MEMORY

  ; Code: movss %xmm1, -0x58(%rbp)	 RIP: 437236	 Bytes: 5
  %loadMem_437236 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437236 = call %struct.Memory* @routine_movss__xmm1__MINUS0x58__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437236)
  store %struct.Memory* %call_437236, %struct.Memory** %MEMORY

  ; Code: cvtsi2ssl -0x54(%rbp), %xmm1	 RIP: 43723b	 Bytes: 5
  %loadMem_43723b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43723b = call %struct.Memory* @routine_cvtsi2ssl_MINUS0x54__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43723b)
  store %struct.Memory* %call_43723b, %struct.Memory** %MEMORY

  ; Code: mulss -0x58(%rbp), %xmm1	 RIP: 437240	 Bytes: 5
  %loadMem_437240 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437240 = call %struct.Memory* @routine_mulss_MINUS0x58__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437240)
  store %struct.Memory* %call_437240, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rdi	 RIP: 437245	 Bytes: 8
  %loadMem_437245 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437245 = call %struct.Memory* @routine_movq_0x6cb8f8___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437245)
  store %struct.Memory* %call_437245, %struct.Memory** %MEMORY

  ; Code: cvtsi2ssl 0x8(%rdi), %xmm2	 RIP: 43724d	 Bytes: 5
  %loadMem_43724d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43724d = call %struct.Memory* @routine_cvtsi2ssl_0x8__rdi____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43724d)
  store %struct.Memory* %call_43724d, %struct.Memory** %MEMORY

  ; Code: divss %xmm2, %xmm1	 RIP: 437252	 Bytes: 4
  %loadMem_437252 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437252 = call %struct.Memory* @routine_divss__xmm2___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437252)
  store %struct.Memory* %call_437252, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb908, %rdi	 RIP: 437256	 Bytes: 8
  %loadMem_437256 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437256 = call %struct.Memory* @routine_movq_0x6cb908___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437256)
  store %struct.Memory* %call_437256, %struct.Memory** %MEMORY

  ; Code: movss %xmm1, 0xc(%rdi)	 RIP: 43725e	 Bytes: 5
  %loadMem_43725e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43725e = call %struct.Memory* @routine_movss__xmm1__0xc__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43725e)
  store %struct.Memory* %call_43725e, %struct.Memory** %MEMORY

  ; Code: movq 0x6cbe00, %rdi	 RIP: 437263	 Bytes: 8
  %loadMem_437263 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437263 = call %struct.Memory* @routine_movq_0x6cbe00___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437263)
  store %struct.Memory* %call_437263, %struct.Memory** %MEMORY

  ; Code: cvtss2sd -0x58(%rbp), %xmm1	 RIP: 43726b	 Bytes: 5
  %loadMem_43726b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43726b = call %struct.Memory* @routine_cvtss2sd_MINUS0x58__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43726b)
  store %struct.Memory* %call_43726b, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb908, %r10	 RIP: 437270	 Bytes: 8
  %loadMem_437270 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437270 = call %struct.Memory* @routine_movq_0x6cb908___r10(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437270)
  store %struct.Memory* %call_437270, %struct.Memory** %MEMORY

  ; Code: movss 0xc(%r10), %xmm2	 RIP: 437278	 Bytes: 6
  %loadMem_437278 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437278 = call %struct.Memory* @routine_movss_0xc__r10____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437278)
  store %struct.Memory* %call_437278, %struct.Memory** %MEMORY

  ; Code: divss %xmm0, %xmm2	 RIP: 43727e	 Bytes: 4
  %loadMem_43727e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43727e = call %struct.Memory* @routine_divss__xmm0___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43727e)
  store %struct.Memory* %call_43727e, %struct.Memory** %MEMORY

  ; Code: cvtss2sd %xmm2, %xmm0	 RIP: 437282	 Bytes: 4
  %loadMem_437282 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437282 = call %struct.Memory* @routine_cvtss2sd__xmm2___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437282)
  store %struct.Memory* %call_437282, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x678(%rbp)	 RIP: 437286	 Bytes: 8
  %loadMem_437286 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437286 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x678__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437286)
  store %struct.Memory* %call_437286, %struct.Memory** %MEMORY

  ; Code: movaps %xmm1, %xmm0	 RIP: 43728e	 Bytes: 3
  %loadMem_43728e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43728e = call %struct.Memory* @routine_movaps__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43728e)
  store %struct.Memory* %call_43728e, %struct.Memory** %MEMORY

  ; Code: movsd -0x678(%rbp), %xmm1	 RIP: 437291	 Bytes: 8
  %loadMem_437291 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437291 = call %struct.Memory* @routine_movsd_MINUS0x678__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437291)
  store %struct.Memory* %call_437291, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x67c(%rbp)	 RIP: 437299	 Bytes: 6
  %loadMem_437299 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437299 = call %struct.Memory* @routine_movl__eax__MINUS0x67c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437299)
  store %struct.Memory* %call_437299, %struct.Memory** %MEMORY

  ; Code: movb $0x2, %al	 RIP: 43729f	 Bytes: 2
  %loadMem_43729f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43729f = call %struct.Memory* @routine_movb__0x2___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43729f)
  store %struct.Memory* %call_43729f, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 4372a1	 Bytes: 5
  %loadMem1_4372a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4372a1 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4372a1, i64 -221585, i64 5, i64 5)
  store %struct.Memory* %call1_4372a1, %struct.Memory** %MEMORY

  %loadMem2_4372a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4372a1 = load i64, i64* %3
  %call2_4372a1 = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_4372a1, %struct.Memory* %loadMem2_4372a1)
  store %struct.Memory* %call2_4372a1, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x680(%rbp)	 RIP: 4372a6	 Bytes: 6
  %loadMem_4372a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4372a6 = call %struct.Memory* @routine_movl__eax__MINUS0x680__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4372a6)
  store %struct.Memory* %call_4372a6, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4373dc	 RIP: 4372ac	 Bytes: 5
  %loadMem_4372ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4372ac = call %struct.Memory* @routine_jmpq_.L_4373dc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4372ac, i64 304, i64 5)
  store %struct.Memory* %call_4372ac, %struct.Memory** %MEMORY

  br label %block_.L_4373dc

  ; Code: .L_4372b1:	 RIP: 4372b1	 Bytes: 0
block_.L_4372b1:

  ; Code: movq $0x4c0dca, %rsi	 RIP: 4372b1	 Bytes: 10
  %loadMem_4372b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4372b1 = call %struct.Memory* @routine_movq__0x4c0dca___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4372b1)
  store %struct.Memory* %call_4372b1, %struct.Memory** %MEMORY

  ; Code: movq 0x6cbe00, %rdi	 RIP: 4372bb	 Bytes: 8
  %loadMem_4372bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4372bb = call %struct.Memory* @routine_movq_0x6cbe00___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4372bb)
  store %struct.Memory* %call_4372bb, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb908, %rax	 RIP: 4372c3	 Bytes: 8
  %loadMem_4372c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4372c3 = call %struct.Memory* @routine_movq_0x6cb908___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4372c3)
  store %struct.Memory* %call_4372c3, %struct.Memory** %MEMORY

  ; Code: movl 0x2c4(%rax), %ecx	 RIP: 4372cb	 Bytes: 6
  %loadMem_4372cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4372cb = call %struct.Memory* @routine_movl_0x2c4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4372cb)
  store %struct.Memory* %call_4372cb, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb908, %rax	 RIP: 4372d1	 Bytes: 8
  %loadMem_4372d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4372d1 = call %struct.Memory* @routine_movq_0x6cb908___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4372d1)
  store %struct.Memory* %call_4372d1, %struct.Memory** %MEMORY

  ; Code: addl 0x2c0(%rax), %ecx	 RIP: 4372d9	 Bytes: 6
  %loadMem_4372d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4372d9 = call %struct.Memory* @routine_addl_0x2c0__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4372d9)
  store %struct.Memory* %call_4372d9, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb908, %rax	 RIP: 4372df	 Bytes: 8
  %loadMem_4372df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4372df = call %struct.Memory* @routine_movq_0x6cb908___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4372df)
  store %struct.Memory* %call_4372df, %struct.Memory** %MEMORY

  ; Code: addl 0x5d0(%rax), %ecx	 RIP: 4372e7	 Bytes: 6
  %loadMem_4372e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4372e7 = call %struct.Memory* @routine_addl_0x5d0__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4372e7)
  store %struct.Memory* %call_4372e7, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x54(%rbp)	 RIP: 4372ed	 Bytes: 3
  %loadMem_4372ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4372ed = call %struct.Memory* @routine_movl__ecx__MINUS0x54__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4372ed)
  store %struct.Memory* %call_4372ed, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb908, %rax	 RIP: 4372f0	 Bytes: 8
  %loadMem_4372f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4372f0 = call %struct.Memory* @routine_movq_0x6cb908___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4372f0)
  store %struct.Memory* %call_4372f0, %struct.Memory** %MEMORY

  ; Code: movl 0x2c0(%rax), %edx	 RIP: 4372f8	 Bytes: 6
  %loadMem_4372f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4372f8 = call %struct.Memory* @routine_movl_0x2c0__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4372f8)
  store %struct.Memory* %call_4372f8, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb908, %rax	 RIP: 4372fe	 Bytes: 8
  %loadMem_4372fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4372fe = call %struct.Memory* @routine_movq_0x6cb908___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4372fe)
  store %struct.Memory* %call_4372fe, %struct.Memory** %MEMORY

  ; Code: movl 0x2c4(%rax), %r8d	 RIP: 437306	 Bytes: 7
  %loadMem_437306 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437306 = call %struct.Memory* @routine_movl_0x2c4__rax____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437306)
  store %struct.Memory* %call_437306, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb908, %rax	 RIP: 43730d	 Bytes: 8
  %loadMem_43730d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43730d = call %struct.Memory* @routine_movq_0x6cb908___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43730d)
  store %struct.Memory* %call_43730d, %struct.Memory** %MEMORY

  ; Code: movl 0x5d0(%rax), %r9d	 RIP: 437315	 Bytes: 7
  %loadMem_437315 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437315 = call %struct.Memory* @routine_movl_0x5d0__rax____r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437315)
  store %struct.Memory* %call_437315, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x684(%rbp)	 RIP: 43731c	 Bytes: 6
  %loadMem_43731c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43731c = call %struct.Memory* @routine_movl__edx__MINUS0x684__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43731c)
  store %struct.Memory* %call_43731c, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 437322	 Bytes: 2
  %loadMem_437322 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437322 = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437322)
  store %struct.Memory* %call_437322, %struct.Memory** %MEMORY

  ; Code: movl -0x684(%rbp), %ecx	 RIP: 437324	 Bytes: 6
  %loadMem_437324 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437324 = call %struct.Memory* @routine_movl_MINUS0x684__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437324)
  store %struct.Memory* %call_437324, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 43732a	 Bytes: 2
  %loadMem_43732a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43732a = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43732a)
  store %struct.Memory* %call_43732a, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 43732c	 Bytes: 5
  %loadMem1_43732c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43732c = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43732c, i64 -221724, i64 5, i64 5)
  store %struct.Memory* %call1_43732c, %struct.Memory** %MEMORY

  %loadMem2_43732c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43732c = load i64, i64* %3
  %call2_43732c = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_43732c, %struct.Memory* %loadMem2_43732c)
  store %struct.Memory* %call2_43732c, %struct.Memory** %MEMORY

  ; Code: movq $0x4c0d9e, %rsi	 RIP: 437331	 Bytes: 10
  %loadMem_437331 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437331 = call %struct.Memory* @routine_movq__0x4c0d9e___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437331)
  store %struct.Memory* %call_437331, %struct.Memory** %MEMORY

  ; Code: movss 0x864f9(%rip), %xmm0	 RIP: 43733b	 Bytes: 8
  %loadMem_43733b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43733b = call %struct.Memory* @routine_movss_0x864f9__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43733b)
  store %struct.Memory* %call_43733b, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rdi	 RIP: 437343	 Bytes: 8
  %loadMem_437343 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437343 = call %struct.Memory* @routine_movq_0x6cb900___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437343)
  store %struct.Memory* %call_437343, %struct.Memory** %MEMORY

  ; Code: movss 0x30(%rdi), %xmm1	 RIP: 43734b	 Bytes: 5
  %loadMem_43734b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43734b = call %struct.Memory* @routine_movss_0x30__rdi____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43734b)
  store %struct.Memory* %call_43734b, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rdi	 RIP: 437350	 Bytes: 8
  %loadMem_437350 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437350 = call %struct.Memory* @routine_movq_0x6cb8f8___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437350)
  store %struct.Memory* %call_437350, %struct.Memory** %MEMORY

  ; Code: movl 0x14(%rdi), %ecx	 RIP: 437358	 Bytes: 3
  %loadMem_437358 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437358 = call %struct.Memory* @routine_movl_0x14__rdi____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437358)
  store %struct.Memory* %call_437358, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 43735b	 Bytes: 3
  %loadMem_43735b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43735b = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43735b)
  store %struct.Memory* %call_43735b, %struct.Memory** %MEMORY

  ; Code: cvtsi2ssl %ecx, %xmm2	 RIP: 43735e	 Bytes: 4
  %loadMem_43735e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43735e = call %struct.Memory* @routine_cvtsi2ssl__ecx___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43735e)
  store %struct.Memory* %call_43735e, %struct.Memory** %MEMORY

  ; Code: divss %xmm2, %xmm1	 RIP: 437362	 Bytes: 4
  %loadMem_437362 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437362 = call %struct.Memory* @routine_divss__xmm2___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437362)
  store %struct.Memory* %call_437362, %struct.Memory** %MEMORY

  ; Code: movss %xmm1, -0x58(%rbp)	 RIP: 437366	 Bytes: 5
  %loadMem_437366 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437366 = call %struct.Memory* @routine_movss__xmm1__MINUS0x58__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437366)
  store %struct.Memory* %call_437366, %struct.Memory** %MEMORY

  ; Code: cvtsi2ssl -0x54(%rbp), %xmm1	 RIP: 43736b	 Bytes: 5
  %loadMem_43736b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43736b = call %struct.Memory* @routine_cvtsi2ssl_MINUS0x54__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43736b)
  store %struct.Memory* %call_43736b, %struct.Memory** %MEMORY

  ; Code: mulss -0x58(%rbp), %xmm1	 RIP: 437370	 Bytes: 5
  %loadMem_437370 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437370 = call %struct.Memory* @routine_mulss_MINUS0x58__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437370)
  store %struct.Memory* %call_437370, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rdi	 RIP: 437375	 Bytes: 8
  %loadMem_437375 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437375 = call %struct.Memory* @routine_movq_0x6cb8f8___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437375)
  store %struct.Memory* %call_437375, %struct.Memory** %MEMORY

  ; Code: cvtsi2ssl 0x8(%rdi), %xmm2	 RIP: 43737d	 Bytes: 5
  %loadMem_43737d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43737d = call %struct.Memory* @routine_cvtsi2ssl_0x8__rdi____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43737d)
  store %struct.Memory* %call_43737d, %struct.Memory** %MEMORY

  ; Code: divss %xmm2, %xmm1	 RIP: 437382	 Bytes: 4
  %loadMem_437382 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437382 = call %struct.Memory* @routine_divss__xmm2___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437382)
  store %struct.Memory* %call_437382, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb908, %rdi	 RIP: 437386	 Bytes: 8
  %loadMem_437386 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437386 = call %struct.Memory* @routine_movq_0x6cb908___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437386)
  store %struct.Memory* %call_437386, %struct.Memory** %MEMORY

  ; Code: movss %xmm1, 0xc(%rdi)	 RIP: 43738e	 Bytes: 5
  %loadMem_43738e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43738e = call %struct.Memory* @routine_movss__xmm1__0xc__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43738e)
  store %struct.Memory* %call_43738e, %struct.Memory** %MEMORY

  ; Code: movq 0x6cbe00, %rdi	 RIP: 437393	 Bytes: 8
  %loadMem_437393 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437393 = call %struct.Memory* @routine_movq_0x6cbe00___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437393)
  store %struct.Memory* %call_437393, %struct.Memory** %MEMORY

  ; Code: cvtss2sd -0x58(%rbp), %xmm1	 RIP: 43739b	 Bytes: 5
  %loadMem_43739b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43739b = call %struct.Memory* @routine_cvtss2sd_MINUS0x58__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43739b)
  store %struct.Memory* %call_43739b, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb908, %r10	 RIP: 4373a0	 Bytes: 8
  %loadMem_4373a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4373a0 = call %struct.Memory* @routine_movq_0x6cb908___r10(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4373a0)
  store %struct.Memory* %call_4373a0, %struct.Memory** %MEMORY

  ; Code: movss 0xc(%r10), %xmm2	 RIP: 4373a8	 Bytes: 6
  %loadMem_4373a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4373a8 = call %struct.Memory* @routine_movss_0xc__r10____xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4373a8)
  store %struct.Memory* %call_4373a8, %struct.Memory** %MEMORY

  ; Code: divss %xmm0, %xmm2	 RIP: 4373ae	 Bytes: 4
  %loadMem_4373ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4373ae = call %struct.Memory* @routine_divss__xmm0___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4373ae)
  store %struct.Memory* %call_4373ae, %struct.Memory** %MEMORY

  ; Code: cvtss2sd %xmm2, %xmm0	 RIP: 4373b2	 Bytes: 4
  %loadMem_4373b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4373b2 = call %struct.Memory* @routine_cvtss2sd__xmm2___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4373b2)
  store %struct.Memory* %call_4373b2, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x690(%rbp)	 RIP: 4373b6	 Bytes: 8
  %loadMem_4373b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4373b6 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x690__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4373b6)
  store %struct.Memory* %call_4373b6, %struct.Memory** %MEMORY

  ; Code: movaps %xmm1, %xmm0	 RIP: 4373be	 Bytes: 3
  %loadMem_4373be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4373be = call %struct.Memory* @routine_movaps__xmm1___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4373be)
  store %struct.Memory* %call_4373be, %struct.Memory** %MEMORY

  ; Code: movsd -0x690(%rbp), %xmm1	 RIP: 4373c1	 Bytes: 8
  %loadMem_4373c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4373c1 = call %struct.Memory* @routine_movsd_MINUS0x690__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4373c1)
  store %struct.Memory* %call_4373c1, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x694(%rbp)	 RIP: 4373c9	 Bytes: 6
  %loadMem_4373c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4373c9 = call %struct.Memory* @routine_movl__eax__MINUS0x694__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4373c9)
  store %struct.Memory* %call_4373c9, %struct.Memory** %MEMORY

  ; Code: movb $0x2, %al	 RIP: 4373cf	 Bytes: 2
  %loadMem_4373cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4373cf = call %struct.Memory* @routine_movb__0x2___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4373cf)
  store %struct.Memory* %call_4373cf, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 4373d1	 Bytes: 5
  %loadMem1_4373d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4373d1 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4373d1, i64 -221889, i64 5, i64 5)
  store %struct.Memory* %call1_4373d1, %struct.Memory** %MEMORY

  %loadMem2_4373d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4373d1 = load i64, i64* %3
  %call2_4373d1 = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_4373d1, %struct.Memory* %loadMem2_4373d1)
  store %struct.Memory* %call2_4373d1, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x698(%rbp)	 RIP: 4373d6	 Bytes: 6
  %loadMem_4373d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4373d6 = call %struct.Memory* @routine_movl__eax__MINUS0x698__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4373d6)
  store %struct.Memory* %call_4373d6, %struct.Memory** %MEMORY

  ; Code: .L_4373dc:	 RIP: 4373dc	 Bytes: 0
  br label %block_.L_4373dc
block_.L_4373dc:

  ; Code: jmpq .L_4373e1	 RIP: 4373dc	 Bytes: 5
  %loadMem_4373dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4373dc = call %struct.Memory* @routine_jmpq_.L_4373e1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4373dc, i64 5, i64 5)
  store %struct.Memory* %call_4373dc, %struct.Memory** %MEMORY

  br label %block_.L_4373e1

  ; Code: .L_4373e1:	 RIP: 4373e1	 Bytes: 0
block_.L_4373e1:

  ; Code: movq $0x4c0e0b, %rsi	 RIP: 4373e1	 Bytes: 10
  %loadMem_4373e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4373e1 = call %struct.Memory* @routine_movq__0x4c0e0b___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4373e1)
  store %struct.Memory* %call_4373e1, %struct.Memory** %MEMORY

  ; Code: movq 0x6cbe00, %rdi	 RIP: 4373eb	 Bytes: 8
  %loadMem_4373eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4373eb = call %struct.Memory* @routine_movq_0x6cbe00___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4373eb)
  store %struct.Memory* %call_4373eb, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb908, %rax	 RIP: 4373f3	 Bytes: 8
  %loadMem_4373f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4373f3 = call %struct.Memory* @routine_movq_0x6cb908___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4373f3)
  store %struct.Memory* %call_4373f3, %struct.Memory** %MEMORY

  ; Code: movl 0x1c(%rax), %edx	 RIP: 4373fb	 Bytes: 3
  %loadMem_4373fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4373fb = call %struct.Memory* @routine_movl_0x1c__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4373fb)
  store %struct.Memory* %call_4373fb, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 4373fe	 Bytes: 2
  %loadMem_4373fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4373fe = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4373fe)
  store %struct.Memory* %call_4373fe, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 437400	 Bytes: 5
  %loadMem1_437400 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_437400 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_437400, i64 -221936, i64 5, i64 5)
  store %struct.Memory* %call1_437400, %struct.Memory** %MEMORY

  %loadMem2_437400 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_437400 = load i64, i64* %3
  %call2_437400 = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_437400, %struct.Memory* %loadMem2_437400)
  store %struct.Memory* %call2_437400, %struct.Memory** %MEMORY

  ; Code: movq $0x4c0e35, %rsi	 RIP: 437405	 Bytes: 10
  %loadMem_437405 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437405 = call %struct.Memory* @routine_movq__0x4c0e35___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437405)
  store %struct.Memory* %call_437405, %struct.Memory** %MEMORY

  ; Code: movq 0x6cbe00, %rdi	 RIP: 43740f	 Bytes: 8
  %loadMem_43740f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43740f = call %struct.Memory* @routine_movq_0x6cbe00___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43740f)
  store %struct.Memory* %call_43740f, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb908, %rcx	 RIP: 437417	 Bytes: 8
  %loadMem_437417 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437417 = call %struct.Memory* @routine_movq_0x6cb908___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437417)
  store %struct.Memory* %call_437417, %struct.Memory** %MEMORY

  ; Code: movl 0x5d0(%rcx), %edx	 RIP: 43741f	 Bytes: 6
  %loadMem_43741f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43741f = call %struct.Memory* @routine_movl_0x5d0__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43741f)
  store %struct.Memory* %call_43741f, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x69c(%rbp)	 RIP: 437425	 Bytes: 6
  %loadMem_437425 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437425 = call %struct.Memory* @routine_movl__eax__MINUS0x69c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437425)
  store %struct.Memory* %call_437425, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 43742b	 Bytes: 2
  %loadMem_43742b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43742b = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43742b)
  store %struct.Memory* %call_43742b, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 43742d	 Bytes: 5
  %loadMem1_43742d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43742d = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43742d, i64 -221981, i64 5, i64 5)
  store %struct.Memory* %call1_43742d, %struct.Memory** %MEMORY

  %loadMem2_43742d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43742d = load i64, i64* %3
  %call2_43742d = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_43742d, %struct.Memory* %loadMem2_43742d)
  store %struct.Memory* %call2_43742d, %struct.Memory** %MEMORY

  ; Code: movq $0x4c054d, %rsi	 RIP: 437432	 Bytes: 10
  %loadMem_437432 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437432 = call %struct.Memory* @routine_movq__0x4c054d___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437432)
  store %struct.Memory* %call_437432, %struct.Memory** %MEMORY

  ; Code: movq 0x6cbe00, %rdi	 RIP: 43743c	 Bytes: 8
  %loadMem_43743c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43743c = call %struct.Memory* @routine_movq_0x6cbe00___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43743c)
  store %struct.Memory* %call_43743c, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x6a0(%rbp)	 RIP: 437444	 Bytes: 6
  %loadMem_437444 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437444 = call %struct.Memory* @routine_movl__eax__MINUS0x6a0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437444)
  store %struct.Memory* %call_437444, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 43744a	 Bytes: 2
  %loadMem_43744a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43744a = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43744a)
  store %struct.Memory* %call_43744a, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 43744c	 Bytes: 5
  %loadMem1_43744c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43744c = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43744c, i64 -222012, i64 5, i64 5)
  store %struct.Memory* %call1_43744c, %struct.Memory** %MEMORY

  %loadMem2_43744c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43744c = load i64, i64* %3
  %call2_43744c = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_43744c, %struct.Memory* %loadMem2_43744c)
  store %struct.Memory* %call2_43744c, %struct.Memory** %MEMORY

  ; Code: movq $0x4c0e5f, %rsi	 RIP: 437451	 Bytes: 10
  %loadMem_437451 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437451 = call %struct.Memory* @routine_movq__0x4c0e5f___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437451)
  store %struct.Memory* %call_437451, %struct.Memory** %MEMORY

  ; Code: movq $0x4c0e7a, %rdx	 RIP: 43745b	 Bytes: 10
  %loadMem_43745b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43745b = call %struct.Memory* @routine_movq__0x4c0e7a___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43745b)
  store %struct.Memory* %call_43745b, %struct.Memory** %MEMORY

  ; Code: movq $0x4c0e84, %rcx	 RIP: 437465	 Bytes: 10
  %loadMem_437465 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437465 = call %struct.Memory* @routine_movq__0x4c0e84___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437465)
  store %struct.Memory* %call_437465, %struct.Memory** %MEMORY

  ; Code: movq 0x6cbe00, %rdi	 RIP: 43746f	 Bytes: 8
  %loadMem_43746f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43746f = call %struct.Memory* @routine_movq_0x6cbe00___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43746f)
  store %struct.Memory* %call_43746f, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x6a4(%rbp)	 RIP: 437477	 Bytes: 6
  %loadMem_437477 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437477 = call %struct.Memory* @routine_movl__eax__MINUS0x6a4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437477)
  store %struct.Memory* %call_437477, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 43747d	 Bytes: 2
  %loadMem_43747d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43747d = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43747d)
  store %struct.Memory* %call_43747d, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 43747f	 Bytes: 5
  %loadMem1_43747f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43747f = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43747f, i64 -222063, i64 5, i64 5)
  store %struct.Memory* %call1_43747f, %struct.Memory** %MEMORY

  %loadMem2_43747f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43747f = load i64, i64* %3
  %call2_43747f = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_43747f, %struct.Memory* %loadMem2_43747f)
  store %struct.Memory* %call2_43747f, %struct.Memory** %MEMORY

  ; Code: movq $0x4c04ff, %rsi	 RIP: 437484	 Bytes: 10
  %loadMem_437484 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437484 = call %struct.Memory* @routine_movq__0x4c04ff___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437484)
  store %struct.Memory* %call_437484, %struct.Memory** %MEMORY

  ; Code: movq 0x6cbe00, %rdi	 RIP: 43748e	 Bytes: 8
  %loadMem_43748e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43748e = call %struct.Memory* @routine_movq_0x6cbe00___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43748e)
  store %struct.Memory* %call_43748e, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x6a8(%rbp)	 RIP: 437496	 Bytes: 6
  %loadMem_437496 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437496 = call %struct.Memory* @routine_movl__eax__MINUS0x6a8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437496)
  store %struct.Memory* %call_437496, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 43749c	 Bytes: 2
  %loadMem_43749c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43749c = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43749c)
  store %struct.Memory* %call_43749c, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 43749e	 Bytes: 5
  %loadMem1_43749e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43749e = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43749e, i64 -222094, i64 5, i64 5)
  store %struct.Memory* %call1_43749e, %struct.Memory** %MEMORY

  %loadMem2_43749e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43749e = load i64, i64* %3
  %call2_43749e = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_43749e, %struct.Memory* %loadMem2_43749e)
  store %struct.Memory* %call2_43749e, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rcx	 RIP: 4374a3	 Bytes: 8
  %loadMem_4374a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4374a3 = call %struct.Memory* @routine_movq_0x6cb8f8___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4374a3)
  store %struct.Memory* %call_4374a3, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0xc9c(%rcx)	 RIP: 4374ab	 Bytes: 7
  %loadMem_4374ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4374ab = call %struct.Memory* @routine_cmpl__0x0__0xc9c__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4374ab)
  store %struct.Memory* %call_4374ab, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x6ac(%rbp)	 RIP: 4374b2	 Bytes: 6
  %loadMem_4374b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4374b2 = call %struct.Memory* @routine_movl__eax__MINUS0x6ac__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4374b2)
  store %struct.Memory* %call_4374b2, %struct.Memory** %MEMORY

  ; Code: je .L_437557	 RIP: 4374b8	 Bytes: 6
  %loadMem_4374b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4374b8 = call %struct.Memory* @routine_je_.L_437557(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4374b8, i8* %BRANCH_TAKEN, i64 159, i64 6, i64 6)
  store %struct.Memory* %call_4374b8, %struct.Memory** %MEMORY

  %loadBr_4374b8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4374b8 = icmp eq i8 %loadBr_4374b8, 1
  br i1 %cmpBr_4374b8, label %block_.L_437557, label %block_4374be

block_4374be:
  ; Code: movq $0x4c0e88, %rdi	 RIP: 4374be	 Bytes: 10
  %loadMem_4374be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4374be = call %struct.Memory* @routine_movq__0x4c0e88___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4374be)
  store %struct.Memory* %call_4374be, %struct.Memory** %MEMORY

  ; Code: movq $0x4be20a, %rsi	 RIP: 4374c8	 Bytes: 10
  %loadMem_4374c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4374c8 = call %struct.Memory* @routine_movq__0x4be20a___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4374c8)
  store %struct.Memory* %call_4374c8, %struct.Memory** %MEMORY

  ; Code: callq .fopen_plt	 RIP: 4374d2	 Bytes: 5
  %loadMem1_4374d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4374d2 = call %struct.Memory* @routine_callq_.fopen_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4374d2, i64 -222002, i64 5, i64 5)
  store %struct.Memory* %call1_4374d2, %struct.Memory** %MEMORY

  %loadMem2_4374d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4374d2 = load i64, i64* %3
  %call2_4374d2 = call %struct.Memory* @sub_4011a0.fopen_plt(%struct.State* %0, i64  %loadPC_4374d2, %struct.Memory* %loadMem2_4374d2)
  store %struct.Memory* %call2_4374d2, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x70d198	 RIP: 4374d7	 Bytes: 8
  %loadMem_4374d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4374d7 = call %struct.Memory* @routine_movq__rax__0x70d198(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4374d7)
  store %struct.Memory* %call_4374d7, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 4374df	 Bytes: 4
  %loadMem_4374df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4374df = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4374df)
  store %struct.Memory* %call_4374df, %struct.Memory** %MEMORY

  ; Code: jne .L_437520	 RIP: 4374e3	 Bytes: 6
  %loadMem_4374e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4374e3 = call %struct.Memory* @routine_jne_.L_437520(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4374e3, i8* %BRANCH_TAKEN, i64 61, i64 6, i64 6)
  store %struct.Memory* %call_4374e3, %struct.Memory** %MEMORY

  %loadBr_4374e3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4374e3 = icmp eq i8 %loadBr_4374e3, 1
  br i1 %cmpBr_4374e3, label %block_.L_437520, label %block_4374e9

block_4374e9:
  ; Code: movq $0x720c60, %rdi	 RIP: 4374e9	 Bytes: 10
  %loadMem_4374e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4374e9 = call %struct.Memory* @routine_movq__0x720c60___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4374e9)
  store %struct.Memory* %call_4374e9, %struct.Memory** %MEMORY

  ; Code: movl $0x12c, %eax	 RIP: 4374f3	 Bytes: 5
  %loadMem_4374f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4374f3 = call %struct.Memory* @routine_movl__0x12c___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4374f3)
  store %struct.Memory* %call_4374f3, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 4374f8	 Bytes: 2
  %loadMem_4374f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4374f8 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4374f8)
  store %struct.Memory* %call_4374f8, %struct.Memory** %MEMORY

  ; Code: movq $0x4c04eb, %rdx	 RIP: 4374fa	 Bytes: 10
  %loadMem_4374fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4374fa = call %struct.Memory* @routine_movq__0x4c04eb___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4374fa)
  store %struct.Memory* %call_4374fa, %struct.Memory** %MEMORY

  ; Code: movq $0x4c0e97, %rcx	 RIP: 437504	 Bytes: 10
  %loadMem_437504 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437504 = call %struct.Memory* @routine_movq__0x4c0e97___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437504)
  store %struct.Memory* %call_437504, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 43750e	 Bytes: 2
  %loadMem_43750e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43750e = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43750e)
  store %struct.Memory* %call_43750e, %struct.Memory** %MEMORY

  ; Code: callq .snprintf_plt	 RIP: 437510	 Bytes: 5
  %loadMem1_437510 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_437510 = call %struct.Memory* @routine_callq_.snprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_437510, i64 -222400, i64 5, i64 5)
  store %struct.Memory* %call1_437510, %struct.Memory** %MEMORY

  %loadMem2_437510 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_437510 = load i64, i64* %3
  %call2_437510 = call %struct.Memory* @sub_401050.snprintf_plt(%struct.State* %0, i64  %loadPC_437510, %struct.Memory* %loadMem2_437510)
  store %struct.Memory* %call2_437510, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x6b0(%rbp)	 RIP: 437515	 Bytes: 6
  %loadMem_437515 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437515 = call %struct.Memory* @routine_movl__eax__MINUS0x6b0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437515)
  store %struct.Memory* %call_437515, %struct.Memory** %MEMORY

  ; Code: jmpq .L_437552	 RIP: 43751b	 Bytes: 5
  %loadMem_43751b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43751b = call %struct.Memory* @routine_jmpq_.L_437552(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43751b, i64 55, i64 5)
  store %struct.Memory* %call_43751b, %struct.Memory** %MEMORY

  br label %block_.L_437552

  ; Code: .L_437520:	 RIP: 437520	 Bytes: 0
block_.L_437520:

  ; Code: movq $0x4c0eaa, %rsi	 RIP: 437520	 Bytes: 10
  %loadMem_437520 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437520 = call %struct.Memory* @routine_movq__0x4c0eaa___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437520)
  store %struct.Memory* %call_437520, %struct.Memory** %MEMORY

  ; Code: movq 0x70d198, %rdi	 RIP: 43752a	 Bytes: 8
  %loadMem_43752a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43752a = call %struct.Memory* @routine_movq_0x70d198___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43752a)
  store %struct.Memory* %call_43752a, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 437532	 Bytes: 2
  %loadMem_437532 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437532 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437532)
  store %struct.Memory* %call_437532, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 437534	 Bytes: 5
  %loadMem1_437534 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_437534 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_437534, i64 -222244, i64 5, i64 5)
  store %struct.Memory* %call1_437534, %struct.Memory** %MEMORY

  %loadMem2_437534 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_437534 = load i64, i64* %3
  %call2_437534 = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_437534, %struct.Memory* %loadMem2_437534)
  store %struct.Memory* %call2_437534, %struct.Memory** %MEMORY

  ; Code: movq 0x70d198, %rdi	 RIP: 437539	 Bytes: 8
  %loadMem_437539 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437539 = call %struct.Memory* @routine_movq_0x70d198___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437539)
  store %struct.Memory* %call_437539, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x6b4(%rbp)	 RIP: 437541	 Bytes: 6
  %loadMem_437541 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437541 = call %struct.Memory* @routine_movl__eax__MINUS0x6b4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437541)
  store %struct.Memory* %call_437541, %struct.Memory** %MEMORY

  ; Code: callq .fclose_plt	 RIP: 437547	 Bytes: 5
  %loadMem1_437547 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_437547 = call %struct.Memory* @routine_callq_.fclose_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_437547, i64 -222503, i64 5, i64 5)
  store %struct.Memory* %call1_437547, %struct.Memory** %MEMORY

  %loadMem2_437547 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_437547 = load i64, i64* %3
  %call2_437547 = call %struct.Memory* @sub_401020.fclose_plt(%struct.State* %0, i64  %loadPC_437547, %struct.Memory* %loadMem2_437547)
  store %struct.Memory* %call2_437547, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x6b8(%rbp)	 RIP: 43754c	 Bytes: 6
  %loadMem_43754c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43754c = call %struct.Memory* @routine_movl__eax__MINUS0x6b8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43754c)
  store %struct.Memory* %call_43754c, %struct.Memory** %MEMORY

  ; Code: .L_437552:	 RIP: 437552	 Bytes: 0
  br label %block_.L_437552
block_.L_437552:

  ; Code: jmpq .L_437557	 RIP: 437552	 Bytes: 5
  %loadMem_437552 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437552 = call %struct.Memory* @routine_jmpq_.L_437557(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437552, i64 5, i64 5)
  store %struct.Memory* %call_437552, %struct.Memory** %MEMORY

  br label %block_.L_437557

  ; Code: .L_437557:	 RIP: 437557	 Bytes: 0
block_.L_437557:

  ; Code: addq $0x6c0, %rsp	 RIP: 437557	 Bytes: 7
  %loadMem_437557 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_437557 = call %struct.Memory* @routine_addq__0x6c0___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_437557)
  store %struct.Memory* %call_437557, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 43755e	 Bytes: 1
  %loadMem_43755e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43755e = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43755e)
  store %struct.Memory* %call_43755e, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 43755f	 Bytes: 1
  %loadMem_43755f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43755f = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43755f)
  store %struct.Memory* %call_43755f, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_43755f
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

define %struct.Memory* @routine_subq__0x6c0___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 1728)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl_0x6f8edc___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x6f8edc_type* @G_0x6f8edc to i64))
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
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

define %struct.Memory* @routine_cmpl__0x1__0x6cee50(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x6cee50_type* @G_0x6cee50 to i64), i64 1)
  ret %struct.Memory* %8
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

define %struct.Memory* @routine_jle_.L_436095(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_0x6cee50___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x6cee50_type* @G_0x6cee50 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__eax__MINUS0x4bc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1212
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

define %struct.Memory* @routine_jmpq_.L_4360a5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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






define %struct.Memory* @routine_movl_MINUS0x4bc__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 1212
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
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


define %struct.Memory* @routine_movl_0x722ca8___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x722ca8_type* @G_0x722ca8 to i64))
  ret %struct.Memory* %11
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0x0__MINUS0x38__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_cmpl__0x5__MINUS0x38__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 5)
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

define %struct.Memory* @routine_jge_.L_4360e3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movslq_MINUS0x38__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 56
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__0x0__MINUS0x2c__rbp__rax_8_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = load i64, i64* %RAX
  %14 = mul i64 %13, 8
  %15 = add i64 %12, -44
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 8
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %16, i64 0)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_movl_MINUS0x38__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 56
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


define %struct.Memory* @routine_movl__eax__MINUS0x38__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 56
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_4360bf(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_jge_.L_436226(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0xf__MINUS0x34__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 15)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_43613f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i64*
  %6 = load i64, i64* %5
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
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

define %struct.Memory* @routine_addq__0x404___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 1028)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movslq_MINUS0x38__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 56
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
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

define %struct.Memory* @routine_imulq__0x3c___rcx___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 60)
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


define %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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

define %struct.Memory* @routine_addl_MINUS0x2c__rbp__rax_8____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %15 = load i64, i64* %RDX
  %16 = load i64, i64* %RBP
  %17 = load i64, i64* %RAX
  %18 = mul i64 %17, 8
  %19 = add i64 %16, -44
  %20 = add i64 %19, %18
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 4
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %15, i64 %20)
  ret %struct.Memory* %23
}


define %struct.Memory* @routine_movl__edx__MINUS0x2c__rbp__rax_8_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %17 = mul i64 %16, 8
  %18 = add i64 %15, -44
  %19 = add i64 %18, %17
  %20 = load i32, i32* %EDX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 4
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


define %struct.Memory* @routine_jmpq_.L_4360fb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_movl_0x558__rax__rcx_4____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %18 = add i64 %15, 1368
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %19)
  ret %struct.Memory* %22
}












define %struct.Memory* @routine_movl_0x544__rax__rcx_4____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %18 = add i64 %15, 1348
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %19)
  ret %struct.Memory* %22
}












define %struct.Memory* @routine_movl_0x56c__rax__rcx_4____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %18 = add i64 %15, 1388
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %19)
  ret %struct.Memory* %22
}












define %struct.Memory* @routine_movl_0x580__rax__rcx_4____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %18 = add i64 %15, 1408
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %19)
  ret %struct.Memory* %22
}












define %struct.Memory* @routine_movl_0x594__rax__rcx_4____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %18 = add i64 %15, 1428
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %19)
  ret %struct.Memory* %22
}












define %struct.Memory* @routine_movl_0x5a8__rax__rcx_4____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %18 = add i64 %15, 1448
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %19)
  ret %struct.Memory* %22
}












define %struct.Memory* @routine_movl_0x530__rax__rcx_4____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %18 = add i64 %15, 1328
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %19)
  ret %struct.Memory* %22
}














define %struct.Memory* @routine_jmpq_.L_4360ea(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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

define %struct.Memory* @routine_movq__0x4c054d___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x4c054d_type* @G__0x4c054d to i64))
  ret %struct.Memory* %11
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

define %struct.Memory* @routine_movss_0x30__rax____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 48
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SSI2RnIjEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #0 {
  %5 = bitcast i8* %2 to <2 x i32>*
  %6 = load <2 x i32>, <2 x i32>* %5, align 1
  %7 = getelementptr inbounds i8, i8* %2, i64 8
  %8 = bitcast i8* %7 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = trunc i64 %3 to i32
  %11 = sitofp i32 %10 to float
  %12 = bitcast i8* %2 to float*
  store float %11, float* %12, align 1
  %13 = extractelement <2 x i32> %6, i32 1
  %14 = getelementptr inbounds i8, i8* %2, i64 4
  %15 = bitcast i8* %14 to i32*
  store i32 %13, i32* %15, align 1
  %16 = extractelement <2 x i32> %9, i32 0
  %17 = bitcast i8* %7 to i32*
  store i32 %16, i32* %17, align 1
  %18 = extractelement <2 x i32> %9, i32 1
  %19 = getelementptr inbounds i8, i8* %2, i64 12
  %20 = bitcast i8* %19 to i32*
  store i32 %18, i32* %20, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_cvtsi2ssl__ecx___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SSI2RnIjEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSSI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i8* nocapture readonly) #0 {
  %6 = bitcast i8* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = getelementptr inbounds i8, i8* %3, i64 8
  %9 = bitcast i8* %8 to <2 x i32>*
  %10 = load <2 x i32>, <2 x i32>* %9, align 1
  %11 = bitcast i8* %4 to <2 x float>*
  %12 = load <2 x float>, <2 x float>* %11, align 1
  %13 = extractelement <2 x float> %7, i32 0
  %14 = extractelement <2 x float> %12, i32 0
  %15 = fmul float %13, %14
  %16 = bitcast i8* %2 to float*
  store float %15, float* %16, align 1
  %17 = bitcast <2 x float> %7 to <2 x i32>
  %18 = extractelement <2 x i32> %17, i32 1
  %19 = getelementptr inbounds i8, i8* %2, i64 4
  %20 = bitcast i8* %19 to i32*
  store i32 %18, i32* %20, align 1
  %21 = extractelement <2 x i32> %10, i32 0
  %22 = getelementptr inbounds i8, i8* %2, i64 8
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  %24 = extractelement <2 x i32> %10, i32 1
  %25 = getelementptr inbounds i8, i8* %2, i64 12
  %26 = bitcast i8* %25 to i32*
  store i32 %24, i32* %26, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_mulss__xmm1___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSSI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
}




define %struct.Memory* @routine_movl_0x14__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}





define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5DIVSSI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i8* nocapture readonly) #0 {
  %6 = bitcast i8* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = getelementptr inbounds i8, i8* %3, i64 8
  %9 = bitcast i8* %8 to <2 x i32>*
  %10 = load <2 x i32>, <2 x i32>* %9, align 1
  %11 = bitcast i8* %4 to <2 x float>*
  %12 = load <2 x float>, <2 x float>* %11, align 1
  %13 = extractelement <2 x float> %7, i32 0
  %14 = extractelement <2 x float> %12, i32 0
  %15 = fdiv float %13, %14
  %16 = bitcast i8* %2 to float*
  store float %15, float* %16, align 1
  %17 = bitcast <2 x float> %7 to <2 x i32>
  %18 = extractelement <2 x i32> %17, i32 1
  %19 = getelementptr inbounds i8, i8* %2, i64 4
  %20 = bitcast i8* %19 to i32*
  store i32 %18, i32* %20, align 1
  %21 = extractelement <2 x i32> %10, i32 0
  %22 = getelementptr inbounds i8, i8* %2, i64 8
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  %24 = extractelement <2 x i32> %10, i32 1
  %25 = getelementptr inbounds i8, i8* %2, i64 12
  %26 = bitcast i8* %25 to i32*
  store i32 %24, i32* %26, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_divss__xmm1___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5DIVSSI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
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

define %struct.Memory* @routine_movss__xmm0__MINUS0x58__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 88
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SSI2MnIjEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory*, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #0 {
  %5 = bitcast i8* %2 to <2 x i32>*
  %6 = load <2 x i32>, <2 x i32>* %5, align 1
  %7 = getelementptr inbounds i8, i8* %2, i64 8
  %8 = bitcast i8* %7 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = inttoptr i64 %3 to i32*
  %11 = load i32, i32* %10
  %12 = sitofp i32 %11 to float
  %13 = bitcast i8* %2 to float*
  store float %12, float* %13, align 1
  %14 = extractelement <2 x i32> %6, i32 1
  %15 = getelementptr inbounds i8, i8* %2, i64 4
  %16 = bitcast i8* %15 to i32*
  store i32 %14, i32* %16, align 1
  %17 = extractelement <2 x i32> %9, i32 0
  %18 = bitcast i8* %7 to i32*
  store i32 %17, i32* %18, align 1
  %19 = extractelement <2 x i32> %9, i32 1
  %20 = getelementptr inbounds i8, i8* %2, i64 12
  %21 = bitcast i8* %20 to i32*
  store i32 %19, i32* %21, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_cvtsi2ssl_0x2c0__rax____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 704
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SSI2MnIjEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSSI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly, i64) #0 {
  %6 = bitcast i8* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = getelementptr inbounds i8, i8* %3, i64 8
  %9 = bitcast i8* %8 to <2 x i32>*
  %10 = load <2 x i32>, <2 x i32>* %9, align 1
  %11 = inttoptr i64 %4 to float*
  %12 = load float, float* %11
  %13 = extractelement <2 x float> %7, i32 0
  %14 = fmul float %13, %12
  %15 = bitcast i8* %2 to float*
  store float %14, float* %15, align 1
  %16 = bitcast <2 x float> %7 to <2 x i32>
  %17 = extractelement <2 x i32> %16, i32 1
  %18 = getelementptr inbounds i8, i8* %2, i64 4
  %19 = bitcast i8* %18 to i32*
  store i32 %17, i32* %19, align 1
  %20 = extractelement <2 x i32> %10, i32 0
  %21 = getelementptr inbounds i8, i8* %2, i64 8
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  %23 = extractelement <2 x i32> %10, i32 1
  %24 = getelementptr inbounds i8, i8* %2, i64 12
  %25 = bitcast i8* %24 to i32*
  store i32 %23, i32* %25, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_mulss_MINUS0x58__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 88
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSSI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movl_0x8__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addl_0x722ca8___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 ptrtoint( %G_0x722ca8_type* @G_0x722ca8 to i64))
  ret %struct.Memory* %12
}








define %struct.Memory* @routine_movss__xmm0__0x2cc__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 716
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_cvtsi2ssl_0x2c4__rax____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 708
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SSI2MnIjEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}
















define %struct.Memory* @routine_movss__xmm0__0x2d0__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 720
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_cvtsi2ssl_0x2c8__rax____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 712
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SSI2MnIjEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}
















define %struct.Memory* @routine_movss__xmm0__0x2d4__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 724
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_0x6cbe00___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G_0x6cbe00_type* @G_0x6cbe00 to i64))
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

define %struct.Memory* @routine_callq_.fprintf_plt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x4c0609___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x4c0609_type* @G__0x4c0609 to i64))
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


define %struct.Memory* @routine_movss_0x30__rdx____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RDX
  %13 = add i64 %12, 48
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_0x6cb8f8___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G_0x6cb8f8_type* @G_0x6cb8f8 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl_0x14__rdx____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}







define internal %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSS2SDI2VnI8vec128_tEEEP6MemoryS5_R5State3VnWI8vec256_tET_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly) #0 {
  %5 = bitcast i8* %3 to <2 x float>*
  %6 = load <2 x float>, <2 x float>* %5, align 1
  %7 = extractelement <2 x float> %6, i32 0
  %8 = fpext float %7 to double
  %9 = bitcast i8* %2 to double*
  store double %8, double* %9, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_cvtss2sd__xmm0___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = bitcast %union.vec128_t* %XMM0 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSS2SDI2VnI8vec128_tEEEP6MemoryS5_R5State3VnWI8vec256_tET_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11)
  ret %struct.Memory* %14
}


define %struct.Memory* @routine_movl__eax__MINUS0x4c0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1216
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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






define %struct.Memory* @routine_cmpl__0x0__0x18__rdx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 24
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__eax__MINUS0x4c4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1220
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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

define %struct.Memory* @routine_je_.L_4363f5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_je_.L_4363d1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x4c0635___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x4c0635_type* @G__0x4c0635 to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_movl__eax__MINUS0x4c8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1224
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_4363f0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movq__0x4c0669___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x4c0669_type* @G__0x4c0669 to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_movl__eax__MINUS0x4cc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1228
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_436414(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movq__0x4c0694___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x4c0694_type* @G__0x4c0694 to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_movl__eax__MINUS0x4d0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1232
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movq__0x4c06c3___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x4c06c3_type* @G__0x4c06c3 to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movl_0x40__rax____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl_0x44__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 68
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movq_0x6cb8f8___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G_0x6cb8f8_type* @G_0x6cb8f8 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_cmpl__0x0__0x4c__rsi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 76
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__eax__MINUS0x4d4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1236
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_je_.L_43647f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x4c06ef___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x4c06ef_type* @G__0x4c06ef to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_movl__eax__MINUS0x4d8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1240
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_43649e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movq__0x4c0718___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x4c0718_type* @G__0x4c0718 to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_movl__eax__MINUS0x4dc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1244
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movq__0x4c0742___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x4c0742_type* @G__0x4c0742 to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movl_0x20__rax____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 32
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movq__0x4c076b___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x4c076b_type* @G__0x4c076b to i64))
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


define %struct.Memory* @routine_movl_0x24__rcx____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 36
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__eax__MINUS0x4e0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1248
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}










define %struct.Memory* @routine_cmpl__0x0__0x28__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__eax__MINUS0x4e4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1252
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = inttoptr i64 %2 to i64*
  store i64 %3, i64* %5
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__rdi__MINUS0x4f0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1264
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_je_.L_436529(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__ecx__MINUS0x4f4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1268
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_43653a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_movl_0x24__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 36
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl_MINUS0x4f4__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 1268
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__0x4c0794___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x4c0794_type* @G__0x4c0794 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq_MINUS0x4f0__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1264
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
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








define %struct.Memory* @routine_cmpl__0x0__0x4d4__rsi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 1236
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__eax__MINUS0x4f8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1272
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_je_.L_436651(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_cmpl__0x0__0x2c__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 44
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movq__rdi__MINUS0x500__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1280
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_je_.L_4365ac(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl_0x2c__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 44
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__ecx__MINUS0x504__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1284
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_4365bd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_movl_MINUS0x504__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 1284
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__0x4c07bd___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x4c07bd_type* @G__0x4c07bd to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq_MINUS0x500__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1280
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}












define %struct.Memory* @routine_cmpl__0x0__0x30__rsi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 48
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__eax__MINUS0x508__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1288
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movq__rdi__MINUS0x510__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1296
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_je_.L_43661a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl_0x30__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 48
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__ecx__MINUS0x514__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1300
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_43662b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_movl_MINUS0x514__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 1300
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__0x4c07e6___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x4c07e6_type* @G__0x4c07e6 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq_MINUS0x510__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1296
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_movl__eax__MINUS0x518__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1304
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movq__0x4c080f___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x4c080f_type* @G__0x4c080f to i64))
  ret %struct.Memory* %11
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

define %struct.Memory* @routine_movsd_0x7b245__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0x7b245__rip__type* @G_0x7b245__rip_ to i64)
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

define %struct.Memory* @routine_cvtsi2sdl_0x725260___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SDI2MnIjEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 ptrtoint( %G_0x725260_type* @G_0x725260 to i64))
  ret %struct.Memory* %11
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






define %struct.Memory* @routine_movq__0x4c083f___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x4c083f_type* @G__0x4c083f to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movsd_0x7b214__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0x7b214__rip__type* @G_0x7b214__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_cvtsi2sdl_0x6f968c___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SDI2MnIjEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 ptrtoint( %G_0x6f968c_type* @G_0x6f968c to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movl__eax__MINUS0x51c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1308
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_movq__0x4c086f___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x4c086f_type* @G__0x4c086f to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movl__eax__MINUS0x520__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1312
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}










define %struct.Memory* @routine_movl__eax__MINUS0x524__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1316
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jle_.L_436751(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpl__0x0__0x528__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 1320
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_436751(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x4c0894___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x4c0894_type* @G__0x4c0894 to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movl_0xc__rax____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl_0x10__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl_0x4d8__rax____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 1240
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}






define %struct.Memory* @routine_movl__eax__MINUS0x528__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1320
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_436c34(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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


define %struct.Memory* @routine_jle_.L_436b73(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_leaq_MINUS0x4b0__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1200
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__0x4bdcdc___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x4bdcdc_type* @G__0x4bdcdc to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_callq_.strcpy_plt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x0__MINUS0x4b8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 1208
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movq__rax__MINUS0x530__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 1328
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_cmpl__0x2__MINUS0x4b8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 1208
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 2)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_4369f7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x0__MINUS0x4b4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 1204
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_MINUS0x4b4__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 1204
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
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

define %struct.Memory* @routine_cmpl_0x4d4__rcx____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 1236
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_43693c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpl__0x0__0x524__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 1316
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_43687c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x4f___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 79)
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_leaq_MINUS0x4b0__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1200
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__rsi___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_movl__eax__MINUS0x534__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1332
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movq__rdx__MINUS0x540__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1344
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__rsi__MINUS0x548__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1352
  %14 = load i64, i64* %RSI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_callq_.strlen_plt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq_MINUS0x540__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1344
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
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

define %struct.Memory* @routine_subq__rax___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movl_MINUS0x534__rbp____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 1332
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
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

define %struct.Memory* @routine_cmpl__ecx___r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %R8D = bitcast %union.anon* %11 to i32*
  %12 = load i32, i32* %R8D
  %13 = zext i32 %12 to i64
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjES2_EEP6MemoryS4_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jle_.L_436825(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl__eax__MINUS0x54c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1356
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_436851(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movl__0x4f___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 79)
  ret %struct.Memory* %11
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




define %struct.Memory* @routine_movq__rcx__MINUS0x558__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1368
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq_MINUS0x558__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1368
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_subq__rax___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__edx__MINUS0x54c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1356
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x54c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 1356
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__0x4c08b6___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x4c08b6_type* @G__0x4c08b6 to i64))
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = shl i64 %3, 32
  %6 = ashr exact i64 %5, 32
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
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


define %struct.Memory* @routine_movq_MINUS0x548__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1352
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.strncat_plt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__rax__MINUS0x560__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 1376
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_jmpq_.L_436923(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}












define %struct.Memory* @routine_movl__eax__MINUS0x564__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1380
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movq__rdx__MINUS0x570__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1392
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__rsi__MINUS0x578__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1400
  %14 = load i64, i64* %RSI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq_MINUS0x570__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1392
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movl_MINUS0x564__rbp____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 1380
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_jle_.L_4368d1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl__eax__MINUS0x57c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1404
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_4368fd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_movq__rcx__MINUS0x588__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1416
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq_MINUS0x588__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1416
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movl__edx__MINUS0x57c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1404
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x57c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 1404
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__0x4c08ba___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x4c08ba_type* @G__0x4c08ba to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movq_MINUS0x578__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1400
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movq__rax__MINUS0x590__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 1424
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_jmpq_.L_436928(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_movl__eax__MINUS0x4b4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1204
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_4367a1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}












define %struct.Memory* @routine_movl__eax__MINUS0x594__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1428
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movq__rdx__MINUS0x5a0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1440
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__rsi__MINUS0x5a8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1448
  %14 = load i64, i64* %RSI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq_MINUS0x5a0__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1440
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movl_MINUS0x594__rbp____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 1428
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_jle_.L_436991(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl__eax__MINUS0x5ac__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1452
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_4369bd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_movq__rcx__MINUS0x5b8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1464
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq_MINUS0x5b8__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1464
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movl__edx__MINUS0x5ac__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1452
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x5ac__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 1452
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__0x4c08bd___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x4c08bd_type* @G__0x4c08bd to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movq_MINUS0x5a8__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1448
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movq__rax__MINUS0x5c0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 1472
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl_MINUS0x4b8__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 1208
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__eax__MINUS0x4b8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1208
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_43678a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_je_.L_436b22(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_leaq_MINUS0x4b0__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1200
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movl_0xc__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl_0x10__rax____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 16
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movl_0x4d8__rax____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 1240
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_addl_0x4dc__rax____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = add i64 %13, 1244
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12, i64 %14)
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

define %struct.Memory* @routine_cmpl__0x0___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 3
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movq__rdx__MINUS0x5c8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1480
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__rdi__MINUS0x5d0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1488
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__ecx__MINUS0x5d4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1492
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__r8d__MINUS0x5d8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1496
  %14 = load i32, i32* %R8D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 7
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_436a7f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl__eax__MINUS0x5dc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1500
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_436ae2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_movl_0x4d8__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 1240
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_addl_0x4dc__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = add i64 %13, 1244
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_cmpl__0x33___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 51)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jle_.L_436ab4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x33___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 51)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__eax__MINUS0x5e0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1504
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_436ad6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}










define %struct.Memory* @routine_movl__ecx__MINUS0x5e0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1504
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x5e0__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 1504
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl_MINUS0x5dc__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 1500
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__0x4c08c0___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x4c08c0_type* @G__0x4c08c0 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq_MINUS0x5d0__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1488
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_MINUS0x5c8__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1480
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x5d4__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1492
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x5d8__rbp____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 1496
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__eax___r9d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9D = bitcast %union.anon* %11 to i32*
  %12 = bitcast i32* %R9D to i64*
  %13 = load i32, i32* %EAX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}






define %struct.Memory* @routine_movl__eax__MINUS0x5e4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1508
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_436b6e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movq__0x4c08de___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x4c08de_type* @G__0x4c08de to i64))
  ret %struct.Memory* %11
}
















define %struct.Memory* @routine_movl_0x4d8__rax____r9d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = bitcast i32* %R9D to i64*
  %13 = load i64, i64* %RAX
  %14 = add i64 %13, 1240
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}






define %struct.Memory* @routine_movl__eax__MINUS0x5e8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1512
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_436c2f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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

define %struct.Memory* @routine_jne_.L_436bd7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpl__0x0__0x4f8__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 1272
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movq__0x4c08fb___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x4c08fb_type* @G__0x4c08fb to i64))
  ret %struct.Memory* %11
}
















define %struct.Memory* @routine_movl__eax__MINUS0x5ec__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1516
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_436c2a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movq__0x4c0914___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x4c0914_type* @G__0x4c0914 to i64))
  ret %struct.Memory* %11
}














define %struct.Memory* @routine_movl_0x4fc__rax____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 1276
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movl_0x500__rax____r9d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = bitcast i32* %R9D to i64*
  %13 = load i64, i64* %RAX
  %14 = add i64 %13, 1280
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}






define %struct.Memory* @routine_movl__eax__MINUS0x5f0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1520
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}








define %struct.Memory* @routine_cmpl__0x0__0x934__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_436c6d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x4c0940___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x4c0940_type* @G__0x4c0940 to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_movl__eax__MINUS0x5f4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1524
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_436c8c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movq__0x4c096c___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x4c096c_type* @G__0x4c096c to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_movl__eax__MINUS0x5f8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1528
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movq__0x4c0998___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x4c0998_type* @G__0x4c0998 to i64))
  ret %struct.Memory* %11
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








define %struct.Memory* @routine_cmpl__0x2__0x984__rsi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 2436
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 2)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__eax__MINUS0x5fc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1532
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jne_.L_436cf9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x4c09c6___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x4c09c6_type* @G__0x4c09c6 to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_movl__eax__MINUS0x600__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1536
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_436d56(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_cmpl__0x1__0x984__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 2436
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_436d32(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x4c09f1___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x4c09f1_type* @G__0x4c09f1 to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_movl__eax__MINUS0x604__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1540
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_436d51(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movq__0x4c0a2e___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x4c0a2e_type* @G__0x4c0a2e to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_movl__eax__MINUS0x608__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1544
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_cmpl__0x0__0x9a0__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_436d8f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x4c0a7e___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x4c0a7e_type* @G__0x4c0a7e to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_movl__eax__MINUS0x60c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1548
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_436dae(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movq__0x4c0aa9___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x4c0aa9_type* @G__0x4c0aa9 to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_movl__eax__MINUS0x610__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1552
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movq_0x294b43__rip____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0x294b43__rip__type* @G_0x294b43__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_0x93c__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 2364
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
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


define %struct.Memory* @routine_movl__ecx__MINUS0x614__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1556
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_je_.L_436de8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_436dce(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movl_MINUS0x614__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 1556
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
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


define %struct.Memory* @routine_movl__eax__MINUS0x618__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1560
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_je_.L_436e0c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_436e30(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movq__0x4c0ad8___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x4c0ad8_type* @G__0x4c0ad8 to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_movl__eax__MINUS0x61c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1564
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_436e4f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movq__0x4c0b0b___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x4c0b0b_type* @G__0x4c0b0b to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_movl__eax__MINUS0x620__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1568
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movq__0x4c0b3f___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x4c0b3f_type* @G__0x4c0b3f to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_movl__eax__MINUS0x624__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1572
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movq_0x294aa2__rip____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0x294aa2__rip__type* @G_0x294aa2__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_0x938__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 2360
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__ecx__MINUS0x628__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1576
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_je_.L_436e89(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_436e6f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movl_MINUS0x628__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 1576
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__eax__MINUS0x62c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1580
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_je_.L_436ead(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_436ed1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movq__0x4c0b73___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x4c0b73_type* @G__0x4c0b73 to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_movl__eax__MINUS0x630__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1584
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_436ef0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movq__0x4c0bb7___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x4c0bb7_type* @G__0x4c0bb7 to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_movl__eax__MINUS0x634__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1588
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movq__0x4c0bf5___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x4c0bf5_type* @G__0x4c0bf5 to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_movl__eax__MINUS0x638__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1592
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_cmpl__0x0__0xd00__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 3328
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_436f29(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x4c0c29___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x4c0c29_type* @G__0x4c0c29 to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_movl__eax__MINUS0x63c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1596
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_436f48(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movq__0x4c0c54___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x4c0c54_type* @G__0x4c0c54 to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_movl__eax__MINUS0x640__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1600
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movq__0x4c0c83___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x4c0c83_type* @G__0x4c0c83 to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_movq__0x4c0cd4___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x4c0cd4_type* @G__0x4c0cd4 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movq_0x6cb910___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G_0x6cb910_type* @G_0x6cb910 to i64))
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSS2SDI3MVnI7vec32_tEEEP6MemoryS5_R5State3VnWI8vec256_tET_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to float*
  %6 = load float, float* %5
  %7 = fpext float %6 to double
  %8 = bitcast i8* %2 to double*
  store double %7, double* %8, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_cvtss2sd_0x3c__rcx____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RCX
  %13 = add i64 %12, 60
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSS2SDI3MVnI7vec32_tEEEP6MemoryS5_R5State3VnWI8vec256_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__eax__MINUS0x644__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1604
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_movq__0x4c0d00___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x4c0d00_type* @G__0x4c0d00 to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_cvtss2sd_0x40__rcx____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RCX
  %13 = add i64 %12, 64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSS2SDI3MVnI7vec32_tEEEP6MemoryS5_R5State3VnWI8vec256_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__eax__MINUS0x648__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1608
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_movq__0x4c0d2c___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x4c0d2c_type* @G__0x4c0d2c to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_cvtss2sd_0x44__rcx____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RCX
  %13 = add i64 %12, 68
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSS2SDI3MVnI7vec32_tEEEP6MemoryS5_R5State3VnWI8vec256_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__eax__MINUS0x64c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1612
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_cmpl__0x0__0x722ca8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x722ca8_type* @G_0x722ca8 to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movl__eax__MINUS0x650__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1616
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_je_.L_43716c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x4c0d58___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x4c0d58_type* @G__0x4c0d58 to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movl_0x2c4__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 708
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_addl_0x2c0__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = add i64 %13, 704
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_addl_0x2c8__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = add i64 %13, 712
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_addl_0x5d0__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = add i64 %13, 1488
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__ecx__MINUS0x54__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 84
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movl_0x2c0__rax____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 704
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl_0x2c4__rax____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 708
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movl_0x2c8__rax____r9d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = bitcast i32* %R9D to i64*
  %13 = load i64, i64* %RAX
  %14 = add i64 %13, 712
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movl_0x5d0__rax____r10d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 21
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R10D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RAX = bitcast %union.anon* %11 to i64*
  %12 = bitcast i32* %R10D to i64*
  %13 = load i64, i64* %RAX
  %14 = add i64 %13, 1488
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__edx__MINUS0x654__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1620
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movl_MINUS0x654__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1620
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__r10d____rsp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 21
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R10D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 13
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSP
  %13 = load i32, i32* %R10D
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i64 %14)
  ret %struct.Memory* %17
}






define %struct.Memory* @routine_movq__0x4c0d9e___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x4c0d9e_type* @G__0x4c0d9e to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movss_0x86790__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0x86790__rip__type* @G_0x86790__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
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


define %struct.Memory* @routine_movss_0x30__rdi____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDI = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = load i64, i64* %RDI
  %13 = add i64 %12, 48
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_0x6cb8f8___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G_0x6cb8f8_type* @G_0x6cb8f8 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl_0x4d4__rdi____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RDI
  %13 = add i64 %12, 1236
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_cvtsi2ssl__ecx___xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = load i32, i32* %ECX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SSI2RnIjEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_mulss__xmm2___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSSI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
}




define %struct.Memory* @routine_movl_0x14__rdi____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RDI
  %13 = add i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_divss__xmm2___xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5DIVSSI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_movss__xmm1__MINUS0x58__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 88
  %13 = bitcast %union.vec128_t* %XMM1 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_cvtsi2ssl_MINUS0x54__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 84
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SSI2MnIjEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_mulss_MINUS0x58__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 88
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MULSSI3VnWI8vec128_tE2VnIS2_E3MVnIS2_EEEP6MemoryS9_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %11, i8* %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movl_0x8__rdi____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RDI
  %13 = add i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_movq_0x6cb908___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G_0x6cb908_type* @G_0x6cb908 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movss__xmm1__0xc__rdi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDI = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RDI
  %12 = add i64 %11, 12
  %13 = bitcast %union.vec128_t* %XMM1 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI4MVnWI7vec32_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_cvtss2sd_MINUS0x58__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 88
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSS2SDI3MVnI7vec32_tEEEP6MemoryS5_R5State3VnWI8vec256_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_0x6cb908___r11(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R11, i64 ptrtoint( %G_0x6cb908_type* @G_0x6cb908 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movss_0xc__r11____xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 23
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R11 = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = load i64, i64* %R11
  %13 = add i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_divss__xmm0___xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5DIVSSI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_cvtss2sd__xmm2___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSS2SDI2VnI8vec128_tEEEP6MemoryS5_R5State3VnWI8vec256_tET_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11)
  ret %struct.Memory* %14
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i8* nocapture readonly) #7 {
  %5 = bitcast i8* %3 to double*
  %6 = load double, double* %5, align 1
  %7 = inttoptr i64 %2 to double*
  store double %6, double* %7
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x660__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 1632
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movsd_MINUS0x660__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1632
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__eax__MINUS0x664__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1636
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movb__0x2___al(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %AL, i64 2)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_movl__eax__MINUS0x668__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1640
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_4373e1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_jne_.L_4372b1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x4c0dca___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x4c0dca_type* @G__0x4c0dca to i64))
  ret %struct.Memory* %11
}




























define %struct.Memory* @routine_movl_0x5d0__rax____r9d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = bitcast i32* %R9D to i64*
  %13 = load i64, i64* %RAX
  %14 = add i64 %13, 1488
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__edx__MINUS0x66c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1644
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movl_MINUS0x66c__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1644
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_movss_0x86629__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0x86629__rip__type* @G_0x86629__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}
























define %struct.Memory* @routine_cvtsi2ssl_0x8__rdi____xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDI = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = load i64, i64* %RDI
  %13 = add i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SSI2MnIjEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}












define %struct.Memory* @routine_movq_0x6cb908___r10(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R10, i64 ptrtoint( %G_0x6cb908_type* @G_0x6cb908 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movss_0xc__r10____xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 21
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R10 = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %12 = load i64, i64* %R10
  %13 = add i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movsd__xmm0__MINUS0x678__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 1656
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movsd_MINUS0x678__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1656
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__eax__MINUS0x67c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1660
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_movl__eax__MINUS0x680__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1664
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_4373dc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}
































define %struct.Memory* @routine_movl__edx__MINUS0x684__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1668
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movl_MINUS0x684__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1668
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_movss_0x864f9__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0x864f9__rip__type* @G_0x864f9__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSS_MEMI3VnWI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}












































define %struct.Memory* @routine_movsd__xmm0__MINUS0x690__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = sub i64 %11, 1680
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movsd_MINUS0x690__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1680
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__eax__MINUS0x694__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1684
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_movl__eax__MINUS0x698__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1688
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movq__0x4c0e0b___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x4c0e0b_type* @G__0x4c0e0b to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movl_0x1c__rax____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 28
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movq__0x4c0e35___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x4c0e35_type* @G__0x4c0e35 to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_movl_0x5d0__rcx____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 1488
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__eax__MINUS0x69c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1692
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}










define %struct.Memory* @routine_movl__eax__MINUS0x6a0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1696
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_movq__0x4c0e5f___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x4c0e5f_type* @G__0x4c0e5f to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__0x4c0e7a___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G__0x4c0e7a_type* @G__0x4c0e7a to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__0x4c0e84___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G__0x4c0e84_type* @G__0x4c0e84 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movl__eax__MINUS0x6a4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1700
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_movq__0x4c04ff___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x4c04ff_type* @G__0x4c04ff to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movl__eax__MINUS0x6a8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1704
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}








define %struct.Memory* @routine_cmpl__0x0__0xc9c__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 3228
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__eax__MINUS0x6ac__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1708
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_je_.L_437557(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x4c0e88___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x4c0e88_type* @G__0x4c0e88 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__0x4be20a___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x4be20a_type* @G__0x4be20a to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_callq_.fopen_plt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__rax__0x70d198(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x70d198_type* @G_0x70d198 to i64), i64 %9)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64, i64) #0 {
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

define %struct.Memory* @routine_cmpq__0x0___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %9, i64 0)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_jne_.L_437520(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x720c60___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x720c60_type* @G__0x720c60 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__0x12c___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 300)
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movq__0x4c04eb___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G__0x4c04eb_type* @G__0x4c04eb to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__0x4c0e97___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G__0x4c0e97_type* @G__0x4c0e97 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_callq_.snprintf_plt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__eax__MINUS0x6b0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1712
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_437552(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movq__0x4c0eaa___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x4c0eaa_type* @G__0x4c0eaa to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq_0x70d198___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G_0x70d198_type* @G_0x70d198 to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_movl__eax__MINUS0x6b4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1716
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_callq_.fclose_plt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__eax__MINUS0x6b8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1720
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_437557(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_addq__0x6c0___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 1728)
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

