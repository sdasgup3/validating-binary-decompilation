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
@seg_400558__eh_frame = internal constant %seg_400558__eh_frame_type <{ [208 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\07\10\10\00\00\00\1C\00\00\00(\FE\FF\FF+\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\10\00\00\00\1C\00\00\00,\FE\FF\FF\02\00\00\00\00\00\00\00\14\00\00\000\00\00\00\D0\FE\FF\FF\0C\00\00\00\00\00\00\00\00\00\00\00D\00\00\00H\00\00\00\D0\FE\FF\FFe\00\00\00\00B\0E\10\8F\02B\0E\18\8E\03E\0E \8D\04B\0E(\8C\05H\0E0\86\06H\0E8\83\07M\0E@r\0E8A\0E0A\0E(B\0E B\0E\18B\0E\10B\0E\08\00\10\00\00\00\90\00\00\00\F8\FE\FF\FF\02\00\00\00\00\00\00\00\00\00\00\00" }>

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

declare %struct.Memory* @sub_4141a0.Configure(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4796b0.Init_QMatrix(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_47b780.Init_QOffsetMatrix(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4753c0.AllocNalPayloadBuffer(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_433390.init_poc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_476540.GenerateParameterSets(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_433520.init_img(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_434620.malloc_picture(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_481de0.init_rdopt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_41e540.init_gop_structure(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_41e620.interpret_gop_structure(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_41dcf0.create_pyramid(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_44b510.init_dpb(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_475ff0.init_out_buffer(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_434670.init_global_buffers(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_417770.create_context_memory(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_45df30.Init_Motion_Search_Module(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_434c40.information_init(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_47c370.rc_init_seq(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_41f8e0.DefineThreshold(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4176d0.PatchInputNoFrames(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_424830.start_sequence(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_434e40.SetImgType(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_47c890.rc_init_GOP(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_427d20.encode_one_frame(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_434fc0.report_frame_statistic(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_41ed40.encode_enhancement_layer(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_435f70.process_2nd_IGOP(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4249c0.terminate_sequence(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_453f60.flush_dpb(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4010b0.close_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_401020.fclose_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_45e5b0.Clear_Motion_Search_Module(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_431bc0.RandomIntraUninit(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_425880.FmoUninit(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_41e5f0.clear_gop_structure(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_481d20.clear_rdopt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_431fd0.calc_buffer(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_436060.report(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_437560.free_picture(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_44b7b0.free_dpb(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4553f0.free_colocated(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_476010.uninit_out_buffer(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_437590.free_global_buffers(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_437a30.free_img(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_417ae0.free_context_memory(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_475430.FreeNalPayloadBuffer(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4775b0.FreeParameterSets(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Data Access Globals
%G_0x6cb8f8_type = type <{ [8 x i8] }>
@G_0x6cb8f8= global %G_0x6cb8f8_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x6cb900_type = type <{ [8 x i8] }>
@G_0x6cb900= global %G_0x6cb900_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x6cb908_type = type <{ [8 x i8] }>
@G_0x6cb908= global %G_0x6cb908_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x6cc018_type = type <{ [4 x i8] }>
@G_0x6cc018= global %G_0x6cc018_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x6cc020_type = type <{ [4 x i8] }>
@G_0x6cc020= global %G_0x6cc020_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x6cc330_type = type <{ [8 x i8] }>
@G_0x6cc330= global %G_0x6cc330_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x6cee50_type = type <{ [4 x i8] }>
@G_0x6cee50= global %G_0x6cee50_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x6d11c8_type = type <{ [8 x i8] }>
@G_0x6d11c8= global %G_0x6d11c8_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x6d4758_type = type <{ [8 x i8] }>
@G_0x6d4758= global %G_0x6d4758_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x6e51e8_type = type <{ [4 x i8] }>
@G_0x6e51e8= global %G_0x6e51e8_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x6f6e10_type = type <{ [4 x i8] }>
@G_0x6f6e10= global %G_0x6f6e10_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x6f80a8_type = type <{ [8 x i8] }>
@G_0x6f80a8= global %G_0x6f80a8_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x6f8edc_type = type <{ [4 x i8] }>
@G_0x6f8edc= global %G_0x6f8edc_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x6f96a0_type = type <{ [4 x i8] }>
@G_0x6f96a0= global %G_0x6f96a0_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x6f9710_type = type <{ [4 x i8] }>
@G_0x6f9710= global %G_0x6f9710_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x70d194_type = type <{ [4 x i8] }>
@G_0x70d194= global %G_0x70d194_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x70d198_type = type <{ [4 x i8] }>
@G_0x70d198= global %G_0x70d198_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x70fcf0_type = type <{ [4 x i8] }>
@G_0x70fcf0= global %G_0x70fcf0_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x710a50_type = type <{ [4 x i8] }>
@G_0x710a50= global %G_0x710a50_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x711c40_type = type <{ [8 x i8] }>
@G_0x711c40= global %G_0x711c40_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x721df0_type = type <{ [8 x i8] }>
@G_0x721df0= global %G_0x721df0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x722c98_type = type <{ [4 x i8] }>
@G_0x722c98= global %G_0x722c98_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x722ca8_type = type <{ [4 x i8] }>
@G_0x722ca8= global %G_0x722ca8_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x723e20_type = type <{ [8 x i8] }>
@G_0x723e20= global %G_0x723e20_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x7242a4_type = type <{ [4 x i8] }>
@G_0x7242a4= global %G_0x7242a4_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x725260_type = type <{ [4 x i8] }>
@G_0x725260= global %G_0x725260_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x7ea76__rip__type = type <{ [8 x i8] }>
@G_0x7ea76__rip_= global %G_0x7ea76__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G_0x7eabe__rip__type = type <{ [8 x i8] }>
@G_0x7eabe__rip_= global %G_0x7eabe__rip__type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>


define %struct.Memory* @main(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .main:	 RIP: 432710	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 432710	 Bytes: 1
  %loadMem_432710 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432710 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432710)
  store %struct.Memory* %call_432710, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 432711	 Bytes: 3
  %loadMem_432711 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432711 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432711)
  store %struct.Memory* %call_432711, %struct.Memory** %MEMORY

  ; Code: subq $0x90, %rsp	 RIP: 432714	 Bytes: 7
  %loadMem_432714 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432714 = call %struct.Memory* @routine_subq__0x90___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432714)
  store %struct.Memory* %call_432714, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x4(%rbp)	 RIP: 43271b	 Bytes: 7
  %loadMem_43271b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43271b = call %struct.Memory* @routine_movl__0x0__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43271b)
  store %struct.Memory* %call_43271b, %struct.Memory** %MEMORY

  ; Code: movl %edi, -0x8(%rbp)	 RIP: 432722	 Bytes: 3
  %loadMem_432722 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432722 = call %struct.Memory* @routine_movl__edi__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432722)
  store %struct.Memory* %call_432722, %struct.Memory** %MEMORY

  ; Code: movq %rsi, -0x10(%rbp)	 RIP: 432725	 Bytes: 4
  %loadMem_432725 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432725 = call %struct.Memory* @routine_movq__rsi__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432725)
  store %struct.Memory* %call_432725, %struct.Memory** %MEMORY

  ; Code: movl $0xffffffff, 0x6f6e10	 RIP: 432729	 Bytes: 11
  %loadMem_432729 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432729 = call %struct.Memory* @routine_movl__0xffffffff__0x6f6e10(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432729)
  store %struct.Memory* %call_432729, %struct.Memory** %MEMORY

  ; Code: movl $0xffffffff, 0x7242a4	 RIP: 432734	 Bytes: 11
  %loadMem_432734 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432734 = call %struct.Memory* @routine_movl__0xffffffff__0x7242a4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432734)
  store %struct.Memory* %call_432734, %struct.Memory** %MEMORY

  ; Code: movq $0x0, 0x723e20	 RIP: 43273f	 Bytes: 12
  %loadMem_43273f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43273f = call %struct.Memory* @routine_movq__0x0__0x723e20(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43273f)
  store %struct.Memory* %call_43273f, %struct.Memory** %MEMORY

  ; Code: movq $0x0, 0x70d198	 RIP: 43274b	 Bytes: 12
  %loadMem_43274b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43274b = call %struct.Memory* @routine_movq__0x0__0x70d198(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43274b)
  store %struct.Memory* %call_43274b, %struct.Memory** %MEMORY

  ; Code: movq $0x0, 0x6e51e8	 RIP: 432757	 Bytes: 12
  %loadMem_432757 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432757 = call %struct.Memory* @routine_movq__0x0__0x6e51e8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432757)
  store %struct.Memory* %call_432757, %struct.Memory** %MEMORY

  ; Code: movl $0x1, 0x70d194	 RIP: 432763	 Bytes: 11
  %loadMem_432763 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432763 = call %struct.Memory* @routine_movl__0x1__0x70d194(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432763)
  store %struct.Memory* %call_432763, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %edi	 RIP: 43276e	 Bytes: 3
  %loadMem_43276e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43276e = call %struct.Memory* @routine_movl_MINUS0x8__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43276e)
  store %struct.Memory* %call_43276e, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rsi	 RIP: 432771	 Bytes: 4
  %loadMem_432771 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432771 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432771)
  store %struct.Memory* %call_432771, %struct.Memory** %MEMORY

  ; Code: callq .Configure	 RIP: 432775	 Bytes: 5
  %loadMem1_432775 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_432775 = call %struct.Memory* @routine_callq_.Configure(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_432775, i64 -124373, i64 5, i64 5)
  store %struct.Memory* %call1_432775, %struct.Memory** %MEMORY

  %loadMem2_432775 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_432775 = load i64, i64* %3
  %call2_432775 = call %struct.Memory* @sub_4141a0.Configure(%struct.State* %0, i64  %loadPC_432775, %struct.Memory* %loadMem2_432775)
  store %struct.Memory* %call2_432775, %struct.Memory** %MEMORY

  ; Code: callq .Init_QMatrix	 RIP: 43277a	 Bytes: 5
  %loadMem1_43277a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43277a = call %struct.Memory* @routine_callq_.Init_QMatrix(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43277a, i64 290614, i64 5, i64 5)
  store %struct.Memory* %call1_43277a, %struct.Memory** %MEMORY

  %loadMem2_43277a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43277a = load i64, i64* %3
  %call2_43277a = call %struct.Memory* @sub_4796b0.Init_QMatrix(%struct.State* %0, i64  %loadPC_43277a, %struct.Memory* %loadMem2_43277a)
  store %struct.Memory* %call2_43277a, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 43277f	 Bytes: 2
  %loadMem_43277f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43277f = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43277f)
  store %struct.Memory* %call_43277f, %struct.Memory** %MEMORY

  ; Code: callq .Init_QOffsetMatrix	 RIP: 432781	 Bytes: 5
  %loadMem1_432781 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_432781 = call %struct.Memory* @routine_callq_.Init_QOffsetMatrix(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_432781, i64 299007, i64 5, i64 5)
  store %struct.Memory* %call1_432781, %struct.Memory** %MEMORY

  %loadMem2_432781 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_432781 = load i64, i64* %3
  %call2_432781 = call %struct.Memory* @sub_47b780.Init_QOffsetMatrix(%struct.State* %0, i64  %loadPC_432781, %struct.Memory* %loadMem2_432781)
  store %struct.Memory* %call2_432781, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 432786	 Bytes: 2
  %loadMem_432786 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432786 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432786)
  store %struct.Memory* %call_432786, %struct.Memory** %MEMORY

  ; Code: callq .AllocNalPayloadBuffer	 RIP: 432788	 Bytes: 5
  %loadMem1_432788 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_432788 = call %struct.Memory* @routine_callq_.AllocNalPayloadBuffer(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_432788, i64 273464, i64 5, i64 5)
  store %struct.Memory* %call1_432788, %struct.Memory** %MEMORY

  %loadMem2_432788 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_432788 = load i64, i64* %3
  %call2_432788 = call %struct.Memory* @sub_4753c0.AllocNalPayloadBuffer(%struct.State* %0, i64  %loadPC_432788, %struct.Memory* %loadMem2_432788)
  store %struct.Memory* %call2_432788, %struct.Memory** %MEMORY

  ; Code: callq .init_poc	 RIP: 43278d	 Bytes: 5
  %loadMem1_43278d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43278d = call %struct.Memory* @routine_callq_.init_poc(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43278d, i64 3075, i64 5, i64 5)
  store %struct.Memory* %call1_43278d, %struct.Memory** %MEMORY

  %loadMem2_43278d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43278d = load i64, i64* %3
  %call2_43278d = call %struct.Memory* @sub_433390.init_poc(%struct.State* %0, i64  %loadPC_43278d, %struct.Memory* %loadMem2_43278d)
  store %struct.Memory* %call2_43278d, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 432792	 Bytes: 2
  %loadMem_432792 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432792 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432792)
  store %struct.Memory* %call_432792, %struct.Memory** %MEMORY

  ; Code: callq .GenerateParameterSets	 RIP: 432794	 Bytes: 5
  %loadMem1_432794 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_432794 = call %struct.Memory* @routine_callq_.GenerateParameterSets(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_432794, i64 277932, i64 5, i64 5)
  store %struct.Memory* %call1_432794, %struct.Memory** %MEMORY

  %loadMem2_432794 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_432794 = load i64, i64* %3
  %call2_432794 = call %struct.Memory* @sub_476540.GenerateParameterSets(%struct.State* %0, i64  %loadPC_432794, %struct.Memory* %loadMem2_432794)
  store %struct.Memory* %call2_432794, %struct.Memory** %MEMORY

  ; Code: callq .init_img	 RIP: 432799	 Bytes: 5
  %loadMem1_432799 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_432799 = call %struct.Memory* @routine_callq_.init_img(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_432799, i64 3463, i64 5, i64 5)
  store %struct.Memory* %call1_432799, %struct.Memory** %MEMORY

  %loadMem2_432799 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_432799 = load i64, i64* %3
  %call2_432799 = call %struct.Memory* @sub_433520.init_img(%struct.State* %0, i64  %loadPC_432799, %struct.Memory* %loadMem2_432799)
  store %struct.Memory* %call2_432799, %struct.Memory** %MEMORY

  ; Code: callq .malloc_picture	 RIP: 43279e	 Bytes: 5
  %loadMem1_43279e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43279e = call %struct.Memory* @routine_callq_.malloc_picture(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43279e, i64 7810, i64 5, i64 5)
  store %struct.Memory* %call1_43279e, %struct.Memory** %MEMORY

  %loadMem2_43279e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43279e = load i64, i64* %3
  %call2_43279e = call %struct.Memory* @sub_434620.malloc_picture(%struct.State* %0, i64  %loadPC_43279e, %struct.Memory* %loadMem2_43279e)
  store %struct.Memory* %call2_43279e, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x711c40	 RIP: 4327a3	 Bytes: 8
  %loadMem_4327a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4327a3 = call %struct.Memory* @routine_movq__rax__0x711c40(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4327a3)
  store %struct.Memory* %call_4327a3, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rax	 RIP: 4327ab	 Bytes: 8
  %loadMem_4327ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4327ab = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4327ab)
  store %struct.Memory* %call_4327ab, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x510(%rax)	 RIP: 4327b3	 Bytes: 7
  %loadMem_4327b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4327b3 = call %struct.Memory* @routine_cmpl__0x0__0x510__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4327b3)
  store %struct.Memory* %call_4327b3, %struct.Memory** %MEMORY

  ; Code: je .L_4327da	 RIP: 4327ba	 Bytes: 6
  %loadMem_4327ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4327ba = call %struct.Memory* @routine_je_.L_4327da(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4327ba, i8* %BRANCH_TAKEN, i64 32, i64 6, i64 6)
  store %struct.Memory* %call_4327ba, %struct.Memory** %MEMORY

  %loadBr_4327ba = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4327ba = icmp eq i8 %loadBr_4327ba, 1
  br i1 %cmpBr_4327ba, label %block_.L_4327da, label %block_4327c0

block_4327c0:
  ; Code: callq .malloc_picture	 RIP: 4327c0	 Bytes: 5
  %loadMem1_4327c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4327c0 = call %struct.Memory* @routine_callq_.malloc_picture(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4327c0, i64 7776, i64 5, i64 5)
  store %struct.Memory* %call1_4327c0, %struct.Memory** %MEMORY

  %loadMem2_4327c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4327c0 = load i64, i64* %3
  %call2_4327c0 = call %struct.Memory* @sub_434620.malloc_picture(%struct.State* %0, i64  %loadPC_4327c0, %struct.Memory* %loadMem2_4327c0)
  store %struct.Memory* %call2_4327c0, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x6d11c8	 RIP: 4327c5	 Bytes: 8
  %loadMem_4327c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4327c5 = call %struct.Memory* @routine_movq__rax__0x6d11c8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4327c5)
  store %struct.Memory* %call_4327c5, %struct.Memory** %MEMORY

  ; Code: callq .malloc_picture	 RIP: 4327cd	 Bytes: 5
  %loadMem1_4327cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4327cd = call %struct.Memory* @routine_callq_.malloc_picture(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4327cd, i64 7763, i64 5, i64 5)
  store %struct.Memory* %call1_4327cd, %struct.Memory** %MEMORY

  %loadMem2_4327cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4327cd = load i64, i64* %3
  %call2_4327cd = call %struct.Memory* @sub_434620.malloc_picture(%struct.State* %0, i64  %loadPC_4327cd, %struct.Memory* %loadMem2_4327cd)
  store %struct.Memory* %call2_4327cd, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x721df0	 RIP: 4327d2	 Bytes: 8
  %loadMem_4327d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4327d2 = call %struct.Memory* @routine_movq__rax__0x721df0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4327d2)
  store %struct.Memory* %call_4327d2, %struct.Memory** %MEMORY

  ; Code: .L_4327da:	 RIP: 4327da	 Bytes: 0
  br label %block_.L_4327da
block_.L_4327da:

  ; Code: movq 0x6cb8f8, %rax	 RIP: 4327da	 Bytes: 8
  %loadMem_4327da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4327da = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4327da)
  store %struct.Memory* %call_4327da, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0xb40(%rax)	 RIP: 4327e2	 Bytes: 7
  %loadMem_4327e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4327e2 = call %struct.Memory* @routine_cmpl__0x0__0xb40__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4327e2)
  store %struct.Memory* %call_4327e2, %struct.Memory** %MEMORY

  ; Code: je .L_432809	 RIP: 4327e9	 Bytes: 6
  %loadMem_4327e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4327e9 = call %struct.Memory* @routine_je_.L_432809(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4327e9, i8* %BRANCH_TAKEN, i64 32, i64 6, i64 6)
  store %struct.Memory* %call_4327e9, %struct.Memory** %MEMORY

  %loadBr_4327e9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4327e9 = icmp eq i8 %loadBr_4327e9, 1
  br i1 %cmpBr_4327e9, label %block_.L_432809, label %block_4327ef

block_4327ef:
  ; Code: callq .malloc_picture	 RIP: 4327ef	 Bytes: 5
  %loadMem1_4327ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4327ef = call %struct.Memory* @routine_callq_.malloc_picture(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4327ef, i64 7729, i64 5, i64 5)
  store %struct.Memory* %call1_4327ef, %struct.Memory** %MEMORY

  %loadMem2_4327ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4327ef = load i64, i64* %3
  %call2_4327ef = call %struct.Memory* @sub_434620.malloc_picture(%struct.State* %0, i64  %loadPC_4327ef, %struct.Memory* %loadMem2_4327ef)
  store %struct.Memory* %call2_4327ef, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x6d4758	 RIP: 4327f4	 Bytes: 8
  %loadMem_4327f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4327f4 = call %struct.Memory* @routine_movq__rax__0x6d4758(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4327f4)
  store %struct.Memory* %call_4327f4, %struct.Memory** %MEMORY

  ; Code: callq .malloc_picture	 RIP: 4327fc	 Bytes: 5
  %loadMem1_4327fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4327fc = call %struct.Memory* @routine_callq_.malloc_picture(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4327fc, i64 7716, i64 5, i64 5)
  store %struct.Memory* %call1_4327fc, %struct.Memory** %MEMORY

  %loadMem2_4327fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4327fc = load i64, i64* %3
  %call2_4327fc = call %struct.Memory* @sub_434620.malloc_picture(%struct.State* %0, i64  %loadPC_4327fc, %struct.Memory* %loadMem2_4327fc)
  store %struct.Memory* %call2_4327fc, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x6f80a8	 RIP: 432801	 Bytes: 8
  %loadMem_432801 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432801 = call %struct.Memory* @routine_movq__rax__0x6f80a8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432801)
  store %struct.Memory* %call_432801, %struct.Memory** %MEMORY

  ; Code: .L_432809:	 RIP: 432809	 Bytes: 0
  br label %block_.L_432809
block_.L_432809:

  ; Code: movb $0x0, %al	 RIP: 432809	 Bytes: 2
  %loadMem_432809 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432809 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432809)
  store %struct.Memory* %call_432809, %struct.Memory** %MEMORY

  ; Code: callq .init_rdopt	 RIP: 43280b	 Bytes: 5
  %loadMem1_43280b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43280b = call %struct.Memory* @routine_callq_.init_rdopt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43280b, i64 325077, i64 5, i64 5)
  store %struct.Memory* %call1_43280b, %struct.Memory** %MEMORY

  %loadMem2_43280b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43280b = load i64, i64* %3
  %call2_43280b = call %struct.Memory* @sub_481de0.init_rdopt(%struct.State* %0, i64  %loadPC_43280b, %struct.Memory* %loadMem2_43280b)
  store %struct.Memory* %call2_43280b, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rcx	 RIP: 432810	 Bytes: 8
  %loadMem_432810 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432810 = call %struct.Memory* @routine_movq_0x6cb8f8___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432810)
  store %struct.Memory* %call_432810, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x528(%rcx)	 RIP: 432818	 Bytes: 7
  %loadMem_432818 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432818 = call %struct.Memory* @routine_cmpl__0x0__0x528__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432818)
  store %struct.Memory* %call_432818, %struct.Memory** %MEMORY

  ; Code: je .L_432859	 RIP: 43281f	 Bytes: 6
  %loadMem_43281f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43281f = call %struct.Memory* @routine_je_.L_432859(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43281f, i8* %BRANCH_TAKEN, i64 58, i64 6, i64 6)
  store %struct.Memory* %call_43281f, %struct.Memory** %MEMORY

  %loadBr_43281f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43281f = icmp eq i8 %loadBr_43281f, 1
  br i1 %cmpBr_43281f, label %block_.L_432859, label %block_432825

block_432825:
  ; Code: movb $0x0, %al	 RIP: 432825	 Bytes: 2
  %loadMem_432825 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432825 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432825)
  store %struct.Memory* %call_432825, %struct.Memory** %MEMORY

  ; Code: callq .init_gop_structure	 RIP: 432827	 Bytes: 5
  %loadMem1_432827 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_432827 = call %struct.Memory* @routine_callq_.init_gop_structure(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_432827, i64 -82663, i64 5, i64 5)
  store %struct.Memory* %call1_432827, %struct.Memory** %MEMORY

  %loadMem2_432827 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_432827 = load i64, i64* %3
  %call2_432827 = call %struct.Memory* @sub_41e540.init_gop_structure(%struct.State* %0, i64  %loadPC_432827, %struct.Memory* %loadMem2_432827)
  store %struct.Memory* %call2_432827, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rcx	 RIP: 43282c	 Bytes: 8
  %loadMem_43282c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43282c = call %struct.Memory* @routine_movq_0x6cb8f8___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43282c)
  store %struct.Memory* %call_43282c, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, 0x528(%rcx)	 RIP: 432834	 Bytes: 7
  %loadMem_432834 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432834 = call %struct.Memory* @routine_cmpl__0x3__0x528__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432834)
  store %struct.Memory* %call_432834, %struct.Memory** %MEMORY

  ; Code: jne .L_43284d	 RIP: 43283b	 Bytes: 6
  %loadMem_43283b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43283b = call %struct.Memory* @routine_jne_.L_43284d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43283b, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_43283b, %struct.Memory** %MEMORY

  %loadBr_43283b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43283b = icmp eq i8 %loadBr_43283b, 1
  br i1 %cmpBr_43283b, label %block_.L_43284d, label %block_432841

block_432841:
  ; Code: movb $0x0, %al	 RIP: 432841	 Bytes: 2
  %loadMem_432841 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432841 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432841)
  store %struct.Memory* %call_432841, %struct.Memory** %MEMORY

  ; Code: callq .interpret_gop_structure	 RIP: 432843	 Bytes: 5
  %loadMem1_432843 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_432843 = call %struct.Memory* @routine_callq_.interpret_gop_structure(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_432843, i64 -82467, i64 5, i64 5)
  store %struct.Memory* %call1_432843, %struct.Memory** %MEMORY

  %loadMem2_432843 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_432843 = load i64, i64* %3
  %call2_432843 = call %struct.Memory* @sub_41e620.interpret_gop_structure(%struct.State* %0, i64  %loadPC_432843, %struct.Memory* %loadMem2_432843)
  store %struct.Memory* %call2_432843, %struct.Memory** %MEMORY

  ; Code: jmpq .L_432854	 RIP: 432848	 Bytes: 5
  %loadMem_432848 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432848 = call %struct.Memory* @routine_jmpq_.L_432854(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432848, i64 12, i64 5)
  store %struct.Memory* %call_432848, %struct.Memory** %MEMORY

  br label %block_.L_432854

  ; Code: .L_43284d:	 RIP: 43284d	 Bytes: 0
block_.L_43284d:

  ; Code: movb $0x0, %al	 RIP: 43284d	 Bytes: 2
  %loadMem_43284d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43284d = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43284d)
  store %struct.Memory* %call_43284d, %struct.Memory** %MEMORY

  ; Code: callq .create_pyramid	 RIP: 43284f	 Bytes: 5
  %loadMem1_43284f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43284f = call %struct.Memory* @routine_callq_.create_pyramid(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43284f, i64 -84831, i64 5, i64 5)
  store %struct.Memory* %call1_43284f, %struct.Memory** %MEMORY

  %loadMem2_43284f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43284f = load i64, i64* %3
  %call2_43284f = call %struct.Memory* @sub_41dcf0.create_pyramid(%struct.State* %0, i64  %loadPC_43284f, %struct.Memory* %loadMem2_43284f)
  store %struct.Memory* %call2_43284f, %struct.Memory** %MEMORY

  ; Code: .L_432854:	 RIP: 432854	 Bytes: 0
  br label %block_.L_432854
block_.L_432854:

  ; Code: jmpq .L_432859	 RIP: 432854	 Bytes: 5
  %loadMem_432854 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432854 = call %struct.Memory* @routine_jmpq_.L_432859(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432854, i64 5, i64 5)
  store %struct.Memory* %call_432854, %struct.Memory** %MEMORY

  br label %block_.L_432859

  ; Code: .L_432859:	 RIP: 432859	 Bytes: 0
block_.L_432859:

  ; Code: movq 0x6cb8f8, %rdi	 RIP: 432859	 Bytes: 8
  %loadMem_432859 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432859 = call %struct.Memory* @routine_movq_0x6cb8f8___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432859)
  store %struct.Memory* %call_432859, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 432861	 Bytes: 2
  %loadMem_432861 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432861 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432861)
  store %struct.Memory* %call_432861, %struct.Memory** %MEMORY

  ; Code: callq .init_dpb	 RIP: 432863	 Bytes: 5
  %loadMem1_432863 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_432863 = call %struct.Memory* @routine_callq_.init_dpb(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_432863, i64 101549, i64 5, i64 5)
  store %struct.Memory* %call1_432863, %struct.Memory** %MEMORY

  %loadMem2_432863 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_432863 = load i64, i64* %3
  %call2_432863 = call %struct.Memory* @sub_44b510.init_dpb(%struct.State* %0, i64  %loadPC_432863, %struct.Memory* %loadMem2_432863)
  store %struct.Memory* %call2_432863, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 432868	 Bytes: 2
  %loadMem_432868 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432868 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432868)
  store %struct.Memory* %call_432868, %struct.Memory** %MEMORY

  ; Code: callq .init_out_buffer	 RIP: 43286a	 Bytes: 5
  %loadMem1_43286a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43286a = call %struct.Memory* @routine_callq_.init_out_buffer(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43286a, i64 276358, i64 5, i64 5)
  store %struct.Memory* %call1_43286a, %struct.Memory** %MEMORY

  %loadMem2_43286a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43286a = load i64, i64* %3
  %call2_43286a = call %struct.Memory* @sub_475ff0.init_out_buffer(%struct.State* %0, i64  %loadPC_43286a, %struct.Memory* %loadMem2_43286a)
  store %struct.Memory* %call2_43286a, %struct.Memory** %MEMORY

  ; Code: movq $0x0, 0x6f9710	 RIP: 43286f	 Bytes: 12
  %loadMem_43286f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43286f = call %struct.Memory* @routine_movq__0x0__0x6f9710(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43286f)
  store %struct.Memory* %call_43286f, %struct.Memory** %MEMORY

  ; Code: movq $0x0, 0x6f96a0	 RIP: 43287b	 Bytes: 12
  %loadMem_43287b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43287b = call %struct.Memory* @routine_movq__0x0__0x6f96a0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43287b)
  store %struct.Memory* %call_43287b, %struct.Memory** %MEMORY

  ; Code: movq $0x0, 0x710a50	 RIP: 432887	 Bytes: 12
  %loadMem_432887 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432887 = call %struct.Memory* @routine_movq__0x0__0x710a50(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432887)
  store %struct.Memory* %call_432887, %struct.Memory** %MEMORY

  ; Code: movq $0x0, 0x70fcf0	 RIP: 432893	 Bytes: 12
  %loadMem_432893 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432893 = call %struct.Memory* @routine_movq__0x0__0x70fcf0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432893)
  store %struct.Memory* %call_432893, %struct.Memory** %MEMORY

  ; Code: callq .init_global_buffers	 RIP: 43289f	 Bytes: 5
  %loadMem1_43289f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43289f = call %struct.Memory* @routine_callq_.init_global_buffers(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43289f, i64 7633, i64 5, i64 5)
  store %struct.Memory* %call1_43289f, %struct.Memory** %MEMORY

  %loadMem2_43289f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43289f = load i64, i64* %3
  %call2_43289f = call %struct.Memory* @sub_434670.init_global_buffers(%struct.State* %0, i64  %loadPC_43289f, %struct.Memory* %loadMem2_43289f)
  store %struct.Memory* %call2_43289f, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2c(%rbp)	 RIP: 4328a4	 Bytes: 3
  %loadMem_4328a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4328a4 = call %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4328a4)
  store %struct.Memory* %call_4328a4, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 4328a7	 Bytes: 2
  %loadMem_4328a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4328a7 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4328a7)
  store %struct.Memory* %call_4328a7, %struct.Memory** %MEMORY

  ; Code: callq .create_context_memory	 RIP: 4328a9	 Bytes: 5
  %loadMem1_4328a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4328a9 = call %struct.Memory* @routine_callq_.create_context_memory(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4328a9, i64 -110905, i64 5, i64 5)
  store %struct.Memory* %call1_4328a9, %struct.Memory** %MEMORY

  %loadMem2_4328a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4328a9 = load i64, i64* %3
  %call2_4328a9 = call %struct.Memory* @sub_417770.create_context_memory(%struct.State* %0, i64  %loadPC_4328a9, %struct.Memory* %loadMem2_4328a9)
  store %struct.Memory* %call2_4328a9, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 4328ae	 Bytes: 2
  %loadMem_4328ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4328ae = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4328ae)
  store %struct.Memory* %call_4328ae, %struct.Memory** %MEMORY

  ; Code: callq .Init_Motion_Search_Module	 RIP: 4328b0	 Bytes: 5
  %loadMem1_4328b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4328b0 = call %struct.Memory* @routine_callq_.Init_Motion_Search_Module(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4328b0, i64 177792, i64 5, i64 5)
  store %struct.Memory* %call1_4328b0, %struct.Memory** %MEMORY

  %loadMem2_4328b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4328b0 = load i64, i64* %3
  %call2_4328b0 = call %struct.Memory* @sub_45df30.Init_Motion_Search_Module(%struct.State* %0, i64  %loadPC_4328b0, %struct.Memory* %loadMem2_4328b0)
  store %struct.Memory* %call2_4328b0, %struct.Memory** %MEMORY

  ; Code: callq .information_init	 RIP: 4328b5	 Bytes: 5
  %loadMem1_4328b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4328b5 = call %struct.Memory* @routine_callq_.information_init(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4328b5, i64 9099, i64 5, i64 5)
  store %struct.Memory* %call1_4328b5, %struct.Memory** %MEMORY

  %loadMem2_4328b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4328b5 = load i64, i64* %3
  %call2_4328b5 = call %struct.Memory* @sub_434c40.information_init(%struct.State* %0, i64  %loadPC_4328b5, %struct.Memory* %loadMem2_4328b5)
  store %struct.Memory* %call2_4328b5, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rdi	 RIP: 4328ba	 Bytes: 8
  %loadMem_4328ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4328ba = call %struct.Memory* @routine_movq_0x6cb8f8___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4328ba)
  store %struct.Memory* %call_4328ba, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0xca4(%rdi)	 RIP: 4328c2	 Bytes: 7
  %loadMem_4328c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4328c2 = call %struct.Memory* @routine_cmpl__0x0__0xca4__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4328c2)
  store %struct.Memory* %call_4328c2, %struct.Memory** %MEMORY

  ; Code: je .L_4328d6	 RIP: 4328c9	 Bytes: 6
  %loadMem_4328c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4328c9 = call %struct.Memory* @routine_je_.L_4328d6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4328c9, i8* %BRANCH_TAKEN, i64 13, i64 6, i64 6)
  store %struct.Memory* %call_4328c9, %struct.Memory** %MEMORY

  %loadBr_4328c9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4328c9 = icmp eq i8 %loadBr_4328c9, 1
  br i1 %cmpBr_4328c9, label %block_.L_4328d6, label %block_4328cf

block_4328cf:
  ; Code: movb $0x0, %al	 RIP: 4328cf	 Bytes: 2
  %loadMem_4328cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4328cf = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4328cf)
  store %struct.Memory* %call_4328cf, %struct.Memory** %MEMORY

  ; Code: callq .rc_init_seq	 RIP: 4328d1	 Bytes: 5
  %loadMem1_4328d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4328d1 = call %struct.Memory* @routine_callq_.rc_init_seq(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4328d1, i64 301727, i64 5, i64 5)
  store %struct.Memory* %call1_4328d1, %struct.Memory** %MEMORY

  %loadMem2_4328d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4328d1 = load i64, i64* %3
  %call2_4328d1 = call %struct.Memory* @sub_47c370.rc_init_seq(%struct.State* %0, i64  %loadPC_4328d1, %struct.Memory* %loadMem2_4328d1)
  store %struct.Memory* %call2_4328d1, %struct.Memory** %MEMORY

  ; Code: .L_4328d6:	 RIP: 4328d6	 Bytes: 0
  br label %block_.L_4328d6
block_.L_4328d6:

  ; Code: movq 0x6cb8f8, %rax	 RIP: 4328d6	 Bytes: 8
  %loadMem_4328d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4328d6 = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4328d6)
  store %struct.Memory* %call_4328d6, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0xcdc(%rax)	 RIP: 4328de	 Bytes: 7
  %loadMem_4328de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4328de = call %struct.Memory* @routine_cmpl__0x0__0xcdc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4328de)
  store %struct.Memory* %call_4328de, %struct.Memory** %MEMORY

  ; Code: je .L_4328f2	 RIP: 4328e5	 Bytes: 6
  %loadMem_4328e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4328e5 = call %struct.Memory* @routine_je_.L_4328f2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4328e5, i8* %BRANCH_TAKEN, i64 13, i64 6, i64 6)
  store %struct.Memory* %call_4328e5, %struct.Memory** %MEMORY

  %loadBr_4328e5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4328e5 = icmp eq i8 %loadBr_4328e5, 1
  br i1 %cmpBr_4328e5, label %block_.L_4328f2, label %block_4328eb

block_4328eb:
  ; Code: movb $0x0, %al	 RIP: 4328eb	 Bytes: 2
  %loadMem_4328eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4328eb = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4328eb)
  store %struct.Memory* %call_4328eb, %struct.Memory** %MEMORY

  ; Code: callq .DefineThreshold	 RIP: 4328ed	 Bytes: 5
  %loadMem1_4328ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4328ed = call %struct.Memory* @routine_callq_.DefineThreshold(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4328ed, i64 -77837, i64 5, i64 5)
  store %struct.Memory* %call1_4328ed, %struct.Memory** %MEMORY

  %loadMem2_4328ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4328ed = load i64, i64* %3
  %call2_4328ed = call %struct.Memory* @sub_41f8e0.DefineThreshold(%struct.State* %0, i64  %loadPC_4328ed, %struct.Memory* %loadMem2_4328ed)
  store %struct.Memory* %call2_4328ed, %struct.Memory** %MEMORY

  ; Code: .L_4328f2:	 RIP: 4328f2	 Bytes: 0
  br label %block_.L_4328f2
block_.L_4328f2:

  ; Code: movl $0x0, 0x6f8edc	 RIP: 4328f2	 Bytes: 11
  %loadMem_4328f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4328f2 = call %struct.Memory* @routine_movl__0x0__0x6f8edc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4328f2)
  store %struct.Memory* %call_4328f2, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x6cee50	 RIP: 4328fd	 Bytes: 11
  %loadMem_4328fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4328fd = call %struct.Memory* @routine_movl__0x0__0x6cee50(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4328fd)
  store %struct.Memory* %call_4328fd, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x722ca8	 RIP: 432908	 Bytes: 11
  %loadMem_432908 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432908 = call %struct.Memory* @routine_movl__0x0__0x722ca8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432908)
  store %struct.Memory* %call_432908, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x725260	 RIP: 432913	 Bytes: 11
  %loadMem_432913 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432913 = call %struct.Memory* @routine_movl__0x0__0x725260(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432913)
  store %struct.Memory* %call_432913, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rax	 RIP: 43291e	 Bytes: 8
  %loadMem_43291e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43291e = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43291e)
  store %struct.Memory* %call_43291e, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x988(%rax)	 RIP: 432926	 Bytes: 7
  %loadMem_432926 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432926 = call %struct.Memory* @routine_cmpl__0x0__0x988__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432926)
  store %struct.Memory* %call_432926, %struct.Memory** %MEMORY

  ; Code: jle .L_432973	 RIP: 43292d	 Bytes: 6
  %loadMem_43292d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43292d = call %struct.Memory* @routine_jle_.L_432973(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43292d, i8* %BRANCH_TAKEN, i64 70, i64 6, i64 6)
  store %struct.Memory* %call_43292d, %struct.Memory** %MEMORY

  %loadBr_43292d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43292d = icmp eq i8 %loadBr_43292d, 1
  br i1 %cmpBr_43292d, label %block_.L_432973, label %block_432933

