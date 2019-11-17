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
@seg_400558__eh_frame = internal constant %seg_400558__eh_frame_type <{ [208 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\07\10\10\00\00\00\1C\00\00\00(\FE\FF\FF+\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\10\00\00\00\1C\00\00\00,\FE\FF\FF\02\00\00\00\00\00\00\00\14\00\00\000\00\00\00\D0\FE\FF\FF\0B\00\00\00\00\00\00\00\00\00\00\00D\00\00\00H\00\00\00\D0\FE\FF\FFe\00\00\00\00B\0E\10\8F\02B\0E\18\8E\03E\0E \8D\04B\0E(\8C\05H\0E0\86\06H\0E8\83\07M\0E@r\0E8A\0E0A\0E(B\0E B\0E\18B\0E\10B\0E\08\00\10\00\00\00\90\00\00\00\F8\FE\FF\FF\02\00\00\00\00\00\00\00\00\00\00\00" }>

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


define %struct.Memory* @bitrv2conj(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .bitrv2conj:	 RIP: 401c10	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 401c10	 Bytes: 1
  %loadMem_401c10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c10 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c10)
  store %struct.Memory* %call_401c10, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 401c11	 Bytes: 3
  %loadMem_401c11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c11 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c11)
  store %struct.Memory* %call_401c11, %struct.Memory** %MEMORY

  ; Code: movl %edi, -0x4(%rbp)	 RIP: 401c14	 Bytes: 3
  %loadMem_401c14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c14 = call %struct.Memory* @routine_movl__edi__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c14)
  store %struct.Memory* %call_401c14, %struct.Memory** %MEMORY

  ; Code: movq %rsi, -0x10(%rbp)	 RIP: 401c17	 Bytes: 4
  %loadMem_401c17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c17 = call %struct.Memory* @routine_movq__rsi__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c17)
  store %struct.Memory* %call_401c17, %struct.Memory** %MEMORY

  ; Code: movq %rdx, -0x18(%rbp)	 RIP: 401c1b	 Bytes: 4
  %loadMem_401c1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c1b = call %struct.Memory* @routine_movq__rdx__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c1b)
  store %struct.Memory* %call_401c1b, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 401c1f	 Bytes: 4
  %loadMem_401c1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c1f = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c1f)
  store %struct.Memory* %call_401c1f, %struct.Memory** %MEMORY

  ; Code: movl $0x0, (%rdx)	 RIP: 401c23	 Bytes: 6
  %loadMem_401c23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c23 = call %struct.Memory* @routine_movl__0x0____rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c23)
  store %struct.Memory* %call_401c23, %struct.Memory** %MEMORY

  ; Code: movl -0x4(%rbp), %edi	 RIP: 401c29	 Bytes: 3
  %loadMem_401c29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c29 = call %struct.Memory* @routine_movl_MINUS0x4__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c29)
  store %struct.Memory* %call_401c29, %struct.Memory** %MEMORY

  ; Code: movl %edi, -0x2c(%rbp)	 RIP: 401c2c	 Bytes: 3
  %loadMem_401c2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c2c = call %struct.Memory* @routine_movl__edi__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c2c)
  store %struct.Memory* %call_401c2c, %struct.Memory** %MEMORY

  ; Code: movl $0x1, -0x30(%rbp)	 RIP: 401c2f	 Bytes: 7
  %loadMem_401c2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c2f = call %struct.Memory* @routine_movl__0x1__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c2f)
  store %struct.Memory* %call_401c2f, %struct.Memory** %MEMORY

  ; Code: .L_401c36:	 RIP: 401c36	 Bytes: 0
  br label %block_.L_401c36
block_.L_401c36:

  ; Code: movl -0x30(%rbp), %eax	 RIP: 401c36	 Bytes: 3
  %loadMem_401c36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c36 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c36)
  store %struct.Memory* %call_401c36, %struct.Memory** %MEMORY

  ; Code: shll $0x3, %eax	 RIP: 401c39	 Bytes: 3
  %loadMem_401c39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c39 = call %struct.Memory* @routine_shll__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c39)
  store %struct.Memory* %call_401c39, %struct.Memory** %MEMORY

  ; Code: cmpl -0x2c(%rbp), %eax	 RIP: 401c3c	 Bytes: 3
  %loadMem_401c3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c3c = call %struct.Memory* @routine_cmpl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c3c)
  store %struct.Memory* %call_401c3c, %struct.Memory** %MEMORY

  ; Code: jge .L_401c9b	 RIP: 401c3f	 Bytes: 6
  %loadMem_401c3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c3f = call %struct.Memory* @routine_jge_.L_401c9b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c3f, i8* %BRANCH_TAKEN, i64 92, i64 6, i64 6)
  store %struct.Memory* %call_401c3f, %struct.Memory** %MEMORY

  %loadBr_401c3f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401c3f = icmp eq i8 %loadBr_401c3f, 1
  br i1 %cmpBr_401c3f, label %block_.L_401c9b, label %block_401c45

block_401c45:
  ; Code: movl -0x2c(%rbp), %eax	 RIP: 401c45	 Bytes: 3
  %loadMem_401c45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c45 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c45)
  store %struct.Memory* %call_401c45, %struct.Memory** %MEMORY

  ; Code: sarl $0x1, %eax	 RIP: 401c48	 Bytes: 3
  %loadMem_401c48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c48 = call %struct.Memory* @routine_sarl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c48)
  store %struct.Memory* %call_401c48, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2c(%rbp)	 RIP: 401c4b	 Bytes: 3
  %loadMem_401c4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c4b = call %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c4b)
  store %struct.Memory* %call_401c4b, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x1c(%rbp)	 RIP: 401c4e	 Bytes: 7
  %loadMem_401c4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c4e = call %struct.Memory* @routine_movl__0x0__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c4e)
  store %struct.Memory* %call_401c4e, %struct.Memory** %MEMORY

  ; Code: .L_401c55:	 RIP: 401c55	 Bytes: 0
  br label %block_.L_401c55
block_.L_401c55:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 401c55	 Bytes: 3
  %loadMem_401c55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c55 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c55)
  store %struct.Memory* %call_401c55, %struct.Memory** %MEMORY

  ; Code: cmpl -0x30(%rbp), %eax	 RIP: 401c58	 Bytes: 3
  %loadMem_401c58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c58 = call %struct.Memory* @routine_cmpl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c58)
  store %struct.Memory* %call_401c58, %struct.Memory** %MEMORY

  ; Code: jge .L_401c8d	 RIP: 401c5b	 Bytes: 6
  %loadMem_401c5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c5b = call %struct.Memory* @routine_jge_.L_401c8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c5b, i8* %BRANCH_TAKEN, i64 50, i64 6, i64 6)
  store %struct.Memory* %call_401c5b, %struct.Memory** %MEMORY

  %loadBr_401c5b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401c5b = icmp eq i8 %loadBr_401c5b, 1
  br i1 %cmpBr_401c5b, label %block_.L_401c8d, label %block_401c61

block_401c61:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 401c61	 Bytes: 4
  %loadMem_401c61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c61 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c61)
  store %struct.Memory* %call_401c61, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rcx	 RIP: 401c65	 Bytes: 4
  %loadMem_401c65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c65 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c65)
  store %struct.Memory* %call_401c65, %struct.Memory** %MEMORY

  ; Code: movl (%rax,%rcx,4), %edx	 RIP: 401c69	 Bytes: 3
  %loadMem_401c69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c69 = call %struct.Memory* @routine_movl___rax__rcx_4____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c69)
  store %struct.Memory* %call_401c69, %struct.Memory** %MEMORY

  ; Code: addl -0x2c(%rbp), %edx	 RIP: 401c6c	 Bytes: 3
  %loadMem_401c6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c6c = call %struct.Memory* @routine_addl_MINUS0x2c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c6c)
  store %struct.Memory* %call_401c6c, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 401c6f	 Bytes: 4
  %loadMem_401c6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c6f = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c6f)
  store %struct.Memory* %call_401c6f, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %esi	 RIP: 401c73	 Bytes: 3
  %loadMem_401c73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c73 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c73)
  store %struct.Memory* %call_401c73, %struct.Memory** %MEMORY

  ; Code: addl -0x1c(%rbp), %esi	 RIP: 401c76	 Bytes: 3
  %loadMem_401c76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c76 = call %struct.Memory* @routine_addl_MINUS0x1c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c76)
  store %struct.Memory* %call_401c76, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rcx	 RIP: 401c79	 Bytes: 3
  %loadMem_401c79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c79 = call %struct.Memory* @routine_movslq__esi___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c79)
  store %struct.Memory* %call_401c79, %struct.Memory** %MEMORY

  ; Code: movl %edx, (%rax,%rcx,4)	 RIP: 401c7c	 Bytes: 3
  %loadMem_401c7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c7c = call %struct.Memory* @routine_movl__edx____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c7c)
  store %struct.Memory* %call_401c7c, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 401c7f	 Bytes: 3
  %loadMem_401c7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c7f = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c7f)
  store %struct.Memory* %call_401c7f, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 401c82	 Bytes: 3
  %loadMem_401c82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c82 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c82)
  store %struct.Memory* %call_401c82, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 401c85	 Bytes: 3
  %loadMem_401c85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c85 = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c85)
  store %struct.Memory* %call_401c85, %struct.Memory** %MEMORY

  ; Code: jmpq .L_401c55	 RIP: 401c88	 Bytes: 5
  %loadMem_401c88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c88 = call %struct.Memory* @routine_jmpq_.L_401c55(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c88, i64 -51, i64 5)
  store %struct.Memory* %call_401c88, %struct.Memory** %MEMORY

  br label %block_.L_401c55

  ; Code: .L_401c8d:	 RIP: 401c8d	 Bytes: 0
block_.L_401c8d:

  ; Code: movl -0x30(%rbp), %eax	 RIP: 401c8d	 Bytes: 3
  %loadMem_401c8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c8d = call %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c8d)
  store %struct.Memory* %call_401c8d, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %eax	 RIP: 401c90	 Bytes: 3
  %loadMem_401c90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c90 = call %struct.Memory* @routine_shll__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c90)
  store %struct.Memory* %call_401c90, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x30(%rbp)	 RIP: 401c93	 Bytes: 3
  %loadMem_401c93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c93 = call %struct.Memory* @routine_movl__eax__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c93)
  store %struct.Memory* %call_401c93, %struct.Memory** %MEMORY

  ; Code: jmpq .L_401c36	 RIP: 401c96	 Bytes: 5
  %loadMem_401c96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c96 = call %struct.Memory* @routine_jmpq_.L_401c36(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c96, i64 -96, i64 5)
  store %struct.Memory* %call_401c96, %struct.Memory** %MEMORY

  br label %block_.L_401c36

  ; Code: .L_401c9b:	 RIP: 401c9b	 Bytes: 0
block_.L_401c9b:

  ; Code: movl -0x30(%rbp), %eax	 RIP: 401c9b	 Bytes: 3
  %loadMem_401c9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c9b = call %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c9b)
  store %struct.Memory* %call_401c9b, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %eax	 RIP: 401c9e	 Bytes: 3
  %loadMem_401c9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401c9e = call %struct.Memory* @routine_shll__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401c9e)
  store %struct.Memory* %call_401c9e, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x34(%rbp)	 RIP: 401ca1	 Bytes: 3
  %loadMem_401ca1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ca1 = call %struct.Memory* @routine_movl__eax__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ca1)
  store %struct.Memory* %call_401ca1, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %eax	 RIP: 401ca4	 Bytes: 3
  %loadMem_401ca4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ca4 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ca4)
  store %struct.Memory* %call_401ca4, %struct.Memory** %MEMORY

  ; Code: shll $0x3, %eax	 RIP: 401ca7	 Bytes: 3
  %loadMem_401ca7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ca7 = call %struct.Memory* @routine_shll__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ca7)
  store %struct.Memory* %call_401ca7, %struct.Memory** %MEMORY

  ; Code: cmpl -0x2c(%rbp), %eax	 RIP: 401caa	 Bytes: 3
  %loadMem_401caa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401caa = call %struct.Memory* @routine_cmpl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401caa)
  store %struct.Memory* %call_401caa, %struct.Memory** %MEMORY

  ; Code: jne .L_4021bb	 RIP: 401cad	 Bytes: 6
  %loadMem_401cad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401cad = call %struct.Memory* @routine_jne_.L_4021bb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401cad, i8* %BRANCH_TAKEN, i64 1294, i64 6, i64 6)
  store %struct.Memory* %call_401cad, %struct.Memory** %MEMORY

  %loadBr_401cad = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401cad = icmp eq i8 %loadBr_401cad, 1
  br i1 %cmpBr_401cad, label %block_.L_4021bb, label %block_401cb3

block_401cb3:
  ; Code: movl $0x0, -0x24(%rbp)	 RIP: 401cb3	 Bytes: 7
  %loadMem_401cb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401cb3 = call %struct.Memory* @routine_movl__0x0__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401cb3)
  store %struct.Memory* %call_401cb3, %struct.Memory** %MEMORY

  ; Code: .L_401cba:	 RIP: 401cba	 Bytes: 0
  br label %block_.L_401cba
block_.L_401cba:

  ; Code: movl -0x24(%rbp), %eax	 RIP: 401cba	 Bytes: 3
  %loadMem_401cba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401cba = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401cba)
  store %struct.Memory* %call_401cba, %struct.Memory** %MEMORY

  ; Code: cmpl -0x30(%rbp), %eax	 RIP: 401cbd	 Bytes: 3
  %loadMem_401cbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401cbd = call %struct.Memory* @routine_cmpl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401cbd)
  store %struct.Memory* %call_401cbd, %struct.Memory** %MEMORY

  ; Code: jge .L_4021b6	 RIP: 401cc0	 Bytes: 6
  %loadMem_401cc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401cc0 = call %struct.Memory* @routine_jge_.L_4021b6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401cc0, i8* %BRANCH_TAKEN, i64 1270, i64 6, i64 6)
  store %struct.Memory* %call_401cc0, %struct.Memory** %MEMORY

  %loadBr_401cc0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401cc0 = icmp eq i8 %loadBr_401cc0, 1
  br i1 %cmpBr_401cc0, label %block_.L_4021b6, label %block_401cc6

block_401cc6:
  ; Code: movl $0x0, -0x1c(%rbp)	 RIP: 401cc6	 Bytes: 7
  %loadMem_401cc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401cc6 = call %struct.Memory* @routine_movl__0x0__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401cc6)
  store %struct.Memory* %call_401cc6, %struct.Memory** %MEMORY

  ; Code: .L_401ccd:	 RIP: 401ccd	 Bytes: 0
  br label %block_.L_401ccd
block_.L_401ccd:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 401ccd	 Bytes: 3
  %loadMem_401ccd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ccd = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ccd)
  store %struct.Memory* %call_401ccd, %struct.Memory** %MEMORY

  ; Code: cmpl -0x24(%rbp), %eax	 RIP: 401cd0	 Bytes: 3
  %loadMem_401cd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401cd0 = call %struct.Memory* @routine_cmpl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401cd0)
  store %struct.Memory* %call_401cd0, %struct.Memory** %MEMORY

  ; Code: jge .L_40204f	 RIP: 401cd3	 Bytes: 6
  %loadMem_401cd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401cd3 = call %struct.Memory* @routine_jge_.L_40204f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401cd3, i8* %BRANCH_TAKEN, i64 892, i64 6, i64 6)
  store %struct.Memory* %call_401cd3, %struct.Memory** %MEMORY

  %loadBr_401cd3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401cd3 = icmp eq i8 %loadBr_401cd3, 1
  br i1 %cmpBr_401cd3, label %block_.L_40204f, label %block_401cd9

