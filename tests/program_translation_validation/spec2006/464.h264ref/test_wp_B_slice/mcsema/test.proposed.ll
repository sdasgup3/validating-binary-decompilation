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
%G_0x27546c__rip__type = type <{ [8 x i8] }>
@G_0x27546c__rip_= global %G_0x27546c__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
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
%G_0x748__rip__type = type <{ [8 x i8] }>
@G_0x748__rip_= global %G_0x748__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>


define %struct.Memory* @test_wp_B_slice(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .test_wp_B_slice:	 RIP: 4b05b0	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 4b05b0	 Bytes: 1
  %loadMem_4b05b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b05b0 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b05b0)
  store %struct.Memory* %call_4b05b0, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 4b05b1	 Bytes: 3
  %loadMem_4b05b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b05b1 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b05b1)
  store %struct.Memory* %call_4b05b1, %struct.Memory** %MEMORY

  ; Code: subq $0x8a90, %rsp	 RIP: 4b05b4	 Bytes: 7
  %loadMem_4b05b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b05b4 = call %struct.Memory* @routine_subq__0x8a90___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b05b4)
  store %struct.Memory* %call_4b05b4, %struct.Memory** %MEMORY

  ; Code: xorps %xmm0, %xmm0	 RIP: 4b05bb	 Bytes: 3
  %loadMem_4b05bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b05bb = call %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b05bb)
  store %struct.Memory* %call_4b05bb, %struct.Memory** %MEMORY

  ; Code: movl %edi, -0x4(%rbp)	 RIP: 4b05be	 Bytes: 3
  %loadMem_4b05be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b05be = call %struct.Memory* @routine_movl__edi__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b05be)
  store %struct.Memory* %call_4b05be, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x20(%rbp)	 RIP: 4b05c1	 Bytes: 5
  %loadMem_4b05c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b05c1 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b05c1)
  store %struct.Memory* %call_4b05c1, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 4b05c6	 Bytes: 8
  %loadMem_4b05c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b05c6 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b05c6)
  store %struct.Memory* %call_4b05c6, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x11ad0(%rax)	 RIP: 4b05ce	 Bytes: 7
  %loadMem_4b05ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b05ce = call %struct.Memory* @routine_cmpl__0x0__0x11ad0__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b05ce)
  store %struct.Memory* %call_4b05ce, %struct.Memory** %MEMORY

  ; Code: je .L_4b0644	 RIP: 4b05d5	 Bytes: 6
  %loadMem_4b05d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b05d5 = call %struct.Memory* @routine_je_.L_4b0644(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b05d5, i8* %BRANCH_TAKEN, i64 111, i64 6, i64 6)
  store %struct.Memory* %call_4b05d5, %struct.Memory** %MEMORY

  %loadBr_4b05d5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4b05d5 = icmp eq i8 %loadBr_4b05d5, 1
  br i1 %cmpBr_4b05d5, label %block_.L_4b0644, label %block_4b05db

block_4b05db:
  ; Code: movq 0x6cb900, %rax	 RIP: 4b05db	 Bytes: 8
  %loadMem_4b05db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b05db = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b05db)
  store %struct.Memory* %call_4b05db, %struct.Memory** %MEMORY

  ; Code: movq 0x3758(%rax), %rax	 RIP: 4b05e3	 Bytes: 7
  %loadMem_4b05e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b05e3 = call %struct.Memory* @routine_movq_0x3758__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b05e3)
  store %struct.Memory* %call_4b05e3, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 4b05ea	 Bytes: 8
  %loadMem_4b05ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b05ea = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b05ea)
  store %struct.Memory* %call_4b05ea, %struct.Memory** %MEMORY

  ; Code: movslq 0xc(%rcx), %rcx	 RIP: 4b05f2	 Bytes: 4
  %loadMem_4b05f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b05f2 = call %struct.Memory* @routine_movslq_0xc__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b05f2)
  store %struct.Memory* %call_4b05f2, %struct.Memory** %MEMORY

  ; Code: imulq $0x278, %rcx, %rcx	 RIP: 4b05f6	 Bytes: 7
  %loadMem_4b05f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b05f6 = call %struct.Memory* @routine_imulq__0x278___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b05f6)
  store %struct.Memory* %call_4b05f6, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4b05fd	 Bytes: 3
  %loadMem_4b05fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b05fd = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b05fd)
  store %struct.Memory* %call_4b05fd, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x214(%rax)	 RIP: 4b0600	 Bytes: 7
  %loadMem_4b0600 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0600 = call %struct.Memory* @routine_cmpl__0x0__0x214__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0600)
  store %struct.Memory* %call_4b0600, %struct.Memory** %MEMORY

  ; Code: je .L_4b0644	 RIP: 4b0607	 Bytes: 6
  %loadMem_4b0607 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0607 = call %struct.Memory* @routine_je_.L_4b0644(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0607, i8* %BRANCH_TAKEN, i64 61, i64 6, i64 6)
  store %struct.Memory* %call_4b0607, %struct.Memory** %MEMORY

  %loadBr_4b0607 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4b0607 = icmp eq i8 %loadBr_4b0607, 1
  br i1 %cmpBr_4b0607, label %block_.L_4b0644, label %block_4b060d

block_4b060d:
  ; Code: movl $0x2, %eax	 RIP: 4b060d	 Bytes: 5
  %loadMem_4b060d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b060d = call %struct.Memory* @routine_movl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b060d)
  store %struct.Memory* %call_4b060d, %struct.Memory** %MEMORY

  ; Code: movl $0x4, %ecx	 RIP: 4b0612	 Bytes: 5
  %loadMem_4b0612 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0612 = call %struct.Memory* @routine_movl__0x4___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0612)
  store %struct.Memory* %call_4b0612, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rdx	 RIP: 4b0617	 Bytes: 8
  %loadMem_4b0617 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0617 = call %struct.Memory* @routine_movq_0x6cb900___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0617)
  store %struct.Memory* %call_4b0617, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%rdx), %esi	 RIP: 4b061f	 Bytes: 3
  %loadMem_4b061f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b061f = call %struct.Memory* @routine_movl_0xc__rdx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b061f)
  store %struct.Memory* %call_4b061f, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x8a5c(%rbp)	 RIP: 4b0622	 Bytes: 6
  %loadMem_4b0622 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0622 = call %struct.Memory* @routine_movl__eax__MINUS0x8a5c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0622)
  store %struct.Memory* %call_4b0622, %struct.Memory** %MEMORY

  ; Code: movl %esi, %eax	 RIP: 4b0628	 Bytes: 2
  %loadMem_4b0628 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0628 = call %struct.Memory* @routine_movl__esi___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0628)
  store %struct.Memory* %call_4b0628, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 4b062a	 Bytes: 1
  %loadMem_4b062a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b062a = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b062a)
  store %struct.Memory* %call_4b062a, %struct.Memory** %MEMORY

  ; Code: movl -0x8a5c(%rbp), %esi	 RIP: 4b062b	 Bytes: 6
  %loadMem_4b062b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b062b = call %struct.Memory* @routine_movl_MINUS0x8a5c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b062b)
  store %struct.Memory* %call_4b062b, %struct.Memory** %MEMORY

  ; Code: idivl %esi	 RIP: 4b0631	 Bytes: 2
  %loadMem_4b0631 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0631 = call %struct.Memory* @routine_idivl__esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0631)
  store %struct.Memory* %call_4b0631, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %edx	 RIP: 4b0633	 Bytes: 3
  %loadMem_4b0633 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0633 = call %struct.Memory* @routine_cmpl__0x0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0633)
  store %struct.Memory* %call_4b0633, %struct.Memory** %MEMORY

  ; Code: cmovnel %ecx, %esi	 RIP: 4b0636	 Bytes: 3
  %loadMem_4b0636 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0636 = call %struct.Memory* @routine_cmovnel__ecx___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0636)
  store %struct.Memory* %call_4b0636, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x8a60(%rbp)	 RIP: 4b0639	 Bytes: 6
  %loadMem_4b0639 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0639 = call %struct.Memory* @routine_movl__esi__MINUS0x8a60__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0639)
  store %struct.Memory* %call_4b0639, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4b0651	 RIP: 4b063f	 Bytes: 5
  %loadMem_4b063f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b063f = call %struct.Memory* @routine_jmpq_.L_4b0651(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b063f, i64 18, i64 5)
  store %struct.Memory* %call_4b063f, %struct.Memory** %MEMORY

  br label %block_.L_4b0651

  ; Code: .L_4b0644:	 RIP: 4b0644	 Bytes: 0
block_.L_4b0644:

  ; Code: xorl %eax, %eax	 RIP: 4b0644	 Bytes: 2
  %loadMem_4b0644 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0644 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0644)
  store %struct.Memory* %call_4b0644, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x8a60(%rbp)	 RIP: 4b0646	 Bytes: 6
  %loadMem_4b0646 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0646 = call %struct.Memory* @routine_movl__eax__MINUS0x8a60__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0646)
  store %struct.Memory* %call_4b0646, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4b0651	 RIP: 4b064c	 Bytes: 5
  %loadMem_4b064c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b064c = call %struct.Memory* @routine_jmpq_.L_4b0651(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b064c, i64 5, i64 5)
  store %struct.Memory* %call_4b064c, %struct.Memory** %MEMORY

  br label %block_.L_4b0651

  ; Code: .L_4b0651:	 RIP: 4b0651	 Bytes: 0
block_.L_4b0651:

  ; Code: movl -0x8a60(%rbp), %eax	 RIP: 4b0651	 Bytes: 6
  %loadMem_4b0651 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0651 = call %struct.Memory* @routine_movl_MINUS0x8a60__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0651)
  store %struct.Memory* %call_4b0651, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %ecx	 RIP: 4b0657	 Bytes: 5
  %loadMem_4b0657 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0657 = call %struct.Memory* @routine_movl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0657)
  store %struct.Memory* %call_4b0657, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x324(%rbp)	 RIP: 4b065c	 Bytes: 6
  %loadMem_4b065c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b065c = call %struct.Memory* @routine_movl__eax__MINUS0x324__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b065c)
  store %struct.Memory* %call_4b065c, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x8a50(%rbp)	 RIP: 4b0662	 Bytes: 10
  %loadMem_4b0662 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0662 = call %struct.Memory* @routine_movl__0x0__MINUS0x8a50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0662)
  store %struct.Memory* %call_4b0662, %struct.Memory** %MEMORY

  ; Code: movl $0x5, 0x70f6d0	 RIP: 4b066c	 Bytes: 11
  %loadMem_4b066c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b066c = call %struct.Memory* @routine_movl__0x5__0x70f6d0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b066c)
  store %struct.Memory* %call_4b066c, %struct.Memory** %MEMORY

  ; Code: movl $0x5, 0x7242a0	 RIP: 4b0677	 Bytes: 11
  %loadMem_4b0677 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0677 = call %struct.Memory* @routine_movl__0x5__0x7242a0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0677)
  store %struct.Memory* %call_4b0677, %struct.Memory** %MEMORY

  ; Code: movl 0x70f6d0, %eax	 RIP: 4b0682	 Bytes: 7
  %loadMem_4b0682 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0682 = call %struct.Memory* @routine_movl_0x70f6d0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0682)
  store %struct.Memory* %call_4b0682, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 4b0689	 Bytes: 3
  %loadMem_4b0689 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0689 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0689)
  store %struct.Memory* %call_4b0689, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x8a64(%rbp)	 RIP: 4b068c	 Bytes: 6
  %loadMem_4b068c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b068c = call %struct.Memory* @routine_movl__ecx__MINUS0x8a64__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b068c)
  store %struct.Memory* %call_4b068c, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 4b0692	 Bytes: 2
  %loadMem_4b0692 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0692 = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0692)
  store %struct.Memory* %call_4b0692, %struct.Memory** %MEMORY

  ; Code: movl -0x8a64(%rbp), %eax	 RIP: 4b0694	 Bytes: 6
  %loadMem_4b0694 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0694 = call %struct.Memory* @routine_movl_MINUS0x8a64__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0694)
  store %struct.Memory* %call_4b0694, %struct.Memory** %MEMORY

  ; Code: shll %cl, %eax	 RIP: 4b069a	 Bytes: 2
  %loadMem_4b069a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b069a = call %struct.Memory* @routine_shll__cl___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b069a)
  store %struct.Memory* %call_4b069a, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x7107a0	 RIP: 4b069c	 Bytes: 7
  %loadMem_4b069c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b069c = call %struct.Memory* @routine_movl__eax__0x7107a0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b069c)
  store %struct.Memory* %call_4b069c, %struct.Memory** %MEMORY

  ; Code: movl 0x7242a0, %eax	 RIP: 4b06a3	 Bytes: 7
  %loadMem_4b06a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b06a3 = call %struct.Memory* @routine_movl_0x7242a0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b06a3)
  store %struct.Memory* %call_4b06a3, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 4b06aa	 Bytes: 3
  %loadMem_4b06aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b06aa = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b06aa)
  store %struct.Memory* %call_4b06aa, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 4b06ad	 Bytes: 2
  %loadMem_4b06ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b06ad = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b06ad)
  store %struct.Memory* %call_4b06ad, %struct.Memory** %MEMORY

  ; Code: movl -0x8a64(%rbp), %eax	 RIP: 4b06af	 Bytes: 6
  %loadMem_4b06af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b06af = call %struct.Memory* @routine_movl_MINUS0x8a64__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b06af)
  store %struct.Memory* %call_4b06af, %struct.Memory** %MEMORY

  ; Code: shll %cl, %eax	 RIP: 4b06b5	 Bytes: 2
  %loadMem_4b06b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b06b5 = call %struct.Memory* @routine_shll__cl___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b06b5)
  store %struct.Memory* %call_4b06b5, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x710790	 RIP: 4b06b7	 Bytes: 7
  %loadMem_4b06b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b06b7 = call %struct.Memory* @routine_movl__eax__0x710790(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b06b7)
  store %struct.Memory* %call_4b06b7, %struct.Memory** %MEMORY

  ; Code: movl 0x70f6d0, %ecx	 RIP: 4b06be	 Bytes: 7
  %loadMem_4b06be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b06be = call %struct.Memory* @routine_movl_0x70f6d0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b06be)
  store %struct.Memory* %call_4b06be, %struct.Memory** %MEMORY

  ; Code: movl -0x8a64(%rbp), %eax	 RIP: 4b06c5	 Bytes: 6
  %loadMem_4b06c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b06c5 = call %struct.Memory* @routine_movl_MINUS0x8a64__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b06c5)
  store %struct.Memory* %call_4b06c5, %struct.Memory** %MEMORY

  ; Code: shll %cl, %eax	 RIP: 4b06cb	 Bytes: 2
  %loadMem_4b06cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b06cb = call %struct.Memory* @routine_shll__cl___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b06cb)
  store %struct.Memory* %call_4b06cb, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x31c(%rbp)	 RIP: 4b06cd	 Bytes: 6
  %loadMem_4b06cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b06cd = call %struct.Memory* @routine_movl__eax__MINUS0x31c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b06cd)
  store %struct.Memory* %call_4b06cd, %struct.Memory** %MEMORY

  ; Code: movl 0x7242a0, %ecx	 RIP: 4b06d3	 Bytes: 7
  %loadMem_4b06d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b06d3 = call %struct.Memory* @routine_movl_0x7242a0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b06d3)
  store %struct.Memory* %call_4b06d3, %struct.Memory** %MEMORY

  ; Code: movl -0x8a64(%rbp), %eax	 RIP: 4b06da	 Bytes: 6
  %loadMem_4b06da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b06da = call %struct.Memory* @routine_movl_MINUS0x8a64__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b06da)
  store %struct.Memory* %call_4b06da, %struct.Memory** %MEMORY

  ; Code: shll %cl, %eax	 RIP: 4b06e0	 Bytes: 2
  %loadMem_4b06e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b06e0 = call %struct.Memory* @routine_shll__cl___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b06e0)
  store %struct.Memory* %call_4b06e0, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x320(%rbp)	 RIP: 4b06e2	 Bytes: 6
  %loadMem_4b06e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b06e2 = call %struct.Memory* @routine_movl__eax__MINUS0x320__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b06e2)
  store %struct.Memory* %call_4b06e2, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x8(%rbp)	 RIP: 4b06e8	 Bytes: 7
  %loadMem_4b06e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b06e8 = call %struct.Memory* @routine_movl__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b06e8)
  store %struct.Memory* %call_4b06e8, %struct.Memory** %MEMORY

  ; Code: .L_4b06ef:	 RIP: 4b06ef	 Bytes: 0
  br label %block_.L_4b06ef
block_.L_4b06ef:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 4b06ef	 Bytes: 3
  %loadMem_4b06ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b06ef = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b06ef)
  store %struct.Memory* %call_4b06ef, %struct.Memory** %MEMORY

  ; Code: movl -0x324(%rbp), %ecx	 RIP: 4b06f2	 Bytes: 6
  %loadMem_4b06f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b06f2 = call %struct.Memory* @routine_movl_MINUS0x324__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b06f2)
  store %struct.Memory* %call_4b06f2, %struct.Memory** %MEMORY

  ; Code: addl $0x2, %ecx	 RIP: 4b06f8	 Bytes: 3
  %loadMem_4b06f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b06f8 = call %struct.Memory* @routine_addl__0x2___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b06f8)
  store %struct.Memory* %call_4b06f8, %struct.Memory** %MEMORY

  ; Code: cmpl %ecx, %eax	 RIP: 4b06fb	 Bytes: 2
  %loadMem_4b06fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b06fb = call %struct.Memory* @routine_cmpl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b06fb)
  store %struct.Memory* %call_4b06fb, %struct.Memory** %MEMORY

  ; Code: jge .L_4b0803	 RIP: 4b06fd	 Bytes: 6
  %loadMem_4b06fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b06fd = call %struct.Memory* @routine_jge_.L_4b0803(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b06fd, i8* %BRANCH_TAKEN, i64 262, i64 6, i64 6)
  store %struct.Memory* %call_4b06fd, %struct.Memory** %MEMORY

  %loadBr_4b06fd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4b06fd = icmp eq i8 %loadBr_4b06fd, 1
  br i1 %cmpBr_4b06fd, label %block_.L_4b0803, label %block_4b0703

block_4b0703:
  ; Code: movl $0x0, -0xc(%rbp)	 RIP: 4b0703	 Bytes: 7
  %loadMem_4b0703 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0703 = call %struct.Memory* @routine_movl__0x0__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0703)
  store %struct.Memory* %call_4b0703, %struct.Memory** %MEMORY

  ; Code: .L_4b070a:	 RIP: 4b070a	 Bytes: 0
  br label %block_.L_4b070a
block_.L_4b070a:

  ; Code: movl -0xc(%rbp), %eax	 RIP: 4b070a	 Bytes: 3
  %loadMem_4b070a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b070a = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b070a)
  store %struct.Memory* %call_4b070a, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 4b070d	 Bytes: 4
  %loadMem_4b070d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b070d = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b070d)
  store %struct.Memory* %call_4b070d, %struct.Memory** %MEMORY

  ; Code: cmpl 0x7247b0(,%rcx,4), %eax	 RIP: 4b0711	 Bytes: 7
  %loadMem_4b0711 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0711 = call %struct.Memory* @routine_cmpl_0x7247b0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0711)
  store %struct.Memory* %call_4b0711, %struct.Memory** %MEMORY

  ; Code: jge .L_4b07f0	 RIP: 4b0718	 Bytes: 6
  %loadMem_4b0718 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0718 = call %struct.Memory* @routine_jge_.L_4b07f0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0718, i8* %BRANCH_TAKEN, i64 216, i64 6, i64 6)
  store %struct.Memory* %call_4b0718, %struct.Memory** %MEMORY

  %loadBr_4b0718 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4b0718 = icmp eq i8 %loadBr_4b0718, 1
  br i1 %cmpBr_4b0718, label %block_.L_4b07f0, label %block_4b071e

block_4b071e:
  ; Code: movl $0x0, -0x10(%rbp)	 RIP: 4b071e	 Bytes: 7
  %loadMem_4b071e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b071e = call %struct.Memory* @routine_movl__0x0__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b071e)
  store %struct.Memory* %call_4b071e, %struct.Memory** %MEMORY

  ; Code: .L_4b0725:	 RIP: 4b0725	 Bytes: 0
  br label %block_.L_4b0725
block_.L_4b0725:

  ; Code: cmpl $0x3, -0x10(%rbp)	 RIP: 4b0725	 Bytes: 4
  %loadMem_4b0725 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0725 = call %struct.Memory* @routine_cmpl__0x3__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0725)
  store %struct.Memory* %call_4b0725, %struct.Memory** %MEMORY

  ; Code: jge .L_4b07dd	 RIP: 4b0729	 Bytes: 6
  %loadMem_4b0729 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0729 = call %struct.Memory* @routine_jge_.L_4b07dd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0729, i8* %BRANCH_TAKEN, i64 180, i64 6, i64 6)
  store %struct.Memory* %call_4b0729, %struct.Memory** %MEMORY

  %loadBr_4b0729 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4b0729 = icmp eq i8 %loadBr_4b0729, 1
  br i1 %cmpBr_4b0729, label %block_.L_4b07dd, label %block_4b072f

block_4b072f:
  ; Code: leaq -0x760(%rbp), %rax	 RIP: 4b072f	 Bytes: 7
  %loadMem_4b072f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b072f = call %struct.Memory* @routine_leaq_MINUS0x760__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b072f)
  store %struct.Memory* %call_4b072f, %struct.Memory** %MEMORY

  ; Code: leaq -0xba0(%rbp), %rcx	 RIP: 4b0736	 Bytes: 7
  %loadMem_4b0736 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0736 = call %struct.Memory* @routine_leaq_MINUS0xba0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0736)
  store %struct.Memory* %call_4b0736, %struct.Memory** %MEMORY

  ; Code: movl -0x31c(%rbp), %edx	 RIP: 4b073d	 Bytes: 6
  %loadMem_4b073d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b073d = call %struct.Memory* @routine_movl_MINUS0x31c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b073d)
  store %struct.Memory* %call_4b073d, %struct.Memory** %MEMORY

  ; Code: movq 0x6d4740, %rsi	 RIP: 4b0743	 Bytes: 8
  %loadMem_4b0743 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0743 = call %struct.Memory* @routine_movq_0x6d4740___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0743)
  store %struct.Memory* %call_4b0743, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdi	 RIP: 4b074b	 Bytes: 4
  %loadMem_4b074b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b074b = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b074b)
  store %struct.Memory* %call_4b074b, %struct.Memory** %MEMORY

  ; Code: movq (%rsi,%rdi,8), %rsi	 RIP: 4b074f	 Bytes: 4
  %loadMem_4b074f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b074f = call %struct.Memory* @routine_movq___rsi__rdi_8____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b074f)
  store %struct.Memory* %call_4b074f, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rdi	 RIP: 4b0753	 Bytes: 4
  %loadMem_4b0753 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0753 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0753)
  store %struct.Memory* %call_4b0753, %struct.Memory** %MEMORY

  ; Code: movq (%rsi,%rdi,8), %rsi	 RIP: 4b0757	 Bytes: 4
  %loadMem_4b0757 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0757 = call %struct.Memory* @routine_movq___rsi__rdi_8____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0757)
  store %struct.Memory* %call_4b0757, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rdi	 RIP: 4b075b	 Bytes: 4
  %loadMem_4b075b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b075b = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b075b)
  store %struct.Memory* %call_4b075b, %struct.Memory** %MEMORY

  ; Code: movl %edx, (%rsi,%rdi,4)	 RIP: 4b075f	 Bytes: 3
  %loadMem_4b075f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b075f = call %struct.Memory* @routine_movl__edx____rsi__rdi_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b075f)
  store %struct.Memory* %call_4b075f, %struct.Memory** %MEMORY

  ; Code: movq 0x6f9728, %rsi	 RIP: 4b0762	 Bytes: 8
  %loadMem_4b0762 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0762 = call %struct.Memory* @routine_movq_0x6f9728___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0762)
  store %struct.Memory* %call_4b0762, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdi	 RIP: 4b076a	 Bytes: 4
  %loadMem_4b076a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b076a = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b076a)
  store %struct.Memory* %call_4b076a, %struct.Memory** %MEMORY

  ; Code: movq (%rsi,%rdi,8), %rsi	 RIP: 4b076e	 Bytes: 4
  %loadMem_4b076e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b076e = call %struct.Memory* @routine_movq___rsi__rdi_8____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b076e)
  store %struct.Memory* %call_4b076e, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rdi	 RIP: 4b0772	 Bytes: 4
  %loadMem_4b0772 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0772 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0772)
  store %struct.Memory* %call_4b0772, %struct.Memory** %MEMORY

  ; Code: movq (%rsi,%rdi,8), %rsi	 RIP: 4b0776	 Bytes: 4
  %loadMem_4b0776 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0776 = call %struct.Memory* @routine_movq___rsi__rdi_8____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0776)
  store %struct.Memory* %call_4b0776, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rdi	 RIP: 4b077a	 Bytes: 4
  %loadMem_4b077a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b077a = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b077a)
  store %struct.Memory* %call_4b077a, %struct.Memory** %MEMORY

  ; Code: movl $0x0, (%rsi,%rdi,4)	 RIP: 4b077e	 Bytes: 7
  %loadMem_4b077e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b077e = call %struct.Memory* @routine_movl__0x0____rsi__rdi_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b077e)
  store %struct.Memory* %call_4b077e, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rsi	 RIP: 4b0785	 Bytes: 4
  %loadMem_4b0785 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0785 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0785)
  store %struct.Memory* %call_4b0785, %struct.Memory** %MEMORY

  ; Code: imulq $0xb4, %rsi, %rsi	 RIP: 4b0789	 Bytes: 7
  %loadMem_4b0789 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0789 = call %struct.Memory* @routine_imulq__0xb4___rsi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0789)
  store %struct.Memory* %call_4b0789, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rcx	 RIP: 4b0790	 Bytes: 3
  %loadMem_4b0790 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0790 = call %struct.Memory* @routine_addq__rsi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0790)
  store %struct.Memory* %call_4b0790, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rsi	 RIP: 4b0793	 Bytes: 4
  %loadMem_4b0793 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0793 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0793)
  store %struct.Memory* %call_4b0793, %struct.Memory** %MEMORY

  ; Code: imulq $0xc, %rsi, %rsi	 RIP: 4b0797	 Bytes: 4
  %loadMem_4b0797 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0797 = call %struct.Memory* @routine_imulq__0xc___rsi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0797)
  store %struct.Memory* %call_4b0797, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rcx	 RIP: 4b079b	 Bytes: 3
  %loadMem_4b079b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b079b = call %struct.Memory* @routine_addq__rsi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b079b)
  store %struct.Memory* %call_4b079b, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rsi	 RIP: 4b079e	 Bytes: 4
  %loadMem_4b079e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b079e = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b079e)
  store %struct.Memory* %call_4b079e, %struct.Memory** %MEMORY

  ; Code: movl $0x0, (%rcx,%rsi,4)	 RIP: 4b07a2	 Bytes: 7
  %loadMem_4b07a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b07a2 = call %struct.Memory* @routine_movl__0x0____rcx__rsi_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b07a2)
  store %struct.Memory* %call_4b07a2, %struct.Memory** %MEMORY

  ; Code: movl -0x31c(%rbp), %edx	 RIP: 4b07a9	 Bytes: 6
  %loadMem_4b07a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b07a9 = call %struct.Memory* @routine_movl_MINUS0x31c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b07a9)
  store %struct.Memory* %call_4b07a9, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 4b07af	 Bytes: 4
  %loadMem_4b07af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b07af = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b07af)
  store %struct.Memory* %call_4b07af, %struct.Memory** %MEMORY

  ; Code: imulq $0xb4, %rcx, %rcx	 RIP: 4b07b3	 Bytes: 7
  %loadMem_4b07b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b07b3 = call %struct.Memory* @routine_imulq__0xb4___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b07b3)
  store %struct.Memory* %call_4b07b3, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4b07ba	 Bytes: 3
  %loadMem_4b07ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b07ba = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b07ba)
  store %struct.Memory* %call_4b07ba, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 4b07bd	 Bytes: 4
  %loadMem_4b07bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b07bd = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b07bd)
  store %struct.Memory* %call_4b07bd, %struct.Memory** %MEMORY

  ; Code: imulq $0xc, %rcx, %rcx	 RIP: 4b07c1	 Bytes: 4
  %loadMem_4b07c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b07c1 = call %struct.Memory* @routine_imulq__0xc___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b07c1)
  store %struct.Memory* %call_4b07c1, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4b07c5	 Bytes: 3
  %loadMem_4b07c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b07c5 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b07c5)
  store %struct.Memory* %call_4b07c5, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rcx	 RIP: 4b07c8	 Bytes: 4
  %loadMem_4b07c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b07c8 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b07c8)
  store %struct.Memory* %call_4b07c8, %struct.Memory** %MEMORY

  ; Code: movl %edx, (%rax,%rcx,4)	 RIP: 4b07cc	 Bytes: 3
  %loadMem_4b07cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b07cc = call %struct.Memory* @routine_movl__edx____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b07cc)
  store %struct.Memory* %call_4b07cc, %struct.Memory** %MEMORY

  ; Code: movl -0x10(%rbp), %eax	 RIP: 4b07cf	 Bytes: 3
  %loadMem_4b07cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b07cf = call %struct.Memory* @routine_movl_MINUS0x10__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b07cf)
  store %struct.Memory* %call_4b07cf, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4b07d2	 Bytes: 3
  %loadMem_4b07d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b07d2 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b07d2)
  store %struct.Memory* %call_4b07d2, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x10(%rbp)	 RIP: 4b07d5	 Bytes: 3
  %loadMem_4b07d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b07d5 = call %struct.Memory* @routine_movl__eax__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b07d5)
  store %struct.Memory* %call_4b07d5, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4b0725	 RIP: 4b07d8	 Bytes: 5
  %loadMem_4b07d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b07d8 = call %struct.Memory* @routine_jmpq_.L_4b0725(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b07d8, i64 -179, i64 5)
  store %struct.Memory* %call_4b07d8, %struct.Memory** %MEMORY

  br label %block_.L_4b0725

  ; Code: .L_4b07dd:	 RIP: 4b07dd	 Bytes: 0
block_.L_4b07dd:

  ; Code: jmpq .L_4b07e2	 RIP: 4b07dd	 Bytes: 5
  %loadMem_4b07dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b07dd = call %struct.Memory* @routine_jmpq_.L_4b07e2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b07dd, i64 5, i64 5)
  store %struct.Memory* %call_4b07dd, %struct.Memory** %MEMORY

  br label %block_.L_4b07e2

  ; Code: .L_4b07e2:	 RIP: 4b07e2	 Bytes: 0
block_.L_4b07e2:

  ; Code: movl -0xc(%rbp), %eax	 RIP: 4b07e2	 Bytes: 3
  %loadMem_4b07e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b07e2 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b07e2)
  store %struct.Memory* %call_4b07e2, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4b07e5	 Bytes: 3
  %loadMem_4b07e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b07e5 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b07e5)
  store %struct.Memory* %call_4b07e5, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xc(%rbp)	 RIP: 4b07e8	 Bytes: 3
  %loadMem_4b07e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b07e8 = call %struct.Memory* @routine_movl__eax__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b07e8)
  store %struct.Memory* %call_4b07e8, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4b070a	 RIP: 4b07eb	 Bytes: 5
  %loadMem_4b07eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b07eb = call %struct.Memory* @routine_jmpq_.L_4b070a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b07eb, i64 -225, i64 5)
  store %struct.Memory* %call_4b07eb, %struct.Memory** %MEMORY

  br label %block_.L_4b070a

  ; Code: .L_4b07f0:	 RIP: 4b07f0	 Bytes: 0
block_.L_4b07f0:

  ; Code: jmpq .L_4b07f5	 RIP: 4b07f0	 Bytes: 5
  %loadMem_4b07f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b07f0 = call %struct.Memory* @routine_jmpq_.L_4b07f5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b07f0, i64 5, i64 5)
  store %struct.Memory* %call_4b07f0, %struct.Memory** %MEMORY

  br label %block_.L_4b07f5

  ; Code: .L_4b07f5:	 RIP: 4b07f5	 Bytes: 0
block_.L_4b07f5:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 4b07f5	 Bytes: 3
  %loadMem_4b07f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b07f5 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b07f5)
  store %struct.Memory* %call_4b07f5, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4b07f8	 Bytes: 3
  %loadMem_4b07f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b07f8 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b07f8)
  store %struct.Memory* %call_4b07f8, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x8(%rbp)	 RIP: 4b07fb	 Bytes: 3
  %loadMem_4b07fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b07fb = call %struct.Memory* @routine_movl__eax__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b07fb)
  store %struct.Memory* %call_4b07fb, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4b06ef	 RIP: 4b07fe	 Bytes: 5
  %loadMem_4b07fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b07fe = call %struct.Memory* @routine_jmpq_.L_4b06ef(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b07fe, i64 -271, i64 5)
  store %struct.Memory* %call_4b07fe, %struct.Memory** %MEMORY

  br label %block_.L_4b06ef

  ; Code: .L_4b0803:	 RIP: 4b0803	 Bytes: 0
block_.L_4b0803:

  ; Code: movl $0x0, -0x8(%rbp)	 RIP: 4b0803	 Bytes: 7
  %loadMem_4b0803 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0803 = call %struct.Memory* @routine_movl__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0803)
  store %struct.Memory* %call_4b0803, %struct.Memory** %MEMORY

  ; Code: .L_4b080a:	 RIP: 4b080a	 Bytes: 0
  br label %block_.L_4b080a
block_.L_4b080a:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 4b080a	 Bytes: 3
  %loadMem_4b080a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b080a = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b080a)
  store %struct.Memory* %call_4b080a, %struct.Memory** %MEMORY

  ; Code: cmpl 0x7247b0, %eax	 RIP: 4b080d	 Bytes: 7
  %loadMem_4b080d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b080d = call %struct.Memory* @routine_cmpl_0x7247b0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b080d)
  store %struct.Memory* %call_4b080d, %struct.Memory** %MEMORY

  ; Code: jge .L_4b0cda	 RIP: 4b0814	 Bytes: 6
  %loadMem_4b0814 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0814 = call %struct.Memory* @routine_jge_.L_4b0cda(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0814, i8* %BRANCH_TAKEN, i64 1222, i64 6, i64 6)
  store %struct.Memory* %call_4b0814, %struct.Memory** %MEMORY

  %loadBr_4b0814 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4b0814 = icmp eq i8 %loadBr_4b0814, 1
  br i1 %cmpBr_4b0814, label %block_.L_4b0cda, label %block_4b081a