block_432933:
  ; Code: movq 0x6cb8f8, %rax	 RIP: 432933	 Bytes: 8
  %loadMem_432933 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432933 = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432933)
  store %struct.Memory* %call_432933, %struct.Memory** %MEMORY

  ; Code: movl 0x988(%rax), %ecx	 RIP: 43293b	 Bytes: 6
  %loadMem_43293b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43293b = call %struct.Memory* @routine_movl_0x988__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43293b)
  store %struct.Memory* %call_43293b, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rax	 RIP: 432941	 Bytes: 8
  %loadMem_432941 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432941 = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432941)
  store %struct.Memory* %call_432941, %struct.Memory** %MEMORY

  ; Code: addl 0x14(%rax), %ecx	 RIP: 432949	 Bytes: 3
  %loadMem_432949 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432949 = call %struct.Memory* @routine_addl_0x14__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432949)
  store %struct.Memory* %call_432949, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rax	 RIP: 43294c	 Bytes: 8
  %loadMem_43294c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43294c = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43294c)
  store %struct.Memory* %call_43294c, %struct.Memory** %MEMORY

  ; Code: movl 0x14(%rax), %edx	 RIP: 432954	 Bytes: 3
  %loadMem_432954 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432954 = call %struct.Memory* @routine_movl_0x14__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432954)
  store %struct.Memory* %call_432954, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 432957	 Bytes: 3
  %loadMem_432957 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432957 = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432957)
  store %struct.Memory* %call_432957, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %eax	 RIP: 43295a	 Bytes: 2
  %loadMem_43295a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43295a = call %struct.Memory* @routine_movl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43295a)
  store %struct.Memory* %call_43295a, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x30(%rbp)	 RIP: 43295c	 Bytes: 3
  %loadMem_43295c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43295c = call %struct.Memory* @routine_movl__edx__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43295c)
  store %struct.Memory* %call_43295c, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 43295f	 Bytes: 1
  %loadMem_43295f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43295f = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43295f)
  store %struct.Memory* %call_43295f, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %ecx	 RIP: 432960	 Bytes: 3
  %loadMem_432960 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432960 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432960)
  store %struct.Memory* %call_432960, %struct.Memory** %MEMORY

  ; Code: idivl %ecx	 RIP: 432963	 Bytes: 2
  %loadMem_432963 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432963 = call %struct.Memory* @routine_idivl__ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432963)
  store %struct.Memory* %call_432963, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 432965	 Bytes: 3
  %loadMem_432965 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432965 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432965)
  store %struct.Memory* %call_432965, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rsi	 RIP: 432968	 Bytes: 8
  %loadMem_432968 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432968 = call %struct.Memory* @routine_movq_0x6cb8f8___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432968)
  store %struct.Memory* %call_432968, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x8(%rsi)	 RIP: 432970	 Bytes: 3
  %loadMem_432970 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432970 = call %struct.Memory* @routine_movl__eax__0x8__rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432970)
  store %struct.Memory* %call_432970, %struct.Memory** %MEMORY

  ; Code: .L_432973:	 RIP: 432973	 Bytes: 0
  br label %block_.L_432973
block_.L_432973:

  ; Code: movq 0x6cb8f8, %rax	 RIP: 432973	 Bytes: 8
  %loadMem_432973 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432973 = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432973)
  store %struct.Memory* %call_432973, %struct.Memory** %MEMORY

  ; Code: movl 0x4d4(%rax), %ecx	 RIP: 43297b	 Bytes: 6
  %loadMem_43297b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43297b = call %struct.Memory* @routine_movl_0x4d4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43297b)
  store %struct.Memory* %call_43297b, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x6cc018	 RIP: 432981	 Bytes: 7
  %loadMem_432981 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432981 = call %struct.Memory* @routine_movl__ecx__0x6cc018(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432981)
  store %struct.Memory* %call_432981, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 432988	 Bytes: 2
  %loadMem_432988 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432988 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432988)
  store %struct.Memory* %call_432988, %struct.Memory** %MEMORY

  ; Code: callq .PatchInputNoFrames	 RIP: 43298a	 Bytes: 5
  %loadMem1_43298a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43298a = call %struct.Memory* @routine_callq_.PatchInputNoFrames(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43298a, i64 -111290, i64 5, i64 5)
  store %struct.Memory* %call1_43298a, %struct.Memory** %MEMORY

  %loadMem2_43298a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43298a = load i64, i64* %3
  %call2_43298a = call %struct.Memory* @sub_4176d0.PatchInputNoFrames(%struct.State* %0, i64  %loadPC_43298a, %struct.Memory* %loadMem2_43298a)
  store %struct.Memory* %call2_43298a, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb908, %rdx	 RIP: 43298f	 Bytes: 8
  %loadMem_43298f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43298f = call %struct.Memory* @routine_movq_0x6cb908___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43298f)
  store %struct.Memory* %call_43298f, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x5d0(%rdx)	 RIP: 432997	 Bytes: 10
  %loadMem_432997 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432997 = call %struct.Memory* @routine_movl__0x0__0x5d0__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432997)
  store %struct.Memory* %call_432997, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 4329a1	 Bytes: 2
  %loadMem_4329a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4329a1 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4329a1)
  store %struct.Memory* %call_4329a1, %struct.Memory** %MEMORY

  ; Code: callq .start_sequence	 RIP: 4329a3	 Bytes: 5
  %loadMem1_4329a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4329a3 = call %struct.Memory* @routine_callq_.start_sequence(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4329a3, i64 -57715, i64 5, i64 5)
  store %struct.Memory* %call1_4329a3, %struct.Memory** %MEMORY

  %loadMem2_4329a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4329a3 = load i64, i64* %3
  %call2_4329a3 = call %struct.Memory* @sub_424830.start_sequence(%struct.State* %0, i64  %loadPC_4329a3, %struct.Memory* %loadMem2_4329a3)
  store %struct.Memory* %call2_4329a3, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb908, %rdx	 RIP: 4329a8	 Bytes: 8
  %loadMem_4329a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4329a8 = call %struct.Memory* @routine_movq_0x6cb908___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4329a8)
  store %struct.Memory* %call_4329a8, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x18(%rdx)	 RIP: 4329b0	 Bytes: 3
  %loadMem_4329b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4329b0 = call %struct.Memory* @routine_movl__eax__0x18__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4329b0)
  store %struct.Memory* %call_4329b0, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb908, %rdx	 RIP: 4329b3	 Bytes: 8
  %loadMem_4329b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4329b3 = call %struct.Memory* @routine_movq_0x6cb908___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4329b3)
  store %struct.Memory* %call_4329b3, %struct.Memory** %MEMORY

  ; Code: movl 0x5d4(%rdx), %eax	 RIP: 4329bb	 Bytes: 6
  %loadMem_4329bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4329bb = call %struct.Memory* @routine_movl_0x5d4__rdx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4329bb)
  store %struct.Memory* %call_4329bb, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb908, %rdx	 RIP: 4329c1	 Bytes: 8
  %loadMem_4329c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4329c1 = call %struct.Memory* @routine_movq_0x6cb908___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4329c1)
  store %struct.Memory* %call_4329c1, %struct.Memory** %MEMORY

  ; Code: addl 0x5d0(%rdx), %eax	 RIP: 4329c9	 Bytes: 6
  %loadMem_4329c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4329c9 = call %struct.Memory* @routine_addl_0x5d0__rdx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4329c9)
  store %struct.Memory* %call_4329c9, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x5d0(%rdx)	 RIP: 4329cf	 Bytes: 6
  %loadMem_4329cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4329cf = call %struct.Memory* @routine_movl__eax__0x5d0__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4329cf)
  store %struct.Memory* %call_4329cf, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x6cc020	 RIP: 4329d5	 Bytes: 11
  %loadMem_4329d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4329d5 = call %struct.Memory* @routine_movl__0x0__0x6cc020(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4329d5)
  store %struct.Memory* %call_4329d5, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rdx	 RIP: 4329e0	 Bytes: 8
  %loadMem_4329e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4329e0 = call %struct.Memory* @routine_movq_0x6cb900___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4329e0)
  store %struct.Memory* %call_4329e0, %struct.Memory** %MEMORY

  ; Code: movl $0x0, (%rdx)	 RIP: 4329e8	 Bytes: 6
  %loadMem_4329e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4329e8 = call %struct.Memory* @routine_movl__0x0____rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4329e8)
  store %struct.Memory* %call_4329e8, %struct.Memory** %MEMORY

  ; Code: .L_4329ee:	 RIP: 4329ee	 Bytes: 0
  br label %block_.L_4329ee
block_.L_4329ee:

  ; Code: movq 0x6cb900, %rax	 RIP: 4329ee	 Bytes: 8
  %loadMem_4329ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4329ee = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4329ee)
  store %struct.Memory* %call_4329ee, %struct.Memory** %MEMORY

  ; Code: movl (%rax), %ecx	 RIP: 4329f6	 Bytes: 2
  %loadMem_4329f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4329f6 = call %struct.Memory* @routine_movl___rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4329f6)
  store %struct.Memory* %call_4329f6, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rax	 RIP: 4329f8	 Bytes: 8
  %loadMem_4329f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4329f8 = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4329f8)
  store %struct.Memory* %call_4329f8, %struct.Memory** %MEMORY

  ; Code: cmpl 0x8(%rax), %ecx	 RIP: 432a00	 Bytes: 3
  %loadMem_432a00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432a00 = call %struct.Memory* @routine_cmpl_0x8__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432a00)
  store %struct.Memory* %call_432a00, %struct.Memory** %MEMORY

  ; Code: jge .L_43321b	 RIP: 432a03	 Bytes: 6
  %loadMem_432a03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432a03 = call %struct.Memory* @routine_jge_.L_43321b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432a03, i8* %BRANCH_TAKEN, i64 2072, i64 6, i64 6)
  store %struct.Memory* %call_432a03, %struct.Memory** %MEMORY

  %loadBr_432a03 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_432a03 = icmp eq i8 %loadBr_432a03, 1
  br i1 %cmpBr_432a03, label %block_.L_43321b, label %block_432a09

block_432a09:
  ; Code: movq 0x6cb900, %rax	 RIP: 432a09	 Bytes: 8
  %loadMem_432a09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432a09 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432a09)
  store %struct.Memory* %call_432a09, %struct.Memory** %MEMORY

  ; Code: movl $0x1, 0x11b30(%rax)	 RIP: 432a11	 Bytes: 10
  %loadMem_432a11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432a11 = call %struct.Memory* @routine_movl__0x1__0x11b30__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432a11)
  store %struct.Memory* %call_432a11, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rax	 RIP: 432a1b	 Bytes: 8
  %loadMem_432a1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432a1b = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432a1b)
  store %struct.Memory* %call_432a1b, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x4c8(%rax)	 RIP: 432a23	 Bytes: 7
  %loadMem_432a23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432a23 = call %struct.Memory* @routine_cmpl__0x0__0x4c8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432a23)
  store %struct.Memory* %call_432a23, %struct.Memory** %MEMORY

  ; Code: je .L_432a77	 RIP: 432a2a	 Bytes: 6
  %loadMem_432a2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432a2a = call %struct.Memory* @routine_je_.L_432a77(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432a2a, i8* %BRANCH_TAKEN, i64 77, i64 6, i64 6)
  store %struct.Memory* %call_432a2a, %struct.Memory** %MEMORY

  %loadBr_432a2a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_432a2a = icmp eq i8 %loadBr_432a2a, 1
  br i1 %cmpBr_432a2a, label %block_.L_432a77, label %block_432a30

block_432a30:
  ; Code: movq 0x6cb8f8, %rax	 RIP: 432a30	 Bytes: 8
  %loadMem_432a30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432a30 = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432a30)
  store %struct.Memory* %call_432a30, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x4cc(%rax)	 RIP: 432a38	 Bytes: 7
  %loadMem_432a38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432a38 = call %struct.Memory* @routine_cmpl__0x0__0x4cc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432a38)
  store %struct.Memory* %call_432a38, %struct.Memory** %MEMORY

  ; Code: je .L_432a77	 RIP: 432a3f	 Bytes: 6
  %loadMem_432a3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432a3f = call %struct.Memory* @routine_je_.L_432a77(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432a3f, i8* %BRANCH_TAKEN, i64 56, i64 6, i64 6)
  store %struct.Memory* %call_432a3f, %struct.Memory** %MEMORY

  %loadBr_432a3f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_432a3f = icmp eq i8 %loadBr_432a3f, 1
  br i1 %cmpBr_432a3f, label %block_.L_432a77, label %block_432a45