block_401cd9:
  ; Code: movq $0x8000000000000000, %rax	 RIP: 401cd9	 Bytes: 10
  %loadMem_401cd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401cd9 = call %struct.Memory* @routine_movq__0x8000000000000000___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401cd9)
  store %struct.Memory* %call_401cd9, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %ecx	 RIP: 401ce3	 Bytes: 3
  %loadMem_401ce3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ce3 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ce3)
  store %struct.Memory* %call_401ce3, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %ecx	 RIP: 401ce6	 Bytes: 3
  %loadMem_401ce6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ce6 = call %struct.Memory* @routine_shll__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ce6)
  store %struct.Memory* %call_401ce6, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 401ce9	 Bytes: 4
  %loadMem_401ce9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ce9 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ce9)
  store %struct.Memory* %call_401ce9, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rsi	 RIP: 401ced	 Bytes: 4
  %loadMem_401ced = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ced = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ced)
  store %struct.Memory* %call_401ced, %struct.Memory** %MEMORY

  ; Code: addl (%rdx,%rsi,4), %ecx	 RIP: 401cf1	 Bytes: 3
  %loadMem_401cf1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401cf1 = call %struct.Memory* @routine_addl___rdx__rsi_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401cf1)
  store %struct.Memory* %call_401cf1, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x20(%rbp)	 RIP: 401cf4	 Bytes: 3
  %loadMem_401cf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401cf4 = call %struct.Memory* @routine_movl__ecx__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401cf4)
  store %struct.Memory* %call_401cf4, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %ecx	 RIP: 401cf7	 Bytes: 3
  %loadMem_401cf7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401cf7 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401cf7)
  store %struct.Memory* %call_401cf7, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %ecx	 RIP: 401cfa	 Bytes: 3
  %loadMem_401cfa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401cfa = call %struct.Memory* @routine_shll__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401cfa)
  store %struct.Memory* %call_401cfa, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 401cfd	 Bytes: 4
  %loadMem_401cfd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401cfd = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401cfd)
  store %struct.Memory* %call_401cfd, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rsi	 RIP: 401d01	 Bytes: 4
  %loadMem_401d01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d01 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d01)
  store %struct.Memory* %call_401d01, %struct.Memory** %MEMORY

  ; Code: addl (%rdx,%rsi,4), %ecx	 RIP: 401d05	 Bytes: 3
  %loadMem_401d05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d05 = call %struct.Memory* @routine_addl___rdx__rsi_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d05)
  store %struct.Memory* %call_401d05, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x28(%rbp)	 RIP: 401d08	 Bytes: 3
  %loadMem_401d08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d08 = call %struct.Memory* @routine_movl__ecx__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d08)
  store %struct.Memory* %call_401d08, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 401d0b	 Bytes: 4
  %loadMem_401d0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d0b = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d0b)
  store %struct.Memory* %call_401d0b, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rsi	 RIP: 401d0f	 Bytes: 4
  %loadMem_401d0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d0f = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d0f)
  store %struct.Memory* %call_401d0f, %struct.Memory** %MEMORY

  ; Code: movsd (%rdx,%rsi,8), %xmm0	 RIP: 401d13	 Bytes: 5
  %loadMem_401d13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d13 = call %struct.Memory* @routine_movsd___rdx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d13)
  store %struct.Memory* %call_401d13, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x40(%rbp)	 RIP: 401d18	 Bytes: 5
  %loadMem_401d18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d18 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d18)
  store %struct.Memory* %call_401d18, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 401d1d	 Bytes: 4
  %loadMem_401d1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d1d = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d1d)
  store %struct.Memory* %call_401d1d, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %ecx	 RIP: 401d21	 Bytes: 3
  %loadMem_401d21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d21 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d21)
  store %struct.Memory* %call_401d21, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 401d24	 Bytes: 3
  %loadMem_401d24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d24 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d24)
  store %struct.Memory* %call_401d24, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 401d27	 Bytes: 3
  %loadMem_401d27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d27 = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d27)
  store %struct.Memory* %call_401d27, %struct.Memory** %MEMORY

  ; Code: movsd (%rdx,%rsi,8), %xmm0	 RIP: 401d2a	 Bytes: 5
  %loadMem_401d2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d2a = call %struct.Memory* @routine_movsd___rdx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d2a)
  store %struct.Memory* %call_401d2a, %struct.Memory** %MEMORY

  ; Code: movq %xmm0, %rdx	 RIP: 401d2f	 Bytes: 5
  %loadMem_401d2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d2f = call %struct.Memory* @routine_movq__xmm0___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d2f)
  store %struct.Memory* %call_401d2f, %struct.Memory** %MEMORY

  ; Code: xorq %rax, %rdx	 RIP: 401d34	 Bytes: 3
  %loadMem_401d34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d34 = call %struct.Memory* @routine_xorq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d34)
  store %struct.Memory* %call_401d34, %struct.Memory** %MEMORY

  ; Code: movq %rdx, %xmm0	 RIP: 401d37	 Bytes: 5
  %loadMem_401d37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d37 = call %struct.Memory* @routine_movq__rdx___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d37)
  store %struct.Memory* %call_401d37, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x48(%rbp)	 RIP: 401d3c	 Bytes: 5
  %loadMem_401d3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d3c = call %struct.Memory* @routine_movsd__xmm0__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d3c)
  store %struct.Memory* %call_401d3c, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 401d41	 Bytes: 4
  %loadMem_401d41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d41 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d41)
  store %struct.Memory* %call_401d41, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rsi	 RIP: 401d45	 Bytes: 4
  %loadMem_401d45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d45 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d45)
  store %struct.Memory* %call_401d45, %struct.Memory** %MEMORY

  ; Code: movsd (%rdx,%rsi,8), %xmm0	 RIP: 401d49	 Bytes: 5
  %loadMem_401d49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d49 = call %struct.Memory* @routine_movsd___rdx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d49)
  store %struct.Memory* %call_401d49, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x50(%rbp)	 RIP: 401d4e	 Bytes: 5
  %loadMem_401d4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d4e = call %struct.Memory* @routine_movsd__xmm0__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d4e)
  store %struct.Memory* %call_401d4e, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 401d53	 Bytes: 4
  %loadMem_401d53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d53 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d53)
  store %struct.Memory* %call_401d53, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %ecx	 RIP: 401d57	 Bytes: 3
  %loadMem_401d57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d57 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d57)
  store %struct.Memory* %call_401d57, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 401d5a	 Bytes: 3
  %loadMem_401d5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d5a = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d5a)
  store %struct.Memory* %call_401d5a, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 401d5d	 Bytes: 3
  %loadMem_401d5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d5d = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d5d)
  store %struct.Memory* %call_401d5d, %struct.Memory** %MEMORY

  ; Code: movsd (%rdx,%rsi,8), %xmm0	 RIP: 401d60	 Bytes: 5
  %loadMem_401d60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d60 = call %struct.Memory* @routine_movsd___rdx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d60)
  store %struct.Memory* %call_401d60, %struct.Memory** %MEMORY

  ; Code: movq %xmm0, %rdx	 RIP: 401d65	 Bytes: 5
  %loadMem_401d65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d65 = call %struct.Memory* @routine_movq__xmm0___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d65)
  store %struct.Memory* %call_401d65, %struct.Memory** %MEMORY

  ; Code: xorq %rax, %rdx	 RIP: 401d6a	 Bytes: 3
  %loadMem_401d6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d6a = call %struct.Memory* @routine_xorq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d6a)
  store %struct.Memory* %call_401d6a, %struct.Memory** %MEMORY

  ; Code: movq %rdx, %xmm0	 RIP: 401d6d	 Bytes: 5
  %loadMem_401d6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d6d = call %struct.Memory* @routine_movq__rdx___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d6d)
  store %struct.Memory* %call_401d6d, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x58(%rbp)	 RIP: 401d72	 Bytes: 5
  %loadMem_401d72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d72 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x58__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d72)
  store %struct.Memory* %call_401d72, %struct.Memory** %MEMORY

  ; Code: movsd -0x50(%rbp), %xmm0	 RIP: 401d77	 Bytes: 5
  %loadMem_401d77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d77 = call %struct.Memory* @routine_movsd_MINUS0x50__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d77)
  store %struct.Memory* %call_401d77, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 401d7c	 Bytes: 4
  %loadMem_401d7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d7c = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d7c)
  store %struct.Memory* %call_401d7c, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rsi	 RIP: 401d80	 Bytes: 4
  %loadMem_401d80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d80 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d80)
  store %struct.Memory* %call_401d80, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rdx,%rsi,8)	 RIP: 401d84	 Bytes: 5
  %loadMem_401d84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d84 = call %struct.Memory* @routine_movsd__xmm0____rdx__rsi_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d84)
  store %struct.Memory* %call_401d84, %struct.Memory** %MEMORY

  ; Code: movsd -0x58(%rbp), %xmm0	 RIP: 401d89	 Bytes: 5
  %loadMem_401d89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d89 = call %struct.Memory* @routine_movsd_MINUS0x58__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d89)
  store %struct.Memory* %call_401d89, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 401d8e	 Bytes: 4
  %loadMem_401d8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d8e = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d8e)
  store %struct.Memory* %call_401d8e, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %ecx	 RIP: 401d92	 Bytes: 3
  %loadMem_401d92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d92 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d92)
  store %struct.Memory* %call_401d92, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 401d95	 Bytes: 3
  %loadMem_401d95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d95 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d95)
  store %struct.Memory* %call_401d95, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 401d98	 Bytes: 3
  %loadMem_401d98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d98 = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d98)
  store %struct.Memory* %call_401d98, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rdx,%rsi,8)	 RIP: 401d9b	 Bytes: 5
  %loadMem_401d9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401d9b = call %struct.Memory* @routine_movsd__xmm0____rdx__rsi_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401d9b)
  store %struct.Memory* %call_401d9b, %struct.Memory** %MEMORY

  ; Code: movsd -0x40(%rbp), %xmm0	 RIP: 401da0	 Bytes: 5
  %loadMem_401da0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401da0 = call %struct.Memory* @routine_movsd_MINUS0x40__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401da0)
  store %struct.Memory* %call_401da0, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 401da5	 Bytes: 4
  %loadMem_401da5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401da5 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401da5)
  store %struct.Memory* %call_401da5, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rsi	 RIP: 401da9	 Bytes: 4
  %loadMem_401da9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401da9 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401da9)
  store %struct.Memory* %call_401da9, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rdx,%rsi,8)	 RIP: 401dad	 Bytes: 5
  %loadMem_401dad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401dad = call %struct.Memory* @routine_movsd__xmm0____rdx__rsi_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401dad)
  store %struct.Memory* %call_401dad, %struct.Memory** %MEMORY

  ; Code: movsd -0x48(%rbp), %xmm0	 RIP: 401db2	 Bytes: 5
  %loadMem_401db2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401db2 = call %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401db2)
  store %struct.Memory* %call_401db2, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 401db7	 Bytes: 4
  %loadMem_401db7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401db7 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401db7)
  store %struct.Memory* %call_401db7, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %ecx	 RIP: 401dbb	 Bytes: 3
  %loadMem_401dbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401dbb = call %struct.Memory* @routine_movl_MINUS0x28__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401dbb)
  store %struct.Memory* %call_401dbb, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 401dbe	 Bytes: 3
  %loadMem_401dbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401dbe = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401dbe)
  store %struct.Memory* %call_401dbe, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 401dc1	 Bytes: 3
  %loadMem_401dc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401dc1 = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401dc1)
  store %struct.Memory* %call_401dc1, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rdx,%rsi,8)	 RIP: 401dc4	 Bytes: 5
  %loadMem_401dc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401dc4 = call %struct.Memory* @routine_movsd__xmm0____rdx__rsi_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401dc4)
  store %struct.Memory* %call_401dc4, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %ecx	 RIP: 401dc9	 Bytes: 3
  %loadMem_401dc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401dc9 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401dc9)
  store %struct.Memory* %call_401dc9, %struct.Memory** %MEMORY

  ; Code: addl -0x20(%rbp), %ecx	 RIP: 401dcc	 Bytes: 3
  %loadMem_401dcc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401dcc = call %struct.Memory* @routine_addl_MINUS0x20__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401dcc)
  store %struct.Memory* %call_401dcc, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x20(%rbp)	 RIP: 401dcf	 Bytes: 3
  %loadMem_401dcf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401dcf = call %struct.Memory* @routine_movl__ecx__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401dcf)
  store %struct.Memory* %call_401dcf, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %ecx	 RIP: 401dd2	 Bytes: 3
  %loadMem_401dd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401dd2 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401dd2)
  store %struct.Memory* %call_401dd2, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %ecx	 RIP: 401dd5	 Bytes: 3
  %loadMem_401dd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401dd5 = call %struct.Memory* @routine_shll__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401dd5)
  store %struct.Memory* %call_401dd5, %struct.Memory** %MEMORY

  ; Code: addl -0x28(%rbp), %ecx	 RIP: 401dd8	 Bytes: 3
  %loadMem_401dd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401dd8 = call %struct.Memory* @routine_addl_MINUS0x28__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401dd8)
  store %struct.Memory* %call_401dd8, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x28(%rbp)	 RIP: 401ddb	 Bytes: 3
  %loadMem_401ddb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ddb = call %struct.Memory* @routine_movl__ecx__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ddb)
  store %struct.Memory* %call_401ddb, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 401dde	 Bytes: 4
  %loadMem_401dde = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401dde = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401dde)
  store %struct.Memory* %call_401dde, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rsi	 RIP: 401de2	 Bytes: 4
  %loadMem_401de2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401de2 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401de2)
  store %struct.Memory* %call_401de2, %struct.Memory** %MEMORY

  ; Code: movsd (%rdx,%rsi,8), %xmm0	 RIP: 401de6	 Bytes: 5
  %loadMem_401de6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401de6 = call %struct.Memory* @routine_movsd___rdx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401de6)
  store %struct.Memory* %call_401de6, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x40(%rbp)	 RIP: 401deb	 Bytes: 5
  %loadMem_401deb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401deb = call %struct.Memory* @routine_movsd__xmm0__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401deb)
  store %struct.Memory* %call_401deb, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 401df0	 Bytes: 4
  %loadMem_401df0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401df0 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401df0)
  store %struct.Memory* %call_401df0, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %ecx	 RIP: 401df4	 Bytes: 3
  %loadMem_401df4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401df4 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401df4)
  store %struct.Memory* %call_401df4, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 401df7	 Bytes: 3
  %loadMem_401df7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401df7 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401df7)
  store %struct.Memory* %call_401df7, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 401dfa	 Bytes: 3
  %loadMem_401dfa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401dfa = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401dfa)
  store %struct.Memory* %call_401dfa, %struct.Memory** %MEMORY

  ; Code: movsd (%rdx,%rsi,8), %xmm0	 RIP: 401dfd	 Bytes: 5
  %loadMem_401dfd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401dfd = call %struct.Memory* @routine_movsd___rdx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401dfd)
  store %struct.Memory* %call_401dfd, %struct.Memory** %MEMORY

  ; Code: movq %xmm0, %rdx	 RIP: 401e02	 Bytes: 5
  %loadMem_401e02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e02 = call %struct.Memory* @routine_movq__xmm0___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e02)
  store %struct.Memory* %call_401e02, %struct.Memory** %MEMORY

  ; Code: xorq %rax, %rdx	 RIP: 401e07	 Bytes: 3
  %loadMem_401e07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e07 = call %struct.Memory* @routine_xorq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e07)
  store %struct.Memory* %call_401e07, %struct.Memory** %MEMORY

  ; Code: movq %rdx, %xmm0	 RIP: 401e0a	 Bytes: 5
  %loadMem_401e0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e0a = call %struct.Memory* @routine_movq__rdx___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e0a)
  store %struct.Memory* %call_401e0a, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x48(%rbp)	 RIP: 401e0f	 Bytes: 5
  %loadMem_401e0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e0f = call %struct.Memory* @routine_movsd__xmm0__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e0f)
  store %struct.Memory* %call_401e0f, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 401e14	 Bytes: 4
  %loadMem_401e14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e14 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e14)
  store %struct.Memory* %call_401e14, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rsi	 RIP: 401e18	 Bytes: 4
  %loadMem_401e18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e18 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e18)
  store %struct.Memory* %call_401e18, %struct.Memory** %MEMORY

  ; Code: movsd (%rdx,%rsi,8), %xmm0	 RIP: 401e1c	 Bytes: 5
  %loadMem_401e1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e1c = call %struct.Memory* @routine_movsd___rdx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e1c)
  store %struct.Memory* %call_401e1c, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x50(%rbp)	 RIP: 401e21	 Bytes: 5
  %loadMem_401e21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e21 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e21)
  store %struct.Memory* %call_401e21, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 401e26	 Bytes: 4
  %loadMem_401e26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e26 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e26)
  store %struct.Memory* %call_401e26, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %ecx	 RIP: 401e2a	 Bytes: 3
  %loadMem_401e2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e2a = call %struct.Memory* @routine_movl_MINUS0x28__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e2a)
  store %struct.Memory* %call_401e2a, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 401e2d	 Bytes: 3
  %loadMem_401e2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e2d = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e2d)
  store %struct.Memory* %call_401e2d, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 401e30	 Bytes: 3
  %loadMem_401e30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e30 = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e30)
  store %struct.Memory* %call_401e30, %struct.Memory** %MEMORY

  ; Code: movsd (%rdx,%rsi,8), %xmm0	 RIP: 401e33	 Bytes: 5
  %loadMem_401e33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e33 = call %struct.Memory* @routine_movsd___rdx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e33)
  store %struct.Memory* %call_401e33, %struct.Memory** %MEMORY

  ; Code: movq %xmm0, %rdx	 RIP: 401e38	 Bytes: 5
  %loadMem_401e38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e38 = call %struct.Memory* @routine_movq__xmm0___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e38)
  store %struct.Memory* %call_401e38, %struct.Memory** %MEMORY

  ; Code: xorq %rax, %rdx	 RIP: 401e3d	 Bytes: 3
  %loadMem_401e3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e3d = call %struct.Memory* @routine_xorq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e3d)
  store %struct.Memory* %call_401e3d, %struct.Memory** %MEMORY

  ; Code: movq %rdx, %xmm0	 RIP: 401e40	 Bytes: 5
  %loadMem_401e40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e40 = call %struct.Memory* @routine_movq__rdx___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e40)
  store %struct.Memory* %call_401e40, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x58(%rbp)	 RIP: 401e45	 Bytes: 5
  %loadMem_401e45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e45 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x58__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e45)
  store %struct.Memory* %call_401e45, %struct.Memory** %MEMORY

  ; Code: movsd -0x50(%rbp), %xmm0	 RIP: 401e4a	 Bytes: 5
  %loadMem_401e4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e4a = call %struct.Memory* @routine_movsd_MINUS0x50__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e4a)
  store %struct.Memory* %call_401e4a, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 401e4f	 Bytes: 4
  %loadMem_401e4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e4f = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e4f)
  store %struct.Memory* %call_401e4f, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rsi	 RIP: 401e53	 Bytes: 4
  %loadMem_401e53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e53 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e53)
  store %struct.Memory* %call_401e53, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rdx,%rsi,8)	 RIP: 401e57	 Bytes: 5
  %loadMem_401e57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e57 = call %struct.Memory* @routine_movsd__xmm0____rdx__rsi_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e57)
  store %struct.Memory* %call_401e57, %struct.Memory** %MEMORY

  ; Code: movsd -0x58(%rbp), %xmm0	 RIP: 401e5c	 Bytes: 5
  %loadMem_401e5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e5c = call %struct.Memory* @routine_movsd_MINUS0x58__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e5c)
  store %struct.Memory* %call_401e5c, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 401e61	 Bytes: 4
  %loadMem_401e61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e61 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e61)
  store %struct.Memory* %call_401e61, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %ecx	 RIP: 401e65	 Bytes: 3
  %loadMem_401e65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e65 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e65)
  store %struct.Memory* %call_401e65, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 401e68	 Bytes: 3
  %loadMem_401e68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e68 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e68)
  store %struct.Memory* %call_401e68, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 401e6b	 Bytes: 3
  %loadMem_401e6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e6b = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e6b)
  store %struct.Memory* %call_401e6b, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rdx,%rsi,8)	 RIP: 401e6e	 Bytes: 5
  %loadMem_401e6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e6e = call %struct.Memory* @routine_movsd__xmm0____rdx__rsi_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e6e)
  store %struct.Memory* %call_401e6e, %struct.Memory** %MEMORY

  ; Code: movsd -0x40(%rbp), %xmm0	 RIP: 401e73	 Bytes: 5
  %loadMem_401e73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e73 = call %struct.Memory* @routine_movsd_MINUS0x40__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e73)
  store %struct.Memory* %call_401e73, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 401e78	 Bytes: 4
  %loadMem_401e78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e78 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e78)
  store %struct.Memory* %call_401e78, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rsi	 RIP: 401e7c	 Bytes: 4
  %loadMem_401e7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e7c = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e7c)
  store %struct.Memory* %call_401e7c, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rdx,%rsi,8)	 RIP: 401e80	 Bytes: 5
  %loadMem_401e80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e80 = call %struct.Memory* @routine_movsd__xmm0____rdx__rsi_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e80)
  store %struct.Memory* %call_401e80, %struct.Memory** %MEMORY

  ; Code: movsd -0x48(%rbp), %xmm0	 RIP: 401e85	 Bytes: 5
  %loadMem_401e85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e85 = call %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e85)
  store %struct.Memory* %call_401e85, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 401e8a	 Bytes: 4
  %loadMem_401e8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e8a = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e8a)
  store %struct.Memory* %call_401e8a, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %ecx	 RIP: 401e8e	 Bytes: 3
  %loadMem_401e8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e8e = call %struct.Memory* @routine_movl_MINUS0x28__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e8e)
  store %struct.Memory* %call_401e8e, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 401e91	 Bytes: 3
  %loadMem_401e91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e91 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e91)
  store %struct.Memory* %call_401e91, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 401e94	 Bytes: 3
  %loadMem_401e94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e94 = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e94)
  store %struct.Memory* %call_401e94, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rdx,%rsi,8)	 RIP: 401e97	 Bytes: 5
  %loadMem_401e97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e97 = call %struct.Memory* @routine_movsd__xmm0____rdx__rsi_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e97)
  store %struct.Memory* %call_401e97, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %ecx	 RIP: 401e9c	 Bytes: 3
  %loadMem_401e9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e9c = call %struct.Memory* @routine_movl_MINUS0x34__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e9c)
  store %struct.Memory* %call_401e9c, %struct.Memory** %MEMORY

  ; Code: addl -0x20(%rbp), %ecx	 RIP: 401e9f	 Bytes: 3
  %loadMem_401e9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401e9f = call %struct.Memory* @routine_addl_MINUS0x20__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401e9f)
  store %struct.Memory* %call_401e9f, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x20(%rbp)	 RIP: 401ea2	 Bytes: 3
  %loadMem_401ea2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ea2 = call %struct.Memory* @routine_movl__ecx__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ea2)
  store %struct.Memory* %call_401ea2, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %ecx	 RIP: 401ea5	 Bytes: 3
  %loadMem_401ea5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ea5 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ea5)
  store %struct.Memory* %call_401ea5, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %edi	 RIP: 401ea8	 Bytes: 3
  %loadMem_401ea8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ea8 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ea8)
  store %struct.Memory* %call_401ea8, %struct.Memory** %MEMORY

  ; Code: subl %ecx, %edi	 RIP: 401eab	 Bytes: 2
  %loadMem_401eab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401eab = call %struct.Memory* @routine_subl__ecx___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401eab)
  store %struct.Memory* %call_401eab, %struct.Memory** %MEMORY

  ; Code: movl %edi, -0x28(%rbp)	 RIP: 401ead	 Bytes: 3
  %loadMem_401ead = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ead = call %struct.Memory* @routine_movl__edi__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ead)
  store %struct.Memory* %call_401ead, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 401eb0	 Bytes: 4
  %loadMem_401eb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401eb0 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401eb0)
  store %struct.Memory* %call_401eb0, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rsi	 RIP: 401eb4	 Bytes: 4
  %loadMem_401eb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401eb4 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401eb4)
  store %struct.Memory* %call_401eb4, %struct.Memory** %MEMORY

  ; Code: movsd (%rdx,%rsi,8), %xmm0	 RIP: 401eb8	 Bytes: 5
  %loadMem_401eb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401eb8 = call %struct.Memory* @routine_movsd___rdx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401eb8)
  store %struct.Memory* %call_401eb8, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x40(%rbp)	 RIP: 401ebd	 Bytes: 5
  %loadMem_401ebd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ebd = call %struct.Memory* @routine_movsd__xmm0__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ebd)
  store %struct.Memory* %call_401ebd, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 401ec2	 Bytes: 4
  %loadMem_401ec2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ec2 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ec2)
  store %struct.Memory* %call_401ec2, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %ecx	 RIP: 401ec6	 Bytes: 3
  %loadMem_401ec6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ec6 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ec6)
  store %struct.Memory* %call_401ec6, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 401ec9	 Bytes: 3
  %loadMem_401ec9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ec9 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ec9)
  store %struct.Memory* %call_401ec9, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 401ecc	 Bytes: 3
  %loadMem_401ecc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ecc = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ecc)
  store %struct.Memory* %call_401ecc, %struct.Memory** %MEMORY

  ; Code: movsd (%rdx,%rsi,8), %xmm0	 RIP: 401ecf	 Bytes: 5
  %loadMem_401ecf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ecf = call %struct.Memory* @routine_movsd___rdx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ecf)
  store %struct.Memory* %call_401ecf, %struct.Memory** %MEMORY

  ; Code: movq %xmm0, %rdx	 RIP: 401ed4	 Bytes: 5
  %loadMem_401ed4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ed4 = call %struct.Memory* @routine_movq__xmm0___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ed4)
  store %struct.Memory* %call_401ed4, %struct.Memory** %MEMORY

  ; Code: xorq %rax, %rdx	 RIP: 401ed9	 Bytes: 3
  %loadMem_401ed9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ed9 = call %struct.Memory* @routine_xorq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ed9)
  store %struct.Memory* %call_401ed9, %struct.Memory** %MEMORY

  ; Code: movq %rdx, %xmm0	 RIP: 401edc	 Bytes: 5
  %loadMem_401edc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401edc = call %struct.Memory* @routine_movq__rdx___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401edc)
  store %struct.Memory* %call_401edc, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x48(%rbp)	 RIP: 401ee1	 Bytes: 5
  %loadMem_401ee1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ee1 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ee1)
  store %struct.Memory* %call_401ee1, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 401ee6	 Bytes: 4
  %loadMem_401ee6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ee6 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ee6)
  store %struct.Memory* %call_401ee6, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rsi	 RIP: 401eea	 Bytes: 4
  %loadMem_401eea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401eea = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401eea)
  store %struct.Memory* %call_401eea, %struct.Memory** %MEMORY

  ; Code: movsd (%rdx,%rsi,8), %xmm0	 RIP: 401eee	 Bytes: 5
  %loadMem_401eee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401eee = call %struct.Memory* @routine_movsd___rdx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401eee)
  store %struct.Memory* %call_401eee, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x50(%rbp)	 RIP: 401ef3	 Bytes: 5
  %loadMem_401ef3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ef3 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ef3)
  store %struct.Memory* %call_401ef3, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 401ef8	 Bytes: 4
  %loadMem_401ef8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ef8 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ef8)
  store %struct.Memory* %call_401ef8, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %ecx	 RIP: 401efc	 Bytes: 3
  %loadMem_401efc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401efc = call %struct.Memory* @routine_movl_MINUS0x28__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401efc)
  store %struct.Memory* %call_401efc, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 401eff	 Bytes: 3
  %loadMem_401eff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401eff = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401eff)
  store %struct.Memory* %call_401eff, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 401f02	 Bytes: 3
  %loadMem_401f02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f02 = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f02)
  store %struct.Memory* %call_401f02, %struct.Memory** %MEMORY

  ; Code: movsd (%rdx,%rsi,8), %xmm0	 RIP: 401f05	 Bytes: 5
  %loadMem_401f05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f05 = call %struct.Memory* @routine_movsd___rdx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f05)
  store %struct.Memory* %call_401f05, %struct.Memory** %MEMORY

  ; Code: movq %xmm0, %rdx	 RIP: 401f0a	 Bytes: 5
  %loadMem_401f0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f0a = call %struct.Memory* @routine_movq__xmm0___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f0a)
  store %struct.Memory* %call_401f0a, %struct.Memory** %MEMORY

  ; Code: xorq %rax, %rdx	 RIP: 401f0f	 Bytes: 3
  %loadMem_401f0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f0f = call %struct.Memory* @routine_xorq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f0f)
  store %struct.Memory* %call_401f0f, %struct.Memory** %MEMORY

  ; Code: movq %rdx, %xmm0	 RIP: 401f12	 Bytes: 5
  %loadMem_401f12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f12 = call %struct.Memory* @routine_movq__rdx___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f12)
  store %struct.Memory* %call_401f12, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x58(%rbp)	 RIP: 401f17	 Bytes: 5
  %loadMem_401f17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f17 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x58__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f17)
  store %struct.Memory* %call_401f17, %struct.Memory** %MEMORY

  ; Code: movsd -0x50(%rbp), %xmm0	 RIP: 401f1c	 Bytes: 5
  %loadMem_401f1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f1c = call %struct.Memory* @routine_movsd_MINUS0x50__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f1c)
  store %struct.Memory* %call_401f1c, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 401f21	 Bytes: 4
  %loadMem_401f21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f21 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f21)
  store %struct.Memory* %call_401f21, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rsi	 RIP: 401f25	 Bytes: 4
  %loadMem_401f25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f25 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f25)
  store %struct.Memory* %call_401f25, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rdx,%rsi,8)	 RIP: 401f29	 Bytes: 5
  %loadMem_401f29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f29 = call %struct.Memory* @routine_movsd__xmm0____rdx__rsi_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f29)
  store %struct.Memory* %call_401f29, %struct.Memory** %MEMORY

  ; Code: movsd -0x58(%rbp), %xmm0	 RIP: 401f2e	 Bytes: 5
  %loadMem_401f2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f2e = call %struct.Memory* @routine_movsd_MINUS0x58__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f2e)
  store %struct.Memory* %call_401f2e, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 401f33	 Bytes: 4
  %loadMem_401f33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f33 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f33)
  store %struct.Memory* %call_401f33, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %ecx	 RIP: 401f37	 Bytes: 3
  %loadMem_401f37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f37 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f37)
  store %struct.Memory* %call_401f37, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 401f3a	 Bytes: 3
  %loadMem_401f3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f3a = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f3a)
  store %struct.Memory* %call_401f3a, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 401f3d	 Bytes: 3
  %loadMem_401f3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f3d = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f3d)
  store %struct.Memory* %call_401f3d, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rdx,%rsi,8)	 RIP: 401f40	 Bytes: 5
  %loadMem_401f40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f40 = call %struct.Memory* @routine_movsd__xmm0____rdx__rsi_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f40)
  store %struct.Memory* %call_401f40, %struct.Memory** %MEMORY

  ; Code: movsd -0x40(%rbp), %xmm0	 RIP: 401f45	 Bytes: 5
  %loadMem_401f45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f45 = call %struct.Memory* @routine_movsd_MINUS0x40__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f45)
  store %struct.Memory* %call_401f45, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 401f4a	 Bytes: 4
  %loadMem_401f4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f4a = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f4a)
  store %struct.Memory* %call_401f4a, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rsi	 RIP: 401f4e	 Bytes: 4
  %loadMem_401f4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f4e = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f4e)
  store %struct.Memory* %call_401f4e, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rdx,%rsi,8)	 RIP: 401f52	 Bytes: 5
  %loadMem_401f52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f52 = call %struct.Memory* @routine_movsd__xmm0____rdx__rsi_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f52)
  store %struct.Memory* %call_401f52, %struct.Memory** %MEMORY

  ; Code: movsd -0x48(%rbp), %xmm0	 RIP: 401f57	 Bytes: 5
  %loadMem_401f57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f57 = call %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f57)
  store %struct.Memory* %call_401f57, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 401f5c	 Bytes: 4
  %loadMem_401f5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f5c = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f5c)
  store %struct.Memory* %call_401f5c, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %ecx	 RIP: 401f60	 Bytes: 3
  %loadMem_401f60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f60 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f60)
  store %struct.Memory* %call_401f60, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 401f63	 Bytes: 3
  %loadMem_401f63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f63 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f63)
  store %struct.Memory* %call_401f63, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 401f66	 Bytes: 3
  %loadMem_401f66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f66 = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f66)
  store %struct.Memory* %call_401f66, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rdx,%rsi,8)	 RIP: 401f69	 Bytes: 5
  %loadMem_401f69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f69 = call %struct.Memory* @routine_movsd__xmm0____rdx__rsi_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f69)
  store %struct.Memory* %call_401f69, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %ecx	 RIP: 401f6e	 Bytes: 3
  %loadMem_401f6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f6e = call %struct.Memory* @routine_movl_MINUS0x34__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f6e)
  store %struct.Memory* %call_401f6e, %struct.Memory** %MEMORY

  ; Code: addl -0x20(%rbp), %ecx	 RIP: 401f71	 Bytes: 3
  %loadMem_401f71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f71 = call %struct.Memory* @routine_addl_MINUS0x20__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f71)
  store %struct.Memory* %call_401f71, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x20(%rbp)	 RIP: 401f74	 Bytes: 3
  %loadMem_401f74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f74 = call %struct.Memory* @routine_movl__ecx__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f74)
  store %struct.Memory* %call_401f74, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %ecx	 RIP: 401f77	 Bytes: 3
  %loadMem_401f77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f77 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f77)
  store %struct.Memory* %call_401f77, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %ecx	 RIP: 401f7a	 Bytes: 3
  %loadMem_401f7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f7a = call %struct.Memory* @routine_shll__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f7a)
  store %struct.Memory* %call_401f7a, %struct.Memory** %MEMORY

  ; Code: addl -0x28(%rbp), %ecx	 RIP: 401f7d	 Bytes: 3
  %loadMem_401f7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f7d = call %struct.Memory* @routine_addl_MINUS0x28__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f7d)
  store %struct.Memory* %call_401f7d, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x28(%rbp)	 RIP: 401f80	 Bytes: 3
  %loadMem_401f80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f80 = call %struct.Memory* @routine_movl__ecx__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f80)
  store %struct.Memory* %call_401f80, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 401f83	 Bytes: 4
  %loadMem_401f83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f83 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f83)
  store %struct.Memory* %call_401f83, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rsi	 RIP: 401f87	 Bytes: 4
  %loadMem_401f87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f87 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f87)
  store %struct.Memory* %call_401f87, %struct.Memory** %MEMORY

  ; Code: movsd (%rdx,%rsi,8), %xmm0	 RIP: 401f8b	 Bytes: 5
  %loadMem_401f8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f8b = call %struct.Memory* @routine_movsd___rdx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f8b)
  store %struct.Memory* %call_401f8b, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x40(%rbp)	 RIP: 401f90	 Bytes: 5
  %loadMem_401f90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f90 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f90)
  store %struct.Memory* %call_401f90, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 401f95	 Bytes: 4
  %loadMem_401f95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f95 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f95)
  store %struct.Memory* %call_401f95, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %ecx	 RIP: 401f99	 Bytes: 3
  %loadMem_401f99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f99 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f99)
  store %struct.Memory* %call_401f99, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 401f9c	 Bytes: 3
  %loadMem_401f9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f9c = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f9c)
  store %struct.Memory* %call_401f9c, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 401f9f	 Bytes: 3
  %loadMem_401f9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401f9f = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401f9f)
  store %struct.Memory* %call_401f9f, %struct.Memory** %MEMORY

  ; Code: movsd (%rdx,%rsi,8), %xmm0	 RIP: 401fa2	 Bytes: 5
  %loadMem_401fa2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fa2 = call %struct.Memory* @routine_movsd___rdx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fa2)
  store %struct.Memory* %call_401fa2, %struct.Memory** %MEMORY

  ; Code: movq %xmm0, %rdx	 RIP: 401fa7	 Bytes: 5
  %loadMem_401fa7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fa7 = call %struct.Memory* @routine_movq__xmm0___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fa7)
  store %struct.Memory* %call_401fa7, %struct.Memory** %MEMORY

  ; Code: xorq %rax, %rdx	 RIP: 401fac	 Bytes: 3
  %loadMem_401fac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fac = call %struct.Memory* @routine_xorq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fac)
  store %struct.Memory* %call_401fac, %struct.Memory** %MEMORY

  ; Code: movq %rdx, %xmm0	 RIP: 401faf	 Bytes: 5
  %loadMem_401faf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401faf = call %struct.Memory* @routine_movq__rdx___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401faf)
  store %struct.Memory* %call_401faf, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x48(%rbp)	 RIP: 401fb4	 Bytes: 5
  %loadMem_401fb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fb4 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fb4)
  store %struct.Memory* %call_401fb4, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 401fb9	 Bytes: 4
  %loadMem_401fb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fb9 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fb9)
  store %struct.Memory* %call_401fb9, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rsi	 RIP: 401fbd	 Bytes: 4
  %loadMem_401fbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fbd = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fbd)
  store %struct.Memory* %call_401fbd, %struct.Memory** %MEMORY

  ; Code: movsd (%rdx,%rsi,8), %xmm0	 RIP: 401fc1	 Bytes: 5
  %loadMem_401fc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fc1 = call %struct.Memory* @routine_movsd___rdx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fc1)
  store %struct.Memory* %call_401fc1, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x50(%rbp)	 RIP: 401fc6	 Bytes: 5
  %loadMem_401fc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fc6 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fc6)
  store %struct.Memory* %call_401fc6, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 401fcb	 Bytes: 4
  %loadMem_401fcb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fcb = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fcb)
  store %struct.Memory* %call_401fcb, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %ecx	 RIP: 401fcf	 Bytes: 3
  %loadMem_401fcf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fcf = call %struct.Memory* @routine_movl_MINUS0x28__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fcf)
  store %struct.Memory* %call_401fcf, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 401fd2	 Bytes: 3
  %loadMem_401fd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fd2 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fd2)
  store %struct.Memory* %call_401fd2, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 401fd5	 Bytes: 3
  %loadMem_401fd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fd5 = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fd5)
  store %struct.Memory* %call_401fd5, %struct.Memory** %MEMORY

  ; Code: movsd (%rdx,%rsi,8), %xmm0	 RIP: 401fd8	 Bytes: 5
  %loadMem_401fd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fd8 = call %struct.Memory* @routine_movsd___rdx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fd8)
  store %struct.Memory* %call_401fd8, %struct.Memory** %MEMORY

  ; Code: movq %xmm0, %rdx	 RIP: 401fdd	 Bytes: 5
  %loadMem_401fdd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fdd = call %struct.Memory* @routine_movq__xmm0___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fdd)
  store %struct.Memory* %call_401fdd, %struct.Memory** %MEMORY

  ; Code: xorq %rax, %rdx	 RIP: 401fe2	 Bytes: 3
  %loadMem_401fe2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fe2 = call %struct.Memory* @routine_xorq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fe2)
  store %struct.Memory* %call_401fe2, %struct.Memory** %MEMORY

  ; Code: movq %rdx, %xmm0	 RIP: 401fe5	 Bytes: 5
  %loadMem_401fe5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fe5 = call %struct.Memory* @routine_movq__rdx___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fe5)
  store %struct.Memory* %call_401fe5, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x58(%rbp)	 RIP: 401fea	 Bytes: 5
  %loadMem_401fea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fea = call %struct.Memory* @routine_movsd__xmm0__MINUS0x58__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fea)
  store %struct.Memory* %call_401fea, %struct.Memory** %MEMORY

  ; Code: movsd -0x50(%rbp), %xmm0	 RIP: 401fef	 Bytes: 5
  %loadMem_401fef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401fef = call %struct.Memory* @routine_movsd_MINUS0x50__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401fef)
  store %struct.Memory* %call_401fef, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 401ff4	 Bytes: 4
  %loadMem_401ff4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ff4 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ff4)
  store %struct.Memory* %call_401ff4, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 401ff8	 Bytes: 4
  %loadMem_401ff8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ff8 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ff8)
  store %struct.Memory* %call_401ff8, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rdx,8)	 RIP: 401ffc	 Bytes: 5
  %loadMem_401ffc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_401ffc = call %struct.Memory* @routine_movsd__xmm0____rax__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_401ffc)
  store %struct.Memory* %call_401ffc, %struct.Memory** %MEMORY

  ; Code: movsd -0x58(%rbp), %xmm0	 RIP: 402001	 Bytes: 5
  %loadMem_402001 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402001 = call %struct.Memory* @routine_movsd_MINUS0x58__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402001)
  store %struct.Memory* %call_402001, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 402006	 Bytes: 4
  %loadMem_402006 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402006 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402006)
  store %struct.Memory* %call_402006, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %ecx	 RIP: 40200a	 Bytes: 3
  %loadMem_40200a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40200a = call %struct.Memory* @routine_movl_MINUS0x20__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40200a)
  store %struct.Memory* %call_40200a, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 40200d	 Bytes: 3
  %loadMem_40200d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40200d = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40200d)
  store %struct.Memory* %call_40200d, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 402010	 Bytes: 3
  %loadMem_402010 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402010 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402010)
  store %struct.Memory* %call_402010, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rdx,8)	 RIP: 402013	 Bytes: 5
  %loadMem_402013 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402013 = call %struct.Memory* @routine_movsd__xmm0____rax__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402013)
  store %struct.Memory* %call_402013, %struct.Memory** %MEMORY

  ; Code: movsd -0x40(%rbp), %xmm0	 RIP: 402018	 Bytes: 5
  %loadMem_402018 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402018 = call %struct.Memory* @routine_movsd_MINUS0x40__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402018)
  store %struct.Memory* %call_402018, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 40201d	 Bytes: 4
  %loadMem_40201d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40201d = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40201d)
  store %struct.Memory* %call_40201d, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdx	 RIP: 402021	 Bytes: 4
  %loadMem_402021 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402021 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402021)
  store %struct.Memory* %call_402021, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rdx,8)	 RIP: 402025	 Bytes: 5
  %loadMem_402025 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402025 = call %struct.Memory* @routine_movsd__xmm0____rax__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402025)
  store %struct.Memory* %call_402025, %struct.Memory** %MEMORY

  ; Code: movsd -0x48(%rbp), %xmm0	 RIP: 40202a	 Bytes: 5
  %loadMem_40202a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40202a = call %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40202a)
  store %struct.Memory* %call_40202a, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 40202f	 Bytes: 4
  %loadMem_40202f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40202f = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40202f)
  store %struct.Memory* %call_40202f, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %ecx	 RIP: 402033	 Bytes: 3
  %loadMem_402033 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402033 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402033)
  store %struct.Memory* %call_402033, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 402036	 Bytes: 3
  %loadMem_402036 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402036 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402036)
  store %struct.Memory* %call_402036, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 402039	 Bytes: 3
  %loadMem_402039 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402039 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402039)
  store %struct.Memory* %call_402039, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rdx,8)	 RIP: 40203c	 Bytes: 5
  %loadMem_40203c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40203c = call %struct.Memory* @routine_movsd__xmm0____rax__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40203c)
  store %struct.Memory* %call_40203c, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 402041	 Bytes: 3
  %loadMem_402041 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402041 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402041)
  store %struct.Memory* %call_402041, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 402044	 Bytes: 3
  %loadMem_402044 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402044 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402044)
  store %struct.Memory* %call_402044, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 402047	 Bytes: 3
  %loadMem_402047 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402047 = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402047)
  store %struct.Memory* %call_402047, %struct.Memory** %MEMORY

  ; Code: jmpq .L_401ccd	 RIP: 40204a	 Bytes: 5
  %loadMem_40204a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40204a = call %struct.Memory* @routine_jmpq_.L_401ccd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40204a, i64 -893, i64 5)
  store %struct.Memory* %call_40204a, %struct.Memory** %MEMORY

  br label %block_.L_401ccd

  ; Code: .L_40204f:	 RIP: 40204f	 Bytes: 0