block_4b081a:
  ; Code: movl $0x0, -0xc(%rbp)	 RIP: 4b081a	 Bytes: 7
  %loadMem_4b081a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b081a = call %struct.Memory* @routine_movl__0x0__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b081a)
  store %struct.Memory* %call_4b081a, %struct.Memory** %MEMORY

  ; Code: .L_4b0821:	 RIP: 4b0821	 Bytes: 0
  br label %block_.L_4b0821
block_.L_4b0821:

  ; Code: movl -0xc(%rbp), %eax	 RIP: 4b0821	 Bytes: 3
  %loadMem_4b0821 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0821 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0821)
  store %struct.Memory* %call_4b0821, %struct.Memory** %MEMORY

  ; Code: cmpl 0x7247b4, %eax	 RIP: 4b0824	 Bytes: 7
  %loadMem_4b0824 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0824 = call %struct.Memory* @routine_cmpl_0x7247b4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0824)
  store %struct.Memory* %call_4b0824, %struct.Memory** %MEMORY

  ; Code: jge .L_4b0cc7	 RIP: 4b082b	 Bytes: 6
  %loadMem_4b082b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b082b = call %struct.Memory* @routine_jge_.L_4b0cc7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b082b, i8* %BRANCH_TAKEN, i64 1180, i64 6, i64 6)
  store %struct.Memory* %call_4b082b, %struct.Memory** %MEMORY

  %loadBr_4b082b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4b082b = icmp eq i8 %loadBr_4b082b, 1
  br i1 %cmpBr_4b082b, label %block_.L_4b0cc7, label %block_4b0831

block_4b0831:
  ; Code: movq 0x722b28, %rax	 RIP: 4b0831	 Bytes: 8
  %loadMem_4b0831 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0831 = call %struct.Memory* @routine_movq_0x722b28___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0831)
  store %struct.Memory* %call_4b0831, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 4b0839	 Bytes: 4
  %loadMem_4b0839 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0839 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0839)
  store %struct.Memory* %call_4b0839, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 4b083d	 Bytes: 4
  %loadMem_4b083d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b083d = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b083d)
  store %struct.Memory* %call_4b083d, %struct.Memory** %MEMORY

  ; Code: movl 0x4(%rax), %edx	 RIP: 4b0841	 Bytes: 3
  %loadMem_4b0841 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0841 = call %struct.Memory* @routine_movl_0x4__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0841)
  store %struct.Memory* %call_4b0841, %struct.Memory** %MEMORY

  ; Code: movq 0x722b20, %rax	 RIP: 4b0844	 Bytes: 8
  %loadMem_4b0844 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0844 = call %struct.Memory* @routine_movq_0x722b20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0844)
  store %struct.Memory* %call_4b0844, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 4b084c	 Bytes: 4
  %loadMem_4b084c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b084c = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b084c)
  store %struct.Memory* %call_4b084c, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 4b0850	 Bytes: 4
  %loadMem_4b0850 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0850 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0850)
  store %struct.Memory* %call_4b0850, %struct.Memory** %MEMORY

  ; Code: subl 0x4(%rax), %edx	 RIP: 4b0854	 Bytes: 3
  %loadMem_4b0854 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0854 = call %struct.Memory* @routine_subl_0x4__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0854)
  store %struct.Memory* %call_4b0854, %struct.Memory** %MEMORY

  ; Code: cmpl $0xffffff80, %edx	 RIP: 4b0857	 Bytes: 3
  %loadMem_4b0857 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0857 = call %struct.Memory* @routine_cmpl__0xffffff80___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0857)
  store %struct.Memory* %call_4b0857, %struct.Memory** %MEMORY

  ; Code: jge .L_4b0870	 RIP: 4b085a	 Bytes: 6
  %loadMem_4b085a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b085a = call %struct.Memory* @routine_jge_.L_4b0870(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b085a, i8* %BRANCH_TAKEN, i64 22, i64 6, i64 6)
  store %struct.Memory* %call_4b085a, %struct.Memory** %MEMORY

  %loadBr_4b085a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4b085a = icmp eq i8 %loadBr_4b085a, 1
  br i1 %cmpBr_4b085a, label %block_.L_4b0870, label %block_4b0860

block_4b0860:
  ; Code: movl $0xffffff80, %eax	 RIP: 4b0860	 Bytes: 5
  %loadMem_4b0860 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0860 = call %struct.Memory* @routine_movl__0xffffff80___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0860)
  store %struct.Memory* %call_4b0860, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x8a68(%rbp)	 RIP: 4b0865	 Bytes: 6
  %loadMem_4b0865 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0865 = call %struct.Memory* @routine_movl__eax__MINUS0x8a68__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0865)
  store %struct.Memory* %call_4b0865, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4b08e7	 RIP: 4b086b	 Bytes: 5
  %loadMem_4b086b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b086b = call %struct.Memory* @routine_jmpq_.L_4b08e7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b086b, i64 124, i64 5)
  store %struct.Memory* %call_4b086b, %struct.Memory** %MEMORY

  br label %block_.L_4b08e7

  ; Code: .L_4b0870:	 RIP: 4b0870	 Bytes: 0
block_.L_4b0870:

  ; Code: movq 0x722b28, %rax	 RIP: 4b0870	 Bytes: 8
  %loadMem_4b0870 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0870 = call %struct.Memory* @routine_movq_0x722b28___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0870)
  store %struct.Memory* %call_4b0870, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 4b0878	 Bytes: 4
  %loadMem_4b0878 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0878 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0878)
  store %struct.Memory* %call_4b0878, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 4b087c	 Bytes: 4
  %loadMem_4b087c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b087c = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b087c)
  store %struct.Memory* %call_4b087c, %struct.Memory** %MEMORY

  ; Code: movl 0x4(%rax), %edx	 RIP: 4b0880	 Bytes: 3
  %loadMem_4b0880 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0880 = call %struct.Memory* @routine_movl_0x4__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0880)
  store %struct.Memory* %call_4b0880, %struct.Memory** %MEMORY

  ; Code: movq 0x722b20, %rax	 RIP: 4b0883	 Bytes: 8
  %loadMem_4b0883 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0883 = call %struct.Memory* @routine_movq_0x722b20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0883)
  store %struct.Memory* %call_4b0883, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 4b088b	 Bytes: 4
  %loadMem_4b088b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b088b = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b088b)
  store %struct.Memory* %call_4b088b, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 4b088f	 Bytes: 4
  %loadMem_4b088f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b088f = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b088f)
  store %struct.Memory* %call_4b088f, %struct.Memory** %MEMORY

  ; Code: subl 0x4(%rax), %edx	 RIP: 4b0893	 Bytes: 3
  %loadMem_4b0893 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0893 = call %struct.Memory* @routine_subl_0x4__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0893)
  store %struct.Memory* %call_4b0893, %struct.Memory** %MEMORY

  ; Code: cmpl $0x7f, %edx	 RIP: 4b0896	 Bytes: 3
  %loadMem_4b0896 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0896 = call %struct.Memory* @routine_cmpl__0x7f___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0896)
  store %struct.Memory* %call_4b0896, %struct.Memory** %MEMORY

  ; Code: jle .L_4b08af	 RIP: 4b0899	 Bytes: 6
  %loadMem_4b0899 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0899 = call %struct.Memory* @routine_jle_.L_4b08af(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0899, i8* %BRANCH_TAKEN, i64 22, i64 6, i64 6)
  store %struct.Memory* %call_4b0899, %struct.Memory** %MEMORY

  %loadBr_4b0899 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4b0899 = icmp eq i8 %loadBr_4b0899, 1
  br i1 %cmpBr_4b0899, label %block_.L_4b08af, label %block_4b089f

block_4b089f:
  ; Code: movl $0x7f, %eax	 RIP: 4b089f	 Bytes: 5
  %loadMem_4b089f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b089f = call %struct.Memory* @routine_movl__0x7f___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b089f)
  store %struct.Memory* %call_4b089f, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x8a6c(%rbp)	 RIP: 4b08a4	 Bytes: 6
  %loadMem_4b08a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b08a4 = call %struct.Memory* @routine_movl__eax__MINUS0x8a6c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b08a4)
  store %struct.Memory* %call_4b08a4, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4b08db	 RIP: 4b08aa	 Bytes: 5
  %loadMem_4b08aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b08aa = call %struct.Memory* @routine_jmpq_.L_4b08db(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b08aa, i64 49, i64 5)
  store %struct.Memory* %call_4b08aa, %struct.Memory** %MEMORY

  br label %block_.L_4b08db

  ; Code: .L_4b08af:	 RIP: 4b08af	 Bytes: 0
block_.L_4b08af:

  ; Code: movq 0x722b28, %rax	 RIP: 4b08af	 Bytes: 8
  %loadMem_4b08af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b08af = call %struct.Memory* @routine_movq_0x722b28___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b08af)
  store %struct.Memory* %call_4b08af, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 4b08b7	 Bytes: 4
  %loadMem_4b08b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b08b7 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b08b7)
  store %struct.Memory* %call_4b08b7, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 4b08bb	 Bytes: 4
  %loadMem_4b08bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b08bb = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b08bb)
  store %struct.Memory* %call_4b08bb, %struct.Memory** %MEMORY

  ; Code: movl 0x4(%rax), %edx	 RIP: 4b08bf	 Bytes: 3
  %loadMem_4b08bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b08bf = call %struct.Memory* @routine_movl_0x4__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b08bf)
  store %struct.Memory* %call_4b08bf, %struct.Memory** %MEMORY

  ; Code: movq 0x722b20, %rax	 RIP: 4b08c2	 Bytes: 8
  %loadMem_4b08c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b08c2 = call %struct.Memory* @routine_movq_0x722b20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b08c2)
  store %struct.Memory* %call_4b08c2, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 4b08ca	 Bytes: 4
  %loadMem_4b08ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b08ca = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b08ca)
  store %struct.Memory* %call_4b08ca, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 4b08ce	 Bytes: 4
  %loadMem_4b08ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b08ce = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b08ce)
  store %struct.Memory* %call_4b08ce, %struct.Memory** %MEMORY

  ; Code: subl 0x4(%rax), %edx	 RIP: 4b08d2	 Bytes: 3
  %loadMem_4b08d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b08d2 = call %struct.Memory* @routine_subl_0x4__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b08d2)
  store %struct.Memory* %call_4b08d2, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x8a6c(%rbp)	 RIP: 4b08d5	 Bytes: 6
  %loadMem_4b08d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b08d5 = call %struct.Memory* @routine_movl__edx__MINUS0x8a6c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b08d5)
  store %struct.Memory* %call_4b08d5, %struct.Memory** %MEMORY

  ; Code: .L_4b08db:	 RIP: 4b08db	 Bytes: 0
  br label %block_.L_4b08db
block_.L_4b08db:

  ; Code: movl -0x8a6c(%rbp), %eax	 RIP: 4b08db	 Bytes: 6
  %loadMem_4b08db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b08db = call %struct.Memory* @routine_movl_MINUS0x8a6c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b08db)
  store %struct.Memory* %call_4b08db, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x8a68(%rbp)	 RIP: 4b08e1	 Bytes: 6
  %loadMem_4b08e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b08e1 = call %struct.Memory* @routine_movl__eax__MINUS0x8a68__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b08e1)
  store %struct.Memory* %call_4b08e1, %struct.Memory** %MEMORY

  ; Code: .L_4b08e7:	 RIP: 4b08e7	 Bytes: 0
  br label %block_.L_4b08e7
block_.L_4b08e7:

  ; Code: movl -0x8a68(%rbp), %eax	 RIP: 4b08e7	 Bytes: 6
  %loadMem_4b08e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b08e7 = call %struct.Memory* @routine_movl_MINUS0x8a68__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b08e7)
  store %struct.Memory* %call_4b08e7, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x8a54(%rbp)	 RIP: 4b08ed	 Bytes: 6
  %loadMem_4b08ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b08ed = call %struct.Memory* @routine_movl__eax__MINUS0x8a54__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b08ed)
  store %struct.Memory* %call_4b08ed, %struct.Memory** %MEMORY

  ; Code: movq 0x70fcf0, %rcx	 RIP: 4b08f3	 Bytes: 8
  %loadMem_4b08f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b08f3 = call %struct.Memory* @routine_movq_0x70fcf0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b08f3)
  store %struct.Memory* %call_4b08f3, %struct.Memory** %MEMORY

  ; Code: movl 0x4(%rcx), %eax	 RIP: 4b08fb	 Bytes: 3
  %loadMem_4b08fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b08fb = call %struct.Memory* @routine_movl_0x4__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b08fb)
  store %struct.Memory* %call_4b08fb, %struct.Memory** %MEMORY

  ; Code: movq 0x722b20, %rcx	 RIP: 4b08fe	 Bytes: 8
  %loadMem_4b08fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b08fe = call %struct.Memory* @routine_movq_0x722b20___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b08fe)
  store %struct.Memory* %call_4b08fe, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdx	 RIP: 4b0906	 Bytes: 4
  %loadMem_4b0906 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0906 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0906)
  store %struct.Memory* %call_4b0906, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 4b090a	 Bytes: 4
  %loadMem_4b090a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b090a = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b090a)
  store %struct.Memory* %call_4b090a, %struct.Memory** %MEMORY

  ; Code: subl 0x4(%rcx), %eax	 RIP: 4b090e	 Bytes: 3
  %loadMem_4b090e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b090e = call %struct.Memory* @routine_subl_0x4__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b090e)
  store %struct.Memory* %call_4b090e, %struct.Memory** %MEMORY

  ; Code: cmpl $0xffffff80, %eax	 RIP: 4b0911	 Bytes: 3
  %loadMem_4b0911 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0911 = call %struct.Memory* @routine_cmpl__0xffffff80___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0911)
  store %struct.Memory* %call_4b0911, %struct.Memory** %MEMORY

  ; Code: jge .L_4b092a	 RIP: 4b0914	 Bytes: 6
  %loadMem_4b0914 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0914 = call %struct.Memory* @routine_jge_.L_4b092a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0914, i8* %BRANCH_TAKEN, i64 22, i64 6, i64 6)
  store %struct.Memory* %call_4b0914, %struct.Memory** %MEMORY

  %loadBr_4b0914 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4b0914 = icmp eq i8 %loadBr_4b0914, 1
  br i1 %cmpBr_4b0914, label %block_.L_4b092a, label %block_4b091a

block_4b091a:
  ; Code: movl $0xffffff80, %eax	 RIP: 4b091a	 Bytes: 5
  %loadMem_4b091a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b091a = call %struct.Memory* @routine_movl__0xffffff80___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b091a)
  store %struct.Memory* %call_4b091a, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x8a70(%rbp)	 RIP: 4b091f	 Bytes: 6
  %loadMem_4b091f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b091f = call %struct.Memory* @routine_movl__eax__MINUS0x8a70__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b091f)
  store %struct.Memory* %call_4b091f, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4b0991	 RIP: 4b0925	 Bytes: 5
  %loadMem_4b0925 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0925 = call %struct.Memory* @routine_jmpq_.L_4b0991(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0925, i64 108, i64 5)
  store %struct.Memory* %call_4b0925, %struct.Memory** %MEMORY

  br label %block_.L_4b0991

  ; Code: .L_4b092a:	 RIP: 4b092a	 Bytes: 0
block_.L_4b092a:

  ; Code: movq 0x70fcf0, %rax	 RIP: 4b092a	 Bytes: 8
  %loadMem_4b092a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b092a = call %struct.Memory* @routine_movq_0x70fcf0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b092a)
  store %struct.Memory* %call_4b092a, %struct.Memory** %MEMORY

  ; Code: movl 0x4(%rax), %ecx	 RIP: 4b0932	 Bytes: 3
  %loadMem_4b0932 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0932 = call %struct.Memory* @routine_movl_0x4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0932)
  store %struct.Memory* %call_4b0932, %struct.Memory** %MEMORY

  ; Code: movq 0x722b20, %rax	 RIP: 4b0935	 Bytes: 8
  %loadMem_4b0935 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0935 = call %struct.Memory* @routine_movq_0x722b20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0935)
  store %struct.Memory* %call_4b0935, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdx	 RIP: 4b093d	 Bytes: 4
  %loadMem_4b093d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b093d = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b093d)
  store %struct.Memory* %call_4b093d, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 4b0941	 Bytes: 4
  %loadMem_4b0941 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0941 = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0941)
  store %struct.Memory* %call_4b0941, %struct.Memory** %MEMORY

  ; Code: subl 0x4(%rax), %ecx	 RIP: 4b0945	 Bytes: 3
  %loadMem_4b0945 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0945 = call %struct.Memory* @routine_subl_0x4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0945)
  store %struct.Memory* %call_4b0945, %struct.Memory** %MEMORY

  ; Code: cmpl $0x7f, %ecx	 RIP: 4b0948	 Bytes: 3
  %loadMem_4b0948 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0948 = call %struct.Memory* @routine_cmpl__0x7f___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0948)
  store %struct.Memory* %call_4b0948, %struct.Memory** %MEMORY

  ; Code: jle .L_4b0961	 RIP: 4b094b	 Bytes: 6
  %loadMem_4b094b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b094b = call %struct.Memory* @routine_jle_.L_4b0961(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b094b, i8* %BRANCH_TAKEN, i64 22, i64 6, i64 6)
  store %struct.Memory* %call_4b094b, %struct.Memory** %MEMORY

  %loadBr_4b094b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4b094b = icmp eq i8 %loadBr_4b094b, 1
  br i1 %cmpBr_4b094b, label %block_.L_4b0961, label %block_4b0951

block_4b0951:
  ; Code: movl $0x7f, %eax	 RIP: 4b0951	 Bytes: 5
  %loadMem_4b0951 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0951 = call %struct.Memory* @routine_movl__0x7f___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0951)
  store %struct.Memory* %call_4b0951, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x8a74(%rbp)	 RIP: 4b0956	 Bytes: 6
  %loadMem_4b0956 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0956 = call %struct.Memory* @routine_movl__eax__MINUS0x8a74__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0956)
  store %struct.Memory* %call_4b0956, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4b0985	 RIP: 4b095c	 Bytes: 5
  %loadMem_4b095c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b095c = call %struct.Memory* @routine_jmpq_.L_4b0985(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b095c, i64 41, i64 5)
  store %struct.Memory* %call_4b095c, %struct.Memory** %MEMORY

  br label %block_.L_4b0985

  ; Code: .L_4b0961:	 RIP: 4b0961	 Bytes: 0
block_.L_4b0961:

  ; Code: movq 0x70fcf0, %rax	 RIP: 4b0961	 Bytes: 8
  %loadMem_4b0961 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0961 = call %struct.Memory* @routine_movq_0x70fcf0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0961)
  store %struct.Memory* %call_4b0961, %struct.Memory** %MEMORY

  ; Code: movl 0x4(%rax), %ecx	 RIP: 4b0969	 Bytes: 3
  %loadMem_4b0969 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0969 = call %struct.Memory* @routine_movl_0x4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0969)
  store %struct.Memory* %call_4b0969, %struct.Memory** %MEMORY

  ; Code: movq 0x722b20, %rax	 RIP: 4b096c	 Bytes: 8
  %loadMem_4b096c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b096c = call %struct.Memory* @routine_movq_0x722b20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b096c)
  store %struct.Memory* %call_4b096c, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdx	 RIP: 4b0974	 Bytes: 4
  %loadMem_4b0974 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0974 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0974)
  store %struct.Memory* %call_4b0974, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 4b0978	 Bytes: 4
  %loadMem_4b0978 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0978 = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0978)
  store %struct.Memory* %call_4b0978, %struct.Memory** %MEMORY

  ; Code: subl 0x4(%rax), %ecx	 RIP: 4b097c	 Bytes: 3
  %loadMem_4b097c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b097c = call %struct.Memory* @routine_subl_0x4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b097c)
  store %struct.Memory* %call_4b097c, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x8a74(%rbp)	 RIP: 4b097f	 Bytes: 6
  %loadMem_4b097f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b097f = call %struct.Memory* @routine_movl__ecx__MINUS0x8a74__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b097f)
  store %struct.Memory* %call_4b097f, %struct.Memory** %MEMORY

  ; Code: .L_4b0985:	 RIP: 4b0985	 Bytes: 0
  br label %block_.L_4b0985
block_.L_4b0985:

  ; Code: movl -0x8a74(%rbp), %eax	 RIP: 4b0985	 Bytes: 6
  %loadMem_4b0985 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0985 = call %struct.Memory* @routine_movl_MINUS0x8a74__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0985)
  store %struct.Memory* %call_4b0985, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x8a70(%rbp)	 RIP: 4b098b	 Bytes: 6
  %loadMem_4b098b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b098b = call %struct.Memory* @routine_movl__eax__MINUS0x8a70__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b098b)
  store %struct.Memory* %call_4b098b, %struct.Memory** %MEMORY

  ; Code: .L_4b0991:	 RIP: 4b0991	 Bytes: 0
  br label %block_.L_4b0991
block_.L_4b0991:

  ; Code: movl -0x8a70(%rbp), %eax	 RIP: 4b0991	 Bytes: 6
  %loadMem_4b0991 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0991 = call %struct.Memory* @routine_movl_MINUS0x8a70__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0991)
  store %struct.Memory* %call_4b0991, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x8a58(%rbp)	 RIP: 4b0997	 Bytes: 6
  %loadMem_4b0997 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0997 = call %struct.Memory* @routine_movl__eax__MINUS0x8a58__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0997)
  store %struct.Memory* %call_4b0997, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x28(%rbp)	 RIP: 4b099d	 Bytes: 7
  %loadMem_4b099d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b099d = call %struct.Memory* @routine_movl__0x0__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b099d)
  store %struct.Memory* %call_4b099d, %struct.Memory** %MEMORY

  ; Code: .L_4b09a4:	 RIP: 4b09a4	 Bytes: 0
  br label %block_.L_4b09a4
block_.L_4b09a4:

  ; Code: cmpl $0x3, -0x28(%rbp)	 RIP: 4b09a4	 Bytes: 4
  %loadMem_4b09a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b09a4 = call %struct.Memory* @routine_cmpl__0x3__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b09a4)
  store %struct.Memory* %call_4b09a4, %struct.Memory** %MEMORY

  ; Code: jge .L_4b0cb4	 RIP: 4b09a8	 Bytes: 6
  %loadMem_4b09a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b09a8 = call %struct.Memory* @routine_jge_.L_4b0cb4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b09a8, i8* %BRANCH_TAKEN, i64 780, i64 6, i64 6)
  store %struct.Memory* %call_4b09a8, %struct.Memory** %MEMORY

  %loadBr_4b09a8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4b09a8 = icmp eq i8 %loadBr_4b09a8, 1
  br i1 %cmpBr_4b09a8, label %block_.L_4b0cb4, label %block_4b09ae

block_4b09ae:
  ; Code: cmpl $0x0, -0x8a54(%rbp)	 RIP: 4b09ae	 Bytes: 7
  %loadMem_4b09ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b09ae = call %struct.Memory* @routine_cmpl__0x0__MINUS0x8a54__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b09ae)
  store %struct.Memory* %call_4b09ae, %struct.Memory** %MEMORY

  ; Code: jne .L_4b0a72	 RIP: 4b09b5	 Bytes: 6
  %loadMem_4b09b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b09b5 = call %struct.Memory* @routine_jne_.L_4b0a72(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b09b5, i8* %BRANCH_TAKEN, i64 189, i64 6, i64 6)
  store %struct.Memory* %call_4b09b5, %struct.Memory** %MEMORY

  %loadBr_4b09b5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4b09b5 = icmp eq i8 %loadBr_4b09b5, 1
  br i1 %cmpBr_4b09b5, label %block_.L_4b0a72, label %block_4b09bb

block_4b09bb:
  ; Code: leaq -0x8a40(%rbp), %rax	 RIP: 4b09bb	 Bytes: 7
  %loadMem_4b09bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b09bb = call %struct.Memory* @routine_leaq_MINUS0x8a40__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b09bb)
  store %struct.Memory* %call_4b09bb, %struct.Memory** %MEMORY

  ; Code: leaq -0x4af0(%rbp), %rcx	 RIP: 4b09c2	 Bytes: 7
  %loadMem_4b09c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b09c2 = call %struct.Memory* @routine_leaq_MINUS0x4af0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b09c2)
  store %struct.Memory* %call_4b09c2, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdx	 RIP: 4b09c9	 Bytes: 3
  %loadMem_4b09c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b09c9 = call %struct.Memory* @routine_movq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b09c9)
  store %struct.Memory* %call_4b09c9, %struct.Memory** %MEMORY

  ; Code: addq $0xa8c, %rdx	 RIP: 4b09cc	 Bytes: 7
  %loadMem_4b09cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b09cc = call %struct.Memory* @routine_addq__0xa8c___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b09cc)
  store %struct.Memory* %call_4b09cc, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rsi	 RIP: 4b09d3	 Bytes: 4
  %loadMem_4b09d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b09d3 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b09d3)
  store %struct.Memory* %call_4b09d3, %struct.Memory** %MEMORY

  ; Code: imulq $0xb4, %rsi, %rsi	 RIP: 4b09d7	 Bytes: 7
  %loadMem_4b09d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b09d7 = call %struct.Memory* @routine_imulq__0xb4___rsi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b09d7)
  store %struct.Memory* %call_4b09d7, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rdx	 RIP: 4b09de	 Bytes: 3
  %loadMem_4b09de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b09de = call %struct.Memory* @routine_addq__rsi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b09de)
  store %struct.Memory* %call_4b09de, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rsi	 RIP: 4b09e1	 Bytes: 4
  %loadMem_4b09e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b09e1 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b09e1)
  store %struct.Memory* %call_4b09e1, %struct.Memory** %MEMORY

  ; Code: imulq $0xc, %rsi, %rsi	 RIP: 4b09e5	 Bytes: 4
  %loadMem_4b09e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b09e5 = call %struct.Memory* @routine_imulq__0xc___rsi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b09e5)
  store %struct.Memory* %call_4b09e5, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rdx	 RIP: 4b09e9	 Bytes: 3
  %loadMem_4b09e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b09e9 = call %struct.Memory* @routine_addq__rsi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b09e9)
  store %struct.Memory* %call_4b09e9, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rsi	 RIP: 4b09ec	 Bytes: 4
  %loadMem_4b09ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b09ec = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b09ec)
  store %struct.Memory* %call_4b09ec, %struct.Memory** %MEMORY

  ; Code: movl $0x20, (%rdx,%rsi,4)	 RIP: 4b09f0	 Bytes: 7
  %loadMem_4b09f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b09f0 = call %struct.Memory* @routine_movl__0x20____rdx__rsi_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b09f0)
  store %struct.Memory* %call_4b09f0, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdx	 RIP: 4b09f7	 Bytes: 4
  %loadMem_4b09f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b09f7 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b09f7)
  store %struct.Memory* %call_4b09f7, %struct.Memory** %MEMORY

  ; Code: imulq $0xb4, %rdx, %rdx	 RIP: 4b09fb	 Bytes: 7
  %loadMem_4b09fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b09fb = call %struct.Memory* @routine_imulq__0xb4___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b09fb)
  store %struct.Memory* %call_4b09fb, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 4b0a02	 Bytes: 3
  %loadMem_4b0a02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0a02 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0a02)
  store %struct.Memory* %call_4b0a02, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rdx	 RIP: 4b0a05	 Bytes: 4
  %loadMem_4b0a05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0a05 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0a05)
  store %struct.Memory* %call_4b0a05, %struct.Memory** %MEMORY

  ; Code: imulq $0xc, %rdx, %rdx	 RIP: 4b0a09	 Bytes: 4
  %loadMem_4b0a09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0a09 = call %struct.Memory* @routine_imulq__0xc___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0a09)
  store %struct.Memory* %call_4b0a09, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 4b0a0d	 Bytes: 3
  %loadMem_4b0a0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0a0d = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0a0d)
  store %struct.Memory* %call_4b0a0d, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdx	 RIP: 4b0a10	 Bytes: 4
  %loadMem_4b0a10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0a10 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0a10)
  store %struct.Memory* %call_4b0a10, %struct.Memory** %MEMORY

  ; Code: movl $0x20, (%rcx,%rdx,4)	 RIP: 4b0a14	 Bytes: 7
  %loadMem_4b0a14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0a14 = call %struct.Memory* @routine_movl__0x20____rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0a14)
  store %struct.Memory* %call_4b0a14, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rcx	 RIP: 4b0a1b	 Bytes: 3
  %loadMem_4b0a1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0a1b = call %struct.Memory* @routine_movq__rax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0a1b)
  store %struct.Memory* %call_4b0a1b, %struct.Memory** %MEMORY

  ; Code: addq $0xa8c, %rcx	 RIP: 4b0a1e	 Bytes: 7
  %loadMem_4b0a1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0a1e = call %struct.Memory* @routine_addq__0xa8c___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0a1e)
  store %struct.Memory* %call_4b0a1e, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdx	 RIP: 4b0a25	 Bytes: 4
  %loadMem_4b0a25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0a25 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0a25)
  store %struct.Memory* %call_4b0a25, %struct.Memory** %MEMORY

  ; Code: imulq $0xb4, %rdx, %rdx	 RIP: 4b0a29	 Bytes: 7
  %loadMem_4b0a29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0a29 = call %struct.Memory* @routine_imulq__0xb4___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0a29)
  store %struct.Memory* %call_4b0a29, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 4b0a30	 Bytes: 3
  %loadMem_4b0a30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0a30 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0a30)
  store %struct.Memory* %call_4b0a30, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rdx	 RIP: 4b0a33	 Bytes: 4
  %loadMem_4b0a33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0a33 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0a33)
  store %struct.Memory* %call_4b0a33, %struct.Memory** %MEMORY

  ; Code: imulq $0xc, %rdx, %rdx	 RIP: 4b0a37	 Bytes: 4
  %loadMem_4b0a37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0a37 = call %struct.Memory* @routine_imulq__0xc___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0a37)
  store %struct.Memory* %call_4b0a37, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 4b0a3b	 Bytes: 3
  %loadMem_4b0a3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0a3b = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0a3b)
  store %struct.Memory* %call_4b0a3b, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdx	 RIP: 4b0a3e	 Bytes: 4
  %loadMem_4b0a3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0a3e = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0a3e)
  store %struct.Memory* %call_4b0a3e, %struct.Memory** %MEMORY

  ; Code: movl $0x0, (%rcx,%rdx,4)	 RIP: 4b0a42	 Bytes: 7
  %loadMem_4b0a42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0a42 = call %struct.Memory* @routine_movl__0x0____rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0a42)
  store %struct.Memory* %call_4b0a42, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 4b0a49	 Bytes: 4
  %loadMem_4b0a49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0a49 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0a49)
  store %struct.Memory* %call_4b0a49, %struct.Memory** %MEMORY

  ; Code: imulq $0xb4, %rcx, %rcx	 RIP: 4b0a4d	 Bytes: 7
  %loadMem_4b0a4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0a4d = call %struct.Memory* @routine_imulq__0xb4___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0a4d)
  store %struct.Memory* %call_4b0a4d, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4b0a54	 Bytes: 3
  %loadMem_4b0a54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0a54 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0a54)
  store %struct.Memory* %call_4b0a54, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 4b0a57	 Bytes: 4
  %loadMem_4b0a57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0a57 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0a57)
  store %struct.Memory* %call_4b0a57, %struct.Memory** %MEMORY

  ; Code: imulq $0xc, %rcx, %rcx	 RIP: 4b0a5b	 Bytes: 4
  %loadMem_4b0a5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0a5b = call %struct.Memory* @routine_imulq__0xc___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0a5b)
  store %struct.Memory* %call_4b0a5b, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4b0a5f	 Bytes: 3
  %loadMem_4b0a5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0a5f = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0a5f)
  store %struct.Memory* %call_4b0a5f, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 4b0a62	 Bytes: 4
  %loadMem_4b0a62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0a62 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0a62)
  store %struct.Memory* %call_4b0a62, %struct.Memory** %MEMORY

  ; Code: movl $0x0, (%rax,%rcx,4)	 RIP: 4b0a66	 Bytes: 7
  %loadMem_4b0a66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0a66 = call %struct.Memory* @routine_movl__0x0____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0a66)
  store %struct.Memory* %call_4b0a66, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4b0ca1	 RIP: 4b0a6d	 Bytes: 5
  %loadMem_4b0a6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0a6d = call %struct.Memory* @routine_jmpq_.L_4b0ca1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0a6d, i64 564, i64 5)
  store %struct.Memory* %call_4b0a6d, %struct.Memory** %MEMORY

  br label %block_.L_4b0ca1

  ; Code: .L_4b0a72:	 RIP: 4b0a72	 Bytes: 0