block_432a45:
  ; Code: movq 0x6cb900, %rax	 RIP: 432a45	 Bytes: 8
  %loadMem_432a45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432a45 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432a45)
  store %struct.Memory* %call_432a45, %struct.Memory** %MEMORY

  ; Code: movl (%rax), %ecx	 RIP: 432a4d	 Bytes: 2
  %loadMem_432a4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432a4d = call %struct.Memory* @routine_movl___rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432a4d)
  store %struct.Memory* %call_432a4d, %struct.Memory** %MEMORY

  ; Code: subl 0x6cc020, %ecx	 RIP: 432a4f	 Bytes: 7
  %loadMem_432a4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432a4f = call %struct.Memory* @routine_subl_0x6cc020___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432a4f)
  store %struct.Memory* %call_432a4f, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rax	 RIP: 432a56	 Bytes: 8
  %loadMem_432a56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432a56 = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432a56)
  store %struct.Memory* %call_432a56, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x38(%rbp)	 RIP: 432a5e	 Bytes: 4
  %loadMem_432a5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432a5e = call %struct.Memory* @routine_movq__rax__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432a5e)
  store %struct.Memory* %call_432a5e, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %eax	 RIP: 432a62	 Bytes: 2
  %loadMem_432a62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432a62 = call %struct.Memory* @routine_movl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432a62)
  store %struct.Memory* %call_432a62, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 432a64	 Bytes: 1
  %loadMem_432a64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432a64 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432a64)
  store %struct.Memory* %call_432a64, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rsi	 RIP: 432a65	 Bytes: 4
  %loadMem_432a65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432a65 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432a65)
  store %struct.Memory* %call_432a65, %struct.Memory** %MEMORY

  ; Code: idivl 0x4c8(%rsi)	 RIP: 432a69	 Bytes: 6
  %loadMem_432a69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432a69 = call %struct.Memory* @routine_idivl_0x4c8__rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432a69)
  store %struct.Memory* %call_432a69, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x3c(%rbp)	 RIP: 432a6f	 Bytes: 3
  %loadMem_432a6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432a6f = call %struct.Memory* @routine_movl__edx__MINUS0x3c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432a6f)
  store %struct.Memory* %call_432a6f, %struct.Memory** %MEMORY

  ; Code: jmpq .L_432a8b	 RIP: 432a72	 Bytes: 5
  %loadMem_432a72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432a72 = call %struct.Memory* @routine_jmpq_.L_432a8b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432a72, i64 25, i64 5)
  store %struct.Memory* %call_432a72, %struct.Memory** %MEMORY

  br label %block_.L_432a8b

  ; Code: .L_432a77:	 RIP: 432a77	 Bytes: 0
block_.L_432a77:

  ; Code: movq 0x6cb900, %rax	 RIP: 432a77	 Bytes: 8
  %loadMem_432a77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432a77 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432a77)
  store %struct.Memory* %call_432a77, %struct.Memory** %MEMORY

  ; Code: movl (%rax), %ecx	 RIP: 432a7f	 Bytes: 2
  %loadMem_432a7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432a7f = call %struct.Memory* @routine_movl___rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432a7f)
  store %struct.Memory* %call_432a7f, %struct.Memory** %MEMORY

  ; Code: subl 0x6cc020, %ecx	 RIP: 432a81	 Bytes: 7
  %loadMem_432a81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432a81 = call %struct.Memory* @routine_subl_0x6cc020___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432a81)
  store %struct.Memory* %call_432a81, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x3c(%rbp)	 RIP: 432a88	 Bytes: 3
  %loadMem_432a88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432a88 = call %struct.Memory* @routine_movl__ecx__MINUS0x3c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432a88)
  store %struct.Memory* %call_432a88, %struct.Memory** %MEMORY

  ; Code: .L_432a8b:	 RIP: 432a8b	 Bytes: 0
  br label %block_.L_432a8b
block_.L_432a8b:

  ; Code: movl -0x3c(%rbp), %eax	 RIP: 432a8b	 Bytes: 3
  %loadMem_432a8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432a8b = call %struct.Memory* @routine_movl_MINUS0x3c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432a8b)
  store %struct.Memory* %call_432a8b, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rcx	 RIP: 432a8e	 Bytes: 8
  %loadMem_432a8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432a8e = call %struct.Memory* @routine_movq_0x6cb8f8___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432a8e)
  store %struct.Memory* %call_432a8e, %struct.Memory** %MEMORY

  ; Code: movl 0x14(%rcx), %edx	 RIP: 432a96	 Bytes: 3
  %loadMem_432a96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432a96 = call %struct.Memory* @routine_movl_0x14__rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432a96)
  store %struct.Memory* %call_432a96, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 432a99	 Bytes: 3
  %loadMem_432a99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432a99 = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432a99)
  store %struct.Memory* %call_432a99, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %edx	 RIP: 432a9c	 Bytes: 3
  %loadMem_432a9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432a9c = call %struct.Memory* @routine_shll__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432a9c)
  store %struct.Memory* %call_432a9c, %struct.Memory** %MEMORY

  ; Code: imull %edx, %eax	 RIP: 432a9f	 Bytes: 3
  %loadMem_432a9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432a9f = call %struct.Memory* @routine_imull__edx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432a9f)
  store %struct.Memory* %call_432a9f, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 432aa2	 Bytes: 8
  %loadMem_432aa2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432aa2 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432aa2)
  store %struct.Memory* %call_432aa2, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x11b00(%rcx)	 RIP: 432aaa	 Bytes: 6
  %loadMem_432aaa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432aaa = call %struct.Memory* @routine_movl__eax__0x11b00__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432aaa)
  store %struct.Memory* %call_432aaa, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rcx	 RIP: 432ab0	 Bytes: 8
  %loadMem_432ab0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432ab0 = call %struct.Memory* @routine_movq_0x6cb8f8___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432ab0)
  store %struct.Memory* %call_432ab0, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0xb40(%rcx)	 RIP: 432ab8	 Bytes: 7
  %loadMem_432ab8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432ab8 = call %struct.Memory* @routine_cmpl__0x0__0xb40__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432ab8)
  store %struct.Memory* %call_432ab8, %struct.Memory** %MEMORY

  ; Code: jne .L_432afb	 RIP: 432abf	 Bytes: 6
  %loadMem_432abf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432abf = call %struct.Memory* @routine_jne_.L_432afb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432abf, i8* %BRANCH_TAKEN, i64 60, i64 6, i64 6)
  store %struct.Memory* %call_432abf, %struct.Memory** %MEMORY

  %loadBr_432abf = load i8, i8* %BRANCH_TAKEN
  %cmpBr_432abf = icmp eq i8 %loadBr_432abf, 1
  br i1 %cmpBr_432abf, label %block_.L_432afb, label %block_432ac5

block_432ac5:
  ; Code: movq 0x6cb8f8, %rax	 RIP: 432ac5	 Bytes: 8
  %loadMem_432ac5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432ac5 = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432ac5)
  store %struct.Memory* %call_432ac5, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0xb44(%rax)	 RIP: 432acd	 Bytes: 7
  %loadMem_432acd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432acd = call %struct.Memory* @routine_cmpl__0x0__0xb44__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432acd)
  store %struct.Memory* %call_432acd, %struct.Memory** %MEMORY

  ; Code: jne .L_432afb	 RIP: 432ad4	 Bytes: 6
  %loadMem_432ad4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432ad4 = call %struct.Memory* @routine_jne_.L_432afb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432ad4, i8* %BRANCH_TAKEN, i64 39, i64 6, i64 6)
  store %struct.Memory* %call_432ad4, %struct.Memory** %MEMORY

  %loadBr_432ad4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_432ad4 = icmp eq i8 %loadBr_432ad4, 1
  br i1 %cmpBr_432ad4, label %block_.L_432afb, label %block_432ada

block_432ada:
  ; Code: movq 0x6cb900, %rax	 RIP: 432ada	 Bytes: 8
  %loadMem_432ada = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432ada = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432ada)
  store %struct.Memory* %call_432ada, %struct.Memory** %MEMORY

  ; Code: movl 0x11b00(%rax), %ecx	 RIP: 432ae2	 Bytes: 6
  %loadMem_432ae2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432ae2 = call %struct.Memory* @routine_movl_0x11b00__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432ae2)
  store %struct.Memory* %call_432ae2, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 432ae8	 Bytes: 8
  %loadMem_432ae8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432ae8 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432ae8)
  store %struct.Memory* %call_432ae8, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x11b04(%rax)	 RIP: 432af0	 Bytes: 6
  %loadMem_432af0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432af0 = call %struct.Memory* @routine_movl__ecx__0x11b04__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432af0)
  store %struct.Memory* %call_432af0, %struct.Memory** %MEMORY

  ; Code: jmpq .L_432b1a	 RIP: 432af6	 Bytes: 5
  %loadMem_432af6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432af6 = call %struct.Memory* @routine_jmpq_.L_432b1a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432af6, i64 36, i64 5)
  store %struct.Memory* %call_432af6, %struct.Memory** %MEMORY

  br label %block_.L_432b1a

  ; Code: .L_432afb:	 RIP: 432afb	 Bytes: 0
block_.L_432afb:

  ; Code: movq 0x6cb900, %rax	 RIP: 432afb	 Bytes: 8
  %loadMem_432afb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432afb = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432afb)
  store %struct.Memory* %call_432afb, %struct.Memory** %MEMORY

  ; Code: movl 0x11b00(%rax), %ecx	 RIP: 432b03	 Bytes: 6
  %loadMem_432b03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432b03 = call %struct.Memory* @routine_movl_0x11b00__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432b03)
  store %struct.Memory* %call_432b03, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 432b09	 Bytes: 3
  %loadMem_432b09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432b09 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432b09)
  store %struct.Memory* %call_432b09, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 432b0c	 Bytes: 8
  %loadMem_432b0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432b0c = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432b0c)
  store %struct.Memory* %call_432b0c, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x11b04(%rax)	 RIP: 432b14	 Bytes: 6
  %loadMem_432b14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432b14 = call %struct.Memory* @routine_movl__ecx__0x11b04__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432b14)
  store %struct.Memory* %call_432b14, %struct.Memory** %MEMORY

  ; Code: .L_432b1a:	 RIP: 432b1a	 Bytes: 0
  br label %block_.L_432b1a
block_.L_432b1a:

  ; Code: movq 0x6cb900, %rax	 RIP: 432b1a	 Bytes: 8
  %loadMem_432b1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432b1a = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432b1a)
  store %struct.Memory* %call_432b1a, %struct.Memory** %MEMORY

  ; Code: movl 0x11b00(%rax), %ecx	 RIP: 432b22	 Bytes: 6
  %loadMem_432b22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432b22 = call %struct.Memory* @routine_movl_0x11b00__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432b22)
  store %struct.Memory* %call_432b22, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 432b28	 Bytes: 8
  %loadMem_432b28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432b28 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432b28)
  store %struct.Memory* %call_432b28, %struct.Memory** %MEMORY

  ; Code: cmpl 0x11b04(%rax), %ecx	 RIP: 432b30	 Bytes: 6
  %loadMem_432b30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432b30 = call %struct.Memory* @routine_cmpl_0x11b04__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432b30)
  store %struct.Memory* %call_432b30, %struct.Memory** %MEMORY

  ; Code: jge .L_432b52	 RIP: 432b36	 Bytes: 6
  %loadMem_432b36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432b36 = call %struct.Memory* @routine_jge_.L_432b52(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432b36, i8* %BRANCH_TAKEN, i64 28, i64 6, i64 6)
  store %struct.Memory* %call_432b36, %struct.Memory** %MEMORY

  %loadBr_432b36 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_432b36 = icmp eq i8 %loadBr_432b36, 1
  br i1 %cmpBr_432b36, label %block_.L_432b52, label %block_432b3c

block_432b3c:
  ; Code: movq 0x6cb900, %rax	 RIP: 432b3c	 Bytes: 8
  %loadMem_432b3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432b3c = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432b3c)
  store %struct.Memory* %call_432b3c, %struct.Memory** %MEMORY

  ; Code: movl 0x11b00(%rax), %ecx	 RIP: 432b44	 Bytes: 6
  %loadMem_432b44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432b44 = call %struct.Memory* @routine_movl_0x11b00__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432b44)
  store %struct.Memory* %call_432b44, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x40(%rbp)	 RIP: 432b4a	 Bytes: 3
  %loadMem_432b4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432b4a = call %struct.Memory* @routine_movl__ecx__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432b4a)
  store %struct.Memory* %call_432b4a, %struct.Memory** %MEMORY

  ; Code: jmpq .L_432b63	 RIP: 432b4d	 Bytes: 5
  %loadMem_432b4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432b4d = call %struct.Memory* @routine_jmpq_.L_432b63(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432b4d, i64 22, i64 5)
  store %struct.Memory* %call_432b4d, %struct.Memory** %MEMORY

  br label %block_.L_432b63

  ; Code: .L_432b52:	 RIP: 432b52	 Bytes: 0
block_.L_432b52:

  ; Code: movq 0x6cb900, %rax	 RIP: 432b52	 Bytes: 8
  %loadMem_432b52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432b52 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432b52)
  store %struct.Memory* %call_432b52, %struct.Memory** %MEMORY

  ; Code: movl 0x11b04(%rax), %ecx	 RIP: 432b5a	 Bytes: 6
  %loadMem_432b5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432b5a = call %struct.Memory* @routine_movl_0x11b04__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432b5a)
  store %struct.Memory* %call_432b5a, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x40(%rbp)	 RIP: 432b60	 Bytes: 3
  %loadMem_432b60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432b60 = call %struct.Memory* @routine_movl__ecx__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432b60)
  store %struct.Memory* %call_432b60, %struct.Memory** %MEMORY

  ; Code: .L_432b63:	 RIP: 432b63	 Bytes: 0
  br label %block_.L_432b63
block_.L_432b63:

  ; Code: movl -0x40(%rbp), %eax	 RIP: 432b63	 Bytes: 3
  %loadMem_432b63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432b63 = call %struct.Memory* @routine_movl_MINUS0x40__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432b63)
  store %struct.Memory* %call_432b63, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 432b66	 Bytes: 8
  %loadMem_432b66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432b66 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432b66)
  store %struct.Memory* %call_432b66, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x11b08(%rcx)	 RIP: 432b6e	 Bytes: 6
  %loadMem_432b6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432b6e = call %struct.Memory* @routine_movl__eax__0x11b08__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432b6e)
  store %struct.Memory* %call_432b6e, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rcx	 RIP: 432b74	 Bytes: 8
  %loadMem_432b74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432b74 = call %struct.Memory* @routine_movq_0x6cb8f8___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432b74)
  store %struct.Memory* %call_432b74, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x524(%rcx)	 RIP: 432b7c	 Bytes: 7
  %loadMem_432b7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432b7c = call %struct.Memory* @routine_cmpl__0x0__0x524__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432b7c)
  store %struct.Memory* %call_432b7c, %struct.Memory** %MEMORY

  ; Code: jne .L_432b9e	 RIP: 432b83	 Bytes: 6
  %loadMem_432b83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432b83 = call %struct.Memory* @routine_jne_.L_432b9e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432b83, i8* %BRANCH_TAKEN, i64 27, i64 6, i64 6)
  store %struct.Memory* %call_432b83, %struct.Memory** %MEMORY

  %loadBr_432b83 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_432b83 = icmp eq i8 %loadBr_432b83, 1
  br i1 %cmpBr_432b83, label %block_.L_432b9e, label %block_432b89

block_432b89:
  ; Code: movq 0x6cb8f8, %rax	 RIP: 432b89	 Bytes: 8
  %loadMem_432b89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432b89 = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432b89)
  store %struct.Memory* %call_432b89, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x528(%rax)	 RIP: 432b91	 Bytes: 7
  %loadMem_432b91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432b91 = call %struct.Memory* @routine_cmpl__0x0__0x528__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432b91)
  store %struct.Memory* %call_432b91, %struct.Memory** %MEMORY

  ; Code: je .L_432bc4	 RIP: 432b98	 Bytes: 6
  %loadMem_432b98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432b98 = call %struct.Memory* @routine_je_.L_432bc4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432b98, i8* %BRANCH_TAKEN, i64 44, i64 6, i64 6)
  store %struct.Memory* %call_432b98, %struct.Memory** %MEMORY

  %loadBr_432b98 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_432b98 = icmp eq i8 %loadBr_432b98, 1
  br i1 %cmpBr_432b98, label %block_.L_432bc4, label %block_.L_432b9e

  ; Code: .L_432b9e:	 RIP: 432b9e	 Bytes: 0
block_.L_432b9e:

  ; Code: movq 0x6cb8f8, %rax	 RIP: 432b9e	 Bytes: 8
  %loadMem_432b9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432b9e = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432b9e)
  store %struct.Memory* %call_432b9e, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x4d4(%rax)	 RIP: 432ba6	 Bytes: 7
  %loadMem_432ba6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432ba6 = call %struct.Memory* @routine_cmpl__0x0__0x4d4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432ba6)
  store %struct.Memory* %call_432ba6, %struct.Memory** %MEMORY

  ; Code: je .L_432bc4	 RIP: 432bad	 Bytes: 6
  %loadMem_432bad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432bad = call %struct.Memory* @routine_je_.L_432bc4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432bad, i8* %BRANCH_TAKEN, i64 23, i64 6, i64 6)
  store %struct.Memory* %call_432bad, %struct.Memory** %MEMORY

  %loadBr_432bad = load i8, i8* %BRANCH_TAKEN
  %cmpBr_432bad = icmp eq i8 %loadBr_432bad, 1
  br i1 %cmpBr_432bad, label %block_.L_432bc4, label %block_432bb3

block_432bb3:
  ; Code: movq 0x6cb900, %rax	 RIP: 432bb3	 Bytes: 8
  %loadMem_432bb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432bb3 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432bb3)
  store %struct.Memory* %call_432bb3, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, (%rax)	 RIP: 432bbb	 Bytes: 3
  %loadMem_432bbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432bbb = call %struct.Memory* @routine_cmpl__0x2____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432bbb)
  store %struct.Memory* %call_432bbb, %struct.Memory** %MEMORY

  ; Code: jge .L_432c6c	 RIP: 432bbe	 Bytes: 6
  %loadMem_432bbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432bbe = call %struct.Memory* @routine_jge_.L_432c6c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432bbe, i8* %BRANCH_TAKEN, i64 174, i64 6, i64 6)
  store %struct.Memory* %call_432bbe, %struct.Memory** %MEMORY

  %loadBr_432bbe = load i8, i8* %BRANCH_TAKEN
  %cmpBr_432bbe = icmp eq i8 %loadBr_432bbe, 1
  br i1 %cmpBr_432bbe, label %block_.L_432c6c, label %block_.L_432bc4

  ; Code: .L_432bc4:	 RIP: 432bc4	 Bytes: 0
block_.L_432bc4:

  ; Code: movq 0x6cb8f8, %rax	 RIP: 432bc4	 Bytes: 8
  %loadMem_432bc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432bc4 = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432bc4)
  store %struct.Memory* %call_432bc4, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x4c8(%rax)	 RIP: 432bcc	 Bytes: 7
  %loadMem_432bcc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432bcc = call %struct.Memory* @routine_cmpl__0x0__0x4c8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432bcc)
  store %struct.Memory* %call_432bcc, %struct.Memory** %MEMORY

  ; Code: je .L_432c20	 RIP: 432bd3	 Bytes: 6
  %loadMem_432bd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432bd3 = call %struct.Memory* @routine_je_.L_432c20(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432bd3, i8* %BRANCH_TAKEN, i64 77, i64 6, i64 6)
  store %struct.Memory* %call_432bd3, %struct.Memory** %MEMORY

  %loadBr_432bd3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_432bd3 = icmp eq i8 %loadBr_432bd3, 1
  br i1 %cmpBr_432bd3, label %block_.L_432c20, label %block_432bd9

block_432bd9:
  ; Code: movq 0x6cb8f8, %rax	 RIP: 432bd9	 Bytes: 8
  %loadMem_432bd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432bd9 = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432bd9)
  store %struct.Memory* %call_432bd9, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x4cc(%rax)	 RIP: 432be1	 Bytes: 7
  %loadMem_432be1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432be1 = call %struct.Memory* @routine_cmpl__0x0__0x4cc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432be1)
  store %struct.Memory* %call_432be1, %struct.Memory** %MEMORY

  ; Code: je .L_432c20	 RIP: 432be8	 Bytes: 6
  %loadMem_432be8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432be8 = call %struct.Memory* @routine_je_.L_432c20(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432be8, i8* %BRANCH_TAKEN, i64 56, i64 6, i64 6)
  store %struct.Memory* %call_432be8, %struct.Memory** %MEMORY

  %loadBr_432be8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_432be8 = icmp eq i8 %loadBr_432be8, 1
  br i1 %cmpBr_432be8, label %block_.L_432c20, label %block_432bee

block_432bee:
  ; Code: movq 0x6cb900, %rax	 RIP: 432bee	 Bytes: 8
  %loadMem_432bee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432bee = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432bee)
  store %struct.Memory* %call_432bee, %struct.Memory** %MEMORY

  ; Code: movl (%rax), %ecx	 RIP: 432bf6	 Bytes: 2
  %loadMem_432bf6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432bf6 = call %struct.Memory* @routine_movl___rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432bf6)
  store %struct.Memory* %call_432bf6, %struct.Memory** %MEMORY

  ; Code: subl 0x6cc020, %ecx	 RIP: 432bf8	 Bytes: 7
  %loadMem_432bf8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432bf8 = call %struct.Memory* @routine_subl_0x6cc020___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432bf8)
  store %struct.Memory* %call_432bf8, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rax	 RIP: 432bff	 Bytes: 8
  %loadMem_432bff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432bff = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432bff)
  store %struct.Memory* %call_432bff, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x48(%rbp)	 RIP: 432c07	 Bytes: 4
  %loadMem_432c07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432c07 = call %struct.Memory* @routine_movq__rax__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432c07)
  store %struct.Memory* %call_432c07, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %eax	 RIP: 432c0b	 Bytes: 2
  %loadMem_432c0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432c0b = call %struct.Memory* @routine_movl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432c0b)
  store %struct.Memory* %call_432c0b, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 432c0d	 Bytes: 1
  %loadMem_432c0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432c0d = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432c0d)
  store %struct.Memory* %call_432c0d, %struct.Memory** %MEMORY

  ; Code: movq -0x48(%rbp), %rsi	 RIP: 432c0e	 Bytes: 4
  %loadMem_432c0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432c0e = call %struct.Memory* @routine_movq_MINUS0x48__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432c0e)
  store %struct.Memory* %call_432c0e, %struct.Memory** %MEMORY

  ; Code: idivl 0x4c8(%rsi)	 RIP: 432c12	 Bytes: 6
  %loadMem_432c12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432c12 = call %struct.Memory* @routine_idivl_0x4c8__rsi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432c12)
  store %struct.Memory* %call_432c12, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x4c(%rbp)	 RIP: 432c18	 Bytes: 3
  %loadMem_432c18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432c18 = call %struct.Memory* @routine_movl__edx__MINUS0x4c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432c18)
  store %struct.Memory* %call_432c18, %struct.Memory** %MEMORY

  ; Code: jmpq .L_432c34	 RIP: 432c1b	 Bytes: 5
  %loadMem_432c1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432c1b = call %struct.Memory* @routine_jmpq_.L_432c34(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432c1b, i64 25, i64 5)
  store %struct.Memory* %call_432c1b, %struct.Memory** %MEMORY

  br label %block_.L_432c34

  ; Code: .L_432c20:	 RIP: 432c20	 Bytes: 0
block_.L_432c20:

  ; Code: movq 0x6cb900, %rax	 RIP: 432c20	 Bytes: 8
  %loadMem_432c20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432c20 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432c20)
  store %struct.Memory* %call_432c20, %struct.Memory** %MEMORY

  ; Code: movl (%rax), %ecx	 RIP: 432c28	 Bytes: 2
  %loadMem_432c28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432c28 = call %struct.Memory* @routine_movl___rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432c28)
  store %struct.Memory* %call_432c28, %struct.Memory** %MEMORY

  ; Code: subl 0x6cc020, %ecx	 RIP: 432c2a	 Bytes: 7
  %loadMem_432c2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432c2a = call %struct.Memory* @routine_subl_0x6cc020___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432c2a)
  store %struct.Memory* %call_432c2a, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x4c(%rbp)	 RIP: 432c31	 Bytes: 3
  %loadMem_432c31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432c31 = call %struct.Memory* @routine_movl__ecx__MINUS0x4c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432c31)
  store %struct.Memory* %call_432c31, %struct.Memory** %MEMORY

  ; Code: .L_432c34:	 RIP: 432c34	 Bytes: 0
  br label %block_.L_432c34
