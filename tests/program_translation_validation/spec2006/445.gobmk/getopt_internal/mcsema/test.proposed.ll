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
@seg_400558__eh_frame = internal constant %seg_400558__eh_frame_type <{ [208 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\07\10\10\00\00\00\1C\00\00\00(\FE\FF\FF+\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\10\00\00\00\1C\00\00\00,\FE\FF\FF\02\00\00\00\00\00\00\00\14\00\00\000\00\00\00\D0\FE\FF\FF\0D\00\00\00\00\00\00\00\00\00\00\00D\00\00\00H\00\00\00\D0\FE\FF\FFe\00\00\00\00B\0E\10\8F\02B\0E\18\8E\03E\0E \8D\04B\0E(\8C\05H\0E0\86\06H\0E8\83\07M\0E@r\0E8A\0E0A\0E(B\0E B\0E\18B\0E\10B\0E\08\00\10\00\00\00\90\00\00\00\F8\FE\FF\FF\02\00\00\00\00\00\00\00\00\00\00\00" }>

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

declare %struct.Memory* @sub_4e2080._getopt_initialize(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4e2170.exchange(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_401030.strchr_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Data Access Globals
%G_0x99c070_type = type <{ [4 x i8] }>
@G_0x99c070= global %G_0x99c070_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x99c074_type = type <{ [1 x i8] }>
@G_0x99c074= global %G_0x99c074_type <{ [1 x i8] c"\00" }>
%G_0x99c078_type = type <{ [4 x i8] }>
@G_0x99c078= global %G_0x99c078_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x99c0a0_type = type <{ [8 x i8] }>
@G_0x99c0a0= global %G_0x99c0a0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0xafc470_type = type <{ [8 x i8] }>
@G_0xafc470= global %G_0xafc470_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0xafc478_type = type <{ [4 x i8] }>
@G_0xafc478= global %G_0xafc478_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0xafc47c_type = type <{ [4 x i8] }>
@G_0xafc47c= global %G_0xafc47c_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0xafc480_type = type <{ [1 x i8] }>
@G_0xafc480= global %G_0xafc480_type <{ [1 x i8] c"\00" }>
%G_0xafc488_type = type <{ [1 x i8] }>
@G_0xafc488= global %G_0xafc488_type <{ [1 x i8] c"\00" }>
%G_0xb89e50_type = type <{ [8 x i8] }>
@G_0xb89e50= global %G_0xb89e50_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0xb8af30_type = type <{ [4 x i8] }>
@G_0xb8af30= global %G_0xb8af30_type <{ [4 x i8] c"\00\00\00\00" }>
%G__0x58898d_type = type <{ [8 x i8] }>
@G__0x58898d= global %G__0x58898d_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x595178_type = type <{ [4 x i8] }>
@G__0x595178= global %G__0x595178_type <{ [4 x i8] c"\00\00\00\00" }>
%G__0x59517b_type = type <{ [8 x i8] }>
@G__0x59517b= global %G__0x59517b_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x595199_type = type <{ [8 x i8] }>
@G__0x595199= global %G__0x595199_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x5951c6_type = type <{ [8 x i8] }>
@G__0x5951c6= global %G__0x5951c6_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x5951f3_type = type <{ [8 x i8] }>
@G__0x5951f3= global %G__0x5951f3_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x595219_type = type <{ [8 x i8] }>
@G__0x595219= global %G__0x595219_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x595239_type = type <{ [8 x i8] }>
@G__0x595239= global %G__0x595239_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x595259_type = type <{ [8 x i8] }>
@G__0x595259= global %G__0x595259_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x595273_type = type <{ [8 x i8] }>
@G__0x595273= global %G__0x595273_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x59528d_type = type <{ [8 x i8] }>
@G__0x59528d= global %G__0x59528d_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x5952b4_type = type <{ [8 x i8] }>
@G__0x5952b4= global %G__0x5952b4_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x5952d5_type = type <{ [8 x i8] }>
@G__0x5952d5= global %G__0x5952d5_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>


define %struct.Memory* @getopt_internal(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .getopt_internal:	 RIP: 4e0e80	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 4e0e80	 Bytes: 1
  %loadMem_4e0e80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e0e80 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e0e80)
  store %struct.Memory* %call_4e0e80, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 4e0e81	 Bytes: 3
  %loadMem_4e0e81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e0e81 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e0e81)
  store %struct.Memory* %call_4e0e81, %struct.Memory** %MEMORY

  ; Code: subq $0x100, %rsp	 RIP: 4e0e84	 Bytes: 7
  %loadMem_4e0e84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e0e84 = call %struct.Memory* @routine_subq__0x100___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e0e84)
  store %struct.Memory* %call_4e0e84, %struct.Memory** %MEMORY

  ; Code: movl %edi, -0x8(%rbp)	 RIP: 4e0e8b	 Bytes: 3
  %loadMem_4e0e8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e0e8b = call %struct.Memory* @routine_movl__edi__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e0e8b)
  store %struct.Memory* %call_4e0e8b, %struct.Memory** %MEMORY

  ; Code: movq %rsi, -0x10(%rbp)	 RIP: 4e0e8e	 Bytes: 4
  %loadMem_4e0e8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e0e8e = call %struct.Memory* @routine_movq__rsi__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e0e8e)
  store %struct.Memory* %call_4e0e8e, %struct.Memory** %MEMORY

  ; Code: movq %rdx, -0x18(%rbp)	 RIP: 4e0e92	 Bytes: 4
  %loadMem_4e0e92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e0e92 = call %struct.Memory* @routine_movq__rdx__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e0e92)
  store %struct.Memory* %call_4e0e92, %struct.Memory** %MEMORY

  ; Code: movq %rcx, -0x20(%rbp)	 RIP: 4e0e96	 Bytes: 4
  %loadMem_4e0e96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e0e96 = call %struct.Memory* @routine_movq__rcx__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e0e96)
  store %struct.Memory* %call_4e0e96, %struct.Memory** %MEMORY

  ; Code: movq %r8, -0x28(%rbp)	 RIP: 4e0e9a	 Bytes: 4
  %loadMem_4e0e9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e0e9a = call %struct.Memory* @routine_movq__r8__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e0e9a)
  store %struct.Memory* %call_4e0e9a, %struct.Memory** %MEMORY

  ; Code: movl %r9d, -0x2c(%rbp)	 RIP: 4e0e9e	 Bytes: 4
  %loadMem_4e0e9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e0e9e = call %struct.Memory* @routine_movl__r9d__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e0e9e)
  store %struct.Memory* %call_4e0e9e, %struct.Memory** %MEMORY

  ; Code: movq $0x0, 0xb89e50	 RIP: 4e0ea2	 Bytes: 12
  %loadMem_4e0ea2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e0ea2 = call %struct.Memory* @routine_movq__0x0__0xb89e50(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e0ea2)
  store %struct.Memory* %call_4e0ea2, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x99c070	 RIP: 4e0eae	 Bytes: 8
  %loadMem_4e0eae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e0eae = call %struct.Memory* @routine_cmpl__0x0__0x99c070(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e0eae)
  store %struct.Memory* %call_4e0eae, %struct.Memory** %MEMORY

  ; Code: je .L_4e0eca	 RIP: 4e0eb6	 Bytes: 6
  %loadMem_4e0eb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e0eb6 = call %struct.Memory* @routine_je_.L_4e0eca(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e0eb6, i8* %BRANCH_TAKEN, i64 20, i64 6, i64 6)
  store %struct.Memory* %call_4e0eb6, %struct.Memory** %MEMORY

  %loadBr_4e0eb6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4e0eb6 = icmp eq i8 %loadBr_4e0eb6, 1
  br i1 %cmpBr_4e0eb6, label %block_.L_4e0eca, label %block_4e0ebc

block_4e0ebc:
  ; Code: cmpl $0x0, 0xb8af30	 RIP: 4e0ebc	 Bytes: 8
  %loadMem_4e0ebc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e0ebc = call %struct.Memory* @routine_cmpl__0x0__0xb8af30(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e0ebc)
  store %struct.Memory* %call_4e0ebc, %struct.Memory** %MEMORY

  ; Code: jne .L_4e0f02	 RIP: 4e0ec4	 Bytes: 6
  %loadMem_4e0ec4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e0ec4 = call %struct.Memory* @routine_jne_.L_4e0f02(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e0ec4, i8* %BRANCH_TAKEN, i64 62, i64 6, i64 6)
  store %struct.Memory* %call_4e0ec4, %struct.Memory** %MEMORY

  %loadBr_4e0ec4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4e0ec4 = icmp eq i8 %loadBr_4e0ec4, 1
  br i1 %cmpBr_4e0ec4, label %block_.L_4e0f02, label %block_.L_4e0eca

  ; Code: .L_4e0eca:	 RIP: 4e0eca	 Bytes: 0
block_.L_4e0eca:

  ; Code: cmpl $0x0, 0x99c070	 RIP: 4e0eca	 Bytes: 8
  %loadMem_4e0eca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e0eca = call %struct.Memory* @routine_cmpl__0x0__0x99c070(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e0eca)
  store %struct.Memory* %call_4e0eca, %struct.Memory** %MEMORY

  ; Code: jne .L_4e0ee3	 RIP: 4e0ed2	 Bytes: 6
  %loadMem_4e0ed2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e0ed2 = call %struct.Memory* @routine_jne_.L_4e0ee3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e0ed2, i8* %BRANCH_TAKEN, i64 17, i64 6, i64 6)
  store %struct.Memory* %call_4e0ed2, %struct.Memory** %MEMORY

  %loadBr_4e0ed2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4e0ed2 = icmp eq i8 %loadBr_4e0ed2, 1
  br i1 %cmpBr_4e0ed2, label %block_.L_4e0ee3, label %block_4e0ed8

block_4e0ed8:
  ; Code: movl $0x1, 0x99c070	 RIP: 4e0ed8	 Bytes: 11
  %loadMem_4e0ed8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e0ed8 = call %struct.Memory* @routine_movl__0x1__0x99c070(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e0ed8)
  store %struct.Memory* %call_4e0ed8, %struct.Memory** %MEMORY

  ; Code: .L_4e0ee3:	 RIP: 4e0ee3	 Bytes: 0
  br label %block_.L_4e0ee3
block_.L_4e0ee3:

  ; Code: movl -0x8(%rbp), %edi	 RIP: 4e0ee3	 Bytes: 3
  %loadMem_4e0ee3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e0ee3 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e0ee3)
  store %struct.Memory* %call_4e0ee3, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rsi	 RIP: 4e0ee6	 Bytes: 4
  %loadMem_4e0ee6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e0ee6 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e0ee6)
  store %struct.Memory* %call_4e0ee6, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 4e0eea	 Bytes: 4
  %loadMem_4e0eea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e0eea = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e0eea)
  store %struct.Memory* %call_4e0eea, %struct.Memory** %MEMORY

  ; Code: callq ._getopt_initialize	 RIP: 4e0eee	 Bytes: 5
  %loadMem1_4e0eee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4e0eee = call %struct.Memory* @routine_callq_._getopt_initialize(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4e0eee, i64 4498, i64 5, i64 5)
  store %struct.Memory* %call1_4e0eee, %struct.Memory** %MEMORY

  %loadMem2_4e0eee = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4e0eee = load i64, i64* %3
  %call2_4e0eee = call %struct.Memory* @sub_4e2080._getopt_initialize(%struct.State* %0, i64  %loadPC_4e0eee, %struct.Memory* %loadMem2_4e0eee)
  store %struct.Memory* %call2_4e0eee, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x18(%rbp)	 RIP: 4e0ef3	 Bytes: 4
  %loadMem_4e0ef3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e0ef3 = call %struct.Memory* @routine_movq__rax__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e0ef3)
  store %struct.Memory* %call_4e0ef3, %struct.Memory** %MEMORY

  ; Code: movl $0x1, 0xb8af30	 RIP: 4e0ef7	 Bytes: 11
  %loadMem_4e0ef7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e0ef7 = call %struct.Memory* @routine_movl__0x1__0xb8af30(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e0ef7)
  store %struct.Memory* %call_4e0ef7, %struct.Memory** %MEMORY

  ; Code: .L_4e0f02:	 RIP: 4e0f02	 Bytes: 0
  br label %block_.L_4e0f02
block_.L_4e0f02:

  ; Code: cmpq $0x0, 0xafc470	 RIP: 4e0f02	 Bytes: 9
  %loadMem_4e0f02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e0f02 = call %struct.Memory* @routine_cmpq__0x0__0xafc470(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e0f02)
  store %struct.Memory* %call_4e0f02, %struct.Memory** %MEMORY

  ; Code: je .L_4e0f25	 RIP: 4e0f0b	 Bytes: 6
  %loadMem_4e0f0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e0f0b = call %struct.Memory* @routine_je_.L_4e0f25(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e0f0b, i8* %BRANCH_TAKEN, i64 26, i64 6, i64 6)
  store %struct.Memory* %call_4e0f0b, %struct.Memory** %MEMORY

  %loadBr_4e0f0b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4e0f0b = icmp eq i8 %loadBr_4e0f0b, 1
  br i1 %cmpBr_4e0f0b, label %block_.L_4e0f25, label %block_4e0f11

block_4e0f11:
  ; Code: movq 0xafc470, %rax	 RIP: 4e0f11	 Bytes: 8
  %loadMem_4e0f11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e0f11 = call %struct.Memory* @routine_movq_0xafc470___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e0f11)
  store %struct.Memory* %call_4e0f11, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax), %ecx	 RIP: 4e0f19	 Bytes: 3
  %loadMem_4e0f19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e0f19 = call %struct.Memory* @routine_movsbl___rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e0f19)
  store %struct.Memory* %call_4e0f19, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %ecx	 RIP: 4e0f1c	 Bytes: 3
  %loadMem_4e0f1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e0f1c = call %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e0f1c)
  store %struct.Memory* %call_4e0f1c, %struct.Memory** %MEMORY

  ; Code: jne .L_4e1268	 RIP: 4e0f1f	 Bytes: 6
  %loadMem_4e0f1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e0f1f = call %struct.Memory* @routine_jne_.L_4e1268(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e0f1f, i8* %BRANCH_TAKEN, i64 841, i64 6, i64 6)
  store %struct.Memory* %call_4e0f1f, %struct.Memory** %MEMORY

  %loadBr_4e0f1f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4e0f1f = icmp eq i8 %loadBr_4e0f1f, 1
  br i1 %cmpBr_4e0f1f, label %block_.L_4e1268, label %block_.L_4e0f25

  ; Code: .L_4e0f25:	 RIP: 4e0f25	 Bytes: 0
block_.L_4e0f25:

  ; Code: movl 0xafc478, %eax	 RIP: 4e0f25	 Bytes: 7
  %loadMem_4e0f25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e0f25 = call %struct.Memory* @routine_movl_0xafc478___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e0f25)
  store %struct.Memory* %call_4e0f25, %struct.Memory** %MEMORY

  ; Code: cmpl 0x99c070, %eax	 RIP: 4e0f2c	 Bytes: 7
  %loadMem_4e0f2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e0f2c = call %struct.Memory* @routine_cmpl_0x99c070___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e0f2c)
  store %struct.Memory* %call_4e0f2c, %struct.Memory** %MEMORY

  ; Code: jle .L_4e0f47	 RIP: 4e0f33	 Bytes: 6
  %loadMem_4e0f33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e0f33 = call %struct.Memory* @routine_jle_.L_4e0f47(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e0f33, i8* %BRANCH_TAKEN, i64 20, i64 6, i64 6)
  store %struct.Memory* %call_4e0f33, %struct.Memory** %MEMORY

  %loadBr_4e0f33 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4e0f33 = icmp eq i8 %loadBr_4e0f33, 1
  br i1 %cmpBr_4e0f33, label %block_.L_4e0f47, label %block_4e0f39

block_4e0f39:
  ; Code: movl 0x99c070, %eax	 RIP: 4e0f39	 Bytes: 7
  %loadMem_4e0f39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e0f39 = call %struct.Memory* @routine_movl_0x99c070___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e0f39)
  store %struct.Memory* %call_4e0f39, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0xafc478	 RIP: 4e0f40	 Bytes: 7
  %loadMem_4e0f40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e0f40 = call %struct.Memory* @routine_movl__eax__0xafc478(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e0f40)
  store %struct.Memory* %call_4e0f40, %struct.Memory** %MEMORY

  ; Code: .L_4e0f47:	 RIP: 4e0f47	 Bytes: 0
  br label %block_.L_4e0f47
block_.L_4e0f47:

  ; Code: movl 0xafc47c, %eax	 RIP: 4e0f47	 Bytes: 7
  %loadMem_4e0f47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e0f47 = call %struct.Memory* @routine_movl_0xafc47c___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e0f47)
  store %struct.Memory* %call_4e0f47, %struct.Memory** %MEMORY

  ; Code: cmpl 0x99c070, %eax	 RIP: 4e0f4e	 Bytes: 7
  %loadMem_4e0f4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e0f4e = call %struct.Memory* @routine_cmpl_0x99c070___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e0f4e)
  store %struct.Memory* %call_4e0f4e, %struct.Memory** %MEMORY

  ; Code: jle .L_4e0f69	 RIP: 4e0f55	 Bytes: 6
  %loadMem_4e0f55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e0f55 = call %struct.Memory* @routine_jle_.L_4e0f69(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e0f55, i8* %BRANCH_TAKEN, i64 20, i64 6, i64 6)
  store %struct.Memory* %call_4e0f55, %struct.Memory** %MEMORY

  %loadBr_4e0f55 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4e0f55 = icmp eq i8 %loadBr_4e0f55, 1
  br i1 %cmpBr_4e0f55, label %block_.L_4e0f69, label %block_4e0f5b

block_4e0f5b:
  ; Code: movl 0x99c070, %eax	 RIP: 4e0f5b	 Bytes: 7
  %loadMem_4e0f5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e0f5b = call %struct.Memory* @routine_movl_0x99c070___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e0f5b)
  store %struct.Memory* %call_4e0f5b, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0xafc47c	 RIP: 4e0f62	 Bytes: 7
  %loadMem_4e0f62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e0f62 = call %struct.Memory* @routine_movl__eax__0xafc47c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e0f62)
  store %struct.Memory* %call_4e0f62, %struct.Memory** %MEMORY

  ; Code: .L_4e0f69:	 RIP: 4e0f69	 Bytes: 0
  br label %block_.L_4e0f69
block_.L_4e0f69:

  ; Code: cmpl $0x1, 0xafc480	 RIP: 4e0f69	 Bytes: 8
  %loadMem_4e0f69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e0f69 = call %struct.Memory* @routine_cmpl__0x1__0xafc480(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e0f69)
  store %struct.Memory* %call_4e0f69, %struct.Memory** %MEMORY

  ; Code: jne .L_4e107c	 RIP: 4e0f71	 Bytes: 6
  %loadMem_4e0f71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e0f71 = call %struct.Memory* @routine_jne_.L_4e107c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e0f71, i8* %BRANCH_TAKEN, i64 267, i64 6, i64 6)
  store %struct.Memory* %call_4e0f71, %struct.Memory** %MEMORY

  %loadBr_4e0f71 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4e0f71 = icmp eq i8 %loadBr_4e0f71, 1
  br i1 %cmpBr_4e0f71, label %block_.L_4e107c, label %block_4e0f77

block_4e0f77:
  ; Code: movl 0xafc47c, %eax	 RIP: 4e0f77	 Bytes: 7
  %loadMem_4e0f77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e0f77 = call %struct.Memory* @routine_movl_0xafc47c___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e0f77)
  store %struct.Memory* %call_4e0f77, %struct.Memory** %MEMORY

  ; Code: cmpl 0xafc478, %eax	 RIP: 4e0f7e	 Bytes: 7
  %loadMem_4e0f7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e0f7e = call %struct.Memory* @routine_cmpl_0xafc478___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e0f7e)
  store %struct.Memory* %call_4e0f7e, %struct.Memory** %MEMORY

  ; Code: je .L_4e0fad	 RIP: 4e0f85	 Bytes: 6
  %loadMem_4e0f85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e0f85 = call %struct.Memory* @routine_je_.L_4e0fad(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e0f85, i8* %BRANCH_TAKEN, i64 40, i64 6, i64 6)
  store %struct.Memory* %call_4e0f85, %struct.Memory** %MEMORY

  %loadBr_4e0f85 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4e0f85 = icmp eq i8 %loadBr_4e0f85, 1
  br i1 %cmpBr_4e0f85, label %block_.L_4e0fad, label %block_4e0f8b

block_4e0f8b:
  ; Code: movl 0xafc478, %eax	 RIP: 4e0f8b	 Bytes: 7
  %loadMem_4e0f8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e0f8b = call %struct.Memory* @routine_movl_0xafc478___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e0f8b)
  store %struct.Memory* %call_4e0f8b, %struct.Memory** %MEMORY

  ; Code: cmpl 0x99c070, %eax	 RIP: 4e0f92	 Bytes: 7
  %loadMem_4e0f92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e0f92 = call %struct.Memory* @routine_cmpl_0x99c070___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e0f92)
  store %struct.Memory* %call_4e0f92, %struct.Memory** %MEMORY

  ; Code: je .L_4e0fad	 RIP: 4e0f99	 Bytes: 6
  %loadMem_4e0f99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e0f99 = call %struct.Memory* @routine_je_.L_4e0fad(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e0f99, i8* %BRANCH_TAKEN, i64 20, i64 6, i64 6)
  store %struct.Memory* %call_4e0f99, %struct.Memory** %MEMORY

  %loadBr_4e0f99 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4e0f99 = icmp eq i8 %loadBr_4e0f99, 1
  br i1 %cmpBr_4e0f99, label %block_.L_4e0fad, label %block_4e0f9f

block_4e0f9f:
  ; Code: movq -0x10(%rbp), %rdi	 RIP: 4e0f9f	 Bytes: 4
  %loadMem_4e0f9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e0f9f = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e0f9f)
  store %struct.Memory* %call_4e0f9f, %struct.Memory** %MEMORY

  ; Code: callq .exchange	 RIP: 4e0fa3	 Bytes: 5
  %loadMem1_4e0fa3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4e0fa3 = call %struct.Memory* @routine_callq_.exchange(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4e0fa3, i64 4557, i64 5, i64 5)
  store %struct.Memory* %call1_4e0fa3, %struct.Memory** %MEMORY

  %loadMem2_4e0fa3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4e0fa3 = load i64, i64* %3
  %call2_4e0fa3 = call %struct.Memory* @sub_4e2170.exchange(%struct.State* %0, i64  %loadPC_4e0fa3, %struct.Memory* %loadMem2_4e0fa3)
  store %struct.Memory* %call2_4e0fa3, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4e0fd4	 RIP: 4e0fa8	 Bytes: 5
  %loadMem_4e0fa8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e0fa8 = call %struct.Memory* @routine_jmpq_.L_4e0fd4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e0fa8, i64 44, i64 5)
  store %struct.Memory* %call_4e0fa8, %struct.Memory** %MEMORY

  br label %block_.L_4e0fd4

  ; Code: .L_4e0fad:	 RIP: 4e0fad	 Bytes: 0
block_.L_4e0fad:

  ; Code: movl 0xafc478, %eax	 RIP: 4e0fad	 Bytes: 7
  %loadMem_4e0fad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e0fad = call %struct.Memory* @routine_movl_0xafc478___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e0fad)
  store %struct.Memory* %call_4e0fad, %struct.Memory** %MEMORY

  ; Code: cmpl 0x99c070, %eax	 RIP: 4e0fb4	 Bytes: 7
  %loadMem_4e0fb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e0fb4 = call %struct.Memory* @routine_cmpl_0x99c070___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e0fb4)
  store %struct.Memory* %call_4e0fb4, %struct.Memory** %MEMORY

  ; Code: je .L_4e0fcf	 RIP: 4e0fbb	 Bytes: 6
  %loadMem_4e0fbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e0fbb = call %struct.Memory* @routine_je_.L_4e0fcf(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e0fbb, i8* %BRANCH_TAKEN, i64 20, i64 6, i64 6)
  store %struct.Memory* %call_4e0fbb, %struct.Memory** %MEMORY

  %loadBr_4e0fbb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4e0fbb = icmp eq i8 %loadBr_4e0fbb, 1
  br i1 %cmpBr_4e0fbb, label %block_.L_4e0fcf, label %block_4e0fc1

block_4e0fc1:
  ; Code: movl 0x99c070, %eax	 RIP: 4e0fc1	 Bytes: 7
  %loadMem_4e0fc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e0fc1 = call %struct.Memory* @routine_movl_0x99c070___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e0fc1)
  store %struct.Memory* %call_4e0fc1, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0xafc47c	 RIP: 4e0fc8	 Bytes: 7
  %loadMem_4e0fc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e0fc8 = call %struct.Memory* @routine_movl__eax__0xafc47c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e0fc8)
  store %struct.Memory* %call_4e0fc8, %struct.Memory** %MEMORY

  ; Code: .L_4e0fcf:	 RIP: 4e0fcf	 Bytes: 0
  br label %block_.L_4e0fcf
block_.L_4e0fcf:

  ; Code: jmpq .L_4e0fd4	 RIP: 4e0fcf	 Bytes: 5
  %loadMem_4e0fcf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e0fcf = call %struct.Memory* @routine_jmpq_.L_4e0fd4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e0fcf, i64 5, i64 5)
  store %struct.Memory* %call_4e0fcf, %struct.Memory** %MEMORY

  br label %block_.L_4e0fd4

  ; Code: .L_4e0fd4:	 RIP: 4e0fd4	 Bytes: 0
block_.L_4e0fd4:

  ; Code: jmpq .L_4e0fd9	 RIP: 4e0fd4	 Bytes: 5
  %loadMem_4e0fd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e0fd4 = call %struct.Memory* @routine_jmpq_.L_4e0fd9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e0fd4, i64 5, i64 5)
  store %struct.Memory* %call_4e0fd4, %struct.Memory** %MEMORY

  br label %block_.L_4e0fd9

  ; Code: .L_4e0fd9:	 RIP: 4e0fd9	 Bytes: 0
block_.L_4e0fd9:

  ; Code: xorl %eax, %eax	 RIP: 4e0fd9	 Bytes: 2
  %loadMem_4e0fd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e0fd9 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e0fd9)
  store %struct.Memory* %call_4e0fd9, %struct.Memory** %MEMORY

  ; Code: movb %al, %cl	 RIP: 4e0fdb	 Bytes: 2
  %loadMem_4e0fdb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e0fdb = call %struct.Memory* @routine_movb__al___cl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e0fdb)
  store %struct.Memory* %call_4e0fdb, %struct.Memory** %MEMORY

  ; Code: movl 0x99c070, %eax	 RIP: 4e0fdd	 Bytes: 7
  %loadMem_4e0fdd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e0fdd = call %struct.Memory* @routine_movl_0x99c070___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e0fdd)
  store %struct.Memory* %call_4e0fdd, %struct.Memory** %MEMORY

  ; Code: cmpl -0x8(%rbp), %eax	 RIP: 4e0fe4	 Bytes: 3
  %loadMem_4e0fe4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e0fe4 = call %struct.Memory* @routine_cmpl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e0fe4)
  store %struct.Memory* %call_4e0fe4, %struct.Memory** %MEMORY

  ; Code: movb %cl, -0x91(%rbp)	 RIP: 4e0fe7	 Bytes: 6
  %loadMem_4e0fe7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e0fe7 = call %struct.Memory* @routine_movb__cl__MINUS0x91__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e0fe7)
  store %struct.Memory* %call_4e0fe7, %struct.Memory** %MEMORY

  ; Code: jge .L_4e1045	 RIP: 4e0fed	 Bytes: 6
  %loadMem_4e0fed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e0fed = call %struct.Memory* @routine_jge_.L_4e1045(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e0fed, i8* %BRANCH_TAKEN, i64 88, i64 6, i64 6)
  store %struct.Memory* %call_4e0fed, %struct.Memory** %MEMORY

  %loadBr_4e0fed = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4e0fed = icmp eq i8 %loadBr_4e0fed, 1
  br i1 %cmpBr_4e0fed, label %block_.L_4e1045, label %block_4e0ff3

block_4e0ff3:
  ; Code: movb $0x1, %al	 RIP: 4e0ff3	 Bytes: 2
  %loadMem_4e0ff3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e0ff3 = call %struct.Memory* @routine_movb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e0ff3)
  store %struct.Memory* %call_4e0ff3, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4e0ff5	 Bytes: 4
  %loadMem_4e0ff5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e0ff5 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e0ff5)
  store %struct.Memory* %call_4e0ff5, %struct.Memory** %MEMORY

  ; Code: movslq 0x99c070, %rdx	 RIP: 4e0ff9	 Bytes: 8
  %loadMem_4e0ff9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e0ff9 = call %struct.Memory* @routine_movslq_0x99c070___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e0ff9)
  store %struct.Memory* %call_4e0ff9, %struct.Memory** %MEMORY

  ; Code: movq (%rcx,%rdx,8), %rcx	 RIP: 4e1001	 Bytes: 4
  %loadMem_4e1001 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1001 = call %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1001)
  store %struct.Memory* %call_4e1001, %struct.Memory** %MEMORY

  ; Code: movsbl (%rcx), %esi	 RIP: 4e1005	 Bytes: 3
  %loadMem_4e1005 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1005 = call %struct.Memory* @routine_movsbl___rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1005)
  store %struct.Memory* %call_4e1005, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2d, %esi	 RIP: 4e1008	 Bytes: 3
  %loadMem_4e1008 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1008 = call %struct.Memory* @routine_cmpl__0x2d___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1008)
  store %struct.Memory* %call_4e1008, %struct.Memory** %MEMORY

  ; Code: movb %al, -0x92(%rbp)	 RIP: 4e100b	 Bytes: 6
  %loadMem_4e100b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e100b = call %struct.Memory* @routine_movb__al__MINUS0x92__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e100b)
  store %struct.Memory* %call_4e100b, %struct.Memory** %MEMORY

  ; Code: jne .L_4e1039	 RIP: 4e1011	 Bytes: 6
  %loadMem_4e1011 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1011 = call %struct.Memory* @routine_jne_.L_4e1039(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1011, i8* %BRANCH_TAKEN, i64 40, i64 6, i64 6)
  store %struct.Memory* %call_4e1011, %struct.Memory** %MEMORY

  %loadBr_4e1011 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4e1011 = icmp eq i8 %loadBr_4e1011, 1
  br i1 %cmpBr_4e1011, label %block_.L_4e1039, label %block_4e1017

block_4e1017:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 4e1017	 Bytes: 4
  %loadMem_4e1017 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1017 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1017)
  store %struct.Memory* %call_4e1017, %struct.Memory** %MEMORY

  ; Code: movslq 0x99c070, %rcx	 RIP: 4e101b	 Bytes: 8
  %loadMem_4e101b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e101b = call %struct.Memory* @routine_movslq_0x99c070___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e101b)
  store %struct.Memory* %call_4e101b, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 4e1023	 Bytes: 4
  %loadMem_4e1023 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1023 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1023)
  store %struct.Memory* %call_4e1023, %struct.Memory** %MEMORY

  ; Code: movsbl 0x1(%rax), %edx	 RIP: 4e1027	 Bytes: 4
  %loadMem_4e1027 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1027 = call %struct.Memory* @routine_movsbl_0x1__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1027)
  store %struct.Memory* %call_4e1027, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %edx	 RIP: 4e102b	 Bytes: 3
  %loadMem_4e102b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e102b = call %struct.Memory* @routine_cmpl__0x0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e102b)
  store %struct.Memory* %call_4e102b, %struct.Memory** %MEMORY

  ; Code: sete %sil	 RIP: 4e102e	 Bytes: 4
  %loadMem_4e102e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e102e = call %struct.Memory* @routine_sete__sil(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e102e)
  store %struct.Memory* %call_4e102e, %struct.Memory** %MEMORY

  ; Code: movb %sil, -0x92(%rbp)	 RIP: 4e1032	 Bytes: 7
  %loadMem_4e1032 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1032 = call %struct.Memory* @routine_movb__sil__MINUS0x92__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1032)
  store %struct.Memory* %call_4e1032, %struct.Memory** %MEMORY

  ; Code: .L_4e1039:	 RIP: 4e1039	 Bytes: 0
  br label %block_.L_4e1039
block_.L_4e1039:

  ; Code: movb -0x92(%rbp), %al	 RIP: 4e1039	 Bytes: 6
  %loadMem_4e1039 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1039 = call %struct.Memory* @routine_movb_MINUS0x92__rbp____al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1039)
  store %struct.Memory* %call_4e1039, %struct.Memory** %MEMORY

  ; Code: movb %al, -0x91(%rbp)	 RIP: 4e103f	 Bytes: 6
  %loadMem_4e103f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e103f = call %struct.Memory* @routine_movb__al__MINUS0x91__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e103f)
  store %struct.Memory* %call_4e103f, %struct.Memory** %MEMORY

  ; Code: .L_4e1045:	 RIP: 4e1045	 Bytes: 0
  br label %block_.L_4e1045
block_.L_4e1045:

  ; Code: movb -0x91(%rbp), %al	 RIP: 4e1045	 Bytes: 6
  %loadMem_4e1045 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1045 = call %struct.Memory* @routine_movb_MINUS0x91__rbp____al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1045)
  store %struct.Memory* %call_4e1045, %struct.Memory** %MEMORY

  ; Code: testb $0x1, %al	 RIP: 4e104b	 Bytes: 2
  %loadMem_4e104b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e104b = call %struct.Memory* @routine_testb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e104b)
  store %struct.Memory* %call_4e104b, %struct.Memory** %MEMORY

  ; Code: jne .L_4e1058	 RIP: 4e104d	 Bytes: 6
  %loadMem_4e104d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e104d = call %struct.Memory* @routine_jne_.L_4e1058(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e104d, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_4e104d, %struct.Memory** %MEMORY

  %loadBr_4e104d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4e104d = icmp eq i8 %loadBr_4e104d, 1
  br i1 %cmpBr_4e104d, label %block_.L_4e1058, label %block_4e1053

block_4e1053:
  ; Code: jmpq .L_4e106e	 RIP: 4e1053	 Bytes: 5
  %loadMem_4e1053 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1053 = call %struct.Memory* @routine_jmpq_.L_4e106e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1053, i64 27, i64 5)
  store %struct.Memory* %call_4e1053, %struct.Memory** %MEMORY

  br label %block_.L_4e106e

  ; Code: .L_4e1058:	 RIP: 4e1058	 Bytes: 0
block_.L_4e1058:

  ; Code: movl 0x99c070, %eax	 RIP: 4e1058	 Bytes: 7
  %loadMem_4e1058 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1058 = call %struct.Memory* @routine_movl_0x99c070___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1058)
  store %struct.Memory* %call_4e1058, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4e105f	 Bytes: 3
  %loadMem_4e105f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e105f = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e105f)
  store %struct.Memory* %call_4e105f, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x99c070	 RIP: 4e1062	 Bytes: 7
  %loadMem_4e1062 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1062 = call %struct.Memory* @routine_movl__eax__0x99c070(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1062)
  store %struct.Memory* %call_4e1062, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4e0fd9	 RIP: 4e1069	 Bytes: 5
  %loadMem_4e1069 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1069 = call %struct.Memory* @routine_jmpq_.L_4e0fd9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1069, i64 -144, i64 5)
  store %struct.Memory* %call_4e1069, %struct.Memory** %MEMORY

  br label %block_.L_4e0fd9

  ; Code: .L_4e106e:	 RIP: 4e106e	 Bytes: 0
block_.L_4e106e:

  ; Code: movl 0x99c070, %eax	 RIP: 4e106e	 Bytes: 7
  %loadMem_4e106e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e106e = call %struct.Memory* @routine_movl_0x99c070___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e106e)
  store %struct.Memory* %call_4e106e, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0xafc478	 RIP: 4e1075	 Bytes: 7
  %loadMem_4e1075 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1075 = call %struct.Memory* @routine_movl__eax__0xafc478(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1075)
  store %struct.Memory* %call_4e1075, %struct.Memory** %MEMORY

  ; Code: .L_4e107c:	 RIP: 4e107c	 Bytes: 0
  br label %block_.L_4e107c
block_.L_4e107c:

  ; Code: movl 0x99c070, %eax	 RIP: 4e107c	 Bytes: 7
  %loadMem_4e107c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e107c = call %struct.Memory* @routine_movl_0x99c070___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e107c)
  store %struct.Memory* %call_4e107c, %struct.Memory** %MEMORY

  ; Code: cmpl -0x8(%rbp), %eax	 RIP: 4e1083	 Bytes: 3
  %loadMem_4e1083 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1083 = call %struct.Memory* @routine_cmpl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1083)
  store %struct.Memory* %call_4e1083, %struct.Memory** %MEMORY

  ; Code: je .L_4e1133	 RIP: 4e1086	 Bytes: 6
  %loadMem_4e1086 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1086 = call %struct.Memory* @routine_je_.L_4e1133(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1086, i8* %BRANCH_TAKEN, i64 173, i64 6, i64 6)
  store %struct.Memory* %call_4e1086, %struct.Memory** %MEMORY

  %loadBr_4e1086 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4e1086 = icmp eq i8 %loadBr_4e1086, 1
  br i1 %cmpBr_4e1086, label %block_.L_4e1133, label %block_4e108c