block_.L_4b0a72:

  ; Code: movl $0x2, %eax	 RIP: 4b0a72	 Bytes: 5
  %loadMem_4b0a72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0a72 = call %struct.Memory* @routine_movl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0a72)
  store %struct.Memory* %call_4b0a72, %struct.Memory** %MEMORY

  ; Code: movl -0x8a54(%rbp), %ecx	 RIP: 4b0a77	 Bytes: 6
  %loadMem_4b0a77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0a77 = call %struct.Memory* @routine_movl_MINUS0x8a54__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0a77)
  store %struct.Memory* %call_4b0a77, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x8a78(%rbp)	 RIP: 4b0a7d	 Bytes: 6
  %loadMem_4b0a7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0a7d = call %struct.Memory* @routine_movl__eax__MINUS0x8a78__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0a7d)
  store %struct.Memory* %call_4b0a7d, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %eax	 RIP: 4b0a83	 Bytes: 2
  %loadMem_4b0a83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0a83 = call %struct.Memory* @routine_movl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0a83)
  store %struct.Memory* %call_4b0a83, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 4b0a85	 Bytes: 1
  %loadMem_4b0a85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0a85 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0a85)
  store %struct.Memory* %call_4b0a85, %struct.Memory** %MEMORY

  ; Code: movl -0x8a78(%rbp), %ecx	 RIP: 4b0a86	 Bytes: 6
  %loadMem_4b0a86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0a86 = call %struct.Memory* @routine_movl_MINUS0x8a78__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0a86)
  store %struct.Memory* %call_4b0a86, %struct.Memory** %MEMORY

  ; Code: idivl %ecx	 RIP: 4b0a8c	 Bytes: 2
  %loadMem_4b0a8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0a8c = call %struct.Memory* @routine_idivl__ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0a8c)
  store %struct.Memory* %call_4b0a8c, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edi	 RIP: 4b0a8e	 Bytes: 2
  %loadMem_4b0a8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0a8e = call %struct.Memory* @routine_movl__eax___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0a8e)
  store %struct.Memory* %call_4b0a8e, %struct.Memory** %MEMORY

  ; Code: callq .abs_plt	 RIP: 4b0a90	 Bytes: 5
  %loadMem1_4b0a90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4b0a90 = call %struct.Memory* @routine_callq_.abs_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4b0a90, i64 -719504, i64 5, i64 5)
  store %struct.Memory* %call1_4b0a90, %struct.Memory** %MEMORY

  %loadMem2_4b0a90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4b0a90 = load i64, i64* %3
  %call2_4b0a90 = call %struct.Memory* @ext_abs(%struct.State* %0, i64  %loadPC_4b0a90, %struct.Memory* %loadMem2_4b0a90)
  store %struct.Memory* %call2_4b0a90, %struct.Memory** %MEMORY

  ; Code: addl $0x4000, %eax	 RIP: 4b0a95	 Bytes: 5
  %loadMem_4b0a95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0a95 = call %struct.Memory* @routine_addl__0x4000___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0a95)
  store %struct.Memory* %call_4b0a95, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 4b0a9a	 Bytes: 1
  %loadMem_4b0a9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0a9a = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0a9a)
  store %struct.Memory* %call_4b0a9a, %struct.Memory** %MEMORY

  ; Code: idivl -0x8a54(%rbp)	 RIP: 4b0a9b	 Bytes: 6
  %loadMem_4b0a9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0a9b = call %struct.Memory* @routine_idivl_MINUS0x8a54__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0a9b)
  store %struct.Memory* %call_4b0a9b, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x14(%rbp)	 RIP: 4b0aa1	 Bytes: 3
  %loadMem_4b0aa1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0aa1 = call %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0aa1)
  store %struct.Memory* %call_4b0aa1, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %eax	 RIP: 4b0aa4	 Bytes: 3
  %loadMem_4b0aa4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0aa4 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0aa4)
  store %struct.Memory* %call_4b0aa4, %struct.Memory** %MEMORY

  ; Code: imull -0x8a58(%rbp), %eax	 RIP: 4b0aa7	 Bytes: 7
  %loadMem_4b0aa7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0aa7 = call %struct.Memory* @routine_imull_MINUS0x8a58__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0aa7)
  store %struct.Memory* %call_4b0aa7, %struct.Memory** %MEMORY

  ; Code: addl $0x20, %eax	 RIP: 4b0aae	 Bytes: 3
  %loadMem_4b0aae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0aae = call %struct.Memory* @routine_addl__0x20___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0aae)
  store %struct.Memory* %call_4b0aae, %struct.Memory** %MEMORY

  ; Code: sarl $0x6, %eax	 RIP: 4b0ab1	 Bytes: 3
  %loadMem_4b0ab1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0ab1 = call %struct.Memory* @routine_sarl__0x6___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0ab1)
  store %struct.Memory* %call_4b0ab1, %struct.Memory** %MEMORY

  ; Code: cmpl $0xfffffc00, %eax	 RIP: 4b0ab4	 Bytes: 5
  %loadMem_4b0ab4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0ab4 = call %struct.Memory* @routine_cmpl__0xfffffc00___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0ab4)
  store %struct.Memory* %call_4b0ab4, %struct.Memory** %MEMORY

  ; Code: jge .L_4b0acf	 RIP: 4b0ab9	 Bytes: 6
  %loadMem_4b0ab9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0ab9 = call %struct.Memory* @routine_jge_.L_4b0acf(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0ab9, i8* %BRANCH_TAKEN, i64 22, i64 6, i64 6)
  store %struct.Memory* %call_4b0ab9, %struct.Memory** %MEMORY

  %loadBr_4b0ab9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4b0ab9 = icmp eq i8 %loadBr_4b0ab9, 1
  br i1 %cmpBr_4b0ab9, label %block_.L_4b0acf, label %block_4b0abf

block_4b0abf:
  ; Code: movl $0xfffffc00, %eax	 RIP: 4b0abf	 Bytes: 5
  %loadMem_4b0abf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0abf = call %struct.Memory* @routine_movl__0xfffffc00___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0abf)
  store %struct.Memory* %call_4b0abf, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x8a7c(%rbp)	 RIP: 4b0ac4	 Bytes: 6
  %loadMem_4b0ac4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0ac4 = call %struct.Memory* @routine_movl__eax__MINUS0x8a7c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0ac4)
  store %struct.Memory* %call_4b0ac4, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4b0b1c	 RIP: 4b0aca	 Bytes: 5
  %loadMem_4b0aca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0aca = call %struct.Memory* @routine_jmpq_.L_4b0b1c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0aca, i64 82, i64 5)
  store %struct.Memory* %call_4b0aca, %struct.Memory** %MEMORY

  br label %block_.L_4b0b1c

  ; Code: .L_4b0acf:	 RIP: 4b0acf	 Bytes: 0
block_.L_4b0acf:

  ; Code: movl -0x14(%rbp), %eax	 RIP: 4b0acf	 Bytes: 3
  %loadMem_4b0acf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0acf = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0acf)
  store %struct.Memory* %call_4b0acf, %struct.Memory** %MEMORY

  ; Code: imull -0x8a58(%rbp), %eax	 RIP: 4b0ad2	 Bytes: 7
  %loadMem_4b0ad2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0ad2 = call %struct.Memory* @routine_imull_MINUS0x8a58__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0ad2)
  store %struct.Memory* %call_4b0ad2, %struct.Memory** %MEMORY

  ; Code: addl $0x20, %eax	 RIP: 4b0ad9	 Bytes: 3
  %loadMem_4b0ad9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0ad9 = call %struct.Memory* @routine_addl__0x20___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0ad9)
  store %struct.Memory* %call_4b0ad9, %struct.Memory** %MEMORY

  ; Code: sarl $0x6, %eax	 RIP: 4b0adc	 Bytes: 3
  %loadMem_4b0adc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0adc = call %struct.Memory* @routine_sarl__0x6___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0adc)
  store %struct.Memory* %call_4b0adc, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3ff, %eax	 RIP: 4b0adf	 Bytes: 5
  %loadMem_4b0adf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0adf = call %struct.Memory* @routine_cmpl__0x3ff___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0adf)
  store %struct.Memory* %call_4b0adf, %struct.Memory** %MEMORY

  ; Code: jle .L_4b0afa	 RIP: 4b0ae4	 Bytes: 6
  %loadMem_4b0ae4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0ae4 = call %struct.Memory* @routine_jle_.L_4b0afa(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0ae4, i8* %BRANCH_TAKEN, i64 22, i64 6, i64 6)
  store %struct.Memory* %call_4b0ae4, %struct.Memory** %MEMORY

  %loadBr_4b0ae4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4b0ae4 = icmp eq i8 %loadBr_4b0ae4, 1
  br i1 %cmpBr_4b0ae4, label %block_.L_4b0afa, label %block_4b0aea

block_4b0aea:
  ; Code: movl $0x3ff, %eax	 RIP: 4b0aea	 Bytes: 5
  %loadMem_4b0aea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0aea = call %struct.Memory* @routine_movl__0x3ff___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0aea)
  store %struct.Memory* %call_4b0aea, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x8a80(%rbp)	 RIP: 4b0aef	 Bytes: 6
  %loadMem_4b0aef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0aef = call %struct.Memory* @routine_movl__eax__MINUS0x8a80__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0aef)
  store %struct.Memory* %call_4b0aef, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4b0b10	 RIP: 4b0af5	 Bytes: 5
  %loadMem_4b0af5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0af5 = call %struct.Memory* @routine_jmpq_.L_4b0b10(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0af5, i64 27, i64 5)
  store %struct.Memory* %call_4b0af5, %struct.Memory** %MEMORY

  br label %block_.L_4b0b10

  ; Code: .L_4b0afa:	 RIP: 4b0afa	 Bytes: 0
block_.L_4b0afa:

  ; Code: movl -0x14(%rbp), %eax	 RIP: 4b0afa	 Bytes: 3
  %loadMem_4b0afa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0afa = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0afa)
  store %struct.Memory* %call_4b0afa, %struct.Memory** %MEMORY

  ; Code: imull -0x8a58(%rbp), %eax	 RIP: 4b0afd	 Bytes: 7
  %loadMem_4b0afd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0afd = call %struct.Memory* @routine_imull_MINUS0x8a58__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0afd)
  store %struct.Memory* %call_4b0afd, %struct.Memory** %MEMORY

  ; Code: addl $0x20, %eax	 RIP: 4b0b04	 Bytes: 3
  %loadMem_4b0b04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0b04 = call %struct.Memory* @routine_addl__0x20___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0b04)
  store %struct.Memory* %call_4b0b04, %struct.Memory** %MEMORY

  ; Code: sarl $0x6, %eax	 RIP: 4b0b07	 Bytes: 3
  %loadMem_4b0b07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0b07 = call %struct.Memory* @routine_sarl__0x6___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0b07)
  store %struct.Memory* %call_4b0b07, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x8a80(%rbp)	 RIP: 4b0b0a	 Bytes: 6
  %loadMem_4b0b0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0b0a = call %struct.Memory* @routine_movl__eax__MINUS0x8a80__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0b0a)
  store %struct.Memory* %call_4b0b0a, %struct.Memory** %MEMORY

  ; Code: .L_4b0b10:	 RIP: 4b0b10	 Bytes: 0
  br label %block_.L_4b0b10
block_.L_4b0b10:

  ; Code: movl -0x8a80(%rbp), %eax	 RIP: 4b0b10	 Bytes: 6
  %loadMem_4b0b10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0b10 = call %struct.Memory* @routine_movl_MINUS0x8a80__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0b10)
  store %struct.Memory* %call_4b0b10, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x8a7c(%rbp)	 RIP: 4b0b16	 Bytes: 6
  %loadMem_4b0b16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0b16 = call %struct.Memory* @routine_movl__eax__MINUS0x8a7c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0b16)
  store %struct.Memory* %call_4b0b16, %struct.Memory** %MEMORY

  ; Code: .L_4b0b1c:	 RIP: 4b0b1c	 Bytes: 0
  br label %block_.L_4b0b1c
block_.L_4b0b1c:

  ; Code: movl -0x8a7c(%rbp), %eax	 RIP: 4b0b1c	 Bytes: 6
  %loadMem_4b0b1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0b1c = call %struct.Memory* @routine_movl_MINUS0x8a7c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0b1c)
  store %struct.Memory* %call_4b0b1c, %struct.Memory** %MEMORY

  ; Code: leaq -0x4af0(%rbp), %rcx	 RIP: 4b0b22	 Bytes: 7
  %loadMem_4b0b22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0b22 = call %struct.Memory* @routine_leaq_MINUS0x4af0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0b22)
  store %struct.Memory* %call_4b0b22, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x18(%rbp)	 RIP: 4b0b29	 Bytes: 3
  %loadMem_4b0b29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0b29 = call %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0b29)
  store %struct.Memory* %call_4b0b29, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %eax	 RIP: 4b0b2c	 Bytes: 3
  %loadMem_4b0b2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0b2c = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0b2c)
  store %struct.Memory* %call_4b0b2c, %struct.Memory** %MEMORY

  ; Code: sarl $0x2, %eax	 RIP: 4b0b2f	 Bytes: 3
  %loadMem_4b0b2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0b2f = call %struct.Memory* @routine_sarl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0b2f)
  store %struct.Memory* %call_4b0b2f, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdx	 RIP: 4b0b32	 Bytes: 3
  %loadMem_4b0b32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0b32 = call %struct.Memory* @routine_movq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0b32)
  store %struct.Memory* %call_4b0b32, %struct.Memory** %MEMORY

  ; Code: addq $0xa8c, %rdx	 RIP: 4b0b35	 Bytes: 7
  %loadMem_4b0b35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0b35 = call %struct.Memory* @routine_addq__0xa8c___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0b35)
  store %struct.Memory* %call_4b0b35, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rsi	 RIP: 4b0b3c	 Bytes: 4
  %loadMem_4b0b3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0b3c = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0b3c)
  store %struct.Memory* %call_4b0b3c, %struct.Memory** %MEMORY

  ; Code: imulq $0xb4, %rsi, %rsi	 RIP: 4b0b40	 Bytes: 7
  %loadMem_4b0b40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0b40 = call %struct.Memory* @routine_imulq__0xb4___rsi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0b40)
  store %struct.Memory* %call_4b0b40, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rdx	 RIP: 4b0b47	 Bytes: 3
  %loadMem_4b0b47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0b47 = call %struct.Memory* @routine_addq__rsi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0b47)
  store %struct.Memory* %call_4b0b47, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rsi	 RIP: 4b0b4a	 Bytes: 4
  %loadMem_4b0b4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0b4a = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0b4a)
  store %struct.Memory* %call_4b0b4a, %struct.Memory** %MEMORY

  ; Code: imulq $0xc, %rsi, %rsi	 RIP: 4b0b4e	 Bytes: 4
  %loadMem_4b0b4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0b4e = call %struct.Memory* @routine_imulq__0xc___rsi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0b4e)
  store %struct.Memory* %call_4b0b4e, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rdx	 RIP: 4b0b52	 Bytes: 3
  %loadMem_4b0b52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0b52 = call %struct.Memory* @routine_addq__rsi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0b52)
  store %struct.Memory* %call_4b0b52, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rsi	 RIP: 4b0b55	 Bytes: 4
  %loadMem_4b0b55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0b55 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0b55)
  store %struct.Memory* %call_4b0b55, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rdx,%rsi,4)	 RIP: 4b0b59	 Bytes: 3
  %loadMem_4b0b59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0b59 = call %struct.Memory* @routine_movl__eax____rdx__rsi_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0b59)
  store %struct.Memory* %call_4b0b59, %struct.Memory** %MEMORY

  ; Code: addq $0xa8c, %rcx	 RIP: 4b0b5c	 Bytes: 7
  %loadMem_4b0b5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0b5c = call %struct.Memory* @routine_addq__0xa8c___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0b5c)
  store %struct.Memory* %call_4b0b5c, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdx	 RIP: 4b0b63	 Bytes: 4
  %loadMem_4b0b63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0b63 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0b63)
  store %struct.Memory* %call_4b0b63, %struct.Memory** %MEMORY

  ; Code: imulq $0xb4, %rdx, %rdx	 RIP: 4b0b67	 Bytes: 7
  %loadMem_4b0b67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0b67 = call %struct.Memory* @routine_imulq__0xb4___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0b67)
  store %struct.Memory* %call_4b0b67, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 4b0b6e	 Bytes: 3
  %loadMem_4b0b6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0b6e = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0b6e)
  store %struct.Memory* %call_4b0b6e, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rdx	 RIP: 4b0b71	 Bytes: 4
  %loadMem_4b0b71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0b71 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0b71)
  store %struct.Memory* %call_4b0b71, %struct.Memory** %MEMORY

  ; Code: imulq $0xc, %rdx, %rdx	 RIP: 4b0b75	 Bytes: 4
  %loadMem_4b0b75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0b75 = call %struct.Memory* @routine_imulq__0xc___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0b75)
  store %struct.Memory* %call_4b0b75, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 4b0b79	 Bytes: 3
  %loadMem_4b0b79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0b79 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0b79)
  store %struct.Memory* %call_4b0b79, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdx	 RIP: 4b0b7c	 Bytes: 4
  %loadMem_4b0b7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0b7c = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0b7c)
  store %struct.Memory* %call_4b0b7c, %struct.Memory** %MEMORY

  ; Code: cmpl $0xffffffc0, (%rcx,%rdx,4)	 RIP: 4b0b80	 Bytes: 4
  %loadMem_4b0b80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0b80 = call %struct.Memory* @routine_cmpl__0xffffffc0____rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0b80)
  store %struct.Memory* %call_4b0b80, %struct.Memory** %MEMORY

  ; Code: jl .L_4b0bc1	 RIP: 4b0b84	 Bytes: 6
  %loadMem_4b0b84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0b84 = call %struct.Memory* @routine_jl_.L_4b0bc1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0b84, i8* %BRANCH_TAKEN, i64 61, i64 6, i64 6)
  store %struct.Memory* %call_4b0b84, %struct.Memory** %MEMORY

  %loadBr_4b0b84 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4b0b84 = icmp eq i8 %loadBr_4b0b84, 1
  br i1 %cmpBr_4b0b84, label %block_.L_4b0bc1, label %block_4b0b8a

block_4b0b8a:
  ; Code: leaq -0x4af0(%rbp), %rax	 RIP: 4b0b8a	 Bytes: 7
  %loadMem_4b0b8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0b8a = call %struct.Memory* @routine_leaq_MINUS0x4af0__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0b8a)
  store %struct.Memory* %call_4b0b8a, %struct.Memory** %MEMORY

  ; Code: addq $0xa8c, %rax	 RIP: 4b0b91	 Bytes: 6
  %loadMem_4b0b91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0b91 = call %struct.Memory* @routine_addq__0xa8c___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0b91)
  store %struct.Memory* %call_4b0b91, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 4b0b97	 Bytes: 4
  %loadMem_4b0b97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0b97 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0b97)
  store %struct.Memory* %call_4b0b97, %struct.Memory** %MEMORY

  ; Code: imulq $0xb4, %rcx, %rcx	 RIP: 4b0b9b	 Bytes: 7
  %loadMem_4b0b9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0b9b = call %struct.Memory* @routine_imulq__0xb4___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0b9b)
  store %struct.Memory* %call_4b0b9b, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4b0ba2	 Bytes: 3
  %loadMem_4b0ba2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0ba2 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0ba2)
  store %struct.Memory* %call_4b0ba2, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 4b0ba5	 Bytes: 4
  %loadMem_4b0ba5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0ba5 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0ba5)
  store %struct.Memory* %call_4b0ba5, %struct.Memory** %MEMORY

  ; Code: imulq $0xc, %rcx, %rcx	 RIP: 4b0ba9	 Bytes: 4
  %loadMem_4b0ba9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0ba9 = call %struct.Memory* @routine_imulq__0xc___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0ba9)
  store %struct.Memory* %call_4b0ba9, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4b0bad	 Bytes: 3
  %loadMem_4b0bad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0bad = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0bad)
  store %struct.Memory* %call_4b0bad, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 4b0bb0	 Bytes: 4
  %loadMem_4b0bb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0bb0 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0bb0)
  store %struct.Memory* %call_4b0bb0, %struct.Memory** %MEMORY

  ; Code: cmpl $0x80, (%rax,%rcx,4)	 RIP: 4b0bb4	 Bytes: 7
  %loadMem_4b0bb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0bb4 = call %struct.Memory* @routine_cmpl__0x80____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0bb4)
  store %struct.Memory* %call_4b0bb4, %struct.Memory** %MEMORY

  ; Code: jle .L_4b0bf2	 RIP: 4b0bbb	 Bytes: 6
  %loadMem_4b0bbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0bbb = call %struct.Memory* @routine_jle_.L_4b0bf2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0bbb, i8* %BRANCH_TAKEN, i64 55, i64 6, i64 6)
  store %struct.Memory* %call_4b0bbb, %struct.Memory** %MEMORY

  %loadBr_4b0bbb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4b0bbb = icmp eq i8 %loadBr_4b0bbb, 1
  br i1 %cmpBr_4b0bbb, label %block_.L_4b0bf2, label %block_.L_4b0bc1

  ; Code: .L_4b0bc1:	 RIP: 4b0bc1	 Bytes: 0
block_.L_4b0bc1:

  ; Code: leaq -0x4af0(%rbp), %rax	 RIP: 4b0bc1	 Bytes: 7
  %loadMem_4b0bc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0bc1 = call %struct.Memory* @routine_leaq_MINUS0x4af0__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0bc1)
  store %struct.Memory* %call_4b0bc1, %struct.Memory** %MEMORY

  ; Code: addq $0xa8c, %rax	 RIP: 4b0bc8	 Bytes: 6
  %loadMem_4b0bc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0bc8 = call %struct.Memory* @routine_addq__0xa8c___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0bc8)
  store %struct.Memory* %call_4b0bc8, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 4b0bce	 Bytes: 4
  %loadMem_4b0bce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0bce = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0bce)
  store %struct.Memory* %call_4b0bce, %struct.Memory** %MEMORY

  ; Code: imulq $0xb4, %rcx, %rcx	 RIP: 4b0bd2	 Bytes: 7
  %loadMem_4b0bd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0bd2 = call %struct.Memory* @routine_imulq__0xb4___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0bd2)
  store %struct.Memory* %call_4b0bd2, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4b0bd9	 Bytes: 3
  %loadMem_4b0bd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0bd9 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0bd9)
  store %struct.Memory* %call_4b0bd9, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 4b0bdc	 Bytes: 4
  %loadMem_4b0bdc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0bdc = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0bdc)
  store %struct.Memory* %call_4b0bdc, %struct.Memory** %MEMORY

  ; Code: imulq $0xc, %rcx, %rcx	 RIP: 4b0be0	 Bytes: 4
  %loadMem_4b0be0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0be0 = call %struct.Memory* @routine_imulq__0xc___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0be0)
  store %struct.Memory* %call_4b0be0, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4b0be4	 Bytes: 3
  %loadMem_4b0be4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0be4 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0be4)
  store %struct.Memory* %call_4b0be4, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 4b0be7	 Bytes: 4
  %loadMem_4b0be7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0be7 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0be7)
  store %struct.Memory* %call_4b0be7, %struct.Memory** %MEMORY

  ; Code: movl $0x20, (%rax,%rcx,4)	 RIP: 4b0beb	 Bytes: 7
  %loadMem_4b0beb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0beb = call %struct.Memory* @routine_movl__0x20____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0beb)
  store %struct.Memory* %call_4b0beb, %struct.Memory** %MEMORY

  ; Code: .L_4b0bf2:	 RIP: 4b0bf2	 Bytes: 0
  br label %block_.L_4b0bf2
block_.L_4b0bf2:

  ; Code: leaq -0x8a40(%rbp), %rax	 RIP: 4b0bf2	 Bytes: 7
  %loadMem_4b0bf2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0bf2 = call %struct.Memory* @routine_leaq_MINUS0x8a40__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0bf2)
  store %struct.Memory* %call_4b0bf2, %struct.Memory** %MEMORY

  ; Code: leaq -0x4af0(%rbp), %rcx	 RIP: 4b0bf9	 Bytes: 7
  %loadMem_4b0bf9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0bf9 = call %struct.Memory* @routine_leaq_MINUS0x4af0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0bf9)
  store %struct.Memory* %call_4b0bf9, %struct.Memory** %MEMORY

  ; Code: movl $0x40, %edx	 RIP: 4b0c00	 Bytes: 5
  %loadMem_4b0c00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0c00 = call %struct.Memory* @routine_movl__0x40___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0c00)
  store %struct.Memory* %call_4b0c00, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rsi	 RIP: 4b0c05	 Bytes: 3
  %loadMem_4b0c05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0c05 = call %struct.Memory* @routine_movq__rcx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0c05)
  store %struct.Memory* %call_4b0c05, %struct.Memory** %MEMORY

  ; Code: addq $0xa8c, %rsi	 RIP: 4b0c08	 Bytes: 7
  %loadMem_4b0c08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0c08 = call %struct.Memory* @routine_addq__0xa8c___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0c08)
  store %struct.Memory* %call_4b0c08, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdi	 RIP: 4b0c0f	 Bytes: 4
  %loadMem_4b0c0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0c0f = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0c0f)
  store %struct.Memory* %call_4b0c0f, %struct.Memory** %MEMORY

  ; Code: imulq $0xb4, %rdi, %rdi	 RIP: 4b0c13	 Bytes: 7
  %loadMem_4b0c13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0c13 = call %struct.Memory* @routine_imulq__0xb4___rdi___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0c13)
  store %struct.Memory* %call_4b0c13, %struct.Memory** %MEMORY

  ; Code: addq %rdi, %rsi	 RIP: 4b0c1a	 Bytes: 3
  %loadMem_4b0c1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0c1a = call %struct.Memory* @routine_addq__rdi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0c1a)
  store %struct.Memory* %call_4b0c1a, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rdi	 RIP: 4b0c1d	 Bytes: 4
  %loadMem_4b0c1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0c1d = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0c1d)
  store %struct.Memory* %call_4b0c1d, %struct.Memory** %MEMORY

  ; Code: imulq $0xc, %rdi, %rdi	 RIP: 4b0c21	 Bytes: 4
  %loadMem_4b0c21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0c21 = call %struct.Memory* @routine_imulq__0xc___rdi___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0c21)
  store %struct.Memory* %call_4b0c21, %struct.Memory** %MEMORY

  ; Code: addq %rdi, %rsi	 RIP: 4b0c25	 Bytes: 3
  %loadMem_4b0c25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0c25 = call %struct.Memory* @routine_addq__rdi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0c25)
  store %struct.Memory* %call_4b0c25, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdi	 RIP: 4b0c28	 Bytes: 4
  %loadMem_4b0c28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0c28 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0c28)
  store %struct.Memory* %call_4b0c28, %struct.Memory** %MEMORY

  ; Code: subl (%rsi,%rdi,4), %edx	 RIP: 4b0c2c	 Bytes: 3
  %loadMem_4b0c2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0c2c = call %struct.Memory* @routine_subl___rsi__rdi_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0c2c)
  store %struct.Memory* %call_4b0c2c, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rsi	 RIP: 4b0c2f	 Bytes: 4
  %loadMem_4b0c2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0c2f = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0c2f)
  store %struct.Memory* %call_4b0c2f, %struct.Memory** %MEMORY

  ; Code: imulq $0xb4, %rsi, %rsi	 RIP: 4b0c33	 Bytes: 7
  %loadMem_4b0c33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0c33 = call %struct.Memory* @routine_imulq__0xb4___rsi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0c33)
  store %struct.Memory* %call_4b0c33, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rcx	 RIP: 4b0c3a	 Bytes: 3
  %loadMem_4b0c3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0c3a = call %struct.Memory* @routine_addq__rsi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0c3a)
  store %struct.Memory* %call_4b0c3a, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rsi	 RIP: 4b0c3d	 Bytes: 4
  %loadMem_4b0c3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0c3d = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0c3d)
  store %struct.Memory* %call_4b0c3d, %struct.Memory** %MEMORY

  ; Code: imulq $0xc, %rsi, %rsi	 RIP: 4b0c41	 Bytes: 4
  %loadMem_4b0c41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0c41 = call %struct.Memory* @routine_imulq__0xc___rsi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0c41)
  store %struct.Memory* %call_4b0c41, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rcx	 RIP: 4b0c45	 Bytes: 3
  %loadMem_4b0c45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0c45 = call %struct.Memory* @routine_addq__rsi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0c45)
  store %struct.Memory* %call_4b0c45, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rsi	 RIP: 4b0c48	 Bytes: 4
  %loadMem_4b0c48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0c48 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0c48)
  store %struct.Memory* %call_4b0c48, %struct.Memory** %MEMORY

  ; Code: movl %edx, (%rcx,%rsi,4)	 RIP: 4b0c4c	 Bytes: 3
  %loadMem_4b0c4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0c4c = call %struct.Memory* @routine_movl__edx____rcx__rsi_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0c4c)
  store %struct.Memory* %call_4b0c4c, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rcx	 RIP: 4b0c4f	 Bytes: 3
  %loadMem_4b0c4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0c4f = call %struct.Memory* @routine_movq__rax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0c4f)
  store %struct.Memory* %call_4b0c4f, %struct.Memory** %MEMORY

  ; Code: addq $0xa8c, %rcx	 RIP: 4b0c52	 Bytes: 7
  %loadMem_4b0c52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0c52 = call %struct.Memory* @routine_addq__0xa8c___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0c52)
  store %struct.Memory* %call_4b0c52, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rsi	 RIP: 4b0c59	 Bytes: 4
  %loadMem_4b0c59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0c59 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0c59)
  store %struct.Memory* %call_4b0c59, %struct.Memory** %MEMORY

  ; Code: imulq $0xb4, %rsi, %rsi	 RIP: 4b0c5d	 Bytes: 7
  %loadMem_4b0c5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0c5d = call %struct.Memory* @routine_imulq__0xb4___rsi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0c5d)
  store %struct.Memory* %call_4b0c5d, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rcx	 RIP: 4b0c64	 Bytes: 3
  %loadMem_4b0c64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0c64 = call %struct.Memory* @routine_addq__rsi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0c64)
  store %struct.Memory* %call_4b0c64, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rsi	 RIP: 4b0c67	 Bytes: 4
  %loadMem_4b0c67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0c67 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0c67)
  store %struct.Memory* %call_4b0c67, %struct.Memory** %MEMORY

  ; Code: imulq $0xc, %rsi, %rsi	 RIP: 4b0c6b	 Bytes: 4
  %loadMem_4b0c6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0c6b = call %struct.Memory* @routine_imulq__0xc___rsi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0c6b)
  store %struct.Memory* %call_4b0c6b, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rcx	 RIP: 4b0c6f	 Bytes: 3
  %loadMem_4b0c6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0c6f = call %struct.Memory* @routine_addq__rsi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0c6f)
  store %struct.Memory* %call_4b0c6f, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rsi	 RIP: 4b0c72	 Bytes: 4
  %loadMem_4b0c72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0c72 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0c72)
  store %struct.Memory* %call_4b0c72, %struct.Memory** %MEMORY

  ; Code: movl $0x0, (%rcx,%rsi,4)	 RIP: 4b0c76	 Bytes: 7
  %loadMem_4b0c76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0c76 = call %struct.Memory* @routine_movl__0x0____rcx__rsi_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0c76)
  store %struct.Memory* %call_4b0c76, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 4b0c7d	 Bytes: 4
  %loadMem_4b0c7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0c7d = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0c7d)
  store %struct.Memory* %call_4b0c7d, %struct.Memory** %MEMORY

  ; Code: imulq $0xb4, %rcx, %rcx	 RIP: 4b0c81	 Bytes: 7
  %loadMem_4b0c81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0c81 = call %struct.Memory* @routine_imulq__0xb4___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0c81)
  store %struct.Memory* %call_4b0c81, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4b0c88	 Bytes: 3
  %loadMem_4b0c88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0c88 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0c88)
  store %struct.Memory* %call_4b0c88, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 4b0c8b	 Bytes: 4
  %loadMem_4b0c8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0c8b = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0c8b)
  store %struct.Memory* %call_4b0c8b, %struct.Memory** %MEMORY

  ; Code: imulq $0xc, %rcx, %rcx	 RIP: 4b0c8f	 Bytes: 4
  %loadMem_4b0c8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0c8f = call %struct.Memory* @routine_imulq__0xc___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0c8f)
  store %struct.Memory* %call_4b0c8f, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4b0c93	 Bytes: 3
  %loadMem_4b0c93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0c93 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0c93)
  store %struct.Memory* %call_4b0c93, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 4b0c96	 Bytes: 4
  %loadMem_4b0c96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0c96 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0c96)
  store %struct.Memory* %call_4b0c96, %struct.Memory** %MEMORY

  ; Code: movl $0x0, (%rax,%rcx,4)	 RIP: 4b0c9a	 Bytes: 7
  %loadMem_4b0c9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0c9a = call %struct.Memory* @routine_movl__0x0____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0c9a)
  store %struct.Memory* %call_4b0c9a, %struct.Memory** %MEMORY

  ; Code: .L_4b0ca1:	 RIP: 4b0ca1	 Bytes: 0
  br label %block_.L_4b0ca1
block_.L_4b0ca1:

  ; Code: jmpq .L_4b0ca6	 RIP: 4b0ca1	 Bytes: 5
  %loadMem_4b0ca1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0ca1 = call %struct.Memory* @routine_jmpq_.L_4b0ca6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0ca1, i64 5, i64 5)
  store %struct.Memory* %call_4b0ca1, %struct.Memory** %MEMORY

  br label %block_.L_4b0ca6

  ; Code: .L_4b0ca6:	 RIP: 4b0ca6	 Bytes: 0
block_.L_4b0ca6:

  ; Code: movl -0x28(%rbp), %eax	 RIP: 4b0ca6	 Bytes: 3
  %loadMem_4b0ca6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0ca6 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0ca6)
  store %struct.Memory* %call_4b0ca6, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4b0ca9	 Bytes: 3
  %loadMem_4b0ca9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0ca9 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0ca9)
  store %struct.Memory* %call_4b0ca9, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x28(%rbp)	 RIP: 4b0cac	 Bytes: 3
  %loadMem_4b0cac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0cac = call %struct.Memory* @routine_movl__eax__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0cac)
  store %struct.Memory* %call_4b0cac, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4b09a4	 RIP: 4b0caf	 Bytes: 5
  %loadMem_4b0caf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0caf = call %struct.Memory* @routine_jmpq_.L_4b09a4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0caf, i64 -779, i64 5)
  store %struct.Memory* %call_4b0caf, %struct.Memory** %MEMORY

  br label %block_.L_4b09a4

  ; Code: .L_4b0cb4:	 RIP: 4b0cb4	 Bytes: 0
block_.L_4b0cb4:

  ; Code: jmpq .L_4b0cb9	 RIP: 4b0cb4	 Bytes: 5
  %loadMem_4b0cb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0cb4 = call %struct.Memory* @routine_jmpq_.L_4b0cb9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0cb4, i64 5, i64 5)
  store %struct.Memory* %call_4b0cb4, %struct.Memory** %MEMORY

  br label %block_.L_4b0cb9

  ; Code: .L_4b0cb9:	 RIP: 4b0cb9	 Bytes: 0