block_.L_432c34:

  ; Code: movl -0x4c(%rbp), %eax	 RIP: 432c34	 Bytes: 3
  %loadMem_432c34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432c34 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432c34)
  store %struct.Memory* %call_432c34, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %ecx	 RIP: 432c37	 Bytes: 5
  %loadMem_432c37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432c37 = call %struct.Memory* @routine_movl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432c37)
  store %struct.Memory* %call_432c37, %struct.Memory** %MEMORY

  ; Code: movl 0x722c98, %edx	 RIP: 432c3c	 Bytes: 7
  %loadMem_432c3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432c3c = call %struct.Memory* @routine_movl_0x722c98___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432c3c)
  store %struct.Memory* %call_432c3c, %struct.Memory** %MEMORY

  ; Code: addl $0x4, %edx	 RIP: 432c43	 Bytes: 3
  %loadMem_432c43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432c43 = call %struct.Memory* @routine_addl__0x4___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432c43)
  store %struct.Memory* %call_432c43, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x50(%rbp)	 RIP: 432c46	 Bytes: 3
  %loadMem_432c46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432c46 = call %struct.Memory* @routine_movl__ecx__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432c46)
  store %struct.Memory* %call_432c46, %struct.Memory** %MEMORY

  ; Code: movl %edx, %ecx	 RIP: 432c49	 Bytes: 2
  %loadMem_432c49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432c49 = call %struct.Memory* @routine_movl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432c49)
  store %struct.Memory* %call_432c49, %struct.Memory** %MEMORY

  ; Code: movl -0x50(%rbp), %edx	 RIP: 432c4b	 Bytes: 3
  %loadMem_432c4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432c4b = call %struct.Memory* @routine_movl_MINUS0x50__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432c4b)
  store %struct.Memory* %call_432c4b, %struct.Memory** %MEMORY

  ; Code: shll %cl, %edx	 RIP: 432c4e	 Bytes: 2
  %loadMem_432c4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432c4e = call %struct.Memory* @routine_shll__cl___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432c4e)
  store %struct.Memory* %call_432c4e, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x54(%rbp)	 RIP: 432c50	 Bytes: 3
  %loadMem_432c50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432c50 = call %struct.Memory* @routine_movl__edx__MINUS0x54__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432c50)
  store %struct.Memory* %call_432c50, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 432c53	 Bytes: 1
  %loadMem_432c53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432c53 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432c53)
  store %struct.Memory* %call_432c53, %struct.Memory** %MEMORY

  ; Code: movl -0x54(%rbp), %esi	 RIP: 432c54	 Bytes: 3
  %loadMem_432c54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432c54 = call %struct.Memory* @routine_movl_MINUS0x54__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432c54)
  store %struct.Memory* %call_432c54, %struct.Memory** %MEMORY

  ; Code: idivl %esi	 RIP: 432c57	 Bytes: 2
  %loadMem_432c57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432c57 = call %struct.Memory* @routine_idivl__esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432c57)
  store %struct.Memory* %call_432c57, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rdi	 RIP: 432c59	 Bytes: 8
  %loadMem_432c59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432c59 = call %struct.Memory* @routine_movq_0x6cb900___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432c59)
  store %struct.Memory* %call_432c59, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0x11b10(%rdi)	 RIP: 432c61	 Bytes: 6
  %loadMem_432c61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432c61 = call %struct.Memory* @routine_movl__edx__0x11b10__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432c61)
  store %struct.Memory* %call_432c61, %struct.Memory** %MEMORY

  ; Code: jmpq .L_432d2a	 RIP: 432c67	 Bytes: 5
  %loadMem_432c67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432c67 = call %struct.Memory* @routine_jmpq_.L_432d2a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432c67, i64 195, i64 5)
  store %struct.Memory* %call_432c67, %struct.Memory** %MEMORY

  br label %block_.L_432d2a

  ; Code: .L_432c6c:	 RIP: 432c6c	 Bytes: 0
block_.L_432c6c:

  ; Code: movq 0x6cb900, %rax	 RIP: 432c6c	 Bytes: 8
  %loadMem_432c6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432c6c = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432c6c)
  store %struct.Memory* %call_432c6c, %struct.Memory** %MEMORY

  ; Code: movl 0x11b10(%rax), %ecx	 RIP: 432c74	 Bytes: 6
  %loadMem_432c74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432c74 = call %struct.Memory* @routine_movl_0x11b10__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432c74)
  store %struct.Memory* %call_432c74, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 432c7a	 Bytes: 3
  %loadMem_432c7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432c7a = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432c7a)
  store %struct.Memory* %call_432c7a, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x11b10(%rax)	 RIP: 432c7d	 Bytes: 6
  %loadMem_432c7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432c7d = call %struct.Memory* @routine_movl__ecx__0x11b10__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432c7d)
  store %struct.Memory* %call_432c7d, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rax	 RIP: 432c83	 Bytes: 8
  %loadMem_432c83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432c83 = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432c83)
  store %struct.Memory* %call_432c83, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x4c8(%rax)	 RIP: 432c8b	 Bytes: 7
  %loadMem_432c8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432c8b = call %struct.Memory* @routine_cmpl__0x0__0x4c8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432c8b)
  store %struct.Memory* %call_432c8b, %struct.Memory** %MEMORY

  ; Code: je .L_432cef	 RIP: 432c92	 Bytes: 6
  %loadMem_432c92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432c92 = call %struct.Memory* @routine_je_.L_432cef(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432c92, i8* %BRANCH_TAKEN, i64 93, i64 6, i64 6)
  store %struct.Memory* %call_432c92, %struct.Memory** %MEMORY

  %loadBr_432c92 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_432c92 = icmp eq i8 %loadBr_432c92, 1
  br i1 %cmpBr_432c92, label %block_.L_432cef, label %block_432c98

block_432c98:
  ; Code: movq 0x6cb8f8, %rax	 RIP: 432c98	 Bytes: 8
  %loadMem_432c98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432c98 = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432c98)
  store %struct.Memory* %call_432c98, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x4cc(%rax)	 RIP: 432ca0	 Bytes: 7
  %loadMem_432ca0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432ca0 = call %struct.Memory* @routine_cmpl__0x0__0x4cc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432ca0)
  store %struct.Memory* %call_432ca0, %struct.Memory** %MEMORY

  ; Code: je .L_432cef	 RIP: 432ca7	 Bytes: 6
  %loadMem_432ca7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432ca7 = call %struct.Memory* @routine_je_.L_432cef(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432ca7, i8* %BRANCH_TAKEN, i64 72, i64 6, i64 6)
  store %struct.Memory* %call_432ca7, %struct.Memory** %MEMORY

  %loadBr_432ca7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_432ca7 = icmp eq i8 %loadBr_432ca7, 1
  br i1 %cmpBr_432ca7, label %block_.L_432cef, label %block_432cad

block_432cad:
  ; Code: xorl %eax, %eax	 RIP: 432cad	 Bytes: 2
  %loadMem_432cad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432cad = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432cad)
  store %struct.Memory* %call_432cad, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 432caf	 Bytes: 8
  %loadMem_432caf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432caf = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432caf)
  store %struct.Memory* %call_432caf, %struct.Memory** %MEMORY

  ; Code: movl (%rcx), %edx	 RIP: 432cb7	 Bytes: 2
  %loadMem_432cb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432cb7 = call %struct.Memory* @routine_movl___rcx____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432cb7)
  store %struct.Memory* %call_432cb7, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rcx	 RIP: 432cb9	 Bytes: 8
  %loadMem_432cb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432cb9 = call %struct.Memory* @routine_movq_0x6cb8f8___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432cb9)
  store %struct.Memory* %call_432cb9, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x58(%rbp)	 RIP: 432cc1	 Bytes: 3
  %loadMem_432cc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432cc1 = call %struct.Memory* @routine_movl__eax__MINUS0x58__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432cc1)
  store %struct.Memory* %call_432cc1, %struct.Memory** %MEMORY

  ; Code: movl %edx, %eax	 RIP: 432cc4	 Bytes: 2
  %loadMem_432cc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432cc4 = call %struct.Memory* @routine_movl__edx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432cc4)
  store %struct.Memory* %call_432cc4, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 432cc6	 Bytes: 1
  %loadMem_432cc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432cc6 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432cc6)
  store %struct.Memory* %call_432cc6, %struct.Memory** %MEMORY

  ; Code: idivl 0x4c8(%rcx)	 RIP: 432cc7	 Bytes: 6
  %loadMem_432cc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432cc7 = call %struct.Memory* @routine_idivl_0x4c8__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432cc7)
  store %struct.Memory* %call_432cc7, %struct.Memory** %MEMORY

  ; Code: movl -0x58(%rbp), %esi	 RIP: 432ccd	 Bytes: 3
  %loadMem_432ccd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432ccd = call %struct.Memory* @routine_movl_MINUS0x58__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432ccd)
  store %struct.Memory* %call_432ccd, %struct.Memory** %MEMORY

  ; Code: cmpl %edx, %esi	 RIP: 432cd0	 Bytes: 2
  %loadMem_432cd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432cd0 = call %struct.Memory* @routine_cmpl__edx___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432cd0)
  store %struct.Memory* %call_432cd0, %struct.Memory** %MEMORY

  ; Code: jne .L_432cea	 RIP: 432cd2	 Bytes: 6
  %loadMem_432cd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432cd2 = call %struct.Memory* @routine_jne_.L_432cea(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432cd2, i8* %BRANCH_TAKEN, i64 24, i64 6, i64 6)
  store %struct.Memory* %call_432cd2, %struct.Memory** %MEMORY

  %loadBr_432cd2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_432cd2 = icmp eq i8 %loadBr_432cd2, 1
  br i1 %cmpBr_432cd2, label %block_.L_432cea, label %block_432cd8

block_432cd8:
  ; Code: movq 0x6cb900, %rax	 RIP: 432cd8	 Bytes: 8
  %loadMem_432cd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432cd8 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432cd8)
  store %struct.Memory* %call_432cd8, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x11b10(%rax)	 RIP: 432ce0	 Bytes: 10
  %loadMem_432ce0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432ce0 = call %struct.Memory* @routine_movl__0x0__0x11b10__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432ce0)
  store %struct.Memory* %call_432ce0, %struct.Memory** %MEMORY

  ; Code: .L_432cea:	 RIP: 432cea	 Bytes: 0
  br label %block_.L_432cea
block_.L_432cea:

  ; Code: jmpq .L_432cef	 RIP: 432cea	 Bytes: 5
  %loadMem_432cea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432cea = call %struct.Memory* @routine_jmpq_.L_432cef(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432cea, i64 5, i64 5)
  store %struct.Memory* %call_432cea, %struct.Memory** %MEMORY

  br label %block_.L_432cef

  ; Code: .L_432cef:	 RIP: 432cef	 Bytes: 0
block_.L_432cef:

  ; Code: movl $0x1, %eax	 RIP: 432cef	 Bytes: 5
  %loadMem_432cef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432cef = call %struct.Memory* @routine_movl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432cef)
  store %struct.Memory* %call_432cef, %struct.Memory** %MEMORY

  ; Code: movl 0x722c98, %ecx	 RIP: 432cf4	 Bytes: 7
  %loadMem_432cf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432cf4 = call %struct.Memory* @routine_movl_0x722c98___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432cf4)
  store %struct.Memory* %call_432cf4, %struct.Memory** %MEMORY

  ; Code: addl $0x4, %ecx	 RIP: 432cfb	 Bytes: 3
  %loadMem_432cfb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432cfb = call %struct.Memory* @routine_addl__0x4___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432cfb)
  store %struct.Memory* %call_432cfb, %struct.Memory** %MEMORY

  ; Code: shll %cl, %eax	 RIP: 432cfe	 Bytes: 2
  %loadMem_432cfe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432cfe = call %struct.Memory* @routine_shll__cl___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432cfe)
  store %struct.Memory* %call_432cfe, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rdx	 RIP: 432d00	 Bytes: 8
  %loadMem_432d00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432d00 = call %struct.Memory* @routine_movq_0x6cb900___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432d00)
  store %struct.Memory* %call_432d00, %struct.Memory** %MEMORY

  ; Code: movl 0x11b10(%rdx), %esi	 RIP: 432d08	 Bytes: 6
  %loadMem_432d08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432d08 = call %struct.Memory* @routine_movl_0x11b10__rdx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432d08)
  store %struct.Memory* %call_432d08, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x5c(%rbp)	 RIP: 432d0e	 Bytes: 3
  %loadMem_432d0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432d0e = call %struct.Memory* @routine_movl__eax__MINUS0x5c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432d0e)
  store %struct.Memory* %call_432d0e, %struct.Memory** %MEMORY

  ; Code: movl %esi, %eax	 RIP: 432d11	 Bytes: 2
  %loadMem_432d11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432d11 = call %struct.Memory* @routine_movl__esi___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432d11)
  store %struct.Memory* %call_432d11, %struct.Memory** %MEMORY

  ; Code: xorl %esi, %esi	 RIP: 432d13	 Bytes: 2
  %loadMem_432d13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432d13 = call %struct.Memory* @routine_xorl__esi___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432d13)
  store %struct.Memory* %call_432d13, %struct.Memory** %MEMORY

  ; Code: movq %rdx, -0x68(%rbp)	 RIP: 432d15	 Bytes: 4
  %loadMem_432d15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432d15 = call %struct.Memory* @routine_movq__rdx__MINUS0x68__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432d15)
  store %struct.Memory* %call_432d15, %struct.Memory** %MEMORY

  ; Code: movl %esi, %edx	 RIP: 432d19	 Bytes: 2
  %loadMem_432d19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432d19 = call %struct.Memory* @routine_movl__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432d19)
  store %struct.Memory* %call_432d19, %struct.Memory** %MEMORY

  ; Code: movl -0x5c(%rbp), %esi	 RIP: 432d1b	 Bytes: 3
  %loadMem_432d1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432d1b = call %struct.Memory* @routine_movl_MINUS0x5c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432d1b)
  store %struct.Memory* %call_432d1b, %struct.Memory** %MEMORY

  ; Code: divl %esi	 RIP: 432d1e	 Bytes: 2
  %loadMem_432d1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432d1e = call %struct.Memory* @routine_divl__esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432d1e)
  store %struct.Memory* %call_432d1e, %struct.Memory** %MEMORY

  ; Code: movq -0x68(%rbp), %rdi	 RIP: 432d20	 Bytes: 4
  %loadMem_432d20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432d20 = call %struct.Memory* @routine_movq_MINUS0x68__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432d20)
  store %struct.Memory* %call_432d20, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0x11b10(%rdi)	 RIP: 432d24	 Bytes: 6
  %loadMem_432d24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432d24 = call %struct.Memory* @routine_movl__edx__0x11b10__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432d24)
  store %struct.Memory* %call_432d24, %struct.Memory** %MEMORY

  ; Code: .L_432d2a:	 RIP: 432d2a	 Bytes: 0
  br label %block_.L_432d2a
block_.L_432d2a:

  ; Code: movq 0x6cb900, %rax	 RIP: 432d2a	 Bytes: 8
  %loadMem_432d2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432d2a = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432d2a)
  store %struct.Memory* %call_432d2a, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x11af4(%rax)	 RIP: 432d32	 Bytes: 10
  %loadMem_432d32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432d32 = call %struct.Memory* @routine_movl__0x0__0x11af4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432d32)
  store %struct.Memory* %call_432d32, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rax	 RIP: 432d3c	 Bytes: 8
  %loadMem_432d3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432d3c = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432d3c)
  store %struct.Memory* %call_432d3c, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x524(%rax)	 RIP: 432d44	 Bytes: 7
  %loadMem_432d44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432d44 = call %struct.Memory* @routine_cmpl__0x0__0x524__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432d44)
  store %struct.Memory* %call_432d44, %struct.Memory** %MEMORY

  ; Code: je .L_432d86	 RIP: 432d4b	 Bytes: 6
  %loadMem_432d4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432d4b = call %struct.Memory* @routine_je_.L_432d86(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432d4b, i8* %BRANCH_TAKEN, i64 59, i64 6, i64 6)
  store %struct.Memory* %call_432d4b, %struct.Memory** %MEMORY

  %loadBr_432d4b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_432d4b = icmp eq i8 %loadBr_432d4b, 1
  br i1 %cmpBr_432d4b, label %block_.L_432d86, label %block_432d51

block_432d51:
  ; Code: movq 0x6cb900, %rax	 RIP: 432d51	 Bytes: 8
  %loadMem_432d51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432d51 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432d51)
  store %struct.Memory* %call_432d51, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, (%rax)	 RIP: 432d59	 Bytes: 3
  %loadMem_432d59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432d59 = call %struct.Memory* @routine_cmpl__0x0____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432d59)
  store %struct.Memory* %call_432d59, %struct.Memory** %MEMORY

  ; Code: je .L_432d81	 RIP: 432d5c	 Bytes: 6
  %loadMem_432d5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432d5c = call %struct.Memory* @routine_je_.L_432d81(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432d5c, i8* %BRANCH_TAKEN, i64 37, i64 6, i64 6)
  store %struct.Memory* %call_432d5c, %struct.Memory** %MEMORY

  %loadBr_432d5c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_432d5c = icmp eq i8 %loadBr_432d5c, 1
  br i1 %cmpBr_432d5c, label %block_.L_432d81, label %block_432d62

block_432d62:
  ; Code: movq 0x6cb8f8, %rax	 RIP: 432d62	 Bytes: 8
  %loadMem_432d62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432d62 = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432d62)
  store %struct.Memory* %call_432d62, %struct.Memory** %MEMORY

  ; Code: movl 0x4d4(%rax), %ecx	 RIP: 432d6a	 Bytes: 6
  %loadMem_432d6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432d6a = call %struct.Memory* @routine_movl_0x4d4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432d6a)
  store %struct.Memory* %call_432d6a, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %ecx	 RIP: 432d70	 Bytes: 3
  %loadMem_432d70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432d70 = call %struct.Memory* @routine_shll__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432d70)
  store %struct.Memory* %call_432d70, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 432d73	 Bytes: 8
  %loadMem_432d73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432d73 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432d73)
  store %struct.Memory* %call_432d73, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x11af4(%rax)	 RIP: 432d7b	 Bytes: 6
  %loadMem_432d7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432d7b = call %struct.Memory* @routine_movl__ecx__0x11af4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432d7b)
  store %struct.Memory* %call_432d7b, %struct.Memory** %MEMORY

  ; Code: .L_432d81:	 RIP: 432d81	 Bytes: 0
  br label %block_.L_432d81
block_.L_432d81:

  ; Code: jmpq .L_432d86	 RIP: 432d81	 Bytes: 5
  %loadMem_432d81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432d81 = call %struct.Memory* @routine_jmpq_.L_432d86(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432d81, i64 5, i64 5)
  store %struct.Memory* %call_432d81, %struct.Memory** %MEMORY

  br label %block_.L_432d86

  ; Code: .L_432d86:	 RIP: 432d86	 Bytes: 0
block_.L_432d86:

  ; Code: callq .SetImgType	 RIP: 432d86	 Bytes: 5
  %loadMem1_432d86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_432d86 = call %struct.Memory* @routine_callq_.SetImgType(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_432d86, i64 8378, i64 5, i64 5)
  store %struct.Memory* %call1_432d86, %struct.Memory** %MEMORY

  %loadMem2_432d86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_432d86 = load i64, i64* %3
  %call2_432d86 = call %struct.Memory* @sub_434e40.SetImgType(%struct.State* %0, i64  %loadPC_432d86, %struct.Memory* %loadMem2_432d86)
  store %struct.Memory* %call2_432d86, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rax	 RIP: 432d8b	 Bytes: 8
  %loadMem_432d8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432d8b = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432d8b)
  store %struct.Memory* %call_432d8b, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x4d4(%rax)	 RIP: 432d93	 Bytes: 7
  %loadMem_432d93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432d93 = call %struct.Memory* @routine_cmpl__0x0__0x4d4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432d93)
  store %struct.Memory* %call_432d93, %struct.Memory** %MEMORY

  ; Code: je .L_432ed5	 RIP: 432d9a	 Bytes: 6
  %loadMem_432d9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432d9a = call %struct.Memory* @routine_je_.L_432ed5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432d9a, i8* %BRANCH_TAKEN, i64 315, i64 6, i64 6)
  store %struct.Memory* %call_432d9a, %struct.Memory** %MEMORY

  %loadBr_432d9a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_432d9a = icmp eq i8 %loadBr_432d9a, 1
  br i1 %cmpBr_432d9a, label %block_.L_432ed5, label %block_432da0

block_432da0:
  ; Code: movq 0x6cb8f8, %rax	 RIP: 432da0	 Bytes: 8
  %loadMem_432da0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432da0 = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432da0)
  store %struct.Memory* %call_432da0, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x988(%rax)	 RIP: 432da8	 Bytes: 7
  %loadMem_432da8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432da8 = call %struct.Memory* @routine_cmpl__0x0__0x988__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432da8)
  store %struct.Memory* %call_432da8, %struct.Memory** %MEMORY

  ; Code: je .L_432ed5	 RIP: 432daf	 Bytes: 6
  %loadMem_432daf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432daf = call %struct.Memory* @routine_je_.L_432ed5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432daf, i8* %BRANCH_TAKEN, i64 294, i64 6, i64 6)
  store %struct.Memory* %call_432daf, %struct.Memory** %MEMORY

  %loadBr_432daf = load i8, i8* %BRANCH_TAKEN
  %cmpBr_432daf = icmp eq i8 %loadBr_432daf, 1
  br i1 %cmpBr_432daf, label %block_.L_432ed5, label %block_432db5

block_432db5:
  ; Code: movq 0x6cb900, %rax	 RIP: 432db5	 Bytes: 8
  %loadMem_432db5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432db5 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432db5)
  store %struct.Memory* %call_432db5, %struct.Memory** %MEMORY

  ; Code: movl (%rax), %ecx	 RIP: 432dbd	 Bytes: 2
  %loadMem_432dbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432dbd = call %struct.Memory* @routine_movl___rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432dbd)
  store %struct.Memory* %call_432dbd, %struct.Memory** %MEMORY

  ; Code: subl 0x6cc020, %ecx	 RIP: 432dbf	 Bytes: 7
  %loadMem_432dbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432dbf = call %struct.Memory* @routine_subl_0x6cc020___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432dbf)
  store %struct.Memory* %call_432dbf, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 432dc6	 Bytes: 3
  %loadMem_432dc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432dc6 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432dc6)
  store %struct.Memory* %call_432dc6, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rax	 RIP: 432dc9	 Bytes: 8
  %loadMem_432dc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432dc9 = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432dc9)
  store %struct.Memory* %call_432dc9, %struct.Memory** %MEMORY

  ; Code: cmpl 0x8(%rax), %ecx	 RIP: 432dd1	 Bytes: 3
  %loadMem_432dd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432dd1 = call %struct.Memory* @routine_cmpl_0x8__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432dd1)
  store %struct.Memory* %call_432dd1, %struct.Memory** %MEMORY

  ; Code: jne .L_432ed5	 RIP: 432dd4	 Bytes: 6
  %loadMem_432dd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432dd4 = call %struct.Memory* @routine_jne_.L_432ed5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432dd4, i8* %BRANCH_TAKEN, i64 257, i64 6, i64 6)
  store %struct.Memory* %call_432dd4, %struct.Memory** %MEMORY

  %loadBr_432dd4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_432dd4 = icmp eq i8 %loadBr_432dd4, 1
  br i1 %cmpBr_432dd4, label %block_.L_432ed5, label %block_432dda