block_4e108c:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 4e108c	 Bytes: 4
  %loadMem_4e108c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e108c = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e108c)
  store %struct.Memory* %call_4e108c, %struct.Memory** %MEMORY

  ; Code: movslq 0x99c070, %rcx	 RIP: 4e1090	 Bytes: 8
  %loadMem_4e1090 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1090 = call %struct.Memory* @routine_movslq_0x99c070___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1090)
  store %struct.Memory* %call_4e1090, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rdi	 RIP: 4e1098	 Bytes: 4
  %loadMem_4e1098 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1098 = call %struct.Memory* @routine_movq___rax__rcx_8____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1098)
  store %struct.Memory* %call_4e1098, %struct.Memory** %MEMORY

  ; Code: movl $0x595178, %edx	 RIP: 4e109c	 Bytes: 5
  %loadMem_4e109c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e109c = call %struct.Memory* @routine_movl__0x595178___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e109c)
  store %struct.Memory* %call_4e109c, %struct.Memory** %MEMORY

  ; Code: movl %edx, %esi	 RIP: 4e10a1	 Bytes: 2
  %loadMem_4e10a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e10a1 = call %struct.Memory* @routine_movl__edx___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e10a1)
  store %struct.Memory* %call_4e10a1, %struct.Memory** %MEMORY

  ; Code: callq .strcmp_plt	 RIP: 4e10a3	 Bytes: 5
  %loadMem1_4e10a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4e10a3 = call %struct.Memory* @routine_callq_.strcmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4e10a3, i64 -917475, i64 5, i64 5)
  store %struct.Memory* %call1_4e10a3, %struct.Memory** %MEMORY

  %loadMem2_4e10a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4e10a3 = load i64, i64* %3
  %call2_4e10a3 = call %struct.Memory* @ext_strcmp(%struct.State* %0, i64  %loadPC_4e10a3, %struct.Memory* %loadMem2_4e10a3)
  store %struct.Memory* %call2_4e10a3, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 4e10a8	 Bytes: 3
  %loadMem_4e10a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e10a8 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e10a8)
  store %struct.Memory* %call_4e10a8, %struct.Memory** %MEMORY

  ; Code: jne .L_4e1133	 RIP: 4e10ab	 Bytes: 6
  %loadMem_4e10ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e10ab = call %struct.Memory* @routine_jne_.L_4e1133(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e10ab, i8* %BRANCH_TAKEN, i64 136, i64 6, i64 6)
  store %struct.Memory* %call_4e10ab, %struct.Memory** %MEMORY

  %loadBr_4e10ab = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4e10ab = icmp eq i8 %loadBr_4e10ab, 1
  br i1 %cmpBr_4e10ab, label %block_.L_4e1133, label %block_4e10b1

block_4e10b1:
  ; Code: movl 0x99c070, %eax	 RIP: 4e10b1	 Bytes: 7
  %loadMem_4e10b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e10b1 = call %struct.Memory* @routine_movl_0x99c070___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e10b1)
  store %struct.Memory* %call_4e10b1, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4e10b8	 Bytes: 3
  %loadMem_4e10b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e10b8 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e10b8)
  store %struct.Memory* %call_4e10b8, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x99c070	 RIP: 4e10bb	 Bytes: 7
  %loadMem_4e10bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e10bb = call %struct.Memory* @routine_movl__eax__0x99c070(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e10bb)
  store %struct.Memory* %call_4e10bb, %struct.Memory** %MEMORY

  ; Code: movl 0xafc47c, %eax	 RIP: 4e10c2	 Bytes: 7
  %loadMem_4e10c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e10c2 = call %struct.Memory* @routine_movl_0xafc47c___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e10c2)
  store %struct.Memory* %call_4e10c2, %struct.Memory** %MEMORY

  ; Code: cmpl 0xafc478, %eax	 RIP: 4e10c9	 Bytes: 7
  %loadMem_4e10c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e10c9 = call %struct.Memory* @routine_cmpl_0xafc478___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e10c9)
  store %struct.Memory* %call_4e10c9, %struct.Memory** %MEMORY

  ; Code: je .L_4e10f8	 RIP: 4e10d0	 Bytes: 6
  %loadMem_4e10d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e10d0 = call %struct.Memory* @routine_je_.L_4e10f8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e10d0, i8* %BRANCH_TAKEN, i64 40, i64 6, i64 6)
  store %struct.Memory* %call_4e10d0, %struct.Memory** %MEMORY

  %loadBr_4e10d0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4e10d0 = icmp eq i8 %loadBr_4e10d0, 1
  br i1 %cmpBr_4e10d0, label %block_.L_4e10f8, label %block_4e10d6

block_4e10d6:
  ; Code: movl 0xafc478, %eax	 RIP: 4e10d6	 Bytes: 7
  %loadMem_4e10d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e10d6 = call %struct.Memory* @routine_movl_0xafc478___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e10d6)
  store %struct.Memory* %call_4e10d6, %struct.Memory** %MEMORY

  ; Code: cmpl 0x99c070, %eax	 RIP: 4e10dd	 Bytes: 7
  %loadMem_4e10dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e10dd = call %struct.Memory* @routine_cmpl_0x99c070___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e10dd)
  store %struct.Memory* %call_4e10dd, %struct.Memory** %MEMORY

  ; Code: je .L_4e10f8	 RIP: 4e10e4	 Bytes: 6
  %loadMem_4e10e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e10e4 = call %struct.Memory* @routine_je_.L_4e10f8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e10e4, i8* %BRANCH_TAKEN, i64 20, i64 6, i64 6)
  store %struct.Memory* %call_4e10e4, %struct.Memory** %MEMORY

  %loadBr_4e10e4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4e10e4 = icmp eq i8 %loadBr_4e10e4, 1
  br i1 %cmpBr_4e10e4, label %block_.L_4e10f8, label %block_4e10ea

block_4e10ea:
  ; Code: movq -0x10(%rbp), %rdi	 RIP: 4e10ea	 Bytes: 4
  %loadMem_4e10ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e10ea = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e10ea)
  store %struct.Memory* %call_4e10ea, %struct.Memory** %MEMORY

  ; Code: callq .exchange	 RIP: 4e10ee	 Bytes: 5
  %loadMem1_4e10ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4e10ee = call %struct.Memory* @routine_callq_.exchange(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4e10ee, i64 4226, i64 5, i64 5)
  store %struct.Memory* %call1_4e10ee, %struct.Memory** %MEMORY

  %loadMem2_4e10ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4e10ee = load i64, i64* %3
  %call2_4e10ee = call %struct.Memory* @sub_4e2170.exchange(%struct.State* %0, i64  %loadPC_4e10ee, %struct.Memory* %loadMem2_4e10ee)
  store %struct.Memory* %call2_4e10ee, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4e111f	 RIP: 4e10f3	 Bytes: 5
  %loadMem_4e10f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e10f3 = call %struct.Memory* @routine_jmpq_.L_4e111f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e10f3, i64 44, i64 5)
  store %struct.Memory* %call_4e10f3, %struct.Memory** %MEMORY

  br label %block_.L_4e111f

  ; Code: .L_4e10f8:	 RIP: 4e10f8	 Bytes: 0
block_.L_4e10f8:

  ; Code: movl 0xafc47c, %eax	 RIP: 4e10f8	 Bytes: 7
  %loadMem_4e10f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e10f8 = call %struct.Memory* @routine_movl_0xafc47c___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e10f8)
  store %struct.Memory* %call_4e10f8, %struct.Memory** %MEMORY

  ; Code: cmpl 0xafc478, %eax	 RIP: 4e10ff	 Bytes: 7
  %loadMem_4e10ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e10ff = call %struct.Memory* @routine_cmpl_0xafc478___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e10ff)
  store %struct.Memory* %call_4e10ff, %struct.Memory** %MEMORY

  ; Code: jne .L_4e111a	 RIP: 4e1106	 Bytes: 6
  %loadMem_4e1106 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1106 = call %struct.Memory* @routine_jne_.L_4e111a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1106, i8* %BRANCH_TAKEN, i64 20, i64 6, i64 6)
  store %struct.Memory* %call_4e1106, %struct.Memory** %MEMORY

  %loadBr_4e1106 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4e1106 = icmp eq i8 %loadBr_4e1106, 1
  br i1 %cmpBr_4e1106, label %block_.L_4e111a, label %block_4e110c

block_4e110c:
  ; Code: movl 0x99c070, %eax	 RIP: 4e110c	 Bytes: 7
  %loadMem_4e110c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e110c = call %struct.Memory* @routine_movl_0x99c070___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e110c)
  store %struct.Memory* %call_4e110c, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0xafc47c	 RIP: 4e1113	 Bytes: 7
  %loadMem_4e1113 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1113 = call %struct.Memory* @routine_movl__eax__0xafc47c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1113)
  store %struct.Memory* %call_4e1113, %struct.Memory** %MEMORY

  ; Code: .L_4e111a:	 RIP: 4e111a	 Bytes: 0
  br label %block_.L_4e111a
block_.L_4e111a:

  ; Code: jmpq .L_4e111f	 RIP: 4e111a	 Bytes: 5
  %loadMem_4e111a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e111a = call %struct.Memory* @routine_jmpq_.L_4e111f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e111a, i64 5, i64 5)
  store %struct.Memory* %call_4e111a, %struct.Memory** %MEMORY

  br label %block_.L_4e111f

  ; Code: .L_4e111f:	 RIP: 4e111f	 Bytes: 0
block_.L_4e111f:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 4e111f	 Bytes: 3
  %loadMem_4e111f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e111f = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e111f)
  store %struct.Memory* %call_4e111f, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0xafc478	 RIP: 4e1122	 Bytes: 7
  %loadMem_4e1122 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1122 = call %struct.Memory* @routine_movl__eax__0xafc478(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1122)
  store %struct.Memory* %call_4e1122, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %eax	 RIP: 4e1129	 Bytes: 3
  %loadMem_4e1129 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1129 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1129)
  store %struct.Memory* %call_4e1129, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x99c070	 RIP: 4e112c	 Bytes: 7
  %loadMem_4e112c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e112c = call %struct.Memory* @routine_movl__eax__0x99c070(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e112c)
  store %struct.Memory* %call_4e112c, %struct.Memory** %MEMORY

  ; Code: .L_4e1133:	 RIP: 4e1133	 Bytes: 0
  br label %block_.L_4e1133
block_.L_4e1133:

  ; Code: movl 0x99c070, %eax	 RIP: 4e1133	 Bytes: 7
  %loadMem_4e1133 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1133 = call %struct.Memory* @routine_movl_0x99c070___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1133)
  store %struct.Memory* %call_4e1133, %struct.Memory** %MEMORY

  ; Code: cmpl -0x8(%rbp), %eax	 RIP: 4e113a	 Bytes: 3
  %loadMem_4e113a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e113a = call %struct.Memory* @routine_cmpl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e113a)
  store %struct.Memory* %call_4e113a, %struct.Memory** %MEMORY

  ; Code: jne .L_4e1171	 RIP: 4e113d	 Bytes: 6
  %loadMem_4e113d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e113d = call %struct.Memory* @routine_jne_.L_4e1171(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e113d, i8* %BRANCH_TAKEN, i64 52, i64 6, i64 6)
  store %struct.Memory* %call_4e113d, %struct.Memory** %MEMORY

  %loadBr_4e113d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4e113d = icmp eq i8 %loadBr_4e113d, 1
  br i1 %cmpBr_4e113d, label %block_.L_4e1171, label %block_4e1143

block_4e1143:
  ; Code: movl 0xafc47c, %eax	 RIP: 4e1143	 Bytes: 7
  %loadMem_4e1143 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1143 = call %struct.Memory* @routine_movl_0xafc47c___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1143)
  store %struct.Memory* %call_4e1143, %struct.Memory** %MEMORY

  ; Code: cmpl 0xafc478, %eax	 RIP: 4e114a	 Bytes: 7
  %loadMem_4e114a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e114a = call %struct.Memory* @routine_cmpl_0xafc478___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e114a)
  store %struct.Memory* %call_4e114a, %struct.Memory** %MEMORY

  ; Code: je .L_4e1165	 RIP: 4e1151	 Bytes: 6
  %loadMem_4e1151 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1151 = call %struct.Memory* @routine_je_.L_4e1165(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1151, i8* %BRANCH_TAKEN, i64 20, i64 6, i64 6)
  store %struct.Memory* %call_4e1151, %struct.Memory** %MEMORY

  %loadBr_4e1151 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4e1151 = icmp eq i8 %loadBr_4e1151, 1
  br i1 %cmpBr_4e1151, label %block_.L_4e1165, label %block_4e1157

block_4e1157:
  ; Code: movl 0xafc47c, %eax	 RIP: 4e1157	 Bytes: 7
  %loadMem_4e1157 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1157 = call %struct.Memory* @routine_movl_0xafc47c___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1157)
  store %struct.Memory* %call_4e1157, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x99c070	 RIP: 4e115e	 Bytes: 7
  %loadMem_4e115e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e115e = call %struct.Memory* @routine_movl__eax__0x99c070(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e115e)
  store %struct.Memory* %call_4e115e, %struct.Memory** %MEMORY

  ; Code: .L_4e1165:	 RIP: 4e1165	 Bytes: 0
  br label %block_.L_4e1165
block_.L_4e1165:

  ; Code: movl $0xffffffff, -0x4(%rbp)	 RIP: 4e1165	 Bytes: 7
  %loadMem_4e1165 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1165 = call %struct.Memory* @routine_movl__0xffffffff__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1165)
  store %struct.Memory* %call_4e1165, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4e206c	 RIP: 4e116c	 Bytes: 5
  %loadMem_4e116c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e116c = call %struct.Memory* @routine_jmpq_.L_4e206c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e116c, i64 3840, i64 5)
  store %struct.Memory* %call_4e116c, %struct.Memory** %MEMORY

  br label %block_.L_4e206c

  ; Code: .L_4e1171:	 RIP: 4e1171	 Bytes: 0
block_.L_4e1171:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 4e1171	 Bytes: 4
  %loadMem_4e1171 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1171 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1171)
  store %struct.Memory* %call_4e1171, %struct.Memory** %MEMORY

  ; Code: movslq 0x99c070, %rcx	 RIP: 4e1175	 Bytes: 8
  %loadMem_4e1175 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1175 = call %struct.Memory* @routine_movslq_0x99c070___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1175)
  store %struct.Memory* %call_4e1175, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 4e117d	 Bytes: 4
  %loadMem_4e117d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e117d = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e117d)
  store %struct.Memory* %call_4e117d, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax), %edx	 RIP: 4e1181	 Bytes: 3
  %loadMem_4e1181 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1181 = call %struct.Memory* @routine_movsbl___rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1181)
  store %struct.Memory* %call_4e1181, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2d, %edx	 RIP: 4e1184	 Bytes: 3
  %loadMem_4e1184 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1184 = call %struct.Memory* @routine_cmpl__0x2d___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1184)
  store %struct.Memory* %call_4e1184, %struct.Memory** %MEMORY

  ; Code: jne .L_4e11aa	 RIP: 4e1187	 Bytes: 6
  %loadMem_4e1187 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1187 = call %struct.Memory* @routine_jne_.L_4e11aa(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1187, i8* %BRANCH_TAKEN, i64 35, i64 6, i64 6)
  store %struct.Memory* %call_4e1187, %struct.Memory** %MEMORY

  %loadBr_4e1187 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4e1187 = icmp eq i8 %loadBr_4e1187, 1
  br i1 %cmpBr_4e1187, label %block_.L_4e11aa, label %block_4e118d

block_4e118d:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 4e118d	 Bytes: 4
  %loadMem_4e118d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e118d = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e118d)
  store %struct.Memory* %call_4e118d, %struct.Memory** %MEMORY

  ; Code: movslq 0x99c070, %rcx	 RIP: 4e1191	 Bytes: 8
  %loadMem_4e1191 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1191 = call %struct.Memory* @routine_movslq_0x99c070___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1191)
  store %struct.Memory* %call_4e1191, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 4e1199	 Bytes: 4
  %loadMem_4e1199 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1199 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1199)
  store %struct.Memory* %call_4e1199, %struct.Memory** %MEMORY

  ; Code: movsbl 0x1(%rax), %edx	 RIP: 4e119d	 Bytes: 4
  %loadMem_4e119d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e119d = call %struct.Memory* @routine_movsbl_0x1__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e119d)
  store %struct.Memory* %call_4e119d, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %edx	 RIP: 4e11a1	 Bytes: 3
  %loadMem_4e11a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e11a1 = call %struct.Memory* @routine_cmpl__0x0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e11a1)
  store %struct.Memory* %call_4e11a1, %struct.Memory** %MEMORY

  ; Code: jne .L_4e11f6	 RIP: 4e11a4	 Bytes: 6
  %loadMem_4e11a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e11a4 = call %struct.Memory* @routine_jne_.L_4e11f6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e11a4, i8* %BRANCH_TAKEN, i64 82, i64 6, i64 6)
  store %struct.Memory* %call_4e11a4, %struct.Memory** %MEMORY

  %loadBr_4e11a4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4e11a4 = icmp eq i8 %loadBr_4e11a4, 1
  br i1 %cmpBr_4e11a4, label %block_.L_4e11f6, label %block_.L_4e11aa

  ; Code: .L_4e11aa:	 RIP: 4e11aa	 Bytes: 0
block_.L_4e11aa:

  ; Code: cmpl $0x0, 0xafc480	 RIP: 4e11aa	 Bytes: 8
  %loadMem_4e11aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e11aa = call %struct.Memory* @routine_cmpl__0x0__0xafc480(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e11aa)
  store %struct.Memory* %call_4e11aa, %struct.Memory** %MEMORY

  ; Code: jne .L_4e11c4	 RIP: 4e11b2	 Bytes: 6
  %loadMem_4e11b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e11b2 = call %struct.Memory* @routine_jne_.L_4e11c4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e11b2, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_4e11b2, %struct.Memory** %MEMORY

  %loadBr_4e11b2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4e11b2 = icmp eq i8 %loadBr_4e11b2, 1
  br i1 %cmpBr_4e11b2, label %block_.L_4e11c4, label %block_4e11b8

block_4e11b8:
  ; Code: movl $0xffffffff, -0x4(%rbp)	 RIP: 4e11b8	 Bytes: 7
  %loadMem_4e11b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e11b8 = call %struct.Memory* @routine_movl__0xffffffff__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e11b8)
  store %struct.Memory* %call_4e11b8, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4e206c	 RIP: 4e11bf	 Bytes: 5
  %loadMem_4e11bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e11bf = call %struct.Memory* @routine_jmpq_.L_4e206c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e11bf, i64 3757, i64 5)
  store %struct.Memory* %call_4e11bf, %struct.Memory** %MEMORY

  br label %block_.L_4e206c

  ; Code: .L_4e11c4:	 RIP: 4e11c4	 Bytes: 0
block_.L_4e11c4:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 4e11c4	 Bytes: 4
  %loadMem_4e11c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e11c4 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e11c4)
  store %struct.Memory* %call_4e11c4, %struct.Memory** %MEMORY

  ; Code: movl 0x99c070, %ecx	 RIP: 4e11c8	 Bytes: 7
  %loadMem_4e11c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e11c8 = call %struct.Memory* @routine_movl_0x99c070___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e11c8)
  store %struct.Memory* %call_4e11c8, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 4e11cf	 Bytes: 2
  %loadMem_4e11cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e11cf = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e11cf)
  store %struct.Memory* %call_4e11cf, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 4e11d1	 Bytes: 3
  %loadMem_4e11d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e11d1 = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e11d1)
  store %struct.Memory* %call_4e11d1, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0x99c070	 RIP: 4e11d4	 Bytes: 7
  %loadMem_4e11d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e11d4 = call %struct.Memory* @routine_movl__edx__0x99c070(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e11d4)
  store %struct.Memory* %call_4e11d4, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 4e11db	 Bytes: 3
  %loadMem_4e11db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e11db = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e11db)
  store %struct.Memory* %call_4e11db, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rsi,8), %rax	 RIP: 4e11de	 Bytes: 4
  %loadMem_4e11de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e11de = call %struct.Memory* @routine_movq___rax__rsi_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e11de)
  store %struct.Memory* %call_4e11de, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0xb89e50	 RIP: 4e11e2	 Bytes: 8
  %loadMem_4e11e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e11e2 = call %struct.Memory* @routine_movq__rax__0xb89e50(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e11e2)
  store %struct.Memory* %call_4e11e2, %struct.Memory** %MEMORY

  ; Code: movl $0x1, -0x4(%rbp)	 RIP: 4e11ea	 Bytes: 7
  %loadMem_4e11ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e11ea = call %struct.Memory* @routine_movl__0x1__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e11ea)
  store %struct.Memory* %call_4e11ea, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4e206c	 RIP: 4e11f1	 Bytes: 5
  %loadMem_4e11f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e11f1 = call %struct.Memory* @routine_jmpq_.L_4e206c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e11f1, i64 3707, i64 5)
  store %struct.Memory* %call_4e11f1, %struct.Memory** %MEMORY

  br label %block_.L_4e206c

  ; Code: .L_4e11f6:	 RIP: 4e11f6	 Bytes: 0
block_.L_4e11f6:

  ; Code: xorl %eax, %eax	 RIP: 4e11f6	 Bytes: 2
  %loadMem_4e11f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e11f6 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e11f6)
  store %struct.Memory* %call_4e11f6, %struct.Memory** %MEMORY

  ; Code: movb %al, %cl	 RIP: 4e11f8	 Bytes: 2
  %loadMem_4e11f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e11f8 = call %struct.Memory* @routine_movb__al___cl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e11f8)
  store %struct.Memory* %call_4e11f8, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 4e11fa	 Bytes: 4
  %loadMem_4e11fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e11fa = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e11fa)
  store %struct.Memory* %call_4e11fa, %struct.Memory** %MEMORY

  ; Code: movslq 0x99c070, %rsi	 RIP: 4e11fe	 Bytes: 8
  %loadMem_4e11fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e11fe = call %struct.Memory* @routine_movslq_0x99c070___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e11fe)
  store %struct.Memory* %call_4e11fe, %struct.Memory** %MEMORY

  ; Code: movq (%rdx,%rsi,8), %rdx	 RIP: 4e1206	 Bytes: 4
  %loadMem_4e1206 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1206 = call %struct.Memory* @routine_movq___rdx__rsi_8____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1206)
  store %struct.Memory* %call_4e1206, %struct.Memory** %MEMORY

  ; Code: addq $0x1, %rdx	 RIP: 4e120a	 Bytes: 4
  %loadMem_4e120a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e120a = call %struct.Memory* @routine_addq__0x1___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e120a)
  store %struct.Memory* %call_4e120a, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, -0x20(%rbp)	 RIP: 4e120e	 Bytes: 5
  %loadMem_4e120e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e120e = call %struct.Memory* @routine_cmpq__0x0__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e120e)
  store %struct.Memory* %call_4e120e, %struct.Memory** %MEMORY

  ; Code: movq %rdx, -0xa0(%rbp)	 RIP: 4e1213	 Bytes: 7
  %loadMem_4e1213 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1213 = call %struct.Memory* @routine_movq__rdx__MINUS0xa0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1213)
  store %struct.Memory* %call_4e1213, %struct.Memory** %MEMORY

  ; Code: movb %cl, -0xa1(%rbp)	 RIP: 4e121a	 Bytes: 6
  %loadMem_4e121a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e121a = call %struct.Memory* @routine_movb__cl__MINUS0xa1__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e121a)
  store %struct.Memory* %call_4e121a, %struct.Memory** %MEMORY

  ; Code: je .L_4e1248	 RIP: 4e1220	 Bytes: 6
  %loadMem_4e1220 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1220 = call %struct.Memory* @routine_je_.L_4e1248(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1220, i8* %BRANCH_TAKEN, i64 40, i64 6, i64 6)
  store %struct.Memory* %call_4e1220, %struct.Memory** %MEMORY

  %loadBr_4e1220 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4e1220 = icmp eq i8 %loadBr_4e1220, 1
  br i1 %cmpBr_4e1220, label %block_.L_4e1248, label %block_4e1226

block_4e1226:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 4e1226	 Bytes: 4
  %loadMem_4e1226 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1226 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1226)
  store %struct.Memory* %call_4e1226, %struct.Memory** %MEMORY

  ; Code: movslq 0x99c070, %rcx	 RIP: 4e122a	 Bytes: 8
  %loadMem_4e122a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e122a = call %struct.Memory* @routine_movslq_0x99c070___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e122a)
  store %struct.Memory* %call_4e122a, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 4e1232	 Bytes: 4
  %loadMem_4e1232 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1232 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1232)
  store %struct.Memory* %call_4e1232, %struct.Memory** %MEMORY

  ; Code: movsbl 0x1(%rax), %edx	 RIP: 4e1236	 Bytes: 4
  %loadMem_4e1236 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1236 = call %struct.Memory* @routine_movsbl_0x1__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1236)
  store %struct.Memory* %call_4e1236, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2d, %edx	 RIP: 4e123a	 Bytes: 3
  %loadMem_4e123a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e123a = call %struct.Memory* @routine_cmpl__0x2d___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e123a)
  store %struct.Memory* %call_4e123a, %struct.Memory** %MEMORY

  ; Code: sete %sil	 RIP: 4e123d	 Bytes: 4
  %loadMem_4e123d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e123d = call %struct.Memory* @routine_sete__sil(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e123d)
  store %struct.Memory* %call_4e123d, %struct.Memory** %MEMORY

  ; Code: movb %sil, -0xa1(%rbp)	 RIP: 4e1241	 Bytes: 7
  %loadMem_4e1241 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1241 = call %struct.Memory* @routine_movb__sil__MINUS0xa1__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1241)
  store %struct.Memory* %call_4e1241, %struct.Memory** %MEMORY

  ; Code: .L_4e1248:	 RIP: 4e1248	 Bytes: 0
  br label %block_.L_4e1248
block_.L_4e1248:

  ; Code: movb -0xa1(%rbp), %al	 RIP: 4e1248	 Bytes: 6
  %loadMem_4e1248 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1248 = call %struct.Memory* @routine_movb_MINUS0xa1__rbp____al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1248)
  store %struct.Memory* %call_4e1248, %struct.Memory** %MEMORY

  ; Code: andb $0x1, %al	 RIP: 4e124e	 Bytes: 2
  %loadMem_4e124e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e124e = call %struct.Memory* @routine_andb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e124e)
  store %struct.Memory* %call_4e124e, %struct.Memory** %MEMORY

  ; Code: movzbl %al, %ecx	 RIP: 4e1250	 Bytes: 3
  %loadMem_4e1250 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1250 = call %struct.Memory* @routine_movzbl__al___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1250)
  store %struct.Memory* %call_4e1250, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 4e1253	 Bytes: 3
  %loadMem_4e1253 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1253 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1253)
  store %struct.Memory* %call_4e1253, %struct.Memory** %MEMORY

  ; Code: movq -0xa0(%rbp), %rsi	 RIP: 4e1256	 Bytes: 7
  %loadMem_4e1256 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1256 = call %struct.Memory* @routine_movq_MINUS0xa0__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1256)
  store %struct.Memory* %call_4e1256, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rsi	 RIP: 4e125d	 Bytes: 3
  %loadMem_4e125d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e125d = call %struct.Memory* @routine_addq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e125d)
  store %struct.Memory* %call_4e125d, %struct.Memory** %MEMORY

  ; Code: movq %rsi, 0xafc470	 RIP: 4e1260	 Bytes: 8
  %loadMem_4e1260 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1260 = call %struct.Memory* @routine_movq__rsi__0xafc470(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1260)
  store %struct.Memory* %call_4e1260, %struct.Memory** %MEMORY

  ; Code: .L_4e1268:	 RIP: 4e1268	 Bytes: 0
  br label %block_.L_4e1268
block_.L_4e1268:

  ; Code: cmpq $0x0, -0x20(%rbp)	 RIP: 4e1268	 Bytes: 5
  %loadMem_4e1268 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1268 = call %struct.Memory* @routine_cmpq__0x0__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1268)
  store %struct.Memory* %call_4e1268, %struct.Memory** %MEMORY

  ; Code: je .L_4e18ad	 RIP: 4e126d	 Bytes: 6
  %loadMem_4e126d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e126d = call %struct.Memory* @routine_je_.L_4e18ad(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e126d, i8* %BRANCH_TAKEN, i64 1600, i64 6, i64 6)
  store %struct.Memory* %call_4e126d, %struct.Memory** %MEMORY

  %loadBr_4e126d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4e126d = icmp eq i8 %loadBr_4e126d, 1
  br i1 %cmpBr_4e126d, label %block_.L_4e18ad, label %block_4e1273

block_4e1273:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 4e1273	 Bytes: 4
  %loadMem_4e1273 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1273 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1273)
  store %struct.Memory* %call_4e1273, %struct.Memory** %MEMORY

  ; Code: movslq 0x99c070, %rcx	 RIP: 4e1277	 Bytes: 8
  %loadMem_4e1277 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1277 = call %struct.Memory* @routine_movslq_0x99c070___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1277)
  store %struct.Memory* %call_4e1277, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 4e127f	 Bytes: 4
  %loadMem_4e127f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e127f = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e127f)
  store %struct.Memory* %call_4e127f, %struct.Memory** %MEMORY

  ; Code: movsbl 0x1(%rax), %edx	 RIP: 4e1283	 Bytes: 4
  %loadMem_4e1283 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1283 = call %struct.Memory* @routine_movsbl_0x1__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1283)
  store %struct.Memory* %call_4e1283, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2d, %edx	 RIP: 4e1287	 Bytes: 3
  %loadMem_4e1287 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1287 = call %struct.Memory* @routine_cmpl__0x2d___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1287)
  store %struct.Memory* %call_4e1287, %struct.Memory** %MEMORY

  ; Code: je .L_4e12de	 RIP: 4e128a	 Bytes: 6
  %loadMem_4e128a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e128a = call %struct.Memory* @routine_je_.L_4e12de(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e128a, i8* %BRANCH_TAKEN, i64 84, i64 6, i64 6)
  store %struct.Memory* %call_4e128a, %struct.Memory** %MEMORY

  %loadBr_4e128a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4e128a = icmp eq i8 %loadBr_4e128a, 1
  br i1 %cmpBr_4e128a, label %block_.L_4e12de, label %block_4e1290

block_4e1290:
  ; Code: cmpl $0x0, -0x2c(%rbp)	 RIP: 4e1290	 Bytes: 4
  %loadMem_4e1290 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1290 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1290)
  store %struct.Memory* %call_4e1290, %struct.Memory** %MEMORY

  ; Code: je .L_4e18ad	 RIP: 4e1294	 Bytes: 6
  %loadMem_4e1294 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1294 = call %struct.Memory* @routine_je_.L_4e18ad(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1294, i8* %BRANCH_TAKEN, i64 1561, i64 6, i64 6)
  store %struct.Memory* %call_4e1294, %struct.Memory** %MEMORY

  %loadBr_4e1294 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4e1294 = icmp eq i8 %loadBr_4e1294, 1
  br i1 %cmpBr_4e1294, label %block_.L_4e18ad, label %block_4e129a

block_4e129a:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 4e129a	 Bytes: 4
  %loadMem_4e129a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e129a = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e129a)
  store %struct.Memory* %call_4e129a, %struct.Memory** %MEMORY

  ; Code: movslq 0x99c070, %rcx	 RIP: 4e129e	 Bytes: 8
  %loadMem_4e129e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e129e = call %struct.Memory* @routine_movslq_0x99c070___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e129e)
  store %struct.Memory* %call_4e129e, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 4e12a6	 Bytes: 4
  %loadMem_4e12a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e12a6 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e12a6)
  store %struct.Memory* %call_4e12a6, %struct.Memory** %MEMORY

  ; Code: movsbl 0x2(%rax), %edx	 RIP: 4e12aa	 Bytes: 4
  %loadMem_4e12aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e12aa = call %struct.Memory* @routine_movsbl_0x2__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e12aa)
  store %struct.Memory* %call_4e12aa, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %edx	 RIP: 4e12ae	 Bytes: 3
  %loadMem_4e12ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e12ae = call %struct.Memory* @routine_cmpl__0x0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e12ae)
  store %struct.Memory* %call_4e12ae, %struct.Memory** %MEMORY

  ; Code: jne .L_4e12de	 RIP: 4e12b1	 Bytes: 6
  %loadMem_4e12b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e12b1 = call %struct.Memory* @routine_jne_.L_4e12de(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e12b1, i8* %BRANCH_TAKEN, i64 45, i64 6, i64 6)
  store %struct.Memory* %call_4e12b1, %struct.Memory** %MEMORY

  %loadBr_4e12b1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4e12b1 = icmp eq i8 %loadBr_4e12b1, 1
  br i1 %cmpBr_4e12b1, label %block_.L_4e12de, label %block_4e12b7

block_4e12b7:
  ; Code: movq -0x18(%rbp), %rdi	 RIP: 4e12b7	 Bytes: 4
  %loadMem_4e12b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e12b7 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e12b7)
  store %struct.Memory* %call_4e12b7, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 4e12bb	 Bytes: 4
  %loadMem_4e12bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e12bb = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e12bb)
  store %struct.Memory* %call_4e12bb, %struct.Memory** %MEMORY

  ; Code: movslq 0x99c070, %rcx	 RIP: 4e12bf	 Bytes: 8
  %loadMem_4e12bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e12bf = call %struct.Memory* @routine_movslq_0x99c070___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e12bf)
  store %struct.Memory* %call_4e12bf, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 4e12c7	 Bytes: 4
  %loadMem_4e12c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e12c7 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e12c7)
  store %struct.Memory* %call_4e12c7, %struct.Memory** %MEMORY

  ; Code: movsbl 0x1(%rax), %esi	 RIP: 4e12cb	 Bytes: 4
  %loadMem_4e12cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e12cb = call %struct.Memory* @routine_movsbl_0x1__rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e12cb)
  store %struct.Memory* %call_4e12cb, %struct.Memory** %MEMORY

  ; Code: callq .strchr_plt	 RIP: 4e12cf	 Bytes: 5
  %loadMem1_4e12cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4e12cf = call %struct.Memory* @routine_callq_.strchr_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4e12cf, i64 -918175, i64 5, i64 5)
  store %struct.Memory* %call1_4e12cf, %struct.Memory** %MEMORY

  %loadMem2_4e12cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4e12cf = load i64, i64* %3
  %call2_4e12cf = call %struct.Memory* @sub_401030.strchr_plt(%struct.State* %0, i64  %loadPC_4e12cf, %struct.Memory* %loadMem2_4e12cf)
  store %struct.Memory* %call2_4e12cf, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 4e12d4	 Bytes: 4
  %loadMem_4e12d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e12d4 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e12d4)
  store %struct.Memory* %call_4e12d4, %struct.Memory** %MEMORY

  ; Code: jne .L_4e18ad	 RIP: 4e12d8	 Bytes: 6
  %loadMem_4e12d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e12d8 = call %struct.Memory* @routine_jne_.L_4e18ad(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e12d8, i8* %BRANCH_TAKEN, i64 1493, i64 6, i64 6)
  store %struct.Memory* %call_4e12d8, %struct.Memory** %MEMORY

  %loadBr_4e12d8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4e12d8 = icmp eq i8 %loadBr_4e12d8, 1
  br i1 %cmpBr_4e12d8, label %block_.L_4e18ad, label %block_.L_4e12de

  ; Code: .L_4e12de:	 RIP: 4e12de	 Bytes: 0
block_.L_4e12de:

  ; Code: movq $0x0, -0x48(%rbp)	 RIP: 4e12de	 Bytes: 8
  %loadMem_4e12de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e12de = call %struct.Memory* @routine_movq__0x0__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e12de)
  store %struct.Memory* %call_4e12de, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x4c(%rbp)	 RIP: 4e12e6	 Bytes: 7
  %loadMem_4e12e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e12e6 = call %struct.Memory* @routine_movl__0x0__MINUS0x4c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e12e6)
  store %struct.Memory* %call_4e12e6, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x50(%rbp)	 RIP: 4e12ed	 Bytes: 7
  %loadMem_4e12ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e12ed = call %struct.Memory* @routine_movl__0x0__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e12ed)
  store %struct.Memory* %call_4e12ed, %struct.Memory** %MEMORY

  ; Code: movl $0xffffffff, -0x54(%rbp)	 RIP: 4e12f4	 Bytes: 7
  %loadMem_4e12f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e12f4 = call %struct.Memory* @routine_movl__0xffffffff__MINUS0x54__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e12f4)
  store %struct.Memory* %call_4e12f4, %struct.Memory** %MEMORY

  ; Code: movq 0xafc470, %rax	 RIP: 4e12fb	 Bytes: 8
  %loadMem_4e12fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e12fb = call %struct.Memory* @routine_movq_0xafc470___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e12fb)
  store %struct.Memory* %call_4e12fb, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x38(%rbp)	 RIP: 4e1303	 Bytes: 4
  %loadMem_4e1303 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1303 = call %struct.Memory* @routine_movq__rax__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1303)
  store %struct.Memory* %call_4e1303, %struct.Memory** %MEMORY

  ; Code: .L_4e1307:	 RIP: 4e1307	 Bytes: 0
  br label %block_.L_4e1307
block_.L_4e1307:

  ; Code: xorl %eax, %eax	 RIP: 4e1307	 Bytes: 2
  %loadMem_4e1307 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1307 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1307)
  store %struct.Memory* %call_4e1307, %struct.Memory** %MEMORY

  ; Code: movb %al, %cl	 RIP: 4e1309	 Bytes: 2
  %loadMem_4e1309 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1309 = call %struct.Memory* @routine_movb__al___cl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1309)
  store %struct.Memory* %call_4e1309, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rdx	 RIP: 4e130b	 Bytes: 4
  %loadMem_4e130b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e130b = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e130b)
  store %struct.Memory* %call_4e130b, %struct.Memory** %MEMORY

  ; Code: movsbl (%rdx), %eax	 RIP: 4e130f	 Bytes: 3
  %loadMem_4e130f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e130f = call %struct.Memory* @routine_movsbl___rdx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e130f)
  store %struct.Memory* %call_4e130f, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 4e1312	 Bytes: 3
  %loadMem_4e1312 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1312 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1312)
  store %struct.Memory* %call_4e1312, %struct.Memory** %MEMORY

  ; Code: movb %cl, -0xa2(%rbp)	 RIP: 4e1315	 Bytes: 6
  %loadMem_4e1315 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1315 = call %struct.Memory* @routine_movb__cl__MINUS0xa2__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1315)
  store %struct.Memory* %call_4e1315, %struct.Memory** %MEMORY

  ; Code: je .L_4e1334	 RIP: 4e131b	 Bytes: 6
  %loadMem_4e131b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e131b = call %struct.Memory* @routine_je_.L_4e1334(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e131b, i8* %BRANCH_TAKEN, i64 25, i64 6, i64 6)
  store %struct.Memory* %call_4e131b, %struct.Memory** %MEMORY

  %loadBr_4e131b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4e131b = icmp eq i8 %loadBr_4e131b, 1
  br i1 %cmpBr_4e131b, label %block_.L_4e1334, label %block_4e1321