block_.L_40204f:

  ; Code: movq $0x8000000000000000, %rax	 RIP: 40204f	 Bytes: 10
  %loadMem_40204f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40204f = call %struct.Memory* @routine_movq__0x8000000000000000___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40204f)
  store %struct.Memory* %call_40204f, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %ecx	 RIP: 402059	 Bytes: 3
  %loadMem_402059 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402059 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402059)
  store %struct.Memory* %call_402059, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %ecx	 RIP: 40205c	 Bytes: 3
  %loadMem_40205c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40205c = call %struct.Memory* @routine_shll__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40205c)
  store %struct.Memory* %call_40205c, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 40205f	 Bytes: 4
  %loadMem_40205f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40205f = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40205f)
  store %struct.Memory* %call_40205f, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rsi	 RIP: 402063	 Bytes: 4
  %loadMem_402063 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402063 = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402063)
  store %struct.Memory* %call_402063, %struct.Memory** %MEMORY

  ; Code: addl (%rdx,%rsi,4), %ecx	 RIP: 402067	 Bytes: 3
  %loadMem_402067 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402067 = call %struct.Memory* @routine_addl___rdx__rsi_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402067)
  store %struct.Memory* %call_402067, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x28(%rbp)	 RIP: 40206a	 Bytes: 3
  %loadMem_40206a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40206a = call %struct.Memory* @routine_movl__ecx__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40206a)
  store %struct.Memory* %call_40206a, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 40206d	 Bytes: 4
  %loadMem_40206d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40206d = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40206d)
  store %struct.Memory* %call_40206d, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %ecx	 RIP: 402071	 Bytes: 3
  %loadMem_402071 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402071 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402071)
  store %struct.Memory* %call_402071, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 402074	 Bytes: 3
  %loadMem_402074 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402074 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402074)
  store %struct.Memory* %call_402074, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 402077	 Bytes: 3
  %loadMem_402077 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402077 = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402077)
  store %struct.Memory* %call_402077, %struct.Memory** %MEMORY

  ; Code: movsd (%rdx,%rsi,8), %xmm0	 RIP: 40207a	 Bytes: 5
  %loadMem_40207a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40207a = call %struct.Memory* @routine_movsd___rdx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40207a)
  store %struct.Memory* %call_40207a, %struct.Memory** %MEMORY

  ; Code: movq %xmm0, %rdx	 RIP: 40207f	 Bytes: 5
  %loadMem_40207f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40207f = call %struct.Memory* @routine_movq__xmm0___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40207f)
  store %struct.Memory* %call_40207f, %struct.Memory** %MEMORY

  ; Code: xorq %rax, %rdx	 RIP: 402084	 Bytes: 3
  %loadMem_402084 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402084 = call %struct.Memory* @routine_xorq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402084)
  store %struct.Memory* %call_402084, %struct.Memory** %MEMORY

  ; Code: movq %rdx, %xmm0	 RIP: 402087	 Bytes: 5
  %loadMem_402087 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402087 = call %struct.Memory* @routine_movq__rdx___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402087)
  store %struct.Memory* %call_402087, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 40208c	 Bytes: 4
  %loadMem_40208c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40208c = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40208c)
  store %struct.Memory* %call_40208c, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %ecx	 RIP: 402090	 Bytes: 3
  %loadMem_402090 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402090 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402090)
  store %struct.Memory* %call_402090, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 402093	 Bytes: 3
  %loadMem_402093 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402093 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402093)
  store %struct.Memory* %call_402093, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 402096	 Bytes: 3
  %loadMem_402096 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402096 = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402096)
  store %struct.Memory* %call_402096, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rdx,%rsi,8)	 RIP: 402099	 Bytes: 5
  %loadMem_402099 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402099 = call %struct.Memory* @routine_movsd__xmm0____rdx__rsi_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402099)
  store %struct.Memory* %call_402099, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %ecx	 RIP: 40209e	 Bytes: 3
  %loadMem_40209e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40209e = call %struct.Memory* @routine_movl_MINUS0x28__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40209e)
  store %struct.Memory* %call_40209e, %struct.Memory** %MEMORY

  ; Code: addl -0x34(%rbp), %ecx	 RIP: 4020a1	 Bytes: 3
  %loadMem_4020a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020a1 = call %struct.Memory* @routine_addl_MINUS0x34__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020a1)
  store %struct.Memory* %call_4020a1, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x20(%rbp)	 RIP: 4020a4	 Bytes: 3
  %loadMem_4020a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020a4 = call %struct.Memory* @routine_movl__ecx__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020a4)
  store %struct.Memory* %call_4020a4, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %ecx	 RIP: 4020a7	 Bytes: 3
  %loadMem_4020a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020a7 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020a7)
  store %struct.Memory* %call_4020a7, %struct.Memory** %MEMORY

  ; Code: addl -0x34(%rbp), %ecx	 RIP: 4020aa	 Bytes: 3
  %loadMem_4020aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020aa = call %struct.Memory* @routine_addl_MINUS0x34__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020aa)
  store %struct.Memory* %call_4020aa, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x28(%rbp)	 RIP: 4020ad	 Bytes: 3
  %loadMem_4020ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020ad = call %struct.Memory* @routine_movl__ecx__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020ad)
  store %struct.Memory* %call_4020ad, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 4020b0	 Bytes: 4
  %loadMem_4020b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020b0 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020b0)
  store %struct.Memory* %call_4020b0, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rsi	 RIP: 4020b4	 Bytes: 4
  %loadMem_4020b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020b4 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020b4)
  store %struct.Memory* %call_4020b4, %struct.Memory** %MEMORY

  ; Code: movsd (%rdx,%rsi,8), %xmm0	 RIP: 4020b8	 Bytes: 5
  %loadMem_4020b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020b8 = call %struct.Memory* @routine_movsd___rdx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020b8)
  store %struct.Memory* %call_4020b8, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x40(%rbp)	 RIP: 4020bd	 Bytes: 5
  %loadMem_4020bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020bd = call %struct.Memory* @routine_movsd__xmm0__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020bd)
  store %struct.Memory* %call_4020bd, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 4020c2	 Bytes: 4
  %loadMem_4020c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020c2 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020c2)
  store %struct.Memory* %call_4020c2, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %ecx	 RIP: 4020c6	 Bytes: 3
  %loadMem_4020c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020c6 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020c6)
  store %struct.Memory* %call_4020c6, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 4020c9	 Bytes: 3
  %loadMem_4020c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020c9 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020c9)
  store %struct.Memory* %call_4020c9, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 4020cc	 Bytes: 3
  %loadMem_4020cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020cc = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020cc)
  store %struct.Memory* %call_4020cc, %struct.Memory** %MEMORY

  ; Code: movsd (%rdx,%rsi,8), %xmm0	 RIP: 4020cf	 Bytes: 5
  %loadMem_4020cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020cf = call %struct.Memory* @routine_movsd___rdx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020cf)
  store %struct.Memory* %call_4020cf, %struct.Memory** %MEMORY

  ; Code: movq %xmm0, %rdx	 RIP: 4020d4	 Bytes: 5
  %loadMem_4020d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020d4 = call %struct.Memory* @routine_movq__xmm0___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020d4)
  store %struct.Memory* %call_4020d4, %struct.Memory** %MEMORY

  ; Code: xorq %rax, %rdx	 RIP: 4020d9	 Bytes: 3
  %loadMem_4020d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020d9 = call %struct.Memory* @routine_xorq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020d9)
  store %struct.Memory* %call_4020d9, %struct.Memory** %MEMORY

  ; Code: movq %rdx, %xmm0	 RIP: 4020dc	 Bytes: 5
  %loadMem_4020dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020dc = call %struct.Memory* @routine_movq__rdx___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020dc)
  store %struct.Memory* %call_4020dc, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x48(%rbp)	 RIP: 4020e1	 Bytes: 5
  %loadMem_4020e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020e1 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020e1)
  store %struct.Memory* %call_4020e1, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 4020e6	 Bytes: 4
  %loadMem_4020e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020e6 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020e6)
  store %struct.Memory* %call_4020e6, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rsi	 RIP: 4020ea	 Bytes: 4
  %loadMem_4020ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020ea = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020ea)
  store %struct.Memory* %call_4020ea, %struct.Memory** %MEMORY

  ; Code: movsd (%rdx,%rsi,8), %xmm0	 RIP: 4020ee	 Bytes: 5
  %loadMem_4020ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020ee = call %struct.Memory* @routine_movsd___rdx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020ee)
  store %struct.Memory* %call_4020ee, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x50(%rbp)	 RIP: 4020f3	 Bytes: 5
  %loadMem_4020f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020f3 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020f3)
  store %struct.Memory* %call_4020f3, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 4020f8	 Bytes: 4
  %loadMem_4020f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020f8 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020f8)
  store %struct.Memory* %call_4020f8, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %ecx	 RIP: 4020fc	 Bytes: 3
  %loadMem_4020fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020fc = call %struct.Memory* @routine_movl_MINUS0x28__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020fc)
  store %struct.Memory* %call_4020fc, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 4020ff	 Bytes: 3
  %loadMem_4020ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4020ff = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4020ff)
  store %struct.Memory* %call_4020ff, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 402102	 Bytes: 3
  %loadMem_402102 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402102 = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402102)
  store %struct.Memory* %call_402102, %struct.Memory** %MEMORY

  ; Code: movsd (%rdx,%rsi,8), %xmm0	 RIP: 402105	 Bytes: 5
  %loadMem_402105 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402105 = call %struct.Memory* @routine_movsd___rdx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402105)
  store %struct.Memory* %call_402105, %struct.Memory** %MEMORY

  ; Code: movq %xmm0, %rdx	 RIP: 40210a	 Bytes: 5
  %loadMem_40210a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40210a = call %struct.Memory* @routine_movq__xmm0___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40210a)
  store %struct.Memory* %call_40210a, %struct.Memory** %MEMORY

  ; Code: xorq %rax, %rdx	 RIP: 40210f	 Bytes: 3
  %loadMem_40210f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40210f = call %struct.Memory* @routine_xorq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40210f)
  store %struct.Memory* %call_40210f, %struct.Memory** %MEMORY

  ; Code: movq %rdx, %xmm0	 RIP: 402112	 Bytes: 5
  %loadMem_402112 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402112 = call %struct.Memory* @routine_movq__rdx___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402112)
  store %struct.Memory* %call_402112, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x58(%rbp)	 RIP: 402117	 Bytes: 5
  %loadMem_402117 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402117 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x58__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402117)
  store %struct.Memory* %call_402117, %struct.Memory** %MEMORY

  ; Code: movsd -0x50(%rbp), %xmm0	 RIP: 40211c	 Bytes: 5
  %loadMem_40211c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40211c = call %struct.Memory* @routine_movsd_MINUS0x50__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40211c)
  store %struct.Memory* %call_40211c, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 402121	 Bytes: 4
  %loadMem_402121 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402121 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402121)
  store %struct.Memory* %call_402121, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rsi	 RIP: 402125	 Bytes: 4
  %loadMem_402125 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402125 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402125)
  store %struct.Memory* %call_402125, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rdx,%rsi,8)	 RIP: 402129	 Bytes: 5
  %loadMem_402129 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402129 = call %struct.Memory* @routine_movsd__xmm0____rdx__rsi_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402129)
  store %struct.Memory* %call_402129, %struct.Memory** %MEMORY

  ; Code: movsd -0x58(%rbp), %xmm0	 RIP: 40212e	 Bytes: 5
  %loadMem_40212e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40212e = call %struct.Memory* @routine_movsd_MINUS0x58__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40212e)
  store %struct.Memory* %call_40212e, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 402133	 Bytes: 4
  %loadMem_402133 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402133 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402133)
  store %struct.Memory* %call_402133, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %ecx	 RIP: 402137	 Bytes: 3
  %loadMem_402137 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402137 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402137)
  store %struct.Memory* %call_402137, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 40213a	 Bytes: 3
  %loadMem_40213a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40213a = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40213a)
  store %struct.Memory* %call_40213a, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 40213d	 Bytes: 3
  %loadMem_40213d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40213d = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40213d)
  store %struct.Memory* %call_40213d, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rdx,%rsi,8)	 RIP: 402140	 Bytes: 5
  %loadMem_402140 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402140 = call %struct.Memory* @routine_movsd__xmm0____rdx__rsi_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402140)
  store %struct.Memory* %call_402140, %struct.Memory** %MEMORY

  ; Code: movsd -0x40(%rbp), %xmm0	 RIP: 402145	 Bytes: 5
  %loadMem_402145 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402145 = call %struct.Memory* @routine_movsd_MINUS0x40__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402145)
  store %struct.Memory* %call_402145, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 40214a	 Bytes: 4
  %loadMem_40214a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40214a = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40214a)
  store %struct.Memory* %call_40214a, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rsi	 RIP: 40214e	 Bytes: 4
  %loadMem_40214e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40214e = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40214e)
  store %struct.Memory* %call_40214e, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rdx,%rsi,8)	 RIP: 402152	 Bytes: 5
  %loadMem_402152 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402152 = call %struct.Memory* @routine_movsd__xmm0____rdx__rsi_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402152)
  store %struct.Memory* %call_402152, %struct.Memory** %MEMORY

  ; Code: movsd -0x48(%rbp), %xmm0	 RIP: 402157	 Bytes: 5
  %loadMem_402157 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402157 = call %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402157)
  store %struct.Memory* %call_402157, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 40215c	 Bytes: 4
  %loadMem_40215c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40215c = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40215c)
  store %struct.Memory* %call_40215c, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %ecx	 RIP: 402160	 Bytes: 3
  %loadMem_402160 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402160 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402160)
  store %struct.Memory* %call_402160, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 402163	 Bytes: 3
  %loadMem_402163 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402163 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402163)
  store %struct.Memory* %call_402163, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 402166	 Bytes: 3
  %loadMem_402166 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402166 = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402166)
  store %struct.Memory* %call_402166, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rdx,%rsi,8)	 RIP: 402169	 Bytes: 5
  %loadMem_402169 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402169 = call %struct.Memory* @routine_movsd__xmm0____rdx__rsi_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402169)
  store %struct.Memory* %call_402169, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %ecx	 RIP: 40216e	 Bytes: 3
  %loadMem_40216e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40216e = call %struct.Memory* @routine_movl_MINUS0x34__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40216e)
  store %struct.Memory* %call_40216e, %struct.Memory** %MEMORY

  ; Code: addl -0x28(%rbp), %ecx	 RIP: 402171	 Bytes: 3
  %loadMem_402171 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402171 = call %struct.Memory* @routine_addl_MINUS0x28__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402171)
  store %struct.Memory* %call_402171, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x28(%rbp)	 RIP: 402174	 Bytes: 3
  %loadMem_402174 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402174 = call %struct.Memory* @routine_movl__ecx__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402174)
  store %struct.Memory* %call_402174, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 402177	 Bytes: 4
  %loadMem_402177 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402177 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402177)
  store %struct.Memory* %call_402177, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %ecx	 RIP: 40217b	 Bytes: 3
  %loadMem_40217b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40217b = call %struct.Memory* @routine_movl_MINUS0x28__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40217b)
  store %struct.Memory* %call_40217b, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 40217e	 Bytes: 3
  %loadMem_40217e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40217e = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40217e)
  store %struct.Memory* %call_40217e, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 402181	 Bytes: 3
  %loadMem_402181 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402181 = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402181)
  store %struct.Memory* %call_402181, %struct.Memory** %MEMORY

  ; Code: movsd (%rdx,%rsi,8), %xmm0	 RIP: 402184	 Bytes: 5
  %loadMem_402184 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402184 = call %struct.Memory* @routine_movsd___rdx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402184)
  store %struct.Memory* %call_402184, %struct.Memory** %MEMORY

  ; Code: movq %xmm0, %rdx	 RIP: 402189	 Bytes: 5
  %loadMem_402189 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402189 = call %struct.Memory* @routine_movq__xmm0___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402189)
  store %struct.Memory* %call_402189, %struct.Memory** %MEMORY

  ; Code: xorq %rax, %rdx	 RIP: 40218e	 Bytes: 3
  %loadMem_40218e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40218e = call %struct.Memory* @routine_xorq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40218e)
  store %struct.Memory* %call_40218e, %struct.Memory** %MEMORY

  ; Code: movq %rdx, %xmm0	 RIP: 402191	 Bytes: 5
  %loadMem_402191 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402191 = call %struct.Memory* @routine_movq__rdx___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402191)
  store %struct.Memory* %call_402191, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 402196	 Bytes: 4
  %loadMem_402196 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402196 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402196)
  store %struct.Memory* %call_402196, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %ecx	 RIP: 40219a	 Bytes: 3
  %loadMem_40219a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40219a = call %struct.Memory* @routine_movl_MINUS0x28__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40219a)
  store %struct.Memory* %call_40219a, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 40219d	 Bytes: 3
  %loadMem_40219d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40219d = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40219d)
  store %struct.Memory* %call_40219d, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 4021a0	 Bytes: 3
  %loadMem_4021a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021a0 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021a0)
  store %struct.Memory* %call_4021a0, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rdx,8)	 RIP: 4021a3	 Bytes: 5
  %loadMem_4021a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021a3 = call %struct.Memory* @routine_movsd__xmm0____rax__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021a3)
  store %struct.Memory* %call_4021a3, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %eax	 RIP: 4021a8	 Bytes: 3
  %loadMem_4021a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021a8 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021a8)
  store %struct.Memory* %call_4021a8, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4021ab	 Bytes: 3
  %loadMem_4021ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021ab = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021ab)
  store %struct.Memory* %call_4021ab, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x24(%rbp)	 RIP: 4021ae	 Bytes: 3
  %loadMem_4021ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021ae = call %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021ae)
  store %struct.Memory* %call_4021ae, %struct.Memory** %MEMORY

  ; Code: jmpq .L_401cba	 RIP: 4021b1	 Bytes: 5
  %loadMem_4021b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021b1 = call %struct.Memory* @routine_jmpq_.L_401cba(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021b1, i64 -1271, i64 5)
  store %struct.Memory* %call_4021b1, %struct.Memory** %MEMORY

  br label %block_.L_401cba

  ; Code: .L_4021b6:	 RIP: 4021b6	 Bytes: 0