block_432dda:
  ; Code: movsd 0x7eabe(%rip), %xmm0	 RIP: 432dda	 Bytes: 8
  %loadMem_432dda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432dda = call %struct.Memory* @routine_movsd_0x7eabe__rip____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432dda)
  store %struct.Memory* %call_432dda, %struct.Memory** %MEMORY

  ; Code: movsd 0x7ea76(%rip), %xmm1	 RIP: 432de2	 Bytes: 8
  %loadMem_432de2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432de2 = call %struct.Memory* @routine_movsd_0x7ea76__rip____xmm1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432de2)
  store %struct.Memory* %call_432de2, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rax	 RIP: 432dea	 Bytes: 8
  %loadMem_432dea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432dea = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432dea)
  store %struct.Memory* %call_432dea, %struct.Memory** %MEMORY

  ; Code: movl 0x14(%rax), %ecx	 RIP: 432df2	 Bytes: 3
  %loadMem_432df2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432df2 = call %struct.Memory* @routine_movl_0x14__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432df2)
  store %struct.Memory* %call_432df2, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 432df5	 Bytes: 3
  %loadMem_432df5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432df5 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432df5)
  store %struct.Memory* %call_432df5, %struct.Memory** %MEMORY

  ; Code: cvtsi2ssl %ecx, %xmm2	 RIP: 432df8	 Bytes: 4
  %loadMem_432df8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432df8 = call %struct.Memory* @routine_cvtsi2ssl__ecx___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432df8)
  store %struct.Memory* %call_432df8, %struct.Memory** %MEMORY

  ; Code: cvtss2sd %xmm2, %xmm2	 RIP: 432dfc	 Bytes: 4
  %loadMem_432dfc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432dfc = call %struct.Memory* @routine_cvtss2sd__xmm2___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432dfc)
  store %struct.Memory* %call_432dfc, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rax	 RIP: 432e00	 Bytes: 8
  %loadMem_432e00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432e00 = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432e00)
  store %struct.Memory* %call_432e00, %struct.Memory** %MEMORY

  ; Code: cvtsi2sdl 0x4d4(%rax), %xmm3	 RIP: 432e08	 Bytes: 8
  %loadMem_432e08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432e08 = call %struct.Memory* @routine_cvtsi2sdl_0x4d4__rax____xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432e08)
  store %struct.Memory* %call_432e08, %struct.Memory** %MEMORY

  ; Code: addsd %xmm1, %xmm3	 RIP: 432e10	 Bytes: 4
  %loadMem_432e10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432e10 = call %struct.Memory* @routine_addsd__xmm1___xmm3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432e10)
  store %struct.Memory* %call_432e10, %struct.Memory** %MEMORY

  ; Code: divsd %xmm3, %xmm2	 RIP: 432e14	 Bytes: 4
  %loadMem_432e14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432e14 = call %struct.Memory* @routine_divsd__xmm3___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432e14)
  store %struct.Memory* %call_432e14, %struct.Memory** %MEMORY

  ; Code: addsd %xmm0, %xmm2	 RIP: 432e18	 Bytes: 4
  %loadMem_432e18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432e18 = call %struct.Memory* @routine_addsd__xmm0___xmm2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432e18)
  store %struct.Memory* %call_432e18, %struct.Memory** %MEMORY

  ; Code: cvttsd2si %xmm2, %ecx	 RIP: 432e1c	 Bytes: 4
  %loadMem_432e1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432e1c = call %struct.Memory* @routine_cvttsd2si__xmm2___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432e1c)
  store %struct.Memory* %call_432e1c, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x28(%rbp)	 RIP: 432e20	 Bytes: 3
  %loadMem_432e20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432e20 = call %struct.Memory* @routine_movl__ecx__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432e20)
  store %struct.Memory* %call_432e20, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rax	 RIP: 432e23	 Bytes: 8
  %loadMem_432e23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432e23 = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432e23)
  store %struct.Memory* %call_432e23, %struct.Memory** %MEMORY

  ; Code: movl 0x988(%rax), %ecx	 RIP: 432e2b	 Bytes: 6
  %loadMem_432e2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432e2b = call %struct.Memory* @routine_movl_0x988__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432e2b)
  store %struct.Memory* %call_432e2b, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 432e31	 Bytes: 8
  %loadMem_432e31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432e31 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432e31)
  store %struct.Memory* %call_432e31, %struct.Memory** %MEMORY

  ; Code: movl (%rax), %edx	 RIP: 432e39	 Bytes: 2
  %loadMem_432e39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432e39 = call %struct.Memory* @routine_movl___rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432e39)
  store %struct.Memory* %call_432e39, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 432e3b	 Bytes: 3
  %loadMem_432e3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432e3b = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432e3b)
  store %struct.Memory* %call_432e3b, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rax	 RIP: 432e3e	 Bytes: 8
  %loadMem_432e3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432e3e = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432e3e)
  store %struct.Memory* %call_432e3e, %struct.Memory** %MEMORY

  ; Code: movl 0x14(%rax), %esi	 RIP: 432e46	 Bytes: 3
  %loadMem_432e46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432e46 = call %struct.Memory* @routine_movl_0x14__rax____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432e46)
  store %struct.Memory* %call_432e46, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %esi	 RIP: 432e49	 Bytes: 3
  %loadMem_432e49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432e49 = call %struct.Memory* @routine_addl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432e49)
  store %struct.Memory* %call_432e49, %struct.Memory** %MEMORY

  ; Code: imull %esi, %edx	 RIP: 432e4c	 Bytes: 3
  %loadMem_432e4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432e4c = call %struct.Memory* @routine_imull__esi___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432e4c)
  store %struct.Memory* %call_432e4c, %struct.Memory** %MEMORY

  ; Code: subl %edx, %ecx	 RIP: 432e4f	 Bytes: 2
  %loadMem_432e4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432e4f = call %struct.Memory* @routine_subl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432e4f)
  store %struct.Memory* %call_432e4f, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %eax	 RIP: 432e51	 Bytes: 2
  %loadMem_432e51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432e51 = call %struct.Memory* @routine_movl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432e51)
  store %struct.Memory* %call_432e51, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 432e53	 Bytes: 1
  %loadMem_432e53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432e53 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432e53)
  store %struct.Memory* %call_432e53, %struct.Memory** %MEMORY

  ; Code: idivl -0x28(%rbp)	 RIP: 432e54	 Bytes: 3
  %loadMem_432e54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432e54 = call %struct.Memory* @routine_idivl_MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432e54)
  store %struct.Memory* %call_432e54, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 432e57	 Bytes: 3
  %loadMem_432e57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432e57 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432e57)
  store %struct.Memory* %call_432e57, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rdi	 RIP: 432e5a	 Bytes: 8
  %loadMem_432e5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432e5a = call %struct.Memory* @routine_movq_0x6cb8f8___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432e5a)
  store %struct.Memory* %call_432e5a, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x4d4(%rdi)	 RIP: 432e62	 Bytes: 6
  %loadMem_432e62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432e62 = call %struct.Memory* @routine_movl__eax__0x4d4__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432e62)
  store %struct.Memory* %call_432e62, %struct.Memory** %MEMORY

  ; Code: movl 0x6cc018, %eax	 RIP: 432e68	 Bytes: 7
  %loadMem_432e68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432e68 = call %struct.Memory* @routine_movl_0x6cc018___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432e68)
  store %struct.Memory* %call_432e68, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rdi	 RIP: 432e6f	 Bytes: 8
  %loadMem_432e6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432e6f = call %struct.Memory* @routine_movq_0x6cb8f8___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432e6f)
  store %struct.Memory* %call_432e6f, %struct.Memory** %MEMORY

  ; Code: subl 0x4d4(%rdi), %eax	 RIP: 432e77	 Bytes: 6
  %loadMem_432e77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432e77 = call %struct.Memory* @routine_subl_0x4d4__rdi____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432e77)
  store %struct.Memory* %call_432e77, %struct.Memory** %MEMORY

  ; Code: imull $0xfffffffe, %eax, %eax	 RIP: 432e7d	 Bytes: 6
  %loadMem_432e7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432e7d = call %struct.Memory* @routine_imull__0xfffffffe___eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432e7d)
  store %struct.Memory* %call_432e7d, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rdi	 RIP: 432e83	 Bytes: 8
  %loadMem_432e83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432e83 = call %struct.Memory* @routine_movq_0x6cb900___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432e83)
  store %struct.Memory* %call_432e83, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x11af4(%rdi)	 RIP: 432e8b	 Bytes: 6
  %loadMem_432e8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432e8b = call %struct.Memory* @routine_movl__eax__0x11af4__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432e8b)
  store %struct.Memory* %call_432e8b, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rdi	 RIP: 432e91	 Bytes: 8
  %loadMem_432e91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432e91 = call %struct.Memory* @routine_movq_0x6cb900___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432e91)
  store %struct.Memory* %call_432e91, %struct.Memory** %MEMORY

  ; Code: movl 0x11af4(%rdi), %eax	 RIP: 432e99	 Bytes: 6
  %loadMem_432e99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432e99 = call %struct.Memory* @routine_movl_0x11af4__rdi____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432e99)
  store %struct.Memory* %call_432e99, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rdi	 RIP: 432e9f	 Bytes: 8
  %loadMem_432e9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432e9f = call %struct.Memory* @routine_movq_0x6cb900___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432e9f)
  store %struct.Memory* %call_432e9f, %struct.Memory** %MEMORY

  ; Code: addl 0x11b00(%rdi), %eax	 RIP: 432ea7	 Bytes: 6
  %loadMem_432ea7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432ea7 = call %struct.Memory* @routine_addl_0x11b00__rdi____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432ea7)
  store %struct.Memory* %call_432ea7, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x11b00(%rdi)	 RIP: 432ead	 Bytes: 6
  %loadMem_432ead = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432ead = call %struct.Memory* @routine_movl__eax__0x11b00__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432ead)
  store %struct.Memory* %call_432ead, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rdi	 RIP: 432eb3	 Bytes: 8
  %loadMem_432eb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432eb3 = call %struct.Memory* @routine_movq_0x6cb900___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432eb3)
  store %struct.Memory* %call_432eb3, %struct.Memory** %MEMORY

  ; Code: movl 0x11af4(%rdi), %eax	 RIP: 432ebb	 Bytes: 6
  %loadMem_432ebb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432ebb = call %struct.Memory* @routine_movl_0x11af4__rdi____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432ebb)
  store %struct.Memory* %call_432ebb, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rdi	 RIP: 432ec1	 Bytes: 8
  %loadMem_432ec1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432ec1 = call %struct.Memory* @routine_movq_0x6cb900___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432ec1)
  store %struct.Memory* %call_432ec1, %struct.Memory** %MEMORY

  ; Code: addl 0x11b04(%rdi), %eax	 RIP: 432ec9	 Bytes: 6
  %loadMem_432ec9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432ec9 = call %struct.Memory* @routine_addl_0x11b04__rdi____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432ec9)
  store %struct.Memory* %call_432ec9, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x11b04(%rdi)	 RIP: 432ecf	 Bytes: 6
  %loadMem_432ecf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432ecf = call %struct.Memory* @routine_movl__eax__0x11b04__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432ecf)
  store %struct.Memory* %call_432ecf, %struct.Memory** %MEMORY

  ; Code: .L_432ed5:	 RIP: 432ed5	 Bytes: 0
  br label %block_.L_432ed5
block_.L_432ed5:

  ; Code: movq 0x6cb900, %rax	 RIP: 432ed5	 Bytes: 8
  %loadMem_432ed5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432ed5 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432ed5)
  store %struct.Memory* %call_432ed5, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, 0x18(%rax)	 RIP: 432edd	 Bytes: 4
  %loadMem_432edd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432edd = call %struct.Memory* @routine_cmpl__0x2__0x18__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432edd)
  store %struct.Memory* %call_432edd, %struct.Memory** %MEMORY

  ; Code: jne .L_433116	 RIP: 432ee1	 Bytes: 6
  %loadMem_432ee1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432ee1 = call %struct.Memory* @routine_jne_.L_433116(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432ee1, i8* %BRANCH_TAKEN, i64 565, i64 6, i64 6)
  store %struct.Memory* %call_432ee1, %struct.Memory** %MEMORY

  %loadBr_432ee1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_432ee1 = icmp eq i8 %loadBr_432ee1, 1
  br i1 %cmpBr_432ee1, label %block_.L_433116, label %block_432ee7

block_432ee7:
  ; Code: movq 0x6cb8f8, %rax	 RIP: 432ee7	 Bytes: 8
  %loadMem_432ee7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432ee7 = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432ee7)
  store %struct.Memory* %call_432ee7, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0xca4(%rax)	 RIP: 432eef	 Bytes: 7
  %loadMem_432eef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432eef = call %struct.Memory* @routine_cmpl__0x0__0xca4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432eef)
  store %struct.Memory* %call_432eef, %struct.Memory** %MEMORY

  ; Code: je .L_433111	 RIP: 432ef6	 Bytes: 6
  %loadMem_432ef6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432ef6 = call %struct.Memory* @routine_je_.L_433111(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432ef6, i8* %BRANCH_TAKEN, i64 539, i64 6, i64 6)
  store %struct.Memory* %call_432ef6, %struct.Memory** %MEMORY

  %loadBr_432ef6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_432ef6 = icmp eq i8 %loadBr_432ef6, 1
  br i1 %cmpBr_432ef6, label %block_.L_433111, label %block_432efc

block_432efc:
  ; Code: movq 0x6cb8f8, %rax	 RIP: 432efc	 Bytes: 8
  %loadMem_432efc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432efc = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432efc)
  store %struct.Memory* %call_432efc, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x4c8(%rax)	 RIP: 432f04	 Bytes: 7
  %loadMem_432f04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432f04 = call %struct.Memory* @routine_cmpl__0x0__0x4c8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432f04)
  store %struct.Memory* %call_432f04, %struct.Memory** %MEMORY

  ; Code: jne .L_432f74	 RIP: 432f0b	 Bytes: 6
  %loadMem_432f0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432f0b = call %struct.Memory* @routine_jne_.L_432f74(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432f0b, i8* %BRANCH_TAKEN, i64 105, i64 6, i64 6)
  store %struct.Memory* %call_432f0b, %struct.Memory** %MEMORY

  %loadBr_432f0b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_432f0b = icmp eq i8 %loadBr_432f0b, 1
  br i1 %cmpBr_432f0b, label %block_.L_432f74, label %block_432f11

block_432f11:
  ; Code: movq 0x6cb8f8, %rax	 RIP: 432f11	 Bytes: 8
  %loadMem_432f11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432f11 = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432f11)
  store %struct.Memory* %call_432f11, %struct.Memory** %MEMORY

  ; Code: movl 0x8(%rax), %ecx	 RIP: 432f19	 Bytes: 3
  %loadMem_432f19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432f19 = call %struct.Memory* @routine_movl_0x8__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432f19)
  store %struct.Memory* %call_432f19, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rax	 RIP: 432f1c	 Bytes: 8
  %loadMem_432f1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432f1c = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432f1c)
  store %struct.Memory* %call_432f1c, %struct.Memory** %MEMORY

  ; Code: movl 0x8(%rax), %edx	 RIP: 432f24	 Bytes: 3
  %loadMem_432f24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432f24 = call %struct.Memory* @routine_movl_0x8__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432f24)
  store %struct.Memory* %call_432f24, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 432f27	 Bytes: 3
  %loadMem_432f27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432f27 = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432f27)
  store %struct.Memory* %call_432f27, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rax	 RIP: 432f2a	 Bytes: 8
  %loadMem_432f2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432f2a = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432f2a)
  store %struct.Memory* %call_432f2a, %struct.Memory** %MEMORY

  ; Code: imull 0x4d4(%rax), %edx	 RIP: 432f32	 Bytes: 7
  %loadMem_432f32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432f32 = call %struct.Memory* @routine_imull_0x4d4__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432f32)
  store %struct.Memory* %call_432f32, %struct.Memory** %MEMORY

  ; Code: addl %edx, %ecx	 RIP: 432f39	 Bytes: 2
  %loadMem_432f39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432f39 = call %struct.Memory* @routine_addl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432f39)
  store %struct.Memory* %call_432f39, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x1c(%rbp)	 RIP: 432f3b	 Bytes: 3
  %loadMem_432f3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432f3b = call %struct.Memory* @routine_movl__ecx__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432f3b)
  store %struct.Memory* %call_432f3b, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rax	 RIP: 432f3e	 Bytes: 8
  %loadMem_432f3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432f3e = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432f3e)
  store %struct.Memory* %call_432f3e, %struct.Memory** %MEMORY

  ; Code: movl 0x8(%rax), %ecx	 RIP: 432f46	 Bytes: 3
  %loadMem_432f46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432f46 = call %struct.Memory* @routine_movl_0x8__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432f46)
  store %struct.Memory* %call_432f46, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 432f49	 Bytes: 3
  %loadMem_432f49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432f49 = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432f49)
  store %struct.Memory* %call_432f49, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x20(%rbp)	 RIP: 432f4c	 Bytes: 3
  %loadMem_432f4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432f4c = call %struct.Memory* @routine_movl__ecx__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432f4c)
  store %struct.Memory* %call_432f4c, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rax	 RIP: 432f4f	 Bytes: 8
  %loadMem_432f4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432f4f = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432f4f)
  store %struct.Memory* %call_432f4f, %struct.Memory** %MEMORY

  ; Code: movl 0x8(%rax), %ecx	 RIP: 432f57	 Bytes: 3
  %loadMem_432f57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432f57 = call %struct.Memory* @routine_movl_0x8__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432f57)
  store %struct.Memory* %call_432f57, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 432f5a	 Bytes: 3
  %loadMem_432f5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432f5a = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432f5a)
  store %struct.Memory* %call_432f5a, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rax	 RIP: 432f5d	 Bytes: 8
  %loadMem_432f5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432f5d = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432f5d)
  store %struct.Memory* %call_432f5d, %struct.Memory** %MEMORY

  ; Code: imull 0x4d4(%rax), %ecx	 RIP: 432f65	 Bytes: 7
  %loadMem_432f65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432f65 = call %struct.Memory* @routine_imull_0x4d4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432f65)
  store %struct.Memory* %call_432f65, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x24(%rbp)	 RIP: 432f6c	 Bytes: 3
  %loadMem_432f6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432f6c = call %struct.Memory* @routine_movl__ecx__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432f6c)
  store %struct.Memory* %call_432f6c, %struct.Memory** %MEMORY

  ; Code: jmpq .L_433106	 RIP: 432f6f	 Bytes: 5
  %loadMem_432f6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432f6f = call %struct.Memory* @routine_jmpq_.L_433106(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432f6f, i64 407, i64 5)
  store %struct.Memory* %call_432f6f, %struct.Memory** %MEMORY

  br label %block_.L_433106

  ; Code: .L_432f74:	 RIP: 432f74	 Bytes: 0
block_.L_432f74:

  ; Code: movq 0x6cb8f8, %rax	 RIP: 432f74	 Bytes: 8
  %loadMem_432f74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432f74 = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432f74)
  store %struct.Memory* %call_432f74, %struct.Memory** %MEMORY

  ; Code: movl 0x4c8(%rax), %ecx	 RIP: 432f7c	 Bytes: 6
  %loadMem_432f7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432f7c = call %struct.Memory* @routine_movl_0x4c8__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432f7c)
  store %struct.Memory* %call_432f7c, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rax	 RIP: 432f82	 Bytes: 8
  %loadMem_432f82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432f82 = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432f82)
  store %struct.Memory* %call_432f82, %struct.Memory** %MEMORY

  ; Code: movl 0x4d4(%rax), %edx	 RIP: 432f8a	 Bytes: 6
  %loadMem_432f8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432f8a = call %struct.Memory* @routine_movl_0x4d4__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432f8a)
  store %struct.Memory* %call_432f8a, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 432f90	 Bytes: 3
  %loadMem_432f90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432f90 = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432f90)
  store %struct.Memory* %call_432f90, %struct.Memory** %MEMORY

  ; Code: imull %edx, %ecx	 RIP: 432f93	 Bytes: 3
  %loadMem_432f93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432f93 = call %struct.Memory* @routine_imull__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432f93)
  store %struct.Memory* %call_432f93, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x18(%rbp)	 RIP: 432f96	 Bytes: 3
  %loadMem_432f96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432f96 = call %struct.Memory* @routine_movl__ecx__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432f96)
  store %struct.Memory* %call_432f96, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rax	 RIP: 432f99	 Bytes: 8
  %loadMem_432f99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432f99 = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432f99)
  store %struct.Memory* %call_432f99, %struct.Memory** %MEMORY

  ; Code: movl 0x4d4(%rax), %ecx	 RIP: 432fa1	 Bytes: 6
  %loadMem_432fa1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432fa1 = call %struct.Memory* @routine_movl_0x4d4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432fa1)
  store %struct.Memory* %call_432fa1, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 432fa7	 Bytes: 3
  %loadMem_432fa7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432fa7 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432fa7)
  store %struct.Memory* %call_432fa7, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x14(%rbp)	 RIP: 432faa	 Bytes: 3
  %loadMem_432faa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432faa = call %struct.Memory* @routine_movl__ecx__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432faa)
  store %struct.Memory* %call_432faa, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 432fad	 Bytes: 8
  %loadMem_432fad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432fad = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432fad)
  store %struct.Memory* %call_432fad, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, (%rax)	 RIP: 432fb5	 Bytes: 3
  %loadMem_432fb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432fb5 = call %struct.Memory* @routine_cmpl__0x0____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432fb5)
  store %struct.Memory* %call_432fb5, %struct.Memory** %MEMORY

  ; Code: jne .L_432fd1	 RIP: 432fb8	 Bytes: 6
  %loadMem_432fb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432fb8 = call %struct.Memory* @routine_jne_.L_432fd1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432fb8, i8* %BRANCH_TAKEN, i64 25, i64 6, i64 6)
  store %struct.Memory* %call_432fb8, %struct.Memory** %MEMORY

  %loadBr_432fb8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_432fb8 = icmp eq i8 %loadBr_432fb8, 1
  br i1 %cmpBr_432fb8, label %block_.L_432fd1, label %block_432fbe

block_432fbe:
  ; Code: movl -0x18(%rbp), %eax	 RIP: 432fbe	 Bytes: 3
  %loadMem_432fbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432fbe = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432fbe)
  store %struct.Memory* %call_432fbe, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %ecx	 RIP: 432fc1	 Bytes: 3
  %loadMem_432fc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432fc1 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432fc1)
  store %struct.Memory* %call_432fc1, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 432fc4	 Bytes: 3
  %loadMem_432fc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432fc4 = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432fc4)
  store %struct.Memory* %call_432fc4, %struct.Memory** %MEMORY

  ; Code: subl %ecx, %eax	 RIP: 432fc7	 Bytes: 2
  %loadMem_432fc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432fc7 = call %struct.Memory* @routine_subl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432fc7)
  store %struct.Memory* %call_432fc7, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x6c(%rbp)	 RIP: 432fc9	 Bytes: 3
  %loadMem_432fc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432fc9 = call %struct.Memory* @routine_movl__eax__MINUS0x6c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432fc9)
  store %struct.Memory* %call_432fc9, %struct.Memory** %MEMORY

  ; Code: jmpq .L_432fd7	 RIP: 432fcc	 Bytes: 5
  %loadMem_432fcc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432fcc = call %struct.Memory* @routine_jmpq_.L_432fd7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432fcc, i64 11, i64 5)
  store %struct.Memory* %call_432fcc, %struct.Memory** %MEMORY

  br label %block_.L_432fd7

  ; Code: .L_432fd1:	 RIP: 432fd1	 Bytes: 0
block_.L_432fd1:

  ; Code: movl -0x18(%rbp), %eax	 RIP: 432fd1	 Bytes: 3
  %loadMem_432fd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432fd1 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432fd1)
  store %struct.Memory* %call_432fd1, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x6c(%rbp)	 RIP: 432fd4	 Bytes: 3
  %loadMem_432fd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432fd4 = call %struct.Memory* @routine_movl__eax__MINUS0x6c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432fd4)
  store %struct.Memory* %call_432fd4, %struct.Memory** %MEMORY

  ; Code: .L_432fd7:	 RIP: 432fd7	 Bytes: 0
  br label %block_.L_432fd7
block_.L_432fd7:

  ; Code: movl -0x6c(%rbp), %eax	 RIP: 432fd7	 Bytes: 3
  %loadMem_432fd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432fd7 = call %struct.Memory* @routine_movl_MINUS0x6c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432fd7)
  store %struct.Memory* %call_432fd7, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 432fda	 Bytes: 3
  %loadMem_432fda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432fda = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432fda)
  store %struct.Memory* %call_432fda, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 432fdd	 Bytes: 8
  %loadMem_432fdd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432fdd = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432fdd)
  store %struct.Memory* %call_432fdd, %struct.Memory** %MEMORY

  ; Code: movl (%rcx), %eax	 RIP: 432fe5	 Bytes: 2
  %loadMem_432fe5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432fe5 = call %struct.Memory* @routine_movl___rcx____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432fe5)
  store %struct.Memory* %call_432fe5, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rcx	 RIP: 432fe7	 Bytes: 8
  %loadMem_432fe7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432fe7 = call %struct.Memory* @routine_movq_0x6cb8f8___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432fe7)
  store %struct.Memory* %call_432fe7, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 432fef	 Bytes: 1
  %loadMem_432fef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432fef = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432fef)
  store %struct.Memory* %call_432fef, %struct.Memory** %MEMORY

  ; Code: idivl 0x4c8(%rcx)	 RIP: 432ff0	 Bytes: 6
  %loadMem_432ff0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432ff0 = call %struct.Memory* @routine_idivl_0x4c8__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432ff0)
  store %struct.Memory* %call_432ff0, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rcx	 RIP: 432ff6	 Bytes: 8
  %loadMem_432ff6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432ff6 = call %struct.Memory* @routine_movq_0x6cb8f8___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432ff6)
  store %struct.Memory* %call_432ff6, %struct.Memory** %MEMORY

  ; Code: movl 0x8(%rcx), %esi	 RIP: 432ffe	 Bytes: 3
  %loadMem_432ffe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_432ffe = call %struct.Memory* @routine_movl_0x8__rcx____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_432ffe)
  store %struct.Memory* %call_432ffe, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rcx	 RIP: 433001	 Bytes: 8
  %loadMem_433001 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433001 = call %struct.Memory* @routine_movq_0x6cb8f8___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433001)
  store %struct.Memory* %call_433001, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x70(%rbp)	 RIP: 433009	 Bytes: 3
  %loadMem_433009 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433009 = call %struct.Memory* @routine_movl__eax__MINUS0x70__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433009)
  store %struct.Memory* %call_433009, %struct.Memory** %MEMORY

  ; Code: movl %esi, %eax	 RIP: 43300c	 Bytes: 2
  %loadMem_43300c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43300c = call %struct.Memory* @routine_movl__esi___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43300c)
  store %struct.Memory* %call_43300c, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 43300e	 Bytes: 1
  %loadMem_43300e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43300e = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43300e)
  store %struct.Memory* %call_43300e, %struct.Memory** %MEMORY

  ; Code: idivl 0x4c8(%rcx)	 RIP: 43300f	 Bytes: 6
  %loadMem_43300f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43300f = call %struct.Memory* @routine_idivl_0x4c8__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43300f)
  store %struct.Memory* %call_43300f, %struct.Memory** %MEMORY

  ; Code: movl -0x70(%rbp), %esi	 RIP: 433015	 Bytes: 3
  %loadMem_433015 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433015 = call %struct.Memory* @routine_movl_MINUS0x70__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433015)
  store %struct.Memory* %call_433015, %struct.Memory** %MEMORY

  ; Code: cmpl %eax, %esi	 RIP: 433018	 Bytes: 2
  %loadMem_433018 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433018 = call %struct.Memory* @routine_cmpl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433018)
  store %struct.Memory* %call_433018, %struct.Memory** %MEMORY

  ; Code: jl .L_4330b7	 RIP: 43301a	 Bytes: 6
  %loadMem_43301a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43301a = call %struct.Memory* @routine_jl_.L_4330b7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43301a, i8* %BRANCH_TAKEN, i64 157, i64 6, i64 6)
  store %struct.Memory* %call_43301a, %struct.Memory** %MEMORY

  %loadBr_43301a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43301a = icmp eq i8 %loadBr_43301a, 1
  br i1 %cmpBr_43301a, label %block_.L_4330b7, label %block_433020

block_433020:
  ; Code: movq 0x6cb900, %rax	 RIP: 433020	 Bytes: 8
  %loadMem_433020 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433020 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433020)
  store %struct.Memory* %call_433020, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, (%rax)	 RIP: 433028	 Bytes: 3
  %loadMem_433028 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433028 = call %struct.Memory* @routine_cmpl__0x0____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433028)
  store %struct.Memory* %call_433028, %struct.Memory** %MEMORY

  ; Code: je .L_433085	 RIP: 43302b	 Bytes: 6
  %loadMem_43302b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43302b = call %struct.Memory* @routine_je_.L_433085(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43302b, i8* %BRANCH_TAKEN, i64 90, i64 6, i64 6)
  store %struct.Memory* %call_43302b, %struct.Memory** %MEMORY

  %loadBr_43302b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43302b = icmp eq i8 %loadBr_43302b, 1
  br i1 %cmpBr_43302b, label %block_.L_433085, label %block_433031