block_4e1321:
  ; Code: movq -0x38(%rbp), %rax	 RIP: 4e1321	 Bytes: 4
  %loadMem_4e1321 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1321 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1321)
  store %struct.Memory* %call_4e1321, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax), %ecx	 RIP: 4e1325	 Bytes: 3
  %loadMem_4e1325 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1325 = call %struct.Memory* @routine_movsbl___rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1325)
  store %struct.Memory* %call_4e1325, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3d, %ecx	 RIP: 4e1328	 Bytes: 3
  %loadMem_4e1328 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1328 = call %struct.Memory* @routine_cmpl__0x3d___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1328)
  store %struct.Memory* %call_4e1328, %struct.Memory** %MEMORY

  ; Code: setne %dl	 RIP: 4e132b	 Bytes: 3
  %loadMem_4e132b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e132b = call %struct.Memory* @routine_setne__dl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e132b)
  store %struct.Memory* %call_4e132b, %struct.Memory** %MEMORY

  ; Code: movb %dl, -0xa2(%rbp)	 RIP: 4e132e	 Bytes: 6
  %loadMem_4e132e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e132e = call %struct.Memory* @routine_movb__dl__MINUS0xa2__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e132e)
  store %struct.Memory* %call_4e132e, %struct.Memory** %MEMORY

  ; Code: .L_4e1334:	 RIP: 4e1334	 Bytes: 0
  br label %block_.L_4e1334
block_.L_4e1334:

  ; Code: movb -0xa2(%rbp), %al	 RIP: 4e1334	 Bytes: 6
  %loadMem_4e1334 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1334 = call %struct.Memory* @routine_movb_MINUS0xa2__rbp____al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1334)
  store %struct.Memory* %call_4e1334, %struct.Memory** %MEMORY

  ; Code: testb $0x1, %al	 RIP: 4e133a	 Bytes: 2
  %loadMem_4e133a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e133a = call %struct.Memory* @routine_testb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e133a)
  store %struct.Memory* %call_4e133a, %struct.Memory** %MEMORY

  ; Code: jne .L_4e1347	 RIP: 4e133c	 Bytes: 6
  %loadMem_4e133c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e133c = call %struct.Memory* @routine_jne_.L_4e1347(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e133c, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_4e133c, %struct.Memory** %MEMORY

  %loadBr_4e133c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4e133c = icmp eq i8 %loadBr_4e133c, 1
  br i1 %cmpBr_4e133c, label %block_.L_4e1347, label %block_4e1342

block_4e1342:
  ; Code: jmpq .L_4e135d	 RIP: 4e1342	 Bytes: 5
  %loadMem_4e1342 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1342 = call %struct.Memory* @routine_jmpq_.L_4e135d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1342, i64 27, i64 5)
  store %struct.Memory* %call_4e1342, %struct.Memory** %MEMORY

  br label %block_.L_4e135d

  ; Code: .L_4e1347:	 RIP: 4e1347	 Bytes: 0
block_.L_4e1347:

  ; Code: jmpq .L_4e134c	 RIP: 4e1347	 Bytes: 5
  %loadMem_4e1347 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1347 = call %struct.Memory* @routine_jmpq_.L_4e134c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1347, i64 5, i64 5)
  store %struct.Memory* %call_4e1347, %struct.Memory** %MEMORY

  br label %block_.L_4e134c

  ; Code: .L_4e134c:	 RIP: 4e134c	 Bytes: 0
block_.L_4e134c:

  ; Code: movq -0x38(%rbp), %rax	 RIP: 4e134c	 Bytes: 4
  %loadMem_4e134c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e134c = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e134c)
  store %struct.Memory* %call_4e134c, %struct.Memory** %MEMORY

  ; Code: addq $0x1, %rax	 RIP: 4e1350	 Bytes: 4
  %loadMem_4e1350 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1350 = call %struct.Memory* @routine_addq__0x1___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1350)
  store %struct.Memory* %call_4e1350, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x38(%rbp)	 RIP: 4e1354	 Bytes: 4
  %loadMem_4e1354 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1354 = call %struct.Memory* @routine_movq__rax__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1354)
  store %struct.Memory* %call_4e1354, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4e1307	 RIP: 4e1358	 Bytes: 5
  %loadMem_4e1358 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1358 = call %struct.Memory* @routine_jmpq_.L_4e1307(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1358, i64 -81, i64 5)
  store %struct.Memory* %call_4e1358, %struct.Memory** %MEMORY

  br label %block_.L_4e1307

  ; Code: .L_4e135d:	 RIP: 4e135d	 Bytes: 0
block_.L_4e135d:

  ; Code: movq -0x20(%rbp), %rax	 RIP: 4e135d	 Bytes: 4
  %loadMem_4e135d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e135d = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e135d)
  store %struct.Memory* %call_4e135d, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x40(%rbp)	 RIP: 4e1361	 Bytes: 4
  %loadMem_4e1361 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1361 = call %struct.Memory* @routine_movq__rax__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1361)
  store %struct.Memory* %call_4e1361, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x58(%rbp)	 RIP: 4e1365	 Bytes: 7
  %loadMem_4e1365 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1365 = call %struct.Memory* @routine_movl__0x0__MINUS0x58__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1365)
  store %struct.Memory* %call_4e1365, %struct.Memory** %MEMORY

  ; Code: .L_4e136c:	 RIP: 4e136c	 Bytes: 0
  br label %block_.L_4e136c
block_.L_4e136c:

  ; Code: movq -0x40(%rbp), %rax	 RIP: 4e136c	 Bytes: 4
  %loadMem_4e136c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e136c = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e136c)
  store %struct.Memory* %call_4e136c, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, (%rax)	 RIP: 4e1370	 Bytes: 4
  %loadMem_4e1370 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1370 = call %struct.Memory* @routine_cmpq__0x0____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1370)
  store %struct.Memory* %call_4e1370, %struct.Memory** %MEMORY

  ; Code: je .L_4e1444	 RIP: 4e1374	 Bytes: 6
  %loadMem_4e1374 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1374 = call %struct.Memory* @routine_je_.L_4e1444(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1374, i8* %BRANCH_TAKEN, i64 208, i64 6, i64 6)
  store %struct.Memory* %call_4e1374, %struct.Memory** %MEMORY

  %loadBr_4e1374 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4e1374 = icmp eq i8 %loadBr_4e1374, 1
  br i1 %cmpBr_4e1374, label %block_.L_4e1444, label %block_4e137a

block_4e137a:
  ; Code: movq -0x40(%rbp), %rax	 RIP: 4e137a	 Bytes: 4
  %loadMem_4e137a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e137a = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e137a)
  store %struct.Memory* %call_4e137a, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rdi	 RIP: 4e137e	 Bytes: 3
  %loadMem_4e137e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e137e = call %struct.Memory* @routine_movq___rax____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e137e)
  store %struct.Memory* %call_4e137e, %struct.Memory** %MEMORY

  ; Code: movq 0xafc470, %rsi	 RIP: 4e1381	 Bytes: 8
  %loadMem_4e1381 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1381 = call %struct.Memory* @routine_movq_0xafc470___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1381)
  store %struct.Memory* %call_4e1381, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rax	 RIP: 4e1389	 Bytes: 4
  %loadMem_4e1389 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1389 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1389)
  store %struct.Memory* %call_4e1389, %struct.Memory** %MEMORY

  ; Code: movq 0xafc470, %rcx	 RIP: 4e138d	 Bytes: 8
  %loadMem_4e138d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e138d = call %struct.Memory* @routine_movq_0xafc470___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e138d)
  store %struct.Memory* %call_4e138d, %struct.Memory** %MEMORY

  ; Code: subq %rcx, %rax	 RIP: 4e1395	 Bytes: 3
  %loadMem_4e1395 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1395 = call %struct.Memory* @routine_subq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1395)
  store %struct.Memory* %call_4e1395, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 4e1398	 Bytes: 3
  %loadMem_4e1398 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1398 = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1398)
  store %struct.Memory* %call_4e1398, %struct.Memory** %MEMORY

  ; Code: callq .strncmp_plt	 RIP: 4e139b	 Bytes: 5
  %loadMem1_4e139b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4e139b = call %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4e139b, i64 -918507, i64 5, i64 5)
  store %struct.Memory* %call1_4e139b, %struct.Memory** %MEMORY

  %loadMem2_4e139b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4e139b = load i64, i64* %3
  %call2_4e139b = call %struct.Memory* @ext_strncmp(%struct.State* %0, i64  %loadPC_4e139b, %struct.Memory* %loadMem2_4e139b)
  store %struct.Memory* %call2_4e139b, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 4e13a0	 Bytes: 3
  %loadMem_4e13a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e13a0 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e13a0)
  store %struct.Memory* %call_4e13a0, %struct.Memory** %MEMORY

  ; Code: jne .L_4e1425	 RIP: 4e13a3	 Bytes: 6
  %loadMem_4e13a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e13a3 = call %struct.Memory* @routine_jne_.L_4e1425(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e13a3, i8* %BRANCH_TAKEN, i64 130, i64 6, i64 6)
  store %struct.Memory* %call_4e13a3, %struct.Memory** %MEMORY

  %loadBr_4e13a3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4e13a3 = icmp eq i8 %loadBr_4e13a3, 1
  br i1 %cmpBr_4e13a3, label %block_.L_4e1425, label %block_4e13a9

block_4e13a9:
  ; Code: movq -0x38(%rbp), %rax	 RIP: 4e13a9	 Bytes: 4
  %loadMem_4e13a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e13a9 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e13a9)
  store %struct.Memory* %call_4e13a9, %struct.Memory** %MEMORY

  ; Code: movq 0xafc470, %rcx	 RIP: 4e13ad	 Bytes: 8
  %loadMem_4e13ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e13ad = call %struct.Memory* @routine_movq_0xafc470___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e13ad)
  store %struct.Memory* %call_4e13ad, %struct.Memory** %MEMORY

  ; Code: subq %rcx, %rax	 RIP: 4e13b5	 Bytes: 3
  %loadMem_4e13b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e13b5 = call %struct.Memory* @routine_subq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e13b5)
  store %struct.Memory* %call_4e13b5, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 4e13b8	 Bytes: 2
  %loadMem_4e13b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e13b8 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e13b8)
  store %struct.Memory* %call_4e13b8, %struct.Memory** %MEMORY

  ; Code: movq -0x40(%rbp), %rax	 RIP: 4e13ba	 Bytes: 4
  %loadMem_4e13ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e13ba = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e13ba)
  store %struct.Memory* %call_4e13ba, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rdi	 RIP: 4e13be	 Bytes: 3
  %loadMem_4e13be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e13be = call %struct.Memory* @routine_movq___rax____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e13be)
  store %struct.Memory* %call_4e13be, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0xa8(%rbp)	 RIP: 4e13c1	 Bytes: 6
  %loadMem_4e13c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e13c1 = call %struct.Memory* @routine_movl__edx__MINUS0xa8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e13c1)
  store %struct.Memory* %call_4e13c1, %struct.Memory** %MEMORY

  ; Code: callq .strlen_plt	 RIP: 4e13c7	 Bytes: 5
  %loadMem1_4e13c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4e13c7 = call %struct.Memory* @routine_callq_.strlen_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4e13c7, i64 -918455, i64 5, i64 5)
  store %struct.Memory* %call1_4e13c7, %struct.Memory** %MEMORY

  %loadMem2_4e13c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4e13c7 = load i64, i64* %3
  %call2_4e13c7 = call %struct.Memory* @ext_strlen(%struct.State* %0, i64  %loadPC_4e13c7, %struct.Memory* %loadMem2_4e13c7)
  store %struct.Memory* %call2_4e13c7, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 4e13cc	 Bytes: 2
  %loadMem_4e13cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e13cc = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e13cc)
  store %struct.Memory* %call_4e13cc, %struct.Memory** %MEMORY

  ; Code: movl -0xa8(%rbp), %esi	 RIP: 4e13ce	 Bytes: 6
  %loadMem_4e13ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e13ce = call %struct.Memory* @routine_movl_MINUS0xa8__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e13ce)
  store %struct.Memory* %call_4e13ce, %struct.Memory** %MEMORY

  ; Code: cmpl %edx, %esi	 RIP: 4e13d4	 Bytes: 2
  %loadMem_4e13d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e13d4 = call %struct.Memory* @routine_cmpl__edx___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e13d4)
  store %struct.Memory* %call_4e13d4, %struct.Memory** %MEMORY

  ; Code: jne .L_4e13f6	 RIP: 4e13d6	 Bytes: 6
  %loadMem_4e13d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e13d6 = call %struct.Memory* @routine_jne_.L_4e13f6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e13d6, i8* %BRANCH_TAKEN, i64 32, i64 6, i64 6)
  store %struct.Memory* %call_4e13d6, %struct.Memory** %MEMORY

  %loadBr_4e13d6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4e13d6 = icmp eq i8 %loadBr_4e13d6, 1
  br i1 %cmpBr_4e13d6, label %block_.L_4e13f6, label %block_4e13dc

block_4e13dc:
  ; Code: movq -0x40(%rbp), %rax	 RIP: 4e13dc	 Bytes: 4
  %loadMem_4e13dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e13dc = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e13dc)
  store %struct.Memory* %call_4e13dc, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x48(%rbp)	 RIP: 4e13e0	 Bytes: 4
  %loadMem_4e13e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e13e0 = call %struct.Memory* @routine_movq__rax__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e13e0)
  store %struct.Memory* %call_4e13e0, %struct.Memory** %MEMORY

  ; Code: movl -0x58(%rbp), %ecx	 RIP: 4e13e4	 Bytes: 3
  %loadMem_4e13e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e13e4 = call %struct.Memory* @routine_movl_MINUS0x58__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e13e4)
  store %struct.Memory* %call_4e13e4, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x54(%rbp)	 RIP: 4e13e7	 Bytes: 3
  %loadMem_4e13e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e13e7 = call %struct.Memory* @routine_movl__ecx__MINUS0x54__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e13e7)
  store %struct.Memory* %call_4e13e7, %struct.Memory** %MEMORY

  ; Code: movl $0x1, -0x4c(%rbp)	 RIP: 4e13ea	 Bytes: 7
  %loadMem_4e13ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e13ea = call %struct.Memory* @routine_movl__0x1__MINUS0x4c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e13ea)
  store %struct.Memory* %call_4e13ea, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4e1444	 RIP: 4e13f1	 Bytes: 5
  %loadMem_4e13f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e13f1 = call %struct.Memory* @routine_jmpq_.L_4e1444(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e13f1, i64 83, i64 5)
  store %struct.Memory* %call_4e13f1, %struct.Memory** %MEMORY

  br label %block_.L_4e1444

  ; Code: .L_4e13f6:	 RIP: 4e13f6	 Bytes: 0
block_.L_4e13f6:

  ; Code: cmpq $0x0, -0x48(%rbp)	 RIP: 4e13f6	 Bytes: 5
  %loadMem_4e13f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e13f6 = call %struct.Memory* @routine_cmpq__0x0__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e13f6)
  store %struct.Memory* %call_4e13f6, %struct.Memory** %MEMORY

  ; Code: jne .L_4e1414	 RIP: 4e13fb	 Bytes: 6
  %loadMem_4e13fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e13fb = call %struct.Memory* @routine_jne_.L_4e1414(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e13fb, i8* %BRANCH_TAKEN, i64 25, i64 6, i64 6)
  store %struct.Memory* %call_4e13fb, %struct.Memory** %MEMORY

  %loadBr_4e13fb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4e13fb = icmp eq i8 %loadBr_4e13fb, 1
  br i1 %cmpBr_4e13fb, label %block_.L_4e1414, label %block_4e1401

block_4e1401:
  ; Code: movq -0x40(%rbp), %rax	 RIP: 4e1401	 Bytes: 4
  %loadMem_4e1401 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1401 = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1401)
  store %struct.Memory* %call_4e1401, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x48(%rbp)	 RIP: 4e1405	 Bytes: 4
  %loadMem_4e1405 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1405 = call %struct.Memory* @routine_movq__rax__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1405)
  store %struct.Memory* %call_4e1405, %struct.Memory** %MEMORY

  ; Code: movl -0x58(%rbp), %ecx	 RIP: 4e1409	 Bytes: 3
  %loadMem_4e1409 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1409 = call %struct.Memory* @routine_movl_MINUS0x58__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1409)
  store %struct.Memory* %call_4e1409, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x54(%rbp)	 RIP: 4e140c	 Bytes: 3
  %loadMem_4e140c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e140c = call %struct.Memory* @routine_movl__ecx__MINUS0x54__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e140c)
  store %struct.Memory* %call_4e140c, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4e141b	 RIP: 4e140f	 Bytes: 5
  %loadMem_4e140f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e140f = call %struct.Memory* @routine_jmpq_.L_4e141b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e140f, i64 12, i64 5)
  store %struct.Memory* %call_4e140f, %struct.Memory** %MEMORY

  br label %block_.L_4e141b

  ; Code: .L_4e1414:	 RIP: 4e1414	 Bytes: 0
block_.L_4e1414:

  ; Code: movl $0x1, -0x50(%rbp)	 RIP: 4e1414	 Bytes: 7
  %loadMem_4e1414 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1414 = call %struct.Memory* @routine_movl__0x1__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1414)
  store %struct.Memory* %call_4e1414, %struct.Memory** %MEMORY

  ; Code: .L_4e141b:	 RIP: 4e141b	 Bytes: 0
  br label %block_.L_4e141b
block_.L_4e141b:

  ; Code: jmpq .L_4e1420	 RIP: 4e141b	 Bytes: 5
  %loadMem_4e141b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e141b = call %struct.Memory* @routine_jmpq_.L_4e1420(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e141b, i64 5, i64 5)
  store %struct.Memory* %call_4e141b, %struct.Memory** %MEMORY

  br label %block_.L_4e1420

  ; Code: .L_4e1420:	 RIP: 4e1420	 Bytes: 0
block_.L_4e1420:

  ; Code: jmpq .L_4e1425	 RIP: 4e1420	 Bytes: 5
  %loadMem_4e1420 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1420 = call %struct.Memory* @routine_jmpq_.L_4e1425(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1420, i64 5, i64 5)
  store %struct.Memory* %call_4e1420, %struct.Memory** %MEMORY

  br label %block_.L_4e1425

  ; Code: .L_4e1425:	 RIP: 4e1425	 Bytes: 0
block_.L_4e1425:

  ; Code: jmpq .L_4e142a	 RIP: 4e1425	 Bytes: 5
  %loadMem_4e1425 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1425 = call %struct.Memory* @routine_jmpq_.L_4e142a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1425, i64 5, i64 5)
  store %struct.Memory* %call_4e1425, %struct.Memory** %MEMORY

  br label %block_.L_4e142a

  ; Code: .L_4e142a:	 RIP: 4e142a	 Bytes: 0
block_.L_4e142a:

  ; Code: movq -0x40(%rbp), %rax	 RIP: 4e142a	 Bytes: 4
  %loadMem_4e142a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e142a = call %struct.Memory* @routine_movq_MINUS0x40__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e142a)
  store %struct.Memory* %call_4e142a, %struct.Memory** %MEMORY

  ; Code: addq $0x20, %rax	 RIP: 4e142e	 Bytes: 4
  %loadMem_4e142e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e142e = call %struct.Memory* @routine_addq__0x20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e142e)
  store %struct.Memory* %call_4e142e, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x40(%rbp)	 RIP: 4e1432	 Bytes: 4
  %loadMem_4e1432 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1432 = call %struct.Memory* @routine_movq__rax__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1432)
  store %struct.Memory* %call_4e1432, %struct.Memory** %MEMORY

  ; Code: movl -0x58(%rbp), %ecx	 RIP: 4e1436	 Bytes: 3
  %loadMem_4e1436 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1436 = call %struct.Memory* @routine_movl_MINUS0x58__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1436)
  store %struct.Memory* %call_4e1436, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 4e1439	 Bytes: 3
  %loadMem_4e1439 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1439 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1439)
  store %struct.Memory* %call_4e1439, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x58(%rbp)	 RIP: 4e143c	 Bytes: 3
  %loadMem_4e143c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e143c = call %struct.Memory* @routine_movl__ecx__MINUS0x58__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e143c)
  store %struct.Memory* %call_4e143c, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4e136c	 RIP: 4e143f	 Bytes: 5
  %loadMem_4e143f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e143f = call %struct.Memory* @routine_jmpq_.L_4e136c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e143f, i64 -211, i64 5)
  store %struct.Memory* %call_4e143f, %struct.Memory** %MEMORY

  br label %block_.L_4e136c

  ; Code: .L_4e1444:	 RIP: 4e1444	 Bytes: 0
block_.L_4e1444:

  ; Code: cmpl $0x0, -0x50(%rbp)	 RIP: 4e1444	 Bytes: 4
  %loadMem_4e1444 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1444 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1444)
  store %struct.Memory* %call_4e1444, %struct.Memory** %MEMORY

  ; Code: je .L_4e14e1	 RIP: 4e1448	 Bytes: 6
  %loadMem_4e1448 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1448 = call %struct.Memory* @routine_je_.L_4e14e1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1448, i8* %BRANCH_TAKEN, i64 153, i64 6, i64 6)
  store %struct.Memory* %call_4e1448, %struct.Memory** %MEMORY

  %loadBr_4e1448 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4e1448 = icmp eq i8 %loadBr_4e1448, 1
  br i1 %cmpBr_4e1448, label %block_.L_4e14e1, label %block_4e144e

block_4e144e:
  ; Code: cmpl $0x0, -0x4c(%rbp)	 RIP: 4e144e	 Bytes: 4
  %loadMem_4e144e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e144e = call %struct.Memory* @routine_cmpl__0x0__MINUS0x4c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e144e)
  store %struct.Memory* %call_4e144e, %struct.Memory** %MEMORY

  ; Code: jne .L_4e14e1	 RIP: 4e1452	 Bytes: 6
  %loadMem_4e1452 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1452 = call %struct.Memory* @routine_jne_.L_4e14e1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1452, i8* %BRANCH_TAKEN, i64 143, i64 6, i64 6)
  store %struct.Memory* %call_4e1452, %struct.Memory** %MEMORY

  %loadBr_4e1452 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4e1452 = icmp eq i8 %loadBr_4e1452, 1
  br i1 %cmpBr_4e1452, label %block_.L_4e14e1, label %block_4e1458

block_4e1458:
  ; Code: cmpl $0x0, 0x99c074	 RIP: 4e1458	 Bytes: 8
  %loadMem_4e1458 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1458 = call %struct.Memory* @routine_cmpl__0x0__0x99c074(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1458)
  store %struct.Memory* %call_4e1458, %struct.Memory** %MEMORY

  ; Code: je .L_4e149c	 RIP: 4e1460	 Bytes: 6
  %loadMem_4e1460 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1460 = call %struct.Memory* @routine_je_.L_4e149c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1460, i8* %BRANCH_TAKEN, i64 60, i64 6, i64 6)
  store %struct.Memory* %call_4e1460, %struct.Memory** %MEMORY

  %loadBr_4e1460 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4e1460 = icmp eq i8 %loadBr_4e1460, 1
  br i1 %cmpBr_4e1460, label %block_.L_4e149c, label %block_4e1466

block_4e1466:
  ; Code: movq $0x59517b, %rsi	 RIP: 4e1466	 Bytes: 10
  %loadMem_4e1466 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1466 = call %struct.Memory* @routine_movq__0x59517b___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1466)
  store %struct.Memory* %call_4e1466, %struct.Memory** %MEMORY

  ; Code: movq 0x99c0a0, %rdi	 RIP: 4e1470	 Bytes: 8
  %loadMem_4e1470 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1470 = call %struct.Memory* @routine_movq_0x99c0a0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1470)
  store %struct.Memory* %call_4e1470, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 4e1478	 Bytes: 4
  %loadMem_4e1478 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1478 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1478)
  store %struct.Memory* %call_4e1478, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rdx	 RIP: 4e147c	 Bytes: 3
  %loadMem_4e147c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e147c = call %struct.Memory* @routine_movq___rax____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e147c)
  store %struct.Memory* %call_4e147c, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 4e147f	 Bytes: 4
  %loadMem_4e147f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e147f = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e147f)
  store %struct.Memory* %call_4e147f, %struct.Memory** %MEMORY

  ; Code: movslq 0x99c070, %rcx	 RIP: 4e1483	 Bytes: 8
  %loadMem_4e1483 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1483 = call %struct.Memory* @routine_movslq_0x99c070___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1483)
  store %struct.Memory* %call_4e1483, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rcx	 RIP: 4e148b	 Bytes: 4
  %loadMem_4e148b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e148b = call %struct.Memory* @routine_movq___rax__rcx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e148b)
  store %struct.Memory* %call_4e148b, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 4e148f	 Bytes: 2
  %loadMem_4e148f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e148f = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e148f)
  store %struct.Memory* %call_4e148f, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 4e1491	 Bytes: 5
  %loadMem1_4e1491 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4e1491 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4e1491, i64 -918465, i64 5, i64 5)
  store %struct.Memory* %call1_4e1491, %struct.Memory** %MEMORY

  %loadMem2_4e1491 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4e1491 = load i64, i64* %3
  %call2_4e1491 = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_4e1491, %struct.Memory* %loadMem2_4e1491)
  store %struct.Memory* %call2_4e1491, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xac(%rbp)	 RIP: 4e1496	 Bytes: 6
  %loadMem_4e1496 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1496 = call %struct.Memory* @routine_movl__eax__MINUS0xac__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1496)
  store %struct.Memory* %call_4e1496, %struct.Memory** %MEMORY

  ; Code: .L_4e149c:	 RIP: 4e149c	 Bytes: 0
  br label %block_.L_4e149c
block_.L_4e149c:

  ; Code: movq 0xafc470, %rdi	 RIP: 4e149c	 Bytes: 8
  %loadMem_4e149c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e149c = call %struct.Memory* @routine_movq_0xafc470___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e149c)
  store %struct.Memory* %call_4e149c, %struct.Memory** %MEMORY

  ; Code: callq .strlen_plt	 RIP: 4e14a4	 Bytes: 5
  %loadMem1_4e14a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4e14a4 = call %struct.Memory* @routine_callq_.strlen_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4e14a4, i64 -918676, i64 5, i64 5)
  store %struct.Memory* %call1_4e14a4, %struct.Memory** %MEMORY

  %loadMem2_4e14a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4e14a4 = load i64, i64* %3
  %call2_4e14a4 = call %struct.Memory* @ext_strlen(%struct.State* %0, i64  %loadPC_4e14a4, %struct.Memory* %loadMem2_4e14a4)
  store %struct.Memory* %call2_4e14a4, %struct.Memory** %MEMORY

  ; Code: addq 0xafc470, %rax	 RIP: 4e14a9	 Bytes: 8
  %loadMem_4e14a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e14a9 = call %struct.Memory* @routine_addq_0xafc470___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e14a9)
  store %struct.Memory* %call_4e14a9, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0xafc470	 RIP: 4e14b1	 Bytes: 8
  %loadMem_4e14b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e14b1 = call %struct.Memory* @routine_movq__rax__0xafc470(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e14b1)
  store %struct.Memory* %call_4e14b1, %struct.Memory** %MEMORY

  ; Code: movl 0x99c070, %ecx	 RIP: 4e14b9	 Bytes: 7
  %loadMem_4e14b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e14b9 = call %struct.Memory* @routine_movl_0x99c070___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e14b9)
  store %struct.Memory* %call_4e14b9, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 4e14c0	 Bytes: 3
  %loadMem_4e14c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e14c0 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e14c0)
  store %struct.Memory* %call_4e14c0, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x99c070	 RIP: 4e14c3	 Bytes: 7
  %loadMem_4e14c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e14c3 = call %struct.Memory* @routine_movl__ecx__0x99c070(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e14c3)
  store %struct.Memory* %call_4e14c3, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x99c078	 RIP: 4e14ca	 Bytes: 11
  %loadMem_4e14ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e14ca = call %struct.Memory* @routine_movl__0x0__0x99c078(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e14ca)
  store %struct.Memory* %call_4e14ca, %struct.Memory** %MEMORY

  ; Code: movl $0x3f, -0x4(%rbp)	 RIP: 4e14d5	 Bytes: 7
  %loadMem_4e14d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e14d5 = call %struct.Memory* @routine_movl__0x3f__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e14d5)
  store %struct.Memory* %call_4e14d5, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4e206c	 RIP: 4e14dc	 Bytes: 5
  %loadMem_4e14dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e14dc = call %struct.Memory* @routine_jmpq_.L_4e206c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e14dc, i64 2960, i64 5)
  store %struct.Memory* %call_4e14dc, %struct.Memory** %MEMORY

  br label %block_.L_4e206c

  ; Code: .L_4e14e1:	 RIP: 4e14e1	 Bytes: 0
block_.L_4e14e1:

  ; Code: cmpq $0x0, -0x48(%rbp)	 RIP: 4e14e1	 Bytes: 5
  %loadMem_4e14e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e14e1 = call %struct.Memory* @routine_cmpq__0x0__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e14e1)
  store %struct.Memory* %call_4e14e1, %struct.Memory** %MEMORY

  ; Code: je .L_4e1785	 RIP: 4e14e6	 Bytes: 6
  %loadMem_4e14e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e14e6 = call %struct.Memory* @routine_je_.L_4e1785(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e14e6, i8* %BRANCH_TAKEN, i64 671, i64 6, i64 6)
  store %struct.Memory* %call_4e14e6, %struct.Memory** %MEMORY

  %loadBr_4e14e6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4e14e6 = icmp eq i8 %loadBr_4e14e6, 1
  br i1 %cmpBr_4e14e6, label %block_.L_4e1785, label %block_4e14ec

block_4e14ec:
  ; Code: movl -0x54(%rbp), %eax	 RIP: 4e14ec	 Bytes: 3
  %loadMem_4e14ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e14ec = call %struct.Memory* @routine_movl_MINUS0x54__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e14ec)
  store %struct.Memory* %call_4e14ec, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x58(%rbp)	 RIP: 4e14ef	 Bytes: 3
  %loadMem_4e14ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e14ef = call %struct.Memory* @routine_movl__eax__MINUS0x58__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e14ef)
  store %struct.Memory* %call_4e14ef, %struct.Memory** %MEMORY

  ; Code: movl 0x99c070, %eax	 RIP: 4e14f2	 Bytes: 7
  %loadMem_4e14f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e14f2 = call %struct.Memory* @routine_movl_0x99c070___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e14f2)
  store %struct.Memory* %call_4e14f2, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4e14f9	 Bytes: 3
  %loadMem_4e14f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e14f9 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e14f9)
  store %struct.Memory* %call_4e14f9, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x99c070	 RIP: 4e14fc	 Bytes: 7
  %loadMem_4e14fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e14fc = call %struct.Memory* @routine_movl__eax__0x99c070(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e14fc)
  store %struct.Memory* %call_4e14fc, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rcx	 RIP: 4e1503	 Bytes: 4
  %loadMem_4e1503 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1503 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1503)
  store %struct.Memory* %call_4e1503, %struct.Memory** %MEMORY

  ; Code: cmpb $0x0, (%rcx)	 RIP: 4e1507	 Bytes: 3
  %loadMem_4e1507 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1507 = call %struct.Memory* @routine_cmpb__0x0____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1507)
  store %struct.Memory* %call_4e1507, %struct.Memory** %MEMORY

  ; Code: je .L_4e161b	 RIP: 4e150a	 Bytes: 6
  %loadMem_4e150a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e150a = call %struct.Memory* @routine_je_.L_4e161b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e150a, i8* %BRANCH_TAKEN, i64 273, i64 6, i64 6)
  store %struct.Memory* %call_4e150a, %struct.Memory** %MEMORY

  %loadBr_4e150a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4e150a = icmp eq i8 %loadBr_4e150a, 1
  br i1 %cmpBr_4e150a, label %block_.L_4e161b, label %block_4e1510

block_4e1510:
  ; Code: movq -0x48(%rbp), %rax	 RIP: 4e1510	 Bytes: 4
  %loadMem_4e1510 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1510 = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1510)
  store %struct.Memory* %call_4e1510, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x8(%rax)	 RIP: 4e1514	 Bytes: 4
  %loadMem_4e1514 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1514 = call %struct.Memory* @routine_cmpl__0x0__0x8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1514)
  store %struct.Memory* %call_4e1514, %struct.Memory** %MEMORY

  ; Code: je .L_4e1533	 RIP: 4e1518	 Bytes: 6
  %loadMem_4e1518 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1518 = call %struct.Memory* @routine_je_.L_4e1533(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1518, i8* %BRANCH_TAKEN, i64 27, i64 6, i64 6)
  store %struct.Memory* %call_4e1518, %struct.Memory** %MEMORY

  %loadBr_4e1518 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4e1518 = icmp eq i8 %loadBr_4e1518, 1
  br i1 %cmpBr_4e1518, label %block_.L_4e1533, label %block_4e151e

block_4e151e:
  ; Code: movq -0x38(%rbp), %rax	 RIP: 4e151e	 Bytes: 4
  %loadMem_4e151e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e151e = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e151e)
  store %struct.Memory* %call_4e151e, %struct.Memory** %MEMORY

  ; Code: addq $0x1, %rax	 RIP: 4e1522	 Bytes: 4
  %loadMem_4e1522 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1522 = call %struct.Memory* @routine_addq__0x1___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1522)
  store %struct.Memory* %call_4e1522, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0xb89e50	 RIP: 4e1526	 Bytes: 8
  %loadMem_4e1526 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1526 = call %struct.Memory* @routine_movq__rax__0xb89e50(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1526)
  store %struct.Memory* %call_4e1526, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4e1616	 RIP: 4e152e	 Bytes: 5
  %loadMem_4e152e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e152e = call %struct.Memory* @routine_jmpq_.L_4e1616(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e152e, i64 232, i64 5)
  store %struct.Memory* %call_4e152e, %struct.Memory** %MEMORY

  br label %block_.L_4e1616

  ; Code: .L_4e1533:	 RIP: 4e1533	 Bytes: 0
block_.L_4e1533:

  ; Code: cmpl $0x0, 0x99c074	 RIP: 4e1533	 Bytes: 8
  %loadMem_4e1533 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1533 = call %struct.Memory* @routine_cmpl__0x0__0x99c074(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1533)
  store %struct.Memory* %call_4e1533, %struct.Memory** %MEMORY

  ; Code: je .L_4e15df	 RIP: 4e153b	 Bytes: 6
  %loadMem_4e153b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e153b = call %struct.Memory* @routine_je_.L_4e15df(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e153b, i8* %BRANCH_TAKEN, i64 164, i64 6, i64 6)
  store %struct.Memory* %call_4e153b, %struct.Memory** %MEMORY

  %loadBr_4e153b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4e153b = icmp eq i8 %loadBr_4e153b, 1
  br i1 %cmpBr_4e153b, label %block_.L_4e15df, label %block_4e1541

block_4e1541:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 4e1541	 Bytes: 4
  %loadMem_4e1541 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1541 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1541)
  store %struct.Memory* %call_4e1541, %struct.Memory** %MEMORY

  ; Code: movl 0x99c070, %ecx	 RIP: 4e1545	 Bytes: 7
  %loadMem_4e1545 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1545 = call %struct.Memory* @routine_movl_0x99c070___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1545)
  store %struct.Memory* %call_4e1545, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 4e154c	 Bytes: 3
  %loadMem_4e154c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e154c = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e154c)
  store %struct.Memory* %call_4e154c, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 4e154f	 Bytes: 3
  %loadMem_4e154f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e154f = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e154f)
  store %struct.Memory* %call_4e154f, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rdx,8), %rax	 RIP: 4e1552	 Bytes: 4
  %loadMem_4e1552 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1552 = call %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1552)
  store %struct.Memory* %call_4e1552, %struct.Memory** %MEMORY

  ; Code: movsbl 0x1(%rax), %ecx	 RIP: 4e1556	 Bytes: 4
  %loadMem_4e1556 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1556 = call %struct.Memory* @routine_movsbl_0x1__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1556)
  store %struct.Memory* %call_4e1556, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2d, %ecx	 RIP: 4e155a	 Bytes: 3
  %loadMem_4e155a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e155a = call %struct.Memory* @routine_cmpl__0x2d___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e155a)
  store %struct.Memory* %call_4e155a, %struct.Memory** %MEMORY

  ; Code: jne .L_4e1595	 RIP: 4e155d	 Bytes: 6
  %loadMem_4e155d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e155d = call %struct.Memory* @routine_jne_.L_4e1595(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e155d, i8* %BRANCH_TAKEN, i64 56, i64 6, i64 6)
  store %struct.Memory* %call_4e155d, %struct.Memory** %MEMORY

  %loadBr_4e155d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4e155d = icmp eq i8 %loadBr_4e155d, 1
  br i1 %cmpBr_4e155d, label %block_.L_4e1595, label %block_4e1563

block_4e1563:
  ; Code: movq $0x595199, %rsi	 RIP: 4e1563	 Bytes: 10
  %loadMem_4e1563 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1563 = call %struct.Memory* @routine_movq__0x595199___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1563)
  store %struct.Memory* %call_4e1563, %struct.Memory** %MEMORY

  ; Code: movq 0x99c0a0, %rdi	 RIP: 4e156d	 Bytes: 8
  %loadMem_4e156d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e156d = call %struct.Memory* @routine_movq_0x99c0a0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e156d)
  store %struct.Memory* %call_4e156d, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 4e1575	 Bytes: 4
  %loadMem_4e1575 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1575 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1575)
  store %struct.Memory* %call_4e1575, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rdx	 RIP: 4e1579	 Bytes: 3
  %loadMem_4e1579 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1579 = call %struct.Memory* @routine_movq___rax____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1579)
  store %struct.Memory* %call_4e1579, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rax	 RIP: 4e157c	 Bytes: 4
  %loadMem_4e157c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e157c = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e157c)
  store %struct.Memory* %call_4e157c, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rcx	 RIP: 4e1580	 Bytes: 3
  %loadMem_4e1580 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1580 = call %struct.Memory* @routine_movq___rax____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1580)
  store %struct.Memory* %call_4e1580, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 4e1583	 Bytes: 2
  %loadMem_4e1583 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1583 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1583)
  store %struct.Memory* %call_4e1583, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 4e1585	 Bytes: 5
  %loadMem1_4e1585 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4e1585 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4e1585, i64 -918709, i64 5, i64 5)
  store %struct.Memory* %call1_4e1585, %struct.Memory** %MEMORY

  %loadMem2_4e1585 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4e1585 = load i64, i64* %3
  %call2_4e1585 = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_4e1585, %struct.Memory* %loadMem2_4e1585)
  store %struct.Memory* %call2_4e1585, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xb0(%rbp)	 RIP: 4e158a	 Bytes: 6
  %loadMem_4e158a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e158a = call %struct.Memory* @routine_movl__eax__MINUS0xb0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e158a)
  store %struct.Memory* %call_4e158a, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4e15da	 RIP: 4e1590	 Bytes: 5
  %loadMem_4e1590 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1590 = call %struct.Memory* @routine_jmpq_.L_4e15da(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1590, i64 74, i64 5)
  store %struct.Memory* %call_4e1590, %struct.Memory** %MEMORY

  br label %block_.L_4e15da

  ; Code: .L_4e1595:	 RIP: 4e1595	 Bytes: 0