block_.L_4b0cb9:

  ; Code: movl -0xc(%rbp), %eax	 RIP: 4b0cb9	 Bytes: 3
  %loadMem_4b0cb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0cb9 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0cb9)
  store %struct.Memory* %call_4b0cb9, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4b0cbc	 Bytes: 3
  %loadMem_4b0cbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0cbc = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0cbc)
  store %struct.Memory* %call_4b0cbc, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xc(%rbp)	 RIP: 4b0cbf	 Bytes: 3
  %loadMem_4b0cbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0cbf = call %struct.Memory* @routine_movl__eax__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0cbf)
  store %struct.Memory* %call_4b0cbf, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4b0821	 RIP: 4b0cc2	 Bytes: 5
  %loadMem_4b0cc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0cc2 = call %struct.Memory* @routine_jmpq_.L_4b0821(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0cc2, i64 -1185, i64 5)
  store %struct.Memory* %call_4b0cc2, %struct.Memory** %MEMORY

  br label %block_.L_4b0821

  ; Code: .L_4b0cc7:	 RIP: 4b0cc7	 Bytes: 0
block_.L_4b0cc7:

  ; Code: jmpq .L_4b0ccc	 RIP: 4b0cc7	 Bytes: 5
  %loadMem_4b0cc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0cc7 = call %struct.Memory* @routine_jmpq_.L_4b0ccc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0cc7, i64 5, i64 5)
  store %struct.Memory* %call_4b0cc7, %struct.Memory** %MEMORY

  br label %block_.L_4b0ccc

  ; Code: .L_4b0ccc:	 RIP: 4b0ccc	 Bytes: 0
block_.L_4b0ccc:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 4b0ccc	 Bytes: 3
  %loadMem_4b0ccc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0ccc = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0ccc)
  store %struct.Memory* %call_4b0ccc, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4b0ccf	 Bytes: 3
  %loadMem_4b0ccf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0ccf = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0ccf)
  store %struct.Memory* %call_4b0ccf, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x8(%rbp)	 RIP: 4b0cd2	 Bytes: 3
  %loadMem_4b0cd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0cd2 = call %struct.Memory* @routine_movl__eax__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0cd2)
  store %struct.Memory* %call_4b0cd2, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4b080a	 RIP: 4b0cd5	 Bytes: 5
  %loadMem_4b0cd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0cd5 = call %struct.Memory* @routine_jmpq_.L_4b080a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0cd5, i64 -1227, i64 5)
  store %struct.Memory* %call_4b0cd5, %struct.Memory** %MEMORY

  br label %block_.L_4b080a

  ; Code: .L_4b0cda:	 RIP: 4b0cda	 Bytes: 0
block_.L_4b0cda:

  ; Code: cmpl $0x1, -0x4(%rbp)	 RIP: 4b0cda	 Bytes: 4
  %loadMem_4b0cda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0cda = call %struct.Memory* @routine_cmpl__0x1__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0cda)
  store %struct.Memory* %call_4b0cda, %struct.Memory** %MEMORY

  ; Code: jne .L_4b0f6f	 RIP: 4b0cde	 Bytes: 6
  %loadMem_4b0cde = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0cde = call %struct.Memory* @routine_jne_.L_4b0f6f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0cde, i8* %BRANCH_TAKEN, i64 657, i64 6, i64 6)
  store %struct.Memory* %call_4b0cde, %struct.Memory** %MEMORY

  %loadBr_4b0cde = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4b0cde = icmp eq i8 %loadBr_4b0cde, 1
  br i1 %cmpBr_4b0cde, label %block_.L_4b0f6f, label %block_4b0ce4

block_4b0ce4:
  ; Code: movl $0x0, -0x8(%rbp)	 RIP: 4b0ce4	 Bytes: 7
  %loadMem_4b0ce4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0ce4 = call %struct.Memory* @routine_movl__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0ce4)
  store %struct.Memory* %call_4b0ce4, %struct.Memory** %MEMORY

  ; Code: .L_4b0ceb:	 RIP: 4b0ceb	 Bytes: 0
  br label %block_.L_4b0ceb
block_.L_4b0ceb:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 4b0ceb	 Bytes: 3
  %loadMem_4b0ceb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0ceb = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0ceb)
  store %struct.Memory* %call_4b0ceb, %struct.Memory** %MEMORY

  ; Code: cmpl 0x7247b0, %eax	 RIP: 4b0cee	 Bytes: 7
  %loadMem_4b0cee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0cee = call %struct.Memory* @routine_cmpl_0x7247b0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0cee)
  store %struct.Memory* %call_4b0cee, %struct.Memory** %MEMORY

  ; Code: jge .L_4b0e22	 RIP: 4b0cf5	 Bytes: 6
  %loadMem_4b0cf5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0cf5 = call %struct.Memory* @routine_jge_.L_4b0e22(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0cf5, i8* %BRANCH_TAKEN, i64 301, i64 6, i64 6)
  store %struct.Memory* %call_4b0cf5, %struct.Memory** %MEMORY

  %loadBr_4b0cf5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4b0cf5 = icmp eq i8 %loadBr_4b0cf5, 1
  br i1 %cmpBr_4b0cf5, label %block_.L_4b0e22, label %block_4b0cfb

block_4b0cfb:
  ; Code: movl $0x0, -0xc(%rbp)	 RIP: 4b0cfb	 Bytes: 7
  %loadMem_4b0cfb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0cfb = call %struct.Memory* @routine_movl__0x0__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0cfb)
  store %struct.Memory* %call_4b0cfb, %struct.Memory** %MEMORY

  ; Code: .L_4b0d02:	 RIP: 4b0d02	 Bytes: 0
  br label %block_.L_4b0d02
block_.L_4b0d02:

  ; Code: movl -0xc(%rbp), %eax	 RIP: 4b0d02	 Bytes: 3
  %loadMem_4b0d02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0d02 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0d02)
  store %struct.Memory* %call_4b0d02, %struct.Memory** %MEMORY

  ; Code: cmpl 0x7247b4, %eax	 RIP: 4b0d05	 Bytes: 7
  %loadMem_4b0d05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0d05 = call %struct.Memory* @routine_cmpl_0x7247b4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0d05)
  store %struct.Memory* %call_4b0d05, %struct.Memory** %MEMORY

  ; Code: jge .L_4b0e0f	 RIP: 4b0d0c	 Bytes: 6
  %loadMem_4b0d0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0d0c = call %struct.Memory* @routine_jge_.L_4b0e0f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0d0c, i8* %BRANCH_TAKEN, i64 259, i64 6, i64 6)
  store %struct.Memory* %call_4b0d0c, %struct.Memory** %MEMORY

  %loadBr_4b0d0c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4b0d0c = icmp eq i8 %loadBr_4b0d0c, 1
  br i1 %cmpBr_4b0d0c, label %block_.L_4b0e0f, label %block_4b0d12

block_4b0d12:
  ; Code: movl $0x0, -0x28(%rbp)	 RIP: 4b0d12	 Bytes: 7
  %loadMem_4b0d12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0d12 = call %struct.Memory* @routine_movl__0x0__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0d12)
  store %struct.Memory* %call_4b0d12, %struct.Memory** %MEMORY

  ; Code: .L_4b0d19:	 RIP: 4b0d19	 Bytes: 0
  br label %block_.L_4b0d19
block_.L_4b0d19:

  ; Code: cmpl $0x3, -0x28(%rbp)	 RIP: 4b0d19	 Bytes: 4
  %loadMem_4b0d19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0d19 = call %struct.Memory* @routine_cmpl__0x3__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0d19)
  store %struct.Memory* %call_4b0d19, %struct.Memory** %MEMORY

  ; Code: jge .L_4b0dfc	 RIP: 4b0d1d	 Bytes: 6
  %loadMem_4b0d1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0d1d = call %struct.Memory* @routine_jge_.L_4b0dfc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0d1d, i8* %BRANCH_TAKEN, i64 223, i64 6, i64 6)
  store %struct.Memory* %call_4b0d1d, %struct.Memory** %MEMORY

  %loadBr_4b0d1d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4b0d1d = icmp eq i8 %loadBr_4b0d1d, 1
  br i1 %cmpBr_4b0d1d, label %block_.L_4b0dfc, label %block_4b0d23

block_4b0d23:
  ; Code: cmpl $0x0, -0x28(%rbp)	 RIP: 4b0d23	 Bytes: 4
  %loadMem_4b0d23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0d23 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0d23)
  store %struct.Memory* %call_4b0d23, %struct.Memory** %MEMORY

  ; Code: jne .L_4b0d3f	 RIP: 4b0d27	 Bytes: 6
  %loadMem_4b0d27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0d27 = call %struct.Memory* @routine_jne_.L_4b0d3f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0d27, i8* %BRANCH_TAKEN, i64 24, i64 6, i64 6)
  store %struct.Memory* %call_4b0d27, %struct.Memory** %MEMORY

  %loadBr_4b0d27 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4b0d27 = icmp eq i8 %loadBr_4b0d27, 1
  br i1 %cmpBr_4b0d27, label %block_.L_4b0d3f, label %block_4b0d2d

block_4b0d2d:
  ; Code: movl 0x70f6d0, %eax	 RIP: 4b0d2d	 Bytes: 7
  %loadMem_4b0d2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0d2d = call %struct.Memory* @routine_movl_0x70f6d0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0d2d)
  store %struct.Memory* %call_4b0d2d, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x8a84(%rbp)	 RIP: 4b0d34	 Bytes: 6
  %loadMem_4b0d34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0d34 = call %struct.Memory* @routine_movl__eax__MINUS0x8a84__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0d34)
  store %struct.Memory* %call_4b0d34, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4b0d4c	 RIP: 4b0d3a	 Bytes: 5
  %loadMem_4b0d3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0d3a = call %struct.Memory* @routine_jmpq_.L_4b0d4c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0d3a, i64 18, i64 5)
  store %struct.Memory* %call_4b0d3a, %struct.Memory** %MEMORY

  br label %block_.L_4b0d4c

  ; Code: .L_4b0d3f:	 RIP: 4b0d3f	 Bytes: 0
block_.L_4b0d3f:

  ; Code: movl 0x7242a0, %eax	 RIP: 4b0d3f	 Bytes: 7
  %loadMem_4b0d3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0d3f = call %struct.Memory* @routine_movl_0x7242a0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0d3f)
  store %struct.Memory* %call_4b0d3f, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x8a84(%rbp)	 RIP: 4b0d46	 Bytes: 6
  %loadMem_4b0d46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0d46 = call %struct.Memory* @routine_movl__eax__MINUS0x8a84__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0d46)
  store %struct.Memory* %call_4b0d46, %struct.Memory** %MEMORY

  ; Code: .L_4b0d4c:	 RIP: 4b0d4c	 Bytes: 0
  br label %block_.L_4b0d4c
block_.L_4b0d4c:

  ; Code: movl -0x8a84(%rbp), %eax	 RIP: 4b0d4c	 Bytes: 6
  %loadMem_4b0d4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0d4c = call %struct.Memory* @routine_movl_MINUS0x8a84__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0d4c)
  store %struct.Memory* %call_4b0d4c, %struct.Memory** %MEMORY

  ; Code: leaq -0x4af0(%rbp), %rcx	 RIP: 4b0d52	 Bytes: 7
  %loadMem_4b0d52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0d52 = call %struct.Memory* @routine_leaq_MINUS0x4af0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0d52)
  store %struct.Memory* %call_4b0d52, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x304(%rbp)	 RIP: 4b0d59	 Bytes: 6
  %loadMem_4b0d59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0d59 = call %struct.Memory* @routine_movl__eax__MINUS0x304__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0d59)
  store %struct.Memory* %call_4b0d59, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdx	 RIP: 4b0d5f	 Bytes: 3
  %loadMem_4b0d5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0d5f = call %struct.Memory* @routine_movq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0d5f)
  store %struct.Memory* %call_4b0d5f, %struct.Memory** %MEMORY

  ; Code: addq $0xa8c, %rdx	 RIP: 4b0d62	 Bytes: 7
  %loadMem_4b0d62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0d62 = call %struct.Memory* @routine_addq__0xa8c___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0d62)
  store %struct.Memory* %call_4b0d62, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rsi	 RIP: 4b0d69	 Bytes: 4
  %loadMem_4b0d69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0d69 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0d69)
  store %struct.Memory* %call_4b0d69, %struct.Memory** %MEMORY

  ; Code: imulq $0xb4, %rsi, %rsi	 RIP: 4b0d6d	 Bytes: 7
  %loadMem_4b0d6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0d6d = call %struct.Memory* @routine_imulq__0xb4___rsi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0d6d)
  store %struct.Memory* %call_4b0d6d, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rdx	 RIP: 4b0d74	 Bytes: 3
  %loadMem_4b0d74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0d74 = call %struct.Memory* @routine_addq__rsi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0d74)
  store %struct.Memory* %call_4b0d74, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rsi	 RIP: 4b0d77	 Bytes: 4
  %loadMem_4b0d77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0d77 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0d77)
  store %struct.Memory* %call_4b0d77, %struct.Memory** %MEMORY

  ; Code: imulq $0xc, %rsi, %rsi	 RIP: 4b0d7b	 Bytes: 4
  %loadMem_4b0d7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0d7b = call %struct.Memory* @routine_imulq__0xc___rsi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0d7b)
  store %struct.Memory* %call_4b0d7b, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rdx	 RIP: 4b0d7f	 Bytes: 3
  %loadMem_4b0d7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0d7f = call %struct.Memory* @routine_addq__rsi___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0d7f)
  store %struct.Memory* %call_4b0d7f, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rsi	 RIP: 4b0d82	 Bytes: 4
  %loadMem_4b0d82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0d82 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0d82)
  store %struct.Memory* %call_4b0d82, %struct.Memory** %MEMORY

  ; Code: movl (%rdx,%rsi,4), %eax	 RIP: 4b0d86	 Bytes: 3
  %loadMem_4b0d86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0d86 = call %struct.Memory* @routine_movl___rdx__rsi_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0d86)
  store %struct.Memory* %call_4b0d86, %struct.Memory** %MEMORY

  ; Code: movq 0x70fcf8, %rdx	 RIP: 4b0d89	 Bytes: 8
  %loadMem_4b0d89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0d89 = call %struct.Memory* @routine_movq_0x70fcf8___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0d89)
  store %struct.Memory* %call_4b0d89, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rdx), %rdx	 RIP: 4b0d91	 Bytes: 4
  %loadMem_4b0d91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0d91 = call %struct.Memory* @routine_movq_0x8__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0d91)
  store %struct.Memory* %call_4b0d91, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rsi	 RIP: 4b0d95	 Bytes: 4
  %loadMem_4b0d95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0d95 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0d95)
  store %struct.Memory* %call_4b0d95, %struct.Memory** %MEMORY

  ; Code: movq (%rdx,%rsi,8), %rdx	 RIP: 4b0d99	 Bytes: 4
  %loadMem_4b0d99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0d99 = call %struct.Memory* @routine_movq___rdx__rsi_8____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0d99)
  store %struct.Memory* %call_4b0d99, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rsi	 RIP: 4b0d9d	 Bytes: 4
  %loadMem_4b0d9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0d9d = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0d9d)
  store %struct.Memory* %call_4b0d9d, %struct.Memory** %MEMORY

  ; Code: movq (%rdx,%rsi,8), %rdx	 RIP: 4b0da1	 Bytes: 4
  %loadMem_4b0da1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0da1 = call %struct.Memory* @routine_movq___rdx__rsi_8____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0da1)
  store %struct.Memory* %call_4b0da1, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rsi	 RIP: 4b0da5	 Bytes: 4
  %loadMem_4b0da5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0da5 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0da5)
  store %struct.Memory* %call_4b0da5, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rdx,%rsi,4)	 RIP: 4b0da9	 Bytes: 3
  %loadMem_4b0da9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0da9 = call %struct.Memory* @routine_movl__eax____rdx__rsi_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0da9)
  store %struct.Memory* %call_4b0da9, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdx	 RIP: 4b0dac	 Bytes: 4
  %loadMem_4b0dac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0dac = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0dac)
  store %struct.Memory* %call_4b0dac, %struct.Memory** %MEMORY

  ; Code: imulq $0xb4, %rdx, %rdx	 RIP: 4b0db0	 Bytes: 7
  %loadMem_4b0db0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0db0 = call %struct.Memory* @routine_imulq__0xb4___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0db0)
  store %struct.Memory* %call_4b0db0, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 4b0db7	 Bytes: 3
  %loadMem_4b0db7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0db7 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0db7)
  store %struct.Memory* %call_4b0db7, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rdx	 RIP: 4b0dba	 Bytes: 4
  %loadMem_4b0dba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0dba = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0dba)
  store %struct.Memory* %call_4b0dba, %struct.Memory** %MEMORY

  ; Code: imulq $0xc, %rdx, %rdx	 RIP: 4b0dbe	 Bytes: 4
  %loadMem_4b0dbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0dbe = call %struct.Memory* @routine_imulq__0xc___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0dbe)
  store %struct.Memory* %call_4b0dbe, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 4b0dc2	 Bytes: 3
  %loadMem_4b0dc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0dc2 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0dc2)
  store %struct.Memory* %call_4b0dc2, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdx	 RIP: 4b0dc5	 Bytes: 4
  %loadMem_4b0dc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0dc5 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0dc5)
  store %struct.Memory* %call_4b0dc5, %struct.Memory** %MEMORY

  ; Code: movl (%rcx,%rdx,4), %eax	 RIP: 4b0dc9	 Bytes: 3
  %loadMem_4b0dc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0dc9 = call %struct.Memory* @routine_movl___rcx__rdx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0dc9)
  store %struct.Memory* %call_4b0dc9, %struct.Memory** %MEMORY

  ; Code: movq 0x70fcf8, %rcx	 RIP: 4b0dcc	 Bytes: 8
  %loadMem_4b0dcc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0dcc = call %struct.Memory* @routine_movq_0x70fcf8___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0dcc)
  store %struct.Memory* %call_4b0dcc, %struct.Memory** %MEMORY

  ; Code: movq (%rcx), %rcx	 RIP: 4b0dd4	 Bytes: 3
  %loadMem_4b0dd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0dd4 = call %struct.Memory* @routine_movq___rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0dd4)
  store %struct.Memory* %call_4b0dd4, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdx	 RIP: 4b0dd7	 Bytes: 4
  %loadMem_4b0dd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0dd7 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0dd7)
  store %struct.Memory* %call_4b0dd7, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 4b0ddb	 Bytes: 4
  %loadMem_4b0ddb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0ddb = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0ddb)
  store %struct.Memory* %call_4b0ddb, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rdx	 RIP: 4b0ddf	 Bytes: 4
  %loadMem_4b0ddf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0ddf = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0ddf)
  store %struct.Memory* %call_4b0ddf, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 4b0de3	 Bytes: 4
  %loadMem_4b0de3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0de3 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0de3)
  store %struct.Memory* %call_4b0de3, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdx	 RIP: 4b0de7	 Bytes: 4
  %loadMem_4b0de7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0de7 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0de7)
  store %struct.Memory* %call_4b0de7, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx,%rdx,4)	 RIP: 4b0deb	 Bytes: 3
  %loadMem_4b0deb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0deb = call %struct.Memory* @routine_movl__eax____rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0deb)
  store %struct.Memory* %call_4b0deb, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %eax	 RIP: 4b0dee	 Bytes: 3
  %loadMem_4b0dee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0dee = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0dee)
  store %struct.Memory* %call_4b0dee, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4b0df1	 Bytes: 3
  %loadMem_4b0df1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0df1 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0df1)
  store %struct.Memory* %call_4b0df1, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x28(%rbp)	 RIP: 4b0df4	 Bytes: 3
  %loadMem_4b0df4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0df4 = call %struct.Memory* @routine_movl__eax__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0df4)
  store %struct.Memory* %call_4b0df4, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4b0d19	 RIP: 4b0df7	 Bytes: 5
  %loadMem_4b0df7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0df7 = call %struct.Memory* @routine_jmpq_.L_4b0d19(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0df7, i64 -222, i64 5)
  store %struct.Memory* %call_4b0df7, %struct.Memory** %MEMORY

  br label %block_.L_4b0d19

  ; Code: .L_4b0dfc:	 RIP: 4b0dfc	 Bytes: 0
block_.L_4b0dfc:

  ; Code: jmpq .L_4b0e01	 RIP: 4b0dfc	 Bytes: 5
  %loadMem_4b0dfc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0dfc = call %struct.Memory* @routine_jmpq_.L_4b0e01(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0dfc, i64 5, i64 5)
  store %struct.Memory* %call_4b0dfc, %struct.Memory** %MEMORY

  br label %block_.L_4b0e01

  ; Code: .L_4b0e01:	 RIP: 4b0e01	 Bytes: 0
block_.L_4b0e01:

  ; Code: movl -0xc(%rbp), %eax	 RIP: 4b0e01	 Bytes: 3
  %loadMem_4b0e01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0e01 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0e01)
  store %struct.Memory* %call_4b0e01, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4b0e04	 Bytes: 3
  %loadMem_4b0e04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0e04 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0e04)
  store %struct.Memory* %call_4b0e04, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xc(%rbp)	 RIP: 4b0e07	 Bytes: 3
  %loadMem_4b0e07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0e07 = call %struct.Memory* @routine_movl__eax__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0e07)
  store %struct.Memory* %call_4b0e07, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4b0d02	 RIP: 4b0e0a	 Bytes: 5
  %loadMem_4b0e0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0e0a = call %struct.Memory* @routine_jmpq_.L_4b0d02(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0e0a, i64 -264, i64 5)
  store %struct.Memory* %call_4b0e0a, %struct.Memory** %MEMORY

  br label %block_.L_4b0d02

  ; Code: .L_4b0e0f:	 RIP: 4b0e0f	 Bytes: 0
block_.L_4b0e0f:

  ; Code: jmpq .L_4b0e14	 RIP: 4b0e0f	 Bytes: 5
  %loadMem_4b0e0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0e0f = call %struct.Memory* @routine_jmpq_.L_4b0e14(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0e0f, i64 5, i64 5)
  store %struct.Memory* %call_4b0e0f, %struct.Memory** %MEMORY

  br label %block_.L_4b0e14

  ; Code: .L_4b0e14:	 RIP: 4b0e14	 Bytes: 0
block_.L_4b0e14:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 4b0e14	 Bytes: 3
  %loadMem_4b0e14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0e14 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0e14)
  store %struct.Memory* %call_4b0e14, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4b0e17	 Bytes: 3
  %loadMem_4b0e17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0e17 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0e17)
  store %struct.Memory* %call_4b0e17, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x8(%rbp)	 RIP: 4b0e1a	 Bytes: 3
  %loadMem_4b0e1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0e1a = call %struct.Memory* @routine_movl__eax__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0e1a)
  store %struct.Memory* %call_4b0e1a, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4b0ceb	 RIP: 4b0e1d	 Bytes: 5
  %loadMem_4b0e1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0e1d = call %struct.Memory* @routine_jmpq_.L_4b0ceb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0e1d, i64 -306, i64 5)
  store %struct.Memory* %call_4b0e1d, %struct.Memory** %MEMORY

  br label %block_.L_4b0ceb

  ; Code: .L_4b0e22:	 RIP: 4b0e22	 Bytes: 0
block_.L_4b0e22:

  ; Code: movl $0x0, -0x8a44(%rbp)	 RIP: 4b0e22	 Bytes: 10
  %loadMem_4b0e22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0e22 = call %struct.Memory* @routine_movl__0x0__MINUS0x8a44__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0e22)
  store %struct.Memory* %call_4b0e22, %struct.Memory** %MEMORY

  ; Code: .L_4b0e2c:	 RIP: 4b0e2c	 Bytes: 0
  br label %block_.L_4b0e2c
block_.L_4b0e2c:

  ; Code: movl -0x8a44(%rbp), %eax	 RIP: 4b0e2c	 Bytes: 6
  %loadMem_4b0e2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0e2c = call %struct.Memory* @routine_movl_MINUS0x8a44__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0e2c)
  store %struct.Memory* %call_4b0e2c, %struct.Memory** %MEMORY

  ; Code: movl -0x324(%rbp), %ecx	 RIP: 4b0e32	 Bytes: 6
  %loadMem_4b0e32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0e32 = call %struct.Memory* @routine_movl_MINUS0x324__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0e32)
  store %struct.Memory* %call_4b0e32, %struct.Memory** %MEMORY

  ; Code: addl $0x2, %ecx	 RIP: 4b0e38	 Bytes: 3
  %loadMem_4b0e38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0e38 = call %struct.Memory* @routine_addl__0x2___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0e38)
  store %struct.Memory* %call_4b0e38, %struct.Memory** %MEMORY

  ; Code: cmpl %ecx, %eax	 RIP: 4b0e3b	 Bytes: 2
  %loadMem_4b0e3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0e3b = call %struct.Memory* @routine_cmpl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0e3b)
  store %struct.Memory* %call_4b0e3b, %struct.Memory** %MEMORY

  ; Code: jge .L_4b0f6a	 RIP: 4b0e3d	 Bytes: 6
  %loadMem_4b0e3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0e3d = call %struct.Memory* @routine_jge_.L_4b0f6a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0e3d, i8* %BRANCH_TAKEN, i64 301, i64 6, i64 6)
  store %struct.Memory* %call_4b0e3d, %struct.Memory** %MEMORY

  %loadBr_4b0e3d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4b0e3d = icmp eq i8 %loadBr_4b0e3d, 1
  br i1 %cmpBr_4b0e3d, label %block_.L_4b0f6a, label %block_4b0e43

block_4b0e43:
  ; Code: movl $0x0, -0x24(%rbp)	 RIP: 4b0e43	 Bytes: 7
  %loadMem_4b0e43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0e43 = call %struct.Memory* @routine_movl__0x0__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0e43)
  store %struct.Memory* %call_4b0e43, %struct.Memory** %MEMORY

  ; Code: .L_4b0e4a:	 RIP: 4b0e4a	 Bytes: 0
  br label %block_.L_4b0e4a
block_.L_4b0e4a:

  ; Code: movl -0x24(%rbp), %eax	 RIP: 4b0e4a	 Bytes: 3
  %loadMem_4b0e4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0e4a = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0e4a)
  store %struct.Memory* %call_4b0e4a, %struct.Memory** %MEMORY

  ; Code: movslq -0x8a44(%rbp), %rcx	 RIP: 4b0e4d	 Bytes: 7
  %loadMem_4b0e4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0e4d = call %struct.Memory* @routine_movslq_MINUS0x8a44__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0e4d)
  store %struct.Memory* %call_4b0e4d, %struct.Memory** %MEMORY

  ; Code: cmpl 0x7247b0(,%rcx,4), %eax	 RIP: 4b0e54	 Bytes: 7
  %loadMem_4b0e54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0e54 = call %struct.Memory* @routine_cmpl_0x7247b0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0e54)
  store %struct.Memory* %call_4b0e54, %struct.Memory** %MEMORY

  ; Code: jge .L_4b0f51	 RIP: 4b0e5b	 Bytes: 6
  %loadMem_4b0e5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0e5b = call %struct.Memory* @routine_jge_.L_4b0f51(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0e5b, i8* %BRANCH_TAKEN, i64 246, i64 6, i64 6)
  store %struct.Memory* %call_4b0e5b, %struct.Memory** %MEMORY

  %loadBr_4b0e5b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4b0e5b = icmp eq i8 %loadBr_4b0e5b, 1
  br i1 %cmpBr_4b0e5b, label %block_.L_4b0f51, label %block_4b0e61

block_4b0e61:
  ; Code: movl $0x1, %eax	 RIP: 4b0e61	 Bytes: 5
  %loadMem_4b0e61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0e61 = call %struct.Memory* @routine_movl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0e61)
  store %struct.Memory* %call_4b0e61, %struct.Memory** %MEMORY

  ; Code: movl 0x70f6d0, %ecx	 RIP: 4b0e66	 Bytes: 7
  %loadMem_4b0e66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0e66 = call %struct.Memory* @routine_movl_0x70f6d0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0e66)
  store %struct.Memory* %call_4b0e66, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 4b0e6d	 Bytes: 2
  %loadMem_4b0e6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0e6d = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0e6d)
  store %struct.Memory* %call_4b0e6d, %struct.Memory** %MEMORY

  ; Code: shll %cl, %edx	 RIP: 4b0e6f	 Bytes: 2
  %loadMem_4b0e6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0e6f = call %struct.Memory* @routine_shll__cl___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0e6f)
  store %struct.Memory* %call_4b0e6f, %struct.Memory** %MEMORY

  ; Code: movq 0x6d4740, %rsi	 RIP: 4b0e71	 Bytes: 8
  %loadMem_4b0e71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0e71 = call %struct.Memory* @routine_movq_0x6d4740___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0e71)
  store %struct.Memory* %call_4b0e71, %struct.Memory** %MEMORY

  ; Code: movslq -0x8a44(%rbp), %rdi	 RIP: 4b0e79	 Bytes: 7
  %loadMem_4b0e79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0e79 = call %struct.Memory* @routine_movslq_MINUS0x8a44__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0e79)
  store %struct.Memory* %call_4b0e79, %struct.Memory** %MEMORY

  ; Code: movq (%rsi,%rdi,8), %rsi	 RIP: 4b0e80	 Bytes: 4
  %loadMem_4b0e80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0e80 = call %struct.Memory* @routine_movq___rsi__rdi_8____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0e80)
  store %struct.Memory* %call_4b0e80, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdi	 RIP: 4b0e84	 Bytes: 4
  %loadMem_4b0e84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0e84 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0e84)
  store %struct.Memory* %call_4b0e84, %struct.Memory** %MEMORY

  ; Code: movq (%rsi,%rdi,8), %rsi	 RIP: 4b0e88	 Bytes: 4
  %loadMem_4b0e88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0e88 = call %struct.Memory* @routine_movq___rsi__rdi_8____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0e88)
  store %struct.Memory* %call_4b0e88, %struct.Memory** %MEMORY

  ; Code: movl %edx, (%rsi)	 RIP: 4b0e8c	 Bytes: 2
  %loadMem_4b0e8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0e8c = call %struct.Memory* @routine_movl__edx____rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0e8c)
  store %struct.Memory* %call_4b0e8c, %struct.Memory** %MEMORY

  ; Code: movl 0x7242a0, %ecx	 RIP: 4b0e8e	 Bytes: 7
  %loadMem_4b0e8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0e8e = call %struct.Memory* @routine_movl_0x7242a0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0e8e)
  store %struct.Memory* %call_4b0e8e, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 4b0e95	 Bytes: 2
  %loadMem_4b0e95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0e95 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0e95)
  store %struct.Memory* %call_4b0e95, %struct.Memory** %MEMORY

  ; Code: shll %cl, %edx	 RIP: 4b0e97	 Bytes: 2
  %loadMem_4b0e97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0e97 = call %struct.Memory* @routine_shll__cl___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0e97)
  store %struct.Memory* %call_4b0e97, %struct.Memory** %MEMORY

  ; Code: movq 0x6d4740, %rsi	 RIP: 4b0e99	 Bytes: 8
  %loadMem_4b0e99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0e99 = call %struct.Memory* @routine_movq_0x6d4740___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0e99)
  store %struct.Memory* %call_4b0e99, %struct.Memory** %MEMORY

  ; Code: movslq -0x8a44(%rbp), %rdi	 RIP: 4b0ea1	 Bytes: 7
  %loadMem_4b0ea1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0ea1 = call %struct.Memory* @routine_movslq_MINUS0x8a44__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0ea1)
  store %struct.Memory* %call_4b0ea1, %struct.Memory** %MEMORY

  ; Code: movq (%rsi,%rdi,8), %rsi	 RIP: 4b0ea8	 Bytes: 4
  %loadMem_4b0ea8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0ea8 = call %struct.Memory* @routine_movq___rsi__rdi_8____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0ea8)
  store %struct.Memory* %call_4b0ea8, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdi	 RIP: 4b0eac	 Bytes: 4
  %loadMem_4b0eac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0eac = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0eac)
  store %struct.Memory* %call_4b0eac, %struct.Memory** %MEMORY

  ; Code: movq (%rsi,%rdi,8), %rsi	 RIP: 4b0eb0	 Bytes: 4
  %loadMem_4b0eb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0eb0 = call %struct.Memory* @routine_movq___rsi__rdi_8____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0eb0)
  store %struct.Memory* %call_4b0eb0, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0x4(%rsi)	 RIP: 4b0eb4	 Bytes: 3
  %loadMem_4b0eb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0eb4 = call %struct.Memory* @routine_movl__edx__0x4__rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0eb4)
  store %struct.Memory* %call_4b0eb4, %struct.Memory** %MEMORY

  ; Code: movl 0x7242a0, %ecx	 RIP: 4b0eb7	 Bytes: 7
  %loadMem_4b0eb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0eb7 = call %struct.Memory* @routine_movl_0x7242a0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0eb7)
  store %struct.Memory* %call_4b0eb7, %struct.Memory** %MEMORY

  ; Code: shll %cl, %eax	 RIP: 4b0ebe	 Bytes: 2
  %loadMem_4b0ebe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0ebe = call %struct.Memory* @routine_shll__cl___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0ebe)
  store %struct.Memory* %call_4b0ebe, %struct.Memory** %MEMORY

  ; Code: movq 0x6d4740, %rsi	 RIP: 4b0ec0	 Bytes: 8
  %loadMem_4b0ec0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0ec0 = call %struct.Memory* @routine_movq_0x6d4740___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0ec0)
  store %struct.Memory* %call_4b0ec0, %struct.Memory** %MEMORY

  ; Code: movslq -0x8a44(%rbp), %rdi	 RIP: 4b0ec8	 Bytes: 7
  %loadMem_4b0ec8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0ec8 = call %struct.Memory* @routine_movslq_MINUS0x8a44__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0ec8)
  store %struct.Memory* %call_4b0ec8, %struct.Memory** %MEMORY

  ; Code: movq (%rsi,%rdi,8), %rsi	 RIP: 4b0ecf	 Bytes: 4
  %loadMem_4b0ecf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0ecf = call %struct.Memory* @routine_movq___rsi__rdi_8____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0ecf)
  store %struct.Memory* %call_4b0ecf, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdi	 RIP: 4b0ed3	 Bytes: 4
  %loadMem_4b0ed3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0ed3 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0ed3)
  store %struct.Memory* %call_4b0ed3, %struct.Memory** %MEMORY

  ; Code: movq (%rsi,%rdi,8), %rsi	 RIP: 4b0ed7	 Bytes: 4
  %loadMem_4b0ed7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0ed7 = call %struct.Memory* @routine_movq___rsi__rdi_8____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0ed7)
  store %struct.Memory* %call_4b0ed7, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x8(%rsi)	 RIP: 4b0edb	 Bytes: 3
  %loadMem_4b0edb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0edb = call %struct.Memory* @routine_movl__eax__0x8__rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0edb)
  store %struct.Memory* %call_4b0edb, %struct.Memory** %MEMORY

  ; Code: movq 0x6f9728, %rsi	 RIP: 4b0ede	 Bytes: 8
  %loadMem_4b0ede = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0ede = call %struct.Memory* @routine_movq_0x6f9728___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0ede)
  store %struct.Memory* %call_4b0ede, %struct.Memory** %MEMORY

  ; Code: movslq -0x8a44(%rbp), %rdi	 RIP: 4b0ee6	 Bytes: 7
  %loadMem_4b0ee6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0ee6 = call %struct.Memory* @routine_movslq_MINUS0x8a44__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0ee6)
  store %struct.Memory* %call_4b0ee6, %struct.Memory** %MEMORY

  ; Code: movq (%rsi,%rdi,8), %rsi	 RIP: 4b0eed	 Bytes: 4
  %loadMem_4b0eed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0eed = call %struct.Memory* @routine_movq___rsi__rdi_8____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0eed)
  store %struct.Memory* %call_4b0eed, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdi	 RIP: 4b0ef1	 Bytes: 4
  %loadMem_4b0ef1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0ef1 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0ef1)
  store %struct.Memory* %call_4b0ef1, %struct.Memory** %MEMORY

  ; Code: movq (%rsi,%rdi,8), %rsi	 RIP: 4b0ef5	 Bytes: 4
  %loadMem_4b0ef5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0ef5 = call %struct.Memory* @routine_movq___rsi__rdi_8____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0ef5)
  store %struct.Memory* %call_4b0ef5, %struct.Memory** %MEMORY

  ; Code: movl $0x0, (%rsi)	 RIP: 4b0ef9	 Bytes: 6
  %loadMem_4b0ef9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0ef9 = call %struct.Memory* @routine_movl__0x0____rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0ef9)
  store %struct.Memory* %call_4b0ef9, %struct.Memory** %MEMORY

  ; Code: movq 0x6f9728, %rsi	 RIP: 4b0eff	 Bytes: 8
  %loadMem_4b0eff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0eff = call %struct.Memory* @routine_movq_0x6f9728___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0eff)
  store %struct.Memory* %call_4b0eff, %struct.Memory** %MEMORY

  ; Code: movslq -0x8a44(%rbp), %rdi	 RIP: 4b0f07	 Bytes: 7
  %loadMem_4b0f07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0f07 = call %struct.Memory* @routine_movslq_MINUS0x8a44__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0f07)
  store %struct.Memory* %call_4b0f07, %struct.Memory** %MEMORY

  ; Code: movq (%rsi,%rdi,8), %rsi	 RIP: 4b0f0e	 Bytes: 4
  %loadMem_4b0f0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0f0e = call %struct.Memory* @routine_movq___rsi__rdi_8____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0f0e)
  store %struct.Memory* %call_4b0f0e, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdi	 RIP: 4b0f12	 Bytes: 4
  %loadMem_4b0f12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0f12 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0f12)
  store %struct.Memory* %call_4b0f12, %struct.Memory** %MEMORY

  ; Code: movq (%rsi,%rdi,8), %rsi	 RIP: 4b0f16	 Bytes: 4
  %loadMem_4b0f16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0f16 = call %struct.Memory* @routine_movq___rsi__rdi_8____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0f16)
  store %struct.Memory* %call_4b0f16, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x4(%rsi)	 RIP: 4b0f1a	 Bytes: 7
  %loadMem_4b0f1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0f1a = call %struct.Memory* @routine_movl__0x0__0x4__rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0f1a)
  store %struct.Memory* %call_4b0f1a, %struct.Memory** %MEMORY

  ; Code: movq 0x6f9728, %rsi	 RIP: 4b0f21	 Bytes: 8
  %loadMem_4b0f21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0f21 = call %struct.Memory* @routine_movq_0x6f9728___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0f21)
  store %struct.Memory* %call_4b0f21, %struct.Memory** %MEMORY

  ; Code: movslq -0x8a44(%rbp), %rdi	 RIP: 4b0f29	 Bytes: 7
  %loadMem_4b0f29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0f29 = call %struct.Memory* @routine_movslq_MINUS0x8a44__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0f29)
  store %struct.Memory* %call_4b0f29, %struct.Memory** %MEMORY

  ; Code: movq (%rsi,%rdi,8), %rsi	 RIP: 4b0f30	 Bytes: 4
  %loadMem_4b0f30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0f30 = call %struct.Memory* @routine_movq___rsi__rdi_8____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0f30)
  store %struct.Memory* %call_4b0f30, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdi	 RIP: 4b0f34	 Bytes: 4
  %loadMem_4b0f34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0f34 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0f34)
  store %struct.Memory* %call_4b0f34, %struct.Memory** %MEMORY

  ; Code: movq (%rsi,%rdi,8), %rsi	 RIP: 4b0f38	 Bytes: 4
  %loadMem_4b0f38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0f38 = call %struct.Memory* @routine_movq___rsi__rdi_8____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0f38)
  store %struct.Memory* %call_4b0f38, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x8(%rsi)	 RIP: 4b0f3c	 Bytes: 7
  %loadMem_4b0f3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0f3c = call %struct.Memory* @routine_movl__0x0__0x8__rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0f3c)
  store %struct.Memory* %call_4b0f3c, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %eax	 RIP: 4b0f43	 Bytes: 3
  %loadMem_4b0f43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0f43 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0f43)
  store %struct.Memory* %call_4b0f43, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4b0f46	 Bytes: 3
  %loadMem_4b0f46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0f46 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0f46)
  store %struct.Memory* %call_4b0f46, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x24(%rbp)	 RIP: 4b0f49	 Bytes: 3
  %loadMem_4b0f49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0f49 = call %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0f49)
  store %struct.Memory* %call_4b0f49, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4b0e4a	 RIP: 4b0f4c	 Bytes: 5
  %loadMem_4b0f4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0f4c = call %struct.Memory* @routine_jmpq_.L_4b0e4a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0f4c, i64 -258, i64 5)
  store %struct.Memory* %call_4b0f4c, %struct.Memory** %MEMORY

  br label %block_.L_4b0e4a

  ; Code: .L_4b0f51:	 RIP: 4b0f51	 Bytes: 0