block_433031:
  ; Code: movq 0x6cb8f8, %rax	 RIP: 433031	 Bytes: 8
  %loadMem_433031 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433031 = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433031)
  store %struct.Memory* %call_433031, %struct.Memory** %MEMORY

  ; Code: movl 0x8(%rax), %ecx	 RIP: 433039	 Bytes: 3
  %loadMem_433039 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433039 = call %struct.Memory* @routine_movl_0x8__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433039)
  store %struct.Memory* %call_433039, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 43303c	 Bytes: 8
  %loadMem_43303c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43303c = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43303c)
  store %struct.Memory* %call_43303c, %struct.Memory** %MEMORY

  ; Code: subl (%rax), %ecx	 RIP: 433044	 Bytes: 2
  %loadMem_433044 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433044 = call %struct.Memory* @routine_subl___rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433044)
  store %struct.Memory* %call_433044, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rax	 RIP: 433046	 Bytes: 8
  %loadMem_433046 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433046 = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433046)
  store %struct.Memory* %call_433046, %struct.Memory** %MEMORY

  ; Code: movl 0x8(%rax), %edx	 RIP: 43304e	 Bytes: 3
  %loadMem_43304e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43304e = call %struct.Memory* @routine_movl_0x8__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43304e)
  store %struct.Memory* %call_43304e, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 433051	 Bytes: 8
  %loadMem_433051 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433051 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433051)
  store %struct.Memory* %call_433051, %struct.Memory** %MEMORY

  ; Code: subl (%rax), %edx	 RIP: 433059	 Bytes: 2
  %loadMem_433059 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433059 = call %struct.Memory* @routine_subl___rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433059)
  store %struct.Memory* %call_433059, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 43305b	 Bytes: 3
  %loadMem_43305b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43305b = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43305b)
  store %struct.Memory* %call_43305b, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rax	 RIP: 43305e	 Bytes: 8
  %loadMem_43305e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43305e = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43305e)
  store %struct.Memory* %call_43305e, %struct.Memory** %MEMORY

  ; Code: imull 0x4d4(%rax), %edx	 RIP: 433066	 Bytes: 7
  %loadMem_433066 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433066 = call %struct.Memory* @routine_imull_0x4d4__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433066)
  store %struct.Memory* %call_433066, %struct.Memory** %MEMORY

  ; Code: addl %edx, %ecx	 RIP: 43306d	 Bytes: 2
  %loadMem_43306d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43306d = call %struct.Memory* @routine_addl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43306d)
  store %struct.Memory* %call_43306d, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rax	 RIP: 43306f	 Bytes: 8
  %loadMem_43306f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43306f = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43306f)
  store %struct.Memory* %call_43306f, %struct.Memory** %MEMORY

  ; Code: addl 0x4d4(%rax), %ecx	 RIP: 433077	 Bytes: 6
  %loadMem_433077 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433077 = call %struct.Memory* @routine_addl_0x4d4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433077)
  store %struct.Memory* %call_433077, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x1c(%rbp)	 RIP: 43307d	 Bytes: 3
  %loadMem_43307d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43307d = call %struct.Memory* @routine_movl__ecx__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43307d)
  store %struct.Memory* %call_43307d, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4330b2	 RIP: 433080	 Bytes: 5
  %loadMem_433080 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433080 = call %struct.Memory* @routine_jmpq_.L_4330b2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433080, i64 50, i64 5)
  store %struct.Memory* %call_433080, %struct.Memory** %MEMORY

  br label %block_.L_4330b2

  ; Code: .L_433085:	 RIP: 433085	 Bytes: 0
block_.L_433085:

  ; Code: movq 0x6cb8f8, %rax	 RIP: 433085	 Bytes: 8
  %loadMem_433085 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433085 = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433085)
  store %struct.Memory* %call_433085, %struct.Memory** %MEMORY

  ; Code: movl 0x8(%rax), %ecx	 RIP: 43308d	 Bytes: 3
  %loadMem_43308d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43308d = call %struct.Memory* @routine_movl_0x8__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43308d)
  store %struct.Memory* %call_43308d, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rax	 RIP: 433090	 Bytes: 8
  %loadMem_433090 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433090 = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433090)
  store %struct.Memory* %call_433090, %struct.Memory** %MEMORY

  ; Code: movl 0x8(%rax), %edx	 RIP: 433098	 Bytes: 3
  %loadMem_433098 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433098 = call %struct.Memory* @routine_movl_0x8__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433098)
  store %struct.Memory* %call_433098, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 43309b	 Bytes: 3
  %loadMem_43309b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43309b = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43309b)
  store %struct.Memory* %call_43309b, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rax	 RIP: 43309e	 Bytes: 8
  %loadMem_43309e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43309e = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43309e)
  store %struct.Memory* %call_43309e, %struct.Memory** %MEMORY

  ; Code: imull 0x4d4(%rax), %edx	 RIP: 4330a6	 Bytes: 7
  %loadMem_4330a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4330a6 = call %struct.Memory* @routine_imull_0x4d4__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4330a6)
  store %struct.Memory* %call_4330a6, %struct.Memory** %MEMORY

  ; Code: addl %edx, %ecx	 RIP: 4330ad	 Bytes: 2
  %loadMem_4330ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4330ad = call %struct.Memory* @routine_addl__edx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4330ad)
  store %struct.Memory* %call_4330ad, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x1c(%rbp)	 RIP: 4330af	 Bytes: 3
  %loadMem_4330af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4330af = call %struct.Memory* @routine_movl__ecx__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4330af)
  store %struct.Memory* %call_4330af, %struct.Memory** %MEMORY

  ; Code: .L_4330b2:	 RIP: 4330b2	 Bytes: 0
  br label %block_.L_4330b2
block_.L_4330b2:

  ; Code: jmpq .L_4330b7	 RIP: 4330b2	 Bytes: 5
  %loadMem_4330b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4330b2 = call %struct.Memory* @routine_jmpq_.L_4330b7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4330b2, i64 5, i64 5)
  store %struct.Memory* %call_4330b2, %struct.Memory** %MEMORY

  br label %block_.L_4330b7

  ; Code: .L_4330b7:	 RIP: 4330b7	 Bytes: 0
block_.L_4330b7:

  ; Code: movq 0x6cb900, %rax	 RIP: 4330b7	 Bytes: 8
  %loadMem_4330b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4330b7 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4330b7)
  store %struct.Memory* %call_4330b7, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, (%rax)	 RIP: 4330bf	 Bytes: 3
  %loadMem_4330bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4330bf = call %struct.Memory* @routine_cmpl__0x0____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4330bf)
  store %struct.Memory* %call_4330bf, %struct.Memory** %MEMORY

  ; Code: jne .L_4330e5	 RIP: 4330c2	 Bytes: 6
  %loadMem_4330c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4330c2 = call %struct.Memory* @routine_jne_.L_4330e5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4330c2, i8* %BRANCH_TAKEN, i64 35, i64 6, i64 6)
  store %struct.Memory* %call_4330c2, %struct.Memory** %MEMORY

  %loadBr_4330c2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4330c2 = icmp eq i8 %loadBr_4330c2, 1
  br i1 %cmpBr_4330c2, label %block_.L_4330e5, label %block_4330c8

block_4330c8:
  ; Code: movl -0x1c(%rbp), %eax	 RIP: 4330c8	 Bytes: 3
  %loadMem_4330c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4330c8 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4330c8)
  store %struct.Memory* %call_4330c8, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %ecx	 RIP: 4330cb	 Bytes: 3
  %loadMem_4330cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4330cb = call %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4330cb)
  store %struct.Memory* %call_4330cb, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 4330ce	 Bytes: 3
  %loadMem_4330ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4330ce = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4330ce)
  store %struct.Memory* %call_4330ce, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %ecx	 RIP: 4330d1	 Bytes: 3
  %loadMem_4330d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4330d1 = call %struct.Memory* @routine_shll__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4330d1)
  store %struct.Memory* %call_4330d1, %struct.Memory** %MEMORY

  ; Code: addl %ecx, %eax	 RIP: 4330d4	 Bytes: 2
  %loadMem_4330d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4330d4 = call %struct.Memory* @routine_addl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4330d4)
  store %struct.Memory* %call_4330d4, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 4330d6	 Bytes: 1
  %loadMem_4330d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4330d6 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4330d6)
  store %struct.Memory* %call_4330d6, %struct.Memory** %MEMORY

  ; Code: idivl -0x14(%rbp)	 RIP: 4330d7	 Bytes: 3
  %loadMem_4330d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4330d7 = call %struct.Memory* @routine_idivl_MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4330d7)
  store %struct.Memory* %call_4330d7, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 4330da	 Bytes: 3
  %loadMem_4330da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4330da = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4330da)
  store %struct.Memory* %call_4330da, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x20(%rbp)	 RIP: 4330dd	 Bytes: 3
  %loadMem_4330dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4330dd = call %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4330dd)
  store %struct.Memory* %call_4330dd, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4330fa	 RIP: 4330e0	 Bytes: 5
  %loadMem_4330e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4330e0 = call %struct.Memory* @routine_jmpq_.L_4330fa(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4330e0, i64 26, i64 5)
  store %struct.Memory* %call_4330e0, %struct.Memory** %MEMORY

  br label %block_.L_4330fa

  ; Code: .L_4330e5:	 RIP: 4330e5	 Bytes: 0
block_.L_4330e5:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 4330e5	 Bytes: 3
  %loadMem_4330e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4330e5 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4330e5)
  store %struct.Memory* %call_4330e5, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %ecx	 RIP: 4330e8	 Bytes: 3
  %loadMem_4330e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4330e8 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4330e8)
  store %struct.Memory* %call_4330e8, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 4330eb	 Bytes: 3
  %loadMem_4330eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4330eb = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4330eb)
  store %struct.Memory* %call_4330eb, %struct.Memory** %MEMORY

  ; Code: addl %ecx, %eax	 RIP: 4330ee	 Bytes: 2
  %loadMem_4330ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4330ee = call %struct.Memory* @routine_addl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4330ee)
  store %struct.Memory* %call_4330ee, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 4330f0	 Bytes: 1
  %loadMem_4330f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4330f0 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4330f0)
  store %struct.Memory* %call_4330f0, %struct.Memory** %MEMORY

  ; Code: idivl -0x14(%rbp)	 RIP: 4330f1	 Bytes: 3
  %loadMem_4330f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4330f1 = call %struct.Memory* @routine_idivl_MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4330f1)
  store %struct.Memory* %call_4330f1, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 4330f4	 Bytes: 3
  %loadMem_4330f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4330f4 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4330f4)
  store %struct.Memory* %call_4330f4, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x20(%rbp)	 RIP: 4330f7	 Bytes: 3
  %loadMem_4330f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4330f7 = call %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4330f7)
  store %struct.Memory* %call_4330f7, %struct.Memory** %MEMORY

  ; Code: .L_4330fa:	 RIP: 4330fa	 Bytes: 0
  br label %block_.L_4330fa
block_.L_4330fa:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 4330fa	 Bytes: 3
  %loadMem_4330fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4330fa = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4330fa)
  store %struct.Memory* %call_4330fa, %struct.Memory** %MEMORY

  ; Code: subl -0x20(%rbp), %eax	 RIP: 4330fd	 Bytes: 3
  %loadMem_4330fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4330fd = call %struct.Memory* @routine_subl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4330fd)
  store %struct.Memory* %call_4330fd, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 433100	 Bytes: 3
  %loadMem_433100 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433100 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433100)
  store %struct.Memory* %call_433100, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x24(%rbp)	 RIP: 433103	 Bytes: 3
  %loadMem_433103 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433103 = call %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433103)
  store %struct.Memory* %call_433103, %struct.Memory** %MEMORY

  ; Code: .L_433106:	 RIP: 433106	 Bytes: 0
  br label %block_.L_433106
block_.L_433106:

  ; Code: movl -0x20(%rbp), %edi	 RIP: 433106	 Bytes: 3
  %loadMem_433106 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433106 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433106)
  store %struct.Memory* %call_433106, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %esi	 RIP: 433109	 Bytes: 3
  %loadMem_433109 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433109 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433109)
  store %struct.Memory* %call_433109, %struct.Memory** %MEMORY

  ; Code: callq .rc_init_GOP	 RIP: 43310c	 Bytes: 5
  %loadMem1_43310c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43310c = call %struct.Memory* @routine_callq_.rc_init_GOP(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43310c, i64 300932, i64 5, i64 5)
  store %struct.Memory* %call1_43310c, %struct.Memory** %MEMORY

  %loadMem2_43310c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43310c = load i64, i64* %3
  %call2_43310c = call %struct.Memory* @sub_47c890.rc_init_GOP(%struct.State* %0, i64  %loadPC_43310c, %struct.Memory* %loadMem2_43310c)
  store %struct.Memory* %call2_43310c, %struct.Memory** %MEMORY

  ; Code: .L_433111:	 RIP: 433111	 Bytes: 0
  br label %block_.L_433111
block_.L_433111:

  ; Code: jmpq .L_433116	 RIP: 433111	 Bytes: 5
  %loadMem_433111 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433111 = call %struct.Memory* @routine_jmpq_.L_433116(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433111, i64 5, i64 5)
  store %struct.Memory* %call_433111, %struct.Memory** %MEMORY

  br label %block_.L_433116

  ; Code: .L_433116:	 RIP: 433116	 Bytes: 0
block_.L_433116:

  ; Code: movq 0x6cb900, %rax	 RIP: 433116	 Bytes: 8
  %loadMem_433116 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433116 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433116)
  store %struct.Memory* %call_433116, %struct.Memory** %MEMORY

  ; Code: movl (%rax), %ecx	 RIP: 43311e	 Bytes: 2
  %loadMem_43311e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43311e = call %struct.Memory* @routine_movl___rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43311e)
  store %struct.Memory* %call_43311e, %struct.Memory** %MEMORY

  ; Code: subl 0x6cc020, %ecx	 RIP: 433120	 Bytes: 7
  %loadMem_433120 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433120 = call %struct.Memory* @routine_subl_0x6cc020___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433120)
  store %struct.Memory* %call_433120, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rax	 RIP: 433127	 Bytes: 8
  %loadMem_433127 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433127 = call %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433127)
  store %struct.Memory* %call_433127, %struct.Memory** %MEMORY

  ; Code: movl 0xb60(%rax), %edx	 RIP: 43312f	 Bytes: 6
  %loadMem_43312f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43312f = call %struct.Memory* @routine_movl_0xb60__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43312f)
  store %struct.Memory* %call_43312f, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 433135	 Bytes: 3
  %loadMem_433135 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433135 = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433135)
  store %struct.Memory* %call_433135, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %eax	 RIP: 433138	 Bytes: 2
  %loadMem_433138 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433138 = call %struct.Memory* @routine_movl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433138)
  store %struct.Memory* %call_433138, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x74(%rbp)	 RIP: 43313a	 Bytes: 3
  %loadMem_43313a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43313a = call %struct.Memory* @routine_movl__edx__MINUS0x74__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43313a)
  store %struct.Memory* %call_43313a, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 43313d	 Bytes: 1
  %loadMem_43313d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43313d = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43313d)
  store %struct.Memory* %call_43313d, %struct.Memory** %MEMORY

  ; Code: movl -0x74(%rbp), %ecx	 RIP: 43313e	 Bytes: 3
  %loadMem_43313e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43313e = call %struct.Memory* @routine_movl_MINUS0x74__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43313e)
  store %struct.Memory* %call_43313e, %struct.Memory** %MEMORY

  ; Code: idivl %ecx	 RIP: 433141	 Bytes: 2
  %loadMem_433141 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433141 = call %struct.Memory* @routine_idivl__ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433141)
  store %struct.Memory* %call_433141, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %edx	 RIP: 433143	 Bytes: 3
  %loadMem_433143 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433143 = call %struct.Memory* @routine_cmpl__0x0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433143)
  store %struct.Memory* %call_433143, %struct.Memory** %MEMORY

  ; Code: jne .L_433163	 RIP: 433146	 Bytes: 6
  %loadMem_433146 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433146 = call %struct.Memory* @routine_jne_.L_433163(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433146, i8* %BRANCH_TAKEN, i64 29, i64 6, i64 6)
  store %struct.Memory* %call_433146, %struct.Memory** %MEMORY

  %loadBr_433146 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_433146 = icmp eq i8 %loadBr_433146, 1
  br i1 %cmpBr_433146, label %block_.L_433163, label %block_43314c

block_43314c:
  ; Code: movq 0x6cb900, %rax	 RIP: 43314c	 Bytes: 8
  %loadMem_43314c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43314c = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43314c)
  store %struct.Memory* %call_43314c, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x11ac0(%rax)	 RIP: 433154	 Bytes: 10
  %loadMem_433154 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433154 = call %struct.Memory* @routine_movl__0x0__0x11ac0__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433154)
  store %struct.Memory* %call_433154, %struct.Memory** %MEMORY

  ; Code: jmpq .L_433175	 RIP: 43315e	 Bytes: 5
  %loadMem_43315e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43315e = call %struct.Memory* @routine_jmpq_.L_433175(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43315e, i64 23, i64 5)
  store %struct.Memory* %call_43315e, %struct.Memory** %MEMORY

  br label %block_.L_433175

  ; Code: .L_433163:	 RIP: 433163	 Bytes: 0
block_.L_433163:

  ; Code: movq 0x6cb900, %rax	 RIP: 433163	 Bytes: 8
  %loadMem_433163 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433163 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433163)
  store %struct.Memory* %call_433163, %struct.Memory** %MEMORY

  ; Code: movl $0x1, 0x11ac0(%rax)	 RIP: 43316b	 Bytes: 10
  %loadMem_43316b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43316b = call %struct.Memory* @routine_movl__0x1__0x11ac0__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43316b)
  store %struct.Memory* %call_43316b, %struct.Memory** %MEMORY

  ; Code: .L_433175:	 RIP: 433175	 Bytes: 0
  br label %block_.L_433175
block_.L_433175:

  ; Code: movb $0x0, %al	 RIP: 433175	 Bytes: 2
  %loadMem_433175 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433175 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433175)
  store %struct.Memory* %call_433175, %struct.Memory** %MEMORY

  ; Code: callq .encode_one_frame	 RIP: 433177	 Bytes: 5
  %loadMem1_433177 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_433177 = call %struct.Memory* @routine_callq_.encode_one_frame(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_433177, i64 -46167, i64 5, i64 5)
  store %struct.Memory* %call1_433177, %struct.Memory** %MEMORY

  %loadMem2_433177 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_433177 = load i64, i64* %3
  %call2_433177 = call %struct.Memory* @sub_427d20.encode_one_frame(%struct.State* %0, i64  %loadPC_433177, %struct.Memory* %loadMem2_433177)
  store %struct.Memory* %call2_433177, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rcx	 RIP: 43317c	 Bytes: 8
  %loadMem_43317c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43317c = call %struct.Memory* @routine_movq_0x6cb8f8___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43317c)
  store %struct.Memory* %call_43317c, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0xc9c(%rcx)	 RIP: 433184	 Bytes: 7
  %loadMem_433184 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433184 = call %struct.Memory* @routine_cmpl__0x0__0xc9c__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433184)
  store %struct.Memory* %call_433184, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x78(%rbp)	 RIP: 43318b	 Bytes: 3
  %loadMem_43318b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43318b = call %struct.Memory* @routine_movl__eax__MINUS0x78__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43318b)
  store %struct.Memory* %call_43318b, %struct.Memory** %MEMORY

  ; Code: je .L_433199	 RIP: 43318e	 Bytes: 6
  %loadMem_43318e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43318e = call %struct.Memory* @routine_je_.L_433199(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43318e, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_43318e, %struct.Memory** %MEMORY

  %loadBr_43318e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43318e = icmp eq i8 %loadBr_43318e, 1
  br i1 %cmpBr_43318e, label %block_.L_433199, label %block_433194

block_433194:
  ; Code: callq .report_frame_statistic	 RIP: 433194	 Bytes: 5
  %loadMem1_433194 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_433194 = call %struct.Memory* @routine_callq_.report_frame_statistic(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_433194, i64 7724, i64 5, i64 5)
  store %struct.Memory* %call1_433194, %struct.Memory** %MEMORY

  %loadMem2_433194 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_433194 = load i64, i64* %3
  %call2_433194 = call %struct.Memory* @sub_434fc0.report_frame_statistic(%struct.State* %0, i64  %loadPC_433194, %struct.Memory* %loadMem2_433194)
  store %struct.Memory* %call2_433194, %struct.Memory** %MEMORY

  ; Code: .L_433199:	 RIP: 433199	 Bytes: 0
  br label %block_.L_433199
block_.L_433199:

  ; Code: movq 0x6cb900, %rax	 RIP: 433199	 Bytes: 8
  %loadMem_433199 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433199 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433199)
  store %struct.Memory* %call_433199, %struct.Memory** %MEMORY

  ; Code: movl 0x8(%rax), %ecx	 RIP: 4331a1	 Bytes: 3
  %loadMem_4331a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4331a1 = call %struct.Memory* @routine_movl_0x8__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4331a1)
  store %struct.Memory* %call_4331a1, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 4331a4	 Bytes: 3
  %loadMem_4331a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4331a4 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4331a4)
  store %struct.Memory* %call_4331a4, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x8(%rax)	 RIP: 4331a7	 Bytes: 3
  %loadMem_4331a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4331a7 = call %struct.Memory* @routine_movl__ecx__0x8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4331a7)
  store %struct.Memory* %call_4331a7, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 4331aa	 Bytes: 8
  %loadMem_4331aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4331aa = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4331aa)
  store %struct.Memory* %call_4331aa, %struct.Memory** %MEMORY

  ; Code: movl 0x8(%rax), %ecx	 RIP: 4331b2	 Bytes: 3
  %loadMem_4331b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4331b2 = call %struct.Memory* @routine_movl_0x8__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4331b2)
  store %struct.Memory* %call_4331b2, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 4331b5	 Bytes: 8
  %loadMem_4331b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4331b5 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4331b5)
  store %struct.Memory* %call_4331b5, %struct.Memory** %MEMORY

  ; Code: cmpl 0x11ab8(%rax), %ecx	 RIP: 4331bd	 Bytes: 6
  %loadMem_4331bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4331bd = call %struct.Memory* @routine_cmpl_0x11ab8__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4331bd)
  store %struct.Memory* %call_4331bd, %struct.Memory** %MEMORY

  ; Code: jge .L_4331dc	 RIP: 4331c3	 Bytes: 6
  %loadMem_4331c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4331c3 = call %struct.Memory* @routine_jge_.L_4331dc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4331c3, i8* %BRANCH_TAKEN, i64 25, i64 6, i64 6)
  store %struct.Memory* %call_4331c3, %struct.Memory** %MEMORY

  %loadBr_4331c3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4331c3 = icmp eq i8 %loadBr_4331c3, 1
  br i1 %cmpBr_4331c3, label %block_.L_4331dc, label %block_4331c9

block_4331c9:
  ; Code: movq 0x6cb900, %rax	 RIP: 4331c9	 Bytes: 8
  %loadMem_4331c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4331c9 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4331c9)
  store %struct.Memory* %call_4331c9, %struct.Memory** %MEMORY

  ; Code: movl 0x8(%rax), %ecx	 RIP: 4331d1	 Bytes: 3
  %loadMem_4331d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4331d1 = call %struct.Memory* @routine_movl_0x8__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4331d1)
  store %struct.Memory* %call_4331d1, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x7c(%rbp)	 RIP: 4331d4	 Bytes: 3
  %loadMem_4331d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4331d4 = call %struct.Memory* @routine_movl__ecx__MINUS0x7c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4331d4)
  store %struct.Memory* %call_4331d4, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4331ed	 RIP: 4331d7	 Bytes: 5
  %loadMem_4331d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4331d7 = call %struct.Memory* @routine_jmpq_.L_4331ed(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4331d7, i64 22, i64 5)
  store %struct.Memory* %call_4331d7, %struct.Memory** %MEMORY

  br label %block_.L_4331ed

  ; Code: .L_4331dc:	 RIP: 4331dc	 Bytes: 0
block_.L_4331dc:

  ; Code: movq 0x6cb900, %rax	 RIP: 4331dc	 Bytes: 8
  %loadMem_4331dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4331dc = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4331dc)
  store %struct.Memory* %call_4331dc, %struct.Memory** %MEMORY

  ; Code: movl 0x11ab8(%rax), %ecx	 RIP: 4331e4	 Bytes: 6
  %loadMem_4331e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4331e4 = call %struct.Memory* @routine_movl_0x11ab8__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4331e4)
  store %struct.Memory* %call_4331e4, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x7c(%rbp)	 RIP: 4331ea	 Bytes: 3
  %loadMem_4331ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4331ea = call %struct.Memory* @routine_movl__ecx__MINUS0x7c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4331ea)
  store %struct.Memory* %call_4331ea, %struct.Memory** %MEMORY

  ; Code: .L_4331ed:	 RIP: 4331ed	 Bytes: 0
  br label %block_.L_4331ed