block_.L_4e1595:

  ; Code: movq $0x5951c6, %rsi	 RIP: 4e1595	 Bytes: 10
  %loadMem_4e1595 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1595 = call %struct.Memory* @routine_movq__0x5951c6___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1595)
  store %struct.Memory* %call_4e1595, %struct.Memory** %MEMORY

  ; Code: movq 0x99c0a0, %rdi	 RIP: 4e159f	 Bytes: 8
  %loadMem_4e159f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e159f = call %struct.Memory* @routine_movq_0x99c0a0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e159f)
  store %struct.Memory* %call_4e159f, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 4e15a7	 Bytes: 4
  %loadMem_4e15a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e15a7 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e15a7)
  store %struct.Memory* %call_4e15a7, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rdx	 RIP: 4e15ab	 Bytes: 3
  %loadMem_4e15ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e15ab = call %struct.Memory* @routine_movq___rax____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e15ab)
  store %struct.Memory* %call_4e15ab, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 4e15ae	 Bytes: 4
  %loadMem_4e15ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e15ae = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e15ae)
  store %struct.Memory* %call_4e15ae, %struct.Memory** %MEMORY

  ; Code: movl 0x99c070, %ecx	 RIP: 4e15b2	 Bytes: 7
  %loadMem_4e15b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e15b2 = call %struct.Memory* @routine_movl_0x99c070___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e15b2)
  store %struct.Memory* %call_4e15b2, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 4e15b9	 Bytes: 3
  %loadMem_4e15b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e15b9 = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e15b9)
  store %struct.Memory* %call_4e15b9, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %r8	 RIP: 4e15bc	 Bytes: 3
  %loadMem_4e15bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e15bc = call %struct.Memory* @routine_movslq__ecx___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e15bc)
  store %struct.Memory* %call_4e15bc, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%r8,8), %rax	 RIP: 4e15bf	 Bytes: 4
  %loadMem_4e15bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e15bf = call %struct.Memory* @routine_movq___rax__r8_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e15bf)
  store %struct.Memory* %call_4e15bf, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax), %ecx	 RIP: 4e15c3	 Bytes: 3
  %loadMem_4e15c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e15c3 = call %struct.Memory* @routine_movsbl___rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e15c3)
  store %struct.Memory* %call_4e15c3, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rax	 RIP: 4e15c6	 Bytes: 4
  %loadMem_4e15c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e15c6 = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e15c6)
  store %struct.Memory* %call_4e15c6, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %r8	 RIP: 4e15ca	 Bytes: 3
  %loadMem_4e15ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e15ca = call %struct.Memory* @routine_movq___rax____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e15ca)
  store %struct.Memory* %call_4e15ca, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 4e15cd	 Bytes: 2
  %loadMem_4e15cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e15cd = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e15cd)
  store %struct.Memory* %call_4e15cd, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 4e15cf	 Bytes: 5
  %loadMem1_4e15cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4e15cf = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4e15cf, i64 -918783, i64 5, i64 5)
  store %struct.Memory* %call1_4e15cf, %struct.Memory** %MEMORY

  %loadMem2_4e15cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4e15cf = load i64, i64* %3
  %call2_4e15cf = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_4e15cf, %struct.Memory* %loadMem2_4e15cf)
  store %struct.Memory* %call2_4e15cf, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xb4(%rbp)	 RIP: 4e15d4	 Bytes: 6
  %loadMem_4e15d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e15d4 = call %struct.Memory* @routine_movl__eax__MINUS0xb4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e15d4)
  store %struct.Memory* %call_4e15d4, %struct.Memory** %MEMORY

  ; Code: .L_4e15da:	 RIP: 4e15da	 Bytes: 0
  br label %block_.L_4e15da
block_.L_4e15da:

  ; Code: jmpq .L_4e15df	 RIP: 4e15da	 Bytes: 5
  %loadMem_4e15da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e15da = call %struct.Memory* @routine_jmpq_.L_4e15df(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e15da, i64 5, i64 5)
  store %struct.Memory* %call_4e15da, %struct.Memory** %MEMORY

  br label %block_.L_4e15df

  ; Code: .L_4e15df:	 RIP: 4e15df	 Bytes: 0
block_.L_4e15df:

  ; Code: movq 0xafc470, %rdi	 RIP: 4e15df	 Bytes: 8
  %loadMem_4e15df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e15df = call %struct.Memory* @routine_movq_0xafc470___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e15df)
  store %struct.Memory* %call_4e15df, %struct.Memory** %MEMORY

  ; Code: callq .strlen_plt	 RIP: 4e15e7	 Bytes: 5
  %loadMem1_4e15e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4e15e7 = call %struct.Memory* @routine_callq_.strlen_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4e15e7, i64 -918999, i64 5, i64 5)
  store %struct.Memory* %call1_4e15e7, %struct.Memory** %MEMORY

  %loadMem2_4e15e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4e15e7 = load i64, i64* %3
  %call2_4e15e7 = call %struct.Memory* @ext_strlen(%struct.State* %0, i64  %loadPC_4e15e7, %struct.Memory* %loadMem2_4e15e7)
  store %struct.Memory* %call2_4e15e7, %struct.Memory** %MEMORY

  ; Code: addq 0xafc470, %rax	 RIP: 4e15ec	 Bytes: 8
  %loadMem_4e15ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e15ec = call %struct.Memory* @routine_addq_0xafc470___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e15ec)
  store %struct.Memory* %call_4e15ec, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0xafc470	 RIP: 4e15f4	 Bytes: 8
  %loadMem_4e15f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e15f4 = call %struct.Memory* @routine_movq__rax__0xafc470(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e15f4)
  store %struct.Memory* %call_4e15f4, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rax	 RIP: 4e15fc	 Bytes: 4
  %loadMem_4e15fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e15fc = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e15fc)
  store %struct.Memory* %call_4e15fc, %struct.Memory** %MEMORY

  ; Code: movl 0x18(%rax), %ecx	 RIP: 4e1600	 Bytes: 3
  %loadMem_4e1600 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1600 = call %struct.Memory* @routine_movl_0x18__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1600)
  store %struct.Memory* %call_4e1600, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x99c078	 RIP: 4e1603	 Bytes: 7
  %loadMem_4e1603 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1603 = call %struct.Memory* @routine_movl__ecx__0x99c078(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1603)
  store %struct.Memory* %call_4e1603, %struct.Memory** %MEMORY

  ; Code: movl $0x3f, -0x4(%rbp)	 RIP: 4e160a	 Bytes: 7
  %loadMem_4e160a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e160a = call %struct.Memory* @routine_movl__0x3f__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e160a)
  store %struct.Memory* %call_4e160a, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4e206c	 RIP: 4e1611	 Bytes: 5
  %loadMem_4e1611 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1611 = call %struct.Memory* @routine_jmpq_.L_4e206c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1611, i64 2651, i64 5)
  store %struct.Memory* %call_4e1611, %struct.Memory** %MEMORY

  br label %block_.L_4e206c

  ; Code: .L_4e1616:	 RIP: 4e1616	 Bytes: 0
block_.L_4e1616:

  ; Code: jmpq .L_4e1719	 RIP: 4e1616	 Bytes: 5
  %loadMem_4e1616 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1616 = call %struct.Memory* @routine_jmpq_.L_4e1719(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1616, i64 259, i64 5)
  store %struct.Memory* %call_4e1616, %struct.Memory** %MEMORY

  br label %block_.L_4e1719

  ; Code: .L_4e161b:	 RIP: 4e161b	 Bytes: 0
block_.L_4e161b:

  ; Code: movq -0x48(%rbp), %rax	 RIP: 4e161b	 Bytes: 4
  %loadMem_4e161b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e161b = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e161b)
  store %struct.Memory* %call_4e161b, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, 0x8(%rax)	 RIP: 4e161f	 Bytes: 4
  %loadMem_4e161f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e161f = call %struct.Memory* @routine_cmpl__0x1__0x8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e161f)
  store %struct.Memory* %call_4e161f, %struct.Memory** %MEMORY

  ; Code: jne .L_4e1714	 RIP: 4e1623	 Bytes: 6
  %loadMem_4e1623 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1623 = call %struct.Memory* @routine_jne_.L_4e1714(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1623, i8* %BRANCH_TAKEN, i64 241, i64 6, i64 6)
  store %struct.Memory* %call_4e1623, %struct.Memory** %MEMORY

  %loadBr_4e1623 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4e1623 = icmp eq i8 %loadBr_4e1623, 1
  br i1 %cmpBr_4e1623, label %block_.L_4e1714, label %block_4e1629

block_4e1629:
  ; Code: movl 0x99c070, %eax	 RIP: 4e1629	 Bytes: 7
  %loadMem_4e1629 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1629 = call %struct.Memory* @routine_movl_0x99c070___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1629)
  store %struct.Memory* %call_4e1629, %struct.Memory** %MEMORY

  ; Code: cmpl -0x8(%rbp), %eax	 RIP: 4e1630	 Bytes: 3
  %loadMem_4e1630 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1630 = call %struct.Memory* @routine_cmpl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1630)
  store %struct.Memory* %call_4e1630, %struct.Memory** %MEMORY

  ; Code: jge .L_4e1664	 RIP: 4e1633	 Bytes: 6
  %loadMem_4e1633 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1633 = call %struct.Memory* @routine_jge_.L_4e1664(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1633, i8* %BRANCH_TAKEN, i64 49, i64 6, i64 6)
  store %struct.Memory* %call_4e1633, %struct.Memory** %MEMORY

  %loadBr_4e1633 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4e1633 = icmp eq i8 %loadBr_4e1633, 1
  br i1 %cmpBr_4e1633, label %block_.L_4e1664, label %block_4e1639

block_4e1639:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 4e1639	 Bytes: 4
  %loadMem_4e1639 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1639 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1639)
  store %struct.Memory* %call_4e1639, %struct.Memory** %MEMORY

  ; Code: movl 0x99c070, %ecx	 RIP: 4e163d	 Bytes: 7
  %loadMem_4e163d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e163d = call %struct.Memory* @routine_movl_0x99c070___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e163d)
  store %struct.Memory* %call_4e163d, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 4e1644	 Bytes: 2
  %loadMem_4e1644 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1644 = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1644)
  store %struct.Memory* %call_4e1644, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 4e1646	 Bytes: 3
  %loadMem_4e1646 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1646 = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1646)
  store %struct.Memory* %call_4e1646, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0x99c070	 RIP: 4e1649	 Bytes: 7
  %loadMem_4e1649 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1649 = call %struct.Memory* @routine_movl__edx__0x99c070(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1649)
  store %struct.Memory* %call_4e1649, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 4e1650	 Bytes: 3
  %loadMem_4e1650 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1650 = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1650)
  store %struct.Memory* %call_4e1650, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rsi,8), %rax	 RIP: 4e1653	 Bytes: 4
  %loadMem_4e1653 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1653 = call %struct.Memory* @routine_movq___rax__rsi_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1653)
  store %struct.Memory* %call_4e1653, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0xb89e50	 RIP: 4e1657	 Bytes: 8
  %loadMem_4e1657 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1657 = call %struct.Memory* @routine_movq__rax__0xb89e50(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1657)
  store %struct.Memory* %call_4e1657, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4e170f	 RIP: 4e165f	 Bytes: 5
  %loadMem_4e165f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e165f = call %struct.Memory* @routine_jmpq_.L_4e170f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e165f, i64 176, i64 5)
  store %struct.Memory* %call_4e165f, %struct.Memory** %MEMORY

  br label %block_.L_4e170f

  ; Code: .L_4e1664:	 RIP: 4e1664	 Bytes: 0
block_.L_4e1664:

  ; Code: cmpl $0x0, 0x99c074	 RIP: 4e1664	 Bytes: 8
  %loadMem_4e1664 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1664 = call %struct.Memory* @routine_cmpl__0x0__0x99c074(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1664)
  store %struct.Memory* %call_4e1664, %struct.Memory** %MEMORY

  ; Code: je .L_4e16ad	 RIP: 4e166c	 Bytes: 6
  %loadMem_4e166c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e166c = call %struct.Memory* @routine_je_.L_4e16ad(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e166c, i8* %BRANCH_TAKEN, i64 65, i64 6, i64 6)
  store %struct.Memory* %call_4e166c, %struct.Memory** %MEMORY

  %loadBr_4e166c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4e166c = icmp eq i8 %loadBr_4e166c, 1
  br i1 %cmpBr_4e166c, label %block_.L_4e16ad, label %block_4e1672

block_4e1672:
  ; Code: movq $0x5951f3, %rsi	 RIP: 4e1672	 Bytes: 10
  %loadMem_4e1672 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1672 = call %struct.Memory* @routine_movq__0x5951f3___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1672)
  store %struct.Memory* %call_4e1672, %struct.Memory** %MEMORY

  ; Code: movq 0x99c0a0, %rdi	 RIP: 4e167c	 Bytes: 8
  %loadMem_4e167c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e167c = call %struct.Memory* @routine_movq_0x99c0a0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e167c)
  store %struct.Memory* %call_4e167c, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 4e1684	 Bytes: 4
  %loadMem_4e1684 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1684 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1684)
  store %struct.Memory* %call_4e1684, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rdx	 RIP: 4e1688	 Bytes: 3
  %loadMem_4e1688 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1688 = call %struct.Memory* @routine_movq___rax____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1688)
  store %struct.Memory* %call_4e1688, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 4e168b	 Bytes: 4
  %loadMem_4e168b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e168b = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e168b)
  store %struct.Memory* %call_4e168b, %struct.Memory** %MEMORY

  ; Code: movl 0x99c070, %ecx	 RIP: 4e168f	 Bytes: 7
  %loadMem_4e168f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e168f = call %struct.Memory* @routine_movl_0x99c070___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e168f)
  store %struct.Memory* %call_4e168f, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 4e1696	 Bytes: 3
  %loadMem_4e1696 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1696 = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1696)
  store %struct.Memory* %call_4e1696, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %r8	 RIP: 4e1699	 Bytes: 3
  %loadMem_4e1699 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1699 = call %struct.Memory* @routine_movslq__ecx___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1699)
  store %struct.Memory* %call_4e1699, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%r8,8), %rcx	 RIP: 4e169c	 Bytes: 4
  %loadMem_4e169c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e169c = call %struct.Memory* @routine_movq___rax__r8_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e169c)
  store %struct.Memory* %call_4e169c, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 4e16a0	 Bytes: 2
  %loadMem_4e16a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e16a0 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e16a0)
  store %struct.Memory* %call_4e16a0, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 4e16a2	 Bytes: 5
  %loadMem1_4e16a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4e16a2 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4e16a2, i64 -918994, i64 5, i64 5)
  store %struct.Memory* %call1_4e16a2, %struct.Memory** %MEMORY

  %loadMem2_4e16a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4e16a2 = load i64, i64* %3
  %call2_4e16a2 = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_4e16a2, %struct.Memory* %loadMem2_4e16a2)
  store %struct.Memory* %call2_4e16a2, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xb8(%rbp)	 RIP: 4e16a7	 Bytes: 6
  %loadMem_4e16a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e16a7 = call %struct.Memory* @routine_movl__eax__MINUS0xb8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e16a7)
  store %struct.Memory* %call_4e16a7, %struct.Memory** %MEMORY

  ; Code: .L_4e16ad:	 RIP: 4e16ad	 Bytes: 0
  br label %block_.L_4e16ad
block_.L_4e16ad:

  ; Code: movl $0x3f, %eax	 RIP: 4e16ad	 Bytes: 5
  %loadMem_4e16ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e16ad = call %struct.Memory* @routine_movl__0x3f___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e16ad)
  store %struct.Memory* %call_4e16ad, %struct.Memory** %MEMORY

  ; Code: movl $0x3a, %ecx	 RIP: 4e16b2	 Bytes: 5
  %loadMem_4e16b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e16b2 = call %struct.Memory* @routine_movl__0x3a___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e16b2)
  store %struct.Memory* %call_4e16b2, %struct.Memory** %MEMORY

  ; Code: movq 0xafc470, %rdi	 RIP: 4e16b7	 Bytes: 8
  %loadMem_4e16b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e16b7 = call %struct.Memory* @routine_movq_0xafc470___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e16b7)
  store %struct.Memory* %call_4e16b7, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xbc(%rbp)	 RIP: 4e16bf	 Bytes: 6
  %loadMem_4e16bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e16bf = call %struct.Memory* @routine_movl__eax__MINUS0xbc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e16bf)
  store %struct.Memory* %call_4e16bf, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0xc0(%rbp)	 RIP: 4e16c5	 Bytes: 6
  %loadMem_4e16c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e16c5 = call %struct.Memory* @routine_movl__ecx__MINUS0xc0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e16c5)
  store %struct.Memory* %call_4e16c5, %struct.Memory** %MEMORY

  ; Code: callq .strlen_plt	 RIP: 4e16cb	 Bytes: 5
  %loadMem1_4e16cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4e16cb = call %struct.Memory* @routine_callq_.strlen_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4e16cb, i64 -919227, i64 5, i64 5)
  store %struct.Memory* %call1_4e16cb, %struct.Memory** %MEMORY

  %loadMem2_4e16cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4e16cb = load i64, i64* %3
  %call2_4e16cb = call %struct.Memory* @ext_strlen(%struct.State* %0, i64  %loadPC_4e16cb, %struct.Memory* %loadMem2_4e16cb)
  store %struct.Memory* %call2_4e16cb, %struct.Memory** %MEMORY

  ; Code: addq 0xafc470, %rax	 RIP: 4e16d0	 Bytes: 8
  %loadMem_4e16d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e16d0 = call %struct.Memory* @routine_addq_0xafc470___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e16d0)
  store %struct.Memory* %call_4e16d0, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0xafc470	 RIP: 4e16d8	 Bytes: 8
  %loadMem_4e16d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e16d8 = call %struct.Memory* @routine_movq__rax__0xafc470(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e16d8)
  store %struct.Memory* %call_4e16d8, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rax	 RIP: 4e16e0	 Bytes: 4
  %loadMem_4e16e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e16e0 = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e16e0)
  store %struct.Memory* %call_4e16e0, %struct.Memory** %MEMORY

  ; Code: movl 0x18(%rax), %ecx	 RIP: 4e16e4	 Bytes: 3
  %loadMem_4e16e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e16e4 = call %struct.Memory* @routine_movl_0x18__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e16e4)
  store %struct.Memory* %call_4e16e4, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x99c078	 RIP: 4e16e7	 Bytes: 7
  %loadMem_4e16e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e16e7 = call %struct.Memory* @routine_movl__ecx__0x99c078(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e16e7)
  store %struct.Memory* %call_4e16e7, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 4e16ee	 Bytes: 4
  %loadMem_4e16ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e16ee = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e16ee)
  store %struct.Memory* %call_4e16ee, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax), %ecx	 RIP: 4e16f2	 Bytes: 3
  %loadMem_4e16f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e16f2 = call %struct.Memory* @routine_movsbl___rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e16f2)
  store %struct.Memory* %call_4e16f2, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3a, %ecx	 RIP: 4e16f5	 Bytes: 3
  %loadMem_4e16f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e16f5 = call %struct.Memory* @routine_cmpl__0x3a___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e16f5)
  store %struct.Memory* %call_4e16f5, %struct.Memory** %MEMORY

  ; Code: movl -0xbc(%rbp), %ecx	 RIP: 4e16f8	 Bytes: 6
  %loadMem_4e16f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e16f8 = call %struct.Memory* @routine_movl_MINUS0xbc__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e16f8)
  store %struct.Memory* %call_4e16f8, %struct.Memory** %MEMORY

  ; Code: movl -0xc0(%rbp), %edx	 RIP: 4e16fe	 Bytes: 6
  %loadMem_4e16fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e16fe = call %struct.Memory* @routine_movl_MINUS0xc0__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e16fe)
  store %struct.Memory* %call_4e16fe, %struct.Memory** %MEMORY

  ; Code: cmovel %edx, %ecx	 RIP: 4e1704	 Bytes: 3
  %loadMem_4e1704 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1704 = call %struct.Memory* @routine_cmovel__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1704)
  store %struct.Memory* %call_4e1704, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x4(%rbp)	 RIP: 4e1707	 Bytes: 3
  %loadMem_4e1707 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1707 = call %struct.Memory* @routine_movl__ecx__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1707)
  store %struct.Memory* %call_4e1707, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4e206c	 RIP: 4e170a	 Bytes: 5
  %loadMem_4e170a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e170a = call %struct.Memory* @routine_jmpq_.L_4e206c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e170a, i64 2402, i64 5)
  store %struct.Memory* %call_4e170a, %struct.Memory** %MEMORY

  br label %block_.L_4e206c

  ; Code: .L_4e170f:	 RIP: 4e170f	 Bytes: 0
block_.L_4e170f:

  ; Code: jmpq .L_4e1714	 RIP: 4e170f	 Bytes: 5
  %loadMem_4e170f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e170f = call %struct.Memory* @routine_jmpq_.L_4e1714(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e170f, i64 5, i64 5)
  store %struct.Memory* %call_4e170f, %struct.Memory** %MEMORY

  br label %block_.L_4e1714

  ; Code: .L_4e1714:	 RIP: 4e1714	 Bytes: 0
block_.L_4e1714:

  ; Code: jmpq .L_4e1719	 RIP: 4e1714	 Bytes: 5
  %loadMem_4e1714 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1714 = call %struct.Memory* @routine_jmpq_.L_4e1719(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1714, i64 5, i64 5)
  store %struct.Memory* %call_4e1714, %struct.Memory** %MEMORY

  br label %block_.L_4e1719

  ; Code: .L_4e1719:	 RIP: 4e1719	 Bytes: 0
block_.L_4e1719:

  ; Code: movq 0xafc470, %rdi	 RIP: 4e1719	 Bytes: 8
  %loadMem_4e1719 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1719 = call %struct.Memory* @routine_movq_0xafc470___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1719)
  store %struct.Memory* %call_4e1719, %struct.Memory** %MEMORY

  ; Code: callq .strlen_plt	 RIP: 4e1721	 Bytes: 5
  %loadMem1_4e1721 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4e1721 = call %struct.Memory* @routine_callq_.strlen_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4e1721, i64 -919313, i64 5, i64 5)
  store %struct.Memory* %call1_4e1721, %struct.Memory** %MEMORY

  %loadMem2_4e1721 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4e1721 = load i64, i64* %3
  %call2_4e1721 = call %struct.Memory* @ext_strlen(%struct.State* %0, i64  %loadPC_4e1721, %struct.Memory* %loadMem2_4e1721)
  store %struct.Memory* %call2_4e1721, %struct.Memory** %MEMORY

  ; Code: addq 0xafc470, %rax	 RIP: 4e1726	 Bytes: 8
  %loadMem_4e1726 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1726 = call %struct.Memory* @routine_addq_0xafc470___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1726)
  store %struct.Memory* %call_4e1726, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0xafc470	 RIP: 4e172e	 Bytes: 8
  %loadMem_4e172e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e172e = call %struct.Memory* @routine_movq__rax__0xafc470(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e172e)
  store %struct.Memory* %call_4e172e, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, -0x28(%rbp)	 RIP: 4e1736	 Bytes: 5
  %loadMem_4e1736 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1736 = call %struct.Memory* @routine_cmpq__0x0__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1736)
  store %struct.Memory* %call_4e1736, %struct.Memory** %MEMORY

  ; Code: je .L_4e174a	 RIP: 4e173b	 Bytes: 6
  %loadMem_4e173b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e173b = call %struct.Memory* @routine_je_.L_4e174a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e173b, i8* %BRANCH_TAKEN, i64 15, i64 6, i64 6)
  store %struct.Memory* %call_4e173b, %struct.Memory** %MEMORY

  %loadBr_4e173b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4e173b = icmp eq i8 %loadBr_4e173b, 1
  br i1 %cmpBr_4e173b, label %block_.L_4e174a, label %block_4e1741

block_4e1741:
  ; Code: movl -0x58(%rbp), %eax	 RIP: 4e1741	 Bytes: 3
  %loadMem_4e1741 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1741 = call %struct.Memory* @routine_movl_MINUS0x58__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1741)
  store %struct.Memory* %call_4e1741, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 4e1744	 Bytes: 4
  %loadMem_4e1744 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1744 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1744)
  store %struct.Memory* %call_4e1744, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx)	 RIP: 4e1748	 Bytes: 2
  %loadMem_4e1748 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1748 = call %struct.Memory* @routine_movl__eax____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1748)
  store %struct.Memory* %call_4e1748, %struct.Memory** %MEMORY

  ; Code: .L_4e174a:	 RIP: 4e174a	 Bytes: 0
  br label %block_.L_4e174a
block_.L_4e174a:

  ; Code: movq -0x48(%rbp), %rax	 RIP: 4e174a	 Bytes: 4
  %loadMem_4e174a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e174a = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e174a)
  store %struct.Memory* %call_4e174a, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, 0x10(%rax)	 RIP: 4e174e	 Bytes: 5
  %loadMem_4e174e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e174e = call %struct.Memory* @routine_cmpq__0x0__0x10__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e174e)
  store %struct.Memory* %call_4e174e, %struct.Memory** %MEMORY

  ; Code: je .L_4e1776	 RIP: 4e1753	 Bytes: 6
  %loadMem_4e1753 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1753 = call %struct.Memory* @routine_je_.L_4e1776(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1753, i8* %BRANCH_TAKEN, i64 35, i64 6, i64 6)
  store %struct.Memory* %call_4e1753, %struct.Memory** %MEMORY

  %loadBr_4e1753 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4e1753 = icmp eq i8 %loadBr_4e1753, 1
  br i1 %cmpBr_4e1753, label %block_.L_4e1776, label %block_4e1759

block_4e1759:
  ; Code: movq -0x48(%rbp), %rax	 RIP: 4e1759	 Bytes: 4
  %loadMem_4e1759 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1759 = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1759)
  store %struct.Memory* %call_4e1759, %struct.Memory** %MEMORY

  ; Code: movl 0x18(%rax), %ecx	 RIP: 4e175d	 Bytes: 3
  %loadMem_4e175d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e175d = call %struct.Memory* @routine_movl_0x18__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e175d)
  store %struct.Memory* %call_4e175d, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rax	 RIP: 4e1760	 Bytes: 4
  %loadMem_4e1760 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1760 = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1760)
  store %struct.Memory* %call_4e1760, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rax), %rax	 RIP: 4e1764	 Bytes: 4
  %loadMem_4e1764 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1764 = call %struct.Memory* @routine_movq_0x10__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1764)
  store %struct.Memory* %call_4e1764, %struct.Memory** %MEMORY

  ; Code: movl %ecx, (%rax)	 RIP: 4e1768	 Bytes: 2
  %loadMem_4e1768 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1768 = call %struct.Memory* @routine_movl__ecx____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1768)
  store %struct.Memory* %call_4e1768, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x4(%rbp)	 RIP: 4e176a	 Bytes: 7
  %loadMem_4e176a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e176a = call %struct.Memory* @routine_movl__0x0__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e176a)
  store %struct.Memory* %call_4e176a, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4e206c	 RIP: 4e1771	 Bytes: 5
  %loadMem_4e1771 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1771 = call %struct.Memory* @routine_jmpq_.L_4e206c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1771, i64 2299, i64 5)
  store %struct.Memory* %call_4e1771, %struct.Memory** %MEMORY

  br label %block_.L_4e206c

  ; Code: .L_4e1776:	 RIP: 4e1776	 Bytes: 0
block_.L_4e1776:

  ; Code: movq -0x48(%rbp), %rax	 RIP: 4e1776	 Bytes: 4
  %loadMem_4e1776 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1776 = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1776)
  store %struct.Memory* %call_4e1776, %struct.Memory** %MEMORY

  ; Code: movl 0x18(%rax), %ecx	 RIP: 4e177a	 Bytes: 3
  %loadMem_4e177a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e177a = call %struct.Memory* @routine_movl_0x18__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e177a)
  store %struct.Memory* %call_4e177a, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x4(%rbp)	 RIP: 4e177d	 Bytes: 3
  %loadMem_4e177d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e177d = call %struct.Memory* @routine_movl__ecx__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e177d)
  store %struct.Memory* %call_4e177d, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4e206c	 RIP: 4e1780	 Bytes: 5
  %loadMem_4e1780 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1780 = call %struct.Memory* @routine_jmpq_.L_4e206c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1780, i64 2284, i64 5)
  store %struct.Memory* %call_4e1780, %struct.Memory** %MEMORY

  br label %block_.L_4e206c

  ; Code: .L_4e1785:	 RIP: 4e1785	 Bytes: 0
block_.L_4e1785:

  ; Code: cmpl $0x0, -0x2c(%rbp)	 RIP: 4e1785	 Bytes: 4
  %loadMem_4e1785 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1785 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1785)
  store %struct.Memory* %call_4e1785, %struct.Memory** %MEMORY

  ; Code: je .L_4e17ca	 RIP: 4e1789	 Bytes: 6
  %loadMem_4e1789 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1789 = call %struct.Memory* @routine_je_.L_4e17ca(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1789, i8* %BRANCH_TAKEN, i64 65, i64 6, i64 6)
  store %struct.Memory* %call_4e1789, %struct.Memory** %MEMORY

  %loadBr_4e1789 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4e1789 = icmp eq i8 %loadBr_4e1789, 1
  br i1 %cmpBr_4e1789, label %block_.L_4e17ca, label %block_4e178f

block_4e178f:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 4e178f	 Bytes: 4
  %loadMem_4e178f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e178f = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e178f)
  store %struct.Memory* %call_4e178f, %struct.Memory** %MEMORY

  ; Code: movslq 0x99c070, %rcx	 RIP: 4e1793	 Bytes: 8
  %loadMem_4e1793 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1793 = call %struct.Memory* @routine_movslq_0x99c070___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1793)
  store %struct.Memory* %call_4e1793, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 4e179b	 Bytes: 4
  %loadMem_4e179b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e179b = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e179b)
  store %struct.Memory* %call_4e179b, %struct.Memory** %MEMORY

  ; Code: movsbl 0x1(%rax), %edx	 RIP: 4e179f	 Bytes: 4
  %loadMem_4e179f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e179f = call %struct.Memory* @routine_movsbl_0x1__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e179f)
  store %struct.Memory* %call_4e179f, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2d, %edx	 RIP: 4e17a3	 Bytes: 3
  %loadMem_4e17a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e17a3 = call %struct.Memory* @routine_cmpl__0x2d___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e17a3)
  store %struct.Memory* %call_4e17a3, %struct.Memory** %MEMORY

  ; Code: je .L_4e17ca	 RIP: 4e17a6	 Bytes: 6
  %loadMem_4e17a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e17a6 = call %struct.Memory* @routine_je_.L_4e17ca(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e17a6, i8* %BRANCH_TAKEN, i64 36, i64 6, i64 6)
  store %struct.Memory* %call_4e17a6, %struct.Memory** %MEMORY

  %loadBr_4e17a6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4e17a6 = icmp eq i8 %loadBr_4e17a6, 1
  br i1 %cmpBr_4e17a6, label %block_.L_4e17ca, label %block_4e17ac

block_4e17ac:
  ; Code: movq -0x18(%rbp), %rdi	 RIP: 4e17ac	 Bytes: 4
  %loadMem_4e17ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e17ac = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e17ac)
  store %struct.Memory* %call_4e17ac, %struct.Memory** %MEMORY

  ; Code: movq 0xafc470, %rax	 RIP: 4e17b0	 Bytes: 8
  %loadMem_4e17b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e17b0 = call %struct.Memory* @routine_movq_0xafc470___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e17b0)
  store %struct.Memory* %call_4e17b0, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax), %esi	 RIP: 4e17b8	 Bytes: 3
  %loadMem_4e17b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e17b8 = call %struct.Memory* @routine_movsbl___rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e17b8)
  store %struct.Memory* %call_4e17b8, %struct.Memory** %MEMORY

  ; Code: callq .strchr_plt	 RIP: 4e17bb	 Bytes: 5
  %loadMem1_4e17bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4e17bb = call %struct.Memory* @routine_callq_.strchr_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4e17bb, i64 -919435, i64 5, i64 5)
  store %struct.Memory* %call1_4e17bb, %struct.Memory** %MEMORY

  %loadMem2_4e17bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4e17bb = load i64, i64* %3
  %call2_4e17bb = call %struct.Memory* @sub_401030.strchr_plt(%struct.State* %0, i64  %loadPC_4e17bb, %struct.Memory* %loadMem2_4e17bb)
  store %struct.Memory* %call2_4e17bb, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 4e17c0	 Bytes: 4
  %loadMem_4e17c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e17c0 = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e17c0)
  store %struct.Memory* %call_4e17c0, %struct.Memory** %MEMORY

  ; Code: jne .L_4e18a8	 RIP: 4e17c4	 Bytes: 6
  %loadMem_4e17c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e17c4 = call %struct.Memory* @routine_jne_.L_4e18a8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e17c4, i8* %BRANCH_TAKEN, i64 228, i64 6, i64 6)
  store %struct.Memory* %call_4e17c4, %struct.Memory** %MEMORY

  %loadBr_4e17c4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4e17c4 = icmp eq i8 %loadBr_4e17c4, 1
  br i1 %cmpBr_4e17c4, label %block_.L_4e18a8, label %block_.L_4e17ca

  ; Code: .L_4e17ca:	 RIP: 4e17ca	 Bytes: 0
block_.L_4e17ca:

  ; Code: cmpl $0x0, 0x99c074	 RIP: 4e17ca	 Bytes: 8
  %loadMem_4e17ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e17ca = call %struct.Memory* @routine_cmpl__0x0__0x99c074(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e17ca)
  store %struct.Memory* %call_4e17ca, %struct.Memory** %MEMORY

  ; Code: je .L_4e186e	 RIP: 4e17d2	 Bytes: 6
  %loadMem_4e17d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e17d2 = call %struct.Memory* @routine_je_.L_4e186e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e17d2, i8* %BRANCH_TAKEN, i64 156, i64 6, i64 6)
  store %struct.Memory* %call_4e17d2, %struct.Memory** %MEMORY

  %loadBr_4e17d2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4e17d2 = icmp eq i8 %loadBr_4e17d2, 1
  br i1 %cmpBr_4e17d2, label %block_.L_4e186e, label %block_4e17d8

block_4e17d8:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 4e17d8	 Bytes: 4
  %loadMem_4e17d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e17d8 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e17d8)
  store %struct.Memory* %call_4e17d8, %struct.Memory** %MEMORY

  ; Code: movslq 0x99c070, %rcx	 RIP: 4e17dc	 Bytes: 8
  %loadMem_4e17dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e17dc = call %struct.Memory* @routine_movslq_0x99c070___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e17dc)
  store %struct.Memory* %call_4e17dc, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 4e17e4	 Bytes: 4
  %loadMem_4e17e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e17e4 = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e17e4)
  store %struct.Memory* %call_4e17e4, %struct.Memory** %MEMORY

  ; Code: movsbl 0x1(%rax), %edx	 RIP: 4e17e8	 Bytes: 4
  %loadMem_4e17e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e17e8 = call %struct.Memory* @routine_movsbl_0x1__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e17e8)
  store %struct.Memory* %call_4e17e8, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2d, %edx	 RIP: 4e17ec	 Bytes: 3
  %loadMem_4e17ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e17ec = call %struct.Memory* @routine_cmpl__0x2d___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e17ec)
  store %struct.Memory* %call_4e17ec, %struct.Memory** %MEMORY

  ; Code: jne .L_4e1828	 RIP: 4e17ef	 Bytes: 6
  %loadMem_4e17ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e17ef = call %struct.Memory* @routine_jne_.L_4e1828(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e17ef, i8* %BRANCH_TAKEN, i64 57, i64 6, i64 6)
  store %struct.Memory* %call_4e17ef, %struct.Memory** %MEMORY

  %loadBr_4e17ef = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4e17ef = icmp eq i8 %loadBr_4e17ef, 1
  br i1 %cmpBr_4e17ef, label %block_.L_4e1828, label %block_4e17f5

block_4e17f5:
  ; Code: movq $0x595219, %rsi	 RIP: 4e17f5	 Bytes: 10
  %loadMem_4e17f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e17f5 = call %struct.Memory* @routine_movq__0x595219___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e17f5)
  store %struct.Memory* %call_4e17f5, %struct.Memory** %MEMORY

  ; Code: movq 0x99c0a0, %rdi	 RIP: 4e17ff	 Bytes: 8
  %loadMem_4e17ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e17ff = call %struct.Memory* @routine_movq_0x99c0a0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e17ff)
  store %struct.Memory* %call_4e17ff, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 4e1807	 Bytes: 4
  %loadMem_4e1807 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1807 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1807)
  store %struct.Memory* %call_4e1807, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rdx	 RIP: 4e180b	 Bytes: 3
  %loadMem_4e180b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e180b = call %struct.Memory* @routine_movq___rax____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e180b)
  store %struct.Memory* %call_4e180b, %struct.Memory** %MEMORY

  ; Code: movq 0xafc470, %rcx	 RIP: 4e180e	 Bytes: 8
  %loadMem_4e180e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e180e = call %struct.Memory* @routine_movq_0xafc470___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e180e)
  store %struct.Memory* %call_4e180e, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 4e1816	 Bytes: 2
  %loadMem_4e1816 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1816 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1816)
  store %struct.Memory* %call_4e1816, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 4e1818	 Bytes: 5
  %loadMem1_4e1818 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4e1818 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4e1818, i64 -919368, i64 5, i64 5)
  store %struct.Memory* %call1_4e1818, %struct.Memory** %MEMORY

  %loadMem2_4e1818 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4e1818 = load i64, i64* %3
  %call2_4e1818 = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_4e1818, %struct.Memory* %loadMem2_4e1818)
  store %struct.Memory* %call2_4e1818, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xc4(%rbp)	 RIP: 4e181d	 Bytes: 6
  %loadMem_4e181d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e181d = call %struct.Memory* @routine_movl__eax__MINUS0xc4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e181d)
  store %struct.Memory* %call_4e181d, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4e1869	 RIP: 4e1823	 Bytes: 5
  %loadMem_4e1823 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1823 = call %struct.Memory* @routine_jmpq_.L_4e1869(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1823, i64 70, i64 5)
  store %struct.Memory* %call_4e1823, %struct.Memory** %MEMORY

  br label %block_.L_4e1869

  ; Code: .L_4e1828:	 RIP: 4e1828	 Bytes: 0