block_.L_4021b6:

  ; Code: jmpq .L_4024a2	 RIP: 4021b6	 Bytes: 5
  %loadMem_4021b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021b6 = call %struct.Memory* @routine_jmpq_.L_4024a2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021b6, i64 748, i64 5)
  store %struct.Memory* %call_4021b6, %struct.Memory** %MEMORY

  br label %block_.L_4024a2

  ; Code: .L_4021bb:	 RIP: 4021bb	 Bytes: 0
block_.L_4021bb:

  ; Code: movq $0x8000000000000000, %rax	 RIP: 4021bb	 Bytes: 10
  %loadMem_4021bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021bb = call %struct.Memory* @routine_movq__0x8000000000000000___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021bb)
  store %struct.Memory* %call_4021bb, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 4021c5	 Bytes: 4
  %loadMem_4021c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021c5 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021c5)
  store %struct.Memory* %call_4021c5, %struct.Memory** %MEMORY

  ; Code: movsd 0x8(%rcx), %xmm0	 RIP: 4021c9	 Bytes: 5
  %loadMem_4021c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021c9 = call %struct.Memory* @routine_movsd_0x8__rcx____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021c9)
  store %struct.Memory* %call_4021c9, %struct.Memory** %MEMORY

  ; Code: movq %xmm0, %rcx	 RIP: 4021ce	 Bytes: 5
  %loadMem_4021ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021ce = call %struct.Memory* @routine_movq__xmm0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021ce)
  store %struct.Memory* %call_4021ce, %struct.Memory** %MEMORY

  ; Code: xorq %rax, %rcx	 RIP: 4021d3	 Bytes: 3
  %loadMem_4021d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021d3 = call %struct.Memory* @routine_xorq__rax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021d3)
  store %struct.Memory* %call_4021d3, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %xmm0	 RIP: 4021d6	 Bytes: 5
  %loadMem_4021d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021d6 = call %struct.Memory* @routine_movq__rcx___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021d6)
  store %struct.Memory* %call_4021d6, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 4021db	 Bytes: 4
  %loadMem_4021db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021db = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021db)
  store %struct.Memory* %call_4021db, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, 0x8(%rcx)	 RIP: 4021df	 Bytes: 5
  %loadMem_4021df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021df = call %struct.Memory* @routine_movsd__xmm0__0x8__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021df)
  store %struct.Memory* %call_4021df, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rcx	 RIP: 4021e4	 Bytes: 4
  %loadMem_4021e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021e4 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021e4)
  store %struct.Memory* %call_4021e4, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %edx	 RIP: 4021e8	 Bytes: 3
  %loadMem_4021e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021e8 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021e8)
  store %struct.Memory* %call_4021e8, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 4021eb	 Bytes: 3
  %loadMem_4021eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021eb = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021eb)
  store %struct.Memory* %call_4021eb, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rsi	 RIP: 4021ee	 Bytes: 3
  %loadMem_4021ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021ee = call %struct.Memory* @routine_movslq__edx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021ee)
  store %struct.Memory* %call_4021ee, %struct.Memory** %MEMORY

  ; Code: movsd (%rcx,%rsi,8), %xmm0	 RIP: 4021f1	 Bytes: 5
  %loadMem_4021f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021f1 = call %struct.Memory* @routine_movsd___rcx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021f1)
  store %struct.Memory* %call_4021f1, %struct.Memory** %MEMORY

  ; Code: movq %xmm0, %rcx	 RIP: 4021f6	 Bytes: 5
  %loadMem_4021f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021f6 = call %struct.Memory* @routine_movq__xmm0___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021f6)
  store %struct.Memory* %call_4021f6, %struct.Memory** %MEMORY

  ; Code: xorq %rax, %rcx	 RIP: 4021fb	 Bytes: 3
  %loadMem_4021fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021fb = call %struct.Memory* @routine_xorq__rax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021fb)
  store %struct.Memory* %call_4021fb, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %xmm0	 RIP: 4021fe	 Bytes: 5
  %loadMem_4021fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4021fe = call %struct.Memory* @routine_movq__rcx___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4021fe)
  store %struct.Memory* %call_4021fe, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 402203	 Bytes: 4
  %loadMem_402203 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402203 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402203)
  store %struct.Memory* %call_402203, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %edx	 RIP: 402207	 Bytes: 3
  %loadMem_402207 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402207 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402207)
  store %struct.Memory* %call_402207, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 40220a	 Bytes: 3
  %loadMem_40220a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40220a = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40220a)
  store %struct.Memory* %call_40220a, %struct.Memory** %MEMORY

  ; Code: movslq %edx, %rcx	 RIP: 40220d	 Bytes: 3
  %loadMem_40220d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40220d = call %struct.Memory* @routine_movslq__edx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40220d)
  store %struct.Memory* %call_40220d, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rcx,8)	 RIP: 402210	 Bytes: 5
  %loadMem_402210 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402210 = call %struct.Memory* @routine_movsd__xmm0____rax__rcx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402210)
  store %struct.Memory* %call_402210, %struct.Memory** %MEMORY

  ; Code: movl $0x1, -0x24(%rbp)	 RIP: 402215	 Bytes: 7
  %loadMem_402215 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402215 = call %struct.Memory* @routine_movl__0x1__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402215)
  store %struct.Memory* %call_402215, %struct.Memory** %MEMORY

  ; Code: .L_40221c:	 RIP: 40221c	 Bytes: 0
  br label %block_.L_40221c