block_.L_4331ed:

  ; Code: movl -0x7c(%rbp), %eax	 RIP: 4331ed	 Bytes: 3
  %loadMem_4331ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4331ed = call %struct.Memory* @routine_movl_MINUS0x7c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4331ed)
  store %struct.Memory* %call_4331ed, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rcx	 RIP: 4331f0	 Bytes: 8
  %loadMem_4331f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4331f0 = call %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4331f0)
  store %struct.Memory* %call_4331f0, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x8(%rcx)	 RIP: 4331f8	 Bytes: 3
  %loadMem_4331f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4331f8 = call %struct.Memory* @routine_movl__eax__0x8__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4331f8)
  store %struct.Memory* %call_4331f8, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 4331fb	 Bytes: 2
  %loadMem_4331fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4331fb = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4331fb)
  store %struct.Memory* %call_4331fb, %struct.Memory** %MEMORY

  ; Code: callq .encode_enhancement_layer	 RIP: 4331fd	 Bytes: 5
  %loadMem1_4331fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4331fd = call %struct.Memory* @routine_callq_.encode_enhancement_layer(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4331fd, i64 -83133, i64 5, i64 5)
  store %struct.Memory* %call1_4331fd, %struct.Memory** %MEMORY

  %loadMem2_4331fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4331fd = load i64, i64* %3
  %call2_4331fd = call %struct.Memory* @sub_41ed40.encode_enhancement_layer(%struct.State* %0, i64  %loadPC_4331fd, %struct.Memory* %loadMem2_4331fd)
  store %struct.Memory* %call2_4331fd, %struct.Memory** %MEMORY

  ; Code: callq .process_2nd_IGOP	 RIP: 433202	 Bytes: 5
  %loadMem1_433202 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_433202 = call %struct.Memory* @routine_callq_.process_2nd_IGOP(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_433202, i64 11630, i64 5, i64 5)
  store %struct.Memory* %call1_433202, %struct.Memory** %MEMORY

  %loadMem2_433202 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_433202 = load i64, i64* %3
  %call2_433202 = call %struct.Memory* @sub_435f70.process_2nd_IGOP(%struct.State* %0, i64  %loadPC_433202, %struct.Memory* %loadMem2_433202)
  store %struct.Memory* %call2_433202, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb900, %rax	 RIP: 433207	 Bytes: 8
  %loadMem_433207 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433207 = call %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433207)
  store %struct.Memory* %call_433207, %struct.Memory** %MEMORY

  ; Code: movl (%rax), %ecx	 RIP: 43320f	 Bytes: 2
  %loadMem_43320f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43320f = call %struct.Memory* @routine_movl___rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43320f)
  store %struct.Memory* %call_43320f, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 433211	 Bytes: 3
  %loadMem_433211 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433211 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433211)
  store %struct.Memory* %call_433211, %struct.Memory** %MEMORY

  ; Code: movl %ecx, (%rax)	 RIP: 433214	 Bytes: 2
  %loadMem_433214 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433214 = call %struct.Memory* @routine_movl__ecx____rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433214)
  store %struct.Memory* %call_433214, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4329ee	 RIP: 433216	 Bytes: 5
  %loadMem_433216 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433216 = call %struct.Memory* @routine_jmpq_.L_4329ee(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433216, i64 -2088, i64 5)
  store %struct.Memory* %call_433216, %struct.Memory** %MEMORY

  br label %block_.L_4329ee

  ; Code: .L_43321b:	 RIP: 43321b	 Bytes: 0
block_.L_43321b:

  ; Code: movb $0x0, %al	 RIP: 43321b	 Bytes: 2
  %loadMem_43321b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43321b = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43321b)
  store %struct.Memory* %call_43321b, %struct.Memory** %MEMORY

  ; Code: callq .terminate_sequence	 RIP: 43321d	 Bytes: 5
  %loadMem1_43321d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43321d = call %struct.Memory* @routine_callq_.terminate_sequence(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43321d, i64 -59485, i64 5, i64 5)
  store %struct.Memory* %call1_43321d, %struct.Memory** %MEMORY

  %loadMem2_43321d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43321d = load i64, i64* %3
  %call2_43321d = call %struct.Memory* @sub_4249c0.terminate_sequence(%struct.State* %0, i64  %loadPC_43321d, %struct.Memory* %loadMem2_43321d)
  store %struct.Memory* %call2_43321d, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x80(%rbp)	 RIP: 433222	 Bytes: 3
  %loadMem_433222 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433222 = call %struct.Memory* @routine_movl__eax__MINUS0x80__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433222)
  store %struct.Memory* %call_433222, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 433225	 Bytes: 2
  %loadMem_433225 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433225 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433225)
  store %struct.Memory* %call_433225, %struct.Memory** %MEMORY

  ; Code: callq .flush_dpb	 RIP: 433227	 Bytes: 5
  %loadMem1_433227 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_433227 = call %struct.Memory* @routine_callq_.flush_dpb(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_433227, i64 134457, i64 5, i64 5)
  store %struct.Memory* %call1_433227, %struct.Memory** %MEMORY

  %loadMem2_433227 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_433227 = load i64, i64* %3
  %call2_433227 = call %struct.Memory* @sub_453f60.flush_dpb(%struct.State* %0, i64  %loadPC_433227, %struct.Memory* %loadMem2_433227)
  store %struct.Memory* %call2_433227, %struct.Memory** %MEMORY

  ; Code: movl 0x6f6e10, %edi	 RIP: 43322c	 Bytes: 7
  %loadMem_43322c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43322c = call %struct.Memory* @routine_movl_0x6f6e10___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43322c)
  store %struct.Memory* %call_43322c, %struct.Memory** %MEMORY

  ; Code: callq .close_plt	 RIP: 433233	 Bytes: 5
  %loadMem1_433233 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_433233 = call %struct.Memory* @routine_callq_.close_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_433233, i64 -205187, i64 5, i64 5)
  store %struct.Memory* %call1_433233, %struct.Memory** %MEMORY

  %loadMem2_433233 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_433233 = load i64, i64* %3
  %call2_433233 = call %struct.Memory* @sub_4010b0.close_plt(%struct.State* %0, i64  %loadPC_433233, %struct.Memory* %loadMem2_433233)
  store %struct.Memory* %call2_433233, %struct.Memory** %MEMORY

  ; Code: movl $0xffffffff, %edi	 RIP: 433238	 Bytes: 5
  %loadMem_433238 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433238 = call %struct.Memory* @routine_movl__0xffffffff___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433238)
  store %struct.Memory* %call_433238, %struct.Memory** %MEMORY

  ; Code: cmpl 0x7242a4, %edi	 RIP: 43323d	 Bytes: 7
  %loadMem_43323d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43323d = call %struct.Memory* @routine_cmpl_0x7242a4___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43323d)
  store %struct.Memory* %call_43323d, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x84(%rbp)	 RIP: 433244	 Bytes: 6
  %loadMem_433244 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433244 = call %struct.Memory* @routine_movl__eax__MINUS0x84__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433244)
  store %struct.Memory* %call_433244, %struct.Memory** %MEMORY

  ; Code: je .L_433262	 RIP: 43324a	 Bytes: 6
  %loadMem_43324a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43324a = call %struct.Memory* @routine_je_.L_433262(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43324a, i8* %BRANCH_TAKEN, i64 24, i64 6, i64 6)
  store %struct.Memory* %call_43324a, %struct.Memory** %MEMORY

  %loadBr_43324a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43324a = icmp eq i8 %loadBr_43324a, 1
  br i1 %cmpBr_43324a, label %block_.L_433262, label %block_433250

block_433250:
  ; Code: movl 0x7242a4, %edi	 RIP: 433250	 Bytes: 7
  %loadMem_433250 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433250 = call %struct.Memory* @routine_movl_0x7242a4___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433250)
  store %struct.Memory* %call_433250, %struct.Memory** %MEMORY

  ; Code: callq .close_plt	 RIP: 433257	 Bytes: 5
  %loadMem1_433257 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_433257 = call %struct.Memory* @routine_callq_.close_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_433257, i64 -205223, i64 5, i64 5)
  store %struct.Memory* %call1_433257, %struct.Memory** %MEMORY

  %loadMem2_433257 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_433257 = load i64, i64* %3
  %call2_433257 = call %struct.Memory* @sub_4010b0.close_plt(%struct.State* %0, i64  %loadPC_433257, %struct.Memory* %loadMem2_433257)
  store %struct.Memory* %call2_433257, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x88(%rbp)	 RIP: 43325c	 Bytes: 6
  %loadMem_43325c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43325c = call %struct.Memory* @routine_movl__eax__MINUS0x88__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43325c)
  store %struct.Memory* %call_43325c, %struct.Memory** %MEMORY

  ; Code: .L_433262:	 RIP: 433262	 Bytes: 0
  br label %block_.L_433262
block_.L_433262:

  ; Code: cmpq $0x0, 0x723e20	 RIP: 433262	 Bytes: 9
  %loadMem_433262 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433262 = call %struct.Memory* @routine_cmpq__0x0__0x723e20(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433262)
  store %struct.Memory* %call_433262, %struct.Memory** %MEMORY

  ; Code: je .L_433284	 RIP: 43326b	 Bytes: 6
  %loadMem_43326b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43326b = call %struct.Memory* @routine_je_.L_433284(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43326b, i8* %BRANCH_TAKEN, i64 25, i64 6, i64 6)
  store %struct.Memory* %call_43326b, %struct.Memory** %MEMORY

  %loadBr_43326b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43326b = icmp eq i8 %loadBr_43326b, 1
  br i1 %cmpBr_43326b, label %block_.L_433284, label %block_433271

block_433271:
  ; Code: movq 0x723e20, %rdi	 RIP: 433271	 Bytes: 8
  %loadMem_433271 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433271 = call %struct.Memory* @routine_movq_0x723e20___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433271)
  store %struct.Memory* %call_433271, %struct.Memory** %MEMORY

  ; Code: callq .fclose_plt	 RIP: 433279	 Bytes: 5
  %loadMem1_433279 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_433279 = call %struct.Memory* @routine_callq_.fclose_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_433279, i64 -205401, i64 5, i64 5)
  store %struct.Memory* %call1_433279, %struct.Memory** %MEMORY

  %loadMem2_433279 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_433279 = load i64, i64* %3
  %call2_433279 = call %struct.Memory* @sub_401020.fclose_plt(%struct.State* %0, i64  %loadPC_433279, %struct.Memory* %loadMem2_433279)
  store %struct.Memory* %call2_433279, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x8c(%rbp)	 RIP: 43327e	 Bytes: 6
  %loadMem_43327e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43327e = call %struct.Memory* @routine_movl__eax__MINUS0x8c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43327e)
  store %struct.Memory* %call_43327e, %struct.Memory** %MEMORY

  ; Code: .L_433284:	 RIP: 433284	 Bytes: 0
  br label %block_.L_433284
block_.L_433284:

  ; Code: movb $0x0, %al	 RIP: 433284	 Bytes: 2
  %loadMem_433284 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433284 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433284)
  store %struct.Memory* %call_433284, %struct.Memory** %MEMORY

  ; Code: callq .Clear_Motion_Search_Module	 RIP: 433286	 Bytes: 5
  %loadMem1_433286 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_433286 = call %struct.Memory* @routine_callq_.Clear_Motion_Search_Module(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_433286, i64 176938, i64 5, i64 5)
  store %struct.Memory* %call1_433286, %struct.Memory** %MEMORY

  %loadMem2_433286 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_433286 = load i64, i64* %3
  %call2_433286 = call %struct.Memory* @sub_45e5b0.Clear_Motion_Search_Module(%struct.State* %0, i64  %loadPC_433286, %struct.Memory* %loadMem2_433286)
  store %struct.Memory* %call2_433286, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 43328b	 Bytes: 2
  %loadMem_43328b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43328b = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43328b)
  store %struct.Memory* %call_43328b, %struct.Memory** %MEMORY

  ; Code: callq .RandomIntraUninit	 RIP: 43328d	 Bytes: 5
  %loadMem1_43328d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43328d = call %struct.Memory* @routine_callq_.RandomIntraUninit(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43328d, i64 -5837, i64 5, i64 5)
  store %struct.Memory* %call1_43328d, %struct.Memory** %MEMORY

  %loadMem2_43328d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43328d = load i64, i64* %3
  %call2_43328d = call %struct.Memory* @sub_431bc0.RandomIntraUninit(%struct.State* %0, i64  %loadPC_43328d, %struct.Memory* %loadMem2_43328d)
  store %struct.Memory* %call2_43328d, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 433292	 Bytes: 2
  %loadMem_433292 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433292 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433292)
  store %struct.Memory* %call_433292, %struct.Memory** %MEMORY

  ; Code: callq .FmoUninit	 RIP: 433294	 Bytes: 5
  %loadMem1_433294 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_433294 = call %struct.Memory* @routine_callq_.FmoUninit(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_433294, i64 -55828, i64 5, i64 5)
  store %struct.Memory* %call1_433294, %struct.Memory** %MEMORY

  %loadMem2_433294 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_433294 = load i64, i64* %3
  %call2_433294 = call %struct.Memory* @sub_425880.FmoUninit(%struct.State* %0, i64  %loadPC_433294, %struct.Memory* %loadMem2_433294)
  store %struct.Memory* %call2_433294, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rcx	 RIP: 433299	 Bytes: 8
  %loadMem_433299 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433299 = call %struct.Memory* @routine_movq_0x6cb8f8___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433299)
  store %struct.Memory* %call_433299, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x528(%rcx)	 RIP: 4332a1	 Bytes: 7
  %loadMem_4332a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4332a1 = call %struct.Memory* @routine_cmpl__0x0__0x528__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4332a1)
  store %struct.Memory* %call_4332a1, %struct.Memory** %MEMORY

  ; Code: je .L_4332b5	 RIP: 4332a8	 Bytes: 6
  %loadMem_4332a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4332a8 = call %struct.Memory* @routine_je_.L_4332b5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4332a8, i8* %BRANCH_TAKEN, i64 13, i64 6, i64 6)
  store %struct.Memory* %call_4332a8, %struct.Memory** %MEMORY

  %loadBr_4332a8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4332a8 = icmp eq i8 %loadBr_4332a8, 1
  br i1 %cmpBr_4332a8, label %block_.L_4332b5, label %block_4332ae

block_4332ae:
  ; Code: movb $0x0, %al	 RIP: 4332ae	 Bytes: 2
  %loadMem_4332ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4332ae = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4332ae)
  store %struct.Memory* %call_4332ae, %struct.Memory** %MEMORY

  ; Code: callq .clear_gop_structure	 RIP: 4332b0	 Bytes: 5
  %loadMem1_4332b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4332b0 = call %struct.Memory* @routine_callq_.clear_gop_structure(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4332b0, i64 -85184, i64 5, i64 5)
  store %struct.Memory* %call1_4332b0, %struct.Memory** %MEMORY

  %loadMem2_4332b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4332b0 = load i64, i64* %3
  %call2_4332b0 = call %struct.Memory* @sub_41e5f0.clear_gop_structure(%struct.State* %0, i64  %loadPC_4332b0, %struct.Memory* %loadMem2_4332b0)
  store %struct.Memory* %call2_4332b0, %struct.Memory** %MEMORY

  ; Code: .L_4332b5:	 RIP: 4332b5	 Bytes: 0
  br label %block_.L_4332b5
block_.L_4332b5:

  ; Code: movb $0x0, %al	 RIP: 4332b5	 Bytes: 2
  %loadMem_4332b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4332b5 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4332b5)
  store %struct.Memory* %call_4332b5, %struct.Memory** %MEMORY

  ; Code: callq .clear_rdopt	 RIP: 4332b7	 Bytes: 5
  %loadMem1_4332b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4332b7 = call %struct.Memory* @routine_callq_.clear_rdopt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4332b7, i64 322153, i64 5, i64 5)
  store %struct.Memory* %call1_4332b7, %struct.Memory** %MEMORY

  %loadMem2_4332b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4332b7 = load i64, i64* %3
  %call2_4332b7 = call %struct.Memory* @sub_481d20.clear_rdopt(%struct.State* %0, i64  %loadPC_4332b7, %struct.Memory* %loadMem2_4332b7)
  store %struct.Memory* %call2_4332b7, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 4332bc	 Bytes: 2
  %loadMem_4332bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4332bc = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4332bc)
  store %struct.Memory* %call_4332bc, %struct.Memory** %MEMORY

  ; Code: callq .calc_buffer	 RIP: 4332be	 Bytes: 5
  %loadMem1_4332be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4332be = call %struct.Memory* @routine_callq_.calc_buffer(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4332be, i64 -4846, i64 5, i64 5)
  store %struct.Memory* %call1_4332be, %struct.Memory** %MEMORY

  %loadMem2_4332be = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4332be = load i64, i64* %3
  %call2_4332be = call %struct.Memory* @sub_431fd0.calc_buffer(%struct.State* %0, i64  %loadPC_4332be, %struct.Memory* %loadMem2_4332be)
  store %struct.Memory* %call2_4332be, %struct.Memory** %MEMORY

  ; Code: callq .report	 RIP: 4332c3	 Bytes: 5
  %loadMem1_4332c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4332c3 = call %struct.Memory* @routine_callq_.report(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4332c3, i64 11677, i64 5, i64 5)
  store %struct.Memory* %call1_4332c3, %struct.Memory** %MEMORY

  %loadMem2_4332c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4332c3 = load i64, i64* %3
  %call2_4332c3 = call %struct.Memory* @sub_436060.report(%struct.State* %0, i64  %loadPC_4332c3, %struct.Memory* %loadMem2_4332c3)
  store %struct.Memory* %call2_4332c3, %struct.Memory** %MEMORY

  ; Code: movq 0x711c40, %rdi	 RIP: 4332c8	 Bytes: 8
  %loadMem_4332c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4332c8 = call %struct.Memory* @routine_movq_0x711c40___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4332c8)
  store %struct.Memory* %call_4332c8, %struct.Memory** %MEMORY

  ; Code: callq .free_picture	 RIP: 4332d0	 Bytes: 5
  %loadMem1_4332d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4332d0 = call %struct.Memory* @routine_callq_.free_picture(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4332d0, i64 17040, i64 5, i64 5)
  store %struct.Memory* %call1_4332d0, %struct.Memory** %MEMORY

  %loadMem2_4332d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4332d0 = load i64, i64* %3
  %call2_4332d0 = call %struct.Memory* @sub_437560.free_picture(%struct.State* %0, i64  %loadPC_4332d0, %struct.Memory* %loadMem2_4332d0)
  store %struct.Memory* %call2_4332d0, %struct.Memory** %MEMORY

  ; Code: movq 0x6cb8f8, %rdi	 RIP: 4332d5	 Bytes: 8
  %loadMem_4332d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4332d5 = call %struct.Memory* @routine_movq_0x6cb8f8___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4332d5)
  store %struct.Memory* %call_4332d5, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0x510(%rdi)	 RIP: 4332dd	 Bytes: 7
  %loadMem_4332dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4332dd = call %struct.Memory* @routine_cmpl__0x0__0x510__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4332dd)
  store %struct.Memory* %call_4332dd, %struct.Memory** %MEMORY

  ; Code: je .L_433304	 RIP: 4332e4	 Bytes: 6
  %loadMem_4332e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4332e4 = call %struct.Memory* @routine_je_.L_433304(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4332e4, i8* %BRANCH_TAKEN, i64 32, i64 6, i64 6)
  store %struct.Memory* %call_4332e4, %struct.Memory** %MEMORY

  %loadBr_4332e4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4332e4 = icmp eq i8 %loadBr_4332e4, 1
  br i1 %cmpBr_4332e4, label %block_.L_433304, label %block_4332ea

block_4332ea:
  ; Code: movq 0x6d11c8, %rdi	 RIP: 4332ea	 Bytes: 8
  %loadMem_4332ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4332ea = call %struct.Memory* @routine_movq_0x6d11c8___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4332ea)
  store %struct.Memory* %call_4332ea, %struct.Memory** %MEMORY

  ; Code: callq .free_picture	 RIP: 4332f2	 Bytes: 5
  %loadMem1_4332f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4332f2 = call %struct.Memory* @routine_callq_.free_picture(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4332f2, i64 17006, i64 5, i64 5)
  store %struct.Memory* %call1_4332f2, %struct.Memory** %MEMORY

  %loadMem2_4332f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4332f2 = load i64, i64* %3
  %call2_4332f2 = call %struct.Memory* @sub_437560.free_picture(%struct.State* %0, i64  %loadPC_4332f2, %struct.Memory* %loadMem2_4332f2)
  store %struct.Memory* %call2_4332f2, %struct.Memory** %MEMORY

  ; Code: movq 0x721df0, %rdi	 RIP: 4332f7	 Bytes: 8
  %loadMem_4332f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4332f7 = call %struct.Memory* @routine_movq_0x721df0___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4332f7)
  store %struct.Memory* %call_4332f7, %struct.Memory** %MEMORY

  ; Code: callq .free_picture	 RIP: 4332ff	 Bytes: 5
  %loadMem1_4332ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4332ff = call %struct.Memory* @routine_callq_.free_picture(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4332ff, i64 16993, i64 5, i64 5)
  store %struct.Memory* %call1_4332ff, %struct.Memory** %MEMORY

  %loadMem2_4332ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4332ff = load i64, i64* %3
  %call2_4332ff = call %struct.Memory* @sub_437560.free_picture(%struct.State* %0, i64  %loadPC_4332ff, %struct.Memory* %loadMem2_4332ff)
  store %struct.Memory* %call2_4332ff, %struct.Memory** %MEMORY

  ; Code: .L_433304:	 RIP: 433304	 Bytes: 0
  br label %block_.L_433304
block_.L_433304:

  ; Code: cmpq $0x0, 0x6d4758	 RIP: 433304	 Bytes: 9
  %loadMem_433304 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433304 = call %struct.Memory* @routine_cmpq__0x0__0x6d4758(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433304)
  store %struct.Memory* %call_433304, %struct.Memory** %MEMORY

  ; Code: je .L_433320	 RIP: 43330d	 Bytes: 6
  %loadMem_43330d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43330d = call %struct.Memory* @routine_je_.L_433320(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43330d, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_43330d, %struct.Memory** %MEMORY

  %loadBr_43330d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43330d = icmp eq i8 %loadBr_43330d, 1
  br i1 %cmpBr_43330d, label %block_.L_433320, label %block_433313

block_433313:
  ; Code: movq 0x6d4758, %rdi	 RIP: 433313	 Bytes: 8
  %loadMem_433313 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433313 = call %struct.Memory* @routine_movq_0x6d4758___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433313)
  store %struct.Memory* %call_433313, %struct.Memory** %MEMORY

  ; Code: callq .free_picture	 RIP: 43331b	 Bytes: 5
  %loadMem1_43331b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43331b = call %struct.Memory* @routine_callq_.free_picture(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43331b, i64 16965, i64 5, i64 5)
  store %struct.Memory* %call1_43331b, %struct.Memory** %MEMORY

  %loadMem2_43331b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43331b = load i64, i64* %3
  %call2_43331b = call %struct.Memory* @sub_437560.free_picture(%struct.State* %0, i64  %loadPC_43331b, %struct.Memory* %loadMem2_43331b)
  store %struct.Memory* %call2_43331b, %struct.Memory** %MEMORY

  ; Code: .L_433320:	 RIP: 433320	 Bytes: 0
  br label %block_.L_433320
block_.L_433320:

  ; Code: cmpq $0x0, 0x6f80a8	 RIP: 433320	 Bytes: 9
  %loadMem_433320 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433320 = call %struct.Memory* @routine_cmpq__0x0__0x6f80a8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433320)
  store %struct.Memory* %call_433320, %struct.Memory** %MEMORY

  ; Code: je .L_43333c	 RIP: 433329	 Bytes: 6
  %loadMem_433329 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433329 = call %struct.Memory* @routine_je_.L_43333c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433329, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_433329, %struct.Memory** %MEMORY

  %loadBr_433329 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_433329 = icmp eq i8 %loadBr_433329, 1
  br i1 %cmpBr_433329, label %block_.L_43333c, label %block_43332f

block_43332f:
  ; Code: movq 0x6f80a8, %rdi	 RIP: 43332f	 Bytes: 8
  %loadMem_43332f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43332f = call %struct.Memory* @routine_movq_0x6f80a8___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43332f)
  store %struct.Memory* %call_43332f, %struct.Memory** %MEMORY

  ; Code: callq .free_picture	 RIP: 433337	 Bytes: 5
  %loadMem1_433337 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_433337 = call %struct.Memory* @routine_callq_.free_picture(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_433337, i64 16937, i64 5, i64 5)
  store %struct.Memory* %call1_433337, %struct.Memory** %MEMORY

  %loadMem2_433337 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_433337 = load i64, i64* %3
  %call2_433337 = call %struct.Memory* @sub_437560.free_picture(%struct.State* %0, i64  %loadPC_433337, %struct.Memory* %loadMem2_433337)
  store %struct.Memory* %call2_433337, %struct.Memory** %MEMORY

  ; Code: .L_43333c:	 RIP: 43333c	 Bytes: 0
  br label %block_.L_43333c