block_.L_4e1828:

  ; Code: movq $0x595239, %rsi	 RIP: 4e1828	 Bytes: 10
  %loadMem_4e1828 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1828 = call %struct.Memory* @routine_movq__0x595239___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1828)
  store %struct.Memory* %call_4e1828, %struct.Memory** %MEMORY

  ; Code: movq 0x99c0a0, %rdi	 RIP: 4e1832	 Bytes: 8
  %loadMem_4e1832 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1832 = call %struct.Memory* @routine_movq_0x99c0a0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1832)
  store %struct.Memory* %call_4e1832, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 4e183a	 Bytes: 4
  %loadMem_4e183a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e183a = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e183a)
  store %struct.Memory* %call_4e183a, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rdx	 RIP: 4e183e	 Bytes: 3
  %loadMem_4e183e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e183e = call %struct.Memory* @routine_movq___rax____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e183e)
  store %struct.Memory* %call_4e183e, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 4e1841	 Bytes: 4
  %loadMem_4e1841 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1841 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1841)
  store %struct.Memory* %call_4e1841, %struct.Memory** %MEMORY

  ; Code: movslq 0x99c070, %rcx	 RIP: 4e1845	 Bytes: 8
  %loadMem_4e1845 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1845 = call %struct.Memory* @routine_movslq_0x99c070___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1845)
  store %struct.Memory* %call_4e1845, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rax	 RIP: 4e184d	 Bytes: 4
  %loadMem_4e184d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e184d = call %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e184d)
  store %struct.Memory* %call_4e184d, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax), %ecx	 RIP: 4e1851	 Bytes: 3
  %loadMem_4e1851 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1851 = call %struct.Memory* @routine_movsbl___rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1851)
  store %struct.Memory* %call_4e1851, %struct.Memory** %MEMORY

  ; Code: movq 0xafc470, %r8	 RIP: 4e1854	 Bytes: 8
  %loadMem_4e1854 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1854 = call %struct.Memory* @routine_movq_0xafc470___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1854)
  store %struct.Memory* %call_4e1854, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 4e185c	 Bytes: 2
  %loadMem_4e185c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e185c = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e185c)
  store %struct.Memory* %call_4e185c, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 4e185e	 Bytes: 5
  %loadMem1_4e185e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4e185e = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4e185e, i64 -919438, i64 5, i64 5)
  store %struct.Memory* %call1_4e185e, %struct.Memory** %MEMORY

  %loadMem2_4e185e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4e185e = load i64, i64* %3
  %call2_4e185e = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_4e185e, %struct.Memory* %loadMem2_4e185e)
  store %struct.Memory* %call2_4e185e, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xc8(%rbp)	 RIP: 4e1863	 Bytes: 6
  %loadMem_4e1863 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1863 = call %struct.Memory* @routine_movl__eax__MINUS0xc8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1863)
  store %struct.Memory* %call_4e1863, %struct.Memory** %MEMORY

  ; Code: .L_4e1869:	 RIP: 4e1869	 Bytes: 0
  br label %block_.L_4e1869
block_.L_4e1869:

  ; Code: jmpq .L_4e186e	 RIP: 4e1869	 Bytes: 5
  %loadMem_4e1869 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1869 = call %struct.Memory* @routine_jmpq_.L_4e186e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1869, i64 5, i64 5)
  store %struct.Memory* %call_4e1869, %struct.Memory** %MEMORY

  br label %block_.L_4e186e

  ; Code: .L_4e186e:	 RIP: 4e186e	 Bytes: 0
block_.L_4e186e:

  ; Code: movq $0x58898d, %rax	 RIP: 4e186e	 Bytes: 10
  %loadMem_4e186e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e186e = call %struct.Memory* @routine_movq__0x58898d___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e186e)
  store %struct.Memory* %call_4e186e, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0xafc470	 RIP: 4e1878	 Bytes: 8
  %loadMem_4e1878 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1878 = call %struct.Memory* @routine_movq__rax__0xafc470(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1878)
  store %struct.Memory* %call_4e1878, %struct.Memory** %MEMORY

  ; Code: movl 0x99c070, %ecx	 RIP: 4e1880	 Bytes: 7
  %loadMem_4e1880 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1880 = call %struct.Memory* @routine_movl_0x99c070___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1880)
  store %struct.Memory* %call_4e1880, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 4e1887	 Bytes: 3
  %loadMem_4e1887 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1887 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1887)
  store %struct.Memory* %call_4e1887, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x99c070	 RIP: 4e188a	 Bytes: 7
  %loadMem_4e188a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e188a = call %struct.Memory* @routine_movl__ecx__0x99c070(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e188a)
  store %struct.Memory* %call_4e188a, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x99c078	 RIP: 4e1891	 Bytes: 11
  %loadMem_4e1891 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1891 = call %struct.Memory* @routine_movl__0x0__0x99c078(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1891)
  store %struct.Memory* %call_4e1891, %struct.Memory** %MEMORY

  ; Code: movl $0x3f, -0x4(%rbp)	 RIP: 4e189c	 Bytes: 7
  %loadMem_4e189c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e189c = call %struct.Memory* @routine_movl__0x3f__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e189c)
  store %struct.Memory* %call_4e189c, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4e206c	 RIP: 4e18a3	 Bytes: 5
  %loadMem_4e18a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e18a3 = call %struct.Memory* @routine_jmpq_.L_4e206c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e18a3, i64 1993, i64 5)
  store %struct.Memory* %call_4e18a3, %struct.Memory** %MEMORY

  br label %block_.L_4e206c

  ; Code: .L_4e18a8:	 RIP: 4e18a8	 Bytes: 0
block_.L_4e18a8:

  ; Code: jmpq .L_4e18ad	 RIP: 4e18a8	 Bytes: 5
  %loadMem_4e18a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e18a8 = call %struct.Memory* @routine_jmpq_.L_4e18ad(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e18a8, i64 5, i64 5)
  store %struct.Memory* %call_4e18a8, %struct.Memory** %MEMORY

  br label %block_.L_4e18ad

  ; Code: .L_4e18ad:	 RIP: 4e18ad	 Bytes: 0
block_.L_4e18ad:

  ; Code: movq 0xafc470, %rax	 RIP: 4e18ad	 Bytes: 8
  %loadMem_4e18ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e18ad = call %struct.Memory* @routine_movq_0xafc470___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e18ad)
  store %struct.Memory* %call_4e18ad, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rcx	 RIP: 4e18b5	 Bytes: 3
  %loadMem_4e18b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e18b5 = call %struct.Memory* @routine_movq__rax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e18b5)
  store %struct.Memory* %call_4e18b5, %struct.Memory** %MEMORY

  ; Code: addq $0x1, %rcx	 RIP: 4e18b8	 Bytes: 4
  %loadMem_4e18b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e18b8 = call %struct.Memory* @routine_addq__0x1___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e18b8)
  store %struct.Memory* %call_4e18b8, %struct.Memory** %MEMORY

  ; Code: movq %rcx, 0xafc470	 RIP: 4e18bc	 Bytes: 8
  %loadMem_4e18bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e18bc = call %struct.Memory* @routine_movq__rcx__0xafc470(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e18bc)
  store %struct.Memory* %call_4e18bc, %struct.Memory** %MEMORY

  ; Code: movb (%rax), %dl	 RIP: 4e18c4	 Bytes: 2
  %loadMem_4e18c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e18c4 = call %struct.Memory* @routine_movb___rax____dl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e18c4)
  store %struct.Memory* %call_4e18c4, %struct.Memory** %MEMORY

  ; Code: movb %dl, -0x59(%rbp)	 RIP: 4e18c6	 Bytes: 3
  %loadMem_4e18c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e18c6 = call %struct.Memory* @routine_movb__dl__MINUS0x59__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e18c6)
  store %struct.Memory* %call_4e18c6, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdi	 RIP: 4e18c9	 Bytes: 4
  %loadMem_4e18c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e18c9 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e18c9)
  store %struct.Memory* %call_4e18c9, %struct.Memory** %MEMORY

  ; Code: movsbl -0x59(%rbp), %esi	 RIP: 4e18cd	 Bytes: 4
  %loadMem_4e18cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e18cd = call %struct.Memory* @routine_movsbl_MINUS0x59__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e18cd)
  store %struct.Memory* %call_4e18cd, %struct.Memory** %MEMORY

  ; Code: callq .strchr_plt	 RIP: 4e18d1	 Bytes: 5
  %loadMem1_4e18d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4e18d1 = call %struct.Memory* @routine_callq_.strchr_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4e18d1, i64 -919713, i64 5, i64 5)
  store %struct.Memory* %call1_4e18d1, %struct.Memory** %MEMORY

  %loadMem2_4e18d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4e18d1 = load i64, i64* %3
  %call2_4e18d1 = call %struct.Memory* @sub_401030.strchr_plt(%struct.State* %0, i64  %loadPC_4e18d1, %struct.Memory* %loadMem2_4e18d1)
  store %struct.Memory* %call2_4e18d1, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x68(%rbp)	 RIP: 4e18d6	 Bytes: 4
  %loadMem_4e18d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e18d6 = call %struct.Memory* @routine_movq__rax__MINUS0x68__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e18d6)
  store %struct.Memory* %call_4e18d6, %struct.Memory** %MEMORY

  ; Code: movq 0xafc470, %rax	 RIP: 4e18da	 Bytes: 8
  %loadMem_4e18da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e18da = call %struct.Memory* @routine_movq_0xafc470___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e18da)
  store %struct.Memory* %call_4e18da, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax), %esi	 RIP: 4e18e2	 Bytes: 3
  %loadMem_4e18e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e18e2 = call %struct.Memory* @routine_movsbl___rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e18e2)
  store %struct.Memory* %call_4e18e2, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %esi	 RIP: 4e18e5	 Bytes: 3
  %loadMem_4e18e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e18e5 = call %struct.Memory* @routine_cmpl__0x0___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e18e5)
  store %struct.Memory* %call_4e18e5, %struct.Memory** %MEMORY

  ; Code: jne .L_4e18ff	 RIP: 4e18e8	 Bytes: 6
  %loadMem_4e18e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e18e8 = call %struct.Memory* @routine_jne_.L_4e18ff(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e18e8, i8* %BRANCH_TAKEN, i64 23, i64 6, i64 6)
  store %struct.Memory* %call_4e18e8, %struct.Memory** %MEMORY

  %loadBr_4e18e8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4e18e8 = icmp eq i8 %loadBr_4e18e8, 1
  br i1 %cmpBr_4e18e8, label %block_.L_4e18ff, label %block_4e18ee

block_4e18ee:
  ; Code: movl 0x99c070, %eax	 RIP: 4e18ee	 Bytes: 7
  %loadMem_4e18ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e18ee = call %struct.Memory* @routine_movl_0x99c070___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e18ee)
  store %struct.Memory* %call_4e18ee, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4e18f5	 Bytes: 3
  %loadMem_4e18f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e18f5 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e18f5)
  store %struct.Memory* %call_4e18f5, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x99c070	 RIP: 4e18f8	 Bytes: 7
  %loadMem_4e18f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e18f8 = call %struct.Memory* @routine_movl__eax__0x99c070(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e18f8)
  store %struct.Memory* %call_4e18f8, %struct.Memory** %MEMORY

  ; Code: .L_4e18ff:	 RIP: 4e18ff	 Bytes: 0
  br label %block_.L_4e18ff
block_.L_4e18ff:

  ; Code: cmpq $0x0, -0x68(%rbp)	 RIP: 4e18ff	 Bytes: 5
  %loadMem_4e18ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e18ff = call %struct.Memory* @routine_cmpq__0x0__MINUS0x68__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e18ff)
  store %struct.Memory* %call_4e18ff, %struct.Memory** %MEMORY

  ; Code: je .L_4e1917	 RIP: 4e1904	 Bytes: 6
  %loadMem_4e1904 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1904 = call %struct.Memory* @routine_je_.L_4e1917(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1904, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_4e1904, %struct.Memory** %MEMORY

  %loadBr_4e1904 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4e1904 = icmp eq i8 %loadBr_4e1904, 1
  br i1 %cmpBr_4e1904, label %block_.L_4e1917, label %block_4e190a

block_4e190a:
  ; Code: movsbl -0x59(%rbp), %eax	 RIP: 4e190a	 Bytes: 4
  %loadMem_4e190a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e190a = call %struct.Memory* @routine_movsbl_MINUS0x59__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e190a)
  store %struct.Memory* %call_4e190a, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3a, %eax	 RIP: 4e190e	 Bytes: 3
  %loadMem_4e190e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e190e = call %struct.Memory* @routine_cmpl__0x3a___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e190e)
  store %struct.Memory* %call_4e190e, %struct.Memory** %MEMORY

  ; Code: jne .L_4e19a9	 RIP: 4e1911	 Bytes: 6
  %loadMem_4e1911 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1911 = call %struct.Memory* @routine_jne_.L_4e19a9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1911, i8* %BRANCH_TAKEN, i64 152, i64 6, i64 6)
  store %struct.Memory* %call_4e1911, %struct.Memory** %MEMORY

  %loadBr_4e1911 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4e1911 = icmp eq i8 %loadBr_4e1911, 1
  br i1 %cmpBr_4e1911, label %block_.L_4e19a9, label %block_.L_4e1917

  ; Code: .L_4e1917:	 RIP: 4e1917	 Bytes: 0
block_.L_4e1917:

  ; Code: cmpl $0x0, 0x99c074	 RIP: 4e1917	 Bytes: 8
  %loadMem_4e1917 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1917 = call %struct.Memory* @routine_cmpl__0x0__0x99c074(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1917)
  store %struct.Memory* %call_4e1917, %struct.Memory** %MEMORY

  ; Code: je .L_4e1992	 RIP: 4e191f	 Bytes: 6
  %loadMem_4e191f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e191f = call %struct.Memory* @routine_je_.L_4e1992(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e191f, i8* %BRANCH_TAKEN, i64 115, i64 6, i64 6)
  store %struct.Memory* %call_4e191f, %struct.Memory** %MEMORY

  %loadBr_4e191f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4e191f = icmp eq i8 %loadBr_4e191f, 1
  br i1 %cmpBr_4e191f, label %block_.L_4e1992, label %block_4e1925

block_4e1925:
  ; Code: cmpq $0x0, 0xafc488	 RIP: 4e1925	 Bytes: 9
  %loadMem_4e1925 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1925 = call %struct.Memory* @routine_cmpq__0x0__0xafc488(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1925)
  store %struct.Memory* %call_4e1925, %struct.Memory** %MEMORY

  ; Code: je .L_4e1963	 RIP: 4e192e	 Bytes: 6
  %loadMem_4e192e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e192e = call %struct.Memory* @routine_je_.L_4e1963(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e192e, i8* %BRANCH_TAKEN, i64 53, i64 6, i64 6)
  store %struct.Memory* %call_4e192e, %struct.Memory** %MEMORY

  %loadBr_4e192e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4e192e = icmp eq i8 %loadBr_4e192e, 1
  br i1 %cmpBr_4e192e, label %block_.L_4e1963, label %block_4e1934

block_4e1934:
  ; Code: movq $0x595259, %rsi	 RIP: 4e1934	 Bytes: 10
  %loadMem_4e1934 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1934 = call %struct.Memory* @routine_movq__0x595259___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1934)
  store %struct.Memory* %call_4e1934, %struct.Memory** %MEMORY

  ; Code: movq 0x99c0a0, %rdi	 RIP: 4e193e	 Bytes: 8
  %loadMem_4e193e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e193e = call %struct.Memory* @routine_movq_0x99c0a0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e193e)
  store %struct.Memory* %call_4e193e, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 4e1946	 Bytes: 4
  %loadMem_4e1946 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1946 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1946)
  store %struct.Memory* %call_4e1946, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rdx	 RIP: 4e194a	 Bytes: 3
  %loadMem_4e194a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e194a = call %struct.Memory* @routine_movq___rax____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e194a)
  store %struct.Memory* %call_4e194a, %struct.Memory** %MEMORY

  ; Code: movsbl -0x59(%rbp), %ecx	 RIP: 4e194d	 Bytes: 4
  %loadMem_4e194d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e194d = call %struct.Memory* @routine_movsbl_MINUS0x59__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e194d)
  store %struct.Memory* %call_4e194d, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 4e1951	 Bytes: 2
  %loadMem_4e1951 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1951 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1951)
  store %struct.Memory* %call_4e1951, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 4e1953	 Bytes: 5
  %loadMem1_4e1953 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4e1953 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4e1953, i64 -919683, i64 5, i64 5)
  store %struct.Memory* %call1_4e1953, %struct.Memory** %MEMORY

  %loadMem2_4e1953 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4e1953 = load i64, i64* %3
  %call2_4e1953 = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_4e1953, %struct.Memory* %loadMem2_4e1953)
  store %struct.Memory* %call2_4e1953, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xcc(%rbp)	 RIP: 4e1958	 Bytes: 6
  %loadMem_4e1958 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1958 = call %struct.Memory* @routine_movl__eax__MINUS0xcc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1958)
  store %struct.Memory* %call_4e1958, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4e198d	 RIP: 4e195e	 Bytes: 5
  %loadMem_4e195e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e195e = call %struct.Memory* @routine_jmpq_.L_4e198d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e195e, i64 47, i64 5)
  store %struct.Memory* %call_4e195e, %struct.Memory** %MEMORY

  br label %block_.L_4e198d

  ; Code: .L_4e1963:	 RIP: 4e1963	 Bytes: 0
block_.L_4e1963:

  ; Code: movq $0x595273, %rsi	 RIP: 4e1963	 Bytes: 10
  %loadMem_4e1963 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1963 = call %struct.Memory* @routine_movq__0x595273___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1963)
  store %struct.Memory* %call_4e1963, %struct.Memory** %MEMORY

  ; Code: movq 0x99c0a0, %rdi	 RIP: 4e196d	 Bytes: 8
  %loadMem_4e196d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e196d = call %struct.Memory* @routine_movq_0x99c0a0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e196d)
  store %struct.Memory* %call_4e196d, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 4e1975	 Bytes: 4
  %loadMem_4e1975 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1975 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1975)
  store %struct.Memory* %call_4e1975, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rdx	 RIP: 4e1979	 Bytes: 3
  %loadMem_4e1979 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1979 = call %struct.Memory* @routine_movq___rax____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1979)
  store %struct.Memory* %call_4e1979, %struct.Memory** %MEMORY

  ; Code: movsbl -0x59(%rbp), %ecx	 RIP: 4e197c	 Bytes: 4
  %loadMem_4e197c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e197c = call %struct.Memory* @routine_movsbl_MINUS0x59__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e197c)
  store %struct.Memory* %call_4e197c, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 4e1980	 Bytes: 2
  %loadMem_4e1980 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1980 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1980)
  store %struct.Memory* %call_4e1980, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 4e1982	 Bytes: 5
  %loadMem1_4e1982 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4e1982 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4e1982, i64 -919730, i64 5, i64 5)
  store %struct.Memory* %call1_4e1982, %struct.Memory** %MEMORY

  %loadMem2_4e1982 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4e1982 = load i64, i64* %3
  %call2_4e1982 = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_4e1982, %struct.Memory* %loadMem2_4e1982)
  store %struct.Memory* %call2_4e1982, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xd0(%rbp)	 RIP: 4e1987	 Bytes: 6
  %loadMem_4e1987 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1987 = call %struct.Memory* @routine_movl__eax__MINUS0xd0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1987)
  store %struct.Memory* %call_4e1987, %struct.Memory** %MEMORY

  ; Code: .L_4e198d:	 RIP: 4e198d	 Bytes: 0
  br label %block_.L_4e198d
block_.L_4e198d:

  ; Code: jmpq .L_4e1992	 RIP: 4e198d	 Bytes: 5
  %loadMem_4e198d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e198d = call %struct.Memory* @routine_jmpq_.L_4e1992(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e198d, i64 5, i64 5)
  store %struct.Memory* %call_4e198d, %struct.Memory** %MEMORY

  br label %block_.L_4e1992

  ; Code: .L_4e1992:	 RIP: 4e1992	 Bytes: 0
block_.L_4e1992:

  ; Code: movsbl -0x59(%rbp), %eax	 RIP: 4e1992	 Bytes: 4
  %loadMem_4e1992 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1992 = call %struct.Memory* @routine_movsbl_MINUS0x59__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1992)
  store %struct.Memory* %call_4e1992, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x99c078	 RIP: 4e1996	 Bytes: 7
  %loadMem_4e1996 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1996 = call %struct.Memory* @routine_movl__eax__0x99c078(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1996)
  store %struct.Memory* %call_4e1996, %struct.Memory** %MEMORY

  ; Code: movl $0x3f, -0x4(%rbp)	 RIP: 4e199d	 Bytes: 7
  %loadMem_4e199d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e199d = call %struct.Memory* @routine_movl__0x3f__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e199d)
  store %struct.Memory* %call_4e199d, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4e206c	 RIP: 4e19a4	 Bytes: 5
  %loadMem_4e19a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e19a4 = call %struct.Memory* @routine_jmpq_.L_4e206c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e19a4, i64 1736, i64 5)
  store %struct.Memory* %call_4e19a4, %struct.Memory** %MEMORY

  br label %block_.L_4e206c

  ; Code: .L_4e19a9:	 RIP: 4e19a9	 Bytes: 0
block_.L_4e19a9:

  ; Code: movq -0x68(%rbp), %rax	 RIP: 4e19a9	 Bytes: 4
  %loadMem_4e19a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e19a9 = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e19a9)
  store %struct.Memory* %call_4e19a9, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax), %ecx	 RIP: 4e19ad	 Bytes: 3
  %loadMem_4e19ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e19ad = call %struct.Memory* @routine_movsbl___rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e19ad)
  store %struct.Memory* %call_4e19ad, %struct.Memory** %MEMORY

  ; Code: cmpl $0x57, %ecx	 RIP: 4e19b0	 Bytes: 3
  %loadMem_4e19b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e19b0 = call %struct.Memory* @routine_cmpl__0x57___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e19b0)
  store %struct.Memory* %call_4e19b0, %struct.Memory** %MEMORY

  ; Code: jne .L_4e1f01	 RIP: 4e19b3	 Bytes: 6
  %loadMem_4e19b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e19b3 = call %struct.Memory* @routine_jne_.L_4e1f01(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e19b3, i8* %BRANCH_TAKEN, i64 1358, i64 6, i64 6)
  store %struct.Memory* %call_4e19b3, %struct.Memory** %MEMORY

  %loadBr_4e19b3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4e19b3 = icmp eq i8 %loadBr_4e19b3, 1
  br i1 %cmpBr_4e19b3, label %block_.L_4e1f01, label %block_4e19b9

block_4e19b9:
  ; Code: movq -0x68(%rbp), %rax	 RIP: 4e19b9	 Bytes: 4
  %loadMem_4e19b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e19b9 = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e19b9)
  store %struct.Memory* %call_4e19b9, %struct.Memory** %MEMORY

  ; Code: movsbl 0x1(%rax), %ecx	 RIP: 4e19bd	 Bytes: 4
  %loadMem_4e19bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e19bd = call %struct.Memory* @routine_movsbl_0x1__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e19bd)
  store %struct.Memory* %call_4e19bd, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3b, %ecx	 RIP: 4e19c1	 Bytes: 3
  %loadMem_4e19c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e19c1 = call %struct.Memory* @routine_cmpl__0x3b___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e19c1)
  store %struct.Memory* %call_4e19c1, %struct.Memory** %MEMORY

  ; Code: jne .L_4e1f01	 RIP: 4e19c4	 Bytes: 6
  %loadMem_4e19c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e19c4 = call %struct.Memory* @routine_jne_.L_4e1f01(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e19c4, i8* %BRANCH_TAKEN, i64 1341, i64 6, i64 6)
  store %struct.Memory* %call_4e19c4, %struct.Memory** %MEMORY

  %loadBr_4e19c4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4e19c4 = icmp eq i8 %loadBr_4e19c4, 1
  br i1 %cmpBr_4e19c4, label %block_.L_4e1f01, label %block_4e19ca

block_4e19ca:
  ; Code: movq $0x0, -0x80(%rbp)	 RIP: 4e19ca	 Bytes: 8
  %loadMem_4e19ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e19ca = call %struct.Memory* @routine_movq__0x0__MINUS0x80__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e19ca)
  store %struct.Memory* %call_4e19ca, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x84(%rbp)	 RIP: 4e19d2	 Bytes: 10
  %loadMem_4e19d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e19d2 = call %struct.Memory* @routine_movl__0x0__MINUS0x84__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e19d2)
  store %struct.Memory* %call_4e19d2, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x88(%rbp)	 RIP: 4e19dc	 Bytes: 10
  %loadMem_4e19dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e19dc = call %struct.Memory* @routine_movl__0x0__MINUS0x88__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e19dc)
  store %struct.Memory* %call_4e19dc, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x8c(%rbp)	 RIP: 4e19e6	 Bytes: 10
  %loadMem_4e19e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e19e6 = call %struct.Memory* @routine_movl__0x0__MINUS0x8c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e19e6)
  store %struct.Memory* %call_4e19e6, %struct.Memory** %MEMORY

  ; Code: movq 0xafc470, %rax	 RIP: 4e19f0	 Bytes: 8
  %loadMem_4e19f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e19f0 = call %struct.Memory* @routine_movq_0xafc470___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e19f0)
  store %struct.Memory* %call_4e19f0, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax), %ecx	 RIP: 4e19f8	 Bytes: 3
  %loadMem_4e19f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e19f8 = call %struct.Memory* @routine_movsbl___rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e19f8)
  store %struct.Memory* %call_4e19f8, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %ecx	 RIP: 4e19fb	 Bytes: 3
  %loadMem_4e19fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e19fb = call %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e19fb)
  store %struct.Memory* %call_4e19fb, %struct.Memory** %MEMORY

  ; Code: je .L_4e1a2a	 RIP: 4e19fe	 Bytes: 6
  %loadMem_4e19fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e19fe = call %struct.Memory* @routine_je_.L_4e1a2a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e19fe, i8* %BRANCH_TAKEN, i64 44, i64 6, i64 6)
  store %struct.Memory* %call_4e19fe, %struct.Memory** %MEMORY

  %loadBr_4e19fe = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4e19fe = icmp eq i8 %loadBr_4e19fe, 1
  br i1 %cmpBr_4e19fe, label %block_.L_4e1a2a, label %block_4e1a04

block_4e1a04:
  ; Code: movq 0xafc470, %rax	 RIP: 4e1a04	 Bytes: 8
  %loadMem_4e1a04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1a04 = call %struct.Memory* @routine_movq_0xafc470___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1a04)
  store %struct.Memory* %call_4e1a04, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0xb89e50	 RIP: 4e1a0c	 Bytes: 8
  %loadMem_4e1a0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1a0c = call %struct.Memory* @routine_movq__rax__0xb89e50(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1a0c)
  store %struct.Memory* %call_4e1a0c, %struct.Memory** %MEMORY

  ; Code: movl 0x99c070, %ecx	 RIP: 4e1a14	 Bytes: 7
  %loadMem_4e1a14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1a14 = call %struct.Memory* @routine_movl_0x99c070___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1a14)
  store %struct.Memory* %call_4e1a14, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 4e1a1b	 Bytes: 3
  %loadMem_4e1a1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1a1b = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1a1b)
  store %struct.Memory* %call_4e1a1b, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x99c070	 RIP: 4e1a1e	 Bytes: 7
  %loadMem_4e1a1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1a1e = call %struct.Memory* @routine_movl__ecx__0x99c070(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1a1e)
  store %struct.Memory* %call_4e1a1e, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4e1ad1	 RIP: 4e1a25	 Bytes: 5
  %loadMem_4e1a25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1a25 = call %struct.Memory* @routine_jmpq_.L_4e1ad1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1a25, i64 172, i64 5)
  store %struct.Memory* %call_4e1a25, %struct.Memory** %MEMORY

  br label %block_.L_4e1ad1

  ; Code: .L_4e1a2a:	 RIP: 4e1a2a	 Bytes: 0
block_.L_4e1a2a:

  ; Code: movl 0x99c070, %eax	 RIP: 4e1a2a	 Bytes: 7
  %loadMem_4e1a2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1a2a = call %struct.Memory* @routine_movl_0x99c070___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1a2a)
  store %struct.Memory* %call_4e1a2a, %struct.Memory** %MEMORY

  ; Code: cmpl -0x8(%rbp), %eax	 RIP: 4e1a31	 Bytes: 3
  %loadMem_4e1a31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1a31 = call %struct.Memory* @routine_cmpl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1a31)
  store %struct.Memory* %call_4e1a31, %struct.Memory** %MEMORY

  ; Code: jne .L_4e1aa6	 RIP: 4e1a34	 Bytes: 6
  %loadMem_4e1a34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1a34 = call %struct.Memory* @routine_jne_.L_4e1aa6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1a34, i8* %BRANCH_TAKEN, i64 114, i64 6, i64 6)
  store %struct.Memory* %call_4e1a34, %struct.Memory** %MEMORY

  %loadBr_4e1a34 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4e1a34 = icmp eq i8 %loadBr_4e1a34, 1
  br i1 %cmpBr_4e1a34, label %block_.L_4e1aa6, label %block_4e1a3a

block_4e1a3a:
  ; Code: cmpl $0x0, 0x99c074	 RIP: 4e1a3a	 Bytes: 8
  %loadMem_4e1a3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1a3a = call %struct.Memory* @routine_cmpl__0x0__0x99c074(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1a3a)
  store %struct.Memory* %call_4e1a3a, %struct.Memory** %MEMORY

  ; Code: je .L_4e1a72	 RIP: 4e1a42	 Bytes: 6
  %loadMem_4e1a42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1a42 = call %struct.Memory* @routine_je_.L_4e1a72(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1a42, i8* %BRANCH_TAKEN, i64 48, i64 6, i64 6)
  store %struct.Memory* %call_4e1a42, %struct.Memory** %MEMORY

  %loadBr_4e1a42 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4e1a42 = icmp eq i8 %loadBr_4e1a42, 1
  br i1 %cmpBr_4e1a42, label %block_.L_4e1a72, label %block_4e1a48

block_4e1a48:
  ; Code: movq $0x59528d, %rsi	 RIP: 4e1a48	 Bytes: 10
  %loadMem_4e1a48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1a48 = call %struct.Memory* @routine_movq__0x59528d___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1a48)
  store %struct.Memory* %call_4e1a48, %struct.Memory** %MEMORY

  ; Code: movq 0x99c0a0, %rdi	 RIP: 4e1a52	 Bytes: 8
  %loadMem_4e1a52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1a52 = call %struct.Memory* @routine_movq_0x99c0a0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1a52)
  store %struct.Memory* %call_4e1a52, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 4e1a5a	 Bytes: 4
  %loadMem_4e1a5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1a5a = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1a5a)
  store %struct.Memory* %call_4e1a5a, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rdx	 RIP: 4e1a5e	 Bytes: 3
  %loadMem_4e1a5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1a5e = call %struct.Memory* @routine_movq___rax____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1a5e)
  store %struct.Memory* %call_4e1a5e, %struct.Memory** %MEMORY

  ; Code: movsbl -0x59(%rbp), %ecx	 RIP: 4e1a61	 Bytes: 4
  %loadMem_4e1a61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1a61 = call %struct.Memory* @routine_movsbl_MINUS0x59__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1a61)
  store %struct.Memory* %call_4e1a61, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 4e1a65	 Bytes: 2
  %loadMem_4e1a65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1a65 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1a65)
  store %struct.Memory* %call_4e1a65, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 4e1a67	 Bytes: 5
  %loadMem1_4e1a67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4e1a67 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4e1a67, i64 -919959, i64 5, i64 5)
  store %struct.Memory* %call1_4e1a67, %struct.Memory** %MEMORY

  %loadMem2_4e1a67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4e1a67 = load i64, i64* %3
  %call2_4e1a67 = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_4e1a67, %struct.Memory* %loadMem2_4e1a67)
  store %struct.Memory* %call2_4e1a67, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xd4(%rbp)	 RIP: 4e1a6c	 Bytes: 6
  %loadMem_4e1a6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1a6c = call %struct.Memory* @routine_movl__eax__MINUS0xd4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1a6c)
  store %struct.Memory* %call_4e1a6c, %struct.Memory** %MEMORY

  ; Code: .L_4e1a72:	 RIP: 4e1a72	 Bytes: 0
  br label %block_.L_4e1a72
block_.L_4e1a72:

  ; Code: movsbl -0x59(%rbp), %eax	 RIP: 4e1a72	 Bytes: 4
  %loadMem_4e1a72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1a72 = call %struct.Memory* @routine_movsbl_MINUS0x59__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1a72)
  store %struct.Memory* %call_4e1a72, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x99c078	 RIP: 4e1a76	 Bytes: 7
  %loadMem_4e1a76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1a76 = call %struct.Memory* @routine_movl__eax__0x99c078(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1a76)
  store %struct.Memory* %call_4e1a76, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 4e1a7d	 Bytes: 4
  %loadMem_4e1a7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1a7d = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1a7d)
  store %struct.Memory* %call_4e1a7d, %struct.Memory** %MEMORY

  ; Code: movsbl (%rcx), %eax	 RIP: 4e1a81	 Bytes: 3
  %loadMem_4e1a81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1a81 = call %struct.Memory* @routine_movsbl___rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1a81)
  store %struct.Memory* %call_4e1a81, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3a, %eax	 RIP: 4e1a84	 Bytes: 3
  %loadMem_4e1a84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1a84 = call %struct.Memory* @routine_cmpl__0x3a___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1a84)
  store %struct.Memory* %call_4e1a84, %struct.Memory** %MEMORY

  ; Code: jne .L_4e1a96	 RIP: 4e1a87	 Bytes: 6
  %loadMem_4e1a87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1a87 = call %struct.Memory* @routine_jne_.L_4e1a96(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1a87, i8* %BRANCH_TAKEN, i64 15, i64 6, i64 6)
  store %struct.Memory* %call_4e1a87, %struct.Memory** %MEMORY

  %loadBr_4e1a87 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4e1a87 = icmp eq i8 %loadBr_4e1a87, 1
  br i1 %cmpBr_4e1a87, label %block_.L_4e1a96, label %block_4e1a8d

block_4e1a8d:
  ; Code: movb $0x3a, -0x59(%rbp)	 RIP: 4e1a8d	 Bytes: 4
  %loadMem_4e1a8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1a8d = call %struct.Memory* @routine_movb__0x3a__MINUS0x59__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1a8d)
  store %struct.Memory* %call_4e1a8d, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4e1a9a	 RIP: 4e1a91	 Bytes: 5
  %loadMem_4e1a91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1a91 = call %struct.Memory* @routine_jmpq_.L_4e1a9a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1a91, i64 9, i64 5)
  store %struct.Memory* %call_4e1a91, %struct.Memory** %MEMORY

  br label %block_.L_4e1a9a

  ; Code: .L_4e1a96:	 RIP: 4e1a96	 Bytes: 0
block_.L_4e1a96:

  ; Code: movb $0x3f, -0x59(%rbp)	 RIP: 4e1a96	 Bytes: 4
  %loadMem_4e1a96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1a96 = call %struct.Memory* @routine_movb__0x3f__MINUS0x59__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1a96)
  store %struct.Memory* %call_4e1a96, %struct.Memory** %MEMORY

  ; Code: .L_4e1a9a:	 RIP: 4e1a9a	 Bytes: 0
  br label %block_.L_4e1a9a
block_.L_4e1a9a:

  ; Code: movsbl -0x59(%rbp), %eax	 RIP: 4e1a9a	 Bytes: 4
  %loadMem_4e1a9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1a9a = call %struct.Memory* @routine_movsbl_MINUS0x59__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1a9a)
  store %struct.Memory* %call_4e1a9a, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4(%rbp)	 RIP: 4e1a9e	 Bytes: 3
  %loadMem_4e1a9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1a9e = call %struct.Memory* @routine_movl__eax__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1a9e)
  store %struct.Memory* %call_4e1a9e, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4e206c	 RIP: 4e1aa1	 Bytes: 5
  %loadMem_4e1aa1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1aa1 = call %struct.Memory* @routine_jmpq_.L_4e206c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1aa1, i64 1483, i64 5)
  store %struct.Memory* %call_4e1aa1, %struct.Memory** %MEMORY

  br label %block_.L_4e206c

  ; Code: .L_4e1aa6:	 RIP: 4e1aa6	 Bytes: 0
block_.L_4e1aa6:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 4e1aa6	 Bytes: 4
  %loadMem_4e1aa6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1aa6 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1aa6)
  store %struct.Memory* %call_4e1aa6, %struct.Memory** %MEMORY

  ; Code: movl 0x99c070, %ecx	 RIP: 4e1aaa	 Bytes: 7
  %loadMem_4e1aaa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1aaa = call %struct.Memory* @routine_movl_0x99c070___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1aaa)
  store %struct.Memory* %call_4e1aaa, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 4e1ab1	 Bytes: 2
  %loadMem_4e1ab1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1ab1 = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1ab1)
  store %struct.Memory* %call_4e1ab1, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 4e1ab3	 Bytes: 3
  %loadMem_4e1ab3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1ab3 = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1ab3)
  store %struct.Memory* %call_4e1ab3, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0x99c070	 RIP: 4e1ab6	 Bytes: 7
  %loadMem_4e1ab6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1ab6 = call %struct.Memory* @routine_movl__edx__0x99c070(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1ab6)
  store %struct.Memory* %call_4e1ab6, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 4e1abd	 Bytes: 3
  %loadMem_4e1abd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1abd = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1abd)
  store %struct.Memory* %call_4e1abd, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rsi,8), %rax	 RIP: 4e1ac0	 Bytes: 4
  %loadMem_4e1ac0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1ac0 = call %struct.Memory* @routine_movq___rax__rsi_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1ac0)
  store %struct.Memory* %call_4e1ac0, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0xb89e50	 RIP: 4e1ac4	 Bytes: 8
  %loadMem_4e1ac4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1ac4 = call %struct.Memory* @routine_movq__rax__0xb89e50(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1ac4)
  store %struct.Memory* %call_4e1ac4, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4e1ad1	 RIP: 4e1acc	 Bytes: 5
  %loadMem_4e1acc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1acc = call %struct.Memory* @routine_jmpq_.L_4e1ad1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1acc, i64 5, i64 5)
  store %struct.Memory* %call_4e1acc, %struct.Memory** %MEMORY

  br label %block_.L_4e1ad1

  ; Code: .L_4e1ad1:	 RIP: 4e1ad1	 Bytes: 0