block_.L_4b0f51:

  ; Code: jmpq .L_4b0f56	 RIP: 4b0f51	 Bytes: 5
  %loadMem_4b0f51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0f51 = call %struct.Memory* @routine_jmpq_.L_4b0f56(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0f51, i64 5, i64 5)
  store %struct.Memory* %call_4b0f51, %struct.Memory** %MEMORY

  br label %block_.L_4b0f56

  ; Code: .L_4b0f56:	 RIP: 4b0f56	 Bytes: 0
block_.L_4b0f56:

  ; Code: movl -0x8a44(%rbp), %eax	 RIP: 4b0f56	 Bytes: 6
  %loadMem_4b0f56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0f56 = call %struct.Memory* @routine_movl_MINUS0x8a44__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0f56)
  store %struct.Memory* %call_4b0f56, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4b0f5c	 Bytes: 3
  %loadMem_4b0f5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0f5c = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0f5c)
  store %struct.Memory* %call_4b0f5c, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x8a44(%rbp)	 RIP: 4b0f5f	 Bytes: 6
  %loadMem_4b0f5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0f5f = call %struct.Memory* @routine_movl__eax__MINUS0x8a44__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0f5f)
  store %struct.Memory* %call_4b0f5f, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4b0e2c	 RIP: 4b0f65	 Bytes: 5
  %loadMem_4b0f65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0f65 = call %struct.Memory* @routine_jmpq_.L_4b0e2c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0f65, i64 -313, i64 5)
  store %struct.Memory* %call_4b0f65, %struct.Memory** %MEMORY

  br label %block_.L_4b0e2c

  ; Code: .L_4b0f6a:	 RIP: 4b0f6a	 Bytes: 0
block_.L_4b0f6a:

  ; Code: jmpq .L_4b1681	 RIP: 4b0f6a	 Bytes: 5
  %loadMem_4b0f6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0f6a = call %struct.Memory* @routine_jmpq_.L_4b1681(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0f6a, i64 1815, i64 5)
  store %struct.Memory* %call_4b0f6a, %struct.Memory** %MEMORY

  br label %block_.L_4b1681

  ; Code: .L_4b0f6f:	 RIP: 4b0f6f	 Bytes: 0
block_.L_4b0f6f:

  ; Code: movl $0x0, -0x8(%rbp)	 RIP: 4b0f6f	 Bytes: 7
  %loadMem_4b0f6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0f6f = call %struct.Memory* @routine_movl__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0f6f)
  store %struct.Memory* %call_4b0f6f, %struct.Memory** %MEMORY

  ; Code: .L_4b0f76:	 RIP: 4b0f76	 Bytes: 0
  br label %block_.L_4b0f76
block_.L_4b0f76:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 4b0f76	 Bytes: 3
  %loadMem_4b0f76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0f76 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0f76)
  store %struct.Memory* %call_4b0f76, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 4b0f79	 Bytes: 8
  %loadMem_4b0f79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0f79 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0f79)
  store %struct.Memory* %call_4b0f79, %struct.Memory** %MEMORY

  ; Code: cmpl 0x3c(%rcx), %eax	 RIP: 4b0f81	 Bytes: 3
  %loadMem_4b0f81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0f81 = call %struct.Memory* @routine_cmpl_0x3c__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0f81)
  store %struct.Memory* %call_4b0f81, %struct.Memory** %MEMORY

  ; Code: jge .L_4b0feb	 RIP: 4b0f84	 Bytes: 6
  %loadMem_4b0f84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0f84 = call %struct.Memory* @routine_jge_.L_4b0feb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0f84, i8* %BRANCH_TAKEN, i64 103, i64 6, i64 6)
  store %struct.Memory* %call_4b0f84, %struct.Memory** %MEMORY

  %loadBr_4b0f84 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4b0f84 = icmp eq i8 %loadBr_4b0f84, 1
  br i1 %cmpBr_4b0f84, label %block_.L_4b0feb, label %block_4b0f8a

block_4b0f8a:
  ; Code: movl $0x0, -0xc(%rbp)	 RIP: 4b0f8a	 Bytes: 7
  %loadMem_4b0f8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0f8a = call %struct.Memory* @routine_movl__0x0__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0f8a)
  store %struct.Memory* %call_4b0f8a, %struct.Memory** %MEMORY

  ; Code: .L_4b0f91:	 RIP: 4b0f91	 Bytes: 0
  br label %block_.L_4b0f91
block_.L_4b0f91:

  ; Code: movl -0xc(%rbp), %eax	 RIP: 4b0f91	 Bytes: 3
  %loadMem_4b0f91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0f91 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0f91)
  store %struct.Memory* %call_4b0f91, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 4b0f94	 Bytes: 8
  %loadMem_4b0f94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0f94 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0f94)
  store %struct.Memory* %call_4b0f94, %struct.Memory** %MEMORY

  ; Code: cmpl 0x34(%rcx), %eax	 RIP: 4b0f9c	 Bytes: 3
  %loadMem_4b0f9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0f9c = call %struct.Memory* @routine_cmpl_0x34__rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0f9c)
  store %struct.Memory* %call_4b0f9c, %struct.Memory** %MEMORY

  ; Code: jge .L_4b0fd8	 RIP: 4b0f9f	 Bytes: 6
  %loadMem_4b0f9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0f9f = call %struct.Memory* @routine_jge_.L_4b0fd8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0f9f, i8* %BRANCH_TAKEN, i64 57, i64 6, i64 6)
  store %struct.Memory* %call_4b0f9f, %struct.Memory** %MEMORY

  %loadBr_4b0f9f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4b0f9f = icmp eq i8 %loadBr_4b0f9f, 1
  br i1 %cmpBr_4b0f9f, label %block_.L_4b0fd8, label %block_4b0fa5

block_4b0fa5:
  ; Code: movq 0x27546c(%rip), %rax	 RIP: 4b0fa5	 Bytes: 7
  %loadMem_4b0fa5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0fa5 = call %struct.Memory* @routine_movq_0x27546c__rip____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0fa5)
  store %struct.Memory* %call_4b0fa5, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rcx	 RIP: 4b0fac	 Bytes: 4
  %loadMem_4b0fac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0fac = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0fac)
  store %struct.Memory* %call_4b0fac, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 4b0fb0	 Bytes: 4
  %loadMem_4b0fb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0fb0 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0fb0)
  store %struct.Memory* %call_4b0fb0, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rcx	 RIP: 4b0fb4	 Bytes: 4
  %loadMem_4b0fb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0fb4 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0fb4)
  store %struct.Memory* %call_4b0fb4, %struct.Memory** %MEMORY

  ; Code: movzwl (%rax,%rcx,2), %edx	 RIP: 4b0fb8	 Bytes: 4
  %loadMem_4b0fb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0fb8 = call %struct.Memory* @routine_movzwl___rax__rcx_2____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0fb8)
  store %struct.Memory* %call_4b0fb8, %struct.Memory** %MEMORY

  ; Code: cvtsi2sdl %edx, %xmm0	 RIP: 4b0fbc	 Bytes: 4
  %loadMem_4b0fbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0fbc = call %struct.Memory* @routine_cvtsi2sdl__edx___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0fbc)
  store %struct.Memory* %call_4b0fbc, %struct.Memory** %MEMORY

  ; Code: addsd -0x20(%rbp), %xmm0	 RIP: 4b0fc0	 Bytes: 5
  %loadMem_4b0fc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0fc0 = call %struct.Memory* @routine_addsd_MINUS0x20__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0fc0)
  store %struct.Memory* %call_4b0fc0, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x20(%rbp)	 RIP: 4b0fc5	 Bytes: 5
  %loadMem_4b0fc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0fc5 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0fc5)
  store %struct.Memory* %call_4b0fc5, %struct.Memory** %MEMORY

  ; Code: movl -0xc(%rbp), %eax	 RIP: 4b0fca	 Bytes: 3
  %loadMem_4b0fca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0fca = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0fca)
  store %struct.Memory* %call_4b0fca, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4b0fcd	 Bytes: 3
  %loadMem_4b0fcd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0fcd = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0fcd)
  store %struct.Memory* %call_4b0fcd, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xc(%rbp)	 RIP: 4b0fd0	 Bytes: 3
  %loadMem_4b0fd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0fd0 = call %struct.Memory* @routine_movl__eax__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0fd0)
  store %struct.Memory* %call_4b0fd0, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4b0f91	 RIP: 4b0fd3	 Bytes: 5
  %loadMem_4b0fd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0fd3 = call %struct.Memory* @routine_jmpq_.L_4b0f91(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0fd3, i64 -66, i64 5)
  store %struct.Memory* %call_4b0fd3, %struct.Memory** %MEMORY

  br label %block_.L_4b0f91

  ; Code: .L_4b0fd8:	 RIP: 4b0fd8	 Bytes: 0
block_.L_4b0fd8:

  ; Code: jmpq .L_4b0fdd	 RIP: 4b0fd8	 Bytes: 5
  %loadMem_4b0fd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0fd8 = call %struct.Memory* @routine_jmpq_.L_4b0fdd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0fd8, i64 5, i64 5)
  store %struct.Memory* %call_4b0fd8, %struct.Memory** %MEMORY

  br label %block_.L_4b0fdd

  ; Code: .L_4b0fdd:	 RIP: 4b0fdd	 Bytes: 0
block_.L_4b0fdd:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 4b0fdd	 Bytes: 3
  %loadMem_4b0fdd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0fdd = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0fdd)
  store %struct.Memory* %call_4b0fdd, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4b0fe0	 Bytes: 3
  %loadMem_4b0fe0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0fe0 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0fe0)
  store %struct.Memory* %call_4b0fe0, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x8(%rbp)	 RIP: 4b0fe3	 Bytes: 3
  %loadMem_4b0fe3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0fe3 = call %struct.Memory* @routine_movl__eax__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0fe3)
  store %struct.Memory* %call_4b0fe3, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4b0f76	 RIP: 4b0fe6	 Bytes: 5
  %loadMem_4b0fe6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0fe6 = call %struct.Memory* @routine_jmpq_.L_4b0f76(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0fe6, i64 -112, i64 5)
  store %struct.Memory* %call_4b0fe6, %struct.Memory** %MEMORY

  br label %block_.L_4b0f76

  ; Code: .L_4b0feb:	 RIP: 4b0feb	 Bytes: 0
block_.L_4b0feb:

  ; Code: movl $0x0, -0x8a44(%rbp)	 RIP: 4b0feb	 Bytes: 10
  %loadMem_4b0feb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0feb = call %struct.Memory* @routine_movl__0x0__MINUS0x8a44__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0feb)
  store %struct.Memory* %call_4b0feb, %struct.Memory** %MEMORY

  ; Code: .L_4b0ff5:	 RIP: 4b0ff5	 Bytes: 0
  br label %block_.L_4b0ff5
block_.L_4b0ff5:

  ; Code: movl -0x8a44(%rbp), %eax	 RIP: 4b0ff5	 Bytes: 6
  %loadMem_4b0ff5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0ff5 = call %struct.Memory* @routine_movl_MINUS0x8a44__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0ff5)
  store %struct.Memory* %call_4b0ff5, %struct.Memory** %MEMORY

  ; Code: movl -0x324(%rbp), %ecx	 RIP: 4b0ffb	 Bytes: 6
  %loadMem_4b0ffb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b0ffb = call %struct.Memory* @routine_movl_MINUS0x324__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b0ffb)
  store %struct.Memory* %call_4b0ffb, %struct.Memory** %MEMORY

  ; Code: addl $0x2, %ecx	 RIP: 4b1001	 Bytes: 3
  %loadMem_4b1001 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1001 = call %struct.Memory* @routine_addl__0x2___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1001)
  store %struct.Memory* %call_4b1001, %struct.Memory** %MEMORY

  ; Code: cmpl %ecx, %eax	 RIP: 4b1004	 Bytes: 2
  %loadMem_4b1004 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1004 = call %struct.Memory* @routine_cmpl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1004)
  store %struct.Memory* %call_4b1004, %struct.Memory** %MEMORY

  ; Code: jge .L_4b12d1	 RIP: 4b1006	 Bytes: 6
  %loadMem_4b1006 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1006 = call %struct.Memory* @routine_jge_.L_4b12d1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1006, i8* %BRANCH_TAKEN, i64 715, i64 6, i64 6)
  store %struct.Memory* %call_4b1006, %struct.Memory** %MEMORY

  %loadBr_4b1006 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4b1006 = icmp eq i8 %loadBr_4b1006, 1
  br i1 %cmpBr_4b1006, label %block_.L_4b12d1, label %block_4b100c

block_4b100c:
  ; Code: movl $0x0, -0x10(%rbp)	 RIP: 4b100c	 Bytes: 7
  %loadMem_4b100c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b100c = call %struct.Memory* @routine_movl__0x0__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b100c)
  store %struct.Memory* %call_4b100c, %struct.Memory** %MEMORY

  ; Code: .L_4b1013:	 RIP: 4b1013	 Bytes: 0
  br label %block_.L_4b1013
block_.L_4b1013:

  ; Code: movl -0x10(%rbp), %eax	 RIP: 4b1013	 Bytes: 3
  %loadMem_4b1013 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1013 = call %struct.Memory* @routine_movl_MINUS0x10__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1013)
  store %struct.Memory* %call_4b1013, %struct.Memory** %MEMORY

  ; Code: movslq -0x8a44(%rbp), %rcx	 RIP: 4b1016	 Bytes: 7
  %loadMem_4b1016 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1016 = call %struct.Memory* @routine_movslq_MINUS0x8a44__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1016)
  store %struct.Memory* %call_4b1016, %struct.Memory** %MEMORY

  ; Code: cmpl 0x7247b0(,%rcx,4), %eax	 RIP: 4b101d	 Bytes: 7
  %loadMem_4b101d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b101d = call %struct.Memory* @routine_cmpl_0x7247b0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b101d)
  store %struct.Memory* %call_4b101d, %struct.Memory** %MEMORY

  ; Code: jge .L_4b12b8	 RIP: 4b1024	 Bytes: 6
  %loadMem_4b1024 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1024 = call %struct.Memory* @routine_jge_.L_4b12b8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1024, i8* %BRANCH_TAKEN, i64 660, i64 6, i64 6)
  store %struct.Memory* %call_4b1024, %struct.Memory** %MEMORY

  %loadBr_4b1024 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4b1024 = icmp eq i8 %loadBr_4b1024, 1
  br i1 %cmpBr_4b1024, label %block_.L_4b12b8, label %block_4b102a

block_4b102a:
  ; Code: xorps %xmm0, %xmm0	 RIP: 4b102a	 Bytes: 3
  %loadMem_4b102a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b102a = call %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b102a)
  store %struct.Memory* %call_4b102a, %struct.Memory** %MEMORY

  ; Code: leaq -0x300(%rbp), %rax	 RIP: 4b102d	 Bytes: 7
  %loadMem_4b102d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b102d = call %struct.Memory* @routine_leaq_MINUS0x300__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b102d)
  store %struct.Memory* %call_4b102d, %struct.Memory** %MEMORY

  ; Code: movslq -0x8a44(%rbp), %rcx	 RIP: 4b1034	 Bytes: 7
  %loadMem_4b1034 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1034 = call %struct.Memory* @routine_movslq_MINUS0x8a44__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1034)
  store %struct.Memory* %call_4b1034, %struct.Memory** %MEMORY

  ; Code: imulq $0x78, %rcx, %rcx	 RIP: 4b103b	 Bytes: 4
  %loadMem_4b103b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b103b = call %struct.Memory* @routine_imulq__0x78___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b103b)
  store %struct.Memory* %call_4b103b, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4b103f	 Bytes: 3
  %loadMem_4b103f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b103f = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b103f)
  store %struct.Memory* %call_4b103f, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rcx	 RIP: 4b1042	 Bytes: 4
  %loadMem_4b1042 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1042 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1042)
  store %struct.Memory* %call_4b1042, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rcx,8)	 RIP: 4b1046	 Bytes: 5
  %loadMem_4b1046 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1046 = call %struct.Memory* @routine_movsd__xmm0____rax__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1046)
  store %struct.Memory* %call_4b1046, %struct.Memory** %MEMORY

  ; Code: movslq -0x8a44(%rbp), %rax	 RIP: 4b104b	 Bytes: 7
  %loadMem_4b104b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b104b = call %struct.Memory* @routine_movslq_MINUS0x8a44__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b104b)
  store %struct.Memory* %call_4b104b, %struct.Memory** %MEMORY

  ; Code: movq 0x722b20(,%rax,8), %rax	 RIP: 4b1052	 Bytes: 8
  %loadMem_4b1052 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1052 = call %struct.Memory* @routine_movq_0x722b20___rax_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1052)
  store %struct.Memory* %call_4b1052, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rcx	 RIP: 4b105a	 Bytes: 4
  %loadMem_4b105a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b105a = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b105a)
  store %struct.Memory* %call_4b105a, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 4b105e	 Bytes: 4
  %loadMem_4b105e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b105e = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b105e)
  store %struct.Memory* %call_4b105e, %struct.Memory** %MEMORY

  ; Code: movq 0x1920(%rax), %rax	 RIP: 4b1062	 Bytes: 7
  %loadMem_4b1062 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1062 = call %struct.Memory* @routine_movq_0x1920__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1062)
  store %struct.Memory* %call_4b1062, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x310(%rbp)	 RIP: 4b1069	 Bytes: 7
  %loadMem_4b1069 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1069 = call %struct.Memory* @routine_movq__rax__MINUS0x310__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1069)
  store %struct.Memory* %call_4b1069, %struct.Memory** %MEMORY

  ; Code: movslq -0x8a44(%rbp), %rax	 RIP: 4b1070	 Bytes: 7
  %loadMem_4b1070 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1070 = call %struct.Memory* @routine_movslq_MINUS0x8a44__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1070)
  store %struct.Memory* %call_4b1070, %struct.Memory** %MEMORY

  ; Code: movq 0x722b20(,%rax,8), %rax	 RIP: 4b1077	 Bytes: 8
  %loadMem_4b1077 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1077 = call %struct.Memory* @routine_movq_0x722b20___rax_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1077)
  store %struct.Memory* %call_4b1077, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rcx	 RIP: 4b107f	 Bytes: 4
  %loadMem_4b107f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b107f = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b107f)
  store %struct.Memory* %call_4b107f, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 4b1083	 Bytes: 4
  %loadMem_4b1083 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1083 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1083)
  store %struct.Memory* %call_4b1083, %struct.Memory** %MEMORY

  ; Code: movq 0x1928(%rax), %rax	 RIP: 4b1087	 Bytes: 7
  %loadMem_4b1087 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1087 = call %struct.Memory* @routine_movq_0x1928__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1087)
  store %struct.Memory* %call_4b1087, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x318(%rbp)	 RIP: 4b108e	 Bytes: 7
  %loadMem_4b108e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b108e = call %struct.Memory* @routine_movq__rax__MINUS0x318__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b108e)
  store %struct.Memory* %call_4b108e, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x8(%rbp)	 RIP: 4b1095	 Bytes: 7
  %loadMem_4b1095 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1095 = call %struct.Memory* @routine_movl__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1095)
  store %struct.Memory* %call_4b1095, %struct.Memory** %MEMORY

  ; Code: .L_4b109c:	 RIP: 4b109c	 Bytes: 0
  br label %block_.L_4b109c
block_.L_4b109c:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 4b109c	 Bytes: 3
  %loadMem_4b109c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b109c = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b109c)
  store %struct.Memory* %call_4b109c, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 4b109f	 Bytes: 8
  %loadMem_4b109f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b109f = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b109f)
  store %struct.Memory* %call_4b109f, %struct.Memory** %MEMORY

  ; Code: movl 0x3c(%rcx), %edx	 RIP: 4b10a7	 Bytes: 3
  %loadMem_4b10a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b10a7 = call %struct.Memory* @routine_movl_0x3c__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b10a7)
  store %struct.Memory* %call_4b10a7, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 4b10aa	 Bytes: 8
  %loadMem_4b10aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b10aa = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b10aa)
  store %struct.Memory* %call_4b10aa, %struct.Memory** %MEMORY

  ; Code: imull 0x34(%rcx), %edx	 RIP: 4b10b2	 Bytes: 4
  %loadMem_4b10b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b10b2 = call %struct.Memory* @routine_imull_0x34__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b10b2)
  store %struct.Memory* %call_4b10b2, %struct.Memory** %MEMORY

  ; Code: cmpl %edx, %eax	 RIP: 4b10b6	 Bytes: 2
  %loadMem_4b10b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b10b6 = call %struct.Memory* @routine_cmpl__edx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b10b6)
  store %struct.Memory* %call_4b10b6, %struct.Memory** %MEMORY

  ; Code: jge .L_4b1102	 RIP: 4b10b8	 Bytes: 6
  %loadMem_4b10b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b10b8 = call %struct.Memory* @routine_jge_.L_4b1102(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b10b8, i8* %BRANCH_TAKEN, i64 74, i64 6, i64 6)
  store %struct.Memory* %call_4b10b8, %struct.Memory** %MEMORY

  %loadBr_4b10b8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4b10b8 = icmp eq i8 %loadBr_4b10b8, 1
  br i1 %cmpBr_4b10b8, label %block_.L_4b1102, label %block_4b10be

block_4b10be:
  ; Code: leaq -0x300(%rbp), %rax	 RIP: 4b10be	 Bytes: 7
  %loadMem_4b10be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b10be = call %struct.Memory* @routine_leaq_MINUS0x300__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b10be)
  store %struct.Memory* %call_4b10be, %struct.Memory** %MEMORY

  ; Code: movq -0x310(%rbp), %rcx	 RIP: 4b10c5	 Bytes: 7
  %loadMem_4b10c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b10c5 = call %struct.Memory* @routine_movq_MINUS0x310__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b10c5)
  store %struct.Memory* %call_4b10c5, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdx	 RIP: 4b10cc	 Bytes: 4
  %loadMem_4b10cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b10cc = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b10cc)
  store %struct.Memory* %call_4b10cc, %struct.Memory** %MEMORY

  ; Code: movzwl (%rcx,%rdx,2), %esi	 RIP: 4b10d0	 Bytes: 4
  %loadMem_4b10d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b10d0 = call %struct.Memory* @routine_movzwl___rcx__rdx_2____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b10d0)
  store %struct.Memory* %call_4b10d0, %struct.Memory** %MEMORY

  ; Code: cvtsi2sdl %esi, %xmm0	 RIP: 4b10d4	 Bytes: 4
  %loadMem_4b10d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b10d4 = call %struct.Memory* @routine_cvtsi2sdl__esi___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b10d4)
  store %struct.Memory* %call_4b10d4, %struct.Memory** %MEMORY

  ; Code: movslq -0x8a44(%rbp), %rcx	 RIP: 4b10d8	 Bytes: 7
  %loadMem_4b10d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b10d8 = call %struct.Memory* @routine_movslq_MINUS0x8a44__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b10d8)
  store %struct.Memory* %call_4b10d8, %struct.Memory** %MEMORY

  ; Code: imulq $0x78, %rcx, %rcx	 RIP: 4b10df	 Bytes: 4
  %loadMem_4b10df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b10df = call %struct.Memory* @routine_imulq__0x78___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b10df)
  store %struct.Memory* %call_4b10df, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4b10e3	 Bytes: 3
  %loadMem_4b10e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b10e3 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b10e3)
  store %struct.Memory* %call_4b10e3, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rcx	 RIP: 4b10e6	 Bytes: 4
  %loadMem_4b10e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b10e6 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b10e6)
  store %struct.Memory* %call_4b10e6, %struct.Memory** %MEMORY

  ; Code: addsd (%rax,%rcx,8), %xmm0	 RIP: 4b10ea	 Bytes: 5
  %loadMem_4b10ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b10ea = call %struct.Memory* @routine_addsd___rax__rcx_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b10ea)
  store %struct.Memory* %call_4b10ea, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rcx,8)	 RIP: 4b10ef	 Bytes: 5
  %loadMem_4b10ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b10ef = call %struct.Memory* @routine_movsd__xmm0____rax__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b10ef)
  store %struct.Memory* %call_4b10ef, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %eax	 RIP: 4b10f4	 Bytes: 3
  %loadMem_4b10f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b10f4 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b10f4)
  store %struct.Memory* %call_4b10f4, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4b10f7	 Bytes: 3
  %loadMem_4b10f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b10f7 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b10f7)
  store %struct.Memory* %call_4b10f7, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x8(%rbp)	 RIP: 4b10fa	 Bytes: 3
  %loadMem_4b10fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b10fa = call %struct.Memory* @routine_movl__eax__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b10fa)
  store %struct.Memory* %call_4b10fa, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4b109c	 RIP: 4b10fd	 Bytes: 5
  %loadMem_4b10fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b10fd = call %struct.Memory* @routine_jmpq_.L_4b109c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b10fd, i64 -97, i64 5)
  store %struct.Memory* %call_4b10fd, %struct.Memory** %MEMORY

  br label %block_.L_4b109c

  ; Code: .L_4b1102:	 RIP: 4b1102	 Bytes: 0
block_.L_4b1102:

  ; Code: xorps %xmm0, %xmm0	 RIP: 4b1102	 Bytes: 3
  %loadMem_4b1102 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1102 = call %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1102)
  store %struct.Memory* %call_4b1102, %struct.Memory** %MEMORY

  ; Code: leaq -0x300(%rbp), %rax	 RIP: 4b1105	 Bytes: 7
  %loadMem_4b1105 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1105 = call %struct.Memory* @routine_leaq_MINUS0x300__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1105)
  store %struct.Memory* %call_4b1105, %struct.Memory** %MEMORY

  ; Code: movslq -0x8a44(%rbp), %rcx	 RIP: 4b110c	 Bytes: 7
  %loadMem_4b110c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b110c = call %struct.Memory* @routine_movslq_MINUS0x8a44__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b110c)
  store %struct.Memory* %call_4b110c, %struct.Memory** %MEMORY

  ; Code: imulq $0x78, %rcx, %rcx	 RIP: 4b1113	 Bytes: 4
  %loadMem_4b1113 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1113 = call %struct.Memory* @routine_imulq__0x78___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1113)
  store %struct.Memory* %call_4b1113, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4b1117	 Bytes: 3
  %loadMem_4b1117 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1117 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1117)
  store %struct.Memory* %call_4b1117, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rcx	 RIP: 4b111a	 Bytes: 4
  %loadMem_4b111a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b111a = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b111a)
  store %struct.Memory* %call_4b111a, %struct.Memory** %MEMORY

  ; Code: movsd (%rax,%rcx,8), %xmm1	 RIP: 4b111e	 Bytes: 5
  %loadMem_4b111e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b111e = call %struct.Memory* @routine_movsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b111e)
  store %struct.Memory* %call_4b111e, %struct.Memory** %MEMORY

  ; Code: ucomisd %xmm0, %xmm1	 RIP: 4b1123	 Bytes: 4
  %loadMem_4b1123 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1123 = call %struct.Memory* @routine_ucomisd__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1123)
  store %struct.Memory* %call_4b1123, %struct.Memory** %MEMORY

  ; Code: jne .L_4b1138	 RIP: 4b1127	 Bytes: 6
  %loadMem_4b1127 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1127 = call %struct.Memory* @routine_jne_.L_4b1138(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1127, i8* %BRANCH_TAKEN, i64 17, i64 6, i64 6)
  store %struct.Memory* %call_4b1127, %struct.Memory** %MEMORY

  %loadBr_4b1127 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4b1127 = icmp eq i8 %loadBr_4b1127, 1
  br i1 %cmpBr_4b1127, label %block_.L_4b1138, label %block_4b112d