block_.L_40221c:

  ; Code: movl -0x24(%rbp), %eax	 RIP: 40221c	 Bytes: 3
  %loadMem_40221c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40221c = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40221c)
  store %struct.Memory* %call_40221c, %struct.Memory** %MEMORY

  ; Code: cmpl -0x30(%rbp), %eax	 RIP: 40221f	 Bytes: 3
  %loadMem_40221f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40221f = call %struct.Memory* @routine_cmpl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40221f)
  store %struct.Memory* %call_40221f, %struct.Memory** %MEMORY

  ; Code: jge .L_40249d	 RIP: 402222	 Bytes: 6
  %loadMem_402222 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402222 = call %struct.Memory* @routine_jge_.L_40249d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402222, i8* %BRANCH_TAKEN, i64 635, i64 6, i64 6)
  store %struct.Memory* %call_402222, %struct.Memory** %MEMORY

  %loadBr_402222 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_402222 = icmp eq i8 %loadBr_402222, 1
  br i1 %cmpBr_402222, label %block_.L_40249d, label %block_402228

block_402228:
  ; Code: movl $0x0, -0x1c(%rbp)	 RIP: 402228	 Bytes: 7
  %loadMem_402228 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402228 = call %struct.Memory* @routine_movl__0x0__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402228)
  store %struct.Memory* %call_402228, %struct.Memory** %MEMORY

  ; Code: .L_40222f:	 RIP: 40222f	 Bytes: 0
  br label %block_.L_40222f