block_.L_4e1ad1:

  ; Code: movq 0xb89e50, %rax	 RIP: 4e1ad1	 Bytes: 8
  %loadMem_4e1ad1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1ad1 = call %struct.Memory* @routine_movq_0xb89e50___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1ad1)
  store %struct.Memory* %call_4e1ad1, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x70(%rbp)	 RIP: 4e1ad9	 Bytes: 4
  %loadMem_4e1ad9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1ad9 = call %struct.Memory* @routine_movq__rax__MINUS0x70__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1ad9)
  store %struct.Memory* %call_4e1ad9, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0xafc470	 RIP: 4e1add	 Bytes: 8
  %loadMem_4e1add = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1add = call %struct.Memory* @routine_movq__rax__0xafc470(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1add)
  store %struct.Memory* %call_4e1add, %struct.Memory** %MEMORY

  ; Code: .L_4e1ae5:	 RIP: 4e1ae5	 Bytes: 0
  br label %block_.L_4e1ae5
block_.L_4e1ae5:

  ; Code: xorl %eax, %eax	 RIP: 4e1ae5	 Bytes: 2
  %loadMem_4e1ae5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1ae5 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1ae5)
  store %struct.Memory* %call_4e1ae5, %struct.Memory** %MEMORY

  ; Code: movb %al, %cl	 RIP: 4e1ae7	 Bytes: 2
  %loadMem_4e1ae7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1ae7 = call %struct.Memory* @routine_movb__al___cl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1ae7)
  store %struct.Memory* %call_4e1ae7, %struct.Memory** %MEMORY

  ; Code: movq -0x70(%rbp), %rdx	 RIP: 4e1ae9	 Bytes: 4
  %loadMem_4e1ae9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1ae9 = call %struct.Memory* @routine_movq_MINUS0x70__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1ae9)
  store %struct.Memory* %call_4e1ae9, %struct.Memory** %MEMORY

  ; Code: movsbl (%rdx), %eax	 RIP: 4e1aed	 Bytes: 3
  %loadMem_4e1aed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1aed = call %struct.Memory* @routine_movsbl___rdx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1aed)
  store %struct.Memory* %call_4e1aed, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 4e1af0	 Bytes: 3
  %loadMem_4e1af0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1af0 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1af0)
  store %struct.Memory* %call_4e1af0, %struct.Memory** %MEMORY

  ; Code: movb %cl, -0xd5(%rbp)	 RIP: 4e1af3	 Bytes: 6
  %loadMem_4e1af3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1af3 = call %struct.Memory* @routine_movb__cl__MINUS0xd5__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1af3)
  store %struct.Memory* %call_4e1af3, %struct.Memory** %MEMORY

  ; Code: je .L_4e1b12	 RIP: 4e1af9	 Bytes: 6
  %loadMem_4e1af9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1af9 = call %struct.Memory* @routine_je_.L_4e1b12(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1af9, i8* %BRANCH_TAKEN, i64 25, i64 6, i64 6)
  store %struct.Memory* %call_4e1af9, %struct.Memory** %MEMORY

  %loadBr_4e1af9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4e1af9 = icmp eq i8 %loadBr_4e1af9, 1
  br i1 %cmpBr_4e1af9, label %block_.L_4e1b12, label %block_4e1aff

block_4e1aff:
  ; Code: movq -0x70(%rbp), %rax	 RIP: 4e1aff	 Bytes: 4
  %loadMem_4e1aff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1aff = call %struct.Memory* @routine_movq_MINUS0x70__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1aff)
  store %struct.Memory* %call_4e1aff, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax), %ecx	 RIP: 4e1b03	 Bytes: 3
  %loadMem_4e1b03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1b03 = call %struct.Memory* @routine_movsbl___rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1b03)
  store %struct.Memory* %call_4e1b03, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3d, %ecx	 RIP: 4e1b06	 Bytes: 3
  %loadMem_4e1b06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1b06 = call %struct.Memory* @routine_cmpl__0x3d___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1b06)
  store %struct.Memory* %call_4e1b06, %struct.Memory** %MEMORY

  ; Code: setne %dl	 RIP: 4e1b09	 Bytes: 3
  %loadMem_4e1b09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1b09 = call %struct.Memory* @routine_setne__dl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1b09)
  store %struct.Memory* %call_4e1b09, %struct.Memory** %MEMORY

  ; Code: movb %dl, -0xd5(%rbp)	 RIP: 4e1b0c	 Bytes: 6
  %loadMem_4e1b0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1b0c = call %struct.Memory* @routine_movb__dl__MINUS0xd5__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1b0c)
  store %struct.Memory* %call_4e1b0c, %struct.Memory** %MEMORY

  ; Code: .L_4e1b12:	 RIP: 4e1b12	 Bytes: 0
  br label %block_.L_4e1b12
block_.L_4e1b12:

  ; Code: movb -0xd5(%rbp), %al	 RIP: 4e1b12	 Bytes: 6
  %loadMem_4e1b12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1b12 = call %struct.Memory* @routine_movb_MINUS0xd5__rbp____al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1b12)
  store %struct.Memory* %call_4e1b12, %struct.Memory** %MEMORY

  ; Code: testb $0x1, %al	 RIP: 4e1b18	 Bytes: 2
  %loadMem_4e1b18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1b18 = call %struct.Memory* @routine_testb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1b18)
  store %struct.Memory* %call_4e1b18, %struct.Memory** %MEMORY

  ; Code: jne .L_4e1b25	 RIP: 4e1b1a	 Bytes: 6
  %loadMem_4e1b1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1b1a = call %struct.Memory* @routine_jne_.L_4e1b25(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1b1a, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_4e1b1a, %struct.Memory** %MEMORY

  %loadBr_4e1b1a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4e1b1a = icmp eq i8 %loadBr_4e1b1a, 1
  br i1 %cmpBr_4e1b1a, label %block_.L_4e1b25, label %block_4e1b20

block_4e1b20:
  ; Code: jmpq .L_4e1b3b	 RIP: 4e1b20	 Bytes: 5
  %loadMem_4e1b20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1b20 = call %struct.Memory* @routine_jmpq_.L_4e1b3b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1b20, i64 27, i64 5)
  store %struct.Memory* %call_4e1b20, %struct.Memory** %MEMORY

  br label %block_.L_4e1b3b

  ; Code: .L_4e1b25:	 RIP: 4e1b25	 Bytes: 0
block_.L_4e1b25:

  ; Code: jmpq .L_4e1b2a	 RIP: 4e1b25	 Bytes: 5
  %loadMem_4e1b25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1b25 = call %struct.Memory* @routine_jmpq_.L_4e1b2a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1b25, i64 5, i64 5)
  store %struct.Memory* %call_4e1b25, %struct.Memory** %MEMORY

  br label %block_.L_4e1b2a

  ; Code: .L_4e1b2a:	 RIP: 4e1b2a	 Bytes: 0
block_.L_4e1b2a:

  ; Code: movq -0x70(%rbp), %rax	 RIP: 4e1b2a	 Bytes: 4
  %loadMem_4e1b2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1b2a = call %struct.Memory* @routine_movq_MINUS0x70__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1b2a)
  store %struct.Memory* %call_4e1b2a, %struct.Memory** %MEMORY

  ; Code: addq $0x1, %rax	 RIP: 4e1b2e	 Bytes: 4
  %loadMem_4e1b2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1b2e = call %struct.Memory* @routine_addq__0x1___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1b2e)
  store %struct.Memory* %call_4e1b2e, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x70(%rbp)	 RIP: 4e1b32	 Bytes: 4
  %loadMem_4e1b32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1b32 = call %struct.Memory* @routine_movq__rax__MINUS0x70__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1b32)
  store %struct.Memory* %call_4e1b32, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4e1ae5	 RIP: 4e1b36	 Bytes: 5
  %loadMem_4e1b36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1b36 = call %struct.Memory* @routine_jmpq_.L_4e1ae5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1b36, i64 -81, i64 5)
  store %struct.Memory* %call_4e1b36, %struct.Memory** %MEMORY

  br label %block_.L_4e1ae5

  ; Code: .L_4e1b3b:	 RIP: 4e1b3b	 Bytes: 0
block_.L_4e1b3b:

  ; Code: movq -0x20(%rbp), %rax	 RIP: 4e1b3b	 Bytes: 4
  %loadMem_4e1b3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1b3b = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1b3b)
  store %struct.Memory* %call_4e1b3b, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x78(%rbp)	 RIP: 4e1b3f	 Bytes: 4
  %loadMem_4e1b3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1b3f = call %struct.Memory* @routine_movq__rax__MINUS0x78__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1b3f)
  store %struct.Memory* %call_4e1b3f, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x90(%rbp)	 RIP: 4e1b43	 Bytes: 10
  %loadMem_4e1b43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1b43 = call %struct.Memory* @routine_movl__0x0__MINUS0x90__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1b43)
  store %struct.Memory* %call_4e1b43, %struct.Memory** %MEMORY

  ; Code: .L_4e1b4d:	 RIP: 4e1b4d	 Bytes: 0
  br label %block_.L_4e1b4d
block_.L_4e1b4d:

  ; Code: movq -0x78(%rbp), %rax	 RIP: 4e1b4d	 Bytes: 4
  %loadMem_4e1b4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1b4d = call %struct.Memory* @routine_movq_MINUS0x78__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1b4d)
  store %struct.Memory* %call_4e1b4d, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, (%rax)	 RIP: 4e1b51	 Bytes: 4
  %loadMem_4e1b51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1b51 = call %struct.Memory* @routine_cmpq__0x0____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1b51)
  store %struct.Memory* %call_4e1b51, %struct.Memory** %MEMORY

  ; Code: je .L_4e1c42	 RIP: 4e1b55	 Bytes: 6
  %loadMem_4e1b55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1b55 = call %struct.Memory* @routine_je_.L_4e1c42(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1b55, i8* %BRANCH_TAKEN, i64 237, i64 6, i64 6)
  store %struct.Memory* %call_4e1b55, %struct.Memory** %MEMORY

  %loadBr_4e1b55 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4e1b55 = icmp eq i8 %loadBr_4e1b55, 1
  br i1 %cmpBr_4e1b55, label %block_.L_4e1c42, label %block_4e1b5b

block_4e1b5b:
  ; Code: movq -0x78(%rbp), %rax	 RIP: 4e1b5b	 Bytes: 4
  %loadMem_4e1b5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1b5b = call %struct.Memory* @routine_movq_MINUS0x78__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1b5b)
  store %struct.Memory* %call_4e1b5b, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rdi	 RIP: 4e1b5f	 Bytes: 3
  %loadMem_4e1b5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1b5f = call %struct.Memory* @routine_movq___rax____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1b5f)
  store %struct.Memory* %call_4e1b5f, %struct.Memory** %MEMORY

  ; Code: movq 0xafc470, %rsi	 RIP: 4e1b62	 Bytes: 8
  %loadMem_4e1b62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1b62 = call %struct.Memory* @routine_movq_0xafc470___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1b62)
  store %struct.Memory* %call_4e1b62, %struct.Memory** %MEMORY

  ; Code: movq -0x70(%rbp), %rax	 RIP: 4e1b6a	 Bytes: 4
  %loadMem_4e1b6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1b6a = call %struct.Memory* @routine_movq_MINUS0x70__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1b6a)
  store %struct.Memory* %call_4e1b6a, %struct.Memory** %MEMORY

  ; Code: movq 0xafc470, %rcx	 RIP: 4e1b6e	 Bytes: 8
  %loadMem_4e1b6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1b6e = call %struct.Memory* @routine_movq_0xafc470___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1b6e)
  store %struct.Memory* %call_4e1b6e, %struct.Memory** %MEMORY

  ; Code: subq %rcx, %rax	 RIP: 4e1b76	 Bytes: 3
  %loadMem_4e1b76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1b76 = call %struct.Memory* @routine_subq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1b76)
  store %struct.Memory* %call_4e1b76, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdx	 RIP: 4e1b79	 Bytes: 3
  %loadMem_4e1b79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1b79 = call %struct.Memory* @routine_movq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1b79)
  store %struct.Memory* %call_4e1b79, %struct.Memory** %MEMORY

  ; Code: callq .strncmp_plt	 RIP: 4e1b7c	 Bytes: 5
  %loadMem1_4e1b7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4e1b7c = call %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4e1b7c, i64 -920524, i64 5, i64 5)
  store %struct.Memory* %call1_4e1b7c, %struct.Memory** %MEMORY

  %loadMem2_4e1b7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4e1b7c = load i64, i64* %3
  %call2_4e1b7c = call %struct.Memory* @ext_strncmp(%struct.State* %0, i64  %loadPC_4e1b7c, %struct.Memory* %loadMem2_4e1b7c)
  store %struct.Memory* %call2_4e1b7c, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 4e1b81	 Bytes: 3
  %loadMem_4e1b81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1b81 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1b81)
  store %struct.Memory* %call_4e1b81, %struct.Memory** %MEMORY

  ; Code: jne .L_4e1c1d	 RIP: 4e1b84	 Bytes: 6
  %loadMem_4e1b84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1b84 = call %struct.Memory* @routine_jne_.L_4e1c1d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1b84, i8* %BRANCH_TAKEN, i64 153, i64 6, i64 6)
  store %struct.Memory* %call_4e1b84, %struct.Memory** %MEMORY

  %loadBr_4e1b84 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4e1b84 = icmp eq i8 %loadBr_4e1b84, 1
  br i1 %cmpBr_4e1b84, label %block_.L_4e1c1d, label %block_4e1b8a

block_4e1b8a:
  ; Code: movq -0x70(%rbp), %rax	 RIP: 4e1b8a	 Bytes: 4
  %loadMem_4e1b8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1b8a = call %struct.Memory* @routine_movq_MINUS0x70__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1b8a)
  store %struct.Memory* %call_4e1b8a, %struct.Memory** %MEMORY

  ; Code: movq 0xafc470, %rcx	 RIP: 4e1b8e	 Bytes: 8
  %loadMem_4e1b8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1b8e = call %struct.Memory* @routine_movq_0xafc470___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1b8e)
  store %struct.Memory* %call_4e1b8e, %struct.Memory** %MEMORY

  ; Code: subq %rcx, %rax	 RIP: 4e1b96	 Bytes: 3
  %loadMem_4e1b96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1b96 = call %struct.Memory* @routine_subq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1b96)
  store %struct.Memory* %call_4e1b96, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 4e1b99	 Bytes: 2
  %loadMem_4e1b99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1b99 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1b99)
  store %struct.Memory* %call_4e1b99, %struct.Memory** %MEMORY

  ; Code: movl %edx, %edx	 RIP: 4e1b9b	 Bytes: 2
  %loadMem_4e1b9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1b9b = call %struct.Memory* @routine_movl__edx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1b9b)
  store %struct.Memory* %call_4e1b9b, %struct.Memory** %MEMORY

  ; Code: movl %edx, %eax	 RIP: 4e1b9d	 Bytes: 2
  %loadMem_4e1b9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1b9d = call %struct.Memory* @routine_movl__edx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1b9d)
  store %struct.Memory* %call_4e1b9d, %struct.Memory** %MEMORY

  ; Code: movq -0x78(%rbp), %rcx	 RIP: 4e1b9f	 Bytes: 4
  %loadMem_4e1b9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1b9f = call %struct.Memory* @routine_movq_MINUS0x78__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1b9f)
  store %struct.Memory* %call_4e1b9f, %struct.Memory** %MEMORY

  ; Code: movq (%rcx), %rdi	 RIP: 4e1ba3	 Bytes: 3
  %loadMem_4e1ba3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1ba3 = call %struct.Memory* @routine_movq___rcx____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1ba3)
  store %struct.Memory* %call_4e1ba3, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0xe0(%rbp)	 RIP: 4e1ba6	 Bytes: 7
  %loadMem_4e1ba6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1ba6 = call %struct.Memory* @routine_movq__rax__MINUS0xe0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1ba6)
  store %struct.Memory* %call_4e1ba6, %struct.Memory** %MEMORY

  ; Code: callq .strlen_plt	 RIP: 4e1bad	 Bytes: 5
  %loadMem1_4e1bad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4e1bad = call %struct.Memory* @routine_callq_.strlen_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4e1bad, i64 -920477, i64 5, i64 5)
  store %struct.Memory* %call1_4e1bad, %struct.Memory** %MEMORY

  %loadMem2_4e1bad = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4e1bad = load i64, i64* %3
  %call2_4e1bad = call %struct.Memory* @ext_strlen(%struct.State* %0, i64  %loadPC_4e1bad, %struct.Memory* %loadMem2_4e1bad)
  store %struct.Memory* %call2_4e1bad, %struct.Memory** %MEMORY

  ; Code: movq -0xe0(%rbp), %rcx	 RIP: 4e1bb2	 Bytes: 7
  %loadMem_4e1bb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1bb2 = call %struct.Memory* @routine_movq_MINUS0xe0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1bb2)
  store %struct.Memory* %call_4e1bb2, %struct.Memory** %MEMORY

  ; Code: cmpq %rax, %rcx	 RIP: 4e1bb9	 Bytes: 3
  %loadMem_4e1bb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1bb9 = call %struct.Memory* @routine_cmpq__rax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1bb9)
  store %struct.Memory* %call_4e1bb9, %struct.Memory** %MEMORY

  ; Code: jne .L_4e1be5	 RIP: 4e1bbc	 Bytes: 6
  %loadMem_4e1bbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1bbc = call %struct.Memory* @routine_jne_.L_4e1be5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1bbc, i8* %BRANCH_TAKEN, i64 41, i64 6, i64 6)
  store %struct.Memory* %call_4e1bbc, %struct.Memory** %MEMORY

  %loadBr_4e1bbc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4e1bbc = icmp eq i8 %loadBr_4e1bbc, 1
  br i1 %cmpBr_4e1bbc, label %block_.L_4e1be5, label %block_4e1bc2

block_4e1bc2:
  ; Code: movq -0x78(%rbp), %rax	 RIP: 4e1bc2	 Bytes: 4
  %loadMem_4e1bc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1bc2 = call %struct.Memory* @routine_movq_MINUS0x78__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1bc2)
  store %struct.Memory* %call_4e1bc2, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x80(%rbp)	 RIP: 4e1bc6	 Bytes: 4
  %loadMem_4e1bc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1bc6 = call %struct.Memory* @routine_movq__rax__MINUS0x80__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1bc6)
  store %struct.Memory* %call_4e1bc6, %struct.Memory** %MEMORY

  ; Code: movl -0x90(%rbp), %ecx	 RIP: 4e1bca	 Bytes: 6
  %loadMem_4e1bca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1bca = call %struct.Memory* @routine_movl_MINUS0x90__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1bca)
  store %struct.Memory* %call_4e1bca, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x8c(%rbp)	 RIP: 4e1bd0	 Bytes: 6
  %loadMem_4e1bd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1bd0 = call %struct.Memory* @routine_movl__ecx__MINUS0x8c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1bd0)
  store %struct.Memory* %call_4e1bd0, %struct.Memory** %MEMORY

  ; Code: movl $0x1, -0x84(%rbp)	 RIP: 4e1bd6	 Bytes: 10
  %loadMem_4e1bd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1bd6 = call %struct.Memory* @routine_movl__0x1__MINUS0x84__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1bd6)
  store %struct.Memory* %call_4e1bd6, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4e1c42	 RIP: 4e1be0	 Bytes: 5
  %loadMem_4e1be0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1be0 = call %struct.Memory* @routine_jmpq_.L_4e1c42(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1be0, i64 98, i64 5)
  store %struct.Memory* %call_4e1be0, %struct.Memory** %MEMORY

  br label %block_.L_4e1c42

  ; Code: .L_4e1be5:	 RIP: 4e1be5	 Bytes: 0
block_.L_4e1be5:

  ; Code: cmpq $0x0, -0x80(%rbp)	 RIP: 4e1be5	 Bytes: 5
  %loadMem_4e1be5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1be5 = call %struct.Memory* @routine_cmpq__0x0__MINUS0x80__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1be5)
  store %struct.Memory* %call_4e1be5, %struct.Memory** %MEMORY

  ; Code: jne .L_4e1c09	 RIP: 4e1bea	 Bytes: 6
  %loadMem_4e1bea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1bea = call %struct.Memory* @routine_jne_.L_4e1c09(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1bea, i8* %BRANCH_TAKEN, i64 31, i64 6, i64 6)
  store %struct.Memory* %call_4e1bea, %struct.Memory** %MEMORY

  %loadBr_4e1bea = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4e1bea = icmp eq i8 %loadBr_4e1bea, 1
  br i1 %cmpBr_4e1bea, label %block_.L_4e1c09, label %block_4e1bf0

block_4e1bf0:
  ; Code: movq -0x78(%rbp), %rax	 RIP: 4e1bf0	 Bytes: 4
  %loadMem_4e1bf0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1bf0 = call %struct.Memory* @routine_movq_MINUS0x78__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1bf0)
  store %struct.Memory* %call_4e1bf0, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x80(%rbp)	 RIP: 4e1bf4	 Bytes: 4
  %loadMem_4e1bf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1bf4 = call %struct.Memory* @routine_movq__rax__MINUS0x80__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1bf4)
  store %struct.Memory* %call_4e1bf4, %struct.Memory** %MEMORY

  ; Code: movl -0x90(%rbp), %ecx	 RIP: 4e1bf8	 Bytes: 6
  %loadMem_4e1bf8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1bf8 = call %struct.Memory* @routine_movl_MINUS0x90__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1bf8)
  store %struct.Memory* %call_4e1bf8, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x8c(%rbp)	 RIP: 4e1bfe	 Bytes: 6
  %loadMem_4e1bfe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1bfe = call %struct.Memory* @routine_movl__ecx__MINUS0x8c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1bfe)
  store %struct.Memory* %call_4e1bfe, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4e1c13	 RIP: 4e1c04	 Bytes: 5
  %loadMem_4e1c04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1c04 = call %struct.Memory* @routine_jmpq_.L_4e1c13(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1c04, i64 15, i64 5)
  store %struct.Memory* %call_4e1c04, %struct.Memory** %MEMORY

  br label %block_.L_4e1c13

  ; Code: .L_4e1c09:	 RIP: 4e1c09	 Bytes: 0
block_.L_4e1c09:

  ; Code: movl $0x1, -0x88(%rbp)	 RIP: 4e1c09	 Bytes: 10
  %loadMem_4e1c09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1c09 = call %struct.Memory* @routine_movl__0x1__MINUS0x88__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1c09)
  store %struct.Memory* %call_4e1c09, %struct.Memory** %MEMORY

  ; Code: .L_4e1c13:	 RIP: 4e1c13	 Bytes: 0
  br label %block_.L_4e1c13
block_.L_4e1c13:

  ; Code: jmpq .L_4e1c18	 RIP: 4e1c13	 Bytes: 5
  %loadMem_4e1c13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1c13 = call %struct.Memory* @routine_jmpq_.L_4e1c18(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1c13, i64 5, i64 5)
  store %struct.Memory* %call_4e1c13, %struct.Memory** %MEMORY

  br label %block_.L_4e1c18

  ; Code: .L_4e1c18:	 RIP: 4e1c18	 Bytes: 0
block_.L_4e1c18:

  ; Code: jmpq .L_4e1c1d	 RIP: 4e1c18	 Bytes: 5
  %loadMem_4e1c18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1c18 = call %struct.Memory* @routine_jmpq_.L_4e1c1d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1c18, i64 5, i64 5)
  store %struct.Memory* %call_4e1c18, %struct.Memory** %MEMORY

  br label %block_.L_4e1c1d

  ; Code: .L_4e1c1d:	 RIP: 4e1c1d	 Bytes: 0
block_.L_4e1c1d:

  ; Code: jmpq .L_4e1c22	 RIP: 4e1c1d	 Bytes: 5
  %loadMem_4e1c1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1c1d = call %struct.Memory* @routine_jmpq_.L_4e1c22(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1c1d, i64 5, i64 5)
  store %struct.Memory* %call_4e1c1d, %struct.Memory** %MEMORY

  br label %block_.L_4e1c22

  ; Code: .L_4e1c22:	 RIP: 4e1c22	 Bytes: 0
block_.L_4e1c22:

  ; Code: movq -0x78(%rbp), %rax	 RIP: 4e1c22	 Bytes: 4
  %loadMem_4e1c22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1c22 = call %struct.Memory* @routine_movq_MINUS0x78__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1c22)
  store %struct.Memory* %call_4e1c22, %struct.Memory** %MEMORY

  ; Code: addq $0x20, %rax	 RIP: 4e1c26	 Bytes: 4
  %loadMem_4e1c26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1c26 = call %struct.Memory* @routine_addq__0x20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1c26)
  store %struct.Memory* %call_4e1c26, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x78(%rbp)	 RIP: 4e1c2a	 Bytes: 4
  %loadMem_4e1c2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1c2a = call %struct.Memory* @routine_movq__rax__MINUS0x78__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1c2a)
  store %struct.Memory* %call_4e1c2a, %struct.Memory** %MEMORY

  ; Code: movl -0x90(%rbp), %ecx	 RIP: 4e1c2e	 Bytes: 6
  %loadMem_4e1c2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1c2e = call %struct.Memory* @routine_movl_MINUS0x90__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1c2e)
  store %struct.Memory* %call_4e1c2e, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 4e1c34	 Bytes: 3
  %loadMem_4e1c34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1c34 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1c34)
  store %struct.Memory* %call_4e1c34, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x90(%rbp)	 RIP: 4e1c37	 Bytes: 6
  %loadMem_4e1c37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1c37 = call %struct.Memory* @routine_movl__ecx__MINUS0x90__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1c37)
  store %struct.Memory* %call_4e1c37, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4e1b4d	 RIP: 4e1c3d	 Bytes: 5
  %loadMem_4e1c3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1c3d = call %struct.Memory* @routine_jmpq_.L_4e1b4d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1c3d, i64 -240, i64 5)
  store %struct.Memory* %call_4e1c3d, %struct.Memory** %MEMORY

  br label %block_.L_4e1b4d

  ; Code: .L_4e1c42:	 RIP: 4e1c42	 Bytes: 0
block_.L_4e1c42:

  ; Code: cmpl $0x0, -0x88(%rbp)	 RIP: 4e1c42	 Bytes: 7
  %loadMem_4e1c42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1c42 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x88__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1c42)
  store %struct.Memory* %call_4e1c42, %struct.Memory** %MEMORY

  ; Code: je .L_4e1cda	 RIP: 4e1c49	 Bytes: 6
  %loadMem_4e1c49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1c49 = call %struct.Memory* @routine_je_.L_4e1cda(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1c49, i8* %BRANCH_TAKEN, i64 145, i64 6, i64 6)
  store %struct.Memory* %call_4e1c49, %struct.Memory** %MEMORY

  %loadBr_4e1c49 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4e1c49 = icmp eq i8 %loadBr_4e1c49, 1
  br i1 %cmpBr_4e1c49, label %block_.L_4e1cda, label %block_4e1c4f

block_4e1c4f:
  ; Code: cmpl $0x0, -0x84(%rbp)	 RIP: 4e1c4f	 Bytes: 7
  %loadMem_4e1c4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1c4f = call %struct.Memory* @routine_cmpl__0x0__MINUS0x84__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1c4f)
  store %struct.Memory* %call_4e1c4f, %struct.Memory** %MEMORY

  ; Code: jne .L_4e1cda	 RIP: 4e1c56	 Bytes: 6
  %loadMem_4e1c56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1c56 = call %struct.Memory* @routine_jne_.L_4e1cda(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1c56, i8* %BRANCH_TAKEN, i64 132, i64 6, i64 6)
  store %struct.Memory* %call_4e1c56, %struct.Memory** %MEMORY

  %loadBr_4e1c56 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4e1c56 = icmp eq i8 %loadBr_4e1c56, 1
  br i1 %cmpBr_4e1c56, label %block_.L_4e1cda, label %block_4e1c5c

block_4e1c5c:
  ; Code: cmpl $0x0, 0x99c074	 RIP: 4e1c5c	 Bytes: 8
  %loadMem_4e1c5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1c5c = call %struct.Memory* @routine_cmpl__0x0__0x99c074(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1c5c)
  store %struct.Memory* %call_4e1c5c, %struct.Memory** %MEMORY

  ; Code: je .L_4e1ca0	 RIP: 4e1c64	 Bytes: 6
  %loadMem_4e1c64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1c64 = call %struct.Memory* @routine_je_.L_4e1ca0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1c64, i8* %BRANCH_TAKEN, i64 60, i64 6, i64 6)
  store %struct.Memory* %call_4e1c64, %struct.Memory** %MEMORY

  %loadBr_4e1c64 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4e1c64 = icmp eq i8 %loadBr_4e1c64, 1
  br i1 %cmpBr_4e1c64, label %block_.L_4e1ca0, label %block_4e1c6a

block_4e1c6a:
  ; Code: movq $0x5952b4, %rsi	 RIP: 4e1c6a	 Bytes: 10
  %loadMem_4e1c6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1c6a = call %struct.Memory* @routine_movq__0x5952b4___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1c6a)
  store %struct.Memory* %call_4e1c6a, %struct.Memory** %MEMORY

  ; Code: movq 0x99c0a0, %rdi	 RIP: 4e1c74	 Bytes: 8
  %loadMem_4e1c74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1c74 = call %struct.Memory* @routine_movq_0x99c0a0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1c74)
  store %struct.Memory* %call_4e1c74, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 4e1c7c	 Bytes: 4
  %loadMem_4e1c7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1c7c = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1c7c)
  store %struct.Memory* %call_4e1c7c, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rdx	 RIP: 4e1c80	 Bytes: 3
  %loadMem_4e1c80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1c80 = call %struct.Memory* @routine_movq___rax____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1c80)
  store %struct.Memory* %call_4e1c80, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 4e1c83	 Bytes: 4
  %loadMem_4e1c83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1c83 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1c83)
  store %struct.Memory* %call_4e1c83, %struct.Memory** %MEMORY

  ; Code: movslq 0x99c070, %rcx	 RIP: 4e1c87	 Bytes: 8
  %loadMem_4e1c87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1c87 = call %struct.Memory* @routine_movslq_0x99c070___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1c87)
  store %struct.Memory* %call_4e1c87, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rcx,8), %rcx	 RIP: 4e1c8f	 Bytes: 4
  %loadMem_4e1c8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1c8f = call %struct.Memory* @routine_movq___rax__rcx_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1c8f)
  store %struct.Memory* %call_4e1c8f, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 4e1c93	 Bytes: 2
  %loadMem_4e1c93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1c93 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1c93)
  store %struct.Memory* %call_4e1c93, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 4e1c95	 Bytes: 5
  %loadMem1_4e1c95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4e1c95 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4e1c95, i64 -920517, i64 5, i64 5)
  store %struct.Memory* %call1_4e1c95, %struct.Memory** %MEMORY

  %loadMem2_4e1c95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4e1c95 = load i64, i64* %3
  %call2_4e1c95 = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_4e1c95, %struct.Memory* %loadMem2_4e1c95)
  store %struct.Memory* %call2_4e1c95, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xe4(%rbp)	 RIP: 4e1c9a	 Bytes: 6
  %loadMem_4e1c9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1c9a = call %struct.Memory* @routine_movl__eax__MINUS0xe4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1c9a)
  store %struct.Memory* %call_4e1c9a, %struct.Memory** %MEMORY

  ; Code: .L_4e1ca0:	 RIP: 4e1ca0	 Bytes: 0
  br label %block_.L_4e1ca0
block_.L_4e1ca0:

  ; Code: movq 0xafc470, %rdi	 RIP: 4e1ca0	 Bytes: 8
  %loadMem_4e1ca0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1ca0 = call %struct.Memory* @routine_movq_0xafc470___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1ca0)
  store %struct.Memory* %call_4e1ca0, %struct.Memory** %MEMORY

  ; Code: callq .strlen_plt	 RIP: 4e1ca8	 Bytes: 5
  %loadMem1_4e1ca8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4e1ca8 = call %struct.Memory* @routine_callq_.strlen_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4e1ca8, i64 -920728, i64 5, i64 5)
  store %struct.Memory* %call1_4e1ca8, %struct.Memory** %MEMORY

  %loadMem2_4e1ca8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4e1ca8 = load i64, i64* %3
  %call2_4e1ca8 = call %struct.Memory* @ext_strlen(%struct.State* %0, i64  %loadPC_4e1ca8, %struct.Memory* %loadMem2_4e1ca8)
  store %struct.Memory* %call2_4e1ca8, %struct.Memory** %MEMORY

  ; Code: addq 0xafc470, %rax	 RIP: 4e1cad	 Bytes: 8
  %loadMem_4e1cad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1cad = call %struct.Memory* @routine_addq_0xafc470___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1cad)
  store %struct.Memory* %call_4e1cad, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0xafc470	 RIP: 4e1cb5	 Bytes: 8
  %loadMem_4e1cb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1cb5 = call %struct.Memory* @routine_movq__rax__0xafc470(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1cb5)
  store %struct.Memory* %call_4e1cb5, %struct.Memory** %MEMORY

  ; Code: movl 0x99c070, %ecx	 RIP: 4e1cbd	 Bytes: 7
  %loadMem_4e1cbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1cbd = call %struct.Memory* @routine_movl_0x99c070___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1cbd)
  store %struct.Memory* %call_4e1cbd, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 4e1cc4	 Bytes: 3
  %loadMem_4e1cc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1cc4 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1cc4)
  store %struct.Memory* %call_4e1cc4, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x99c070	 RIP: 4e1cc7	 Bytes: 7
  %loadMem_4e1cc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1cc7 = call %struct.Memory* @routine_movl__ecx__0x99c070(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1cc7)
  store %struct.Memory* %call_4e1cc7, %struct.Memory** %MEMORY

  ; Code: movl $0x3f, -0x4(%rbp)	 RIP: 4e1cce	 Bytes: 7
  %loadMem_4e1cce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1cce = call %struct.Memory* @routine_movl__0x3f__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1cce)
  store %struct.Memory* %call_4e1cce, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4e206c	 RIP: 4e1cd5	 Bytes: 5
  %loadMem_4e1cd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1cd5 = call %struct.Memory* @routine_jmpq_.L_4e206c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1cd5, i64 919, i64 5)
  store %struct.Memory* %call_4e1cd5, %struct.Memory** %MEMORY

  br label %block_.L_4e206c

  ; Code: .L_4e1cda:	 RIP: 4e1cda	 Bytes: 0
block_.L_4e1cda:

  ; Code: cmpq $0x0, -0x80(%rbp)	 RIP: 4e1cda	 Bytes: 5
  %loadMem_4e1cda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1cda = call %struct.Memory* @routine_cmpq__0x0__MINUS0x80__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1cda)
  store %struct.Memory* %call_4e1cda, %struct.Memory** %MEMORY

  ; Code: je .L_4e1ee9	 RIP: 4e1cdf	 Bytes: 6
  %loadMem_4e1cdf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1cdf = call %struct.Memory* @routine_je_.L_4e1ee9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1cdf, i8* %BRANCH_TAKEN, i64 522, i64 6, i64 6)
  store %struct.Memory* %call_4e1cdf, %struct.Memory** %MEMORY

  %loadBr_4e1cdf = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4e1cdf = icmp eq i8 %loadBr_4e1cdf, 1
  br i1 %cmpBr_4e1cdf, label %block_.L_4e1ee9, label %block_4e1ce5

block_4e1ce5:
  ; Code: movl -0x8c(%rbp), %eax	 RIP: 4e1ce5	 Bytes: 6
  %loadMem_4e1ce5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1ce5 = call %struct.Memory* @routine_movl_MINUS0x8c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1ce5)
  store %struct.Memory* %call_4e1ce5, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x90(%rbp)	 RIP: 4e1ceb	 Bytes: 6
  %loadMem_4e1ceb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1ceb = call %struct.Memory* @routine_movl__eax__MINUS0x90__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1ceb)
  store %struct.Memory* %call_4e1ceb, %struct.Memory** %MEMORY

  ; Code: movq -0x70(%rbp), %rcx	 RIP: 4e1cf1	 Bytes: 4
  %loadMem_4e1cf1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1cf1 = call %struct.Memory* @routine_movq_MINUS0x70__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1cf1)
  store %struct.Memory* %call_4e1cf1, %struct.Memory** %MEMORY

  ; Code: cmpb $0x0, (%rcx)	 RIP: 4e1cf5	 Bytes: 3
  %loadMem_4e1cf5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1cf5 = call %struct.Memory* @routine_cmpb__0x0____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1cf5)
  store %struct.Memory* %call_4e1cf5, %struct.Memory** %MEMORY

  ; Code: je .L_4e1d8a	 RIP: 4e1cf8	 Bytes: 6
  %loadMem_4e1cf8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1cf8 = call %struct.Memory* @routine_je_.L_4e1d8a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1cf8, i8* %BRANCH_TAKEN, i64 146, i64 6, i64 6)
  store %struct.Memory* %call_4e1cf8, %struct.Memory** %MEMORY

  %loadBr_4e1cf8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4e1cf8 = icmp eq i8 %loadBr_4e1cf8, 1
  br i1 %cmpBr_4e1cf8, label %block_.L_4e1d8a, label %block_4e1cfe

block_4e1cfe:
  ; Code: movq -0x80(%rbp), %rax	 RIP: 4e1cfe	 Bytes: 4
  %loadMem_4e1cfe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1cfe = call %struct.Memory* @routine_movq_MINUS0x80__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1cfe)
  store %struct.Memory* %call_4e1cfe, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x8(%rax)	 RIP: 4e1d02	 Bytes: 4
  %loadMem_4e1d02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1d02 = call %struct.Memory* @routine_cmpl__0x0__0x8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1d02)
  store %struct.Memory* %call_4e1d02, %struct.Memory** %MEMORY

  ; Code: je .L_4e1d21	 RIP: 4e1d06	 Bytes: 6
  %loadMem_4e1d06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1d06 = call %struct.Memory* @routine_je_.L_4e1d21(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1d06, i8* %BRANCH_TAKEN, i64 27, i64 6, i64 6)
  store %struct.Memory* %call_4e1d06, %struct.Memory** %MEMORY

  %loadBr_4e1d06 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4e1d06 = icmp eq i8 %loadBr_4e1d06, 1
  br i1 %cmpBr_4e1d06, label %block_.L_4e1d21, label %block_4e1d0c