block_4b112d:
  ; Code: jp .L_4b1138	 RIP: 4b112d	 Bytes: 6
  %loadMem_4b112d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b112d = call %struct.Memory* @routine_jp_.L_4b1138(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b112d, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_4b112d, %struct.Memory** %MEMORY

  %loadBr_4b112d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4b112d = icmp eq i8 %loadBr_4b112d, 1
  br i1 %cmpBr_4b112d, label %block_.L_4b1138, label %block_4b1133

block_4b1133:
  ; Code: jmpq .L_4b117e	 RIP: 4b1133	 Bytes: 5
  %loadMem_4b1133 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1133 = call %struct.Memory* @routine_jmpq_.L_4b117e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1133, i64 75, i64 5)
  store %struct.Memory* %call_4b1133, %struct.Memory** %MEMORY

  br label %block_.L_4b117e

  ; Code: .L_4b1138:	 RIP: 4b1138	 Bytes: 0
block_.L_4b1138:

  ; Code: movsd 0x748(%rip), %xmm0	 RIP: 4b1138	 Bytes: 8
  %loadMem_4b1138 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1138 = call %struct.Memory* @routine_movsd_0x748__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1138)
  store %struct.Memory* %call_4b1138, %struct.Memory** %MEMORY

  ; Code: leaq -0x300(%rbp), %rax	 RIP: 4b1140	 Bytes: 7
  %loadMem_4b1140 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1140 = call %struct.Memory* @routine_leaq_MINUS0x300__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1140)
  store %struct.Memory* %call_4b1140, %struct.Memory** %MEMORY

  ; Code: cvtsi2sdl -0x31c(%rbp), %xmm1	 RIP: 4b1147	 Bytes: 8
  %loadMem_4b1147 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1147 = call %struct.Memory* @routine_cvtsi2sdl_MINUS0x31c__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1147)
  store %struct.Memory* %call_4b1147, %struct.Memory** %MEMORY

  ; Code: mulsd -0x20(%rbp), %xmm1	 RIP: 4b114f	 Bytes: 5
  %loadMem_4b114f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b114f = call %struct.Memory* @routine_mulsd_MINUS0x20__rbp____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b114f)
  store %struct.Memory* %call_4b114f, %struct.Memory** %MEMORY

  ; Code: movslq -0x8a44(%rbp), %rcx	 RIP: 4b1154	 Bytes: 7
  %loadMem_4b1154 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1154 = call %struct.Memory* @routine_movslq_MINUS0x8a44__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1154)
  store %struct.Memory* %call_4b1154, %struct.Memory** %MEMORY

  ; Code: imulq $0x78, %rcx, %rcx	 RIP: 4b115b	 Bytes: 4
  %loadMem_4b115b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b115b = call %struct.Memory* @routine_imulq__0x78___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b115b)
  store %struct.Memory* %call_4b115b, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4b115f	 Bytes: 3
  %loadMem_4b115f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b115f = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b115f)
  store %struct.Memory* %call_4b115f, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rcx	 RIP: 4b1162	 Bytes: 4
  %loadMem_4b1162 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1162 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1162)
  store %struct.Memory* %call_4b1162, %struct.Memory** %MEMORY

  ; Code: divsd (%rax,%rcx,8), %xmm1	 RIP: 4b1166	 Bytes: 5
  %loadMem_4b1166 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1166 = call %struct.Memory* @routine_divsd___rax__rcx_8____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1166)
  store %struct.Memory* %call_4b1166, %struct.Memory** %MEMORY

  ; Code: addsd %xmm0, %xmm1	 RIP: 4b116b	 Bytes: 4
  %loadMem_4b116b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b116b = call %struct.Memory* @routine_addsd__xmm0___xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b116b)
  store %struct.Memory* %call_4b116b, %struct.Memory** %MEMORY

  ; Code: cvttsd2si %xmm1, %edx	 RIP: 4b116f	 Bytes: 4
  %loadMem_4b116f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b116f = call %struct.Memory* @routine_cvttsd2si__xmm1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b116f)
  store %struct.Memory* %call_4b116f, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x8a48(%rbp)	 RIP: 4b1173	 Bytes: 6
  %loadMem_4b1173 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1173 = call %struct.Memory* @routine_movl__edx__MINUS0x8a48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1173)
  store %struct.Memory* %call_4b1173, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4b118a	 RIP: 4b1179	 Bytes: 5
  %loadMem_4b1179 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1179 = call %struct.Memory* @routine_jmpq_.L_4b118a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1179, i64 17, i64 5)
  store %struct.Memory* %call_4b1179, %struct.Memory** %MEMORY

  br label %block_.L_4b118a

  ; Code: .L_4b117e:	 RIP: 4b117e	 Bytes: 0
block_.L_4b117e:

  ; Code: movl -0x31c(%rbp), %eax	 RIP: 4b117e	 Bytes: 6
  %loadMem_4b117e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b117e = call %struct.Memory* @routine_movl_MINUS0x31c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b117e)
  store %struct.Memory* %call_4b117e, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x8a48(%rbp)	 RIP: 4b1184	 Bytes: 6
  %loadMem_4b1184 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1184 = call %struct.Memory* @routine_movl__eax__MINUS0x8a48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1184)
  store %struct.Memory* %call_4b1184, %struct.Memory** %MEMORY

  ; Code: .L_4b118a:	 RIP: 4b118a	 Bytes: 0
  br label %block_.L_4b118a
block_.L_4b118a:

  ; Code: cmpl $0xffffffc0, -0x8a48(%rbp)	 RIP: 4b118a	 Bytes: 7
  %loadMem_4b118a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b118a = call %struct.Memory* @routine_cmpl__0xffffffc0__MINUS0x8a48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b118a)
  store %struct.Memory* %call_4b118a, %struct.Memory** %MEMORY

  ; Code: jl .L_4b11a4	 RIP: 4b1191	 Bytes: 6
  %loadMem_4b1191 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1191 = call %struct.Memory* @routine_jl_.L_4b11a4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1191, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_4b1191, %struct.Memory** %MEMORY

  %loadBr_4b1191 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4b1191 = icmp eq i8 %loadBr_4b1191, 1
  br i1 %cmpBr_4b1191, label %block_.L_4b11a4, label %block_4b1197

block_4b1197:
  ; Code: cmpl $0x7f, -0x8a48(%rbp)	 RIP: 4b1197	 Bytes: 7
  %loadMem_4b1197 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1197 = call %struct.Memory* @routine_cmpl__0x7f__MINUS0x8a48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1197)
  store %struct.Memory* %call_4b1197, %struct.Memory** %MEMORY

  ; Code: jle .L_4b11b0	 RIP: 4b119e	 Bytes: 6
  %loadMem_4b119e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b119e = call %struct.Memory* @routine_jle_.L_4b11b0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b119e, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_4b119e, %struct.Memory** %MEMORY

  %loadBr_4b119e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4b119e = icmp eq i8 %loadBr_4b119e, 1
  br i1 %cmpBr_4b119e, label %block_.L_4b11b0, label %block_.L_4b11a4

  ; Code: .L_4b11a4:	 RIP: 4b11a4	 Bytes: 0
block_.L_4b11a4:

  ; Code: movl -0x31c(%rbp), %eax	 RIP: 4b11a4	 Bytes: 6
  %loadMem_4b11a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b11a4 = call %struct.Memory* @routine_movl_MINUS0x31c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b11a4)
  store %struct.Memory* %call_4b11a4, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x8a48(%rbp)	 RIP: 4b11aa	 Bytes: 6
  %loadMem_4b11aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b11aa = call %struct.Memory* @routine_movl__eax__MINUS0x8a48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b11aa)
  store %struct.Memory* %call_4b11aa, %struct.Memory** %MEMORY

  ; Code: .L_4b11b0:	 RIP: 4b11b0	 Bytes: 0
  br label %block_.L_4b11b0
block_.L_4b11b0:

  ; Code: leaq -0xba0(%rbp), %rax	 RIP: 4b11b0	 Bytes: 7
  %loadMem_4b11b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b11b0 = call %struct.Memory* @routine_leaq_MINUS0xba0__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b11b0)
  store %struct.Memory* %call_4b11b0, %struct.Memory** %MEMORY

  ; Code: leaq -0x760(%rbp), %rcx	 RIP: 4b11b7	 Bytes: 7
  %loadMem_4b11b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b11b7 = call %struct.Memory* @routine_leaq_MINUS0x760__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b11b7)
  store %struct.Memory* %call_4b11b7, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x8a4c(%rbp)	 RIP: 4b11be	 Bytes: 10
  %loadMem_4b11be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b11be = call %struct.Memory* @routine_movl__0x0__MINUS0x8a4c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b11be)
  store %struct.Memory* %call_4b11be, %struct.Memory** %MEMORY

  ; Code: movl -0x8a48(%rbp), %edx	 RIP: 4b11c8	 Bytes: 6
  %loadMem_4b11c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b11c8 = call %struct.Memory* @routine_movl_MINUS0x8a48__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b11c8)
  store %struct.Memory* %call_4b11c8, %struct.Memory** %MEMORY

  ; Code: movslq -0x8a44(%rbp), %rsi	 RIP: 4b11ce	 Bytes: 7
  %loadMem_4b11ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b11ce = call %struct.Memory* @routine_movslq_MINUS0x8a44__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b11ce)
  store %struct.Memory* %call_4b11ce, %struct.Memory** %MEMORY

  ; Code: imulq $0xb4, %rsi, %rsi	 RIP: 4b11d5	 Bytes: 7
  %loadMem_4b11d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b11d5 = call %struct.Memory* @routine_imulq__0xb4___rsi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b11d5)
  store %struct.Memory* %call_4b11d5, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 4b11dc	 Bytes: 3
  %loadMem_4b11dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b11dc = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b11dc)
  store %struct.Memory* %call_4b11dc, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rdi	 RIP: 4b11df	 Bytes: 3
  %loadMem_4b11df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b11df = call %struct.Memory* @routine_addq__rsi___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b11df)
  store %struct.Memory* %call_4b11df, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rsi	 RIP: 4b11e2	 Bytes: 4
  %loadMem_4b11e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b11e2 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b11e2)
  store %struct.Memory* %call_4b11e2, %struct.Memory** %MEMORY

  ; Code: imulq $0xc, %rsi, %rsi	 RIP: 4b11e6	 Bytes: 4
  %loadMem_4b11e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b11e6 = call %struct.Memory* @routine_imulq__0xc___rsi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b11e6)
  store %struct.Memory* %call_4b11e6, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rdi	 RIP: 4b11ea	 Bytes: 3
  %loadMem_4b11ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b11ea = call %struct.Memory* @routine_addq__rsi___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b11ea)
  store %struct.Memory* %call_4b11ea, %struct.Memory** %MEMORY

  ; Code: movl %edx, (%rdi)	 RIP: 4b11ed	 Bytes: 2
  %loadMem_4b11ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b11ed = call %struct.Memory* @routine_movl__edx____rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b11ed)
  store %struct.Memory* %call_4b11ed, %struct.Memory** %MEMORY

  ; Code: movl -0x320(%rbp), %edx	 RIP: 4b11ef	 Bytes: 6
  %loadMem_4b11ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b11ef = call %struct.Memory* @routine_movl_MINUS0x320__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b11ef)
  store %struct.Memory* %call_4b11ef, %struct.Memory** %MEMORY

  ; Code: movslq -0x8a44(%rbp), %rsi	 RIP: 4b11f5	 Bytes: 7
  %loadMem_4b11f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b11f5 = call %struct.Memory* @routine_movslq_MINUS0x8a44__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b11f5)
  store %struct.Memory* %call_4b11f5, %struct.Memory** %MEMORY

  ; Code: imulq $0xb4, %rsi, %rsi	 RIP: 4b11fc	 Bytes: 7
  %loadMem_4b11fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b11fc = call %struct.Memory* @routine_imulq__0xb4___rsi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b11fc)
  store %struct.Memory* %call_4b11fc, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 4b1203	 Bytes: 3
  %loadMem_4b1203 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1203 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1203)
  store %struct.Memory* %call_4b1203, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rdi	 RIP: 4b1206	 Bytes: 3
  %loadMem_4b1206 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1206 = call %struct.Memory* @routine_addq__rsi___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1206)
  store %struct.Memory* %call_4b1206, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rsi	 RIP: 4b1209	 Bytes: 4
  %loadMem_4b1209 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1209 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1209)
  store %struct.Memory* %call_4b1209, %struct.Memory** %MEMORY

  ; Code: imulq $0xc, %rsi, %rsi	 RIP: 4b120d	 Bytes: 4
  %loadMem_4b120d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b120d = call %struct.Memory* @routine_imulq__0xc___rsi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b120d)
  store %struct.Memory* %call_4b120d, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rdi	 RIP: 4b1211	 Bytes: 3
  %loadMem_4b1211 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1211 = call %struct.Memory* @routine_addq__rsi___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1211)
  store %struct.Memory* %call_4b1211, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0x4(%rdi)	 RIP: 4b1214	 Bytes: 3
  %loadMem_4b1214 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1214 = call %struct.Memory* @routine_movl__edx__0x4__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1214)
  store %struct.Memory* %call_4b1214, %struct.Memory** %MEMORY

  ; Code: movl -0x320(%rbp), %edx	 RIP: 4b1217	 Bytes: 6
  %loadMem_4b1217 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1217 = call %struct.Memory* @routine_movl_MINUS0x320__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1217)
  store %struct.Memory* %call_4b1217, %struct.Memory** %MEMORY

  ; Code: movslq -0x8a44(%rbp), %rsi	 RIP: 4b121d	 Bytes: 7
  %loadMem_4b121d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b121d = call %struct.Memory* @routine_movslq_MINUS0x8a44__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b121d)
  store %struct.Memory* %call_4b121d, %struct.Memory** %MEMORY

  ; Code: imulq $0xb4, %rsi, %rsi	 RIP: 4b1224	 Bytes: 7
  %loadMem_4b1224 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1224 = call %struct.Memory* @routine_imulq__0xb4___rsi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1224)
  store %struct.Memory* %call_4b1224, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rcx	 RIP: 4b122b	 Bytes: 3
  %loadMem_4b122b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b122b = call %struct.Memory* @routine_addq__rsi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b122b)
  store %struct.Memory* %call_4b122b, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rsi	 RIP: 4b122e	 Bytes: 4
  %loadMem_4b122e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b122e = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b122e)
  store %struct.Memory* %call_4b122e, %struct.Memory** %MEMORY

  ; Code: imulq $0xc, %rsi, %rsi	 RIP: 4b1232	 Bytes: 4
  %loadMem_4b1232 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1232 = call %struct.Memory* @routine_imulq__0xc___rsi___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1232)
  store %struct.Memory* %call_4b1232, %struct.Memory** %MEMORY

  ; Code: addq %rsi, %rcx	 RIP: 4b1236	 Bytes: 3
  %loadMem_4b1236 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1236 = call %struct.Memory* @routine_addq__rsi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1236)
  store %struct.Memory* %call_4b1236, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0x8(%rcx)	 RIP: 4b1239	 Bytes: 3
  %loadMem_4b1239 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1239 = call %struct.Memory* @routine_movl__edx__0x8__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1239)
  store %struct.Memory* %call_4b1239, %struct.Memory** %MEMORY

  ; Code: movslq -0x8a44(%rbp), %rcx	 RIP: 4b123c	 Bytes: 7
  %loadMem_4b123c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b123c = call %struct.Memory* @routine_movslq_MINUS0x8a44__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b123c)
  store %struct.Memory* %call_4b123c, %struct.Memory** %MEMORY

  ; Code: imulq $0xb4, %rcx, %rcx	 RIP: 4b1243	 Bytes: 7
  %loadMem_4b1243 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1243 = call %struct.Memory* @routine_imulq__0xb4___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1243)
  store %struct.Memory* %call_4b1243, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 4b124a	 Bytes: 3
  %loadMem_4b124a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b124a = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b124a)
  store %struct.Memory* %call_4b124a, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rsi	 RIP: 4b124d	 Bytes: 3
  %loadMem_4b124d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b124d = call %struct.Memory* @routine_addq__rcx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b124d)
  store %struct.Memory* %call_4b124d, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rcx	 RIP: 4b1250	 Bytes: 4
  %loadMem_4b1250 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1250 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1250)
  store %struct.Memory* %call_4b1250, %struct.Memory** %MEMORY

  ; Code: imulq $0xc, %rcx, %rcx	 RIP: 4b1254	 Bytes: 4
  %loadMem_4b1254 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1254 = call %struct.Memory* @routine_imulq__0xc___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1254)
  store %struct.Memory* %call_4b1254, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rsi	 RIP: 4b1258	 Bytes: 3
  %loadMem_4b1258 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1258 = call %struct.Memory* @routine_addq__rcx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1258)
  store %struct.Memory* %call_4b1258, %struct.Memory** %MEMORY

  ; Code: movl $0x0, (%rsi)	 RIP: 4b125b	 Bytes: 6
  %loadMem_4b125b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b125b = call %struct.Memory* @routine_movl__0x0____rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b125b)
  store %struct.Memory* %call_4b125b, %struct.Memory** %MEMORY

  ; Code: movslq -0x8a44(%rbp), %rcx	 RIP: 4b1261	 Bytes: 7
  %loadMem_4b1261 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1261 = call %struct.Memory* @routine_movslq_MINUS0x8a44__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1261)
  store %struct.Memory* %call_4b1261, %struct.Memory** %MEMORY

  ; Code: imulq $0xb4, %rcx, %rcx	 RIP: 4b1268	 Bytes: 7
  %loadMem_4b1268 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1268 = call %struct.Memory* @routine_imulq__0xb4___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1268)
  store %struct.Memory* %call_4b1268, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 4b126f	 Bytes: 3
  %loadMem_4b126f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b126f = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b126f)
  store %struct.Memory* %call_4b126f, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rsi	 RIP: 4b1272	 Bytes: 3
  %loadMem_4b1272 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1272 = call %struct.Memory* @routine_addq__rcx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1272)
  store %struct.Memory* %call_4b1272, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rcx	 RIP: 4b1275	 Bytes: 4
  %loadMem_4b1275 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1275 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1275)
  store %struct.Memory* %call_4b1275, %struct.Memory** %MEMORY

  ; Code: imulq $0xc, %rcx, %rcx	 RIP: 4b1279	 Bytes: 4
  %loadMem_4b1279 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1279 = call %struct.Memory* @routine_imulq__0xc___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1279)
  store %struct.Memory* %call_4b1279, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rsi	 RIP: 4b127d	 Bytes: 3
  %loadMem_4b127d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b127d = call %struct.Memory* @routine_addq__rcx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b127d)
  store %struct.Memory* %call_4b127d, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x4(%rsi)	 RIP: 4b1280	 Bytes: 7
  %loadMem_4b1280 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1280 = call %struct.Memory* @routine_movl__0x0__0x4__rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1280)
  store %struct.Memory* %call_4b1280, %struct.Memory** %MEMORY

  ; Code: movslq -0x8a44(%rbp), %rcx	 RIP: 4b1287	 Bytes: 7
  %loadMem_4b1287 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1287 = call %struct.Memory* @routine_movslq_MINUS0x8a44__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1287)
  store %struct.Memory* %call_4b1287, %struct.Memory** %MEMORY

  ; Code: imulq $0xb4, %rcx, %rcx	 RIP: 4b128e	 Bytes: 7
  %loadMem_4b128e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b128e = call %struct.Memory* @routine_imulq__0xb4___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b128e)
  store %struct.Memory* %call_4b128e, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4b1295	 Bytes: 3
  %loadMem_4b1295 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1295 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1295)
  store %struct.Memory* %call_4b1295, %struct.Memory** %MEMORY

  ; Code: movslq -0x10(%rbp), %rcx	 RIP: 4b1298	 Bytes: 4
  %loadMem_4b1298 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1298 = call %struct.Memory* @routine_movslq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1298)
  store %struct.Memory* %call_4b1298, %struct.Memory** %MEMORY

  ; Code: imulq $0xc, %rcx, %rcx	 RIP: 4b129c	 Bytes: 4
  %loadMem_4b129c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b129c = call %struct.Memory* @routine_imulq__0xc___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b129c)
  store %struct.Memory* %call_4b129c, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4b12a0	 Bytes: 3
  %loadMem_4b12a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b12a0 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b12a0)
  store %struct.Memory* %call_4b12a0, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x8(%rax)	 RIP: 4b12a3	 Bytes: 7
  %loadMem_4b12a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b12a3 = call %struct.Memory* @routine_movl__0x0__0x8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b12a3)
  store %struct.Memory* %call_4b12a3, %struct.Memory** %MEMORY

  ; Code: movl -0x10(%rbp), %eax	 RIP: 4b12aa	 Bytes: 3
  %loadMem_4b12aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b12aa = call %struct.Memory* @routine_movl_MINUS0x10__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b12aa)
  store %struct.Memory* %call_4b12aa, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4b12ad	 Bytes: 3
  %loadMem_4b12ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b12ad = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b12ad)
  store %struct.Memory* %call_4b12ad, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x10(%rbp)	 RIP: 4b12b0	 Bytes: 3
  %loadMem_4b12b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b12b0 = call %struct.Memory* @routine_movl__eax__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b12b0)
  store %struct.Memory* %call_4b12b0, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4b1013	 RIP: 4b12b3	 Bytes: 5
  %loadMem_4b12b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b12b3 = call %struct.Memory* @routine_jmpq_.L_4b1013(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b12b3, i64 -672, i64 5)
  store %struct.Memory* %call_4b12b3, %struct.Memory** %MEMORY

  br label %block_.L_4b1013

  ; Code: .L_4b12b8:	 RIP: 4b12b8	 Bytes: 0
block_.L_4b12b8:

  ; Code: jmpq .L_4b12bd	 RIP: 4b12b8	 Bytes: 5
  %loadMem_4b12b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b12b8 = call %struct.Memory* @routine_jmpq_.L_4b12bd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b12b8, i64 5, i64 5)
  store %struct.Memory* %call_4b12b8, %struct.Memory** %MEMORY

  br label %block_.L_4b12bd

  ; Code: .L_4b12bd:	 RIP: 4b12bd	 Bytes: 0
block_.L_4b12bd:

  ; Code: movl -0x8a44(%rbp), %eax	 RIP: 4b12bd	 Bytes: 6
  %loadMem_4b12bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b12bd = call %struct.Memory* @routine_movl_MINUS0x8a44__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b12bd)
  store %struct.Memory* %call_4b12bd, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4b12c3	 Bytes: 3
  %loadMem_4b12c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b12c3 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b12c3)
  store %struct.Memory* %call_4b12c3, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x8a44(%rbp)	 RIP: 4b12c6	 Bytes: 6
  %loadMem_4b12c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b12c6 = call %struct.Memory* @routine_movl__eax__MINUS0x8a44__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b12c6)
  store %struct.Memory* %call_4b12c6, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4b0ff5	 RIP: 4b12cc	 Bytes: 5
  %loadMem_4b12cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b12cc = call %struct.Memory* @routine_jmpq_.L_4b0ff5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b12cc, i64 -727, i64 5)
  store %struct.Memory* %call_4b12cc, %struct.Memory** %MEMORY

  br label %block_.L_4b0ff5

  ; Code: .L_4b12d1:	 RIP: 4b12d1	 Bytes: 0
block_.L_4b12d1:

  ; Code: movq 0x6d4690, %rax	 RIP: 4b12d1	 Bytes: 8
  %loadMem_4b12d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b12d1 = call %struct.Memory* @routine_movq_0x6d4690___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b12d1)
  store %struct.Memory* %call_4b12d1, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, 0xc4(%rax)	 RIP: 4b12d9	 Bytes: 7
  %loadMem_4b12d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b12d9 = call %struct.Memory* @routine_cmpl__0x1__0xc4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b12d9)
  store %struct.Memory* %call_4b12d9, %struct.Memory** %MEMORY

  ; Code: jne .L_4b140d	 RIP: 4b12e0	 Bytes: 6
  %loadMem_4b12e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b12e0 = call %struct.Memory* @routine_jne_.L_4b140d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b12e0, i8* %BRANCH_TAKEN, i64 301, i64 6, i64 6)
  store %struct.Memory* %call_4b12e0, %struct.Memory** %MEMORY

  %loadBr_4b12e0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4b12e0 = icmp eq i8 %loadBr_4b12e0, 1
  br i1 %cmpBr_4b12e0, label %block_.L_4b140d, label %block_4b12e6

block_4b12e6:
  ; Code: movl $0x0, -0x8a44(%rbp)	 RIP: 4b12e6	 Bytes: 10
  %loadMem_4b12e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b12e6 = call %struct.Memory* @routine_movl__0x0__MINUS0x8a44__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b12e6)
  store %struct.Memory* %call_4b12e6, %struct.Memory** %MEMORY

  ; Code: .L_4b12f0:	 RIP: 4b12f0	 Bytes: 0
  br label %block_.L_4b12f0
block_.L_4b12f0:

  ; Code: movl -0x8a44(%rbp), %eax	 RIP: 4b12f0	 Bytes: 6
  %loadMem_4b12f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b12f0 = call %struct.Memory* @routine_movl_MINUS0x8a44__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b12f0)
  store %struct.Memory* %call_4b12f0, %struct.Memory** %MEMORY

  ; Code: movl -0x324(%rbp), %ecx	 RIP: 4b12f6	 Bytes: 6
  %loadMem_4b12f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b12f6 = call %struct.Memory* @routine_movl_MINUS0x324__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b12f6)
  store %struct.Memory* %call_4b12f6, %struct.Memory** %MEMORY

  ; Code: addl $0x2, %ecx	 RIP: 4b12fc	 Bytes: 3
  %loadMem_4b12fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b12fc = call %struct.Memory* @routine_addl__0x2___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b12fc)
  store %struct.Memory* %call_4b12fc, %struct.Memory** %MEMORY

  ; Code: cmpl %ecx, %eax	 RIP: 4b12ff	 Bytes: 2
  %loadMem_4b12ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b12ff = call %struct.Memory* @routine_cmpl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b12ff)
  store %struct.Memory* %call_4b12ff, %struct.Memory** %MEMORY

  ; Code: jge .L_4b1408	 RIP: 4b1301	 Bytes: 6
  %loadMem_4b1301 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1301 = call %struct.Memory* @routine_jge_.L_4b1408(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1301, i8* %BRANCH_TAKEN, i64 263, i64 6, i64 6)
  store %struct.Memory* %call_4b1301, %struct.Memory** %MEMORY

  %loadBr_4b1301 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4b1301 = icmp eq i8 %loadBr_4b1301, 1
  br i1 %cmpBr_4b1301, label %block_.L_4b1408, label %block_4b1307

block_4b1307:
  ; Code: movl $0x0, -0x24(%rbp)	 RIP: 4b1307	 Bytes: 7
  %loadMem_4b1307 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1307 = call %struct.Memory* @routine_movl__0x0__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1307)
  store %struct.Memory* %call_4b1307, %struct.Memory** %MEMORY

  ; Code: .L_4b130e:	 RIP: 4b130e	 Bytes: 0
  br label %block_.L_4b130e
block_.L_4b130e:

  ; Code: movl -0x24(%rbp), %eax	 RIP: 4b130e	 Bytes: 3
  %loadMem_4b130e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b130e = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b130e)
  store %struct.Memory* %call_4b130e, %struct.Memory** %MEMORY

  ; Code: movslq -0x8a44(%rbp), %rcx	 RIP: 4b1311	 Bytes: 7
  %loadMem_4b1311 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1311 = call %struct.Memory* @routine_movslq_MINUS0x8a44__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1311)
  store %struct.Memory* %call_4b1311, %struct.Memory** %MEMORY

  ; Code: cmpl 0x7247b0(,%rcx,4), %eax	 RIP: 4b1318	 Bytes: 7
  %loadMem_4b1318 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1318 = call %struct.Memory* @routine_cmpl_0x7247b0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1318)
  store %struct.Memory* %call_4b1318, %struct.Memory** %MEMORY

  ; Code: jge .L_4b13ef	 RIP: 4b131f	 Bytes: 6
  %loadMem_4b131f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b131f = call %struct.Memory* @routine_jge_.L_4b13ef(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b131f, i8* %BRANCH_TAKEN, i64 208, i64 6, i64 6)
  store %struct.Memory* %call_4b131f, %struct.Memory** %MEMORY

  %loadBr_4b131f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4b131f = icmp eq i8 %loadBr_4b131f, 1
  br i1 %cmpBr_4b131f, label %block_.L_4b13ef, label %block_4b1325

block_4b1325:
  ; Code: movl $0x0, -0x28(%rbp)	 RIP: 4b1325	 Bytes: 7
  %loadMem_4b1325 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1325 = call %struct.Memory* @routine_movl__0x0__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1325)
  store %struct.Memory* %call_4b1325, %struct.Memory** %MEMORY

  ; Code: .L_4b132c:	 RIP: 4b132c	 Bytes: 0
  br label %block_.L_4b132c
block_.L_4b132c:

  ; Code: cmpl $0x3, -0x28(%rbp)	 RIP: 4b132c	 Bytes: 4
  %loadMem_4b132c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b132c = call %struct.Memory* @routine_cmpl__0x3__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b132c)
  store %struct.Memory* %call_4b132c, %struct.Memory** %MEMORY

  ; Code: jge .L_4b13dc	 RIP: 4b1330	 Bytes: 6
  %loadMem_4b1330 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1330 = call %struct.Memory* @routine_jge_.L_4b13dc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1330, i8* %BRANCH_TAKEN, i64 172, i64 6, i64 6)
  store %struct.Memory* %call_4b1330, %struct.Memory** %MEMORY

  %loadBr_4b1330 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4b1330 = icmp eq i8 %loadBr_4b1330, 1
  br i1 %cmpBr_4b1330, label %block_.L_4b13dc, label %block_4b1336

block_4b1336:
  ; Code: leaq -0xba0(%rbp), %rax	 RIP: 4b1336	 Bytes: 7
  %loadMem_4b1336 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1336 = call %struct.Memory* @routine_leaq_MINUS0xba0__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1336)
  store %struct.Memory* %call_4b1336, %struct.Memory** %MEMORY

  ; Code: leaq -0x760(%rbp), %rcx	 RIP: 4b133d	 Bytes: 7
  %loadMem_4b133d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b133d = call %struct.Memory* @routine_leaq_MINUS0x760__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b133d)
  store %struct.Memory* %call_4b133d, %struct.Memory** %MEMORY

  ; Code: movslq -0x8a44(%rbp), %rdx	 RIP: 4b1344	 Bytes: 7
  %loadMem_4b1344 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1344 = call %struct.Memory* @routine_movslq_MINUS0x8a44__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1344)
  store %struct.Memory* %call_4b1344, %struct.Memory** %MEMORY

  ; Code: imulq $0xb4, %rdx, %rdx	 RIP: 4b134b	 Bytes: 7
  %loadMem_4b134b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b134b = call %struct.Memory* @routine_imulq__0xb4___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b134b)
  store %struct.Memory* %call_4b134b, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 4b1352	 Bytes: 3
  %loadMem_4b1352 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1352 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1352)
  store %struct.Memory* %call_4b1352, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 4b1355	 Bytes: 4
  %loadMem_4b1355 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1355 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1355)
  store %struct.Memory* %call_4b1355, %struct.Memory** %MEMORY

  ; Code: imulq $0xc, %rdx, %rdx	 RIP: 4b1359	 Bytes: 4
  %loadMem_4b1359 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1359 = call %struct.Memory* @routine_imulq__0xc___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1359)
  store %struct.Memory* %call_4b1359, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 4b135d	 Bytes: 3
  %loadMem_4b135d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b135d = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b135d)
  store %struct.Memory* %call_4b135d, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdx	 RIP: 4b1360	 Bytes: 4
  %loadMem_4b1360 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1360 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1360)
  store %struct.Memory* %call_4b1360, %struct.Memory** %MEMORY

  ; Code: movl (%rcx,%rdx,4), %esi	 RIP: 4b1364	 Bytes: 3
  %loadMem_4b1364 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1364 = call %struct.Memory* @routine_movl___rcx__rdx_4____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1364)
  store %struct.Memory* %call_4b1364, %struct.Memory** %MEMORY

  ; Code: movq 0x6d4740, %rcx	 RIP: 4b1367	 Bytes: 8
  %loadMem_4b1367 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1367 = call %struct.Memory* @routine_movq_0x6d4740___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1367)
  store %struct.Memory* %call_4b1367, %struct.Memory** %MEMORY

  ; Code: movslq -0x8a44(%rbp), %rdx	 RIP: 4b136f	 Bytes: 7
  %loadMem_4b136f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b136f = call %struct.Memory* @routine_movslq_MINUS0x8a44__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b136f)
  store %struct.Memory* %call_4b136f, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 4b1376	 Bytes: 4
  %loadMem_4b1376 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1376 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1376)
  store %struct.Memory* %call_4b1376, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdx	 RIP: 4b137a	 Bytes: 4
  %loadMem_4b137a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b137a = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b137a)
  store %struct.Memory* %call_4b137a, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 4b137e	 Bytes: 4
  %loadMem_4b137e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b137e = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b137e)
  store %struct.Memory* %call_4b137e, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdx	 RIP: 4b1382	 Bytes: 4
  %loadMem_4b1382 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1382 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1382)
  store %struct.Memory* %call_4b1382, %struct.Memory** %MEMORY

  ; Code: movl %esi, (%rcx,%rdx,4)	 RIP: 4b1386	 Bytes: 3
  %loadMem_4b1386 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1386 = call %struct.Memory* @routine_movl__esi____rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1386)
  store %struct.Memory* %call_4b1386, %struct.Memory** %MEMORY

  ; Code: movslq -0x8a44(%rbp), %rcx	 RIP: 4b1389	 Bytes: 7
  %loadMem_4b1389 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1389 = call %struct.Memory* @routine_movslq_MINUS0x8a44__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1389)
  store %struct.Memory* %call_4b1389, %struct.Memory** %MEMORY

  ; Code: imulq $0xb4, %rcx, %rcx	 RIP: 4b1390	 Bytes: 7
  %loadMem_4b1390 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1390 = call %struct.Memory* @routine_imulq__0xb4___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1390)
  store %struct.Memory* %call_4b1390, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4b1397	 Bytes: 3
  %loadMem_4b1397 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1397 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1397)
  store %struct.Memory* %call_4b1397, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rcx	 RIP: 4b139a	 Bytes: 4
  %loadMem_4b139a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b139a = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b139a)
  store %struct.Memory* %call_4b139a, %struct.Memory** %MEMORY

  ; Code: imulq $0xc, %rcx, %rcx	 RIP: 4b139e	 Bytes: 4
  %loadMem_4b139e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b139e = call %struct.Memory* @routine_imulq__0xc___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b139e)
  store %struct.Memory* %call_4b139e, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4b13a2	 Bytes: 3
  %loadMem_4b13a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b13a2 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b13a2)
  store %struct.Memory* %call_4b13a2, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 4b13a5	 Bytes: 4
  %loadMem_4b13a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b13a5 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b13a5)
  store %struct.Memory* %call_4b13a5, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rcx,4), %esi	 RIP: 4b13a9	 Bytes: 3
  %loadMem_4b13a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b13a9 = call %struct.Memory* @routine_movl___rax__rcx_4____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b13a9)
  store %struct.Memory* %call_4b13a9, %struct.Memory** %MEMORY

  ; Code: movq 0x6f9728, %rax	 RIP: 4b13ac	 Bytes: 8
  %loadMem_4b13ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b13ac = call %struct.Memory* @routine_movq_0x6f9728___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b13ac)
  store %struct.Memory* %call_4b13ac, %struct.Memory** %MEMORY

  ; Code: movslq -0x8a44(%rbp), %rcx	 RIP: 4b13b4	 Bytes: 7
  %loadMem_4b13b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b13b4 = call %struct.Memory* @routine_movslq_MINUS0x8a44__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b13b4)
  store %struct.Memory* %call_4b13b4, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 4b13bb	 Bytes: 4
  %loadMem_4b13bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b13bb = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b13bb)
  store %struct.Memory* %call_4b13bb, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rcx	 RIP: 4b13bf	 Bytes: 4
  %loadMem_4b13bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b13bf = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b13bf)
  store %struct.Memory* %call_4b13bf, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 4b13c3	 Bytes: 4
  %loadMem_4b13c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b13c3 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b13c3)
  store %struct.Memory* %call_4b13c3, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 4b13c7	 Bytes: 4
  %loadMem_4b13c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b13c7 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b13c7)
  store %struct.Memory* %call_4b13c7, %struct.Memory** %MEMORY

  ; Code: movl %esi, (%rax,%rcx,4)	 RIP: 4b13cb	 Bytes: 3
  %loadMem_4b13cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b13cb = call %struct.Memory* @routine_movl__esi____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b13cb)
  store %struct.Memory* %call_4b13cb, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %eax	 RIP: 4b13ce	 Bytes: 3
  %loadMem_4b13ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b13ce = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b13ce)
  store %struct.Memory* %call_4b13ce, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4b13d1	 Bytes: 3
  %loadMem_4b13d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b13d1 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b13d1)
  store %struct.Memory* %call_4b13d1, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x28(%rbp)	 RIP: 4b13d4	 Bytes: 3
  %loadMem_4b13d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b13d4 = call %struct.Memory* @routine_movl__eax__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b13d4)
  store %struct.Memory* %call_4b13d4, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4b132c	 RIP: 4b13d7	 Bytes: 5
  %loadMem_4b13d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b13d7 = call %struct.Memory* @routine_jmpq_.L_4b132c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b13d7, i64 -171, i64 5)
  store %struct.Memory* %call_4b13d7, %struct.Memory** %MEMORY

  br label %block_.L_4b132c

  ; Code: .L_4b13dc:	 RIP: 4b13dc	 Bytes: 0