block_.L_40222f:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 40222f	 Bytes: 3
  %loadMem_40222f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40222f = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40222f)
  store %struct.Memory* %call_40222f, %struct.Memory** %MEMORY

  ; Code: cmpl -0x24(%rbp), %eax	 RIP: 402232	 Bytes: 3
  %loadMem_402232 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402232 = call %struct.Memory* @routine_cmpl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402232)
  store %struct.Memory* %call_402232, %struct.Memory** %MEMORY

  ; Code: jge .L_402409	 RIP: 402235	 Bytes: 6
  %loadMem_402235 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402235 = call %struct.Memory* @routine_jge_.L_402409(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402235, i8* %BRANCH_TAKEN, i64 468, i64 6, i64 6)
  store %struct.Memory* %call_402235, %struct.Memory** %MEMORY

  %loadBr_402235 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_402235 = icmp eq i8 %loadBr_402235, 1
  br i1 %cmpBr_402235, label %block_.L_402409, label %block_40223b

block_40223b:
  ; Code: movq $0x8000000000000000, %rax	 RIP: 40223b	 Bytes: 10
  %loadMem_40223b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40223b = call %struct.Memory* @routine_movq__0x8000000000000000___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40223b)
  store %struct.Memory* %call_40223b, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %ecx	 RIP: 402245	 Bytes: 3
  %loadMem_402245 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402245 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402245)
  store %struct.Memory* %call_402245, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %ecx	 RIP: 402248	 Bytes: 3
  %loadMem_402248 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402248 = call %struct.Memory* @routine_shll__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402248)
  store %struct.Memory* %call_402248, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 40224b	 Bytes: 4
  %loadMem_40224b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40224b = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40224b)
  store %struct.Memory* %call_40224b, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rsi	 RIP: 40224f	 Bytes: 4
  %loadMem_40224f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40224f = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40224f)
  store %struct.Memory* %call_40224f, %struct.Memory** %MEMORY

  ; Code: addl (%rdx,%rsi,4), %ecx	 RIP: 402253	 Bytes: 3
  %loadMem_402253 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402253 = call %struct.Memory* @routine_addl___rdx__rsi_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402253)
  store %struct.Memory* %call_402253, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x20(%rbp)	 RIP: 402256	 Bytes: 3
  %loadMem_402256 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402256 = call %struct.Memory* @routine_movl__ecx__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402256)
  store %struct.Memory* %call_402256, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %ecx	 RIP: 402259	 Bytes: 3
  %loadMem_402259 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402259 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402259)
  store %struct.Memory* %call_402259, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %ecx	 RIP: 40225c	 Bytes: 3
  %loadMem_40225c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40225c = call %struct.Memory* @routine_shll__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40225c)
  store %struct.Memory* %call_40225c, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 40225f	 Bytes: 4
  %loadMem_40225f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40225f = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40225f)
  store %struct.Memory* %call_40225f, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rsi	 RIP: 402263	 Bytes: 4
  %loadMem_402263 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402263 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402263)
  store %struct.Memory* %call_402263, %struct.Memory** %MEMORY

  ; Code: addl (%rdx,%rsi,4), %ecx	 RIP: 402267	 Bytes: 3
  %loadMem_402267 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402267 = call %struct.Memory* @routine_addl___rdx__rsi_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402267)
  store %struct.Memory* %call_402267, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x28(%rbp)	 RIP: 40226a	 Bytes: 3
  %loadMem_40226a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40226a = call %struct.Memory* @routine_movl__ecx__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40226a)
  store %struct.Memory* %call_40226a, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 40226d	 Bytes: 4
  %loadMem_40226d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40226d = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40226d)
  store %struct.Memory* %call_40226d, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rsi	 RIP: 402271	 Bytes: 4
  %loadMem_402271 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402271 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402271)
  store %struct.Memory* %call_402271, %struct.Memory** %MEMORY

  ; Code: movsd (%rdx,%rsi,8), %xmm0	 RIP: 402275	 Bytes: 5
  %loadMem_402275 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402275 = call %struct.Memory* @routine_movsd___rdx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402275)
  store %struct.Memory* %call_402275, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x40(%rbp)	 RIP: 40227a	 Bytes: 5
  %loadMem_40227a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40227a = call %struct.Memory* @routine_movsd__xmm0__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40227a)
  store %struct.Memory* %call_40227a, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 40227f	 Bytes: 4
  %loadMem_40227f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40227f = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40227f)
  store %struct.Memory* %call_40227f, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %ecx	 RIP: 402283	 Bytes: 3
  %loadMem_402283 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402283 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402283)
  store %struct.Memory* %call_402283, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 402286	 Bytes: 3
  %loadMem_402286 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402286 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402286)
  store %struct.Memory* %call_402286, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 402289	 Bytes: 3
  %loadMem_402289 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402289 = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402289)
  store %struct.Memory* %call_402289, %struct.Memory** %MEMORY

  ; Code: movsd (%rdx,%rsi,8), %xmm0	 RIP: 40228c	 Bytes: 5
  %loadMem_40228c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40228c = call %struct.Memory* @routine_movsd___rdx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40228c)
  store %struct.Memory* %call_40228c, %struct.Memory** %MEMORY

  ; Code: movq %xmm0, %rdx	 RIP: 402291	 Bytes: 5
  %loadMem_402291 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402291 = call %struct.Memory* @routine_movq__xmm0___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402291)
  store %struct.Memory* %call_402291, %struct.Memory** %MEMORY

  ; Code: xorq %rax, %rdx	 RIP: 402296	 Bytes: 3
  %loadMem_402296 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402296 = call %struct.Memory* @routine_xorq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402296)
  store %struct.Memory* %call_402296, %struct.Memory** %MEMORY

  ; Code: movq %rdx, %xmm0	 RIP: 402299	 Bytes: 5
  %loadMem_402299 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402299 = call %struct.Memory* @routine_movq__rdx___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402299)
  store %struct.Memory* %call_402299, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x48(%rbp)	 RIP: 40229e	 Bytes: 5
  %loadMem_40229e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40229e = call %struct.Memory* @routine_movsd__xmm0__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40229e)
  store %struct.Memory* %call_40229e, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 4022a3	 Bytes: 4
  %loadMem_4022a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022a3 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022a3)
  store %struct.Memory* %call_4022a3, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rsi	 RIP: 4022a7	 Bytes: 4
  %loadMem_4022a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022a7 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022a7)
  store %struct.Memory* %call_4022a7, %struct.Memory** %MEMORY

  ; Code: movsd (%rdx,%rsi,8), %xmm0	 RIP: 4022ab	 Bytes: 5
  %loadMem_4022ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022ab = call %struct.Memory* @routine_movsd___rdx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022ab)
  store %struct.Memory* %call_4022ab, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x50(%rbp)	 RIP: 4022b0	 Bytes: 5
  %loadMem_4022b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022b0 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022b0)
  store %struct.Memory* %call_4022b0, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 4022b5	 Bytes: 4
  %loadMem_4022b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022b5 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022b5)
  store %struct.Memory* %call_4022b5, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %ecx	 RIP: 4022b9	 Bytes: 3
  %loadMem_4022b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022b9 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022b9)
  store %struct.Memory* %call_4022b9, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 4022bc	 Bytes: 3
  %loadMem_4022bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022bc = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022bc)
  store %struct.Memory* %call_4022bc, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 4022bf	 Bytes: 3
  %loadMem_4022bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022bf = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022bf)
  store %struct.Memory* %call_4022bf, %struct.Memory** %MEMORY

  ; Code: movsd (%rdx,%rsi,8), %xmm0	 RIP: 4022c2	 Bytes: 5
  %loadMem_4022c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022c2 = call %struct.Memory* @routine_movsd___rdx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022c2)
  store %struct.Memory* %call_4022c2, %struct.Memory** %MEMORY

  ; Code: movq %xmm0, %rdx	 RIP: 4022c7	 Bytes: 5
  %loadMem_4022c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022c7 = call %struct.Memory* @routine_movq__xmm0___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022c7)
  store %struct.Memory* %call_4022c7, %struct.Memory** %MEMORY

  ; Code: xorq %rax, %rdx	 RIP: 4022cc	 Bytes: 3
  %loadMem_4022cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022cc = call %struct.Memory* @routine_xorq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022cc)
  store %struct.Memory* %call_4022cc, %struct.Memory** %MEMORY

  ; Code: movq %rdx, %xmm0	 RIP: 4022cf	 Bytes: 5
  %loadMem_4022cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022cf = call %struct.Memory* @routine_movq__rdx___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022cf)
  store %struct.Memory* %call_4022cf, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x58(%rbp)	 RIP: 4022d4	 Bytes: 5
  %loadMem_4022d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022d4 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x58__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022d4)
  store %struct.Memory* %call_4022d4, %struct.Memory** %MEMORY

  ; Code: movsd -0x50(%rbp), %xmm0	 RIP: 4022d9	 Bytes: 5
  %loadMem_4022d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022d9 = call %struct.Memory* @routine_movsd_MINUS0x50__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022d9)
  store %struct.Memory* %call_4022d9, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 4022de	 Bytes: 4
  %loadMem_4022de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022de = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022de)
  store %struct.Memory* %call_4022de, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rsi	 RIP: 4022e2	 Bytes: 4
  %loadMem_4022e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022e2 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022e2)
  store %struct.Memory* %call_4022e2, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rdx,%rsi,8)	 RIP: 4022e6	 Bytes: 5
  %loadMem_4022e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022e6 = call %struct.Memory* @routine_movsd__xmm0____rdx__rsi_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022e6)
  store %struct.Memory* %call_4022e6, %struct.Memory** %MEMORY

  ; Code: movsd -0x58(%rbp), %xmm0	 RIP: 4022eb	 Bytes: 5
  %loadMem_4022eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022eb = call %struct.Memory* @routine_movsd_MINUS0x58__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022eb)
  store %struct.Memory* %call_4022eb, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 4022f0	 Bytes: 4
  %loadMem_4022f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022f0 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022f0)
  store %struct.Memory* %call_4022f0, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %ecx	 RIP: 4022f4	 Bytes: 3
  %loadMem_4022f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022f4 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022f4)
  store %struct.Memory* %call_4022f4, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 4022f7	 Bytes: 3
  %loadMem_4022f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022f7 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022f7)
  store %struct.Memory* %call_4022f7, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 4022fa	 Bytes: 3
  %loadMem_4022fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022fa = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022fa)
  store %struct.Memory* %call_4022fa, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rdx,%rsi,8)	 RIP: 4022fd	 Bytes: 5
  %loadMem_4022fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4022fd = call %struct.Memory* @routine_movsd__xmm0____rdx__rsi_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4022fd)
  store %struct.Memory* %call_4022fd, %struct.Memory** %MEMORY

  ; Code: movsd -0x40(%rbp), %xmm0	 RIP: 402302	 Bytes: 5
  %loadMem_402302 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402302 = call %struct.Memory* @routine_movsd_MINUS0x40__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402302)
  store %struct.Memory* %call_402302, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 402307	 Bytes: 4
  %loadMem_402307 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402307 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402307)
  store %struct.Memory* %call_402307, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rsi	 RIP: 40230b	 Bytes: 4
  %loadMem_40230b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40230b = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40230b)
  store %struct.Memory* %call_40230b, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rdx,%rsi,8)	 RIP: 40230f	 Bytes: 5
  %loadMem_40230f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40230f = call %struct.Memory* @routine_movsd__xmm0____rdx__rsi_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40230f)
  store %struct.Memory* %call_40230f, %struct.Memory** %MEMORY

  ; Code: movsd -0x48(%rbp), %xmm0	 RIP: 402314	 Bytes: 5
  %loadMem_402314 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402314 = call %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402314)
  store %struct.Memory* %call_402314, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 402319	 Bytes: 4
  %loadMem_402319 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402319 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402319)
  store %struct.Memory* %call_402319, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %ecx	 RIP: 40231d	 Bytes: 3
  %loadMem_40231d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40231d = call %struct.Memory* @routine_movl_MINUS0x28__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40231d)
  store %struct.Memory* %call_40231d, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 402320	 Bytes: 3
  %loadMem_402320 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402320 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402320)
  store %struct.Memory* %call_402320, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 402323	 Bytes: 3
  %loadMem_402323 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402323 = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402323)
  store %struct.Memory* %call_402323, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rdx,%rsi,8)	 RIP: 402326	 Bytes: 5
  %loadMem_402326 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402326 = call %struct.Memory* @routine_movsd__xmm0____rdx__rsi_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402326)
  store %struct.Memory* %call_402326, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %ecx	 RIP: 40232b	 Bytes: 3
  %loadMem_40232b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40232b = call %struct.Memory* @routine_movl_MINUS0x34__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40232b)
  store %struct.Memory* %call_40232b, %struct.Memory** %MEMORY

  ; Code: addl -0x20(%rbp), %ecx	 RIP: 40232e	 Bytes: 3
  %loadMem_40232e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40232e = call %struct.Memory* @routine_addl_MINUS0x20__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40232e)
  store %struct.Memory* %call_40232e, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x20(%rbp)	 RIP: 402331	 Bytes: 3
  %loadMem_402331 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402331 = call %struct.Memory* @routine_movl__ecx__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402331)
  store %struct.Memory* %call_402331, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %ecx	 RIP: 402334	 Bytes: 3
  %loadMem_402334 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402334 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402334)
  store %struct.Memory* %call_402334, %struct.Memory** %MEMORY

  ; Code: addl -0x28(%rbp), %ecx	 RIP: 402337	 Bytes: 3
  %loadMem_402337 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402337 = call %struct.Memory* @routine_addl_MINUS0x28__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402337)
  store %struct.Memory* %call_402337, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x28(%rbp)	 RIP: 40233a	 Bytes: 3
  %loadMem_40233a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40233a = call %struct.Memory* @routine_movl__ecx__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40233a)
  store %struct.Memory* %call_40233a, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 40233d	 Bytes: 4
  %loadMem_40233d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40233d = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40233d)
  store %struct.Memory* %call_40233d, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rsi	 RIP: 402341	 Bytes: 4
  %loadMem_402341 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402341 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402341)
  store %struct.Memory* %call_402341, %struct.Memory** %MEMORY

  ; Code: movsd (%rdx,%rsi,8), %xmm0	 RIP: 402345	 Bytes: 5
  %loadMem_402345 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402345 = call %struct.Memory* @routine_movsd___rdx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402345)
  store %struct.Memory* %call_402345, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x40(%rbp)	 RIP: 40234a	 Bytes: 5
  %loadMem_40234a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40234a = call %struct.Memory* @routine_movsd__xmm0__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40234a)
  store %struct.Memory* %call_40234a, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 40234f	 Bytes: 4
  %loadMem_40234f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40234f = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40234f)
  store %struct.Memory* %call_40234f, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %ecx	 RIP: 402353	 Bytes: 3
  %loadMem_402353 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402353 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402353)
  store %struct.Memory* %call_402353, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 402356	 Bytes: 3
  %loadMem_402356 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402356 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402356)
  store %struct.Memory* %call_402356, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 402359	 Bytes: 3
  %loadMem_402359 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402359 = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402359)
  store %struct.Memory* %call_402359, %struct.Memory** %MEMORY

  ; Code: movsd (%rdx,%rsi,8), %xmm0	 RIP: 40235c	 Bytes: 5
  %loadMem_40235c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40235c = call %struct.Memory* @routine_movsd___rdx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40235c)
  store %struct.Memory* %call_40235c, %struct.Memory** %MEMORY

  ; Code: movq %xmm0, %rdx	 RIP: 402361	 Bytes: 5
  %loadMem_402361 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402361 = call %struct.Memory* @routine_movq__xmm0___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402361)
  store %struct.Memory* %call_402361, %struct.Memory** %MEMORY

  ; Code: xorq %rax, %rdx	 RIP: 402366	 Bytes: 3
  %loadMem_402366 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402366 = call %struct.Memory* @routine_xorq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402366)
  store %struct.Memory* %call_402366, %struct.Memory** %MEMORY

  ; Code: movq %rdx, %xmm0	 RIP: 402369	 Bytes: 5
  %loadMem_402369 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402369 = call %struct.Memory* @routine_movq__rdx___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402369)
  store %struct.Memory* %call_402369, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x48(%rbp)	 RIP: 40236e	 Bytes: 5
  %loadMem_40236e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40236e = call %struct.Memory* @routine_movsd__xmm0__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40236e)
  store %struct.Memory* %call_40236e, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 402373	 Bytes: 4
  %loadMem_402373 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402373 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402373)
  store %struct.Memory* %call_402373, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rsi	 RIP: 402377	 Bytes: 4
  %loadMem_402377 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402377 = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402377)
  store %struct.Memory* %call_402377, %struct.Memory** %MEMORY

  ; Code: movsd (%rdx,%rsi,8), %xmm0	 RIP: 40237b	 Bytes: 5
  %loadMem_40237b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40237b = call %struct.Memory* @routine_movsd___rdx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40237b)
  store %struct.Memory* %call_40237b, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x50(%rbp)	 RIP: 402380	 Bytes: 5
  %loadMem_402380 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402380 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402380)
  store %struct.Memory* %call_402380, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 402385	 Bytes: 4
  %loadMem_402385 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402385 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402385)
  store %struct.Memory* %call_402385, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %ecx	 RIP: 402389	 Bytes: 3
  %loadMem_402389 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402389 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402389)
  store %struct.Memory* %call_402389, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 40238c	 Bytes: 3
  %loadMem_40238c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40238c = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40238c)
  store %struct.Memory* %call_40238c, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 40238f	 Bytes: 3
  %loadMem_40238f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40238f = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40238f)
  store %struct.Memory* %call_40238f, %struct.Memory** %MEMORY

  ; Code: movsd (%rdx,%rsi,8), %xmm0	 RIP: 402392	 Bytes: 5
  %loadMem_402392 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402392 = call %struct.Memory* @routine_movsd___rdx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402392)
  store %struct.Memory* %call_402392, %struct.Memory** %MEMORY

  ; Code: movq %xmm0, %rdx	 RIP: 402397	 Bytes: 5
  %loadMem_402397 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402397 = call %struct.Memory* @routine_movq__xmm0___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402397)
  store %struct.Memory* %call_402397, %struct.Memory** %MEMORY

  ; Code: xorq %rax, %rdx	 RIP: 40239c	 Bytes: 3
  %loadMem_40239c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40239c = call %struct.Memory* @routine_xorq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40239c)
  store %struct.Memory* %call_40239c, %struct.Memory** %MEMORY

  ; Code: movq %rdx, %xmm0	 RIP: 40239f	 Bytes: 5
  %loadMem_40239f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40239f = call %struct.Memory* @routine_movq__rdx___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40239f)
  store %struct.Memory* %call_40239f, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, -0x58(%rbp)	 RIP: 4023a4	 Bytes: 5
  %loadMem_4023a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023a4 = call %struct.Memory* @routine_movsd__xmm0__MINUS0x58__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023a4)
  store %struct.Memory* %call_4023a4, %struct.Memory** %MEMORY

  ; Code: movsd -0x50(%rbp), %xmm0	 RIP: 4023a9	 Bytes: 5
  %loadMem_4023a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023a9 = call %struct.Memory* @routine_movsd_MINUS0x50__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023a9)
  store %struct.Memory* %call_4023a9, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 4023ae	 Bytes: 4
  %loadMem_4023ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023ae = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023ae)
  store %struct.Memory* %call_4023ae, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rdx	 RIP: 4023b2	 Bytes: 4
  %loadMem_4023b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023b2 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023b2)
  store %struct.Memory* %call_4023b2, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rdx,8)	 RIP: 4023b6	 Bytes: 5
  %loadMem_4023b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023b6 = call %struct.Memory* @routine_movsd__xmm0____rax__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023b6)
  store %struct.Memory* %call_4023b6, %struct.Memory** %MEMORY

  ; Code: movsd -0x58(%rbp), %xmm0	 RIP: 4023bb	 Bytes: 5
  %loadMem_4023bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023bb = call %struct.Memory* @routine_movsd_MINUS0x58__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023bb)
  store %struct.Memory* %call_4023bb, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 4023c0	 Bytes: 4
  %loadMem_4023c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023c0 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023c0)
  store %struct.Memory* %call_4023c0, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %ecx	 RIP: 4023c4	 Bytes: 3
  %loadMem_4023c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023c4 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023c4)
  store %struct.Memory* %call_4023c4, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 4023c7	 Bytes: 3
  %loadMem_4023c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023c7 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023c7)
  store %struct.Memory* %call_4023c7, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 4023ca	 Bytes: 3
  %loadMem_4023ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023ca = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023ca)
  store %struct.Memory* %call_4023ca, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rdx,8)	 RIP: 4023cd	 Bytes: 5
  %loadMem_4023cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023cd = call %struct.Memory* @routine_movsd__xmm0____rax__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023cd)
  store %struct.Memory* %call_4023cd, %struct.Memory** %MEMORY

  ; Code: movsd -0x40(%rbp), %xmm0	 RIP: 4023d2	 Bytes: 5
  %loadMem_4023d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023d2 = call %struct.Memory* @routine_movsd_MINUS0x40__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023d2)
  store %struct.Memory* %call_4023d2, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 4023d7	 Bytes: 4
  %loadMem_4023d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023d7 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023d7)
  store %struct.Memory* %call_4023d7, %struct.Memory** %MEMORY

  ; Code: movslq -0x28(%rbp), %rdx	 RIP: 4023db	 Bytes: 4
  %loadMem_4023db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023db = call %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023db)
  store %struct.Memory* %call_4023db, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rdx,8)	 RIP: 4023df	 Bytes: 5
  %loadMem_4023df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023df = call %struct.Memory* @routine_movsd__xmm0____rax__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023df)
  store %struct.Memory* %call_4023df, %struct.Memory** %MEMORY

  ; Code: movsd -0x48(%rbp), %xmm0	 RIP: 4023e4	 Bytes: 5
  %loadMem_4023e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023e4 = call %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023e4)
  store %struct.Memory* %call_4023e4, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 4023e9	 Bytes: 4
  %loadMem_4023e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023e9 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023e9)
  store %struct.Memory* %call_4023e9, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %ecx	 RIP: 4023ed	 Bytes: 3
  %loadMem_4023ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023ed = call %struct.Memory* @routine_movl_MINUS0x28__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023ed)
  store %struct.Memory* %call_4023ed, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 4023f0	 Bytes: 3
  %loadMem_4023f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023f0 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023f0)
  store %struct.Memory* %call_4023f0, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 4023f3	 Bytes: 3
  %loadMem_4023f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023f3 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023f3)
  store %struct.Memory* %call_4023f3, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rdx,8)	 RIP: 4023f6	 Bytes: 5
  %loadMem_4023f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023f6 = call %struct.Memory* @routine_movsd__xmm0____rax__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023f6)
  store %struct.Memory* %call_4023f6, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 4023fb	 Bytes: 3
  %loadMem_4023fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023fb = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023fb)
  store %struct.Memory* %call_4023fb, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4023fe	 Bytes: 3
  %loadMem_4023fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4023fe = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4023fe)
  store %struct.Memory* %call_4023fe, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 402401	 Bytes: 3
  %loadMem_402401 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402401 = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402401)
  store %struct.Memory* %call_402401, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40222f	 RIP: 402404	 Bytes: 5
  %loadMem_402404 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402404 = call %struct.Memory* @routine_jmpq_.L_40222f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402404, i64 -469, i64 5)
  store %struct.Memory* %call_402404, %struct.Memory** %MEMORY

  br label %block_.L_40222f

  ; Code: .L_402409:	 RIP: 402409	 Bytes: 0