block_4e1d0c:
  ; Code: movq -0x70(%rbp), %rax	 RIP: 4e1d0c	 Bytes: 4
  %loadMem_4e1d0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1d0c = call %struct.Memory* @routine_movq_MINUS0x70__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1d0c)
  store %struct.Memory* %call_4e1d0c, %struct.Memory** %MEMORY

  ; Code: addq $0x1, %rax	 RIP: 4e1d10	 Bytes: 4
  %loadMem_4e1d10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1d10 = call %struct.Memory* @routine_addq__0x1___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1d10)
  store %struct.Memory* %call_4e1d10, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0xb89e50	 RIP: 4e1d14	 Bytes: 8
  %loadMem_4e1d14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1d14 = call %struct.Memory* @routine_movq__rax__0xb89e50(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1d14)
  store %struct.Memory* %call_4e1d14, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4e1d85	 RIP: 4e1d1c	 Bytes: 5
  %loadMem_4e1d1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1d1c = call %struct.Memory* @routine_jmpq_.L_4e1d85(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1d1c, i64 105, i64 5)
  store %struct.Memory* %call_4e1d1c, %struct.Memory** %MEMORY

  br label %block_.L_4e1d85

  ; Code: .L_4e1d21:	 RIP: 4e1d21	 Bytes: 0
block_.L_4e1d21:

  ; Code: cmpl $0x0, 0x99c074	 RIP: 4e1d21	 Bytes: 8
  %loadMem_4e1d21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1d21 = call %struct.Memory* @routine_cmpl__0x0__0x99c074(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1d21)
  store %struct.Memory* %call_4e1d21, %struct.Memory** %MEMORY

  ; Code: je .L_4e1d5c	 RIP: 4e1d29	 Bytes: 6
  %loadMem_4e1d29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1d29 = call %struct.Memory* @routine_je_.L_4e1d5c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1d29, i8* %BRANCH_TAKEN, i64 51, i64 6, i64 6)
  store %struct.Memory* %call_4e1d29, %struct.Memory** %MEMORY

  %loadBr_4e1d29 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4e1d29 = icmp eq i8 %loadBr_4e1d29, 1
  br i1 %cmpBr_4e1d29, label %block_.L_4e1d5c, label %block_4e1d2f

block_4e1d2f:
  ; Code: movq $0x5952d5, %rsi	 RIP: 4e1d2f	 Bytes: 10
  %loadMem_4e1d2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1d2f = call %struct.Memory* @routine_movq__0x5952d5___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1d2f)
  store %struct.Memory* %call_4e1d2f, %struct.Memory** %MEMORY

  ; Code: movq 0x99c0a0, %rdi	 RIP: 4e1d39	 Bytes: 8
  %loadMem_4e1d39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1d39 = call %struct.Memory* @routine_movq_0x99c0a0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1d39)
  store %struct.Memory* %call_4e1d39, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 4e1d41	 Bytes: 4
  %loadMem_4e1d41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1d41 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1d41)
  store %struct.Memory* %call_4e1d41, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rdx	 RIP: 4e1d45	 Bytes: 3
  %loadMem_4e1d45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1d45 = call %struct.Memory* @routine_movq___rax____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1d45)
  store %struct.Memory* %call_4e1d45, %struct.Memory** %MEMORY

  ; Code: movq -0x80(%rbp), %rax	 RIP: 4e1d48	 Bytes: 4
  %loadMem_4e1d48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1d48 = call %struct.Memory* @routine_movq_MINUS0x80__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1d48)
  store %struct.Memory* %call_4e1d48, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rcx	 RIP: 4e1d4c	 Bytes: 3
  %loadMem_4e1d4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1d4c = call %struct.Memory* @routine_movq___rax____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1d4c)
  store %struct.Memory* %call_4e1d4c, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 4e1d4f	 Bytes: 2
  %loadMem_4e1d4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1d4f = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1d4f)
  store %struct.Memory* %call_4e1d4f, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 4e1d51	 Bytes: 5
  %loadMem1_4e1d51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4e1d51 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4e1d51, i64 -920705, i64 5, i64 5)
  store %struct.Memory* %call1_4e1d51, %struct.Memory** %MEMORY

  %loadMem2_4e1d51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4e1d51 = load i64, i64* %3
  %call2_4e1d51 = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_4e1d51, %struct.Memory* %loadMem2_4e1d51)
  store %struct.Memory* %call2_4e1d51, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xe8(%rbp)	 RIP: 4e1d56	 Bytes: 6
  %loadMem_4e1d56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1d56 = call %struct.Memory* @routine_movl__eax__MINUS0xe8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1d56)
  store %struct.Memory* %call_4e1d56, %struct.Memory** %MEMORY

  ; Code: .L_4e1d5c:	 RIP: 4e1d5c	 Bytes: 0
  br label %block_.L_4e1d5c
block_.L_4e1d5c:

  ; Code: movq 0xafc470, %rdi	 RIP: 4e1d5c	 Bytes: 8
  %loadMem_4e1d5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1d5c = call %struct.Memory* @routine_movq_0xafc470___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1d5c)
  store %struct.Memory* %call_4e1d5c, %struct.Memory** %MEMORY

  ; Code: callq .strlen_plt	 RIP: 4e1d64	 Bytes: 5
  %loadMem1_4e1d64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4e1d64 = call %struct.Memory* @routine_callq_.strlen_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4e1d64, i64 -920916, i64 5, i64 5)
  store %struct.Memory* %call1_4e1d64, %struct.Memory** %MEMORY

  %loadMem2_4e1d64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4e1d64 = load i64, i64* %3
  %call2_4e1d64 = call %struct.Memory* @ext_strlen(%struct.State* %0, i64  %loadPC_4e1d64, %struct.Memory* %loadMem2_4e1d64)
  store %struct.Memory* %call2_4e1d64, %struct.Memory** %MEMORY

  ; Code: addq 0xafc470, %rax	 RIP: 4e1d69	 Bytes: 8
  %loadMem_4e1d69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1d69 = call %struct.Memory* @routine_addq_0xafc470___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1d69)
  store %struct.Memory* %call_4e1d69, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0xafc470	 RIP: 4e1d71	 Bytes: 8
  %loadMem_4e1d71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1d71 = call %struct.Memory* @routine_movq__rax__0xafc470(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1d71)
  store %struct.Memory* %call_4e1d71, %struct.Memory** %MEMORY

  ; Code: movl $0x3f, -0x4(%rbp)	 RIP: 4e1d79	 Bytes: 7
  %loadMem_4e1d79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1d79 = call %struct.Memory* @routine_movl__0x3f__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1d79)
  store %struct.Memory* %call_4e1d79, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4e206c	 RIP: 4e1d80	 Bytes: 5
  %loadMem_4e1d80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1d80 = call %struct.Memory* @routine_jmpq_.L_4e206c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1d80, i64 748, i64 5)
  store %struct.Memory* %call_4e1d80, %struct.Memory** %MEMORY

  br label %block_.L_4e206c

  ; Code: .L_4e1d85:	 RIP: 4e1d85	 Bytes: 0
block_.L_4e1d85:

  ; Code: jmpq .L_4e1e7a	 RIP: 4e1d85	 Bytes: 5
  %loadMem_4e1d85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1d85 = call %struct.Memory* @routine_jmpq_.L_4e1e7a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1d85, i64 245, i64 5)
  store %struct.Memory* %call_4e1d85, %struct.Memory** %MEMORY

  br label %block_.L_4e1e7a

  ; Code: .L_4e1d8a:	 RIP: 4e1d8a	 Bytes: 0
block_.L_4e1d8a:

  ; Code: movq -0x80(%rbp), %rax	 RIP: 4e1d8a	 Bytes: 4
  %loadMem_4e1d8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1d8a = call %struct.Memory* @routine_movq_MINUS0x80__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1d8a)
  store %struct.Memory* %call_4e1d8a, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, 0x8(%rax)	 RIP: 4e1d8e	 Bytes: 4
  %loadMem_4e1d8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1d8e = call %struct.Memory* @routine_cmpl__0x1__0x8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1d8e)
  store %struct.Memory* %call_4e1d8e, %struct.Memory** %MEMORY

  ; Code: jne .L_4e1e75	 RIP: 4e1d92	 Bytes: 6
  %loadMem_4e1d92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1d92 = call %struct.Memory* @routine_jne_.L_4e1e75(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1d92, i8* %BRANCH_TAKEN, i64 227, i64 6, i64 6)
  store %struct.Memory* %call_4e1d92, %struct.Memory** %MEMORY

  %loadBr_4e1d92 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4e1d92 = icmp eq i8 %loadBr_4e1d92, 1
  br i1 %cmpBr_4e1d92, label %block_.L_4e1e75, label %block_4e1d98

block_4e1d98:
  ; Code: movl 0x99c070, %eax	 RIP: 4e1d98	 Bytes: 7
  %loadMem_4e1d98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1d98 = call %struct.Memory* @routine_movl_0x99c070___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1d98)
  store %struct.Memory* %call_4e1d98, %struct.Memory** %MEMORY

  ; Code: cmpl -0x8(%rbp), %eax	 RIP: 4e1d9f	 Bytes: 3
  %loadMem_4e1d9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1d9f = call %struct.Memory* @routine_cmpl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1d9f)
  store %struct.Memory* %call_4e1d9f, %struct.Memory** %MEMORY

  ; Code: jge .L_4e1dd3	 RIP: 4e1da2	 Bytes: 6
  %loadMem_4e1da2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1da2 = call %struct.Memory* @routine_jge_.L_4e1dd3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1da2, i8* %BRANCH_TAKEN, i64 49, i64 6, i64 6)
  store %struct.Memory* %call_4e1da2, %struct.Memory** %MEMORY

  %loadBr_4e1da2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4e1da2 = icmp eq i8 %loadBr_4e1da2, 1
  br i1 %cmpBr_4e1da2, label %block_.L_4e1dd3, label %block_4e1da8

block_4e1da8:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 4e1da8	 Bytes: 4
  %loadMem_4e1da8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1da8 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1da8)
  store %struct.Memory* %call_4e1da8, %struct.Memory** %MEMORY

  ; Code: movl 0x99c070, %ecx	 RIP: 4e1dac	 Bytes: 7
  %loadMem_4e1dac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1dac = call %struct.Memory* @routine_movl_0x99c070___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1dac)
  store %struct.Memory* %call_4e1dac, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 4e1db3	 Bytes: 2
  %loadMem_4e1db3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1db3 = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1db3)
  store %struct.Memory* %call_4e1db3, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 4e1db5	 Bytes: 3
  %loadMem_4e1db5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1db5 = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1db5)
  store %struct.Memory* %call_4e1db5, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0x99c070	 RIP: 4e1db8	 Bytes: 7
  %loadMem_4e1db8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1db8 = call %struct.Memory* @routine_movl__edx__0x99c070(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1db8)
  store %struct.Memory* %call_4e1db8, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 4e1dbf	 Bytes: 3
  %loadMem_4e1dbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1dbf = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1dbf)
  store %struct.Memory* %call_4e1dbf, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rsi,8), %rax	 RIP: 4e1dc2	 Bytes: 4
  %loadMem_4e1dc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1dc2 = call %struct.Memory* @routine_movq___rax__rsi_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1dc2)
  store %struct.Memory* %call_4e1dc2, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0xb89e50	 RIP: 4e1dc6	 Bytes: 8
  %loadMem_4e1dc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1dc6 = call %struct.Memory* @routine_movq__rax__0xb89e50(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1dc6)
  store %struct.Memory* %call_4e1dc6, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4e1e70	 RIP: 4e1dce	 Bytes: 5
  %loadMem_4e1dce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1dce = call %struct.Memory* @routine_jmpq_.L_4e1e70(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1dce, i64 162, i64 5)
  store %struct.Memory* %call_4e1dce, %struct.Memory** %MEMORY

  br label %block_.L_4e1e70

  ; Code: .L_4e1dd3:	 RIP: 4e1dd3	 Bytes: 0
block_.L_4e1dd3:

  ; Code: cmpl $0x0, 0x99c074	 RIP: 4e1dd3	 Bytes: 8
  %loadMem_4e1dd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1dd3 = call %struct.Memory* @routine_cmpl__0x0__0x99c074(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1dd3)
  store %struct.Memory* %call_4e1dd3, %struct.Memory** %MEMORY

  ; Code: je .L_4e1e1c	 RIP: 4e1ddb	 Bytes: 6
  %loadMem_4e1ddb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1ddb = call %struct.Memory* @routine_je_.L_4e1e1c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1ddb, i8* %BRANCH_TAKEN, i64 65, i64 6, i64 6)
  store %struct.Memory* %call_4e1ddb, %struct.Memory** %MEMORY

  %loadBr_4e1ddb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4e1ddb = icmp eq i8 %loadBr_4e1ddb, 1
  br i1 %cmpBr_4e1ddb, label %block_.L_4e1e1c, label %block_4e1de1

block_4e1de1:
  ; Code: movq $0x5951f3, %rsi	 RIP: 4e1de1	 Bytes: 10
  %loadMem_4e1de1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1de1 = call %struct.Memory* @routine_movq__0x5951f3___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1de1)
  store %struct.Memory* %call_4e1de1, %struct.Memory** %MEMORY

  ; Code: movq 0x99c0a0, %rdi	 RIP: 4e1deb	 Bytes: 8
  %loadMem_4e1deb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1deb = call %struct.Memory* @routine_movq_0x99c0a0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1deb)
  store %struct.Memory* %call_4e1deb, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 4e1df3	 Bytes: 4
  %loadMem_4e1df3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1df3 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1df3)
  store %struct.Memory* %call_4e1df3, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rdx	 RIP: 4e1df7	 Bytes: 3
  %loadMem_4e1df7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1df7 = call %struct.Memory* @routine_movq___rax____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1df7)
  store %struct.Memory* %call_4e1df7, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 4e1dfa	 Bytes: 4
  %loadMem_4e1dfa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1dfa = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1dfa)
  store %struct.Memory* %call_4e1dfa, %struct.Memory** %MEMORY

  ; Code: movl 0x99c070, %ecx	 RIP: 4e1dfe	 Bytes: 7
  %loadMem_4e1dfe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1dfe = call %struct.Memory* @routine_movl_0x99c070___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1dfe)
  store %struct.Memory* %call_4e1dfe, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 4e1e05	 Bytes: 3
  %loadMem_4e1e05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1e05 = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1e05)
  store %struct.Memory* %call_4e1e05, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %r8	 RIP: 4e1e08	 Bytes: 3
  %loadMem_4e1e08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1e08 = call %struct.Memory* @routine_movslq__ecx___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1e08)
  store %struct.Memory* %call_4e1e08, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%r8,8), %rcx	 RIP: 4e1e0b	 Bytes: 4
  %loadMem_4e1e0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1e0b = call %struct.Memory* @routine_movq___rax__r8_8____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1e0b)
  store %struct.Memory* %call_4e1e0b, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 4e1e0f	 Bytes: 2
  %loadMem_4e1e0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1e0f = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1e0f)
  store %struct.Memory* %call_4e1e0f, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 4e1e11	 Bytes: 5
  %loadMem1_4e1e11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4e1e11 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4e1e11, i64 -920897, i64 5, i64 5)
  store %struct.Memory* %call1_4e1e11, %struct.Memory** %MEMORY

  %loadMem2_4e1e11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4e1e11 = load i64, i64* %3
  %call2_4e1e11 = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_4e1e11, %struct.Memory* %loadMem2_4e1e11)
  store %struct.Memory* %call2_4e1e11, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xec(%rbp)	 RIP: 4e1e16	 Bytes: 6
  %loadMem_4e1e16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1e16 = call %struct.Memory* @routine_movl__eax__MINUS0xec__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1e16)
  store %struct.Memory* %call_4e1e16, %struct.Memory** %MEMORY

  ; Code: .L_4e1e1c:	 RIP: 4e1e1c	 Bytes: 0
  br label %block_.L_4e1e1c
block_.L_4e1e1c:

  ; Code: movl $0x3f, %eax	 RIP: 4e1e1c	 Bytes: 5
  %loadMem_4e1e1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1e1c = call %struct.Memory* @routine_movl__0x3f___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1e1c)
  store %struct.Memory* %call_4e1e1c, %struct.Memory** %MEMORY

  ; Code: movl $0x3a, %ecx	 RIP: 4e1e21	 Bytes: 5
  %loadMem_4e1e21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1e21 = call %struct.Memory* @routine_movl__0x3a___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1e21)
  store %struct.Memory* %call_4e1e21, %struct.Memory** %MEMORY

  ; Code: movq 0xafc470, %rdi	 RIP: 4e1e26	 Bytes: 8
  %loadMem_4e1e26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1e26 = call %struct.Memory* @routine_movq_0xafc470___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1e26)
  store %struct.Memory* %call_4e1e26, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xf0(%rbp)	 RIP: 4e1e2e	 Bytes: 6
  %loadMem_4e1e2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1e2e = call %struct.Memory* @routine_movl__eax__MINUS0xf0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1e2e)
  store %struct.Memory* %call_4e1e2e, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0xf4(%rbp)	 RIP: 4e1e34	 Bytes: 6
  %loadMem_4e1e34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1e34 = call %struct.Memory* @routine_movl__ecx__MINUS0xf4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1e34)
  store %struct.Memory* %call_4e1e34, %struct.Memory** %MEMORY

  ; Code: callq .strlen_plt	 RIP: 4e1e3a	 Bytes: 5
  %loadMem1_4e1e3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4e1e3a = call %struct.Memory* @routine_callq_.strlen_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4e1e3a, i64 -921130, i64 5, i64 5)
  store %struct.Memory* %call1_4e1e3a, %struct.Memory** %MEMORY

  %loadMem2_4e1e3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4e1e3a = load i64, i64* %3
  %call2_4e1e3a = call %struct.Memory* @ext_strlen(%struct.State* %0, i64  %loadPC_4e1e3a, %struct.Memory* %loadMem2_4e1e3a)
  store %struct.Memory* %call2_4e1e3a, %struct.Memory** %MEMORY

  ; Code: addq 0xafc470, %rax	 RIP: 4e1e3f	 Bytes: 8
  %loadMem_4e1e3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1e3f = call %struct.Memory* @routine_addq_0xafc470___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1e3f)
  store %struct.Memory* %call_4e1e3f, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0xafc470	 RIP: 4e1e47	 Bytes: 8
  %loadMem_4e1e47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1e47 = call %struct.Memory* @routine_movq__rax__0xafc470(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1e47)
  store %struct.Memory* %call_4e1e47, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 4e1e4f	 Bytes: 4
  %loadMem_4e1e4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1e4f = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1e4f)
  store %struct.Memory* %call_4e1e4f, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax), %ecx	 RIP: 4e1e53	 Bytes: 3
  %loadMem_4e1e53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1e53 = call %struct.Memory* @routine_movsbl___rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1e53)
  store %struct.Memory* %call_4e1e53, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3a, %ecx	 RIP: 4e1e56	 Bytes: 3
  %loadMem_4e1e56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1e56 = call %struct.Memory* @routine_cmpl__0x3a___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1e56)
  store %struct.Memory* %call_4e1e56, %struct.Memory** %MEMORY

  ; Code: movl -0xf0(%rbp), %ecx	 RIP: 4e1e59	 Bytes: 6
  %loadMem_4e1e59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1e59 = call %struct.Memory* @routine_movl_MINUS0xf0__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1e59)
  store %struct.Memory* %call_4e1e59, %struct.Memory** %MEMORY

  ; Code: movl -0xf4(%rbp), %edx	 RIP: 4e1e5f	 Bytes: 6
  %loadMem_4e1e5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1e5f = call %struct.Memory* @routine_movl_MINUS0xf4__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1e5f)
  store %struct.Memory* %call_4e1e5f, %struct.Memory** %MEMORY

  ; Code: cmovel %edx, %ecx	 RIP: 4e1e65	 Bytes: 3
  %loadMem_4e1e65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1e65 = call %struct.Memory* @routine_cmovel__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1e65)
  store %struct.Memory* %call_4e1e65, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x4(%rbp)	 RIP: 4e1e68	 Bytes: 3
  %loadMem_4e1e68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1e68 = call %struct.Memory* @routine_movl__ecx__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1e68)
  store %struct.Memory* %call_4e1e68, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4e206c	 RIP: 4e1e6b	 Bytes: 5
  %loadMem_4e1e6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1e6b = call %struct.Memory* @routine_jmpq_.L_4e206c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1e6b, i64 513, i64 5)
  store %struct.Memory* %call_4e1e6b, %struct.Memory** %MEMORY

  br label %block_.L_4e206c

  ; Code: .L_4e1e70:	 RIP: 4e1e70	 Bytes: 0
block_.L_4e1e70:

  ; Code: jmpq .L_4e1e75	 RIP: 4e1e70	 Bytes: 5
  %loadMem_4e1e70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1e70 = call %struct.Memory* @routine_jmpq_.L_4e1e75(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1e70, i64 5, i64 5)
  store %struct.Memory* %call_4e1e70, %struct.Memory** %MEMORY

  br label %block_.L_4e1e75

  ; Code: .L_4e1e75:	 RIP: 4e1e75	 Bytes: 0
block_.L_4e1e75:

  ; Code: jmpq .L_4e1e7a	 RIP: 4e1e75	 Bytes: 5
  %loadMem_4e1e75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1e75 = call %struct.Memory* @routine_jmpq_.L_4e1e7a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1e75, i64 5, i64 5)
  store %struct.Memory* %call_4e1e75, %struct.Memory** %MEMORY

  br label %block_.L_4e1e7a

  ; Code: .L_4e1e7a:	 RIP: 4e1e7a	 Bytes: 0
block_.L_4e1e7a:

  ; Code: movq 0xafc470, %rdi	 RIP: 4e1e7a	 Bytes: 8
  %loadMem_4e1e7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1e7a = call %struct.Memory* @routine_movq_0xafc470___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1e7a)
  store %struct.Memory* %call_4e1e7a, %struct.Memory** %MEMORY

  ; Code: callq .strlen_plt	 RIP: 4e1e82	 Bytes: 5
  %loadMem1_4e1e82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4e1e82 = call %struct.Memory* @routine_callq_.strlen_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4e1e82, i64 -921202, i64 5, i64 5)
  store %struct.Memory* %call1_4e1e82, %struct.Memory** %MEMORY

  %loadMem2_4e1e82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4e1e82 = load i64, i64* %3
  %call2_4e1e82 = call %struct.Memory* @ext_strlen(%struct.State* %0, i64  %loadPC_4e1e82, %struct.Memory* %loadMem2_4e1e82)
  store %struct.Memory* %call2_4e1e82, %struct.Memory** %MEMORY

  ; Code: addq 0xafc470, %rax	 RIP: 4e1e87	 Bytes: 8
  %loadMem_4e1e87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1e87 = call %struct.Memory* @routine_addq_0xafc470___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1e87)
  store %struct.Memory* %call_4e1e87, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0xafc470	 RIP: 4e1e8f	 Bytes: 8
  %loadMem_4e1e8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1e8f = call %struct.Memory* @routine_movq__rax__0xafc470(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1e8f)
  store %struct.Memory* %call_4e1e8f, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, -0x28(%rbp)	 RIP: 4e1e97	 Bytes: 5
  %loadMem_4e1e97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1e97 = call %struct.Memory* @routine_cmpq__0x0__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1e97)
  store %struct.Memory* %call_4e1e97, %struct.Memory** %MEMORY

  ; Code: je .L_4e1eae	 RIP: 4e1e9c	 Bytes: 6
  %loadMem_4e1e9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1e9c = call %struct.Memory* @routine_je_.L_4e1eae(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1e9c, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_4e1e9c, %struct.Memory** %MEMORY

  %loadBr_4e1e9c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4e1e9c = icmp eq i8 %loadBr_4e1e9c, 1
  br i1 %cmpBr_4e1e9c, label %block_.L_4e1eae, label %block_4e1ea2

block_4e1ea2:
  ; Code: movl -0x90(%rbp), %eax	 RIP: 4e1ea2	 Bytes: 6
  %loadMem_4e1ea2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1ea2 = call %struct.Memory* @routine_movl_MINUS0x90__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1ea2)
  store %struct.Memory* %call_4e1ea2, %struct.Memory** %MEMORY

  ; Code: movq -0x28(%rbp), %rcx	 RIP: 4e1ea8	 Bytes: 4
  %loadMem_4e1ea8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1ea8 = call %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1ea8)
  store %struct.Memory* %call_4e1ea8, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx)	 RIP: 4e1eac	 Bytes: 2
  %loadMem_4e1eac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1eac = call %struct.Memory* @routine_movl__eax____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1eac)
  store %struct.Memory* %call_4e1eac, %struct.Memory** %MEMORY

  ; Code: .L_4e1eae:	 RIP: 4e1eae	 Bytes: 0
  br label %block_.L_4e1eae
block_.L_4e1eae:

  ; Code: movq -0x80(%rbp), %rax	 RIP: 4e1eae	 Bytes: 4
  %loadMem_4e1eae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1eae = call %struct.Memory* @routine_movq_MINUS0x80__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1eae)
  store %struct.Memory* %call_4e1eae, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, 0x10(%rax)	 RIP: 4e1eb2	 Bytes: 5
  %loadMem_4e1eb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1eb2 = call %struct.Memory* @routine_cmpq__0x0__0x10__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1eb2)
  store %struct.Memory* %call_4e1eb2, %struct.Memory** %MEMORY

  ; Code: je .L_4e1eda	 RIP: 4e1eb7	 Bytes: 6
  %loadMem_4e1eb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1eb7 = call %struct.Memory* @routine_je_.L_4e1eda(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1eb7, i8* %BRANCH_TAKEN, i64 35, i64 6, i64 6)
  store %struct.Memory* %call_4e1eb7, %struct.Memory** %MEMORY

  %loadBr_4e1eb7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4e1eb7 = icmp eq i8 %loadBr_4e1eb7, 1
  br i1 %cmpBr_4e1eb7, label %block_.L_4e1eda, label %block_4e1ebd

block_4e1ebd:
  ; Code: movq -0x80(%rbp), %rax	 RIP: 4e1ebd	 Bytes: 4
  %loadMem_4e1ebd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1ebd = call %struct.Memory* @routine_movq_MINUS0x80__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1ebd)
  store %struct.Memory* %call_4e1ebd, %struct.Memory** %MEMORY

  ; Code: movl 0x18(%rax), %ecx	 RIP: 4e1ec1	 Bytes: 3
  %loadMem_4e1ec1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1ec1 = call %struct.Memory* @routine_movl_0x18__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1ec1)
  store %struct.Memory* %call_4e1ec1, %struct.Memory** %MEMORY

  ; Code: movq -0x80(%rbp), %rax	 RIP: 4e1ec4	 Bytes: 4
  %loadMem_4e1ec4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1ec4 = call %struct.Memory* @routine_movq_MINUS0x80__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1ec4)
  store %struct.Memory* %call_4e1ec4, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rax), %rax	 RIP: 4e1ec8	 Bytes: 4
  %loadMem_4e1ec8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1ec8 = call %struct.Memory* @routine_movq_0x10__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1ec8)
  store %struct.Memory* %call_4e1ec8, %struct.Memory** %MEMORY

  ; Code: movl %ecx, (%rax)	 RIP: 4e1ecc	 Bytes: 2
  %loadMem_4e1ecc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1ecc = call %struct.Memory* @routine_movl__ecx____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1ecc)
  store %struct.Memory* %call_4e1ecc, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x4(%rbp)	 RIP: 4e1ece	 Bytes: 7
  %loadMem_4e1ece = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1ece = call %struct.Memory* @routine_movl__0x0__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1ece)
  store %struct.Memory* %call_4e1ece, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4e206c	 RIP: 4e1ed5	 Bytes: 5
  %loadMem_4e1ed5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1ed5 = call %struct.Memory* @routine_jmpq_.L_4e206c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1ed5, i64 407, i64 5)
  store %struct.Memory* %call_4e1ed5, %struct.Memory** %MEMORY

  br label %block_.L_4e206c

  ; Code: .L_4e1eda:	 RIP: 4e1eda	 Bytes: 0
block_.L_4e1eda:

  ; Code: movq -0x80(%rbp), %rax	 RIP: 4e1eda	 Bytes: 4
  %loadMem_4e1eda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1eda = call %struct.Memory* @routine_movq_MINUS0x80__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1eda)
  store %struct.Memory* %call_4e1eda, %struct.Memory** %MEMORY

  ; Code: movl 0x18(%rax), %ecx	 RIP: 4e1ede	 Bytes: 3
  %loadMem_4e1ede = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1ede = call %struct.Memory* @routine_movl_0x18__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1ede)
  store %struct.Memory* %call_4e1ede, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x4(%rbp)	 RIP: 4e1ee1	 Bytes: 3
  %loadMem_4e1ee1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1ee1 = call %struct.Memory* @routine_movl__ecx__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1ee1)
  store %struct.Memory* %call_4e1ee1, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4e206c	 RIP: 4e1ee4	 Bytes: 5
  %loadMem_4e1ee4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1ee4 = call %struct.Memory* @routine_jmpq_.L_4e206c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1ee4, i64 392, i64 5)
  store %struct.Memory* %call_4e1ee4, %struct.Memory** %MEMORY

  br label %block_.L_4e206c

  ; Code: .L_4e1ee9:	 RIP: 4e1ee9	 Bytes: 0
block_.L_4e1ee9:

  ; Code: movq $0x0, 0xafc470	 RIP: 4e1ee9	 Bytes: 12
  %loadMem_4e1ee9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1ee9 = call %struct.Memory* @routine_movq__0x0__0xafc470(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1ee9)
  store %struct.Memory* %call_4e1ee9, %struct.Memory** %MEMORY

  ; Code: movl $0x57, -0x4(%rbp)	 RIP: 4e1ef5	 Bytes: 7
  %loadMem_4e1ef5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1ef5 = call %struct.Memory* @routine_movl__0x57__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1ef5)
  store %struct.Memory* %call_4e1ef5, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4e206c	 RIP: 4e1efc	 Bytes: 5
  %loadMem_4e1efc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1efc = call %struct.Memory* @routine_jmpq_.L_4e206c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1efc, i64 368, i64 5)
  store %struct.Memory* %call_4e1efc, %struct.Memory** %MEMORY

  br label %block_.L_4e206c

  ; Code: .L_4e1f01:	 RIP: 4e1f01	 Bytes: 0
block_.L_4e1f01:

  ; Code: movq -0x68(%rbp), %rax	 RIP: 4e1f01	 Bytes: 4
  %loadMem_4e1f01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1f01 = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1f01)
  store %struct.Memory* %call_4e1f01, %struct.Memory** %MEMORY

  ; Code: movsbl 0x1(%rax), %ecx	 RIP: 4e1f05	 Bytes: 4
  %loadMem_4e1f05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1f05 = call %struct.Memory* @routine_movsbl_0x1__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1f05)
  store %struct.Memory* %call_4e1f05, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3a, %ecx	 RIP: 4e1f09	 Bytes: 3
  %loadMem_4e1f09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1f09 = call %struct.Memory* @routine_cmpl__0x3a___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1f09)
  store %struct.Memory* %call_4e1f09, %struct.Memory** %MEMORY

  ; Code: jne .L_4e2065	 RIP: 4e1f0c	 Bytes: 6
  %loadMem_4e1f0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1f0c = call %struct.Memory* @routine_jne_.L_4e2065(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1f0c, i8* %BRANCH_TAKEN, i64 345, i64 6, i64 6)
  store %struct.Memory* %call_4e1f0c, %struct.Memory** %MEMORY

  %loadBr_4e1f0c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4e1f0c = icmp eq i8 %loadBr_4e1f0c, 1
  br i1 %cmpBr_4e1f0c, label %block_.L_4e2065, label %block_4e1f12

block_4e1f12:
  ; Code: movq -0x68(%rbp), %rax	 RIP: 4e1f12	 Bytes: 4
  %loadMem_4e1f12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1f12 = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1f12)
  store %struct.Memory* %call_4e1f12, %struct.Memory** %MEMORY

  ; Code: movsbl 0x2(%rax), %ecx	 RIP: 4e1f16	 Bytes: 4
  %loadMem_4e1f16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1f16 = call %struct.Memory* @routine_movsbl_0x2__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1f16)
  store %struct.Memory* %call_4e1f16, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3a, %ecx	 RIP: 4e1f1a	 Bytes: 3
  %loadMem_4e1f1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1f1a = call %struct.Memory* @routine_cmpl__0x3a___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1f1a)
  store %struct.Memory* %call_4e1f1a, %struct.Memory** %MEMORY

  ; Code: jne .L_4e1f7a	 RIP: 4e1f1d	 Bytes: 6
  %loadMem_4e1f1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1f1d = call %struct.Memory* @routine_jne_.L_4e1f7a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1f1d, i8* %BRANCH_TAKEN, i64 93, i64 6, i64 6)
  store %struct.Memory* %call_4e1f1d, %struct.Memory** %MEMORY

  %loadBr_4e1f1d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4e1f1d = icmp eq i8 %loadBr_4e1f1d, 1
  br i1 %cmpBr_4e1f1d, label %block_.L_4e1f7a, label %block_4e1f23

block_4e1f23:
  ; Code: movq 0xafc470, %rax	 RIP: 4e1f23	 Bytes: 8
  %loadMem_4e1f23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1f23 = call %struct.Memory* @routine_movq_0xafc470___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1f23)
  store %struct.Memory* %call_4e1f23, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax), %ecx	 RIP: 4e1f2b	 Bytes: 3
  %loadMem_4e1f2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1f2b = call %struct.Memory* @routine_movsbl___rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1f2b)
  store %struct.Memory* %call_4e1f2b, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %ecx	 RIP: 4e1f2e	 Bytes: 3
  %loadMem_4e1f2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1f2e = call %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1f2e)
  store %struct.Memory* %call_4e1f2e, %struct.Memory** %MEMORY

  ; Code: je .L_4e1f5d	 RIP: 4e1f31	 Bytes: 6
  %loadMem_4e1f31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1f31 = call %struct.Memory* @routine_je_.L_4e1f5d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1f31, i8* %BRANCH_TAKEN, i64 44, i64 6, i64 6)
  store %struct.Memory* %call_4e1f31, %struct.Memory** %MEMORY

  %loadBr_4e1f31 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4e1f31 = icmp eq i8 %loadBr_4e1f31, 1
  br i1 %cmpBr_4e1f31, label %block_.L_4e1f5d, label %block_4e1f37

block_4e1f37:
  ; Code: movq 0xafc470, %rax	 RIP: 4e1f37	 Bytes: 8
  %loadMem_4e1f37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1f37 = call %struct.Memory* @routine_movq_0xafc470___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1f37)
  store %struct.Memory* %call_4e1f37, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0xb89e50	 RIP: 4e1f3f	 Bytes: 8
  %loadMem_4e1f3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1f3f = call %struct.Memory* @routine_movq__rax__0xb89e50(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1f3f)
  store %struct.Memory* %call_4e1f3f, %struct.Memory** %MEMORY

  ; Code: movl 0x99c070, %ecx	 RIP: 4e1f47	 Bytes: 7
  %loadMem_4e1f47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1f47 = call %struct.Memory* @routine_movl_0x99c070___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1f47)
  store %struct.Memory* %call_4e1f47, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 4e1f4e	 Bytes: 3
  %loadMem_4e1f4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1f4e = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1f4e)
  store %struct.Memory* %call_4e1f4e, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x99c070	 RIP: 4e1f51	 Bytes: 7
  %loadMem_4e1f51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1f51 = call %struct.Memory* @routine_movl__ecx__0x99c070(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1f51)
  store %struct.Memory* %call_4e1f51, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4e1f69	 RIP: 4e1f58	 Bytes: 5
  %loadMem_4e1f58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1f58 = call %struct.Memory* @routine_jmpq_.L_4e1f69(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1f58, i64 17, i64 5)
  store %struct.Memory* %call_4e1f58, %struct.Memory** %MEMORY

  br label %block_.L_4e1f69

  ; Code: .L_4e1f5d:	 RIP: 4e1f5d	 Bytes: 0
block_.L_4e1f5d:

  ; Code: movq $0x0, 0xb89e50	 RIP: 4e1f5d	 Bytes: 12
  %loadMem_4e1f5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1f5d = call %struct.Memory* @routine_movq__0x0__0xb89e50(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1f5d)
  store %struct.Memory* %call_4e1f5d, %struct.Memory** %MEMORY

  ; Code: .L_4e1f69:	 RIP: 4e1f69	 Bytes: 0
  br label %block_.L_4e1f69
block_.L_4e1f69:

  ; Code: movq $0x0, 0xafc470	 RIP: 4e1f69	 Bytes: 12
  %loadMem_4e1f69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1f69 = call %struct.Memory* @routine_movq__0x0__0xafc470(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1f69)
  store %struct.Memory* %call_4e1f69, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4e2060	 RIP: 4e1f75	 Bytes: 5
  %loadMem_4e1f75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1f75 = call %struct.Memory* @routine_jmpq_.L_4e2060(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1f75, i64 235, i64 5)
  store %struct.Memory* %call_4e1f75, %struct.Memory** %MEMORY

  br label %block_.L_4e2060

  ; Code: .L_4e1f7a:	 RIP: 4e1f7a	 Bytes: 0
block_.L_4e1f7a:

  ; Code: movq 0xafc470, %rax	 RIP: 4e1f7a	 Bytes: 8
  %loadMem_4e1f7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1f7a = call %struct.Memory* @routine_movq_0xafc470___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1f7a)
  store %struct.Memory* %call_4e1f7a, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax), %ecx	 RIP: 4e1f82	 Bytes: 3
  %loadMem_4e1f82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1f82 = call %struct.Memory* @routine_movsbl___rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1f82)
  store %struct.Memory* %call_4e1f82, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %ecx	 RIP: 4e1f85	 Bytes: 3
  %loadMem_4e1f85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1f85 = call %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1f85)
  store %struct.Memory* %call_4e1f85, %struct.Memory** %MEMORY

  ; Code: je .L_4e1fb4	 RIP: 4e1f88	 Bytes: 6
  %loadMem_4e1f88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1f88 = call %struct.Memory* @routine_je_.L_4e1fb4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1f88, i8* %BRANCH_TAKEN, i64 44, i64 6, i64 6)
  store %struct.Memory* %call_4e1f88, %struct.Memory** %MEMORY

  %loadBr_4e1f88 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4e1f88 = icmp eq i8 %loadBr_4e1f88, 1
  br i1 %cmpBr_4e1f88, label %block_.L_4e1fb4, label %block_4e1f8e