block_.L_43333c:

  ; Code: movb $0x0, %al	 RIP: 43333c	 Bytes: 2
  %loadMem_43333c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43333c = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43333c)
  store %struct.Memory* %call_43333c, %struct.Memory** %MEMORY

  ; Code: callq .free_dpb	 RIP: 43333e	 Bytes: 5
  %loadMem1_43333e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43333e = call %struct.Memory* @routine_callq_.free_dpb(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43333e, i64 99442, i64 5, i64 5)
  store %struct.Memory* %call1_43333e, %struct.Memory** %MEMORY

  %loadMem2_43333e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43333e = load i64, i64* %3
  %call2_43333e = call %struct.Memory* @sub_44b7b0.free_dpb(%struct.State* %0, i64  %loadPC_43333e, %struct.Memory* %loadMem2_43333e)
  store %struct.Memory* %call2_43333e, %struct.Memory** %MEMORY

  ; Code: movq 0x6cc330, %rdi	 RIP: 433343	 Bytes: 8
  %loadMem_433343 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433343 = call %struct.Memory* @routine_movq_0x6cc330___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433343)
  store %struct.Memory* %call_433343, %struct.Memory** %MEMORY

  ; Code: callq .free_colocated	 RIP: 43334b	 Bytes: 5
  %loadMem1_43334b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43334b = call %struct.Memory* @routine_callq_.free_colocated(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43334b, i64 139429, i64 5, i64 5)
  store %struct.Memory* %call1_43334b, %struct.Memory** %MEMORY

  %loadMem2_43334b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43334b = load i64, i64* %3
  %call2_43334b = call %struct.Memory* @sub_4553f0.free_colocated(%struct.State* %0, i64  %loadPC_43334b, %struct.Memory* %loadMem2_43334b)
  store %struct.Memory* %call2_43334b, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 433350	 Bytes: 2
  %loadMem_433350 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433350 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433350)
  store %struct.Memory* %call_433350, %struct.Memory** %MEMORY

  ; Code: callq .uninit_out_buffer	 RIP: 433352	 Bytes: 5
  %loadMem1_433352 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_433352 = call %struct.Memory* @routine_callq_.uninit_out_buffer(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_433352, i64 273598, i64 5, i64 5)
  store %struct.Memory* %call1_433352, %struct.Memory** %MEMORY

  %loadMem2_433352 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_433352 = load i64, i64* %3
  %call2_433352 = call %struct.Memory* @sub_476010.uninit_out_buffer(%struct.State* %0, i64  %loadPC_433352, %struct.Memory* %loadMem2_433352)
  store %struct.Memory* %call2_433352, %struct.Memory** %MEMORY

  ; Code: callq .free_global_buffers	 RIP: 433357	 Bytes: 5
  %loadMem1_433357 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_433357 = call %struct.Memory* @routine_callq_.free_global_buffers(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_433357, i64 16953, i64 5, i64 5)
  store %struct.Memory* %call1_433357, %struct.Memory** %MEMORY

  %loadMem2_433357 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_433357 = load i64, i64* %3
  %call2_433357 = call %struct.Memory* @sub_437590.free_global_buffers(%struct.State* %0, i64  %loadPC_433357, %struct.Memory* %loadMem2_433357)
  store %struct.Memory* %call2_433357, %struct.Memory** %MEMORY

  ; Code: callq .free_img	 RIP: 43335c	 Bytes: 5
  %loadMem1_43335c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43335c = call %struct.Memory* @routine_callq_.free_img(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43335c, i64 18132, i64 5, i64 5)
  store %struct.Memory* %call1_43335c, %struct.Memory** %MEMORY

  %loadMem2_43335c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43335c = load i64, i64* %3
  %call2_43335c = call %struct.Memory* @sub_437a30.free_img(%struct.State* %0, i64  %loadPC_43335c, %struct.Memory* %loadMem2_43335c)
  store %struct.Memory* %call2_43335c, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 433361	 Bytes: 2
  %loadMem_433361 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433361 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433361)
  store %struct.Memory* %call_433361, %struct.Memory** %MEMORY

  ; Code: callq .free_context_memory	 RIP: 433363	 Bytes: 5
  %loadMem1_433363 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_433363 = call %struct.Memory* @routine_callq_.free_context_memory(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_433363, i64 -112771, i64 5, i64 5)
  store %struct.Memory* %call1_433363, %struct.Memory** %MEMORY

  %loadMem2_433363 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_433363 = load i64, i64* %3
  %call2_433363 = call %struct.Memory* @sub_417ae0.free_context_memory(%struct.State* %0, i64  %loadPC_433363, %struct.Memory* %loadMem2_433363)
  store %struct.Memory* %call2_433363, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 433368	 Bytes: 2
  %loadMem_433368 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433368 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433368)
  store %struct.Memory* %call_433368, %struct.Memory** %MEMORY

  ; Code: callq .FreeNalPayloadBuffer	 RIP: 43336a	 Bytes: 5
  %loadMem1_43336a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_43336a = call %struct.Memory* @routine_callq_.FreeNalPayloadBuffer(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_43336a, i64 270534, i64 5, i64 5)
  store %struct.Memory* %call1_43336a, %struct.Memory** %MEMORY

  %loadMem2_43336a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43336a = load i64, i64* %3
  %call2_43336a = call %struct.Memory* @sub_475430.FreeNalPayloadBuffer(%struct.State* %0, i64  %loadPC_43336a, %struct.Memory* %loadMem2_43336a)
  store %struct.Memory* %call2_43336a, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 43336f	 Bytes: 2
  %loadMem_43336f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43336f = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43336f)
  store %struct.Memory* %call_43336f, %struct.Memory** %MEMORY

  ; Code: callq .FreeParameterSets	 RIP: 433371	 Bytes: 5
  %loadMem1_433371 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_433371 = call %struct.Memory* @routine_callq_.FreeParameterSets(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_433371, i64 279103, i64 5, i64 5)
  store %struct.Memory* %call1_433371, %struct.Memory** %MEMORY

  %loadMem2_433371 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_433371 = load i64, i64* %3
  %call2_433371 = call %struct.Memory* @sub_4775b0.FreeParameterSets(%struct.State* %0, i64  %loadPC_433371, %struct.Memory* %loadMem2_433371)
  store %struct.Memory* %call2_433371, %struct.Memory** %MEMORY

  ; Code: xorl %eax, %eax	 RIP: 433376	 Bytes: 2
  %loadMem_433376 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433376 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433376)
  store %struct.Memory* %call_433376, %struct.Memory** %MEMORY

  ; Code: addq $0x90, %rsp	 RIP: 433378	 Bytes: 7
  %loadMem_433378 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433378 = call %struct.Memory* @routine_addq__0x90___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433378)
  store %struct.Memory* %call_433378, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 43337f	 Bytes: 1
  %loadMem_43337f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_43337f = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_43337f)
  store %struct.Memory* %call_43337f, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 433380	 Bytes: 1
  %loadMem_433380 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_433380 = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_433380)
  store %struct.Memory* %call_433380, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_433380
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

define %struct.Memory* @routine_subq__0x90___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 144)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
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


define %struct.Memory* @routine_movl__0xffffffff__0x6f6e10(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x6f6e10_type* @G_0x6f6e10 to i64), i64 -1)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movl__0xffffffff__0x7242a4(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x7242a4_type* @G_0x7242a4 to i64), i64 -1)
  ret %struct.Memory* %8
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = inttoptr i64 %2 to i64*
  store i64 %3, i64* %5
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__0x0__0x723e20(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 12
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x723e20_type* @G_0x723e20 to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movq__0x0__0x70d198(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 12
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x70d198_type* @G_0x70d198 to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movq__0x0__0x6e51e8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 12
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x6e51e8_type* @G_0x6e51e8 to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movl__0x1__0x70d194(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x70d194_type* @G_0x70d194 to i64), i64 1)
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

define %struct.Memory* @routine_callq_.Configure(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_callq_.Init_QMatrix(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_callq_.Init_QOffsetMatrix(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_callq_.AllocNalPayloadBuffer(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_callq_.init_poc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_callq_.GenerateParameterSets(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_callq_.init_img(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_callq_.malloc_picture(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__rax__0x711c40(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x711c40_type* @G_0x711c40 to i64), i64 %9)
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

define %struct.Memory* @routine_cmpl__0x0__0x510__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 1296
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

define %struct.Memory* @routine_je_.L_4327da(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movq__rax__0x6d11c8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x6d11c8_type* @G_0x6d11c8 to i64), i64 %9)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_movq__rax__0x721df0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x721df0_type* @G_0x721df0 to i64), i64 %9)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_cmpl__0x0__0xb40__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_432809(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movq__rax__0x6d4758(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x6d4758_type* @G_0x6d4758 to i64), i64 %9)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_movq__rax__0x6f80a8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x6f80a8_type* @G_0x6f80a8 to i64), i64 %9)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_callq_.init_rdopt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x0__0x528__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 1320
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_432859(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_callq_.init_gop_structure(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpl__0x3__0x528__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 1320
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 3)
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

define %struct.Memory* @routine_jne_.L_43284d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_callq_.interpret_gop_structure(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jmpq_.L_432854(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_callq_.create_pyramid(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_432859(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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




define %struct.Memory* @routine_callq_.init_dpb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_callq_.init_out_buffer(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x0__0x6f9710(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 12
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x6f9710_type* @G_0x6f9710 to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movq__0x0__0x6f96a0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 12
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x6f96a0_type* @G_0x6f96a0 to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movq__0x0__0x710a50(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 12
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x710a50_type* @G_0x710a50 to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movq__0x0__0x70fcf0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 12
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x70fcf0_type* @G_0x70fcf0 to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_callq_.init_global_buffers(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_callq_.create_context_memory(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_callq_.Init_Motion_Search_Module(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_callq_.information_init(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpl__0x0__0xca4__rdi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 3236
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_4328d6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_callq_.rc_init_seq(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpl__0x0__0xcdc__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 3292
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_4328f2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_callq_.DefineThreshold(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x0__0x6f8edc(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x6f8edc_type* @G_0x6f8edc to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movl__0x0__0x6cee50(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x6cee50_type* @G_0x6cee50 to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movl__0x0__0x722ca8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x722ca8_type* @G_0x722ca8 to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movl__0x0__0x725260(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x725260_type* @G_0x725260 to i64), i64 0)
  ret %struct.Memory* %8
}




define %struct.Memory* @routine_cmpl__0x0__0x988__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 2440
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
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

define %struct.Memory* @routine_jle_.L_432973(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl_0x988__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 2440
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
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

define %struct.Memory* @routine_addl_0x14__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = add i64 %13, 20
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movl_0x14__rax____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
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


define %struct.Memory* @routine_movl__edx__MINUS0x30__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 48
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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


define %struct.Memory* @routine_movl_MINUS0x30__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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


define %struct.Memory* @routine_movl__ecx__0x6cc018(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x6cc018_type* @G_0x6cc018 to i64), i64 %10)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_callq_.PatchInputNoFrames(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq_0x6cb908___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G_0x6cb908_type* @G_0x6cb908 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__0x0__0x5d0__rdx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 1488
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_callq_.start_sequence(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl__eax__0x18__rdx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %12 = load i64, i64* %RDX
  %13 = add i64 %12, 24
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movl_0x5d4__rdx____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 1492
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_addl_0x5d0__rdx____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = add i64 %13, 1488
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__eax__0x5d0__rdx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %12 = load i64, i64* %RDX
  %13 = add i64 %12, 1488
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__0x0__0x6cc020(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x6cc020_type* @G_0x6cc020 to i64), i64 0)
  ret %struct.Memory* %8
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


define %struct.Memory* @routine_movl__0x0____rdx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %9, i64 0)
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

define %struct.Memory* @routine_cmpl_0x8__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 8
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
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

define %struct.Memory* @routine_jge_.L_43321b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl__0x1__0x11b30__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 72496
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_cmpl__0x0__0x4c8__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 1224
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_432a77(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpl__0x0__0x4cc__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 1228
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
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

define %struct.Memory* @routine_subl_0x6cc020___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 ptrtoint( %G_0x6cc020_type* @G_0x6cc020 to i64))
  ret %struct.Memory* %12
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






define %struct.Memory* @routine_movq_MINUS0x38__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
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

define %struct.Memory* @routine_idivl_0x4c8__rsi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 1224
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 6
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__edx__MINUS0x3c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 60
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_432a8b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_movl__ecx__MINUS0x3c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 60
  %14 = load i32, i32* %ECX
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




define %struct.Memory* @routine_movl_0x14__rcx____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
  %6 = shl i64 %3, 32
  %7 = ashr exact i64 %6, 32
  %8 = shl i64 %4, 32
  %9 = ashr exact i64 %8, 32
  %10 = mul  i64 %9, %7
  %11 = trunc i64 %10 to i32
  %12 = and i64 %10, 4294967295
  store i64 %12, i64* %2, align 8
  %13 = shl i64 %10, 32
  %14 = ashr exact i64 %13, 32
  %15 = icmp ne i64 %14, %10
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 %16, i8* %17, align 1
  %18 = and i32 %11, 255
  %19 = tail call i32 @llvm.ctpop.i32(i32 %18) #22
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 0, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 0, i8* %25, align 1
  %26 = lshr i32 %11, 31
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 %16, i8* %29, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_imull__edx___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_movl__eax__0x11b00__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 72448
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_cmpl__0x0__0xb40__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 2880
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_432afb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl__ecx__0x11b04__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 72452
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_432b1a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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












define %struct.Memory* @routine_cmpl_0x11b04__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 72452
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_432b52(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movl__ecx__MINUS0x40__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 64
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_432b63(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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




define %struct.Memory* @routine_movl__eax__0x11b08__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 72456
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_cmpl__0x0__0x524__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 1316
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_432b9e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_je_.L_432bc4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_cmpl__0x2____rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %9, i64 2)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_jge_.L_432c6c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_je_.L_432c20(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movq_MINUS0x48__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 72
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__edx__MINUS0x4c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 76
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_432c34(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_movl__ecx__MINUS0x4c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 76
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x4c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 76
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
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


define %struct.Memory* @routine_movl_0x722c98___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G_0x722c98_type* @G_0x722c98 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_addl__0x4___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 4)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl__ecx__MINUS0x50__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 80
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
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


define %struct.Memory* @routine_movl_MINUS0x50__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 80
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
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


define %struct.Memory* @routine_movl__edx__MINUS0x54__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 84
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movl_MINUS0x54__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 84
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movl__edx__0x11b10__rdi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 72464
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_432d2a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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




define %struct.Memory* @routine_movl__ecx__0x11b10__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 72464
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_je_.L_432cef(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl___rcx____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 2
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12)
  ret %struct.Memory* %15
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




define %struct.Memory* @routine_idivl_0x4c8__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 1224
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 6
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_MINUS0x58__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 88
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
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


define %struct.Memory* @routine_jne_.L_432cea(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl__0x0__0x11b10__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 72464
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jmpq_.L_432cef(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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


define %struct.Memory* @routine_movl_0x722c98___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G_0x722c98_type* @G_0x722c98 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_addl__0x4___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 4)
  ret %struct.Memory* %12
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




define %struct.Memory* @routine_movl_0x11b10__rdx____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 72464
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
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


define %struct.Memory* @routine_movq__rdx__MINUS0x68__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_movl_MINUS0x5c__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 92
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L9DIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_(%struct.Memory*, %struct.State* dereferenceable(3376), i64) #0 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 1, i32 0
  %5 = bitcast %union.anon* %4 to i32*
  %6 = load i32, i32* %5, align 8
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 7, i32 0
  %9 = bitcast %union.anon* %8 to i32*
  %10 = load i32, i32* %9, align 8
  %11 = zext i32 %10 to i64
  %12 = and i64 %2, 4294967295
  %13 = shl  i64 %11, 32
  %14 = or i64 %13, %7
  %15 = udiv i64 %14, %12
  %16 = and i64 %15, 4294967295
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %22, label %18

; <label>:18:                                     ; preds = %3
  %19 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %1, i64 %20, %struct.Memory* %0) #21
  br label %32

; <label>:22:                                     ; preds = %3
  %23 = urem i64 %14, %12
  %24 = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0
  store i64 %15, i64* %24, align 8
  %25 = getelementptr inbounds %union.anon, %union.anon* %8, i64 0, i32 0
  store i64 %23, i64* %25, align 8
  %26 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 0, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 0, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 0, i8* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 0, i8* %29, align 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 0, i8* %30, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 0, i8* %31, align 1
  br label %32

; <label>:32:                                     ; preds = %22, %18
  %33 = phi %struct.Memory* [ %21, %18 ], [ %0, %22 ]
  ret %struct.Memory* %33
}

define %struct.Memory* @routine_divl__esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9DIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movq_MINUS0x68__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 104
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movl__0x0__0x11af4__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 72436
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
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


define %struct.Memory* @routine_je_.L_432d86(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_je_.L_432d81(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_shll__0x1___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 1)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_movl__ecx__0x11af4__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 72436
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_432d86(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_callq_.SetImgType(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_je_.L_432ed5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




















define %struct.Memory* @routine_jne_.L_432ed5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movsd_0x7eabe__rip____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0x7eabe__rip__type* @G_0x7eabe__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movsd_0x7ea76__rip____xmm1(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, ptrtoint( %G_0x7ea76__rip__type* @G_0x7ea76__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %8, i64 %10)
  ret %struct.Memory* %13
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSS2SDI2VnI8vec128_tEEEP6MemoryS5_R5State3VnWI8vec256_tET_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i8* nocapture readonly) #0 {
  %5 = bitcast i8* %3 to <2 x float>*
  %6 = load <2 x float>, <2 x float>* %5, align 1
  %7 = extractelement <2 x float> %6, i32 0
  %8 = fpext float %7 to double
  %9 = bitcast i8* %2 to double*
  store double %8, double* %9, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_cvtss2sd__xmm2___xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %11 = bitcast %union.vec128_t* %XMM2 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSS2SDI2VnI8vec128_tEEEP6MemoryS5_R5State3VnWI8vec256_tET_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11)
  ret %struct.Memory* %14
}



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SDI2MnIjEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory*, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = sitofp i32 %6 to double
  %8 = bitcast i8* %2 to double*
  store double %7, double* %8, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_cvtsi2sdl_0x4d4__rax____xmm3(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 1236
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L8CVTSI2SDI2MnIjEEEP6MemoryS4_R5State3VnWI8vec128_tET_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
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

define %struct.Memory* @routine_addsd__xmm1___xmm3(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 3
  %YMM3 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM3 to i8*
  %12 = bitcast %union.vec128_t* %XMM1 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5ADDSDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
  ret %struct.Memory* %15
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

define %struct.Memory* @routine_divsd__xmm3___xmm2(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5DIVSDI3VnWI8vec128_tE2VnIS2_ES5_EEP6MemoryS7_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %10, i8* %11, i8* %12)
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

define %struct.Memory* @routine_cvttsd2si__xmm2___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = bitcast %union.vec128_t* %XMM2 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L11CVTSD2SI_32I2VnI8vec128_tEXadL_ZNS_L18FTruncTowardZero64EdEEEEP6MemoryS5_R5State3RnWImET_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i8* %11)
  ret %struct.Memory* %14
}


define %struct.Memory* @routine_movl__ecx__MINUS0x28__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 40
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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




define %struct.Memory* @routine_movl_0x14__rax____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addl__0x1___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 1)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_imull__esi___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %14)
  ret %struct.Memory* %17
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

define %struct.Memory* @routine_subl__edx___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i32, i32* %EDX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}






define %struct.Memory* @routine_idivl_MINUS0x28__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 3
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %10)
  ret %struct.Memory* %13
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




define %struct.Memory* @routine_movl__eax__0x4d4__rdi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %12 = load i64, i64* %RDI
  %13 = add i64 %12, 1236
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_0x6cc018___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0x6cc018_type* @G_0x6cc018 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_subl_0x4d4__rdi____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = load i64, i64* %RDI
  %14 = add i64 %13, 1236
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
  %6 = shl i64 %3, 32
  %7 = ashr exact i64 %6, 32
  %8 = shl i64 %4, 32
  %9 = ashr exact i64 %8, 32
  %10 = mul  i64 %9, %7
  %11 = trunc i64 %10 to i32
  %12 = and i64 %10, 4294967295
  store i64 %12, i64* %2, align 8
  %13 = shl i64 %10, 32
  %14 = ashr exact i64 %13, 32
  %15 = icmp ne i64 %14, %10
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 %16, i8* %17, align 1
  %18 = and i32 %11, 255
  %19 = tail call i32 @llvm.ctpop.i32(i32 %18) #22
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 0, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 0, i8* %25, align 1
  %26 = lshr i32 %11, 31
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 %16, i8* %29, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_imull__0xfffffffe___eax___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13, i64 -2)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__eax__0x11af4__rdi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %12 = load i64, i64* %RDI
  %13 = add i64 %12, 72436
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movl_0x11af4__rdi____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 72436
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_addl_0x11b00__rdi____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = load i64, i64* %RDI
  %14 = add i64 %13, 72448
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__eax__0x11b00__rdi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %12 = load i64, i64* %RDI
  %13 = add i64 %12, 72448
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}








define %struct.Memory* @routine_addl_0x11b04__rdi____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = load i64, i64* %RDI
  %14 = add i64 %13, 72452
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__eax__0x11b04__rdi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %12 = load i64, i64* %RDI
  %13 = add i64 %12, 72452
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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


define %struct.Memory* @routine_jne_.L_433116(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpl__0x0__0xca4__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 3236
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_433111(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jne_.L_432f74(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl_0x8__rax____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
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

define %struct.Memory* @routine_imull_0x4d4__rax____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = add i64 %13, 1236
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %14)
  ret %struct.Memory* %17
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

define %struct.Memory* @routine_addl__edx___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i32, i32* %EDX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
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


define %struct.Memory* @routine_movl__ecx__MINUS0x20__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 32
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}










define %struct.Memory* @routine_imull_0x4d4__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = add i64 %13, 1236
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__ecx__MINUS0x24__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 36
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_433106(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_movl_0x4c8__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 1224
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl_0x4d4__rax____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 1236
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_imull__edx___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i32, i32* %EDX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
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






define %struct.Memory* @routine_jne_.L_432fd1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_subl__ecx___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__eax__MINUS0x6c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 108
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_432fd7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_movl_MINUS0x6c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 108
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




define %struct.Memory* @routine_movl___rcx____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = add i64 %13, 2
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12)
  ret %struct.Memory* %15
}










define %struct.Memory* @routine_movl_0x8__rcx____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__eax__MINUS0x70__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 112
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}








define %struct.Memory* @routine_movl_MINUS0x70__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 112
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_cmpl__eax___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %ESI = bitcast %union.anon* %11 to i32*
  %12 = load i32, i32* %ESI
  %13 = zext i32 %12 to i64
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 2
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjES2_EEP6MemoryS4_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
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

define %struct.Memory* @routine_jl_.L_4330b7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_je_.L_433085(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_subl___rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_subl___rax____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %13)
  ret %struct.Memory* %16
}












define %struct.Memory* @routine_addl_0x4d4__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = add i64 %13, 1236
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_jmpq_.L_4330b2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




















define %struct.Memory* @routine_jmpq_.L_4330b7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_jne_.L_4330e5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_idivl_MINUS0x14__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 3
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %10)
  ret %struct.Memory* %13
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


define %struct.Memory* @routine_jmpq_.L_4330fa(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




















define %struct.Memory* @routine_subl_MINUS0x20__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = sub i64 %13, 32
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


define %struct.Memory* @routine_movl_MINUS0x20__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 32
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x24__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.rc_init_GOP(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_433116(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}










define %struct.Memory* @routine_movl_0xb60__rax____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 2912
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movl__edx__MINUS0x74__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 116
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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


define %struct.Memory* @routine_jne_.L_433163(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl__0x0__0x11ac0__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 72384
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jmpq_.L_433175(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_movl__0x1__0x11ac0__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 72384
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_callq_.encode_one_frame(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_je_.L_433199(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_callq_.report_frame_statistic(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_cmpl_0x11ab8__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 72376
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_4331dc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movl__ecx__MINUS0x7c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 124
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_4331ed(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_movl_0x11ab8__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 72376
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl_MINUS0x7c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 124
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
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




define %struct.Memory* @routine_callq_.encode_enhancement_layer(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_callq_.process_2nd_IGOP(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_4329ee(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_callq_.terminate_sequence(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__eax__MINUS0x80__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 128
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_callq_.flush_dpb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_0x6f6e10___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G_0x6f6e10_type* @G_0x6f6e10 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_callq_.close_plt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0xffffffff___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 4294967295)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_cmpl_0x7242a4___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EDI = bitcast %union.anon* %8 to i32*
  %9 = load i32, i32* %EDI
  %10 = zext i32 %9 to i64
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 ptrtoint( %G_0x7242a4_type* @G_0x7242a4 to i64))
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__eax__MINUS0x84__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 132
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_je_.L_433262(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_0x7242a4___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G_0x7242a4_type* @G_0x7242a4 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movl__eax__MINUS0x88__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 136
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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

define %struct.Memory* @routine_cmpq__0x0__0x723e20(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 9
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x723e20_type* @G_0x723e20 to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_je_.L_433284(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq_0x723e20___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G_0x723e20_type* @G_0x723e20 to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_movl__eax__MINUS0x8c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 140
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_callq_.Clear_Motion_Search_Module(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_callq_.RandomIntraUninit(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_callq_.FmoUninit(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_je_.L_4332b5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_callq_.clear_gop_structure(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_callq_.clear_rdopt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_callq_.calc_buffer(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_callq_.report(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq_0x711c40___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G_0x711c40_type* @G_0x711c40 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_callq_.free_picture(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpl__0x0__0x510__rdi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 1296
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_433304(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq_0x6d11c8___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G_0x6d11c8_type* @G_0x6d11c8 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movq_0x721df0___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G_0x721df0_type* @G_0x721df0 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_cmpq__0x0__0x6d4758(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 9
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x6d4758_type* @G_0x6d4758 to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_je_.L_433320(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq_0x6d4758___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G_0x6d4758_type* @G_0x6d4758 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_cmpq__0x0__0x6f80a8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 9
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x6f80a8_type* @G_0x6f80a8 to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_je_.L_43333c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq_0x6f80a8___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G_0x6f80a8_type* @G_0x6f80a8 to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_callq_.free_dpb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq_0x6cc330___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G_0x6cc330_type* @G_0x6cc330 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_callq_.free_colocated(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_callq_.uninit_out_buffer(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_callq_.free_global_buffers(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_callq_.free_img(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_callq_.free_context_memory(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_callq_.FreeNalPayloadBuffer(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_callq_.FreeParameterSets(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_addq__0x90___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 144)
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