block_.L_402409:

  ; Code: movq $0x8000000000000000, %rax	 RIP: 402409	 Bytes: 10
  %loadMem_402409 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402409 = call %struct.Memory* @routine_movq__0x8000000000000000___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402409)
  store %struct.Memory* %call_402409, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %ecx	 RIP: 402413	 Bytes: 3
  %loadMem_402413 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402413 = call %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402413)
  store %struct.Memory* %call_402413, %struct.Memory** %MEMORY

  ; Code: shll $0x1, %ecx	 RIP: 402416	 Bytes: 3
  %loadMem_402416 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402416 = call %struct.Memory* @routine_shll__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402416)
  store %struct.Memory* %call_402416, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 402419	 Bytes: 4
  %loadMem_402419 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402419 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402419)
  store %struct.Memory* %call_402419, %struct.Memory** %MEMORY

  ; Code: movslq -0x24(%rbp), %rsi	 RIP: 40241d	 Bytes: 4
  %loadMem_40241d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40241d = call %struct.Memory* @routine_movslq_MINUS0x24__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40241d)
  store %struct.Memory* %call_40241d, %struct.Memory** %MEMORY

  ; Code: addl (%rdx,%rsi,4), %ecx	 RIP: 402421	 Bytes: 3
  %loadMem_402421 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402421 = call %struct.Memory* @routine_addl___rdx__rsi_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402421)
  store %struct.Memory* %call_402421, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x28(%rbp)	 RIP: 402424	 Bytes: 3
  %loadMem_402424 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402424 = call %struct.Memory* @routine_movl__ecx__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402424)
  store %struct.Memory* %call_402424, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 402427	 Bytes: 4
  %loadMem_402427 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402427 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402427)
  store %struct.Memory* %call_402427, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %ecx	 RIP: 40242b	 Bytes: 3
  %loadMem_40242b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40242b = call %struct.Memory* @routine_movl_MINUS0x28__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40242b)
  store %struct.Memory* %call_40242b, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 40242e	 Bytes: 3
  %loadMem_40242e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40242e = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40242e)
  store %struct.Memory* %call_40242e, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 402431	 Bytes: 3
  %loadMem_402431 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402431 = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402431)
  store %struct.Memory* %call_402431, %struct.Memory** %MEMORY

  ; Code: movsd (%rdx,%rsi,8), %xmm0	 RIP: 402434	 Bytes: 5
  %loadMem_402434 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402434 = call %struct.Memory* @routine_movsd___rdx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402434)
  store %struct.Memory* %call_402434, %struct.Memory** %MEMORY

  ; Code: movq %xmm0, %rdx	 RIP: 402439	 Bytes: 5
  %loadMem_402439 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402439 = call %struct.Memory* @routine_movq__xmm0___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402439)
  store %struct.Memory* %call_402439, %struct.Memory** %MEMORY

  ; Code: xorq %rax, %rdx	 RIP: 40243e	 Bytes: 3
  %loadMem_40243e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40243e = call %struct.Memory* @routine_xorq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40243e)
  store %struct.Memory* %call_40243e, %struct.Memory** %MEMORY

  ; Code: movq %rdx, %xmm0	 RIP: 402441	 Bytes: 5
  %loadMem_402441 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402441 = call %struct.Memory* @routine_movq__rdx___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402441)
  store %struct.Memory* %call_402441, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 402446	 Bytes: 4
  %loadMem_402446 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402446 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402446)
  store %struct.Memory* %call_402446, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %ecx	 RIP: 40244a	 Bytes: 3
  %loadMem_40244a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40244a = call %struct.Memory* @routine_movl_MINUS0x28__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40244a)
  store %struct.Memory* %call_40244a, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 40244d	 Bytes: 3
  %loadMem_40244d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40244d = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40244d)
  store %struct.Memory* %call_40244d, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 402450	 Bytes: 3
  %loadMem_402450 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402450 = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402450)
  store %struct.Memory* %call_402450, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rdx,%rsi,8)	 RIP: 402453	 Bytes: 5
  %loadMem_402453 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402453 = call %struct.Memory* @routine_movsd__xmm0____rdx__rsi_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402453)
  store %struct.Memory* %call_402453, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 402458	 Bytes: 4
  %loadMem_402458 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402458 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402458)
  store %struct.Memory* %call_402458, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %ecx	 RIP: 40245c	 Bytes: 3
  %loadMem_40245c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40245c = call %struct.Memory* @routine_movl_MINUS0x28__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40245c)
  store %struct.Memory* %call_40245c, %struct.Memory** %MEMORY

  ; Code: addl -0x34(%rbp), %ecx	 RIP: 40245f	 Bytes: 3
  %loadMem_40245f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40245f = call %struct.Memory* @routine_addl_MINUS0x34__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40245f)
  store %struct.Memory* %call_40245f, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 402462	 Bytes: 3
  %loadMem_402462 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402462 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402462)
  store %struct.Memory* %call_402462, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 402465	 Bytes: 3
  %loadMem_402465 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402465 = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402465)
  store %struct.Memory* %call_402465, %struct.Memory** %MEMORY

  ; Code: movsd (%rdx,%rsi,8), %xmm0	 RIP: 402468	 Bytes: 5
  %loadMem_402468 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402468 = call %struct.Memory* @routine_movsd___rdx__rsi_8____xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402468)
  store %struct.Memory* %call_402468, %struct.Memory** %MEMORY

  ; Code: movq %xmm0, %rdx	 RIP: 40246d	 Bytes: 5
  %loadMem_40246d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40246d = call %struct.Memory* @routine_movq__xmm0___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40246d)
  store %struct.Memory* %call_40246d, %struct.Memory** %MEMORY

  ; Code: xorq %rax, %rdx	 RIP: 402472	 Bytes: 3
  %loadMem_402472 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402472 = call %struct.Memory* @routine_xorq__rax___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402472)
  store %struct.Memory* %call_402472, %struct.Memory** %MEMORY

  ; Code: movq %rdx, %xmm0	 RIP: 402475	 Bytes: 5
  %loadMem_402475 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402475 = call %struct.Memory* @routine_movq__rdx___xmm0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402475)
  store %struct.Memory* %call_402475, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rax	 RIP: 40247a	 Bytes: 4
  %loadMem_40247a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40247a = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40247a)
  store %struct.Memory* %call_40247a, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %ecx	 RIP: 40247e	 Bytes: 3
  %loadMem_40247e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40247e = call %struct.Memory* @routine_movl_MINUS0x28__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40247e)
  store %struct.Memory* %call_40247e, %struct.Memory** %MEMORY

  ; Code: addl -0x34(%rbp), %ecx	 RIP: 402481	 Bytes: 3
  %loadMem_402481 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402481 = call %struct.Memory* @routine_addl_MINUS0x34__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402481)
  store %struct.Memory* %call_402481, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 402484	 Bytes: 3
  %loadMem_402484 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402484 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402484)
  store %struct.Memory* %call_402484, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 402487	 Bytes: 3
  %loadMem_402487 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402487 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402487)
  store %struct.Memory* %call_402487, %struct.Memory** %MEMORY

  ; Code: movsd %xmm0, (%rax,%rdx,8)	 RIP: 40248a	 Bytes: 5
  %loadMem_40248a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40248a = call %struct.Memory* @routine_movsd__xmm0____rax__rdx_8_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40248a)
  store %struct.Memory* %call_40248a, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %eax	 RIP: 40248f	 Bytes: 3
  %loadMem_40248f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40248f = call %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40248f)
  store %struct.Memory* %call_40248f, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 402492	 Bytes: 3
  %loadMem_402492 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402492 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402492)
  store %struct.Memory* %call_402492, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x24(%rbp)	 RIP: 402495	 Bytes: 3
  %loadMem_402495 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402495 = call %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402495)
  store %struct.Memory* %call_402495, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40221c	 RIP: 402498	 Bytes: 5
  %loadMem_402498 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_402498 = call %struct.Memory* @routine_jmpq_.L_40221c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_402498, i64 -636, i64 5)
  store %struct.Memory* %call_402498, %struct.Memory** %MEMORY

  br label %block_.L_40221c

  ; Code: .L_40249d:	 RIP: 40249d	 Bytes: 0