block_4e1f8e:
  ; Code: movq 0xafc470, %rax	 RIP: 4e1f8e	 Bytes: 8
  %loadMem_4e1f8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1f8e = call %struct.Memory* @routine_movq_0xafc470___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1f8e)
  store %struct.Memory* %call_4e1f8e, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0xb89e50	 RIP: 4e1f96	 Bytes: 8
  %loadMem_4e1f96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1f96 = call %struct.Memory* @routine_movq__rax__0xb89e50(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1f96)
  store %struct.Memory* %call_4e1f96, %struct.Memory** %MEMORY

  ; Code: movl 0x99c070, %ecx	 RIP: 4e1f9e	 Bytes: 7
  %loadMem_4e1f9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1f9e = call %struct.Memory* @routine_movl_0x99c070___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1f9e)
  store %struct.Memory* %call_4e1f9e, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 4e1fa5	 Bytes: 3
  %loadMem_4e1fa5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1fa5 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1fa5)
  store %struct.Memory* %call_4e1fa5, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x99c070	 RIP: 4e1fa8	 Bytes: 7
  %loadMem_4e1fa8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1fa8 = call %struct.Memory* @routine_movl__ecx__0x99c070(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1fa8)
  store %struct.Memory* %call_4e1fa8, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4e2054	 RIP: 4e1faf	 Bytes: 5
  %loadMem_4e1faf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1faf = call %struct.Memory* @routine_jmpq_.L_4e2054(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1faf, i64 165, i64 5)
  store %struct.Memory* %call_4e1faf, %struct.Memory** %MEMORY

  br label %block_.L_4e2054

  ; Code: .L_4e1fb4:	 RIP: 4e1fb4	 Bytes: 0
block_.L_4e1fb4:

  ; Code: movl 0x99c070, %eax	 RIP: 4e1fb4	 Bytes: 7
  %loadMem_4e1fb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1fb4 = call %struct.Memory* @routine_movl_0x99c070___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1fb4)
  store %struct.Memory* %call_4e1fb4, %struct.Memory** %MEMORY

  ; Code: cmpl -0x8(%rbp), %eax	 RIP: 4e1fbb	 Bytes: 3
  %loadMem_4e1fbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1fbb = call %struct.Memory* @routine_cmpl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1fbb)
  store %struct.Memory* %call_4e1fbb, %struct.Memory** %MEMORY

  ; Code: jne .L_4e2029	 RIP: 4e1fbe	 Bytes: 6
  %loadMem_4e1fbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1fbe = call %struct.Memory* @routine_jne_.L_4e2029(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1fbe, i8* %BRANCH_TAKEN, i64 107, i64 6, i64 6)
  store %struct.Memory* %call_4e1fbe, %struct.Memory** %MEMORY

  %loadBr_4e1fbe = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4e1fbe = icmp eq i8 %loadBr_4e1fbe, 1
  br i1 %cmpBr_4e1fbe, label %block_.L_4e2029, label %block_4e1fc4

block_4e1fc4:
  ; Code: cmpl $0x0, 0x99c074	 RIP: 4e1fc4	 Bytes: 8
  %loadMem_4e1fc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1fc4 = call %struct.Memory* @routine_cmpl__0x0__0x99c074(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1fc4)
  store %struct.Memory* %call_4e1fc4, %struct.Memory** %MEMORY

  ; Code: je .L_4e1ffc	 RIP: 4e1fcc	 Bytes: 6
  %loadMem_4e1fcc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1fcc = call %struct.Memory* @routine_je_.L_4e1ffc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1fcc, i8* %BRANCH_TAKEN, i64 48, i64 6, i64 6)
  store %struct.Memory* %call_4e1fcc, %struct.Memory** %MEMORY

  %loadBr_4e1fcc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4e1fcc = icmp eq i8 %loadBr_4e1fcc, 1
  br i1 %cmpBr_4e1fcc, label %block_.L_4e1ffc, label %block_4e1fd2

block_4e1fd2:
  ; Code: movq $0x59528d, %rsi	 RIP: 4e1fd2	 Bytes: 10
  %loadMem_4e1fd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1fd2 = call %struct.Memory* @routine_movq__0x59528d___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1fd2)
  store %struct.Memory* %call_4e1fd2, %struct.Memory** %MEMORY

  ; Code: movq 0x99c0a0, %rdi	 RIP: 4e1fdc	 Bytes: 8
  %loadMem_4e1fdc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1fdc = call %struct.Memory* @routine_movq_0x99c0a0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1fdc)
  store %struct.Memory* %call_4e1fdc, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 4e1fe4	 Bytes: 4
  %loadMem_4e1fe4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1fe4 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1fe4)
  store %struct.Memory* %call_4e1fe4, %struct.Memory** %MEMORY

  ; Code: movq (%rax), %rdx	 RIP: 4e1fe8	 Bytes: 3
  %loadMem_4e1fe8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1fe8 = call %struct.Memory* @routine_movq___rax____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1fe8)
  store %struct.Memory* %call_4e1fe8, %struct.Memory** %MEMORY

  ; Code: movsbl -0x59(%rbp), %ecx	 RIP: 4e1feb	 Bytes: 4
  %loadMem_4e1feb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1feb = call %struct.Memory* @routine_movsbl_MINUS0x59__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1feb)
  store %struct.Memory* %call_4e1feb, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 4e1fef	 Bytes: 2
  %loadMem_4e1fef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1fef = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1fef)
  store %struct.Memory* %call_4e1fef, %struct.Memory** %MEMORY

  ; Code: callq .fprintf_plt	 RIP: 4e1ff1	 Bytes: 5
  %loadMem1_4e1ff1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4e1ff1 = call %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4e1ff1, i64 -921377, i64 5, i64 5)
  store %struct.Memory* %call1_4e1ff1, %struct.Memory** %MEMORY

  %loadMem2_4e1ff1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4e1ff1 = load i64, i64* %3
  %call2_4e1ff1 = call %struct.Memory* @ext_fprintf(%struct.State* %0, i64  %loadPC_4e1ff1, %struct.Memory* %loadMem2_4e1ff1)
  store %struct.Memory* %call2_4e1ff1, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0xf8(%rbp)	 RIP: 4e1ff6	 Bytes: 6
  %loadMem_4e1ff6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1ff6 = call %struct.Memory* @routine_movl__eax__MINUS0xf8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1ff6)
  store %struct.Memory* %call_4e1ff6, %struct.Memory** %MEMORY

  ; Code: .L_4e1ffc:	 RIP: 4e1ffc	 Bytes: 0
  br label %block_.L_4e1ffc
block_.L_4e1ffc:

  ; Code: movsbl -0x59(%rbp), %eax	 RIP: 4e1ffc	 Bytes: 4
  %loadMem_4e1ffc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e1ffc = call %struct.Memory* @routine_movsbl_MINUS0x59__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e1ffc)
  store %struct.Memory* %call_4e1ffc, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x99c078	 RIP: 4e2000	 Bytes: 7
  %loadMem_4e2000 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e2000 = call %struct.Memory* @routine_movl__eax__0x99c078(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e2000)
  store %struct.Memory* %call_4e2000, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 4e2007	 Bytes: 4
  %loadMem_4e2007 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e2007 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e2007)
  store %struct.Memory* %call_4e2007, %struct.Memory** %MEMORY

  ; Code: movsbl (%rcx), %eax	 RIP: 4e200b	 Bytes: 3
  %loadMem_4e200b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e200b = call %struct.Memory* @routine_movsbl___rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e200b)
  store %struct.Memory* %call_4e200b, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3a, %eax	 RIP: 4e200e	 Bytes: 3
  %loadMem_4e200e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e200e = call %struct.Memory* @routine_cmpl__0x3a___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e200e)
  store %struct.Memory* %call_4e200e, %struct.Memory** %MEMORY

  ; Code: jne .L_4e2020	 RIP: 4e2011	 Bytes: 6
  %loadMem_4e2011 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e2011 = call %struct.Memory* @routine_jne_.L_4e2020(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e2011, i8* %BRANCH_TAKEN, i64 15, i64 6, i64 6)
  store %struct.Memory* %call_4e2011, %struct.Memory** %MEMORY

  %loadBr_4e2011 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4e2011 = icmp eq i8 %loadBr_4e2011, 1
  br i1 %cmpBr_4e2011, label %block_.L_4e2020, label %block_4e2017

block_4e2017:
  ; Code: movb $0x3a, -0x59(%rbp)	 RIP: 4e2017	 Bytes: 4
  %loadMem_4e2017 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e2017 = call %struct.Memory* @routine_movb__0x3a__MINUS0x59__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e2017)
  store %struct.Memory* %call_4e2017, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4e2024	 RIP: 4e201b	 Bytes: 5
  %loadMem_4e201b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e201b = call %struct.Memory* @routine_jmpq_.L_4e2024(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e201b, i64 9, i64 5)
  store %struct.Memory* %call_4e201b, %struct.Memory** %MEMORY

  br label %block_.L_4e2024

  ; Code: .L_4e2020:	 RIP: 4e2020	 Bytes: 0
block_.L_4e2020:

  ; Code: movb $0x3f, -0x59(%rbp)	 RIP: 4e2020	 Bytes: 4
  %loadMem_4e2020 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e2020 = call %struct.Memory* @routine_movb__0x3f__MINUS0x59__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e2020)
  store %struct.Memory* %call_4e2020, %struct.Memory** %MEMORY

  ; Code: .L_4e2024:	 RIP: 4e2024	 Bytes: 0
  br label %block_.L_4e2024
block_.L_4e2024:

  ; Code: jmpq .L_4e204f	 RIP: 4e2024	 Bytes: 5
  %loadMem_4e2024 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e2024 = call %struct.Memory* @routine_jmpq_.L_4e204f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e2024, i64 43, i64 5)
  store %struct.Memory* %call_4e2024, %struct.Memory** %MEMORY

  br label %block_.L_4e204f

  ; Code: .L_4e2029:	 RIP: 4e2029	 Bytes: 0
block_.L_4e2029:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 4e2029	 Bytes: 4
  %loadMem_4e2029 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e2029 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e2029)
  store %struct.Memory* %call_4e2029, %struct.Memory** %MEMORY

  ; Code: movl 0x99c070, %ecx	 RIP: 4e202d	 Bytes: 7
  %loadMem_4e202d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e202d = call %struct.Memory* @routine_movl_0x99c070___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e202d)
  store %struct.Memory* %call_4e202d, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 4e2034	 Bytes: 2
  %loadMem_4e2034 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e2034 = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e2034)
  store %struct.Memory* %call_4e2034, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 4e2036	 Bytes: 3
  %loadMem_4e2036 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e2036 = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e2036)
  store %struct.Memory* %call_4e2036, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0x99c070	 RIP: 4e2039	 Bytes: 7
  %loadMem_4e2039 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e2039 = call %struct.Memory* @routine_movl__edx__0x99c070(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e2039)
  store %struct.Memory* %call_4e2039, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 4e2040	 Bytes: 3
  %loadMem_4e2040 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e2040 = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e2040)
  store %struct.Memory* %call_4e2040, %struct.Memory** %MEMORY

  ; Code: movq (%rax,%rsi,8), %rax	 RIP: 4e2043	 Bytes: 4
  %loadMem_4e2043 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e2043 = call %struct.Memory* @routine_movq___rax__rsi_8____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e2043)
  store %struct.Memory* %call_4e2043, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0xb89e50	 RIP: 4e2047	 Bytes: 8
  %loadMem_4e2047 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e2047 = call %struct.Memory* @routine_movq__rax__0xb89e50(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e2047)
  store %struct.Memory* %call_4e2047, %struct.Memory** %MEMORY

  ; Code: .L_4e204f:	 RIP: 4e204f	 Bytes: 0
  br label %block_.L_4e204f
block_.L_4e204f:

  ; Code: jmpq .L_4e2054	 RIP: 4e204f	 Bytes: 5
  %loadMem_4e204f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e204f = call %struct.Memory* @routine_jmpq_.L_4e2054(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e204f, i64 5, i64 5)
  store %struct.Memory* %call_4e204f, %struct.Memory** %MEMORY

  br label %block_.L_4e2054

  ; Code: .L_4e2054:	 RIP: 4e2054	 Bytes: 0
block_.L_4e2054:

  ; Code: movq $0x0, 0xafc470	 RIP: 4e2054	 Bytes: 12
  %loadMem_4e2054 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e2054 = call %struct.Memory* @routine_movq__0x0__0xafc470(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e2054)
  store %struct.Memory* %call_4e2054, %struct.Memory** %MEMORY

  ; Code: .L_4e2060:	 RIP: 4e2060	 Bytes: 0
  br label %block_.L_4e2060
block_.L_4e2060:

  ; Code: jmpq .L_4e2065	 RIP: 4e2060	 Bytes: 5
  %loadMem_4e2060 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e2060 = call %struct.Memory* @routine_jmpq_.L_4e2065(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e2060, i64 5, i64 5)
  store %struct.Memory* %call_4e2060, %struct.Memory** %MEMORY

  br label %block_.L_4e2065

  ; Code: .L_4e2065:	 RIP: 4e2065	 Bytes: 0
block_.L_4e2065:

  ; Code: movsbl -0x59(%rbp), %eax	 RIP: 4e2065	 Bytes: 4
  %loadMem_4e2065 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e2065 = call %struct.Memory* @routine_movsbl_MINUS0x59__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e2065)
  store %struct.Memory* %call_4e2065, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4(%rbp)	 RIP: 4e2069	 Bytes: 3
  %loadMem_4e2069 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e2069 = call %struct.Memory* @routine_movl__eax__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e2069)
  store %struct.Memory* %call_4e2069, %struct.Memory** %MEMORY

  ; Code: .L_4e206c:	 RIP: 4e206c	 Bytes: 0
  br label %block_.L_4e206c
block_.L_4e206c:

  ; Code: movl -0x4(%rbp), %eax	 RIP: 4e206c	 Bytes: 3
  %loadMem_4e206c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e206c = call %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e206c)
  store %struct.Memory* %call_4e206c, %struct.Memory** %MEMORY

  ; Code: addq $0x100, %rsp	 RIP: 4e206f	 Bytes: 7
  %loadMem_4e206f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e206f = call %struct.Memory* @routine_addq__0x100___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e206f)
  store %struct.Memory* %call_4e206f, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 4e2076	 Bytes: 1
  %loadMem_4e2076 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e2076 = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e2076)
  store %struct.Memory* %call_4e2076, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 4e2077	 Bytes: 1
  %loadMem_4e2077 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4e2077 = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4e2077)
  store %struct.Memory* %call_4e2077, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_4e2077
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__edi__MINUS0x8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 8
  %14 = load i32, i32* %EDI
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

define %struct.Memory* @routine_movq__rsi__MINUS0x10__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RSI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__rdx__MINUS0x18__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__rcx__MINUS0x20__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__r8__MINUS0x28__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 40
  %14 = load i64, i64* %R8
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__r9d__MINUS0x2c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 44
  %14 = load i32, i32* %R9D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = inttoptr i64 %2 to i64*
  store i64 %3, i64* %5
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__0x0__0xb89e50(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 12
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0xb89e50_type* @G_0xb89e50 to i64), i64 0)
  ret %struct.Memory* %8
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

define %struct.Memory* @routine_cmpl__0x0__0x99c070(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x99c070_type* @G_0x99c070 to i64), i64 0)
  ret %struct.Memory* %8
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

define %struct.Memory* @routine_je_.L_4e0eca(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x0__0xb8af30(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0xb8af30_type* @G_0xb8af30 to i64), i64 0)
  ret %struct.Memory* %8
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

define %struct.Memory* @routine_jne_.L_4e0f02(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jne_.L_4e0ee3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movl__0x1__0x99c070(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x99c070_type* @G_0x99c070 to i64), i64 1)
  ret %struct.Memory* %8
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl_MINUS0x8__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i64*
  %6 = load i64, i64* %5
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq_MINUS0x10__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
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

define %struct.Memory* @routine_callq_._getopt_initialize(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__rax__MINUS0x18__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__0x1__0xb8af30(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0xb8af30_type* @G_0xb8af30 to i64), i64 1)
  ret %struct.Memory* %8
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory*, %struct.State* nocapture dereferenceable(3376), i64, i64) #0 {
  %5 = inttoptr i64 %2 to i64*
  %6 = load i64, i64* %5
  %7 = sub i64 %6, %3
  %8 = icmp ult i64 %6, %3
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
  %18 = xor i64 %6, %3
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
  %30 = lshr i64 %6, 63
  %31 = lshr i64 %3, 63
  %32 = xor i64 %30, %31
  %33 = xor i64 %27, %30
  %34 = add   i64 %33, %32
  %35 = icmp eq i64 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_cmpq__0x0__0xafc470(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 9
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0xafc470_type* @G_0xafc470 to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_je_.L_4e0f25(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq_0xafc470___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0xafc470_type* @G_0xafc470 to i64))
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIhEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i8*
  %6 = load i8, i8* %5
  %7 = sext i8 %6 to i64
  %8 = and i64 %7, 4294967295
  store i64 %8, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movsbl___rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIhEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12)
  ret %struct.Memory* %15
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


define %struct.Memory* @routine_jne_.L_4e1268(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_0xafc478___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0xafc478_type* @G_0xafc478 to i64))
  ret %struct.Memory* %11
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

define %struct.Memory* @routine_cmpl_0x99c070___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 ptrtoint( %G_0x99c070_type* @G_0x99c070 to i64))
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

define %struct.Memory* @routine_jle_.L_4e0f47(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_0x99c070___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x99c070_type* @G_0x99c070 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__eax__0xafc478(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0xafc478_type* @G_0xafc478 to i64), i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_0xafc47c___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0xafc47c_type* @G_0xafc47c to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_jle_.L_4e0f69(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl__eax__0xafc47c(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0xafc47c_type* @G_0xafc47c to i64), i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_cmpl__0x1__0xafc480(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0xafc480_type* @G_0xafc480 to i64), i64 1)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_jne_.L_4e107c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpl_0xafc478___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 ptrtoint( %G_0xafc478_type* @G_0xafc478 to i64))
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_4e0fad(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.exchange(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jmpq_.L_4e0fd4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_je_.L_4e0fcf(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jmpq_.L_4e0fd9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #2 {
  %5 = trunc i64 %3 to i8
  store i8 %5, i8* %2, align 1
  ret %struct.Memory* %0
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




define %struct.Memory* @routine_cmpl_MINUS0x8__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 8
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i8
  %6 = inttoptr i64 %2 to i8*
  store i8 %5, i8* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movb__cl__MINUS0x91__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 145
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

define %struct.Memory* @routine_jge_.L_4e1045(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #2 {
  %5 = trunc i64 %3 to i8
  store i8 %5, i8* %2, align 1
  ret %struct.Memory* %0
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = sext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movslq_0x99c070___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G_0x99c070_type* @G_0x99c070 to i64))
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


define %struct.Memory* @routine_movsbl___rcx____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIhEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_cmpl__0x2d___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 45)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movb__al__MINUS0x92__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 146
  %15 = load i8, i8* %AL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 6
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_jne_.L_4e1039(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movslq_0x99c070___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G_0x99c070_type* @G_0x99c070 to i64))
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


define %struct.Memory* @routine_movsbl_0x1__rax____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 1
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIhEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L4SETZI3RnWIhEEEP6MemoryS4_R5StateT_(%struct.Memory* readnone returned, %struct.State* nocapture readonly dereferenceable(3376), i8* nocapture) #2 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %2, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_sete__sil(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %SIL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4SETZI3RnWIhEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i8* %SIL)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movb__sil__MINUS0x92__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %SIL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 146
  %15 = load i8, i8* %SIL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 7
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

define %struct.Memory* @routine_movb_MINUS0x92__rbp____al(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 146
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %AL, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movb__al__MINUS0x91__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 145
  %15 = load i8, i8* %AL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 6
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_movb_MINUS0x91__rbp____al(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 145
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


define %struct.Memory* @routine_jne_.L_4e1058(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_4e106e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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


define %struct.Memory* @routine_movl__eax__0x99c070(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x99c070_type* @G_0x99c070 to i64), i64 %10)
  ret %struct.Memory* %13
}












define %struct.Memory* @routine_je_.L_4e1133(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movq___rax__rcx_8____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %17 = mul i64 %16, 8
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 4
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %18)
  ret %struct.Memory* %21
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0x595178___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G__0x595178_type* @G__0x595178 to i64))
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
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


define %struct.Memory* @routine_callq_.strcmp_plt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jne_.L_4e1133(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_je_.L_4e10f8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_jmpq_.L_4e111f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_jne_.L_4e111a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_jne_.L_4e1171(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_je_.L_4e1165(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movl__0xffffffff__MINUS0x4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 -1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jmpq_.L_4e206c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_movsbl___rax____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIhEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_cmpl__0x2d___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 45)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_4e11aa(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_jne_.L_4e11f6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x0__0xafc480(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0xafc480_type* @G_0xafc480 to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_jne_.L_4e11c4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_movl_0x99c070___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G_0x99c070_type* @G_0x99c070 to i64))
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


define %struct.Memory* @routine_addl__0x1___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 1)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl__edx__0x99c070(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x99c070_type* @G_0x99c070 to i64), i64 %10)
  ret %struct.Memory* %13
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = shl i64 %3, 32
  %6 = ashr exact i64 %5, 32
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
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


define %struct.Memory* @routine_movq___rax__rsi_8____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = mul i64 %13, 8
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movq__rax__0xb89e50(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0xb89e50_type* @G_0xb89e50 to i64), i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl__0x1__MINUS0x4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}








define %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movslq_0x99c070___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G_0x99c070_type* @G_0x99c070 to i64))
  ret %struct.Memory* %11
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

define %struct.Memory* @routine_addq__0x1___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 1)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_cmpq__0x0__MINUS0x20__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 32
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 5
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movq__rdx__MINUS0xa0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 160
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movb__cl__MINUS0xa1__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 161
  %15 = load i8, i8* %CL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 6
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_je_.L_4e1248(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_movb__sil__MINUS0xa1__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %SIL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 161
  %15 = load i8, i8* %SIL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 7
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_movb_MINUS0xa1__rbp____al(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 161
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %AL, i64 %14)
  ret %struct.Memory* %17
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

define %struct.Memory* @routine_movzbl__al___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %RCX = bitcast %union.anon* %12 to i64*
  %13 = load i8, i8* %AL
  %14 = zext i8 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_movq_MINUS0xa0__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 160
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movq__rsi__0xafc470(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 8
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0xafc470_type* @G_0xafc470 to i64), i64 %9)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_je_.L_4e18ad(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_je_.L_4e12de(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x0__MINUS0x2c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 44
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}










define %struct.Memory* @routine_movsbl_0x2__rax____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 2
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIhEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_jne_.L_4e12de(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq_MINUS0x18__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_movsbl_0x1__rax____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 1
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIhEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.strchr_plt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jne_.L_4e18ad(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x0__MINUS0x48__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 72
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x0__MINUS0x4c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 76
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x0__MINUS0x50__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 80
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0xffffffff__MINUS0x54__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 -1)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movq__rax__MINUS0x38__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}






define %struct.Memory* @routine_movq_MINUS0x38__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 56
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movsbl___rdx____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIhEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12)
  ret %struct.Memory* %15
}




define %struct.Memory* @routine_movb__cl__MINUS0xa2__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 162
  %15 = load i8, i8* %CL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 6
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_je_.L_4e1334(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_cmpl__0x3d___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 61)
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

define %struct.Memory* @routine_setne__dl(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %DL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5SETNZI3RnWIhEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i8* %DL)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movb__dl__MINUS0xa2__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %DL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 162
  %15 = load i8, i8* %DL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 6
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_movb_MINUS0xa2__rbp____al(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 162
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %AL, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_jne_.L_4e1347(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_4e135d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_4e134c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_addq__0x1___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 1)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_jmpq_.L_4e1307(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__rax__MINUS0x40__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__0x0__MINUS0x58__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movq_MINUS0x40__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_cmpq__0x0____rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %9, i64 0)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_je_.L_4e1444(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movq___rax____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_movq_0xafc470___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G_0xafc470_type* @G_0xafc470 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movq_0xafc470___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G_0xafc470_type* @G_0xafc470 to i64))
  ret %struct.Memory* %11
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

define %struct.Memory* @routine_subq__rcx___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_callq_.strncmp_plt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jne_.L_4e1425(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_cmpl__edx___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %ESI = bitcast %union.anon* %11 to i32*
  %12 = load i32, i32* %ESI
  %13 = zext i32 %12 to i64
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 2
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjES2_EEP6MemoryS4_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jne_.L_4e13f6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x1__MINUS0x4c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 76
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jmpq_.L_4e1444(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_cmpq__0x0__MINUS0x48__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 72
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 5
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_4e1414(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_jmpq_.L_4e141b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movl__0x1__MINUS0x50__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 80
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jmpq_.L_4e1420(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_4e1425(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_4e142a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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


define %struct.Memory* @routine_movl__ecx__MINUS0x58__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 88
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_4e136c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_cmpl__0x0__MINUS0x50__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 80
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_4e14e1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x0__MINUS0x4c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 76
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_4e14e1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x0__0x99c074(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x99c074_type* @G_0x99c074 to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_je_.L_4e149c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__0x59517b___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x59517b_type* @G__0x59517b to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq_0x99c0a0___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G_0x99c0a0_type* @G_0x99c0a0 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movq___rax____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12)
  ret %struct.Memory* %15
}






define %struct.Memory* @routine_movq___rax__rcx_8____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %15)
  ret %struct.Memory* %18
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


define %struct.Memory* @routine_movl__eax__MINUS0xac__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 172
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movq_0xafc470___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G_0xafc470_type* @G_0xafc470 to i64))
  ret %struct.Memory* %11
}



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2MnImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory*, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6
  %8 = add i64 %7, %3
  store i64 %8, i64* %2, align 8
  %9 = icmp ult i64 %8, %3
  %10 = icmp ult i64 %8, %7
  %11 = or i1 %9, %10
  %12 = zext i1 %11 to i8
  %13 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 %12, i8* %13, align 1
  %14 = trunc i64 %8 to i32
  %15 = and i32 %14, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15) #22
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i64 %7, %3
  %22 = xor i64 %21, %8
  %23 = lshr i64 %22, 4
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i64 %8, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i64 %8, 63
  %31 = trunc i64 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i64 %3, 63
  %34 = lshr i64 %7, 63
  %35 = xor i64 %30, %33
  %36 = xor i64 %30, %34
  %37 = add   i64 %35, %36
  %38 = icmp eq i64 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_addq_0xafc470___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2MnImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 ptrtoint( %G_0xafc470_type* @G_0xafc470 to i64))
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movq__rax__0xafc470(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0xafc470_type* @G_0xafc470 to i64), i64 %9)
  ret %struct.Memory* %12
}






define %struct.Memory* @routine_movl__ecx__0x99c070(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x99c070_type* @G_0x99c070 to i64), i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x0__0x99c078(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x99c078_type* @G_0x99c078 to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movl__0x3f__MINUS0x4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 63)
  ret %struct.Memory* %13
}






define %struct.Memory* @routine_je_.L_4e1785(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_movq_MINUS0x38__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory*, %struct.State* nocapture dereferenceable(3376), i64, i64) #0 {
  %5 = inttoptr i64 %2 to i8*
  %6 = load i8, i8* %5
  %7 = trunc i64 %3 to i8
  %8 = sub i8 %6, %7
  %9 = icmp ult i8 %6, %7
  %10 = zext i1 %9 to i8
  %11 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 %10, i8* %11, align 1
  %12 = zext i8 %8 to i32
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12) #22
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = xor i8 %6, %7
  %19 = xor i8 %18, %8
  %20 = lshr i8 %19, 4
  %21 = and i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 %21, i8* %22, align 1
  %23 = icmp eq i8 %8, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i8 %8, 7
  %27 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = lshr i8 %6, 7
  %29 = lshr i8 %7, 7
  %30 = xor i8 %28, %29
  %31 = xor i8 %26, %28
  %32 = add   i8 %31, %30
  %33 = icmp eq i8 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_cmpb__0x0____rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %9, i64 0)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_je_.L_4e161b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_je_.L_4e1533(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jmpq_.L_4e1616(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_je_.L_4e15df(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movsbl_0x1__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 1
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIhEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_cmpl__0x2d___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 45)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_4e1595(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x595199___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x595199_type* @G__0x595199 to i64))
  ret %struct.Memory* %11
}










define %struct.Memory* @routine_movq___rax____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12)
  ret %struct.Memory* %15
}






define %struct.Memory* @routine_movl__eax__MINUS0xb0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 176
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_4e15da(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movq__0x5951c6___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x5951c6_type* @G__0x5951c6 to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_movq___rax__r8_8____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = mul i64 %13, 8
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_movq___rax____r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %12)
  ret %struct.Memory* %15
}






define %struct.Memory* @routine_movl__eax__MINUS0xb4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 180
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_4e15df(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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


define %struct.Memory* @routine_movl__ecx__0x99c078(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x99c078_type* @G_0x99c078 to i64), i64 %10)
  ret %struct.Memory* %13
}






define %struct.Memory* @routine_jmpq_.L_4e1719(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_cmpl__0x1__0x8__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_4e1714(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jge_.L_4e1664(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


















define %struct.Memory* @routine_jmpq_.L_4e170f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_je_.L_4e16ad(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x5951f3___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x5951f3_type* @G__0x5951f3 to i64))
  ret %struct.Memory* %11
}
















define %struct.Memory* @routine_movq___rax__r8_8____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 17
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %R8 = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %R8
  %17 = mul i64 %16, 8
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 4
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %18)
  ret %struct.Memory* %21
}






define %struct.Memory* @routine_movl__eax__MINUS0xb8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 184
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__0x3f___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 63)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__0x3a___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 58)
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movl__eax__MINUS0xbc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 188
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__ecx__MINUS0xc0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 192
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}














define %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_cmpl__0x3a___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 58)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_MINUS0xbc__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 188
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0xc0__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 192
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5CMOVZI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readonly dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  %6 = load i8, i8* %5, align 1
  %7 = icmp ne i8 %6, 0
  %8 = load i64, i64* %2, align 8
  %9 = select i1 %7, i64 %3, i64 %8
  %10 = and i64 %9, 4294967295
  store i64 %10, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_cmovel__edx___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5CMOVZI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__ecx__MINUS0x4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_jmpq_.L_4e1714(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}












define %struct.Memory* @routine_cmpq__0x0__MINUS0x28__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 5
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_4e174a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpq__0x0__0x10__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 16
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 5
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_4e1776(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_movq_0x10__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 16
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
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














define %struct.Memory* @routine_je_.L_4e17ca(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


















define %struct.Memory* @routine_movsbl___rax____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIhEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12)
  ret %struct.Memory* %15
}






define %struct.Memory* @routine_jne_.L_4e18a8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_je_.L_4e186e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_jne_.L_4e1828(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x595219___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x595219_type* @G__0x595219 to i64))
  ret %struct.Memory* %11
}














define %struct.Memory* @routine_movl__eax__MINUS0xc4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 196
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_4e1869(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movq__0x595239___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x595239_type* @G__0x595239 to i64))
  ret %struct.Memory* %11
}
















define %struct.Memory* @routine_movq_0xafc470___r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 ptrtoint( %G_0xafc470_type* @G_0xafc470 to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movl__eax__MINUS0xc8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 200
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_4e186e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movq__0x58898d___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x58898d_type* @G__0x58898d to i64))
  ret %struct.Memory* %11
}
















define %struct.Memory* @routine_jmpq_.L_4e18ad(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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


define %struct.Memory* @routine_addq__0x1___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 1)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movq__rcx__0xafc470(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0xafc470_type* @G_0xafc470 to i64), i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movb___rax____dl(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %DL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RAX = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RAX
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %DL, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movb__dl__MINUS0x59__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %DL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 89
  %15 = load i8, i8* %DL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 3
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}




define %struct.Memory* @routine_movsbl_MINUS0x59__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 89
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIhEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_jne_.L_4e18ff(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_cmpq__0x0__MINUS0x68__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 5
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_4e1917(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movsbl_MINUS0x59__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 89
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIhEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_cmpl__0x3a___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 58)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_4e19a9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_je_.L_4e1992(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpq__0x0__0xafc488(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 9
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0xafc488_type* @G_0xafc488 to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_je_.L_4e1963(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x595259___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x595259_type* @G__0x595259 to i64))
  ret %struct.Memory* %11
}








define %struct.Memory* @routine_movsbl_MINUS0x59__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 89
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIhEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movl__eax__MINUS0xcc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 204
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_4e198d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movq__0x595273___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x595273_type* @G__0x595273 to i64))
  ret %struct.Memory* %11
}














define %struct.Memory* @routine_movl__eax__MINUS0xd0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 208
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_4e1992(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_movl__eax__0x99c078(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x99c078_type* @G_0x99c078 to i64), i64 %10)
  ret %struct.Memory* %13
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




define %struct.Memory* @routine_cmpl__0x57___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 87)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_4e1f01(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_cmpl__0x3b___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 59)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movq__0x0__MINUS0x80__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 128
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x0__MINUS0x84__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 132
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x0__MINUS0x88__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 136
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x0__MINUS0x8c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 140
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}








define %struct.Memory* @routine_je_.L_4e1a2a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_jmpq_.L_4e1ad1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_jne_.L_4e1aa6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_je_.L_4e1a72(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x59528d___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x59528d_type* @G__0x59528d to i64))
  ret %struct.Memory* %11
}














define %struct.Memory* @routine_movl__eax__MINUS0xd4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 212
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movsbl___rcx____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIhEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12)
  ret %struct.Memory* %15
}




define %struct.Memory* @routine_jne_.L_4e1a96(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i8
  %6 = inttoptr i64 %2 to i8*
  store i8 %5, i8* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movb__0x3a__MINUS0x59__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 89
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 58)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jmpq_.L_4e1a9a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movb__0x3f__MINUS0x59__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 89
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 63)
  ret %struct.Memory* %13
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






















define %struct.Memory* @routine_movq_0xb89e50___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0xb89e50_type* @G_0xb89e50 to i64))
  ret %struct.Memory* %11
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








define %struct.Memory* @routine_movq_MINUS0x70__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 112
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movb__cl__MINUS0xd5__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 213
  %15 = load i8, i8* %CL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 6
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_je_.L_4e1b12(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_movb__dl__MINUS0xd5__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %DL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 213
  %15 = load i8, i8* %DL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 6
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_movb_MINUS0xd5__rbp____al(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 213
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %AL, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_jne_.L_4e1b25(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_4e1b3b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_4e1b2a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_4e1ae5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_movq__rax__MINUS0x78__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__0x0__MINUS0x90__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 144
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movq_MINUS0x78__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_je_.L_4e1c42(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




















define %struct.Memory* @routine_jne_.L_4e1c1d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_movl__edx___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EDX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
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


define %struct.Memory* @routine_movq_MINUS0x78__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq___rcx____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %12)
  ret %struct.Memory* %15
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




define %struct.Memory* @routine_movq_MINUS0xe0__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_jne_.L_4e1be5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movq__rax__MINUS0x80__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 128
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl_MINUS0x90__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__ecx__MINUS0x8c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 140
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__0x1__MINUS0x84__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 132
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jmpq_.L_4e1c42(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_cmpq__0x0__MINUS0x80__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 128
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 5
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_4e1c09(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_jmpq_.L_4e1c13(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movl__0x1__MINUS0x88__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 136
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jmpq_.L_4e1c18(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_4e1c1d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_4e1c22(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}












define %struct.Memory* @routine_movl__ecx__MINUS0x90__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 144
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_4e1b4d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_cmpl__0x0__MINUS0x88__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 136
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_4e1cda(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x0__MINUS0x84__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 132
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_4e1cda(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_je_.L_4e1ca0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x5952b4___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x5952b4_type* @G__0x5952b4 to i64))
  ret %struct.Memory* %11
}


















define %struct.Memory* @routine_movl__eax__MINUS0xe4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 228
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






















define %struct.Memory* @routine_je_.L_4e1ee9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_MINUS0x8c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 140
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__eax__MINUS0x90__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 144
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movq_MINUS0x70__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_je_.L_4e1d8a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq_MINUS0x80__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 128
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_je_.L_4e1d21(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jmpq_.L_4e1d85(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_je_.L_4e1d5c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x5952d5___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x5952d5_type* @G__0x5952d5 to i64))
  ret %struct.Memory* %11
}
















define %struct.Memory* @routine_movl__eax__MINUS0xe8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 232
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}














define %struct.Memory* @routine_jmpq_.L_4e1e7a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_jne_.L_4e1e75(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jge_.L_4e1dd3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


















define %struct.Memory* @routine_jmpq_.L_4e1e70(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_je_.L_4e1e1c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
























define %struct.Memory* @routine_movl__eax__MINUS0xec__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 236
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}








define %struct.Memory* @routine_movl__eax__MINUS0xf0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 240
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__ecx__MINUS0xf4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 244
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}














define %struct.Memory* @routine_movl_MINUS0xf0__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0xf4__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 244
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_jmpq_.L_4e1e75(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}














define %struct.Memory* @routine_je_.L_4e1eae(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_MINUS0x90__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 144
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_je_.L_4e1eda(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
























define %struct.Memory* @routine_movq__0x0__0xafc470(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 12
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0xafc470_type* @G_0xafc470 to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movl__0x57__MINUS0x4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 87)
  ret %struct.Memory* %13
}










define %struct.Memory* @routine_jne_.L_4e2065(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movsbl_0x2__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 2
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIhEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_jne_.L_4e1f7a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_je_.L_4e1f5d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_jmpq_.L_4e1f69(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_jmpq_.L_4e2060(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_je_.L_4e1fb4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_jmpq_.L_4e2054(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_jne_.L_4e2029(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_je_.L_4e1ffc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
















define %struct.Memory* @routine_movl__eax__MINUS0xf8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 248
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}












define %struct.Memory* @routine_jne_.L_4e2020(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jmpq_.L_4e2024(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_jmpq_.L_4e204f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






















define %struct.Memory* @routine_jmpq_.L_4e2065(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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