block_.L_4b13dc:

  ; Code: jmpq .L_4b13e1	 RIP: 4b13dc	 Bytes: 5
  %loadMem_4b13dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b13dc = call %struct.Memory* @routine_jmpq_.L_4b13e1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b13dc, i64 5, i64 5)
  store %struct.Memory* %call_4b13dc, %struct.Memory** %MEMORY

  br label %block_.L_4b13e1

  ; Code: .L_4b13e1:	 RIP: 4b13e1	 Bytes: 0
block_.L_4b13e1:

  ; Code: movl -0x24(%rbp), %eax	 RIP: 4b13e1	 Bytes: 3
  %loadMem_4b13e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b13e1 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b13e1)
  store %struct.Memory* %call_4b13e1, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4b13e4	 Bytes: 3
  %loadMem_4b13e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b13e4 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b13e4)
  store %struct.Memory* %call_4b13e4, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x24(%rbp)	 RIP: 4b13e7	 Bytes: 3
  %loadMem_4b13e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b13e7 = call %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b13e7)
  store %struct.Memory* %call_4b13e7, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4b130e	 RIP: 4b13ea	 Bytes: 5
  %loadMem_4b13ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b13ea = call %struct.Memory* @routine_jmpq_.L_4b130e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b13ea, i64 -220, i64 5)
  store %struct.Memory* %call_4b13ea, %struct.Memory** %MEMORY

  br label %block_.L_4b130e

  ; Code: .L_4b13ef:	 RIP: 4b13ef	 Bytes: 0
block_.L_4b13ef:

  ; Code: jmpq .L_4b13f4	 RIP: 4b13ef	 Bytes: 5
  %loadMem_4b13ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b13ef = call %struct.Memory* @routine_jmpq_.L_4b13f4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b13ef, i64 5, i64 5)
  store %struct.Memory* %call_4b13ef, %struct.Memory** %MEMORY

  br label %block_.L_4b13f4

  ; Code: .L_4b13f4:	 RIP: 4b13f4	 Bytes: 0
block_.L_4b13f4:

  ; Code: movl -0x8a44(%rbp), %eax	 RIP: 4b13f4	 Bytes: 6
  %loadMem_4b13f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b13f4 = call %struct.Memory* @routine_movl_MINUS0x8a44__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b13f4)
  store %struct.Memory* %call_4b13f4, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4b13fa	 Bytes: 3
  %loadMem_4b13fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b13fa = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b13fa)
  store %struct.Memory* %call_4b13fa, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x8a44(%rbp)	 RIP: 4b13fd	 Bytes: 6
  %loadMem_4b13fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b13fd = call %struct.Memory* @routine_movl__eax__MINUS0x8a44__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b13fd)
  store %struct.Memory* %call_4b13fd, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4b12f0	 RIP: 4b1403	 Bytes: 5
  %loadMem_4b1403 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1403 = call %struct.Memory* @routine_jmpq_.L_4b12f0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1403, i64 -275, i64 5)
  store %struct.Memory* %call_4b1403, %struct.Memory** %MEMORY

  br label %block_.L_4b12f0

  ; Code: .L_4b1408:	 RIP: 4b1408	 Bytes: 0
block_.L_4b1408:

  ; Code: jmpq .L_4b155a	 RIP: 4b1408	 Bytes: 5
  %loadMem_4b1408 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1408 = call %struct.Memory* @routine_jmpq_.L_4b155a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1408, i64 338, i64 5)
  store %struct.Memory* %call_4b1408, %struct.Memory** %MEMORY

  br label %block_.L_4b155a

  ; Code: .L_4b140d:	 RIP: 4b140d	 Bytes: 0
block_.L_4b140d:

  ; Code: movl $0x0, -0x8a44(%rbp)	 RIP: 4b140d	 Bytes: 10
  %loadMem_4b140d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b140d = call %struct.Memory* @routine_movl__0x0__MINUS0x8a44__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b140d)
  store %struct.Memory* %call_4b140d, %struct.Memory** %MEMORY

  ; Code: .L_4b1417:	 RIP: 4b1417	 Bytes: 0
  br label %block_.L_4b1417
block_.L_4b1417:

  ; Code: movl -0x8a44(%rbp), %eax	 RIP: 4b1417	 Bytes: 6
  %loadMem_4b1417 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1417 = call %struct.Memory* @routine_movl_MINUS0x8a44__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1417)
  store %struct.Memory* %call_4b1417, %struct.Memory** %MEMORY

  ; Code: movl -0x324(%rbp), %ecx	 RIP: 4b141d	 Bytes: 6
  %loadMem_4b141d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b141d = call %struct.Memory* @routine_movl_MINUS0x324__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b141d)
  store %struct.Memory* %call_4b141d, %struct.Memory** %MEMORY

  ; Code: addl $0x2, %ecx	 RIP: 4b1423	 Bytes: 3
  %loadMem_4b1423 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1423 = call %struct.Memory* @routine_addl__0x2___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1423)
  store %struct.Memory* %call_4b1423, %struct.Memory** %MEMORY

  ; Code: cmpl %ecx, %eax	 RIP: 4b1426	 Bytes: 2
  %loadMem_4b1426 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1426 = call %struct.Memory* @routine_cmpl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1426)
  store %struct.Memory* %call_4b1426, %struct.Memory** %MEMORY

  ; Code: jge .L_4b1555	 RIP: 4b1428	 Bytes: 6
  %loadMem_4b1428 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1428 = call %struct.Memory* @routine_jge_.L_4b1555(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1428, i8* %BRANCH_TAKEN, i64 301, i64 6, i64 6)
  store %struct.Memory* %call_4b1428, %struct.Memory** %MEMORY

  %loadBr_4b1428 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4b1428 = icmp eq i8 %loadBr_4b1428, 1
  br i1 %cmpBr_4b1428, label %block_.L_4b1555, label %block_4b142e

block_4b142e:
  ; Code: movl $0x0, -0x24(%rbp)	 RIP: 4b142e	 Bytes: 7
  %loadMem_4b142e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b142e = call %struct.Memory* @routine_movl__0x0__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b142e)
  store %struct.Memory* %call_4b142e, %struct.Memory** %MEMORY

  ; Code: .L_4b1435:	 RIP: 4b1435	 Bytes: 0
  br label %block_.L_4b1435
block_.L_4b1435:

  ; Code: movl -0x24(%rbp), %eax	 RIP: 4b1435	 Bytes: 3
  %loadMem_4b1435 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1435 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1435)
  store %struct.Memory* %call_4b1435, %struct.Memory** %MEMORY

  ; Code: movslq -0x8a44(%rbp), %rcx	 RIP: 4b1438	 Bytes: 7
  %loadMem_4b1438 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1438 = call %struct.Memory* @routine_movslq_MINUS0x8a44__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1438)
  store %struct.Memory* %call_4b1438, %struct.Memory** %MEMORY

  ; Code: cmpl 0x7247b0(,%rcx,4), %eax	 RIP: 4b143f	 Bytes: 7
  %loadMem_4b143f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b143f = call %struct.Memory* @routine_cmpl_0x7247b0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b143f)
  store %struct.Memory* %call_4b143f, %struct.Memory** %MEMORY

  ; Code: jge .L_4b153c	 RIP: 4b1446	 Bytes: 6
  %loadMem_4b1446 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1446 = call %struct.Memory* @routine_jge_.L_4b153c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1446, i8* %BRANCH_TAKEN, i64 246, i64 6, i64 6)
  store %struct.Memory* %call_4b1446, %struct.Memory** %MEMORY

  %loadBr_4b1446 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4b1446 = icmp eq i8 %loadBr_4b1446, 1
  br i1 %cmpBr_4b1446, label %block_.L_4b153c, label %block_4b144c

block_4b144c:
  ; Code: movl $0x1, %eax	 RIP: 4b144c	 Bytes: 5
  %loadMem_4b144c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b144c = call %struct.Memory* @routine_movl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b144c)
  store %struct.Memory* %call_4b144c, %struct.Memory** %MEMORY

  ; Code: movl 0x70f6d0, %ecx	 RIP: 4b1451	 Bytes: 7
  %loadMem_4b1451 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1451 = call %struct.Memory* @routine_movl_0x70f6d0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1451)
  store %struct.Memory* %call_4b1451, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 4b1458	 Bytes: 2
  %loadMem_4b1458 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1458 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1458)
  store %struct.Memory* %call_4b1458, %struct.Memory** %MEMORY

  ; Code: shll %cl, %edx	 RIP: 4b145a	 Bytes: 2
  %loadMem_4b145a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b145a = call %struct.Memory* @routine_shll__cl___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b145a)
  store %struct.Memory* %call_4b145a, %struct.Memory** %MEMORY

  ; Code: movq 0x6d4740, %rsi	 RIP: 4b145c	 Bytes: 8
  %loadMem_4b145c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b145c = call %struct.Memory* @routine_movq_0x6d4740___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b145c)
  store %struct.Memory* %call_4b145c, %struct.Memory** %MEMORY

  ; Code: movslq -0x8a44(%rbp), %rdi	 RIP: 4b1464	 Bytes: 7
  %loadMem_4b1464 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1464 = call %struct.Memory* @routine_movslq_MINUS0x8a44__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1464)
  store %struct.Memory* %call_4b1464, %struct.Memory** %MEMORY

  ; Code: movq (%rsi,%rdi,8), %rsi	 RIP: 4b146b	 Bytes: 4
  %loadMem_4b146b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b146b = call %struct.Memory* @routine_movq___rsi__rdi_8____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b146b)
  store %struct.Memory* %call_4b146b, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdi	 RIP: 4b146f	 Bytes: 4
  %loadMem_4b146f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b146f = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b146f)
  store %struct.Memory* %call_4b146f, %struct.Memory** %MEMORY

  ; Code: movq (%rsi,%rdi,8), %rsi	 RIP: 4b1473	 Bytes: 4
  %loadMem_4b1473 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1473 = call %struct.Memory* @routine_movq___rsi__rdi_8____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1473)
  store %struct.Memory* %call_4b1473, %struct.Memory** %MEMORY

  ; Code: movl %edx, (%rsi)	 RIP: 4b1477	 Bytes: 2
  %loadMem_4b1477 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1477 = call %struct.Memory* @routine_movl__edx____rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1477)
  store %struct.Memory* %call_4b1477, %struct.Memory** %MEMORY

  ; Code: movl 0x7242a0, %ecx	 RIP: 4b1479	 Bytes: 7
  %loadMem_4b1479 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1479 = call %struct.Memory* @routine_movl_0x7242a0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1479)
  store %struct.Memory* %call_4b1479, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 4b1480	 Bytes: 2
  %loadMem_4b1480 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1480 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1480)
  store %struct.Memory* %call_4b1480, %struct.Memory** %MEMORY

  ; Code: shll %cl, %edx	 RIP: 4b1482	 Bytes: 2
  %loadMem_4b1482 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1482 = call %struct.Memory* @routine_shll__cl___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1482)
  store %struct.Memory* %call_4b1482, %struct.Memory** %MEMORY

  ; Code: movq 0x6d4740, %rsi	 RIP: 4b1484	 Bytes: 8
  %loadMem_4b1484 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1484 = call %struct.Memory* @routine_movq_0x6d4740___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1484)
  store %struct.Memory* %call_4b1484, %struct.Memory** %MEMORY

  ; Code: movslq -0x8a44(%rbp), %rdi	 RIP: 4b148c	 Bytes: 7
  %loadMem_4b148c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b148c = call %struct.Memory* @routine_movslq_MINUS0x8a44__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b148c)
  store %struct.Memory* %call_4b148c, %struct.Memory** %MEMORY

  ; Code: movq (%rsi,%rdi,8), %rsi	 RIP: 4b1493	 Bytes: 4
  %loadMem_4b1493 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1493 = call %struct.Memory* @routine_movq___rsi__rdi_8____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1493)
  store %struct.Memory* %call_4b1493, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdi	 RIP: 4b1497	 Bytes: 4
  %loadMem_4b1497 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1497 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1497)
  store %struct.Memory* %call_4b1497, %struct.Memory** %MEMORY

  ; Code: movq (%rsi,%rdi,8), %rsi	 RIP: 4b149b	 Bytes: 4
  %loadMem_4b149b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b149b = call %struct.Memory* @routine_movq___rsi__rdi_8____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b149b)
  store %struct.Memory* %call_4b149b, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0x4(%rsi)	 RIP: 4b149f	 Bytes: 3
  %loadMem_4b149f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b149f = call %struct.Memory* @routine_movl__edx__0x4__rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b149f)
  store %struct.Memory* %call_4b149f, %struct.Memory** %MEMORY

  ; Code: movl 0x7242a0, %ecx	 RIP: 4b14a2	 Bytes: 7
  %loadMem_4b14a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b14a2 = call %struct.Memory* @routine_movl_0x7242a0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b14a2)
  store %struct.Memory* %call_4b14a2, %struct.Memory** %MEMORY

  ; Code: shll %cl, %eax	 RIP: 4b14a9	 Bytes: 2
  %loadMem_4b14a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b14a9 = call %struct.Memory* @routine_shll__cl___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b14a9)
  store %struct.Memory* %call_4b14a9, %struct.Memory** %MEMORY

  ; Code: movq 0x6d4740, %rsi	 RIP: 4b14ab	 Bytes: 8
  %loadMem_4b14ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b14ab = call %struct.Memory* @routine_movq_0x6d4740___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b14ab)
  store %struct.Memory* %call_4b14ab, %struct.Memory** %MEMORY

  ; Code: movslq -0x8a44(%rbp), %rdi	 RIP: 4b14b3	 Bytes: 7
  %loadMem_4b14b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b14b3 = call %struct.Memory* @routine_movslq_MINUS0x8a44__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b14b3)
  store %struct.Memory* %call_4b14b3, %struct.Memory** %MEMORY

  ; Code: movq (%rsi,%rdi,8), %rsi	 RIP: 4b14ba	 Bytes: 4
  %loadMem_4b14ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b14ba = call %struct.Memory* @routine_movq___rsi__rdi_8____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b14ba)
  store %struct.Memory* %call_4b14ba, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdi	 RIP: 4b14be	 Bytes: 4
  %loadMem_4b14be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b14be = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b14be)
  store %struct.Memory* %call_4b14be, %struct.Memory** %MEMORY

  ; Code: movq (%rsi,%rdi,8), %rsi	 RIP: 4b14c2	 Bytes: 4
  %loadMem_4b14c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b14c2 = call %struct.Memory* @routine_movq___rsi__rdi_8____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b14c2)
  store %struct.Memory* %call_4b14c2, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x8(%rsi)	 RIP: 4b14c6	 Bytes: 3
  %loadMem_4b14c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b14c6 = call %struct.Memory* @routine_movl__eax__0x8__rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b14c6)
  store %struct.Memory* %call_4b14c6, %struct.Memory** %MEMORY

  ; Code: movq 0x6f9728, %rsi	 RIP: 4b14c9	 Bytes: 8
  %loadMem_4b14c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b14c9 = call %struct.Memory* @routine_movq_0x6f9728___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b14c9)
  store %struct.Memory* %call_4b14c9, %struct.Memory** %MEMORY

  ; Code: movslq -0x8a44(%rbp), %rdi	 RIP: 4b14d1	 Bytes: 7
  %loadMem_4b14d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b14d1 = call %struct.Memory* @routine_movslq_MINUS0x8a44__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b14d1)
  store %struct.Memory* %call_4b14d1, %struct.Memory** %MEMORY

  ; Code: movq (%rsi,%rdi,8), %rsi	 RIP: 4b14d8	 Bytes: 4
  %loadMem_4b14d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b14d8 = call %struct.Memory* @routine_movq___rsi__rdi_8____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b14d8)
  store %struct.Memory* %call_4b14d8, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdi	 RIP: 4b14dc	 Bytes: 4
  %loadMem_4b14dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b14dc = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b14dc)
  store %struct.Memory* %call_4b14dc, %struct.Memory** %MEMORY

  ; Code: movq (%rsi,%rdi,8), %rsi	 RIP: 4b14e0	 Bytes: 4
  %loadMem_4b14e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b14e0 = call %struct.Memory* @routine_movq___rsi__rdi_8____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b14e0)
  store %struct.Memory* %call_4b14e0, %struct.Memory** %MEMORY

  ; Code: movl $0x0, (%rsi)	 RIP: 4b14e4	 Bytes: 6
  %loadMem_4b14e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b14e4 = call %struct.Memory* @routine_movl__0x0____rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b14e4)
  store %struct.Memory* %call_4b14e4, %struct.Memory** %MEMORY

  ; Code: movq 0x6f9728, %rsi	 RIP: 4b14ea	 Bytes: 8
  %loadMem_4b14ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b14ea = call %struct.Memory* @routine_movq_0x6f9728___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b14ea)
  store %struct.Memory* %call_4b14ea, %struct.Memory** %MEMORY

  ; Code: movslq -0x8a44(%rbp), %rdi	 RIP: 4b14f2	 Bytes: 7
  %loadMem_4b14f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b14f2 = call %struct.Memory* @routine_movslq_MINUS0x8a44__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b14f2)
  store %struct.Memory* %call_4b14f2, %struct.Memory** %MEMORY

  ; Code: movq (%rsi,%rdi,8), %rsi	 RIP: 4b14f9	 Bytes: 4
  %loadMem_4b14f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b14f9 = call %struct.Memory* @routine_movq___rsi__rdi_8____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b14f9)
  store %struct.Memory* %call_4b14f9, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdi	 RIP: 4b14fd	 Bytes: 4
  %loadMem_4b14fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b14fd = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b14fd)
  store %struct.Memory* %call_4b14fd, %struct.Memory** %MEMORY

  ; Code: movq (%rsi,%rdi,8), %rsi	 RIP: 4b1501	 Bytes: 4
  %loadMem_4b1501 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1501 = call %struct.Memory* @routine_movq___rsi__rdi_8____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1501)
  store %struct.Memory* %call_4b1501, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x4(%rsi)	 RIP: 4b1505	 Bytes: 7
  %loadMem_4b1505 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1505 = call %struct.Memory* @routine_movl__0x0__0x4__rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1505)
  store %struct.Memory* %call_4b1505, %struct.Memory** %MEMORY

  ; Code: movq 0x6f9728, %rsi	 RIP: 4b150c	 Bytes: 8
  %loadMem_4b150c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b150c = call %struct.Memory* @routine_movq_0x6f9728___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b150c)
  store %struct.Memory* %call_4b150c, %struct.Memory** %MEMORY

  ; Code: movslq -0x8a44(%rbp), %rdi	 RIP: 4b1514	 Bytes: 7
  %loadMem_4b1514 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1514 = call %struct.Memory* @routine_movslq_MINUS0x8a44__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1514)
  store %struct.Memory* %call_4b1514, %struct.Memory** %MEMORY

  ; Code: movq (%rsi,%rdi,8), %rsi	 RIP: 4b151b	 Bytes: 4
  %loadMem_4b151b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b151b = call %struct.Memory* @routine_movq___rsi__rdi_8____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b151b)
  store %struct.Memory* %call_4b151b, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rdi	 RIP: 4b151f	 Bytes: 4
  %loadMem_4b151f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b151f = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b151f)
  store %struct.Memory* %call_4b151f, %struct.Memory** %MEMORY

  ; Code: movq (%rsi,%rdi,8), %rsi	 RIP: 4b1523	 Bytes: 4
  %loadMem_4b1523 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1523 = call %struct.Memory* @routine_movq___rsi__rdi_8____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1523)
  store %struct.Memory* %call_4b1523, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x8(%rsi)	 RIP: 4b1527	 Bytes: 7
  %loadMem_4b1527 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1527 = call %struct.Memory* @routine_movl__0x0__0x8__rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1527)
  store %struct.Memory* %call_4b1527, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %eax	 RIP: 4b152e	 Bytes: 3
  %loadMem_4b152e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b152e = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b152e)
  store %struct.Memory* %call_4b152e, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4b1531	 Bytes: 3
  %loadMem_4b1531 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1531 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1531)
  store %struct.Memory* %call_4b1531, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x24(%rbp)	 RIP: 4b1534	 Bytes: 3
  %loadMem_4b1534 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1534 = call %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1534)
  store %struct.Memory* %call_4b1534, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4b1435	 RIP: 4b1537	 Bytes: 5
  %loadMem_4b1537 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1537 = call %struct.Memory* @routine_jmpq_.L_4b1435(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1537, i64 -258, i64 5)
  store %struct.Memory* %call_4b1537, %struct.Memory** %MEMORY

  br label %block_.L_4b1435

  ; Code: .L_4b153c:	 RIP: 4b153c	 Bytes: 0
block_.L_4b153c:

  ; Code: jmpq .L_4b1541	 RIP: 4b153c	 Bytes: 5
  %loadMem_4b153c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b153c = call %struct.Memory* @routine_jmpq_.L_4b1541(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b153c, i64 5, i64 5)
  store %struct.Memory* %call_4b153c, %struct.Memory** %MEMORY

  br label %block_.L_4b1541

  ; Code: .L_4b1541:	 RIP: 4b1541	 Bytes: 0
block_.L_4b1541:

  ; Code: movl -0x8a44(%rbp), %eax	 RIP: 4b1541	 Bytes: 6
  %loadMem_4b1541 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1541 = call %struct.Memory* @routine_movl_MINUS0x8a44__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1541)
  store %struct.Memory* %call_4b1541, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4b1547	 Bytes: 3
  %loadMem_4b1547 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1547 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1547)
  store %struct.Memory* %call_4b1547, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x8a44(%rbp)	 RIP: 4b154a	 Bytes: 6
  %loadMem_4b154a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b154a = call %struct.Memory* @routine_movl__eax__MINUS0x8a44__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b154a)
  store %struct.Memory* %call_4b154a, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4b1417	 RIP: 4b1550	 Bytes: 5
  %loadMem_4b1550 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1550 = call %struct.Memory* @routine_jmpq_.L_4b1417(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1550, i64 -313, i64 5)
  store %struct.Memory* %call_4b1550, %struct.Memory** %MEMORY

  br label %block_.L_4b1417

  ; Code: .L_4b1555:	 RIP: 4b1555	 Bytes: 0
block_.L_4b1555:

  ; Code: jmpq .L_4b155a	 RIP: 4b1555	 Bytes: 5
  %loadMem_4b1555 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1555 = call %struct.Memory* @routine_jmpq_.L_4b155a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1555, i64 5, i64 5)
  store %struct.Memory* %call_4b1555, %struct.Memory** %MEMORY

  br label %block_.L_4b155a

  ; Code: .L_4b155a:	 RIP: 4b155a	 Bytes: 0
block_.L_4b155a:

  ; Code: movl $0x0, -0x8(%rbp)	 RIP: 4b155a	 Bytes: 7
  %loadMem_4b155a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b155a = call %struct.Memory* @routine_movl__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b155a)
  store %struct.Memory* %call_4b155a, %struct.Memory** %MEMORY

  ; Code: .L_4b1561:	 RIP: 4b1561	 Bytes: 0
  br label %block_.L_4b1561
block_.L_4b1561:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 4b1561	 Bytes: 3
  %loadMem_4b1561 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1561 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1561)
  store %struct.Memory* %call_4b1561, %struct.Memory** %MEMORY

  ; Code: cmpl 0x7247b0, %eax	 RIP: 4b1564	 Bytes: 7
  %loadMem_4b1564 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1564 = call %struct.Memory* @routine_cmpl_0x7247b0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1564)
  store %struct.Memory* %call_4b1564, %struct.Memory** %MEMORY

  ; Code: jge .L_4b167c	 RIP: 4b156b	 Bytes: 6
  %loadMem_4b156b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b156b = call %struct.Memory* @routine_jge_.L_4b167c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b156b, i8* %BRANCH_TAKEN, i64 273, i64 6, i64 6)
  store %struct.Memory* %call_4b156b, %struct.Memory** %MEMORY

  %loadBr_4b156b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4b156b = icmp eq i8 %loadBr_4b156b, 1
  br i1 %cmpBr_4b156b, label %block_.L_4b167c, label %block_4b1571

block_4b1571:
  ; Code: movl $0x0, -0xc(%rbp)	 RIP: 4b1571	 Bytes: 7
  %loadMem_4b1571 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1571 = call %struct.Memory* @routine_movl__0x0__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1571)
  store %struct.Memory* %call_4b1571, %struct.Memory** %MEMORY

  ; Code: .L_4b1578:	 RIP: 4b1578	 Bytes: 0
  br label %block_.L_4b1578
block_.L_4b1578:

  ; Code: movl -0xc(%rbp), %eax	 RIP: 4b1578	 Bytes: 3
  %loadMem_4b1578 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1578 = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1578)
  store %struct.Memory* %call_4b1578, %struct.Memory** %MEMORY

  ; Code: cmpl 0x7247b4, %eax	 RIP: 4b157b	 Bytes: 7
  %loadMem_4b157b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b157b = call %struct.Memory* @routine_cmpl_0x7247b4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b157b)
  store %struct.Memory* %call_4b157b, %struct.Memory** %MEMORY

  ; Code: jge .L_4b1669	 RIP: 4b1582	 Bytes: 6
  %loadMem_4b1582 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1582 = call %struct.Memory* @routine_jge_.L_4b1669(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1582, i8* %BRANCH_TAKEN, i64 231, i64 6, i64 6)
  store %struct.Memory* %call_4b1582, %struct.Memory** %MEMORY

  %loadBr_4b1582 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4b1582 = icmp eq i8 %loadBr_4b1582, 1
  br i1 %cmpBr_4b1582, label %block_.L_4b1669, label %block_4b1588

block_4b1588:
  ; Code: movl $0x0, -0x28(%rbp)	 RIP: 4b1588	 Bytes: 7
  %loadMem_4b1588 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1588 = call %struct.Memory* @routine_movl__0x0__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1588)
  store %struct.Memory* %call_4b1588, %struct.Memory** %MEMORY

  ; Code: .L_4b158f:	 RIP: 4b158f	 Bytes: 0
  br label %block_.L_4b158f
block_.L_4b158f:

  ; Code: cmpl $0x3, -0x28(%rbp)	 RIP: 4b158f	 Bytes: 4
  %loadMem_4b158f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b158f = call %struct.Memory* @routine_cmpl__0x3__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b158f)
  store %struct.Memory* %call_4b158f, %struct.Memory** %MEMORY

  ; Code: jge .L_4b1656	 RIP: 4b1593	 Bytes: 6
  %loadMem_4b1593 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1593 = call %struct.Memory* @routine_jge_.L_4b1656(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1593, i8* %BRANCH_TAKEN, i64 195, i64 6, i64 6)
  store %struct.Memory* %call_4b1593, %struct.Memory** %MEMORY

  %loadBr_4b1593 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4b1593 = icmp eq i8 %loadBr_4b1593, 1
  br i1 %cmpBr_4b1593, label %block_.L_4b1656, label %block_4b1599

block_4b1599:
  ; Code: cmpl $0x0, -0x28(%rbp)	 RIP: 4b1599	 Bytes: 4
  %loadMem_4b1599 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1599 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1599)
  store %struct.Memory* %call_4b1599, %struct.Memory** %MEMORY

  ; Code: jne .L_4b15b5	 RIP: 4b159d	 Bytes: 6
  %loadMem_4b159d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b159d = call %struct.Memory* @routine_jne_.L_4b15b5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b159d, i8* %BRANCH_TAKEN, i64 24, i64 6, i64 6)
  store %struct.Memory* %call_4b159d, %struct.Memory** %MEMORY

  %loadBr_4b159d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4b159d = icmp eq i8 %loadBr_4b159d, 1
  br i1 %cmpBr_4b159d, label %block_.L_4b15b5, label %block_4b15a3

block_4b15a3:
  ; Code: movl 0x70f6d0, %eax	 RIP: 4b15a3	 Bytes: 7
  %loadMem_4b15a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b15a3 = call %struct.Memory* @routine_movl_0x70f6d0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b15a3)
  store %struct.Memory* %call_4b15a3, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x8a88(%rbp)	 RIP: 4b15aa	 Bytes: 6
  %loadMem_4b15aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b15aa = call %struct.Memory* @routine_movl__eax__MINUS0x8a88__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b15aa)
  store %struct.Memory* %call_4b15aa, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4b15c2	 RIP: 4b15b0	 Bytes: 5
  %loadMem_4b15b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b15b0 = call %struct.Memory* @routine_jmpq_.L_4b15c2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b15b0, i64 18, i64 5)
  store %struct.Memory* %call_4b15b0, %struct.Memory** %MEMORY

  br label %block_.L_4b15c2

  ; Code: .L_4b15b5:	 RIP: 4b15b5	 Bytes: 0
block_.L_4b15b5:

  ; Code: movl 0x7242a0, %eax	 RIP: 4b15b5	 Bytes: 7
  %loadMem_4b15b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b15b5 = call %struct.Memory* @routine_movl_0x7242a0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b15b5)
  store %struct.Memory* %call_4b15b5, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x8a88(%rbp)	 RIP: 4b15bc	 Bytes: 6
  %loadMem_4b15bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b15bc = call %struct.Memory* @routine_movl__eax__MINUS0x8a88__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b15bc)
  store %struct.Memory* %call_4b15bc, %struct.Memory** %MEMORY

  ; Code: .L_4b15c2:	 RIP: 4b15c2	 Bytes: 0
  br label %block_.L_4b15c2