block_.L_40249d:

  ; Code: jmpq .L_4024a2	 RIP: 40249d	 Bytes: 5
  %loadMem_40249d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40249d = call %struct.Memory* @routine_jmpq_.L_4024a2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40249d, i64 5, i64 5)
  store %struct.Memory* %call_40249d, %struct.Memory** %MEMORY

  br label %block_.L_4024a2

  ; Code: .L_4024a2:	 RIP: 4024a2	 Bytes: 0
block_.L_4024a2:

  ; Code: popq %rbp	 RIP: 4024a2	 Bytes: 1
  %loadMem_4024a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4024a2 = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4024a2)
  store %struct.Memory* %call_4024a2, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 4024a3	 Bytes: 1
  %loadMem_4024a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4024a3 = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4024a3)
  store %struct.Memory* %call_4024a3, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_4024a3
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L4PUSHI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory*, %struct.State* nocapture dereferenceable(3376), i64) #0 alwaysinline {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 13, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = add i64 %5, -8
  %7 = inttoptr i64 %6 to i64*
  store i64 %2, i64* %7
  store i64 %6, i64* %4, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_pushq__rbp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 alwaysinline {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__rsp___rbp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 alwaysinline {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__edi__MINUS0x4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 alwaysinline {
  %5 = inttoptr i64 %2 to i64*
  store i64 %3, i64* %5
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__rsi__MINUS0x10__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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


define %struct.Memory* @routine_movq__rdx__MINUS0x18__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 alwaysinline {
  %5 = inttoptr i64 %3 to i64*
  %6 = load i64, i64* %5
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 alwaysinline {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0x0____rdx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 alwaysinline {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl_MINUS0x4__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__edi__MINUS0x2c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %13 = sub i64 %12, 44
  %14 = load i32, i32* %EDI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__0x1__MINUS0x30__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %10 = sub i64 %9, 48
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* readnone, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 alwaysinline {
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

define %struct.Memory* @routine_shll__0x3___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 3)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory*, %struct.State* nocapture dereferenceable(3376), i64, i64) #0 alwaysinline {
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

define %struct.Memory* @routine_cmpl_MINUS0x2c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %15 = sub i64 %14, 44
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JNLEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i8* nocapture, i64, i64) #2 alwaysinline {
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

define %struct.Memory* @routine_jge_.L_401c9b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
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
  %13 = sub i64 %12, 44
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3SARI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* readnone, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 alwaysinline {
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

define %struct.Memory* @routine_sarl__0x1___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SARI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 1)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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


define %struct.Memory* @routine_movl__0x0__MINUS0x1c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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


define %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
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


define %struct.Memory* @routine_cmpl_MINUS0x30__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %15 = sub i64 %14, 48
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_401c8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 alwaysinline {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = sext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %13 = sub i64 %12, 28
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl___rax__rcx_4____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory*, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 alwaysinline {
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

define %struct.Memory* @routine_addl_MINUS0x2c__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %14 = sub i64 %13, 44
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movl_MINUS0x30__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %13 = sub i64 %12, 48
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addl_MINUS0x1c__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %14 = sub i64 %13, 28
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12, i64 %14)
  ret %struct.Memory* %17
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 alwaysinline {
  %5 = shl i64 %3, 32
  %6 = ashr exact i64 %5, 32
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movslq__esi___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %12 = load i32, i32* %ESI
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__edx____rax__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 alwaysinline {
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

define %struct.Memory* @routine_addl__0x1___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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


define %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64) #2 alwaysinline {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2, i64* %4, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jmpq_.L_401c55(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_shll__0x1___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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


define %struct.Memory* @routine_movl__eax__MINUS0x30__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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


define %struct.Memory* @routine_jmpq_.L_401c36(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_movl__eax__MINUS0x34__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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







define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JNZEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i8* nocapture, i64, i64) #2 alwaysinline {
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

define %struct.Memory* @routine_jne_.L_4021bb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x0__MINUS0x24__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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


define %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
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




define %struct.Memory* @routine_jge_.L_4021b6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_cmpl_MINUS0x24__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %15 = sub i64 %14, 36
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_40204f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 alwaysinline {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__0x8000000000000000___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 -9223372036854775808)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %13 = sub i64 %12, 28
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_shll__0x1___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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




define %struct.Memory* @routine_movslq_MINUS0x24__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addl___rdx__rsi_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %17 = load i64, i64* %RSI
  %18 = mul i64 %17, 4
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 3
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %15, i64 %19)
  ret %struct.Memory* %22
}


define %struct.Memory* @routine_movl__ecx__MINUS0x20__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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


define %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %13 = sub i64 %12, 28
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__ecx__MINUS0x28__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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


define %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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


define %struct.Memory* @routine_movslq_MINUS0x20__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %13 = sub i64 %12, 32
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #0 alwaysinline {
  %5 = inttoptr i64 %3 to double*
  %6 = load double, double* %5
  %7 = bitcast i8* %2 to double*
  store double %6, double* %7, align 1
  %8 = getelementptr inbounds i8, i8* %2, i64 8
  %9 = bitcast i8* %8 to double*
  store double 0.000000e+00, double* %9, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movsd___rdx__rsi_8____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %15 = load i64, i64* %RDX
  %16 = load i64, i64* %RSI
  %17 = mul i64 %16, 8
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 5
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %14, i64 %18)
  ret %struct.Memory* %21
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i8* nocapture readonly) #7 alwaysinline {
  %5 = bitcast i8* %3 to double*
  %6 = load double, double* %5, align 1
  %7 = inttoptr i64 %2 to double*
  store double %6, double* %7
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x40__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %12 = sub i64 %11, 64
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl_MINUS0x20__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addl__0x1___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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


define %struct.Memory* @routine_movslq__ecx___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L4MOVQI4RVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i8* nocapture readonly) #0 alwaysinline {
  %5 = bitcast i8* %3 to i64*
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* %2, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__xmm0___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %11 = bitcast %union.vec128_t* %XMM0 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 5
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4MOVQI4RVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i8* %11)
  ret %struct.Memory* %14
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3XORI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 alwaysinline {
  %6 = xor i64 %4, %3
  store i64 %6, i64* %2, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 0, i8* %7, align 1
  %8 = trunc i64 %6 to i32
  %9 = and i32 %8, 255
  %10 = tail call i32 @llvm.ctpop.i32(i32 %9) #22
  %11 = trunc i32 %10 to i8
  %12 = and i8 %11, 1
  %13 = xor i8 %12, 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 %13, i8* %14, align 1
  %15 = icmp eq i64 %6, 0
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 %16, i8* %17, align 1
  %18 = lshr i64 %6, 63
  %19 = trunc i64 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 %19, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 0, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 0, i8* %22, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_xorq__rax___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3XORI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L4MOVQI3VnWI8vec128_tE3RVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i8* nocapture, i64) #0 alwaysinline {
  %5 = bitcast i8* %2 to i64*
  store i64 %3, i64* %5, align 1
  %6 = getelementptr inbounds i8, i8* %2, i64 8
  %7 = bitcast i8* %6 to i64*
  store i64 0, i64* %7, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__rdx___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 5
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4MOVQI3VnWI8vec128_tE3RVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_movsd__xmm0__MINUS0x48__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %12 = sub i64 %11, 72
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movslq_MINUS0x28__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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




define %struct.Memory* @routine_movsd__xmm0__MINUS0x50__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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




define %struct.Memory* @routine_movl_MINUS0x28__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}














define %struct.Memory* @routine_movsd__xmm0__MINUS0x58__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movsd_MINUS0x50__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 80
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movsd__xmm0____rdx__rsi_8_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %13 to %union.vec128_t*
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %RSI
  %16 = mul i64 %15, 8
  %17 = add i64 %16, %14
  %18 = bitcast %union.vec128_t* %XMM0 to i8*
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 5
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %17, i8* %18)
  ret %struct.Memory* %21
}


define %struct.Memory* @routine_movsd_MINUS0x58__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 88
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}












define %struct.Memory* @routine_movsd_MINUS0x40__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 72
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}












define %struct.Memory* @routine_movl_MINUS0x34__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addl_MINUS0x20__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %14 = sub i64 %13, 32
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}








define %struct.Memory* @routine_addl_MINUS0x28__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %14 = sub i64 %13, 40
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}








































































































define %struct.Memory* @routine_movl_MINUS0x28__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 alwaysinline {
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

define %struct.Memory* @routine_subl__ecx___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDI
  %13 = load i32, i32* %ECX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__edi__MINUS0x28__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %13 = sub i64 %12, 40
  %14 = load i32, i32* %EDI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


































































































































































define %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
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


define %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %13 = sub i64 %12, 32
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movsd__xmm0____rax__rdx_8_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %13 to %union.vec128_t*
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %RDX
  %16 = mul i64 %15, 8
  %17 = add i64 %16, %14
  %18 = bitcast %union.vec128_t* %XMM0 to i8*
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 5
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %17, i8* %18)
  ret %struct.Memory* %21
}










define %struct.Memory* @routine_movslq__ecx___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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








define %struct.Memory* @routine_movslq_MINUS0x28__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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






















define %struct.Memory* @routine_jmpq_.L_401ccd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}












































define %struct.Memory* @routine_addl_MINUS0x34__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %14 = sub i64 %13, 52
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}










































































































































define %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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


define %struct.Memory* @routine_jmpq_.L_401cba(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_4024a2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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


define %struct.Memory* @routine_movsd_0x8__rcx____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %13 = add i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__xmm0___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4MOVQI4RVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i8* %11)
  ret %struct.Memory* %14
}


define %struct.Memory* @routine_xorq__rax___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3XORI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__rcx___xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 5
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4MOVQI3VnWI8vec128_tE3RVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %11, i64 %12)
  ret %struct.Memory* %15
}




define %struct.Memory* @routine_movsd__xmm0__0x8__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %11 = load i64, i64* %RCX
  %12 = add i64 %11, 8
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI4MVnWI7vec64_tE2VnI8vec128_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i8* %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl_MINUS0x34__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %13 = sub i64 %12, 52
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addl__0x1___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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


define %struct.Memory* @routine_movslq__edx___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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


define %struct.Memory* @routine_movsd___rcx__rsi_8____xmm0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RSI
  %17 = mul i64 %16, 8
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 5
  store i64 %20, i64* %PC
  %21 = call %struct.Memory* @_ZN12_GLOBAL__N_1L9MOVSD_MEMI3VnWI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %14, i64 %18)
  ret %struct.Memory* %21
}














define %struct.Memory* @routine_movslq__edx___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movsd__xmm0____rax__rcx_8_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
block_400488:
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


define %struct.Memory* @routine_movl__0x1__MINUS0x24__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}






define %struct.Memory* @routine_jge_.L_40249d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jge_.L_402409(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






































































































































































































































define %struct.Memory* @routine_jmpq_.L_40222f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}














































































define %struct.Memory* @routine_jmpq_.L_40221c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) alwaysinline {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3POPI3RnWImEEEP6MemoryS4_R5StateT_(%struct.Memory*, %struct.State* nocapture dereferenceable(3376), i64* nocapture) #0 alwaysinline {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 13, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = add i64 %5, 8
  %7 = inttoptr i64 %5 to i64*
  %8 = load i64, i64* %7
  store i64 %8, i64* %2, align 8
  store i64 %6, i64* %4, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_popq__rbp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3RETEP6MemoryR5State(%struct.Memory* returned, %struct.State* nocapture dereferenceable(3376)) #0 alwaysinline {
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

define %struct.Memory* @routine_retq(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 alwaysinline {
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