block_.L_4b15c2:

  ; Code: movl -0x8a88(%rbp), %eax	 RIP: 4b15c2	 Bytes: 6
  %loadMem_4b15c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b15c2 = call %struct.Memory* @routine_movl_MINUS0x8a88__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b15c2)
  store %struct.Memory* %call_4b15c2, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x304(%rbp)	 RIP: 4b15c8	 Bytes: 6
  %loadMem_4b15c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b15c8 = call %struct.Memory* @routine_movl__eax__MINUS0x304__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b15c8)
  store %struct.Memory* %call_4b15c8, %struct.Memory** %MEMORY

  ; Code: movq 0x6d4740, %rcx	 RIP: 4b15ce	 Bytes: 8
  %loadMem_4b15ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b15ce = call %struct.Memory* @routine_movq_0x6d4740___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b15ce)
  store %struct.Memory* %call_4b15ce, %struct.Memory** %MEMORY

  ; Code: movq (%rcx), %rcx	 RIP: 4b15d6	 Bytes: 3
  %loadMem_4b15d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b15d6 = call %struct.Memory* @routine_movq___rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b15d6)
  store %struct.Memory* %call_4b15d6, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdx	 RIP: 4b15d9	 Bytes: 4
  %loadMem_4b15d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b15d9 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b15d9)
  store %struct.Memory* %call_4b15d9, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 4b15dd	 Bytes: 4
  %loadMem_4b15dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b15dd = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b15dd)
  store %struct.Memory* %call_4b15dd, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdx	 RIP: 4b15e1	 Bytes: 4
  %loadMem_4b15e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b15e1 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b15e1)
  store %struct.Memory* %call_4b15e1, %struct.Memory** %MEMORY

  ; Code: movl (%rcx,%rdx,4), %eax	 RIP: 4b15e5	 Bytes: 3
  %loadMem_4b15e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b15e5 = call %struct.Memory* @routine_movl___rcx__rdx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b15e5)
  store %struct.Memory* %call_4b15e5, %struct.Memory** %MEMORY

  ; Code: movq 0x70fcf8, %rcx	 RIP: 4b15e8	 Bytes: 8
  %loadMem_4b15e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b15e8 = call %struct.Memory* @routine_movq_0x70fcf8___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b15e8)
  store %struct.Memory* %call_4b15e8, %struct.Memory** %MEMORY

  ; Code: movq (%rcx), %rcx	 RIP: 4b15f0	 Bytes: 3
  %loadMem_4b15f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b15f0 = call %struct.Memory* @routine_movq___rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b15f0)
  store %struct.Memory* %call_4b15f0, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdx	 RIP: 4b15f3	 Bytes: 4
  %loadMem_4b15f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b15f3 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b15f3)
  store %struct.Memory* %call_4b15f3, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 4b15f7	 Bytes: 4
  %loadMem_4b15f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b15f7 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b15f7)
  store %struct.Memory* %call_4b15f7, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rdx	 RIP: 4b15fb	 Bytes: 4
  %loadMem_4b15fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b15fb = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b15fb)
  store %struct.Memory* %call_4b15fb, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 4b15ff	 Bytes: 4
  %loadMem_4b15ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b15ff = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b15ff)
  store %struct.Memory* %call_4b15ff, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdx	 RIP: 4b1603	 Bytes: 4
  %loadMem_4b1603 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1603 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1603)
  store %struct.Memory* %call_4b1603, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx,%rdx,4)	 RIP: 4b1607	 Bytes: 3
  %loadMem_4b1607 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1607 = call %struct.Memory* @routine_movl__eax____rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1607)
  store %struct.Memory* %call_4b1607, %struct.Memory** %MEMORY

  ; Code: movq 0x6d4740, %rcx	 RIP: 4b160a	 Bytes: 8
  %loadMem_4b160a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b160a = call %struct.Memory* @routine_movq_0x6d4740___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b160a)
  store %struct.Memory* %call_4b160a, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rcx), %rcx	 RIP: 4b1612	 Bytes: 4
  %loadMem_4b1612 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1612 = call %struct.Memory* @routine_movq_0x8__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1612)
  store %struct.Memory* %call_4b1612, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rdx	 RIP: 4b1616	 Bytes: 4
  %loadMem_4b1616 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1616 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1616)
  store %struct.Memory* %call_4b1616, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 4b161a	 Bytes: 4
  %loadMem_4b161a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b161a = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b161a)
  store %struct.Memory* %call_4b161a, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdx	 RIP: 4b161e	 Bytes: 4
  %loadMem_4b161e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b161e = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b161e)
  store %struct.Memory* %call_4b161e, %struct.Memory** %MEMORY

  ; Code: movl (%rcx,%rdx,4), %eax	 RIP: 4b1622	 Bytes: 3
  %loadMem_4b1622 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1622 = call %struct.Memory* @routine_movl___rcx__rdx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1622)
  store %struct.Memory* %call_4b1622, %struct.Memory** %MEMORY

  ; Code: movq 0x70fcf8, %rcx	 RIP: 4b1625	 Bytes: 8
  %loadMem_4b1625 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1625 = call %struct.Memory* @routine_movq_0x70fcf8___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1625)
  store %struct.Memory* %call_4b1625, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rcx), %rcx	 RIP: 4b162d	 Bytes: 4
  %loadMem_4b162d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b162d = call %struct.Memory* @routine_movq_0x8__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b162d)
  store %struct.Memory* %call_4b162d, %struct.Memory** %MEMORY

  ; Code: movslq -0x8(%rbp), %rdx	 RIP: 4b1631	 Bytes: 4
  %loadMem_4b1631 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1631 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1631)
  store %struct.Memory* %call_4b1631, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 4b1635	 Bytes: 4
  %loadMem_4b1635 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1635 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1635)
  store %struct.Memory* %call_4b1635, %struct.Memory** %MEMORY

  ; Code: movslq -0xc(%rbp), %rdx	 RIP: 4b1639	 Bytes: 4
  %loadMem_4b1639 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1639 = call %struct.Memory* @routine_movslq_MINUS0xc__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1639)
  store %struct.Memory* %call_4b1639, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 4b163d	 Bytes: 4
  %loadMem_4b163d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b163d = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b163d)
  store %struct.Memory* %call_4b163d, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdx	 RIP: 4b1641	 Bytes: 4
  %loadMem_4b1641 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1641 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1641)
  store %struct.Memory* %call_4b1641, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx,%rdx,4)	 RIP: 4b1645	 Bytes: 3
  %loadMem_4b1645 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1645 = call %struct.Memory* @routine_movl__eax____rcx__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1645)
  store %struct.Memory* %call_4b1645, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %eax	 RIP: 4b1648	 Bytes: 3
  %loadMem_4b1648 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1648 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1648)
  store %struct.Memory* %call_4b1648, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4b164b	 Bytes: 3
  %loadMem_4b164b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b164b = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b164b)
  store %struct.Memory* %call_4b164b, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x28(%rbp)	 RIP: 4b164e	 Bytes: 3
  %loadMem_4b164e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b164e = call %struct.Memory* @routine_movl__eax__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b164e)
  store %struct.Memory* %call_4b164e, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4b158f	 RIP: 4b1651	 Bytes: 5
  %loadMem_4b1651 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1651 = call %struct.Memory* @routine_jmpq_.L_4b158f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1651, i64 -194, i64 5)
  store %struct.Memory* %call_4b1651, %struct.Memory** %MEMORY

  br label %block_.L_4b158f

  ; Code: .L_4b1656:	 RIP: 4b1656	 Bytes: 0
block_.L_4b1656:

  ; Code: jmpq .L_4b165b	 RIP: 4b1656	 Bytes: 5
  %loadMem_4b1656 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1656 = call %struct.Memory* @routine_jmpq_.L_4b165b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1656, i64 5, i64 5)
  store %struct.Memory* %call_4b1656, %struct.Memory** %MEMORY

  br label %block_.L_4b165b

  ; Code: .L_4b165b:	 RIP: 4b165b	 Bytes: 0
block_.L_4b165b:

  ; Code: movl -0xc(%rbp), %eax	 RIP: 4b165b	 Bytes: 3
  %loadMem_4b165b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b165b = call %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b165b)
  store %struct.Memory* %call_4b165b, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4b165e	 Bytes: 3
  %loadMem_4b165e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b165e = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b165e)
  store %struct.Memory* %call_4b165e, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xc(%rbp)	 RIP: 4b1661	 Bytes: 3
  %loadMem_4b1661 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1661 = call %struct.Memory* @routine_movl__eax__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1661)
  store %struct.Memory* %call_4b1661, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4b1578	 RIP: 4b1664	 Bytes: 5
  %loadMem_4b1664 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1664 = call %struct.Memory* @routine_jmpq_.L_4b1578(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1664, i64 -236, i64 5)
  store %struct.Memory* %call_4b1664, %struct.Memory** %MEMORY

  br label %block_.L_4b1578

  ; Code: .L_4b1669:	 RIP: 4b1669	 Bytes: 0
block_.L_4b1669:

  ; Code: jmpq .L_4b166e	 RIP: 4b1669	 Bytes: 5
  %loadMem_4b1669 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1669 = call %struct.Memory* @routine_jmpq_.L_4b166e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1669, i64 5, i64 5)
  store %struct.Memory* %call_4b1669, %struct.Memory** %MEMORY

  br label %block_.L_4b166e

  ; Code: .L_4b166e:	 RIP: 4b166e	 Bytes: 0
block_.L_4b166e:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 4b166e	 Bytes: 3
  %loadMem_4b166e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b166e = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b166e)
  store %struct.Memory* %call_4b166e, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4b1671	 Bytes: 3
  %loadMem_4b1671 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1671 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1671)
  store %struct.Memory* %call_4b1671, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x8(%rbp)	 RIP: 4b1674	 Bytes: 3
  %loadMem_4b1674 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1674 = call %struct.Memory* @routine_movl__eax__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1674)
  store %struct.Memory* %call_4b1674, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4b1561	 RIP: 4b1677	 Bytes: 5
  %loadMem_4b1677 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1677 = call %struct.Memory* @routine_jmpq_.L_4b1561(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1677, i64 -278, i64 5)
  store %struct.Memory* %call_4b1677, %struct.Memory** %MEMORY

  br label %block_.L_4b1561

  ; Code: .L_4b167c:	 RIP: 4b167c	 Bytes: 0
block_.L_4b167c:

  ; Code: jmpq .L_4b1681	 RIP: 4b167c	 Bytes: 5
  %loadMem_4b167c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b167c = call %struct.Memory* @routine_jmpq_.L_4b1681(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b167c, i64 5, i64 5)
  store %struct.Memory* %call_4b167c, %struct.Memory** %MEMORY

  br label %block_.L_4b1681

  ; Code: .L_4b1681:	 RIP: 4b1681	 Bytes: 0
block_.L_4b1681:

  ; Code: movl $0x0, -0x8a44(%rbp)	 RIP: 4b1681	 Bytes: 10
  %loadMem_4b1681 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1681 = call %struct.Memory* @routine_movl__0x0__MINUS0x8a44__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1681)
  store %struct.Memory* %call_4b1681, %struct.Memory** %MEMORY

  ; Code: .L_4b168b:	 RIP: 4b168b	 Bytes: 0
  br label %block_.L_4b168b
block_.L_4b168b:

  ; Code: movl -0x8a44(%rbp), %eax	 RIP: 4b168b	 Bytes: 6
  %loadMem_4b168b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b168b = call %struct.Memory* @routine_movl_MINUS0x8a44__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b168b)
  store %struct.Memory* %call_4b168b, %struct.Memory** %MEMORY

  ; Code: movl -0x324(%rbp), %ecx	 RIP: 4b1691	 Bytes: 6
  %loadMem_4b1691 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1691 = call %struct.Memory* @routine_movl_MINUS0x324__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1691)
  store %struct.Memory* %call_4b1691, %struct.Memory** %MEMORY

  ; Code: addl $0x2, %ecx	 RIP: 4b1697	 Bytes: 3
  %loadMem_4b1697 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1697 = call %struct.Memory* @routine_addl__0x2___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1697)
  store %struct.Memory* %call_4b1697, %struct.Memory** %MEMORY

  ; Code: cmpl %ecx, %eax	 RIP: 4b169a	 Bytes: 2
  %loadMem_4b169a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b169a = call %struct.Memory* @routine_cmpl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b169a)
  store %struct.Memory* %call_4b169a, %struct.Memory** %MEMORY

  ; Code: jge .L_4b179a	 RIP: 4b169c	 Bytes: 6
  %loadMem_4b169c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b169c = call %struct.Memory* @routine_jge_.L_4b179a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b169c, i8* %BRANCH_TAKEN, i64 254, i64 6, i64 6)
  store %struct.Memory* %call_4b169c, %struct.Memory** %MEMORY

  %loadBr_4b169c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4b169c = icmp eq i8 %loadBr_4b169c, 1
  br i1 %cmpBr_4b169c, label %block_.L_4b179a, label %block_4b16a2

block_4b16a2:
  ; Code: movl $0x0, -0x24(%rbp)	 RIP: 4b16a2	 Bytes: 7
  %loadMem_4b16a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b16a2 = call %struct.Memory* @routine_movl__0x0__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b16a2)
  store %struct.Memory* %call_4b16a2, %struct.Memory** %MEMORY

  ; Code: .L_4b16a9:	 RIP: 4b16a9	 Bytes: 0
  br label %block_.L_4b16a9
block_.L_4b16a9:

  ; Code: movl -0x24(%rbp), %eax	 RIP: 4b16a9	 Bytes: 3
  %loadMem_4b16a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b16a9 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b16a9)
  store %struct.Memory* %call_4b16a9, %struct.Memory** %MEMORY

  ; Code: movslq -0x8a44(%rbp), %rcx	 RIP: 4b16ac	 Bytes: 7
  %loadMem_4b16ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b16ac = call %struct.Memory* @routine_movslq_MINUS0x8a44__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b16ac)
  store %struct.Memory* %call_4b16ac, %struct.Memory** %MEMORY

  ; Code: cmpl 0x7247b0(,%rcx,4), %eax	 RIP: 4b16b3	 Bytes: 7
  %loadMem_4b16b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b16b3 = call %struct.Memory* @routine_cmpl_0x7247b0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b16b3)
  store %struct.Memory* %call_4b16b3, %struct.Memory** %MEMORY

  ; Code: jge .L_4b176f	 RIP: 4b16ba	 Bytes: 6
  %loadMem_4b16ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b16ba = call %struct.Memory* @routine_jge_.L_4b176f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b16ba, i8* %BRANCH_TAKEN, i64 181, i64 6, i64 6)
  store %struct.Memory* %call_4b16ba, %struct.Memory** %MEMORY

  %loadBr_4b16ba = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4b16ba = icmp eq i8 %loadBr_4b16ba, 1
  br i1 %cmpBr_4b16ba, label %block_.L_4b176f, label %block_4b16c0

block_4b16c0:
  ; Code: movl $0x0, -0x28(%rbp)	 RIP: 4b16c0	 Bytes: 7
  %loadMem_4b16c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b16c0 = call %struct.Memory* @routine_movl__0x0__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b16c0)
  store %struct.Memory* %call_4b16c0, %struct.Memory** %MEMORY

  ; Code: .L_4b16c7:	 RIP: 4b16c7	 Bytes: 0
  br label %block_.L_4b16c7
block_.L_4b16c7:

  ; Code: cmpl $0x3, -0x28(%rbp)	 RIP: 4b16c7	 Bytes: 4
  %loadMem_4b16c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b16c7 = call %struct.Memory* @routine_cmpl__0x3__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b16c7)
  store %struct.Memory* %call_4b16c7, %struct.Memory** %MEMORY

  ; Code: jge .L_4b174a	 RIP: 4b16cb	 Bytes: 6
  %loadMem_4b16cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b16cb = call %struct.Memory* @routine_jge_.L_4b174a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b16cb, i8* %BRANCH_TAKEN, i64 127, i64 6, i64 6)
  store %struct.Memory* %call_4b16cb, %struct.Memory** %MEMORY

  %loadBr_4b16cb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4b16cb = icmp eq i8 %loadBr_4b16cb, 1
  br i1 %cmpBr_4b16cb, label %block_.L_4b174a, label %block_4b16d1

block_4b16d1:
  ; Code: movq 0x6d4740, %rax	 RIP: 4b16d1	 Bytes: 8
  %loadMem_4b16d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b16d1 = call %struct.Memory* @routine_movq_0x6d4740___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b16d1)
  store %struct.Memory* %call_4b16d1, %struct.Memory** %MEMORY

  ; Code: movslq -0x8a44(%rbp), %rcx	 RIP: 4b16d9	 Bytes: 7
  %loadMem_4b16d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b16d9 = call %struct.Memory* @routine_movslq_MINUS0x8a44__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b16d9)
  store %struct.Memory* %call_4b16d9, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 4b16e0	 Bytes: 4
  %loadMem_4b16e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b16e0 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b16e0)
  store %struct.Memory* %call_4b16e0, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rcx	 RIP: 4b16e4	 Bytes: 4
  %loadMem_4b16e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b16e4 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b16e4)
  store %struct.Memory* %call_4b16e4, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 4b16e8	 Bytes: 4
  %loadMem_4b16e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b16e8 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b16e8)
  store %struct.Memory* %call_4b16e8, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 4b16ec	 Bytes: 4
  %loadMem_4b16ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b16ec = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b16ec)
  store %struct.Memory* %call_4b16ec, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rcx,4), %edx	 RIP: 4b16f0	 Bytes: 3
  %loadMem_4b16f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b16f0 = call %struct.Memory* @routine_movl___rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b16f0)
  store %struct.Memory* %call_4b16f0, %struct.Memory** %MEMORY

  ; Code: cmpl -0x31c(%rbp), %edx	 RIP: 4b16f3	 Bytes: 6
  %loadMem_4b16f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b16f3 = call %struct.Memory* @routine_cmpl_MINUS0x31c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b16f3)
  store %struct.Memory* %call_4b16f3, %struct.Memory** %MEMORY

  ; Code: jne .L_4b1728	 RIP: 4b16f9	 Bytes: 6
  %loadMem_4b16f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b16f9 = call %struct.Memory* @routine_jne_.L_4b1728(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b16f9, i8* %BRANCH_TAKEN, i64 47, i64 6, i64 6)
  store %struct.Memory* %call_4b16f9, %struct.Memory** %MEMORY

  %loadBr_4b16f9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4b16f9 = icmp eq i8 %loadBr_4b16f9, 1
  br i1 %cmpBr_4b16f9, label %block_.L_4b1728, label %block_4b16ff

block_4b16ff:
  ; Code: movq 0x6f9728, %rax	 RIP: 4b16ff	 Bytes: 8
  %loadMem_4b16ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b16ff = call %struct.Memory* @routine_movq_0x6f9728___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b16ff)
  store %struct.Memory* %call_4b16ff, %struct.Memory** %MEMORY

  ; Code: movslq -0x8a44(%rbp), %rcx	 RIP: 4b1707	 Bytes: 7
  %loadMem_4b1707 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1707 = call %struct.Memory* @routine_movslq_MINUS0x8a44__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1707)
  store %struct.Memory* %call_4b1707, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 4b170e	 Bytes: 4
  %loadMem_4b170e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b170e = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b170e)
  store %struct.Memory* %call_4b170e, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rcx	 RIP: 4b1712	 Bytes: 4
  %loadMem_4b1712 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1712 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1712)
  store %struct.Memory* %call_4b1712, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 4b1716	 Bytes: 4
  %loadMem_4b1716 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1716 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1716)
  store %struct.Memory* %call_4b1716, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rcx	 RIP: 4b171a	 Bytes: 4
  %loadMem_4b171a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b171a = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b171a)
  store %struct.Memory* %call_4b171a, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, (%rax,%rcx,4)	 RIP: 4b171e	 Bytes: 4
  %loadMem_4b171e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b171e = call %struct.Memory* @routine_cmpl__0x0____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b171e)
  store %struct.Memory* %call_4b171e, %struct.Memory** %MEMORY

  ; Code: je .L_4b1737	 RIP: 4b1722	 Bytes: 6
  %loadMem_4b1722 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1722 = call %struct.Memory* @routine_je_.L_4b1737(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1722, i8* %BRANCH_TAKEN, i64 21, i64 6, i64 6)
  store %struct.Memory* %call_4b1722, %struct.Memory** %MEMORY

  %loadBr_4b1722 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4b1722 = icmp eq i8 %loadBr_4b1722, 1
  br i1 %cmpBr_4b1722, label %block_.L_4b1737, label %block_.L_4b1728

  ; Code: .L_4b1728:	 RIP: 4b1728	 Bytes: 0
block_.L_4b1728:

  ; Code: movl $0x1, -0x8a50(%rbp)	 RIP: 4b1728	 Bytes: 10
  %loadMem_4b1728 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1728 = call %struct.Memory* @routine_movl__0x1__MINUS0x8a50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1728)
  store %struct.Memory* %call_4b1728, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4b174a	 RIP: 4b1732	 Bytes: 5
  %loadMem_4b1732 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1732 = call %struct.Memory* @routine_jmpq_.L_4b174a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1732, i64 24, i64 5)
  store %struct.Memory* %call_4b1732, %struct.Memory** %MEMORY

  br label %block_.L_4b174a

  ; Code: .L_4b1737:	 RIP: 4b1737	 Bytes: 0
block_.L_4b1737:

  ; Code: jmpq .L_4b173c	 RIP: 4b1737	 Bytes: 5
  %loadMem_4b1737 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1737 = call %struct.Memory* @routine_jmpq_.L_4b173c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1737, i64 5, i64 5)
  store %struct.Memory* %call_4b1737, %struct.Memory** %MEMORY

  br label %block_.L_4b173c

  ; Code: .L_4b173c:	 RIP: 4b173c	 Bytes: 0
block_.L_4b173c:

  ; Code: movl -0x28(%rbp), %eax	 RIP: 4b173c	 Bytes: 3
  %loadMem_4b173c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b173c = call %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b173c)
  store %struct.Memory* %call_4b173c, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4b173f	 Bytes: 3
  %loadMem_4b173f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b173f = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b173f)
  store %struct.Memory* %call_4b173f, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x28(%rbp)	 RIP: 4b1742	 Bytes: 3
  %loadMem_4b1742 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1742 = call %struct.Memory* @routine_movl__eax__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1742)
  store %struct.Memory* %call_4b1742, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4b16c7	 RIP: 4b1745	 Bytes: 5
  %loadMem_4b1745 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1745 = call %struct.Memory* @routine_jmpq_.L_4b16c7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1745, i64 -126, i64 5)
  store %struct.Memory* %call_4b1745, %struct.Memory** %MEMORY

  br label %block_.L_4b16c7

  ; Code: .L_4b174a:	 RIP: 4b174a	 Bytes: 0
block_.L_4b174a:

  ; Code: cmpl $0x1, -0x8a50(%rbp)	 RIP: 4b174a	 Bytes: 7
  %loadMem_4b174a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b174a = call %struct.Memory* @routine_cmpl__0x1__MINUS0x8a50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b174a)
  store %struct.Memory* %call_4b174a, %struct.Memory** %MEMORY

  ; Code: jne .L_4b175c	 RIP: 4b1751	 Bytes: 6
  %loadMem_4b1751 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1751 = call %struct.Memory* @routine_jne_.L_4b175c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1751, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_4b1751, %struct.Memory** %MEMORY

  %loadBr_4b1751 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4b1751 = icmp eq i8 %loadBr_4b1751, 1
  br i1 %cmpBr_4b1751, label %block_.L_4b175c, label %block_4b1757

block_4b1757:
  ; Code: jmpq .L_4b176f	 RIP: 4b1757	 Bytes: 5
  %loadMem_4b1757 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1757 = call %struct.Memory* @routine_jmpq_.L_4b176f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1757, i64 24, i64 5)
  store %struct.Memory* %call_4b1757, %struct.Memory** %MEMORY

  br label %block_.L_4b176f

  ; Code: .L_4b175c:	 RIP: 4b175c	 Bytes: 0
block_.L_4b175c:

  ; Code: jmpq .L_4b1761	 RIP: 4b175c	 Bytes: 5
  %loadMem_4b175c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b175c = call %struct.Memory* @routine_jmpq_.L_4b1761(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b175c, i64 5, i64 5)
  store %struct.Memory* %call_4b175c, %struct.Memory** %MEMORY

  br label %block_.L_4b1761

  ; Code: .L_4b1761:	 RIP: 4b1761	 Bytes: 0
block_.L_4b1761:

  ; Code: movl -0x24(%rbp), %eax	 RIP: 4b1761	 Bytes: 3
  %loadMem_4b1761 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1761 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1761)
  store %struct.Memory* %call_4b1761, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4b1764	 Bytes: 3
  %loadMem_4b1764 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1764 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1764)
  store %struct.Memory* %call_4b1764, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x24(%rbp)	 RIP: 4b1767	 Bytes: 3
  %loadMem_4b1767 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1767 = call %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1767)
  store %struct.Memory* %call_4b1767, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4b16a9	 RIP: 4b176a	 Bytes: 5
  %loadMem_4b176a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b176a = call %struct.Memory* @routine_jmpq_.L_4b16a9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b176a, i64 -193, i64 5)
  store %struct.Memory* %call_4b176a, %struct.Memory** %MEMORY

  br label %block_.L_4b16a9

  ; Code: .L_4b176f:	 RIP: 4b176f	 Bytes: 0
block_.L_4b176f:

  ; Code: cmpl $0x1, -0x8a50(%rbp)	 RIP: 4b176f	 Bytes: 7
  %loadMem_4b176f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b176f = call %struct.Memory* @routine_cmpl__0x1__MINUS0x8a50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b176f)
  store %struct.Memory* %call_4b176f, %struct.Memory** %MEMORY

  ; Code: jne .L_4b1781	 RIP: 4b1776	 Bytes: 6
  %loadMem_4b1776 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1776 = call %struct.Memory* @routine_jne_.L_4b1781(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1776, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_4b1776, %struct.Memory** %MEMORY

  %loadBr_4b1776 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4b1776 = icmp eq i8 %loadBr_4b1776, 1
  br i1 %cmpBr_4b1776, label %block_.L_4b1781, label %block_4b177c

block_4b177c:
  ; Code: jmpq .L_4b179a	 RIP: 4b177c	 Bytes: 5
  %loadMem_4b177c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b177c = call %struct.Memory* @routine_jmpq_.L_4b179a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b177c, i64 30, i64 5)
  store %struct.Memory* %call_4b177c, %struct.Memory** %MEMORY

  br label %block_.L_4b179a

  ; Code: .L_4b1781:	 RIP: 4b1781	 Bytes: 0
block_.L_4b1781:

  ; Code: jmpq .L_4b1786	 RIP: 4b1781	 Bytes: 5
  %loadMem_4b1781 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1781 = call %struct.Memory* @routine_jmpq_.L_4b1786(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1781, i64 5, i64 5)
  store %struct.Memory* %call_4b1781, %struct.Memory** %MEMORY

  br label %block_.L_4b1786

  ; Code: .L_4b1786:	 RIP: 4b1786	 Bytes: 0
block_.L_4b1786:

  ; Code: movl -0x8a44(%rbp), %eax	 RIP: 4b1786	 Bytes: 6
  %loadMem_4b1786 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1786 = call %struct.Memory* @routine_movl_MINUS0x8a44__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1786)
  store %struct.Memory* %call_4b1786, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4b178c	 Bytes: 3
  %loadMem_4b178c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b178c = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b178c)
  store %struct.Memory* %call_4b178c, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x8a44(%rbp)	 RIP: 4b178f	 Bytes: 6
  %loadMem_4b178f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b178f = call %struct.Memory* @routine_movl__eax__MINUS0x8a44__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b178f)
  store %struct.Memory* %call_4b178f, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4b168b	 RIP: 4b1795	 Bytes: 5
  %loadMem_4b1795 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b1795 = call %struct.Memory* @routine_jmpq_.L_4b168b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b1795, i64 -266, i64 5)
  store %struct.Memory* %call_4b1795, %struct.Memory** %MEMORY

  br label %block_.L_4b168b

  ; Code: .L_4b179a:	 RIP: 4b179a	 Bytes: 0
block_.L_4b179a:

  ; Code: movl -0x8a50(%rbp), %eax	 RIP: 4b179a	 Bytes: 6
  %loadMem_4b179a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b179a = call %struct.Memory* @routine_movl_MINUS0x8a50__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b179a)
  store %struct.Memory* %call_4b179a, %struct.Memory** %MEMORY

  ; Code: addq $0x8a90, %rsp	 RIP: 4b17a0	 Bytes: 7
  %loadMem_4b17a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b17a0 = call %struct.Memory* @routine_addq__0x8a90___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b17a0)
  store %struct.Memory* %call_4b17a0, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 4b17a7	 Bytes: 1
  %loadMem_4b17a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b17a7 = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b17a7)
  store %struct.Memory* %call_4b17a7, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 4b17a8	 Bytes: 1
  %loadMem_4b17a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4b17a8 = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4b17a8)
  store %struct.Memory* %call_4b17a8, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_4b17a8
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

define %struct.Memory* @routine_je_.L_4b0644(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_MINUS0x8a5c__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 35420
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


define %struct.Memory* @routine_movl__esi__MINUS0x8a60__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 35424
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

define %struct.Memory* @routine_jmpq_.L_4b0651(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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


define %struct.Memory* @routine_movl__eax__MINUS0x324__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 804
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

define %struct.Memory* @routine_movl__0x0__MINUS0x8a50__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
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


define %struct.Memory* @routine_movl__ecx__MINUS0x8a64__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 35428
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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


define %struct.Memory* @routine_movl__eax__0x7107a0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x7107a0_type* @G_0x7107a0 to i64), i64 %10)
  ret %struct.Memory* %13
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










define %struct.Memory* @routine_movl__eax__0x710790(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x710790_type* @G_0x710790 to i64), i64 %10)
  ret %struct.Memory* %13
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






define %struct.Memory* @routine_movl__eax__MINUS0x320__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 800
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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


define %struct.Memory* @routine_movl_MINUS0x324__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 804
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

define %struct.Memory* @routine_jge_.L_4b0803(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jge_.L_4b07f0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x3__MINUS0x10__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 3)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_4b07dd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movslq_MINUS0x10__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__edx____rsi__rdi_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 11
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RSI
  %16 = load i64, i64* %RDI
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












define %struct.Memory* @routine_movl__0x0____rsi__rdi_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = mul i64 %13, 4
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 7
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %15, i64 0)
  ret %struct.Memory* %18
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


define %struct.Memory* @routine_jmpq_.L_4b0725(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_4b07e2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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


define %struct.Memory* @routine_jmpq_.L_4b070a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_4b07f5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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


define %struct.Memory* @routine_jmpq_.L_4b06ef(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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


define %struct.Memory* @routine_jge_.L_4b0cda(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jge_.L_4b0cc7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jge_.L_4b0870(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_4b08e7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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

define %struct.Memory* @routine_jle_.L_4b08af(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_4b08db(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


















define %struct.Memory* @routine_movl__edx__MINUS0x8a6c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 35436
  %14 = load i32, i32* %EDX
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


define %struct.Memory* @routine_jge_.L_4b092a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_4b0991(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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


define %struct.Memory* @routine_jle_.L_4b0961(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_4b0985(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}














define %struct.Memory* @routine_movl__ecx__MINUS0x8a74__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 35444
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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




define %struct.Memory* @routine_movl_MINUS0x8a70__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 35440
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_jge_.L_4b0cb4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x0__MINUS0x8a54__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 35412
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
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

define %struct.Memory* @routine_jne_.L_4b0a72(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x20____rdx__rsi_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = mul i64 %13, 4
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 7
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %15, i64 32)
  ret %struct.Memory* %18
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


define %struct.Memory* @routine_movl__0x20____rcx__rdx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %15, i64 32)
  ret %struct.Memory* %18
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


define %struct.Memory* @routine_jmpq_.L_4b0ca1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_movl_MINUS0x8a54__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 35412
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
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




define %struct.Memory* @routine_movl_MINUS0x8a78__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 35448
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

define %struct.Memory* @routine_idivl_MINUS0x8a54__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 35412
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

define %struct.Memory* @routine_imull_MINUS0x8a58__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = sub i64 %13, 35416
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


define %struct.Memory* @routine_jge_.L_4b0acf(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_4b0b1c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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


define %struct.Memory* @routine_jle_.L_4b0afa(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_4b0b10(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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

define %struct.Memory* @routine_jl_.L_4b0bc1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jle_.L_4b0bf2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




















define %struct.Memory* @routine_movl__0x20____rax__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %15, i64 32)
  ret %struct.Memory* %18
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






































define %struct.Memory* @routine_jmpq_.L_4b0ca6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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


define %struct.Memory* @routine_jmpq_.L_4b09a4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_4b0cb9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_4b0821(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_4b0ccc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_4b080a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_cmpl__0x1__MINUS0x4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_4b0f6f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jge_.L_4b0e22(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jge_.L_4b0e0f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jge_.L_4b0dfc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jne_.L_4b0d3f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl__eax__MINUS0x8a84__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 35460
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_4b0d4c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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








define %struct.Memory* @routine_jmpq_.L_4b0d19(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_4b0e01(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_4b0d02(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_4b0e14(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_4b0ceb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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








define %struct.Memory* @routine_jge_.L_4b0f6a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jge_.L_4b0f51(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_4b0e4a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_4b0f56(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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


define %struct.Memory* @routine_jmpq_.L_4b0e2c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_4b1681(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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


define %struct.Memory* @routine_jge_.L_4b0feb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jge_.L_4b0fd8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq_0x27546c__rip____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0x27546c__rip__type* @G_0x27546c__rip_ to i64)
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










define %struct.Memory* @routine_jmpq_.L_4b0f91(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_4b0fdd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_4b0f76(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}












define %struct.Memory* @routine_jge_.L_4b12d1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_jge_.L_4b12b8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jge_.L_4b1102(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_jmpq_.L_4b109c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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


define %struct.Memory* @routine_jne_.L_4b1138(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jp_.L_4b1138(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_4b117e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movsd_0x748__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0x748__rip__type* @G_0x748__rip_ to i64)
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

define %struct.Memory* @routine_cvtsi2sdl_MINUS0x31c__rbp____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 796
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


define %struct.Memory* @routine_jmpq_.L_4b118a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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


define %struct.Memory* @routine_jl_.L_4b11a4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jle_.L_4b11b0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jmpq_.L_4b1013(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_4b12bd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_4b0ff5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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


define %struct.Memory* @routine_jne_.L_4b140d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_jge_.L_4b1408(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_jge_.L_4b13ef(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jge_.L_4b13dc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jmpq_.L_4b132c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_4b13e1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_4b130e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_4b13f4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_4b12f0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_4b155a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}












define %struct.Memory* @routine_jge_.L_4b1555(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_jge_.L_4b153c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


































































































define %struct.Memory* @routine_jmpq_.L_4b1435(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_4b1541(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_4b1417(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}










define %struct.Memory* @routine_jge_.L_4b167c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jge_.L_4b1669(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jge_.L_4b1656(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jne_.L_4b15b5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_4b15c2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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
































define %struct.Memory* @routine_jmpq_.L_4b158f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_4b165b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_4b1578(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_4b166e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_4b1561(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}














define %struct.Memory* @routine_jge_.L_4b179a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_jge_.L_4b176f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jge_.L_4b174a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq_0x6d4740___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x6d4740_type* @G_0x6d4740 to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_cmpl_MINUS0x31c__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i32, i32* %EDX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %RBP
  %15 = sub i64 %14, 796
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jne_.L_4b1728(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_cmpl__0x0____rax__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %15, i64 0)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_je_.L_4b1737(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x1__MINUS0x8a50__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jmpq_.L_4b174a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_4b173c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_4b16c7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_cmpl__0x1__MINUS0x8a50__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_4b175c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_4b176f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_4b1761(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_4b16a9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_jne_.L_4b1781(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_4b179a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_4b1786(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_4b168b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movl_MINUS0x8a50__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 35408
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
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

