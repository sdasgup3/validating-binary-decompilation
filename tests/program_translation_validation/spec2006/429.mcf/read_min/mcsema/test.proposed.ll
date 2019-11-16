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

declare %struct.Memory* @sub_4008e0.fopen_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_400870.fgets_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4024a0.getfree(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_400840.fclose_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Data Access Globals
%G__0x4049c0_type = type <{ [8 x i8] }>
@G__0x4049c0= global %G__0x4049c0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4049c2_type = type <{ [8 x i8] }>
@G__0x4049c2= global %G__0x4049c2_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4049e1_type = type <{ [8 x i8] }>
@G__0x4049e1= global %G__0x4049e1_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x4049e5_type = type <{ [8 x i8] }>
@G__0x4049e5= global %G__0x4049e5_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>


define %struct.Memory* @read_min(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .read_min:	 RIP: 4035c0	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 4035c0	 Bytes: 1
  %loadMem_4035c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4035c0 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4035c0)
  store %struct.Memory* %call_4035c0, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 4035c1	 Bytes: 3
  %loadMem_4035c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4035c1 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4035c1)
  store %struct.Memory* %call_4035c1, %struct.Memory** %MEMORY

  ; Code: subq $0x170, %rsp	 RIP: 4035c4	 Bytes: 7
  %loadMem_4035c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4035c4 = call %struct.Memory* @routine_subq__0x170___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4035c4)
  store %struct.Memory* %call_4035c4, %struct.Memory** %MEMORY

  ; Code: movq $0x4049c0, %rsi	 RIP: 4035cb	 Bytes: 10
  %loadMem_4035cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4035cb = call %struct.Memory* @routine_movq__0x4049c0___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4035cb)
  store %struct.Memory* %call_4035cb, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x10(%rbp)	 RIP: 4035d5	 Bytes: 4
  %loadMem_4035d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4035d5 = call %struct.Memory* @routine_movq__rdi__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4035d5)
  store %struct.Memory* %call_4035d5, %struct.Memory** %MEMORY

  ; Code: movq $0x0, -0x18(%rbp)	 RIP: 4035d9	 Bytes: 8
  %loadMem_4035d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4035d9 = call %struct.Memory* @routine_movq__0x0__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4035d9)
  store %struct.Memory* %call_4035d9, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 4035e1	 Bytes: 4
  %loadMem_4035e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4035e1 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4035e1)
  store %struct.Memory* %call_4035e1, %struct.Memory** %MEMORY

  ; Code: callq .fopen_plt	 RIP: 4035e5	 Bytes: 5
  %loadMem1_4035e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4035e5 = call %struct.Memory* @routine_callq_.fopen_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4035e5, i64 -11525, i64 5, i64 5)
  store %struct.Memory* %call1_4035e5, %struct.Memory** %MEMORY

  %loadMem2_4035e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4035e5 = load i64, i64* %3
  %call2_4035e5 = call %struct.Memory* @sub_4008e0.fopen_plt(%struct.State* %0, i64  %loadPC_4035e5, %struct.Memory* %loadMem2_4035e5)
  store %struct.Memory* %call2_4035e5, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x18(%rbp)	 RIP: 4035ea	 Bytes: 4
  %loadMem_4035ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4035ea = call %struct.Memory* @routine_movq__rax__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4035ea)
  store %struct.Memory* %call_4035ea, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, %rax	 RIP: 4035ee	 Bytes: 4
  %loadMem_4035ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4035ee = call %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4035ee)
  store %struct.Memory* %call_4035ee, %struct.Memory** %MEMORY

  ; Code: jne .L_403605	 RIP: 4035f2	 Bytes: 6
  %loadMem_4035f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4035f2 = call %struct.Memory* @routine_jne_.L_403605(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4035f2, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_4035f2, %struct.Memory** %MEMORY

  %loadBr_4035f2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4035f2 = icmp eq i8 %loadBr_4035f2, 1
  br i1 %cmpBr_4035f2, label %block_.L_403605, label %block_4035f8

block_4035f8:
  ; Code: movq $0xffffffffffffffff, -0x8(%rbp)	 RIP: 4035f8	 Bytes: 8
  %loadMem_4035f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4035f8 = call %struct.Memory* @routine_movq__0xffffffffffffffff__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4035f8)
  store %struct.Memory* %call_4035f8, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40407e	 RIP: 403600	 Bytes: 5
  %loadMem_403600 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403600 = call %struct.Memory* @routine_jmpq_.L_40407e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403600, i64 2686, i64 5)
  store %struct.Memory* %call_403600, %struct.Memory** %MEMORY

  br label %block_.L_40407e

  ; Code: .L_403605:	 RIP: 403605	 Bytes: 0
block_.L_403605:

  ; Code: movl $0xc8, %esi	 RIP: 403605	 Bytes: 5
  %loadMem_403605 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403605 = call %struct.Memory* @routine_movl__0xc8___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403605)
  store %struct.Memory* %call_403605, %struct.Memory** %MEMORY

  ; Code: leaq -0xf0(%rbp), %rdi	 RIP: 40360a	 Bytes: 7
  %loadMem_40360a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40360a = call %struct.Memory* @routine_leaq_MINUS0xf0__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40360a)
  store %struct.Memory* %call_40360a, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 403611	 Bytes: 4
  %loadMem_403611 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403611 = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403611)
  store %struct.Memory* %call_403611, %struct.Memory** %MEMORY

  ; Code: callq .fgets_plt	 RIP: 403615	 Bytes: 5
  %loadMem1_403615 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_403615 = call %struct.Memory* @routine_callq_.fgets_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_403615, i64 -11685, i64 5, i64 5)
  store %struct.Memory* %call1_403615, %struct.Memory** %MEMORY

  %loadMem2_403615 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_403615 = load i64, i64* %3
  %call2_403615 = call %struct.Memory* @sub_400870.fgets_plt(%struct.State* %0, i64  %loadPC_403615, %struct.Memory* %loadMem2_403615)
  store %struct.Memory* %call2_403615, %struct.Memory** %MEMORY

  ; Code: movq $0x4049e5, %rsi	 RIP: 40361a	 Bytes: 10
  %loadMem_40361a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40361a = call %struct.Memory* @routine_movq__0x4049e5___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40361a)
  store %struct.Memory* %call_40361a, %struct.Memory** %MEMORY

  ; Code: leaq -0xf8(%rbp), %rdx	 RIP: 403624	 Bytes: 7
  %loadMem_403624 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403624 = call %struct.Memory* @routine_leaq_MINUS0xf8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403624)
  store %struct.Memory* %call_403624, %struct.Memory** %MEMORY

  ; Code: leaq -0x100(%rbp), %rcx	 RIP: 40362b	 Bytes: 7
  %loadMem_40362b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40362b = call %struct.Memory* @routine_leaq_MINUS0x100__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40362b)
  store %struct.Memory* %call_40362b, %struct.Memory** %MEMORY

  ; Code: leaq -0xf0(%rbp), %rdi	 RIP: 403632	 Bytes: 7
  %loadMem_403632 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403632 = call %struct.Memory* @routine_leaq_MINUS0xf0__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403632)
  store %struct.Memory* %call_403632, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x128(%rbp)	 RIP: 403639	 Bytes: 7
  %loadMem_403639 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403639 = call %struct.Memory* @routine_movq__rax__MINUS0x128__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403639)
  store %struct.Memory* %call_403639, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 403640	 Bytes: 2
  %loadMem_403640 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403640 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403640)
  store %struct.Memory* %call_403640, %struct.Memory** %MEMORY

  ; Code: callq .__isoc99_sscanf_plt	 RIP: 403642	 Bytes: 5
  %loadMem1_403642 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_403642 = call %struct.Memory* @routine_callq_.__isoc99_sscanf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_403642, i64 -11650, i64 5, i64 5)
  store %struct.Memory* %call1_403642, %struct.Memory** %MEMORY

  %loadMem2_403642 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_403642 = load i64, i64* %3
  %call2_403642 = call %struct.Memory* @ext___isoc99_sscanf(%struct.State* %0, i64  %loadPC_403642, %struct.Memory* %loadMem2_403642)
  store %struct.Memory* %call2_403642, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, %eax	 RIP: 403647	 Bytes: 3
  %loadMem_403647 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403647 = call %struct.Memory* @routine_cmpl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403647)
  store %struct.Memory* %call_403647, %struct.Memory** %MEMORY

  ; Code: je .L_40365d	 RIP: 40364a	 Bytes: 6
  %loadMem_40364a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40364a = call %struct.Memory* @routine_je_.L_40365d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40364a, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_40364a, %struct.Memory** %MEMORY

  %loadBr_40364a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40364a = icmp eq i8 %loadBr_40364a, 1
  br i1 %cmpBr_40364a, label %block_.L_40365d, label %block_403650

block_403650:
  ; Code: movq $0xffffffffffffffff, -0x8(%rbp)	 RIP: 403650	 Bytes: 8
  %loadMem_403650 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403650 = call %struct.Memory* @routine_movq__0xffffffffffffffff__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403650)
  store %struct.Memory* %call_403650, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40407e	 RIP: 403658	 Bytes: 5
  %loadMem_403658 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403658 = call %struct.Memory* @routine_jmpq_.L_40407e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403658, i64 2598, i64 5)
  store %struct.Memory* %call_403658, %struct.Memory** %MEMORY

  br label %block_.L_40407e

  ; Code: .L_40365d:	 RIP: 40365d	 Bytes: 0
block_.L_40365d:

  ; Code: movq -0xf8(%rbp), %rax	 RIP: 40365d	 Bytes: 7
  %loadMem_40365d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40365d = call %struct.Memory* @routine_movq_MINUS0xf8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40365d)
  store %struct.Memory* %call_40365d, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 403664	 Bytes: 4
  %loadMem_403664 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403664 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403664)
  store %struct.Memory* %call_403664, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x198(%rcx)	 RIP: 403668	 Bytes: 7
  %loadMem_403668 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403668 = call %struct.Memory* @routine_movq__rax__0x198__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403668)
  store %struct.Memory* %call_403668, %struct.Memory** %MEMORY

  ; Code: movq -0x100(%rbp), %rax	 RIP: 40366f	 Bytes: 7
  %loadMem_40366f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40366f = call %struct.Memory* @routine_movq_MINUS0x100__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40366f)
  store %struct.Memory* %call_40366f, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 403676	 Bytes: 4
  %loadMem_403676 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403676 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403676)
  store %struct.Memory* %call_403676, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x1b0(%rcx)	 RIP: 40367a	 Bytes: 7
  %loadMem_40367a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40367a = call %struct.Memory* @routine_movq__rax__0x1b0__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40367a)
  store %struct.Memory* %call_40367a, %struct.Memory** %MEMORY

  ; Code: movq -0xf8(%rbp), %rax	 RIP: 403681	 Bytes: 7
  %loadMem_403681 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403681 = call %struct.Memory* @routine_movq_MINUS0xf8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403681)
  store %struct.Memory* %call_403681, %struct.Memory** %MEMORY

  ; Code: addq -0xf8(%rbp), %rax	 RIP: 403688	 Bytes: 7
  %loadMem_403688 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403688 = call %struct.Memory* @routine_addq_MINUS0xf8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403688)
  store %struct.Memory* %call_403688, %struct.Memory** %MEMORY

  ; Code: addq $0x1, %rax	 RIP: 40368f	 Bytes: 4
  %loadMem_40368f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40368f = call %struct.Memory* @routine_addq__0x1___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40368f)
  store %struct.Memory* %call_40368f, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 403693	 Bytes: 4
  %loadMem_403693 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403693 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403693)
  store %struct.Memory* %call_403693, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x190(%rcx)	 RIP: 403697	 Bytes: 7
  %loadMem_403697 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403697 = call %struct.Memory* @routine_movq__rax__0x190__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403697)
  store %struct.Memory* %call_403697, %struct.Memory** %MEMORY

  ; Code: movq -0xf8(%rbp), %rax	 RIP: 40369e	 Bytes: 7
  %loadMem_40369e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40369e = call %struct.Memory* @routine_movq_MINUS0xf8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40369e)
  store %struct.Memory* %call_40369e, %struct.Memory** %MEMORY

  ; Code: addq -0xf8(%rbp), %rax	 RIP: 4036a5	 Bytes: 7
  %loadMem_4036a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4036a5 = call %struct.Memory* @routine_addq_MINUS0xf8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4036a5)
  store %struct.Memory* %call_4036a5, %struct.Memory** %MEMORY

  ; Code: addq -0xf8(%rbp), %rax	 RIP: 4036ac	 Bytes: 7
  %loadMem_4036ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4036ac = call %struct.Memory* @routine_addq_MINUS0xf8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4036ac)
  store %struct.Memory* %call_4036ac, %struct.Memory** %MEMORY

  ; Code: addq -0x100(%rbp), %rax	 RIP: 4036b3	 Bytes: 7
  %loadMem_4036b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4036b3 = call %struct.Memory* @routine_addq_MINUS0x100__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4036b3)
  store %struct.Memory* %call_4036b3, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4036ba	 Bytes: 4
  %loadMem_4036ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4036ba = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4036ba)
  store %struct.Memory* %call_4036ba, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x1a8(%rcx)	 RIP: 4036be	 Bytes: 7
  %loadMem_4036be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4036be = call %struct.Memory* @routine_movq__rax__0x1a8__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4036be)
  store %struct.Memory* %call_4036be, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 4036c5	 Bytes: 4
  %loadMem_4036c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4036c5 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4036c5)
  store %struct.Memory* %call_4036c5, %struct.Memory** %MEMORY

  ; Code: cmpq $0x3a98, 0x198(%rax)	 RIP: 4036c9	 Bytes: 11
  %loadMem_4036c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4036c9 = call %struct.Memory* @routine_cmpq__0x3a98__0x198__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4036c9)
  store %struct.Memory* %call_4036c9, %struct.Memory** %MEMORY

  ; Code: jg .L_403704	 RIP: 4036d4	 Bytes: 6
  %loadMem_4036d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4036d4 = call %struct.Memory* @routine_jg_.L_403704(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4036d4, i8* %BRANCH_TAKEN, i64 48, i64 6, i64 6)
  store %struct.Memory* %call_4036d4, %struct.Memory** %MEMORY

  %loadBr_4036d4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4036d4 = icmp eq i8 %loadBr_4036d4, 1
  br i1 %cmpBr_4036d4, label %block_.L_403704, label %block_4036da

block_4036da:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 4036da	 Bytes: 4
  %loadMem_4036da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4036da = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4036da)
  store %struct.Memory* %call_4036da, %struct.Memory** %MEMORY

  ; Code: movq 0x1a8(%rax), %rax	 RIP: 4036de	 Bytes: 7
  %loadMem_4036de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4036de = call %struct.Memory* @routine_movq_0x1a8__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4036de)
  store %struct.Memory* %call_4036de, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4036e5	 Bytes: 4
  %loadMem_4036e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4036e5 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4036e5)
  store %struct.Memory* %call_4036e5, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x1a0(%rcx)	 RIP: 4036e9	 Bytes: 7
  %loadMem_4036e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4036e9 = call %struct.Memory* @routine_movq__rax__0x1a0__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4036e9)
  store %struct.Memory* %call_4036e9, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 4036f0	 Bytes: 4
  %loadMem_4036f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4036f0 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4036f0)
  store %struct.Memory* %call_4036f0, %struct.Memory** %MEMORY

  ; Code: movq $0x2dc6c0, 0x1c8(%rax)	 RIP: 4036f4	 Bytes: 11
  %loadMem_4036f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4036f4 = call %struct.Memory* @routine_movq__0x2dc6c0__0x1c8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4036f4)
  store %struct.Memory* %call_4036f4, %struct.Memory** %MEMORY

  ; Code: jmpq .L_403722	 RIP: 4036ff	 Bytes: 5
  %loadMem_4036ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4036ff = call %struct.Memory* @routine_jmpq_.L_403722(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4036ff, i64 35, i64 5)
  store %struct.Memory* %call_4036ff, %struct.Memory** %MEMORY

  br label %block_.L_403722

  ; Code: .L_403704:	 RIP: 403704	 Bytes: 0
block_.L_403704:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 403704	 Bytes: 4
  %loadMem_403704 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403704 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403704)
  store %struct.Memory* %call_403704, %struct.Memory** %MEMORY

  ; Code: movq $0x1a10000, 0x1a0(%rax)	 RIP: 403708	 Bytes: 11
  %loadMem_403708 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403708 = call %struct.Memory* @routine_movq__0x1a10000__0x1a0__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403708)
  store %struct.Memory* %call_403708, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 403713	 Bytes: 4
  %loadMem_403713 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403713 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403713)
  store %struct.Memory* %call_403713, %struct.Memory** %MEMORY

  ; Code: movq $0x1b8faa0, 0x1c8(%rax)	 RIP: 403717	 Bytes: 11
  %loadMem_403717 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403717 = call %struct.Memory* @routine_movq__0x1b8faa0__0x1c8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403717)
  store %struct.Memory* %call_403717, %struct.Memory** %MEMORY

  ; Code: .L_403722:	 RIP: 403722	 Bytes: 0
  br label %block_.L_403722
block_.L_403722:

  ; Code: movl $0x68, %eax	 RIP: 403722	 Bytes: 5
  %loadMem_403722 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403722 = call %struct.Memory* @routine_movl__0x68___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403722)
  store %struct.Memory* %call_403722, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 403727	 Bytes: 2
  %loadMem_403727 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403727 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403727)
  store %struct.Memory* %call_403727, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 403729	 Bytes: 4
  %loadMem_403729 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403729 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403729)
  store %struct.Memory* %call_403729, %struct.Memory** %MEMORY

  ; Code: movq 0x1a0(%rcx), %rcx	 RIP: 40372d	 Bytes: 7
  %loadMem_40372d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40372d = call %struct.Memory* @routine_movq_0x1a0__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40372d)
  store %struct.Memory* %call_40372d, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 403734	 Bytes: 4
  %loadMem_403734 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403734 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403734)
  store %struct.Memory* %call_403734, %struct.Memory** %MEMORY

  ; Code: subq 0x1a8(%rdx), %rcx	 RIP: 403738	 Bytes: 7
  %loadMem_403738 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403738 = call %struct.Memory* @routine_subq_0x1a8__rdx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403738)
  store %struct.Memory* %call_403738, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 40373f	 Bytes: 4
  %loadMem_40373f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40373f = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40373f)
  store %struct.Memory* %call_40373f, %struct.Memory** %MEMORY

  ; Code: movq %rcx, 0x1c0(%rdx)	 RIP: 403743	 Bytes: 7
  %loadMem_403743 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403743 = call %struct.Memory* @routine_movq__rcx__0x1c0__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403743)
  store %struct.Memory* %call_403743, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 40374a	 Bytes: 4
  %loadMem_40374a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40374a = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40374a)
  store %struct.Memory* %call_40374a, %struct.Memory** %MEMORY

  ; Code: movq 0x190(%rcx), %rcx	 RIP: 40374e	 Bytes: 7
  %loadMem_40374e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40374e = call %struct.Memory* @routine_movq_0x190__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40374e)
  store %struct.Memory* %call_40374e, %struct.Memory** %MEMORY

  ; Code: addq $0x1, %rcx	 RIP: 403755	 Bytes: 4
  %loadMem_403755 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403755 = call %struct.Memory* @routine_addq__0x1___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403755)
  store %struct.Memory* %call_403755, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 403759	 Bytes: 3
  %loadMem_403759 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403759 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403759)
  store %struct.Memory* %call_403759, %struct.Memory** %MEMORY

  ; Code: callq .calloc_plt	 RIP: 40375c	 Bytes: 5
  %loadMem1_40375c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40375c = call %struct.Memory* @routine_callq_.calloc_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40375c, i64 -11996, i64 5, i64 5)
  store %struct.Memory* %call1_40375c, %struct.Memory** %MEMORY

  %loadMem2_40375c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40375c = load i64, i64* %3
  %call2_40375c = call %struct.Memory* @ext_calloc(%struct.State* %0, i64  %loadPC_40375c, %struct.Memory* %loadMem2_40375c)
  store %struct.Memory* %call2_40375c, %struct.Memory** %MEMORY

  ; Code: movl $0x40, %r8d	 RIP: 403761	 Bytes: 6
  %loadMem_403761 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403761 = call %struct.Memory* @routine_movl__0x40___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403761)
  store %struct.Memory* %call_403761, %struct.Memory** %MEMORY

  ; Code: movl %r8d, %esi	 RIP: 403767	 Bytes: 3
  %loadMem_403767 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403767 = call %struct.Memory* @routine_movl__r8d___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403767)
  store %struct.Memory* %call_403767, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 40376a	 Bytes: 4
  %loadMem_40376a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40376a = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40376a)
  store %struct.Memory* %call_40376a, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x228(%rcx)	 RIP: 40376e	 Bytes: 7
  %loadMem_40376e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40376e = call %struct.Memory* @routine_movq__rax__0x228__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40376e)
  store %struct.Memory* %call_40376e, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 403775	 Bytes: 4
  %loadMem_403775 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403775 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403775)
  store %struct.Memory* %call_403775, %struct.Memory** %MEMORY

  ; Code: movq 0x190(%rax), %rdi	 RIP: 403779	 Bytes: 7
  %loadMem_403779 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403779 = call %struct.Memory* @routine_movq_0x190__rax____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403779)
  store %struct.Memory* %call_403779, %struct.Memory** %MEMORY

  ; Code: callq .calloc_plt	 RIP: 403780	 Bytes: 5
  %loadMem1_403780 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_403780 = call %struct.Memory* @routine_callq_.calloc_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_403780, i64 -12032, i64 5, i64 5)
  store %struct.Memory* %call1_403780, %struct.Memory** %MEMORY

  %loadMem2_403780 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_403780 = load i64, i64* %3
  %call2_403780 = call %struct.Memory* @ext_calloc(%struct.State* %0, i64  %loadPC_403780, %struct.Memory* %loadMem2_403780)
  store %struct.Memory* %call2_403780, %struct.Memory** %MEMORY

  ; Code: movl $0x40, %r8d	 RIP: 403785	 Bytes: 6
  %loadMem_403785 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403785 = call %struct.Memory* @routine_movl__0x40___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403785)
  store %struct.Memory* %call_403785, %struct.Memory** %MEMORY

  ; Code: movl %r8d, %esi	 RIP: 40378b	 Bytes: 3
  %loadMem_40378b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40378b = call %struct.Memory* @routine_movl__r8d___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40378b)
  store %struct.Memory* %call_40378b, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 40378e	 Bytes: 4
  %loadMem_40378e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40378e = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40378e)
  store %struct.Memory* %call_40378e, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x248(%rcx)	 RIP: 403792	 Bytes: 7
  %loadMem_403792 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403792 = call %struct.Memory* @routine_movq__rax__0x248__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403792)
  store %struct.Memory* %call_403792, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 403799	 Bytes: 4
  %loadMem_403799 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403799 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403799)
  store %struct.Memory* %call_403799, %struct.Memory** %MEMORY

  ; Code: movq 0x1a0(%rax), %rdi	 RIP: 40379d	 Bytes: 7
  %loadMem_40379d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40379d = call %struct.Memory* @routine_movq_0x1a0__rax____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40379d)
  store %struct.Memory* %call_40379d, %struct.Memory** %MEMORY

  ; Code: callq .calloc_plt	 RIP: 4037a4	 Bytes: 5
  %loadMem1_4037a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4037a4 = call %struct.Memory* @routine_callq_.calloc_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4037a4, i64 -12068, i64 5, i64 5)
  store %struct.Memory* %call1_4037a4, %struct.Memory** %MEMORY

  %loadMem2_4037a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4037a4 = load i64, i64* %3
  %call2_4037a4 = call %struct.Memory* @ext_calloc(%struct.State* %0, i64  %loadPC_4037a4, %struct.Memory* %loadMem2_4037a4)
  store %struct.Memory* %call2_4037a4, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4037a9	 Bytes: 4
  %loadMem_4037a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4037a9 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4037a9)
  store %struct.Memory* %call_4037a9, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x238(%rcx)	 RIP: 4037ad	 Bytes: 7
  %loadMem_4037ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4037ad = call %struct.Memory* @routine_movq__rax__0x238__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4037ad)
  store %struct.Memory* %call_4037ad, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 4037b4	 Bytes: 4
  %loadMem_4037b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4037b4 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4037b4)
  store %struct.Memory* %call_4037b4, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, 0x228(%rax)	 RIP: 4037b8	 Bytes: 8
  %loadMem_4037b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4037b8 = call %struct.Memory* @routine_cmpq__0x0__0x228__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4037b8)
  store %struct.Memory* %call_4037b8, %struct.Memory** %MEMORY

  ; Code: je .L_4037ea	 RIP: 4037c0	 Bytes: 6
  %loadMem_4037c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4037c0 = call %struct.Memory* @routine_je_.L_4037ea(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4037c0, i8* %BRANCH_TAKEN, i64 42, i64 6, i64 6)
  store %struct.Memory* %call_4037c0, %struct.Memory** %MEMORY

  %loadBr_4037c0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4037c0 = icmp eq i8 %loadBr_4037c0, 1
  br i1 %cmpBr_4037c0, label %block_.L_4037ea, label %block_4037c6

block_4037c6:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 4037c6	 Bytes: 4
  %loadMem_4037c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4037c6 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4037c6)
  store %struct.Memory* %call_4037c6, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, 0x238(%rax)	 RIP: 4037ca	 Bytes: 8
  %loadMem_4037ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4037ca = call %struct.Memory* @routine_cmpq__0x0__0x238__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4037ca)
  store %struct.Memory* %call_4037ca, %struct.Memory** %MEMORY

  ; Code: je .L_4037ea	 RIP: 4037d2	 Bytes: 6
  %loadMem_4037d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4037d2 = call %struct.Memory* @routine_je_.L_4037ea(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4037d2, i8* %BRANCH_TAKEN, i64 24, i64 6, i64 6)
  store %struct.Memory* %call_4037d2, %struct.Memory** %MEMORY

  %loadBr_4037d2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4037d2 = icmp eq i8 %loadBr_4037d2, 1
  br i1 %cmpBr_4037d2, label %block_.L_4037ea, label %block_4037d8

block_4037d8:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 4037d8	 Bytes: 4
  %loadMem_4037d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4037d8 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4037d8)
  store %struct.Memory* %call_4037d8, %struct.Memory** %MEMORY

  ; Code: cmpq $0x0, 0x248(%rax)	 RIP: 4037dc	 Bytes: 8
  %loadMem_4037dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4037dc = call %struct.Memory* @routine_cmpq__0x0__0x248__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4037dc)
  store %struct.Memory* %call_4037dc, %struct.Memory** %MEMORY

  ; Code: jne .L_40381e	 RIP: 4037e4	 Bytes: 6
  %loadMem_4037e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4037e4 = call %struct.Memory* @routine_jne_.L_40381e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4037e4, i8* %BRANCH_TAKEN, i64 58, i64 6, i64 6)
  store %struct.Memory* %call_4037e4, %struct.Memory** %MEMORY

  %loadBr_4037e4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4037e4 = icmp eq i8 %loadBr_4037e4, 1
  br i1 %cmpBr_4037e4, label %block_.L_40381e, label %block_.L_4037ea

  ; Code: .L_4037ea:	 RIP: 4037ea	 Bytes: 0
block_.L_4037ea:

  ; Code: movq $0x4049c2, %rdi	 RIP: 4037ea	 Bytes: 10
  %loadMem_4037ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4037ea = call %struct.Memory* @routine_movq__0x4049c2___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4037ea)
  store %struct.Memory* %call_4037ea, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 4037f4	 Bytes: 2
  %loadMem_4037f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4037f4 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4037f4)
  store %struct.Memory* %call_4037f4, %struct.Memory** %MEMORY

  ; Code: callq .printf_plt	 RIP: 4037f6	 Bytes: 5
  %loadMem1_4037f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4037f6 = call %struct.Memory* @routine_callq_.printf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4037f6, i64 -12198, i64 5, i64 5)
  store %struct.Memory* %call1_4037f6, %struct.Memory** %MEMORY

  %loadMem2_4037f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4037f6 = load i64, i64* %3
  %call2_4037f6 = call %struct.Memory* @ext_printf(%struct.State* %0, i64  %loadPC_4037f6, %struct.Memory* %loadMem2_4037f6)
  store %struct.Memory* %call2_4037f6, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 4037fb	 Bytes: 4
  %loadMem_4037fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4037fb = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4037fb)
  store %struct.Memory* %call_4037fb, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x12c(%rbp)	 RIP: 4037ff	 Bytes: 6
  %loadMem_4037ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4037ff = call %struct.Memory* @routine_movl__eax__MINUS0x12c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4037ff)
  store %struct.Memory* %call_4037ff, %struct.Memory** %MEMORY

  ; Code: callq .getfree	 RIP: 403805	 Bytes: 5
  %loadMem1_403805 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_403805 = call %struct.Memory* @routine_callq_.getfree(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_403805, i64 -4965, i64 5, i64 5)
  store %struct.Memory* %call1_403805, %struct.Memory** %MEMORY

  %loadMem2_403805 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_403805 = load i64, i64* %3
  %call2_403805 = call %struct.Memory* @sub_4024a0.getfree(%struct.State* %0, i64  %loadPC_403805, %struct.Memory* %loadMem2_403805)
  store %struct.Memory* %call2_403805, %struct.Memory** %MEMORY

  ; Code: movq $0xffffffffffffffff, -0x8(%rbp)	 RIP: 40380a	 Bytes: 8
  %loadMem_40380a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40380a = call %struct.Memory* @routine_movq__0xffffffffffffffff__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40380a)
  store %struct.Memory* %call_40380a, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x138(%rbp)	 RIP: 403812	 Bytes: 7
  %loadMem_403812 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403812 = call %struct.Memory* @routine_movq__rax__MINUS0x138__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403812)
  store %struct.Memory* %call_403812, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40407e	 RIP: 403819	 Bytes: 5
  %loadMem_403819 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403819 = call %struct.Memory* @routine_jmpq_.L_40407e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403819, i64 2149, i64 5)
  store %struct.Memory* %call_403819, %struct.Memory** %MEMORY

  br label %block_.L_40407e

  ; Code: .L_40381e:	 RIP: 40381e	 Bytes: 0
block_.L_40381e:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 40381e	 Bytes: 4
  %loadMem_40381e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40381e = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40381e)
  store %struct.Memory* %call_40381e, %struct.Memory** %MEMORY

  ; Code: movq 0x228(%rax), %rax	 RIP: 403822	 Bytes: 7
  %loadMem_403822 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403822 = call %struct.Memory* @routine_movq_0x228__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403822)
  store %struct.Memory* %call_403822, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 403829	 Bytes: 4
  %loadMem_403829 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403829 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403829)
  store %struct.Memory* %call_403829, %struct.Memory** %MEMORY

  ; Code: imulq $0x68, 0x190(%rcx), %rcx	 RIP: 40382d	 Bytes: 8
  %loadMem_40382d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40382d = call %struct.Memory* @routine_imulq__0x68__0x190__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40382d)
  store %struct.Memory* %call_40382d, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 403835	 Bytes: 3
  %loadMem_403835 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403835 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403835)
  store %struct.Memory* %call_403835, %struct.Memory** %MEMORY

  ; Code: addq $0x68, %rax	 RIP: 403838	 Bytes: 4
  %loadMem_403838 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403838 = call %struct.Memory* @routine_addq__0x68___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403838)
  store %struct.Memory* %call_403838, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 40383c	 Bytes: 4
  %loadMem_40383c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40383c = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40383c)
  store %struct.Memory* %call_40383c, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x230(%rcx)	 RIP: 403840	 Bytes: 7
  %loadMem_403840 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403840 = call %struct.Memory* @routine_movq__rax__0x230__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403840)
  store %struct.Memory* %call_403840, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 403847	 Bytes: 4
  %loadMem_403847 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403847 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403847)
  store %struct.Memory* %call_403847, %struct.Memory** %MEMORY

  ; Code: movq 0x238(%rax), %rax	 RIP: 40384b	 Bytes: 7
  %loadMem_40384b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40384b = call %struct.Memory* @routine_movq_0x238__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40384b)
  store %struct.Memory* %call_40384b, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 403852	 Bytes: 4
  %loadMem_403852 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403852 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403852)
  store %struct.Memory* %call_403852, %struct.Memory** %MEMORY

  ; Code: movq 0x1a8(%rcx), %rcx	 RIP: 403856	 Bytes: 7
  %loadMem_403856 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403856 = call %struct.Memory* @routine_movq_0x1a8__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403856)
  store %struct.Memory* %call_403856, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rcx	 RIP: 40385d	 Bytes: 4
  %loadMem_40385d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40385d = call %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40385d)
  store %struct.Memory* %call_40385d, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 403861	 Bytes: 3
  %loadMem_403861 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403861 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403861)
  store %struct.Memory* %call_403861, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 403864	 Bytes: 4
  %loadMem_403864 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403864 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403864)
  store %struct.Memory* %call_403864, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x240(%rcx)	 RIP: 403868	 Bytes: 7
  %loadMem_403868 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403868 = call %struct.Memory* @routine_movq__rax__0x240__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403868)
  store %struct.Memory* %call_403868, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 40386f	 Bytes: 4
  %loadMem_40386f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40386f = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40386f)
  store %struct.Memory* %call_40386f, %struct.Memory** %MEMORY

  ; Code: movq 0x248(%rax), %rax	 RIP: 403873	 Bytes: 7
  %loadMem_403873 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403873 = call %struct.Memory* @routine_movq_0x248__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403873)
  store %struct.Memory* %call_403873, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 40387a	 Bytes: 4
  %loadMem_40387a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40387a = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40387a)
  store %struct.Memory* %call_40387a, %struct.Memory** %MEMORY

  ; Code: movq 0x190(%rcx), %rcx	 RIP: 40387e	 Bytes: 7
  %loadMem_40387e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40387e = call %struct.Memory* @routine_movq_0x190__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40387e)
  store %struct.Memory* %call_40387e, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rcx	 RIP: 403885	 Bytes: 4
  %loadMem_403885 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403885 = call %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403885)
  store %struct.Memory* %call_403885, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 403889	 Bytes: 3
  %loadMem_403889 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403889 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403889)
  store %struct.Memory* %call_403889, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 40388c	 Bytes: 4
  %loadMem_40388c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40388c = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40388c)
  store %struct.Memory* %call_40388c, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x250(%rcx)	 RIP: 403890	 Bytes: 7
  %loadMem_403890 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403890 = call %struct.Memory* @routine_movq__rax__0x250__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403890)
  store %struct.Memory* %call_403890, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 403897	 Bytes: 4
  %loadMem_403897 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403897 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403897)
  store %struct.Memory* %call_403897, %struct.Memory** %MEMORY

  ; Code: movq 0x228(%rax), %rax	 RIP: 40389b	 Bytes: 7
  %loadMem_40389b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40389b = call %struct.Memory* @routine_movq_0x228__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40389b)
  store %struct.Memory* %call_40389b, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x120(%rbp)	 RIP: 4038a2	 Bytes: 7
  %loadMem_4038a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4038a2 = call %struct.Memory* @routine_movq__rax__MINUS0x120__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4038a2)
  store %struct.Memory* %call_4038a2, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 4038a9	 Bytes: 4
  %loadMem_4038a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4038a9 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4038a9)
  store %struct.Memory* %call_4038a9, %struct.Memory** %MEMORY

  ; Code: movq 0x238(%rax), %rax	 RIP: 4038ad	 Bytes: 7
  %loadMem_4038ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4038ad = call %struct.Memory* @routine_movq_0x238__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4038ad)
  store %struct.Memory* %call_4038ad, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x118(%rbp)	 RIP: 4038b4	 Bytes: 7
  %loadMem_4038b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4038b4 = call %struct.Memory* @routine_movq__rax__MINUS0x118__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4038b4)
  store %struct.Memory* %call_4038b4, %struct.Memory** %MEMORY

  ; Code: movq $0x1, -0x110(%rbp)	 RIP: 4038bb	 Bytes: 11
  %loadMem_4038bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4038bb = call %struct.Memory* @routine_movq__0x1__MINUS0x110__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4038bb)
  store %struct.Memory* %call_4038bb, %struct.Memory** %MEMORY

  ; Code: .L_4038c6:	 RIP: 4038c6	 Bytes: 0
  br label %block_.L_4038c6
block_.L_4038c6:

  ; Code: movq -0x110(%rbp), %rax	 RIP: 4038c6	 Bytes: 7
  %loadMem_4038c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4038c6 = call %struct.Memory* @routine_movq_MINUS0x110__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4038c6)
  store %struct.Memory* %call_4038c6, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 4038cd	 Bytes: 4
  %loadMem_4038cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4038cd = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4038cd)
  store %struct.Memory* %call_4038cd, %struct.Memory** %MEMORY

  ; Code: cmpq 0x198(%rcx), %rax	 RIP: 4038d1	 Bytes: 7
  %loadMem_4038d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4038d1 = call %struct.Memory* @routine_cmpq_0x198__rcx____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4038d1)
  store %struct.Memory* %call_4038d1, %struct.Memory** %MEMORY

  ; Code: jg .L_403d03	 RIP: 4038d8	 Bytes: 6
  %loadMem_4038d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4038d8 = call %struct.Memory* @routine_jg_.L_403d03(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4038d8, i8* %BRANCH_TAKEN, i64 1067, i64 6, i64 6)
  store %struct.Memory* %call_4038d8, %struct.Memory** %MEMORY

  %loadBr_4038d8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4038d8 = icmp eq i8 %loadBr_4038d8, 1
  br i1 %cmpBr_4038d8, label %block_.L_403d03, label %block_4038de

block_4038de:
  ; Code: movl $0xc8, %esi	 RIP: 4038de	 Bytes: 5
  %loadMem_4038de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4038de = call %struct.Memory* @routine_movl__0xc8___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4038de)
  store %struct.Memory* %call_4038de, %struct.Memory** %MEMORY

  ; Code: leaq -0xf0(%rbp), %rdi	 RIP: 4038e3	 Bytes: 7
  %loadMem_4038e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4038e3 = call %struct.Memory* @routine_leaq_MINUS0xf0__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4038e3)
  store %struct.Memory* %call_4038e3, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 4038ea	 Bytes: 4
  %loadMem_4038ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4038ea = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4038ea)
  store %struct.Memory* %call_4038ea, %struct.Memory** %MEMORY

  ; Code: callq .fgets_plt	 RIP: 4038ee	 Bytes: 5
  %loadMem1_4038ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4038ee = call %struct.Memory* @routine_callq_.fgets_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4038ee, i64 -12414, i64 5, i64 5)
  store %struct.Memory* %call1_4038ee, %struct.Memory** %MEMORY

  %loadMem2_4038ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4038ee = load i64, i64* %3
  %call2_4038ee = call %struct.Memory* @sub_400870.fgets_plt(%struct.State* %0, i64  %loadPC_4038ee, %struct.Memory* %loadMem2_4038ee)
  store %struct.Memory* %call2_4038ee, %struct.Memory** %MEMORY

  ; Code: movq $0x4049e5, %rsi	 RIP: 4038f3	 Bytes: 10
  %loadMem_4038f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4038f3 = call %struct.Memory* @routine_movq__0x4049e5___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4038f3)
  store %struct.Memory* %call_4038f3, %struct.Memory** %MEMORY

  ; Code: leaq -0xf8(%rbp), %rdx	 RIP: 4038fd	 Bytes: 7
  %loadMem_4038fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4038fd = call %struct.Memory* @routine_leaq_MINUS0xf8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4038fd)
  store %struct.Memory* %call_4038fd, %struct.Memory** %MEMORY

  ; Code: leaq -0x100(%rbp), %rcx	 RIP: 403904	 Bytes: 7
  %loadMem_403904 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403904 = call %struct.Memory* @routine_leaq_MINUS0x100__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403904)
  store %struct.Memory* %call_403904, %struct.Memory** %MEMORY

  ; Code: leaq -0xf0(%rbp), %rdi	 RIP: 40390b	 Bytes: 7
  %loadMem_40390b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40390b = call %struct.Memory* @routine_leaq_MINUS0xf0__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40390b)
  store %struct.Memory* %call_40390b, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x140(%rbp)	 RIP: 403912	 Bytes: 7
  %loadMem_403912 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403912 = call %struct.Memory* @routine_movq__rax__MINUS0x140__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403912)
  store %struct.Memory* %call_403912, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 403919	 Bytes: 2
  %loadMem_403919 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403919 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403919)
  store %struct.Memory* %call_403919, %struct.Memory** %MEMORY

  ; Code: callq .__isoc99_sscanf_plt	 RIP: 40391b	 Bytes: 5
  %loadMem1_40391b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_40391b = call %struct.Memory* @routine_callq_.__isoc99_sscanf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_40391b, i64 -12379, i64 5, i64 5)
  store %struct.Memory* %call1_40391b, %struct.Memory** %MEMORY

  %loadMem2_40391b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40391b = load i64, i64* %3
  %call2_40391b = call %struct.Memory* @ext___isoc99_sscanf(%struct.State* %0, i64  %loadPC_40391b, %struct.Memory* %loadMem2_40391b)
  store %struct.Memory* %call2_40391b, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, %eax	 RIP: 403920	 Bytes: 3
  %loadMem_403920 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403920 = call %struct.Memory* @routine_cmpl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403920)
  store %struct.Memory* %call_403920, %struct.Memory** %MEMORY

  ; Code: jne .L_40393d	 RIP: 403923	 Bytes: 6
  %loadMem_403923 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403923 = call %struct.Memory* @routine_jne_.L_40393d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403923, i8* %BRANCH_TAKEN, i64 26, i64 6, i64 6)
  store %struct.Memory* %call_403923, %struct.Memory** %MEMORY

  %loadBr_403923 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_403923 = icmp eq i8 %loadBr_403923, 1
  br i1 %cmpBr_403923, label %block_.L_40393d, label %block_403929

block_403929:
  ; Code: movq -0xf8(%rbp), %rax	 RIP: 403929	 Bytes: 7
  %loadMem_403929 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403929 = call %struct.Memory* @routine_movq_MINUS0xf8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403929)
  store %struct.Memory* %call_403929, %struct.Memory** %MEMORY

  ; Code: cmpq -0x100(%rbp), %rax	 RIP: 403930	 Bytes: 7
  %loadMem_403930 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403930 = call %struct.Memory* @routine_cmpq_MINUS0x100__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403930)
  store %struct.Memory* %call_403930, %struct.Memory** %MEMORY

  ; Code: jle .L_40394a	 RIP: 403937	 Bytes: 6
  %loadMem_403937 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403937 = call %struct.Memory* @routine_jle_.L_40394a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403937, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_403937, %struct.Memory** %MEMORY

  %loadBr_403937 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_403937 = icmp eq i8 %loadBr_403937, 1
  br i1 %cmpBr_403937, label %block_.L_40394a, label %block_.L_40393d

  ; Code: .L_40393d:	 RIP: 40393d	 Bytes: 0
block_.L_40393d:

  ; Code: movq $0xffffffffffffffff, -0x8(%rbp)	 RIP: 40393d	 Bytes: 8
  %loadMem_40393d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40393d = call %struct.Memory* @routine_movq__0xffffffffffffffff__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40393d)
  store %struct.Memory* %call_40393d, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40407e	 RIP: 403945	 Bytes: 5
  %loadMem_403945 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403945 = call %struct.Memory* @routine_jmpq_.L_40407e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403945, i64 1849, i64 5)
  store %struct.Memory* %call_403945, %struct.Memory** %MEMORY

  br label %block_.L_40407e

  ; Code: .L_40394a:	 RIP: 40394a	 Bytes: 0
block_.L_40394a:

  ; Code: xorl %eax, %eax	 RIP: 40394a	 Bytes: 2
  %loadMem_40394a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40394a = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40394a)
  store %struct.Memory* %call_40394a, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 40394c	 Bytes: 2
  %loadMem_40394c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40394c = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40394c)
  store %struct.Memory* %call_40394c, %struct.Memory** %MEMORY

  ; Code: subq -0x110(%rbp), %rcx	 RIP: 40394e	 Bytes: 7
  %loadMem_40394e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40394e = call %struct.Memory* @routine_subq_MINUS0x110__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40394e)
  store %struct.Memory* %call_40394e, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %eax	 RIP: 403955	 Bytes: 2
  %loadMem_403955 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403955 = call %struct.Memory* @routine_movl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403955)
  store %struct.Memory* %call_403955, %struct.Memory** %MEMORY

  ; Code: movq -0x120(%rbp), %rcx	 RIP: 403957	 Bytes: 7
  %loadMem_403957 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403957 = call %struct.Memory* @routine_movq_MINUS0x120__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403957)
  store %struct.Memory* %call_403957, %struct.Memory** %MEMORY

  ; Code: imulq $0x68, -0x110(%rbp), %rdx	 RIP: 40395e	 Bytes: 8
  %loadMem_40395e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40395e = call %struct.Memory* @routine_imulq__0x68__MINUS0x110__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40395e)
  store %struct.Memory* %call_40395e, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 403966	 Bytes: 3
  %loadMem_403966 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403966 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403966)
  store %struct.Memory* %call_403966, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x60(%rcx)	 RIP: 403969	 Bytes: 3
  %loadMem_403969 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403969 = call %struct.Memory* @routine_movl__eax__0x60__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403969)
  store %struct.Memory* %call_403969, %struct.Memory** %MEMORY

  ; Code: movq -0x120(%rbp), %rcx	 RIP: 40396c	 Bytes: 7
  %loadMem_40396c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40396c = call %struct.Memory* @routine_movq_MINUS0x120__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40396c)
  store %struct.Memory* %call_40396c, %struct.Memory** %MEMORY

  ; Code: imulq $0x68, -0x110(%rbp), %rdx	 RIP: 403973	 Bytes: 8
  %loadMem_403973 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403973 = call %struct.Memory* @routine_imulq__0x68__MINUS0x110__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403973)
  store %struct.Memory* %call_403973, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 40397b	 Bytes: 3
  %loadMem_40397b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40397b = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40397b)
  store %struct.Memory* %call_40397b, %struct.Memory** %MEMORY

  ; Code: movq $0xffffffffffffffff, 0x50(%rcx)	 RIP: 40397e	 Bytes: 8
  %loadMem_40397e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40397e = call %struct.Memory* @routine_movq__0xffffffffffffffff__0x50__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40397e)
  store %struct.Memory* %call_40397e, %struct.Memory** %MEMORY

  ; Code: movq -0x110(%rbp), %rcx	 RIP: 403986	 Bytes: 7
  %loadMem_403986 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403986 = call %struct.Memory* @routine_movq_MINUS0x110__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403986)
  store %struct.Memory* %call_403986, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %eax	 RIP: 40398d	 Bytes: 2
  %loadMem_40398d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40398d = call %struct.Memory* @routine_movl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40398d)
  store %struct.Memory* %call_40398d, %struct.Memory** %MEMORY

  ; Code: movq -0x120(%rbp), %rcx	 RIP: 40398f	 Bytes: 7
  %loadMem_40398f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40398f = call %struct.Memory* @routine_movq_MINUS0x120__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40398f)
  store %struct.Memory* %call_40398f, %struct.Memory** %MEMORY

  ; Code: movq -0x110(%rbp), %rdx	 RIP: 403996	 Bytes: 7
  %loadMem_403996 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403996 = call %struct.Memory* @routine_movq_MINUS0x110__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403996)
  store %struct.Memory* %call_403996, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rsi	 RIP: 40399d	 Bytes: 4
  %loadMem_40399d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40399d = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40399d)
  store %struct.Memory* %call_40399d, %struct.Memory** %MEMORY

  ; Code: addq 0x198(%rsi), %rdx	 RIP: 4039a1	 Bytes: 7
  %loadMem_4039a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4039a1 = call %struct.Memory* @routine_addq_0x198__rsi____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4039a1)
  store %struct.Memory* %call_4039a1, %struct.Memory** %MEMORY

  ; Code: imulq $0x68, %rdx, %rdx	 RIP: 4039a8	 Bytes: 4
  %loadMem_4039a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4039a8 = call %struct.Memory* @routine_imulq__0x68___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4039a8)
  store %struct.Memory* %call_4039a8, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 4039ac	 Bytes: 3
  %loadMem_4039ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4039ac = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4039ac)
  store %struct.Memory* %call_4039ac, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x60(%rcx)	 RIP: 4039af	 Bytes: 3
  %loadMem_4039af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4039af = call %struct.Memory* @routine_movl__eax__0x60__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4039af)
  store %struct.Memory* %call_4039af, %struct.Memory** %MEMORY

  ; Code: movq -0x120(%rbp), %rcx	 RIP: 4039b2	 Bytes: 7
  %loadMem_4039b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4039b2 = call %struct.Memory* @routine_movq_MINUS0x120__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4039b2)
  store %struct.Memory* %call_4039b2, %struct.Memory** %MEMORY

  ; Code: movq -0x110(%rbp), %rdx	 RIP: 4039b9	 Bytes: 7
  %loadMem_4039b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4039b9 = call %struct.Memory* @routine_movq_MINUS0x110__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4039b9)
  store %struct.Memory* %call_4039b9, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rsi	 RIP: 4039c0	 Bytes: 4
  %loadMem_4039c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4039c0 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4039c0)
  store %struct.Memory* %call_4039c0, %struct.Memory** %MEMORY

  ; Code: addq 0x198(%rsi), %rdx	 RIP: 4039c4	 Bytes: 7
  %loadMem_4039c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4039c4 = call %struct.Memory* @routine_addq_0x198__rsi____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4039c4)
  store %struct.Memory* %call_4039c4, %struct.Memory** %MEMORY

  ; Code: imulq $0x68, %rdx, %rdx	 RIP: 4039cb	 Bytes: 4
  %loadMem_4039cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4039cb = call %struct.Memory* @routine_imulq__0x68___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4039cb)
  store %struct.Memory* %call_4039cb, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 4039cf	 Bytes: 3
  %loadMem_4039cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4039cf = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4039cf)
  store %struct.Memory* %call_4039cf, %struct.Memory** %MEMORY

  ; Code: movq $0x1, 0x50(%rcx)	 RIP: 4039d2	 Bytes: 8
  %loadMem_4039d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4039d2 = call %struct.Memory* @routine_movq__0x1__0x50__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4039d2)
  store %struct.Memory* %call_4039d2, %struct.Memory** %MEMORY

  ; Code: movq -0xf8(%rbp), %rcx	 RIP: 4039da	 Bytes: 7
  %loadMem_4039da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4039da = call %struct.Memory* @routine_movq_MINUS0xf8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4039da)
  store %struct.Memory* %call_4039da, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %eax	 RIP: 4039e1	 Bytes: 2
  %loadMem_4039e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4039e1 = call %struct.Memory* @routine_movl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4039e1)
  store %struct.Memory* %call_4039e1, %struct.Memory** %MEMORY

  ; Code: movq -0x120(%rbp), %rcx	 RIP: 4039e3	 Bytes: 7
  %loadMem_4039e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4039e3 = call %struct.Memory* @routine_movq_MINUS0x120__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4039e3)
  store %struct.Memory* %call_4039e3, %struct.Memory** %MEMORY

  ; Code: imulq $0x68, -0x110(%rbp), %rdx	 RIP: 4039ea	 Bytes: 8
  %loadMem_4039ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4039ea = call %struct.Memory* @routine_imulq__0x68__MINUS0x110__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4039ea)
  store %struct.Memory* %call_4039ea, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 4039f2	 Bytes: 3
  %loadMem_4039f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4039f2 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4039f2)
  store %struct.Memory* %call_4039f2, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x64(%rcx)	 RIP: 4039f5	 Bytes: 3
  %loadMem_4039f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4039f5 = call %struct.Memory* @routine_movl__eax__0x64__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4039f5)
  store %struct.Memory* %call_4039f5, %struct.Memory** %MEMORY

  ; Code: movq -0x100(%rbp), %rcx	 RIP: 4039f8	 Bytes: 7
  %loadMem_4039f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4039f8 = call %struct.Memory* @routine_movq_MINUS0x100__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4039f8)
  store %struct.Memory* %call_4039f8, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %eax	 RIP: 4039ff	 Bytes: 2
  %loadMem_4039ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4039ff = call %struct.Memory* @routine_movl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4039ff)
  store %struct.Memory* %call_4039ff, %struct.Memory** %MEMORY

  ; Code: movq -0x120(%rbp), %rcx	 RIP: 403a01	 Bytes: 7
  %loadMem_403a01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a01 = call %struct.Memory* @routine_movq_MINUS0x120__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a01)
  store %struct.Memory* %call_403a01, %struct.Memory** %MEMORY

  ; Code: movq -0x110(%rbp), %rdx	 RIP: 403a08	 Bytes: 7
  %loadMem_403a08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a08 = call %struct.Memory* @routine_movq_MINUS0x110__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a08)
  store %struct.Memory* %call_403a08, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rsi	 RIP: 403a0f	 Bytes: 4
  %loadMem_403a0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a0f = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a0f)
  store %struct.Memory* %call_403a0f, %struct.Memory** %MEMORY

  ; Code: addq 0x198(%rsi), %rdx	 RIP: 403a13	 Bytes: 7
  %loadMem_403a13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a13 = call %struct.Memory* @routine_addq_0x198__rsi____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a13)
  store %struct.Memory* %call_403a13, %struct.Memory** %MEMORY

  ; Code: imulq $0x68, %rdx, %rdx	 RIP: 403a1a	 Bytes: 4
  %loadMem_403a1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a1a = call %struct.Memory* @routine_imulq__0x68___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a1a)
  store %struct.Memory* %call_403a1a, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 403a1e	 Bytes: 3
  %loadMem_403a1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a1e = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a1e)
  store %struct.Memory* %call_403a1e, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0x64(%rcx)	 RIP: 403a21	 Bytes: 3
  %loadMem_403a21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a21 = call %struct.Memory* @routine_movl__eax__0x64__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a21)
  store %struct.Memory* %call_403a21, %struct.Memory** %MEMORY

  ; Code: movq -0x120(%rbp), %rcx	 RIP: 403a24	 Bytes: 7
  %loadMem_403a24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a24 = call %struct.Memory* @routine_movq_MINUS0x120__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a24)
  store %struct.Memory* %call_403a24, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 403a2b	 Bytes: 4
  %loadMem_403a2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a2b = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a2b)
  store %struct.Memory* %call_403a2b, %struct.Memory** %MEMORY

  ; Code: imulq $0x68, 0x190(%rdx), %rdx	 RIP: 403a2f	 Bytes: 8
  %loadMem_403a2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a2f = call %struct.Memory* @routine_imulq__0x68__0x190__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a2f)
  store %struct.Memory* %call_403a2f, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 403a37	 Bytes: 3
  %loadMem_403a37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a37 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a37)
  store %struct.Memory* %call_403a37, %struct.Memory** %MEMORY

  ; Code: movq -0x118(%rbp), %rdx	 RIP: 403a3a	 Bytes: 7
  %loadMem_403a3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a3a = call %struct.Memory* @routine_movq_MINUS0x118__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a3a)
  store %struct.Memory* %call_403a3a, %struct.Memory** %MEMORY

  ; Code: movq %rcx, 0x8(%rdx)	 RIP: 403a41	 Bytes: 4
  %loadMem_403a41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a41 = call %struct.Memory* @routine_movq__rcx__0x8__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a41)
  store %struct.Memory* %call_403a41, %struct.Memory** %MEMORY

  ; Code: movq -0x120(%rbp), %rcx	 RIP: 403a45	 Bytes: 7
  %loadMem_403a45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a45 = call %struct.Memory* @routine_movq_MINUS0x120__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a45)
  store %struct.Memory* %call_403a45, %struct.Memory** %MEMORY

  ; Code: imulq $0x68, -0x110(%rbp), %rdx	 RIP: 403a4c	 Bytes: 8
  %loadMem_403a4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a4c = call %struct.Memory* @routine_imulq__0x68__MINUS0x110__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a4c)
  store %struct.Memory* %call_403a4c, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 403a54	 Bytes: 3
  %loadMem_403a54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a54 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a54)
  store %struct.Memory* %call_403a54, %struct.Memory** %MEMORY

  ; Code: movq -0x118(%rbp), %rdx	 RIP: 403a57	 Bytes: 7
  %loadMem_403a57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a57 = call %struct.Memory* @routine_movq_MINUS0x118__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a57)
  store %struct.Memory* %call_403a57, %struct.Memory** %MEMORY

  ; Code: movq %rcx, 0x10(%rdx)	 RIP: 403a5e	 Bytes: 4
  %loadMem_403a5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a5e = call %struct.Memory* @routine_movq__rcx__0x10__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a5e)
  store %struct.Memory* %call_403a5e, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 403a62	 Bytes: 4
  %loadMem_403a62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a62 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a62)
  store %struct.Memory* %call_403a62, %struct.Memory** %MEMORY

  ; Code: movq 0x210(%rcx), %rcx	 RIP: 403a66	 Bytes: 7
  %loadMem_403a66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a66 = call %struct.Memory* @routine_movq_0x210__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a66)
  store %struct.Memory* %call_403a66, %struct.Memory** %MEMORY

  ; Code: addq $0xf, %rcx	 RIP: 403a6d	 Bytes: 4
  %loadMem_403a6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a6d = call %struct.Memory* @routine_addq__0xf___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a6d)
  store %struct.Memory* %call_403a6d, %struct.Memory** %MEMORY

  ; Code: movq -0x118(%rbp), %rdx	 RIP: 403a71	 Bytes: 7
  %loadMem_403a71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a71 = call %struct.Memory* @routine_movq_MINUS0x118__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a71)
  store %struct.Memory* %call_403a71, %struct.Memory** %MEMORY

  ; Code: movq %rcx, (%rdx)	 RIP: 403a78	 Bytes: 3
  %loadMem_403a78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a78 = call %struct.Memory* @routine_movq__rcx____rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a78)
  store %struct.Memory* %call_403a78, %struct.Memory** %MEMORY

  ; Code: movq -0x118(%rbp), %rdx	 RIP: 403a7b	 Bytes: 7
  %loadMem_403a7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a7b = call %struct.Memory* @routine_movq_MINUS0x118__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a7b)
  store %struct.Memory* %call_403a7b, %struct.Memory** %MEMORY

  ; Code: movq %rcx, 0x38(%rdx)	 RIP: 403a82	 Bytes: 4
  %loadMem_403a82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a82 = call %struct.Memory* @routine_movq__rcx__0x38__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a82)
  store %struct.Memory* %call_403a82, %struct.Memory** %MEMORY

  ; Code: movq -0x118(%rbp), %rcx	 RIP: 403a86	 Bytes: 7
  %loadMem_403a86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a86 = call %struct.Memory* @routine_movq_MINUS0x118__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a86)
  store %struct.Memory* %call_403a86, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rcx), %rcx	 RIP: 403a8d	 Bytes: 4
  %loadMem_403a8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a8d = call %struct.Memory* @routine_movq_0x8__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a8d)
  store %struct.Memory* %call_403a8d, %struct.Memory** %MEMORY

  ; Code: movq 0x38(%rcx), %rcx	 RIP: 403a91	 Bytes: 4
  %loadMem_403a91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a91 = call %struct.Memory* @routine_movq_0x38__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a91)
  store %struct.Memory* %call_403a91, %struct.Memory** %MEMORY

  ; Code: movq -0x118(%rbp), %rdx	 RIP: 403a95	 Bytes: 7
  %loadMem_403a95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a95 = call %struct.Memory* @routine_movq_MINUS0x118__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a95)
  store %struct.Memory* %call_403a95, %struct.Memory** %MEMORY

  ; Code: movq %rcx, 0x20(%rdx)	 RIP: 403a9c	 Bytes: 4
  %loadMem_403a9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403a9c = call %struct.Memory* @routine_movq__rcx__0x20__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403a9c)
  store %struct.Memory* %call_403a9c, %struct.Memory** %MEMORY

  ; Code: movq -0x118(%rbp), %rcx	 RIP: 403aa0	 Bytes: 7
  %loadMem_403aa0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403aa0 = call %struct.Memory* @routine_movq_MINUS0x118__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403aa0)
  store %struct.Memory* %call_403aa0, %struct.Memory** %MEMORY

  ; Code: movq -0x118(%rbp), %rdx	 RIP: 403aa7	 Bytes: 7
  %loadMem_403aa7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403aa7 = call %struct.Memory* @routine_movq_MINUS0x118__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403aa7)
  store %struct.Memory* %call_403aa7, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rdx), %rdx	 RIP: 403aae	 Bytes: 4
  %loadMem_403aae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403aae = call %struct.Memory* @routine_movq_0x8__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403aae)
  store %struct.Memory* %call_403aae, %struct.Memory** %MEMORY

  ; Code: movq %rcx, 0x38(%rdx)	 RIP: 403ab2	 Bytes: 4
  %loadMem_403ab2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ab2 = call %struct.Memory* @routine_movq__rcx__0x38__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ab2)
  store %struct.Memory* %call_403ab2, %struct.Memory** %MEMORY

  ; Code: movq -0x118(%rbp), %rcx	 RIP: 403ab6	 Bytes: 7
  %loadMem_403ab6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ab6 = call %struct.Memory* @routine_movq_MINUS0x118__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ab6)
  store %struct.Memory* %call_403ab6, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rcx), %rcx	 RIP: 403abd	 Bytes: 4
  %loadMem_403abd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403abd = call %struct.Memory* @routine_movq_0x10__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403abd)
  store %struct.Memory* %call_403abd, %struct.Memory** %MEMORY

  ; Code: movq 0x40(%rcx), %rcx	 RIP: 403ac1	 Bytes: 4
  %loadMem_403ac1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ac1 = call %struct.Memory* @routine_movq_0x40__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ac1)
  store %struct.Memory* %call_403ac1, %struct.Memory** %MEMORY

  ; Code: movq -0x118(%rbp), %rdx	 RIP: 403ac5	 Bytes: 7
  %loadMem_403ac5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ac5 = call %struct.Memory* @routine_movq_MINUS0x118__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ac5)
  store %struct.Memory* %call_403ac5, %struct.Memory** %MEMORY

  ; Code: movq %rcx, 0x28(%rdx)	 RIP: 403acc	 Bytes: 4
  %loadMem_403acc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403acc = call %struct.Memory* @routine_movq__rcx__0x28__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403acc)
  store %struct.Memory* %call_403acc, %struct.Memory** %MEMORY

  ; Code: movq -0x118(%rbp), %rcx	 RIP: 403ad0	 Bytes: 7
  %loadMem_403ad0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ad0 = call %struct.Memory* @routine_movq_MINUS0x118__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ad0)
  store %struct.Memory* %call_403ad0, %struct.Memory** %MEMORY

  ; Code: movq -0x118(%rbp), %rdx	 RIP: 403ad7	 Bytes: 7
  %loadMem_403ad7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ad7 = call %struct.Memory* @routine_movq_MINUS0x118__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ad7)
  store %struct.Memory* %call_403ad7, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rdx), %rdx	 RIP: 403ade	 Bytes: 4
  %loadMem_403ade = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ade = call %struct.Memory* @routine_movq_0x10__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ade)
  store %struct.Memory* %call_403ade, %struct.Memory** %MEMORY

  ; Code: movq %rcx, 0x40(%rdx)	 RIP: 403ae2	 Bytes: 4
  %loadMem_403ae2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ae2 = call %struct.Memory* @routine_movq__rcx__0x40__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ae2)
  store %struct.Memory* %call_403ae2, %struct.Memory** %MEMORY

  ; Code: movq -0x118(%rbp), %rcx	 RIP: 403ae6	 Bytes: 7
  %loadMem_403ae6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ae6 = call %struct.Memory* @routine_movq_MINUS0x118__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ae6)
  store %struct.Memory* %call_403ae6, %struct.Memory** %MEMORY

  ; Code: addq $0x40, %rcx	 RIP: 403aed	 Bytes: 4
  %loadMem_403aed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403aed = call %struct.Memory* @routine_addq__0x40___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403aed)
  store %struct.Memory* %call_403aed, %struct.Memory** %MEMORY

  ; Code: movq %rcx, -0x118(%rbp)	 RIP: 403af1	 Bytes: 7
  %loadMem_403af1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403af1 = call %struct.Memory* @routine_movq__rcx__MINUS0x118__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403af1)
  store %struct.Memory* %call_403af1, %struct.Memory** %MEMORY

  ; Code: movq -0x120(%rbp), %rcx	 RIP: 403af8	 Bytes: 7
  %loadMem_403af8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403af8 = call %struct.Memory* @routine_movq_MINUS0x120__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403af8)
  store %struct.Memory* %call_403af8, %struct.Memory** %MEMORY

  ; Code: movq -0x110(%rbp), %rdx	 RIP: 403aff	 Bytes: 7
  %loadMem_403aff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403aff = call %struct.Memory* @routine_movq_MINUS0x110__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403aff)
  store %struct.Memory* %call_403aff, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rsi	 RIP: 403b06	 Bytes: 4
  %loadMem_403b06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403b06 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403b06)
  store %struct.Memory* %call_403b06, %struct.Memory** %MEMORY

  ; Code: addq 0x198(%rsi), %rdx	 RIP: 403b0a	 Bytes: 7
  %loadMem_403b0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403b0a = call %struct.Memory* @routine_addq_0x198__rsi____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403b0a)
  store %struct.Memory* %call_403b0a, %struct.Memory** %MEMORY

  ; Code: imulq $0x68, %rdx, %rdx	 RIP: 403b11	 Bytes: 4
  %loadMem_403b11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403b11 = call %struct.Memory* @routine_imulq__0x68___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403b11)
  store %struct.Memory* %call_403b11, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 403b15	 Bytes: 3
  %loadMem_403b15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403b15 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403b15)
  store %struct.Memory* %call_403b15, %struct.Memory** %MEMORY

  ; Code: movq -0x118(%rbp), %rdx	 RIP: 403b18	 Bytes: 7
  %loadMem_403b18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403b18 = call %struct.Memory* @routine_movq_MINUS0x118__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403b18)
  store %struct.Memory* %call_403b18, %struct.Memory** %MEMORY

  ; Code: movq %rcx, 0x8(%rdx)	 RIP: 403b1f	 Bytes: 4
  %loadMem_403b1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403b1f = call %struct.Memory* @routine_movq__rcx__0x8__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403b1f)
  store %struct.Memory* %call_403b1f, %struct.Memory** %MEMORY

  ; Code: movq -0x120(%rbp), %rcx	 RIP: 403b23	 Bytes: 7
  %loadMem_403b23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403b23 = call %struct.Memory* @routine_movq_MINUS0x120__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403b23)
  store %struct.Memory* %call_403b23, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 403b2a	 Bytes: 4
  %loadMem_403b2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403b2a = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403b2a)
  store %struct.Memory* %call_403b2a, %struct.Memory** %MEMORY

  ; Code: imulq $0x68, 0x190(%rdx), %rdx	 RIP: 403b2e	 Bytes: 8
  %loadMem_403b2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403b2e = call %struct.Memory* @routine_imulq__0x68__0x190__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403b2e)
  store %struct.Memory* %call_403b2e, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 403b36	 Bytes: 3
  %loadMem_403b36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403b36 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403b36)
  store %struct.Memory* %call_403b36, %struct.Memory** %MEMORY

  ; Code: movq -0x118(%rbp), %rdx	 RIP: 403b39	 Bytes: 7
  %loadMem_403b39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403b39 = call %struct.Memory* @routine_movq_MINUS0x118__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403b39)
  store %struct.Memory* %call_403b39, %struct.Memory** %MEMORY

  ; Code: movq %rcx, 0x10(%rdx)	 RIP: 403b40	 Bytes: 4
  %loadMem_403b40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403b40 = call %struct.Memory* @routine_movq__rcx__0x10__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403b40)
  store %struct.Memory* %call_403b40, %struct.Memory** %MEMORY

  ; Code: movq -0x118(%rbp), %rcx	 RIP: 403b44	 Bytes: 7
  %loadMem_403b44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403b44 = call %struct.Memory* @routine_movq_MINUS0x118__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403b44)
  store %struct.Memory* %call_403b44, %struct.Memory** %MEMORY

  ; Code: movq $0xf, (%rcx)	 RIP: 403b4b	 Bytes: 7
  %loadMem_403b4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403b4b = call %struct.Memory* @routine_movq__0xf____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403b4b)
  store %struct.Memory* %call_403b4b, %struct.Memory** %MEMORY

  ; Code: movq -0x118(%rbp), %rcx	 RIP: 403b52	 Bytes: 7
  %loadMem_403b52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403b52 = call %struct.Memory* @routine_movq_MINUS0x118__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403b52)
  store %struct.Memory* %call_403b52, %struct.Memory** %MEMORY

  ; Code: movq $0xf, 0x38(%rcx)	 RIP: 403b59	 Bytes: 8
  %loadMem_403b59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403b59 = call %struct.Memory* @routine_movq__0xf__0x38__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403b59)
  store %struct.Memory* %call_403b59, %struct.Memory** %MEMORY

  ; Code: movq -0x118(%rbp), %rcx	 RIP: 403b61	 Bytes: 7
  %loadMem_403b61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403b61 = call %struct.Memory* @routine_movq_MINUS0x118__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403b61)
  store %struct.Memory* %call_403b61, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rcx), %rcx	 RIP: 403b68	 Bytes: 4
  %loadMem_403b68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403b68 = call %struct.Memory* @routine_movq_0x8__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403b68)
  store %struct.Memory* %call_403b68, %struct.Memory** %MEMORY

  ; Code: movq 0x38(%rcx), %rcx	 RIP: 403b6c	 Bytes: 4
  %loadMem_403b6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403b6c = call %struct.Memory* @routine_movq_0x38__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403b6c)
  store %struct.Memory* %call_403b6c, %struct.Memory** %MEMORY

  ; Code: movq -0x118(%rbp), %rdx	 RIP: 403b70	 Bytes: 7
  %loadMem_403b70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403b70 = call %struct.Memory* @routine_movq_MINUS0x118__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403b70)
  store %struct.Memory* %call_403b70, %struct.Memory** %MEMORY

  ; Code: movq %rcx, 0x20(%rdx)	 RIP: 403b77	 Bytes: 4
  %loadMem_403b77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403b77 = call %struct.Memory* @routine_movq__rcx__0x20__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403b77)
  store %struct.Memory* %call_403b77, %struct.Memory** %MEMORY

  ; Code: movq -0x118(%rbp), %rcx	 RIP: 403b7b	 Bytes: 7
  %loadMem_403b7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403b7b = call %struct.Memory* @routine_movq_MINUS0x118__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403b7b)
  store %struct.Memory* %call_403b7b, %struct.Memory** %MEMORY

  ; Code: movq -0x118(%rbp), %rdx	 RIP: 403b82	 Bytes: 7
  %loadMem_403b82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403b82 = call %struct.Memory* @routine_movq_MINUS0x118__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403b82)
  store %struct.Memory* %call_403b82, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rdx), %rdx	 RIP: 403b89	 Bytes: 4
  %loadMem_403b89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403b89 = call %struct.Memory* @routine_movq_0x8__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403b89)
  store %struct.Memory* %call_403b89, %struct.Memory** %MEMORY

  ; Code: movq %rcx, 0x38(%rdx)	 RIP: 403b8d	 Bytes: 4
  %loadMem_403b8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403b8d = call %struct.Memory* @routine_movq__rcx__0x38__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403b8d)
  store %struct.Memory* %call_403b8d, %struct.Memory** %MEMORY

  ; Code: movq -0x118(%rbp), %rcx	 RIP: 403b91	 Bytes: 7
  %loadMem_403b91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403b91 = call %struct.Memory* @routine_movq_MINUS0x118__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403b91)
  store %struct.Memory* %call_403b91, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rcx), %rcx	 RIP: 403b98	 Bytes: 4
  %loadMem_403b98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403b98 = call %struct.Memory* @routine_movq_0x10__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403b98)
  store %struct.Memory* %call_403b98, %struct.Memory** %MEMORY

  ; Code: movq 0x40(%rcx), %rcx	 RIP: 403b9c	 Bytes: 4
  %loadMem_403b9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403b9c = call %struct.Memory* @routine_movq_0x40__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403b9c)
  store %struct.Memory* %call_403b9c, %struct.Memory** %MEMORY

  ; Code: movq -0x118(%rbp), %rdx	 RIP: 403ba0	 Bytes: 7
  %loadMem_403ba0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ba0 = call %struct.Memory* @routine_movq_MINUS0x118__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ba0)
  store %struct.Memory* %call_403ba0, %struct.Memory** %MEMORY

  ; Code: movq %rcx, 0x28(%rdx)	 RIP: 403ba7	 Bytes: 4
  %loadMem_403ba7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ba7 = call %struct.Memory* @routine_movq__rcx__0x28__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ba7)
  store %struct.Memory* %call_403ba7, %struct.Memory** %MEMORY

  ; Code: movq -0x118(%rbp), %rcx	 RIP: 403bab	 Bytes: 7
  %loadMem_403bab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403bab = call %struct.Memory* @routine_movq_MINUS0x118__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403bab)
  store %struct.Memory* %call_403bab, %struct.Memory** %MEMORY

  ; Code: movq -0x118(%rbp), %rdx	 RIP: 403bb2	 Bytes: 7
  %loadMem_403bb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403bb2 = call %struct.Memory* @routine_movq_MINUS0x118__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403bb2)
  store %struct.Memory* %call_403bb2, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rdx), %rdx	 RIP: 403bb9	 Bytes: 4
  %loadMem_403bb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403bb9 = call %struct.Memory* @routine_movq_0x10__rdx____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403bb9)
  store %struct.Memory* %call_403bb9, %struct.Memory** %MEMORY

  ; Code: movq %rcx, 0x40(%rdx)	 RIP: 403bbd	 Bytes: 4
  %loadMem_403bbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403bbd = call %struct.Memory* @routine_movq__rcx__0x40__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403bbd)
  store %struct.Memory* %call_403bbd, %struct.Memory** %MEMORY

  ; Code: movq -0x118(%rbp), %rcx	 RIP: 403bc1	 Bytes: 7
  %loadMem_403bc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403bc1 = call %struct.Memory* @routine_movq_MINUS0x118__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403bc1)
  store %struct.Memory* %call_403bc1, %struct.Memory** %MEMORY

  ; Code: addq $0x40, %rcx	 RIP: 403bc8	 Bytes: 4
  %loadMem_403bc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403bc8 = call %struct.Memory* @routine_addq__0x40___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403bc8)
  store %struct.Memory* %call_403bc8, %struct.Memory** %MEMORY

  ; Code: movq %rcx, -0x118(%rbp)	 RIP: 403bcc	 Bytes: 7
  %loadMem_403bcc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403bcc = call %struct.Memory* @routine_movq__rcx__MINUS0x118__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403bcc)
  store %struct.Memory* %call_403bcc, %struct.Memory** %MEMORY

  ; Code: movq -0x120(%rbp), %rcx	 RIP: 403bd3	 Bytes: 7
  %loadMem_403bd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403bd3 = call %struct.Memory* @routine_movq_MINUS0x120__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403bd3)
  store %struct.Memory* %call_403bd3, %struct.Memory** %MEMORY

  ; Code: imulq $0x68, -0x110(%rbp), %rdx	 RIP: 403bda	 Bytes: 8
  %loadMem_403bda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403bda = call %struct.Memory* @routine_imulq__0x68__MINUS0x110__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403bda)
  store %struct.Memory* %call_403bda, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 403be2	 Bytes: 3
  %loadMem_403be2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403be2 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403be2)
  store %struct.Memory* %call_403be2, %struct.Memory** %MEMORY

  ; Code: movq -0x118(%rbp), %rdx	 RIP: 403be5	 Bytes: 7
  %loadMem_403be5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403be5 = call %struct.Memory* @routine_movq_MINUS0x118__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403be5)
  store %struct.Memory* %call_403be5, %struct.Memory** %MEMORY

  ; Code: movq %rcx, 0x8(%rdx)	 RIP: 403bec	 Bytes: 4
  %loadMem_403bec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403bec = call %struct.Memory* @routine_movq__rcx__0x8__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403bec)
  store %struct.Memory* %call_403bec, %struct.Memory** %MEMORY

  ; Code: movq -0x120(%rbp), %rcx	 RIP: 403bf0	 Bytes: 7
  %loadMem_403bf0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403bf0 = call %struct.Memory* @routine_movq_MINUS0x120__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403bf0)
  store %struct.Memory* %call_403bf0, %struct.Memory** %MEMORY

  ; Code: movq -0x110(%rbp), %rdx	 RIP: 403bf7	 Bytes: 7
  %loadMem_403bf7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403bf7 = call %struct.Memory* @routine_movq_MINUS0x110__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403bf7)
  store %struct.Memory* %call_403bf7, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rsi	 RIP: 403bfe	 Bytes: 4
  %loadMem_403bfe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403bfe = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403bfe)
  store %struct.Memory* %call_403bfe, %struct.Memory** %MEMORY

  ; Code: addq 0x198(%rsi), %rdx	 RIP: 403c02	 Bytes: 7
  %loadMem_403c02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c02 = call %struct.Memory* @routine_addq_0x198__rsi____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c02)
  store %struct.Memory* %call_403c02, %struct.Memory** %MEMORY

  ; Code: imulq $0x68, %rdx, %rdx	 RIP: 403c09	 Bytes: 4
  %loadMem_403c09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c09 = call %struct.Memory* @routine_imulq__0x68___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c09)
  store %struct.Memory* %call_403c09, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 403c0d	 Bytes: 3
  %loadMem_403c0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c0d = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c0d)
  store %struct.Memory* %call_403c0d, %struct.Memory** %MEMORY

  ; Code: movq -0x118(%rbp), %rdx	 RIP: 403c10	 Bytes: 7
  %loadMem_403c10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c10 = call %struct.Memory* @routine_movq_MINUS0x118__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c10)
  store %struct.Memory* %call_403c10, %struct.Memory** %MEMORY

  ; Code: movq %rcx, 0x10(%rdx)	 RIP: 403c17	 Bytes: 4
  %loadMem_403c17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c17 = call %struct.Memory* @routine_movq__rcx__0x10__rdx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c17)
  store %struct.Memory* %call_403c17, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 403c1b	 Bytes: 4
  %loadMem_403c1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c1b = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c1b)
  store %struct.Memory* %call_403c1b, %struct.Memory** %MEMORY

  ; Code: cmpq $0x989680, 0x210(%rcx)	 RIP: 403c1f	 Bytes: 11
  %loadMem_403c1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c1f = call %struct.Memory* @routine_cmpq__0x989680__0x210__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c1f)
  store %struct.Memory* %call_403c1f, %struct.Memory** %MEMORY

  ; Code: jle .L_403c47	 RIP: 403c2a	 Bytes: 6
  %loadMem_403c2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c2a = call %struct.Memory* @routine_jle_.L_403c47(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c2a, i8* %BRANCH_TAKEN, i64 29, i64 6, i64 6)
  store %struct.Memory* %call_403c2a, %struct.Memory** %MEMORY

  %loadBr_403c2a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_403c2a = icmp eq i8 %loadBr_403c2a, 1
  br i1 %cmpBr_403c2a, label %block_.L_403c47, label %block_403c30

block_403c30:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 403c30	 Bytes: 4
  %loadMem_403c30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c30 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c30)
  store %struct.Memory* %call_403c30, %struct.Memory** %MEMORY

  ; Code: movq 0x210(%rax), %rax	 RIP: 403c34	 Bytes: 7
  %loadMem_403c34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c34 = call %struct.Memory* @routine_movq_0x210__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c34)
  store %struct.Memory* %call_403c34, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x148(%rbp)	 RIP: 403c3b	 Bytes: 7
  %loadMem_403c3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c3b = call %struct.Memory* @routine_movq__rax__MINUS0x148__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c3b)
  store %struct.Memory* %call_403c3b, %struct.Memory** %MEMORY

  ; Code: jmpq .L_403c5a	 RIP: 403c42	 Bytes: 5
  %loadMem_403c42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c42 = call %struct.Memory* @routine_jmpq_.L_403c5a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c42, i64 24, i64 5)
  store %struct.Memory* %call_403c42, %struct.Memory** %MEMORY

  br label %block_.L_403c5a

  ; Code: .L_403c47:	 RIP: 403c47	 Bytes: 0
block_.L_403c47:

  ; Code: movl $0x989680, %eax	 RIP: 403c47	 Bytes: 5
  %loadMem_403c47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c47 = call %struct.Memory* @routine_movl__0x989680___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c47)
  store %struct.Memory* %call_403c47, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 403c4c	 Bytes: 2
  %loadMem_403c4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c4c = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c4c)
  store %struct.Memory* %call_403c4c, %struct.Memory** %MEMORY

  ; Code: movq %rcx, -0x148(%rbp)	 RIP: 403c4e	 Bytes: 7
  %loadMem_403c4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c4e = call %struct.Memory* @routine_movq__rcx__MINUS0x148__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c4e)
  store %struct.Memory* %call_403c4e, %struct.Memory** %MEMORY

  ; Code: jmpq .L_403c5a	 RIP: 403c55	 Bytes: 5
  %loadMem_403c55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c55 = call %struct.Memory* @routine_jmpq_.L_403c5a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c55, i64 5, i64 5)
  store %struct.Memory* %call_403c55, %struct.Memory** %MEMORY

  br label %block_.L_403c5a

  ; Code: .L_403c5a:	 RIP: 403c5a	 Bytes: 0
block_.L_403c5a:

  ; Code: movq -0x148(%rbp), %rax	 RIP: 403c5a	 Bytes: 7
  %loadMem_403c5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c5a = call %struct.Memory* @routine_movq_MINUS0x148__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c5a)
  store %struct.Memory* %call_403c5a, %struct.Memory** %MEMORY

  ; Code: shlq $0x1, %rax	 RIP: 403c61	 Bytes: 4
  %loadMem_403c61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c61 = call %struct.Memory* @routine_shlq__0x1___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c61)
  store %struct.Memory* %call_403c61, %struct.Memory** %MEMORY

  ; Code: movq -0x118(%rbp), %rcx	 RIP: 403c65	 Bytes: 7
  %loadMem_403c65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c65 = call %struct.Memory* @routine_movq_MINUS0x118__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c65)
  store %struct.Memory* %call_403c65, %struct.Memory** %MEMORY

  ; Code: movq %rax, (%rcx)	 RIP: 403c6c	 Bytes: 3
  %loadMem_403c6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c6c = call %struct.Memory* @routine_movq__rax____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c6c)
  store %struct.Memory* %call_403c6c, %struct.Memory** %MEMORY

  ; Code: movq -0x118(%rbp), %rcx	 RIP: 403c6f	 Bytes: 7
  %loadMem_403c6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c6f = call %struct.Memory* @routine_movq_MINUS0x118__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c6f)
  store %struct.Memory* %call_403c6f, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x38(%rcx)	 RIP: 403c76	 Bytes: 4
  %loadMem_403c76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c76 = call %struct.Memory* @routine_movq__rax__0x38__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c76)
  store %struct.Memory* %call_403c76, %struct.Memory** %MEMORY

  ; Code: movq -0x118(%rbp), %rax	 RIP: 403c7a	 Bytes: 7
  %loadMem_403c7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c7a = call %struct.Memory* @routine_movq_MINUS0x118__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c7a)
  store %struct.Memory* %call_403c7a, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rax), %rax	 RIP: 403c81	 Bytes: 4
  %loadMem_403c81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c81 = call %struct.Memory* @routine_movq_0x8__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c81)
  store %struct.Memory* %call_403c81, %struct.Memory** %MEMORY

  ; Code: movq 0x38(%rax), %rax	 RIP: 403c85	 Bytes: 4
  %loadMem_403c85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c85 = call %struct.Memory* @routine_movq_0x38__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c85)
  store %struct.Memory* %call_403c85, %struct.Memory** %MEMORY

  ; Code: movq -0x118(%rbp), %rcx	 RIP: 403c89	 Bytes: 7
  %loadMem_403c89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c89 = call %struct.Memory* @routine_movq_MINUS0x118__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c89)
  store %struct.Memory* %call_403c89, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x20(%rcx)	 RIP: 403c90	 Bytes: 4
  %loadMem_403c90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c90 = call %struct.Memory* @routine_movq__rax__0x20__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c90)
  store %struct.Memory* %call_403c90, %struct.Memory** %MEMORY

  ; Code: movq -0x118(%rbp), %rax	 RIP: 403c94	 Bytes: 7
  %loadMem_403c94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c94 = call %struct.Memory* @routine_movq_MINUS0x118__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c94)
  store %struct.Memory* %call_403c94, %struct.Memory** %MEMORY

  ; Code: movq -0x118(%rbp), %rcx	 RIP: 403c9b	 Bytes: 7
  %loadMem_403c9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403c9b = call %struct.Memory* @routine_movq_MINUS0x118__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403c9b)
  store %struct.Memory* %call_403c9b, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rcx), %rcx	 RIP: 403ca2	 Bytes: 4
  %loadMem_403ca2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ca2 = call %struct.Memory* @routine_movq_0x8__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ca2)
  store %struct.Memory* %call_403ca2, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x38(%rcx)	 RIP: 403ca6	 Bytes: 4
  %loadMem_403ca6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ca6 = call %struct.Memory* @routine_movq__rax__0x38__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ca6)
  store %struct.Memory* %call_403ca6, %struct.Memory** %MEMORY

  ; Code: movq -0x118(%rbp), %rax	 RIP: 403caa	 Bytes: 7
  %loadMem_403caa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403caa = call %struct.Memory* @routine_movq_MINUS0x118__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403caa)
  store %struct.Memory* %call_403caa, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rax), %rax	 RIP: 403cb1	 Bytes: 4
  %loadMem_403cb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403cb1 = call %struct.Memory* @routine_movq_0x10__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403cb1)
  store %struct.Memory* %call_403cb1, %struct.Memory** %MEMORY

  ; Code: movq 0x40(%rax), %rax	 RIP: 403cb5	 Bytes: 4
  %loadMem_403cb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403cb5 = call %struct.Memory* @routine_movq_0x40__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403cb5)
  store %struct.Memory* %call_403cb5, %struct.Memory** %MEMORY

  ; Code: movq -0x118(%rbp), %rcx	 RIP: 403cb9	 Bytes: 7
  %loadMem_403cb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403cb9 = call %struct.Memory* @routine_movq_MINUS0x118__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403cb9)
  store %struct.Memory* %call_403cb9, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x28(%rcx)	 RIP: 403cc0	 Bytes: 4
  %loadMem_403cc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403cc0 = call %struct.Memory* @routine_movq__rax__0x28__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403cc0)
  store %struct.Memory* %call_403cc0, %struct.Memory** %MEMORY

  ; Code: movq -0x118(%rbp), %rax	 RIP: 403cc4	 Bytes: 7
  %loadMem_403cc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403cc4 = call %struct.Memory* @routine_movq_MINUS0x118__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403cc4)
  store %struct.Memory* %call_403cc4, %struct.Memory** %MEMORY

  ; Code: movq -0x118(%rbp), %rcx	 RIP: 403ccb	 Bytes: 7
  %loadMem_403ccb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ccb = call %struct.Memory* @routine_movq_MINUS0x118__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ccb)
  store %struct.Memory* %call_403ccb, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rcx), %rcx	 RIP: 403cd2	 Bytes: 4
  %loadMem_403cd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403cd2 = call %struct.Memory* @routine_movq_0x10__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403cd2)
  store %struct.Memory* %call_403cd2, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x40(%rcx)	 RIP: 403cd6	 Bytes: 4
  %loadMem_403cd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403cd6 = call %struct.Memory* @routine_movq__rax__0x40__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403cd6)
  store %struct.Memory* %call_403cd6, %struct.Memory** %MEMORY

  ; Code: movq -0x118(%rbp), %rax	 RIP: 403cda	 Bytes: 7
  %loadMem_403cda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403cda = call %struct.Memory* @routine_movq_MINUS0x118__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403cda)
  store %struct.Memory* %call_403cda, %struct.Memory** %MEMORY

  ; Code: addq $0x40, %rax	 RIP: 403ce1	 Bytes: 4
  %loadMem_403ce1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ce1 = call %struct.Memory* @routine_addq__0x40___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ce1)
  store %struct.Memory* %call_403ce1, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x118(%rbp)	 RIP: 403ce5	 Bytes: 7
  %loadMem_403ce5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ce5 = call %struct.Memory* @routine_movq__rax__MINUS0x118__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ce5)
  store %struct.Memory* %call_403ce5, %struct.Memory** %MEMORY

  ; Code: movq -0x110(%rbp), %rax	 RIP: 403cec	 Bytes: 7
  %loadMem_403cec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403cec = call %struct.Memory* @routine_movq_MINUS0x110__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403cec)
  store %struct.Memory* %call_403cec, %struct.Memory** %MEMORY

  ; Code: addq $0x1, %rax	 RIP: 403cf3	 Bytes: 4
  %loadMem_403cf3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403cf3 = call %struct.Memory* @routine_addq__0x1___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403cf3)
  store %struct.Memory* %call_403cf3, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x110(%rbp)	 RIP: 403cf7	 Bytes: 7
  %loadMem_403cf7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403cf7 = call %struct.Memory* @routine_movq__rax__MINUS0x110__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403cf7)
  store %struct.Memory* %call_403cf7, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4038c6	 RIP: 403cfe	 Bytes: 5
  %loadMem_403cfe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403cfe = call %struct.Memory* @routine_jmpq_.L_4038c6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403cfe, i64 -1080, i64 5)
  store %struct.Memory* %call_403cfe, %struct.Memory** %MEMORY

  br label %block_.L_4038c6

  ; Code: .L_403d03:	 RIP: 403d03	 Bytes: 0
block_.L_403d03:

  ; Code: movq -0x110(%rbp), %rax	 RIP: 403d03	 Bytes: 7
  %loadMem_403d03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d03 = call %struct.Memory* @routine_movq_MINUS0x110__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d03)
  store %struct.Memory* %call_403d03, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 403d0a	 Bytes: 4
  %loadMem_403d0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d0a = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d0a)
  store %struct.Memory* %call_403d0a, %struct.Memory** %MEMORY

  ; Code: movq 0x198(%rcx), %rcx	 RIP: 403d0e	 Bytes: 7
  %loadMem_403d0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d0e = call %struct.Memory* @routine_movq_0x198__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d0e)
  store %struct.Memory* %call_403d0e, %struct.Memory** %MEMORY

  ; Code: addq $0x1, %rcx	 RIP: 403d15	 Bytes: 4
  %loadMem_403d15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d15 = call %struct.Memory* @routine_addq__0x1___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d15)
  store %struct.Memory* %call_403d15, %struct.Memory** %MEMORY

  ; Code: cmpq %rcx, %rax	 RIP: 403d19	 Bytes: 3
  %loadMem_403d19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d19 = call %struct.Memory* @routine_cmpq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d19)
  store %struct.Memory* %call_403d19, %struct.Memory** %MEMORY

  ; Code: je .L_403d2f	 RIP: 403d1c	 Bytes: 6
  %loadMem_403d1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d1c = call %struct.Memory* @routine_je_.L_403d2f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d1c, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_403d1c, %struct.Memory** %MEMORY

  %loadBr_403d1c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_403d1c = icmp eq i8 %loadBr_403d1c, 1
  br i1 %cmpBr_403d1c, label %block_.L_403d2f, label %block_403d22

block_403d22:
  ; Code: movq $0xffffffffffffffff, -0x8(%rbp)	 RIP: 403d22	 Bytes: 8
  %loadMem_403d22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d22 = call %struct.Memory* @routine_movq__0xffffffffffffffff__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d22)
  store %struct.Memory* %call_403d22, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40407e	 RIP: 403d2a	 Bytes: 5
  %loadMem_403d2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d2a = call %struct.Memory* @routine_jmpq_.L_40407e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d2a, i64 852, i64 5)
  store %struct.Memory* %call_403d2a, %struct.Memory** %MEMORY

  br label %block_.L_40407e

  ; Code: .L_403d2f:	 RIP: 403d2f	 Bytes: 0
block_.L_403d2f:

  ; Code: movq $0x0, -0x110(%rbp)	 RIP: 403d2f	 Bytes: 11
  %loadMem_403d2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d2f = call %struct.Memory* @routine_movq__0x0__MINUS0x110__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d2f)
  store %struct.Memory* %call_403d2f, %struct.Memory** %MEMORY

  ; Code: .L_403d3a:	 RIP: 403d3a	 Bytes: 0
  br label %block_.L_403d3a
block_.L_403d3a:

  ; Code: movq -0x110(%rbp), %rax	 RIP: 403d3a	 Bytes: 7
  %loadMem_403d3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d3a = call %struct.Memory* @routine_movq_MINUS0x110__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d3a)
  store %struct.Memory* %call_403d3a, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 403d41	 Bytes: 4
  %loadMem_403d41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d41 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d41)
  store %struct.Memory* %call_403d41, %struct.Memory** %MEMORY

  ; Code: cmpq 0x1b0(%rcx), %rax	 RIP: 403d45	 Bytes: 7
  %loadMem_403d45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d45 = call %struct.Memory* @routine_cmpq_0x1b0__rcx____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d45)
  store %struct.Memory* %call_403d45, %struct.Memory** %MEMORY

  ; Code: jge .L_403ea5	 RIP: 403d4c	 Bytes: 6
  %loadMem_403d4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d4c = call %struct.Memory* @routine_jge_.L_403ea5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d4c, i8* %BRANCH_TAKEN, i64 345, i64 6, i64 6)
  store %struct.Memory* %call_403d4c, %struct.Memory** %MEMORY

  %loadBr_403d4c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_403d4c = icmp eq i8 %loadBr_403d4c, 1
  br i1 %cmpBr_403d4c, label %block_.L_403ea5, label %block_403d52

block_403d52:
  ; Code: movl $0xc8, %esi	 RIP: 403d52	 Bytes: 5
  %loadMem_403d52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d52 = call %struct.Memory* @routine_movl__0xc8___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d52)
  store %struct.Memory* %call_403d52, %struct.Memory** %MEMORY

  ; Code: leaq -0xf0(%rbp), %rdi	 RIP: 403d57	 Bytes: 7
  %loadMem_403d57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d57 = call %struct.Memory* @routine_leaq_MINUS0xf0__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d57)
  store %struct.Memory* %call_403d57, %struct.Memory** %MEMORY

  ; Code: movq -0x18(%rbp), %rdx	 RIP: 403d5e	 Bytes: 4
  %loadMem_403d5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d5e = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d5e)
  store %struct.Memory* %call_403d5e, %struct.Memory** %MEMORY

  ; Code: callq .fgets_plt	 RIP: 403d62	 Bytes: 5
  %loadMem1_403d62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_403d62 = call %struct.Memory* @routine_callq_.fgets_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_403d62, i64 -13554, i64 5, i64 5)
  store %struct.Memory* %call1_403d62, %struct.Memory** %MEMORY

  %loadMem2_403d62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_403d62 = load i64, i64* %3
  %call2_403d62 = call %struct.Memory* @sub_400870.fgets_plt(%struct.State* %0, i64  %loadPC_403d62, %struct.Memory* %loadMem2_403d62)
  store %struct.Memory* %call2_403d62, %struct.Memory** %MEMORY

  ; Code: movq $0x4049e1, %rsi	 RIP: 403d67	 Bytes: 10
  %loadMem_403d67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d67 = call %struct.Memory* @routine_movq__0x4049e1___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d67)
  store %struct.Memory* %call_403d67, %struct.Memory** %MEMORY

  ; Code: leaq -0xf8(%rbp), %rdx	 RIP: 403d71	 Bytes: 7
  %loadMem_403d71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d71 = call %struct.Memory* @routine_leaq_MINUS0xf8__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d71)
  store %struct.Memory* %call_403d71, %struct.Memory** %MEMORY

  ; Code: leaq -0x100(%rbp), %rcx	 RIP: 403d78	 Bytes: 7
  %loadMem_403d78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d78 = call %struct.Memory* @routine_leaq_MINUS0x100__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d78)
  store %struct.Memory* %call_403d78, %struct.Memory** %MEMORY

  ; Code: leaq -0x108(%rbp), %r8	 RIP: 403d7f	 Bytes: 7
  %loadMem_403d7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d7f = call %struct.Memory* @routine_leaq_MINUS0x108__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d7f)
  store %struct.Memory* %call_403d7f, %struct.Memory** %MEMORY

  ; Code: leaq -0xf0(%rbp), %rdi	 RIP: 403d86	 Bytes: 7
  %loadMem_403d86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d86 = call %struct.Memory* @routine_leaq_MINUS0xf0__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d86)
  store %struct.Memory* %call_403d86, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x150(%rbp)	 RIP: 403d8d	 Bytes: 7
  %loadMem_403d8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d8d = call %struct.Memory* @routine_movq__rax__MINUS0x150__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d8d)
  store %struct.Memory* %call_403d8d, %struct.Memory** %MEMORY

  ; Code: movb $0x0, %al	 RIP: 403d94	 Bytes: 2
  %loadMem_403d94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d94 = call %struct.Memory* @routine_movb__0x0___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d94)
  store %struct.Memory* %call_403d94, %struct.Memory** %MEMORY

  ; Code: callq .__isoc99_sscanf_plt	 RIP: 403d96	 Bytes: 5
  %loadMem1_403d96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_403d96 = call %struct.Memory* @routine_callq_.__isoc99_sscanf_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_403d96, i64 -13526, i64 5, i64 5)
  store %struct.Memory* %call1_403d96, %struct.Memory** %MEMORY

  %loadMem2_403d96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_403d96 = load i64, i64* %3
  %call2_403d96 = call %struct.Memory* @ext___isoc99_sscanf(%struct.State* %0, i64  %loadPC_403d96, %struct.Memory* %loadMem2_403d96)
  store %struct.Memory* %call2_403d96, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %eax	 RIP: 403d9b	 Bytes: 3
  %loadMem_403d9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d9b = call %struct.Memory* @routine_cmpl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d9b)
  store %struct.Memory* %call_403d9b, %struct.Memory** %MEMORY

  ; Code: je .L_403db1	 RIP: 403d9e	 Bytes: 6
  %loadMem_403d9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403d9e = call %struct.Memory* @routine_je_.L_403db1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403d9e, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_403d9e, %struct.Memory** %MEMORY

  %loadBr_403d9e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_403d9e = icmp eq i8 %loadBr_403d9e, 1
  br i1 %cmpBr_403d9e, label %block_.L_403db1, label %block_403da4

block_403da4:
  ; Code: movq $0xffffffffffffffff, -0x8(%rbp)	 RIP: 403da4	 Bytes: 8
  %loadMem_403da4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403da4 = call %struct.Memory* @routine_movq__0xffffffffffffffff__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403da4)
  store %struct.Memory* %call_403da4, %struct.Memory** %MEMORY

  ; Code: jmpq .L_40407e	 RIP: 403dac	 Bytes: 5
  %loadMem_403dac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403dac = call %struct.Memory* @routine_jmpq_.L_40407e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403dac, i64 722, i64 5)
  store %struct.Memory* %call_403dac, %struct.Memory** %MEMORY

  br label %block_.L_40407e

  ; Code: .L_403db1:	 RIP: 403db1	 Bytes: 0
block_.L_403db1:

  ; Code: movq -0x120(%rbp), %rax	 RIP: 403db1	 Bytes: 7
  %loadMem_403db1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403db1 = call %struct.Memory* @routine_movq_MINUS0x120__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403db1)
  store %struct.Memory* %call_403db1, %struct.Memory** %MEMORY

  ; Code: movq -0xf8(%rbp), %rcx	 RIP: 403db8	 Bytes: 7
  %loadMem_403db8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403db8 = call %struct.Memory* @routine_movq_MINUS0xf8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403db8)
  store %struct.Memory* %call_403db8, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdx	 RIP: 403dbf	 Bytes: 4
  %loadMem_403dbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403dbf = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403dbf)
  store %struct.Memory* %call_403dbf, %struct.Memory** %MEMORY

  ; Code: addq 0x198(%rdx), %rcx	 RIP: 403dc3	 Bytes: 7
  %loadMem_403dc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403dc3 = call %struct.Memory* @routine_addq_0x198__rdx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403dc3)
  store %struct.Memory* %call_403dc3, %struct.Memory** %MEMORY

  ; Code: imulq $0x68, %rcx, %rcx	 RIP: 403dca	 Bytes: 4
  %loadMem_403dca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403dca = call %struct.Memory* @routine_imulq__0x68___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403dca)
  store %struct.Memory* %call_403dca, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 403dce	 Bytes: 3
  %loadMem_403dce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403dce = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403dce)
  store %struct.Memory* %call_403dce, %struct.Memory** %MEMORY

  ; Code: movq -0x118(%rbp), %rcx	 RIP: 403dd1	 Bytes: 7
  %loadMem_403dd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403dd1 = call %struct.Memory* @routine_movq_MINUS0x118__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403dd1)
  store %struct.Memory* %call_403dd1, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x8(%rcx)	 RIP: 403dd8	 Bytes: 4
  %loadMem_403dd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403dd8 = call %struct.Memory* @routine_movq__rax__0x8__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403dd8)
  store %struct.Memory* %call_403dd8, %struct.Memory** %MEMORY

  ; Code: movq -0x120(%rbp), %rax	 RIP: 403ddc	 Bytes: 7
  %loadMem_403ddc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ddc = call %struct.Memory* @routine_movq_MINUS0x120__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ddc)
  store %struct.Memory* %call_403ddc, %struct.Memory** %MEMORY

  ; Code: imulq $0x68, -0x100(%rbp), %rcx	 RIP: 403de3	 Bytes: 8
  %loadMem_403de3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403de3 = call %struct.Memory* @routine_imulq__0x68__MINUS0x100__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403de3)
  store %struct.Memory* %call_403de3, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 403deb	 Bytes: 3
  %loadMem_403deb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403deb = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403deb)
  store %struct.Memory* %call_403deb, %struct.Memory** %MEMORY

  ; Code: movq -0x118(%rbp), %rcx	 RIP: 403dee	 Bytes: 7
  %loadMem_403dee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403dee = call %struct.Memory* @routine_movq_MINUS0x118__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403dee)
  store %struct.Memory* %call_403dee, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x10(%rcx)	 RIP: 403df5	 Bytes: 4
  %loadMem_403df5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403df5 = call %struct.Memory* @routine_movq__rax__0x10__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403df5)
  store %struct.Memory* %call_403df5, %struct.Memory** %MEMORY

  ; Code: movq -0x108(%rbp), %rax	 RIP: 403df9	 Bytes: 7
  %loadMem_403df9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403df9 = call %struct.Memory* @routine_movq_MINUS0x108__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403df9)
  store %struct.Memory* %call_403df9, %struct.Memory** %MEMORY

  ; Code: movq -0x118(%rbp), %rcx	 RIP: 403e00	 Bytes: 7
  %loadMem_403e00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e00 = call %struct.Memory* @routine_movq_MINUS0x118__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e00)
  store %struct.Memory* %call_403e00, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x38(%rcx)	 RIP: 403e07	 Bytes: 4
  %loadMem_403e07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e07 = call %struct.Memory* @routine_movq__rax__0x38__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e07)
  store %struct.Memory* %call_403e07, %struct.Memory** %MEMORY

  ; Code: movq -0x108(%rbp), %rax	 RIP: 403e0b	 Bytes: 7
  %loadMem_403e0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e0b = call %struct.Memory* @routine_movq_MINUS0x108__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e0b)
  store %struct.Memory* %call_403e0b, %struct.Memory** %MEMORY

  ; Code: movq -0x118(%rbp), %rcx	 RIP: 403e12	 Bytes: 7
  %loadMem_403e12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e12 = call %struct.Memory* @routine_movq_MINUS0x118__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e12)
  store %struct.Memory* %call_403e12, %struct.Memory** %MEMORY

  ; Code: movq %rax, (%rcx)	 RIP: 403e19	 Bytes: 3
  %loadMem_403e19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e19 = call %struct.Memory* @routine_movq__rax____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e19)
  store %struct.Memory* %call_403e19, %struct.Memory** %MEMORY

  ; Code: movq -0x118(%rbp), %rax	 RIP: 403e1c	 Bytes: 7
  %loadMem_403e1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e1c = call %struct.Memory* @routine_movq_MINUS0x118__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e1c)
  store %struct.Memory* %call_403e1c, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rax), %rax	 RIP: 403e23	 Bytes: 4
  %loadMem_403e23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e23 = call %struct.Memory* @routine_movq_0x8__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e23)
  store %struct.Memory* %call_403e23, %struct.Memory** %MEMORY

  ; Code: movq 0x38(%rax), %rax	 RIP: 403e27	 Bytes: 4
  %loadMem_403e27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e27 = call %struct.Memory* @routine_movq_0x38__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e27)
  store %struct.Memory* %call_403e27, %struct.Memory** %MEMORY

  ; Code: movq -0x118(%rbp), %rcx	 RIP: 403e2b	 Bytes: 7
  %loadMem_403e2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e2b = call %struct.Memory* @routine_movq_MINUS0x118__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e2b)
  store %struct.Memory* %call_403e2b, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x20(%rcx)	 RIP: 403e32	 Bytes: 4
  %loadMem_403e32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e32 = call %struct.Memory* @routine_movq__rax__0x20__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e32)
  store %struct.Memory* %call_403e32, %struct.Memory** %MEMORY

  ; Code: movq -0x118(%rbp), %rax	 RIP: 403e36	 Bytes: 7
  %loadMem_403e36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e36 = call %struct.Memory* @routine_movq_MINUS0x118__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e36)
  store %struct.Memory* %call_403e36, %struct.Memory** %MEMORY

  ; Code: movq -0x118(%rbp), %rcx	 RIP: 403e3d	 Bytes: 7
  %loadMem_403e3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e3d = call %struct.Memory* @routine_movq_MINUS0x118__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e3d)
  store %struct.Memory* %call_403e3d, %struct.Memory** %MEMORY

  ; Code: movq 0x8(%rcx), %rcx	 RIP: 403e44	 Bytes: 4
  %loadMem_403e44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e44 = call %struct.Memory* @routine_movq_0x8__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e44)
  store %struct.Memory* %call_403e44, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x38(%rcx)	 RIP: 403e48	 Bytes: 4
  %loadMem_403e48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e48 = call %struct.Memory* @routine_movq__rax__0x38__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e48)
  store %struct.Memory* %call_403e48, %struct.Memory** %MEMORY

  ; Code: movq -0x118(%rbp), %rax	 RIP: 403e4c	 Bytes: 7
  %loadMem_403e4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e4c = call %struct.Memory* @routine_movq_MINUS0x118__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e4c)
  store %struct.Memory* %call_403e4c, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rax), %rax	 RIP: 403e53	 Bytes: 4
  %loadMem_403e53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e53 = call %struct.Memory* @routine_movq_0x10__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e53)
  store %struct.Memory* %call_403e53, %struct.Memory** %MEMORY

  ; Code: movq 0x40(%rax), %rax	 RIP: 403e57	 Bytes: 4
  %loadMem_403e57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e57 = call %struct.Memory* @routine_movq_0x40__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e57)
  store %struct.Memory* %call_403e57, %struct.Memory** %MEMORY

  ; Code: movq -0x118(%rbp), %rcx	 RIP: 403e5b	 Bytes: 7
  %loadMem_403e5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e5b = call %struct.Memory* @routine_movq_MINUS0x118__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e5b)
  store %struct.Memory* %call_403e5b, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x28(%rcx)	 RIP: 403e62	 Bytes: 4
  %loadMem_403e62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e62 = call %struct.Memory* @routine_movq__rax__0x28__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e62)
  store %struct.Memory* %call_403e62, %struct.Memory** %MEMORY

  ; Code: movq -0x118(%rbp), %rax	 RIP: 403e66	 Bytes: 7
  %loadMem_403e66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e66 = call %struct.Memory* @routine_movq_MINUS0x118__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e66)
  store %struct.Memory* %call_403e66, %struct.Memory** %MEMORY

  ; Code: movq -0x118(%rbp), %rcx	 RIP: 403e6d	 Bytes: 7
  %loadMem_403e6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e6d = call %struct.Memory* @routine_movq_MINUS0x118__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e6d)
  store %struct.Memory* %call_403e6d, %struct.Memory** %MEMORY

  ; Code: movq 0x10(%rcx), %rcx	 RIP: 403e74	 Bytes: 4
  %loadMem_403e74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e74 = call %struct.Memory* @routine_movq_0x10__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e74)
  store %struct.Memory* %call_403e74, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x40(%rcx)	 RIP: 403e78	 Bytes: 4
  %loadMem_403e78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e78 = call %struct.Memory* @routine_movq__rax__0x40__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e78)
  store %struct.Memory* %call_403e78, %struct.Memory** %MEMORY

  ; Code: movq -0x110(%rbp), %rax	 RIP: 403e7c	 Bytes: 7
  %loadMem_403e7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e7c = call %struct.Memory* @routine_movq_MINUS0x110__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e7c)
  store %struct.Memory* %call_403e7c, %struct.Memory** %MEMORY

  ; Code: addq $0x1, %rax	 RIP: 403e83	 Bytes: 4
  %loadMem_403e83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e83 = call %struct.Memory* @routine_addq__0x1___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e83)
  store %struct.Memory* %call_403e83, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x110(%rbp)	 RIP: 403e87	 Bytes: 7
  %loadMem_403e87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e87 = call %struct.Memory* @routine_movq__rax__MINUS0x110__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e87)
  store %struct.Memory* %call_403e87, %struct.Memory** %MEMORY

  ; Code: movq -0x118(%rbp), %rax	 RIP: 403e8e	 Bytes: 7
  %loadMem_403e8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e8e = call %struct.Memory* @routine_movq_MINUS0x118__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e8e)
  store %struct.Memory* %call_403e8e, %struct.Memory** %MEMORY

  ; Code: addq $0x40, %rax	 RIP: 403e95	 Bytes: 4
  %loadMem_403e95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e95 = call %struct.Memory* @routine_addq__0x40___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e95)
  store %struct.Memory* %call_403e95, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x118(%rbp)	 RIP: 403e99	 Bytes: 7
  %loadMem_403e99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403e99 = call %struct.Memory* @routine_movq__rax__MINUS0x118__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403e99)
  store %struct.Memory* %call_403e99, %struct.Memory** %MEMORY

  ; Code: jmpq .L_403d3a	 RIP: 403ea0	 Bytes: 5
  %loadMem_403ea0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ea0 = call %struct.Memory* @routine_jmpq_.L_403d3a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ea0, i64 -358, i64 5)
  store %struct.Memory* %call_403ea0, %struct.Memory** %MEMORY

  br label %block_.L_403d3a

  ; Code: .L_403ea5:	 RIP: 403ea5	 Bytes: 0
block_.L_403ea5:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 403ea5	 Bytes: 4
  %loadMem_403ea5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ea5 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ea5)
  store %struct.Memory* %call_403ea5, %struct.Memory** %MEMORY

  ; Code: movq 0x240(%rax), %rax	 RIP: 403ea9	 Bytes: 7
  %loadMem_403ea9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ea9 = call %struct.Memory* @routine_movq_0x240__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ea9)
  store %struct.Memory* %call_403ea9, %struct.Memory** %MEMORY

  ; Code: cmpq -0x118(%rbp), %rax	 RIP: 403eb0	 Bytes: 7
  %loadMem_403eb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403eb0 = call %struct.Memory* @routine_cmpq_MINUS0x118__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403eb0)
  store %struct.Memory* %call_403eb0, %struct.Memory** %MEMORY

  ; Code: je .L_403f4b	 RIP: 403eb7	 Bytes: 6
  %loadMem_403eb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403eb7 = call %struct.Memory* @routine_je_.L_403f4b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403eb7, i8* %BRANCH_TAKEN, i64 148, i64 6, i64 6)
  store %struct.Memory* %call_403eb7, %struct.Memory** %MEMORY

  %loadBr_403eb7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_403eb7 = icmp eq i8 %loadBr_403eb7, 1
  br i1 %cmpBr_403eb7, label %block_.L_403f4b, label %block_403ebd

block_403ebd:
  ; Code: movq -0x118(%rbp), %rax	 RIP: 403ebd	 Bytes: 7
  %loadMem_403ebd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ebd = call %struct.Memory* @routine_movq_MINUS0x118__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ebd)
  store %struct.Memory* %call_403ebd, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 403ec4	 Bytes: 4
  %loadMem_403ec4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ec4 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ec4)
  store %struct.Memory* %call_403ec4, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x240(%rcx)	 RIP: 403ec8	 Bytes: 7
  %loadMem_403ec8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ec8 = call %struct.Memory* @routine_movq__rax__0x240__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ec8)
  store %struct.Memory* %call_403ec8, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 403ecf	 Bytes: 4
  %loadMem_403ecf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ecf = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ecf)
  store %struct.Memory* %call_403ecf, %struct.Memory** %MEMORY

  ; Code: movq 0x238(%rax), %rax	 RIP: 403ed3	 Bytes: 7
  %loadMem_403ed3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ed3 = call %struct.Memory* @routine_movq_0x238__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ed3)
  store %struct.Memory* %call_403ed3, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x118(%rbp)	 RIP: 403eda	 Bytes: 7
  %loadMem_403eda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403eda = call %struct.Memory* @routine_movq__rax__MINUS0x118__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403eda)
  store %struct.Memory* %call_403eda, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 403ee1	 Bytes: 4
  %loadMem_403ee1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ee1 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ee1)
  store %struct.Memory* %call_403ee1, %struct.Memory** %MEMORY

  ; Code: movq $0x0, 0x1a8(%rax)	 RIP: 403ee5	 Bytes: 11
  %loadMem_403ee5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ee5 = call %struct.Memory* @routine_movq__0x0__0x1a8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ee5)
  store %struct.Memory* %call_403ee5, %struct.Memory** %MEMORY

  ; Code: .L_403ef0:	 RIP: 403ef0	 Bytes: 0
  br label %block_.L_403ef0
block_.L_403ef0:

  ; Code: movq -0x118(%rbp), %rax	 RIP: 403ef0	 Bytes: 7
  %loadMem_403ef0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ef0 = call %struct.Memory* @routine_movq_MINUS0x118__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ef0)
  store %struct.Memory* %call_403ef0, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 403ef7	 Bytes: 4
  %loadMem_403ef7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ef7 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ef7)
  store %struct.Memory* %call_403ef7, %struct.Memory** %MEMORY

  ; Code: cmpq 0x240(%rcx), %rax	 RIP: 403efb	 Bytes: 7
  %loadMem_403efb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403efb = call %struct.Memory* @routine_cmpq_0x240__rcx____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403efb)
  store %struct.Memory* %call_403efb, %struct.Memory** %MEMORY

  ; Code: jae .L_403f35	 RIP: 403f02	 Bytes: 6
  %loadMem_403f02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403f02 = call %struct.Memory* @routine_jae_.L_403f35(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403f02, i8* %BRANCH_TAKEN, i64 51, i64 6, i64 6)
  store %struct.Memory* %call_403f02, %struct.Memory** %MEMORY

  %loadBr_403f02 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_403f02 = icmp eq i8 %loadBr_403f02, 1
  br i1 %cmpBr_403f02, label %block_.L_403f35, label %block_403f08

block_403f08:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 403f08	 Bytes: 4
  %loadMem_403f08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403f08 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403f08)
  store %struct.Memory* %call_403f08, %struct.Memory** %MEMORY

  ; Code: movq 0x1a8(%rax), %rcx	 RIP: 403f0c	 Bytes: 7
  %loadMem_403f0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403f0c = call %struct.Memory* @routine_movq_0x1a8__rax____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403f0c)
  store %struct.Memory* %call_403f0c, %struct.Memory** %MEMORY

  ; Code: addq $0x1, %rcx	 RIP: 403f13	 Bytes: 4
  %loadMem_403f13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403f13 = call %struct.Memory* @routine_addq__0x1___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403f13)
  store %struct.Memory* %call_403f13, %struct.Memory** %MEMORY

  ; Code: movq %rcx, 0x1a8(%rax)	 RIP: 403f17	 Bytes: 7
  %loadMem_403f17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403f17 = call %struct.Memory* @routine_movq__rcx__0x1a8__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403f17)
  store %struct.Memory* %call_403f17, %struct.Memory** %MEMORY

  ; Code: movq -0x118(%rbp), %rax	 RIP: 403f1e	 Bytes: 7
  %loadMem_403f1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403f1e = call %struct.Memory* @routine_movq_MINUS0x118__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403f1e)
  store %struct.Memory* %call_403f1e, %struct.Memory** %MEMORY

  ; Code: addq $0x40, %rax	 RIP: 403f25	 Bytes: 4
  %loadMem_403f25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403f25 = call %struct.Memory* @routine_addq__0x40___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403f25)
  store %struct.Memory* %call_403f25, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x118(%rbp)	 RIP: 403f29	 Bytes: 7
  %loadMem_403f29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403f29 = call %struct.Memory* @routine_movq__rax__MINUS0x118__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403f29)
  store %struct.Memory* %call_403f29, %struct.Memory** %MEMORY

  ; Code: jmpq .L_403ef0	 RIP: 403f30	 Bytes: 5
  %loadMem_403f30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403f30 = call %struct.Memory* @routine_jmpq_.L_403ef0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403f30, i64 -64, i64 5)
  store %struct.Memory* %call_403f30, %struct.Memory** %MEMORY

  br label %block_.L_403ef0

  ; Code: .L_403f35:	 RIP: 403f35	 Bytes: 0
block_.L_403f35:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 403f35	 Bytes: 4
  %loadMem_403f35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403f35 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403f35)
  store %struct.Memory* %call_403f35, %struct.Memory** %MEMORY

  ; Code: movq 0x1a8(%rax), %rax	 RIP: 403f39	 Bytes: 7
  %loadMem_403f39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403f39 = call %struct.Memory* @routine_movq_0x1a8__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403f39)
  store %struct.Memory* %call_403f39, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 403f40	 Bytes: 4
  %loadMem_403f40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403f40 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403f40)
  store %struct.Memory* %call_403f40, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x1b0(%rcx)	 RIP: 403f44	 Bytes: 7
  %loadMem_403f44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403f44 = call %struct.Memory* @routine_movq__rax__0x1b0__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403f44)
  store %struct.Memory* %call_403f44, %struct.Memory** %MEMORY

  ; Code: .L_403f4b:	 RIP: 403f4b	 Bytes: 0
  br label %block_.L_403f4b
block_.L_403f4b:

  ; Code: movq -0x18(%rbp), %rdi	 RIP: 403f4b	 Bytes: 4
  %loadMem_403f4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403f4b = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403f4b)
  store %struct.Memory* %call_403f4b, %struct.Memory** %MEMORY

  ; Code: callq .fclose_plt	 RIP: 403f4f	 Bytes: 5
  %loadMem1_403f4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_403f4f = call %struct.Memory* @routine_callq_.fclose_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_403f4f, i64 -14095, i64 5, i64 5)
  store %struct.Memory* %call1_403f4f, %struct.Memory** %MEMORY

  %loadMem2_403f4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_403f4f = load i64, i64* %3
  %call2_403f4f = call %struct.Memory* @sub_400840.fclose_plt(%struct.State* %0, i64  %loadPC_403f4f, %struct.Memory* %loadMem2_403f4f)
  store %struct.Memory* %call2_403f4f, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rdi	 RIP: 403f54	 Bytes: 4
  %loadMem_403f54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403f54 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403f54)
  store %struct.Memory* %call_403f54, %struct.Memory** %MEMORY

  ; Code: movb $0x0, 0xc8(%rdi)	 RIP: 403f58	 Bytes: 7
  %loadMem_403f58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403f58 = call %struct.Memory* @routine_movb__0x0__0xc8__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403f58)
  store %struct.Memory* %call_403f58, %struct.Memory** %MEMORY

  ; Code: movq $0x1, -0x110(%rbp)	 RIP: 403f5f	 Bytes: 11
  %loadMem_403f5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403f5f = call %struct.Memory* @routine_movq__0x1__MINUS0x110__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403f5f)
  store %struct.Memory* %call_403f5f, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x154(%rbp)	 RIP: 403f6a	 Bytes: 6
  %loadMem_403f6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403f6a = call %struct.Memory* @routine_movl__eax__MINUS0x154__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403f6a)
  store %struct.Memory* %call_403f6a, %struct.Memory** %MEMORY

  ; Code: .L_403f70:	 RIP: 403f70	 Bytes: 0
  br label %block_.L_403f70
block_.L_403f70:

  ; Code: movq -0x110(%rbp), %rax	 RIP: 403f70	 Bytes: 7
  %loadMem_403f70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403f70 = call %struct.Memory* @routine_movq_MINUS0x110__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403f70)
  store %struct.Memory* %call_403f70, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 403f77	 Bytes: 4
  %loadMem_403f77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403f77 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403f77)
  store %struct.Memory* %call_403f77, %struct.Memory** %MEMORY

  ; Code: cmpq 0x198(%rcx), %rax	 RIP: 403f7b	 Bytes: 7
  %loadMem_403f7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403f7b = call %struct.Memory* @routine_cmpq_0x198__rcx____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403f7b)
  store %struct.Memory* %call_403f7b, %struct.Memory** %MEMORY

  ; Code: jg .L_404076	 RIP: 403f82	 Bytes: 6
  %loadMem_403f82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403f82 = call %struct.Memory* @routine_jg_.L_404076(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403f82, i8* %BRANCH_TAKEN, i64 244, i64 6, i64 6)
  store %struct.Memory* %call_403f82, %struct.Memory** %MEMORY

  %loadBr_403f82 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_403f82 = icmp eq i8 %loadBr_403f82, 1
  br i1 %cmpBr_403f82, label %block_.L_404076, label %block_403f88

block_403f88:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 403f88	 Bytes: 4
  %loadMem_403f88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403f88 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403f88)
  store %struct.Memory* %call_403f88, %struct.Memory** %MEMORY

  ; Code: cmpq $0x989680, 0x210(%rax)	 RIP: 403f8c	 Bytes: 11
  %loadMem_403f8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403f8c = call %struct.Memory* @routine_cmpq__0x989680__0x210__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403f8c)
  store %struct.Memory* %call_403f8c, %struct.Memory** %MEMORY

  ; Code: jle .L_403fb4	 RIP: 403f97	 Bytes: 6
  %loadMem_403f97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403f97 = call %struct.Memory* @routine_jle_.L_403fb4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403f97, i8* %BRANCH_TAKEN, i64 29, i64 6, i64 6)
  store %struct.Memory* %call_403f97, %struct.Memory** %MEMORY

  %loadBr_403f97 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_403f97 = icmp eq i8 %loadBr_403f97, 1
  br i1 %cmpBr_403f97, label %block_.L_403fb4, label %block_403f9d

block_403f9d:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 403f9d	 Bytes: 4
  %loadMem_403f9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403f9d = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403f9d)
  store %struct.Memory* %call_403f9d, %struct.Memory** %MEMORY

  ; Code: movq 0x210(%rax), %rax	 RIP: 403fa1	 Bytes: 7
  %loadMem_403fa1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403fa1 = call %struct.Memory* @routine_movq_0x210__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403fa1)
  store %struct.Memory* %call_403fa1, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x160(%rbp)	 RIP: 403fa8	 Bytes: 7
  %loadMem_403fa8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403fa8 = call %struct.Memory* @routine_movq__rax__MINUS0x160__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403fa8)
  store %struct.Memory* %call_403fa8, %struct.Memory** %MEMORY

  ; Code: jmpq .L_403fc7	 RIP: 403faf	 Bytes: 5
  %loadMem_403faf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403faf = call %struct.Memory* @routine_jmpq_.L_403fc7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403faf, i64 24, i64 5)
  store %struct.Memory* %call_403faf, %struct.Memory** %MEMORY

  br label %block_.L_403fc7

  ; Code: .L_403fb4:	 RIP: 403fb4	 Bytes: 0
block_.L_403fb4:

  ; Code: movl $0x989680, %eax	 RIP: 403fb4	 Bytes: 5
  %loadMem_403fb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403fb4 = call %struct.Memory* @routine_movl__0x989680___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403fb4)
  store %struct.Memory* %call_403fb4, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 403fb9	 Bytes: 2
  %loadMem_403fb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403fb9 = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403fb9)
  store %struct.Memory* %call_403fb9, %struct.Memory** %MEMORY

  ; Code: movq %rcx, -0x160(%rbp)	 RIP: 403fbb	 Bytes: 7
  %loadMem_403fbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403fbb = call %struct.Memory* @routine_movq__rcx__MINUS0x160__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403fbb)
  store %struct.Memory* %call_403fbb, %struct.Memory** %MEMORY

  ; Code: jmpq .L_403fc7	 RIP: 403fc2	 Bytes: 5
  %loadMem_403fc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403fc2 = call %struct.Memory* @routine_jmpq_.L_403fc7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403fc2, i64 5, i64 5)
  store %struct.Memory* %call_403fc2, %struct.Memory** %MEMORY

  br label %block_.L_403fc7

  ; Code: .L_403fc7:	 RIP: 403fc7	 Bytes: 0
block_.L_403fc7:

  ; Code: movq -0x160(%rbp), %rax	 RIP: 403fc7	 Bytes: 7
  %loadMem_403fc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403fc7 = call %struct.Memory* @routine_movq_MINUS0x160__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403fc7)
  store %struct.Memory* %call_403fc7, %struct.Memory** %MEMORY

  ; Code: imulq $0xfffffffe, %rax, %rax	 RIP: 403fce	 Bytes: 4
  %loadMem_403fce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403fce = call %struct.Memory* @routine_imulq__0xfffffffe___rax___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403fce)
  store %struct.Memory* %call_403fce, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 403fd2	 Bytes: 4
  %loadMem_403fd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403fd2 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403fd2)
  store %struct.Memory* %call_403fd2, %struct.Memory** %MEMORY

  ; Code: movq 0x238(%rcx), %rcx	 RIP: 403fd6	 Bytes: 7
  %loadMem_403fd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403fd6 = call %struct.Memory* @routine_movq_0x238__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403fd6)
  store %struct.Memory* %call_403fd6, %struct.Memory** %MEMORY

  ; Code: imulq $0x3, -0x110(%rbp), %rdx	 RIP: 403fdd	 Bytes: 8
  %loadMem_403fdd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403fdd = call %struct.Memory* @routine_imulq__0x3__MINUS0x110__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403fdd)
  store %struct.Memory* %call_403fdd, %struct.Memory** %MEMORY

  ; Code: subq $0x1, %rdx	 RIP: 403fe5	 Bytes: 4
  %loadMem_403fe5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403fe5 = call %struct.Memory* @routine_subq__0x1___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403fe5)
  store %struct.Memory* %call_403fe5, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rdx	 RIP: 403fe9	 Bytes: 4
  %loadMem_403fe9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403fe9 = call %struct.Memory* @routine_shlq__0x6___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403fe9)
  store %struct.Memory* %call_403fe9, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 403fed	 Bytes: 3
  %loadMem_403fed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403fed = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403fed)
  store %struct.Memory* %call_403fed, %struct.Memory** %MEMORY

  ; Code: movq %rax, (%rcx)	 RIP: 403ff0	 Bytes: 3
  %loadMem_403ff0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ff0 = call %struct.Memory* @routine_movq__rax____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ff0)
  store %struct.Memory* %call_403ff0, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rax	 RIP: 403ff3	 Bytes: 4
  %loadMem_403ff3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ff3 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ff3)
  store %struct.Memory* %call_403ff3, %struct.Memory** %MEMORY

  ; Code: cmpq $0x989680, 0x210(%rax)	 RIP: 403ff7	 Bytes: 11
  %loadMem_403ff7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_403ff7 = call %struct.Memory* @routine_cmpq__0x989680__0x210__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_403ff7)
  store %struct.Memory* %call_403ff7, %struct.Memory** %MEMORY

  ; Code: jle .L_40401f	 RIP: 404002	 Bytes: 6
  %loadMem_404002 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_404002 = call %struct.Memory* @routine_jle_.L_40401f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_404002, i8* %BRANCH_TAKEN, i64 29, i64 6, i64 6)
  store %struct.Memory* %call_404002, %struct.Memory** %MEMORY

  %loadBr_404002 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_404002 = icmp eq i8 %loadBr_404002, 1
  br i1 %cmpBr_404002, label %block_.L_40401f, label %block_404008

block_404008:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 404008	 Bytes: 4
  %loadMem_404008 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_404008 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_404008)
  store %struct.Memory* %call_404008, %struct.Memory** %MEMORY

  ; Code: movq 0x210(%rax), %rax	 RIP: 40400c	 Bytes: 7
  %loadMem_40400c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40400c = call %struct.Memory* @routine_movq_0x210__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40400c)
  store %struct.Memory* %call_40400c, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x168(%rbp)	 RIP: 404013	 Bytes: 7
  %loadMem_404013 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_404013 = call %struct.Memory* @routine_movq__rax__MINUS0x168__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_404013)
  store %struct.Memory* %call_404013, %struct.Memory** %MEMORY

  ; Code: jmpq .L_404032	 RIP: 40401a	 Bytes: 5
  %loadMem_40401a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40401a = call %struct.Memory* @routine_jmpq_.L_404032(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40401a, i64 24, i64 5)
  store %struct.Memory* %call_40401a, %struct.Memory** %MEMORY

  br label %block_.L_404032

  ; Code: .L_40401f:	 RIP: 40401f	 Bytes: 0
block_.L_40401f:

  ; Code: movl $0x989680, %eax	 RIP: 40401f	 Bytes: 5
  %loadMem_40401f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40401f = call %struct.Memory* @routine_movl__0x989680___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40401f)
  store %struct.Memory* %call_40401f, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 404024	 Bytes: 2
  %loadMem_404024 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_404024 = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_404024)
  store %struct.Memory* %call_404024, %struct.Memory** %MEMORY

  ; Code: movq %rcx, -0x168(%rbp)	 RIP: 404026	 Bytes: 7
  %loadMem_404026 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_404026 = call %struct.Memory* @routine_movq__rcx__MINUS0x168__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_404026)
  store %struct.Memory* %call_404026, %struct.Memory** %MEMORY

  ; Code: jmpq .L_404032	 RIP: 40402d	 Bytes: 5
  %loadMem_40402d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40402d = call %struct.Memory* @routine_jmpq_.L_404032(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40402d, i64 5, i64 5)
  store %struct.Memory* %call_40402d, %struct.Memory** %MEMORY

  br label %block_.L_404032

  ; Code: .L_404032:	 RIP: 404032	 Bytes: 0
block_.L_404032:

  ; Code: movq -0x168(%rbp), %rax	 RIP: 404032	 Bytes: 7
  %loadMem_404032 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_404032 = call %struct.Memory* @routine_movq_MINUS0x168__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_404032)
  store %struct.Memory* %call_404032, %struct.Memory** %MEMORY

  ; Code: imulq $0xfffffffe, %rax, %rax	 RIP: 404039	 Bytes: 4
  %loadMem_404039 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_404039 = call %struct.Memory* @routine_imulq__0xfffffffe___rax___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_404039)
  store %struct.Memory* %call_404039, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rcx	 RIP: 40403d	 Bytes: 4
  %loadMem_40403d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40403d = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40403d)
  store %struct.Memory* %call_40403d, %struct.Memory** %MEMORY

  ; Code: movq 0x238(%rcx), %rcx	 RIP: 404041	 Bytes: 7
  %loadMem_404041 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_404041 = call %struct.Memory* @routine_movq_0x238__rcx____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_404041)
  store %struct.Memory* %call_404041, %struct.Memory** %MEMORY

  ; Code: imulq $0x3, -0x110(%rbp), %rdx	 RIP: 404048	 Bytes: 8
  %loadMem_404048 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_404048 = call %struct.Memory* @routine_imulq__0x3__MINUS0x110__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_404048)
  store %struct.Memory* %call_404048, %struct.Memory** %MEMORY

  ; Code: subq $0x1, %rdx	 RIP: 404050	 Bytes: 4
  %loadMem_404050 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_404050 = call %struct.Memory* @routine_subq__0x1___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_404050)
  store %struct.Memory* %call_404050, %struct.Memory** %MEMORY

  ; Code: shlq $0x6, %rdx	 RIP: 404054	 Bytes: 4
  %loadMem_404054 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_404054 = call %struct.Memory* @routine_shlq__0x6___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_404054)
  store %struct.Memory* %call_404054, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rcx	 RIP: 404058	 Bytes: 3
  %loadMem_404058 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_404058 = call %struct.Memory* @routine_addq__rdx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_404058)
  store %struct.Memory* %call_404058, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x38(%rcx)	 RIP: 40405b	 Bytes: 4
  %loadMem_40405b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40405b = call %struct.Memory* @routine_movq__rax__0x38__rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40405b)
  store %struct.Memory* %call_40405b, %struct.Memory** %MEMORY

  ; Code: movq -0x110(%rbp), %rax	 RIP: 40405f	 Bytes: 7
  %loadMem_40405f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40405f = call %struct.Memory* @routine_movq_MINUS0x110__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40405f)
  store %struct.Memory* %call_40405f, %struct.Memory** %MEMORY

  ; Code: addq $0x1, %rax	 RIP: 404066	 Bytes: 4
  %loadMem_404066 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_404066 = call %struct.Memory* @routine_addq__0x1___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_404066)
  store %struct.Memory* %call_404066, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x110(%rbp)	 RIP: 40406a	 Bytes: 7
  %loadMem_40406a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40406a = call %struct.Memory* @routine_movq__rax__MINUS0x110__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40406a)
  store %struct.Memory* %call_40406a, %struct.Memory** %MEMORY

  ; Code: jmpq .L_403f70	 RIP: 404071	 Bytes: 5
  %loadMem_404071 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_404071 = call %struct.Memory* @routine_jmpq_.L_403f70(%struct.State* %0, i64  0, %struct.Memory* %loadMem_404071, i64 -257, i64 5)
  store %struct.Memory* %call_404071, %struct.Memory** %MEMORY

  br label %block_.L_403f70

  ; Code: .L_404076:	 RIP: 404076	 Bytes: 0
block_.L_404076:

  ; Code: movq $0x0, -0x8(%rbp)	 RIP: 404076	 Bytes: 8
  %loadMem_404076 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_404076 = call %struct.Memory* @routine_movq__0x0__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_404076)
  store %struct.Memory* %call_404076, %struct.Memory** %MEMORY

  ; Code: .L_40407e:	 RIP: 40407e	 Bytes: 0
  br label %block_.L_40407e
block_.L_40407e:

  ; Code: movq -0x8(%rbp), %rax	 RIP: 40407e	 Bytes: 4
  %loadMem_40407e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40407e = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40407e)
  store %struct.Memory* %call_40407e, %struct.Memory** %MEMORY

  ; Code: addq $0x170, %rsp	 RIP: 404082	 Bytes: 7
  %loadMem_404082 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_404082 = call %struct.Memory* @routine_addq__0x170___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_404082)
  store %struct.Memory* %call_404082, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 404089	 Bytes: 1
  %loadMem_404089 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_404089 = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_404089)
  store %struct.Memory* %call_404089, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 40408a	 Bytes: 1
  %loadMem_40408a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40408a = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40408a)
  store %struct.Memory* %call_40408a, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_40408a
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

define %struct.Memory* @routine_subq__0x170___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 368)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__0x4049c0___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x4049c0_type* @G__0x4049c0 to i64))
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = inttoptr i64 %2 to i64*
  store i64 %3, i64* %5
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__rdi__MINUS0x10__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = inttoptr i64 %2 to i64*
  store i64 %3, i64* %5
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__0x0__MINUS0x18__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i64*
  %6 = load i64, i64* %5
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
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

define %struct.Memory* @routine_jne_.L_403605(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0xffffffffffffffff__MINUS0x8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 -1)
  ret %struct.Memory* %13
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64) #2 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2, i64* %4, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jmpq_.L_40407e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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

define %struct.Memory* @routine_movl__0xc8___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 200)
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_leaq_MINUS0xf0__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 240
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
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


define %struct.Memory* @routine_callq_.fgets_plt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x4049e5___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x4049e5_type* @G__0x4049e5 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_leaq_MINUS0xf8__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 248
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_leaq_MINUS0x100__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 256
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movq__rax__MINUS0x128__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 296
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_callq_.__isoc99_sscanf_plt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_cmpl__0x2___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 2)
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

define %struct.Memory* @routine_je_.L_40365d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movq_MINUS0xf8__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 248
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movq__rax__0x198__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 408
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq_MINUS0x100__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 256
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movq__rax__0x1b0__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 432
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
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

define %struct.Memory* @routine_addq_MINUS0xf8__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = sub i64 %13, 248
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2MnImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
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




define %struct.Memory* @routine_movq__rax__0x190__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 400
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}








define %struct.Memory* @routine_addq_MINUS0x100__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = sub i64 %13, 256
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2MnImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq__rax__0x1a8__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 424
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
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

define %struct.Memory* @routine_cmpq__0x3a98__0x198__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 408
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 11
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 15000)
  ret %struct.Memory* %13
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L4JNLEEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i8* nocapture, i64, i64) #2 {
  %6 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  %8 = icmp eq i8 %7, 0
  %9 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  %10 = load i8, i8* %9, align 1
  %11 = icmp ne i8 %10, 0
  %12 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  %13 = load i8, i8* %12, align 1
  %14 = icmp ne i8 %13, 0
  %15 = xor i1 %11, %14
  %16 = xor i1 %15, true
  %17 = and i1 %8, %16
  %18 = zext i1 %17 to i8
  store i8 %18, i8* %2, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  %20 = select i1 %17, i64 %3, i64 %4
  store i64 %20, i64* %19, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jg_.L_403704(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4JNLEEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_movq_0x1a8__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 424
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movq__rax__0x1a0__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 416
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq__0x2dc6c0__0x1c8__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 456
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 11
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 3000000)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jmpq_.L_403722(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_movq__0x1a10000__0x1a0__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 416
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 11
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 27328512)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movq__0x1b8faa0__0x1c8__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 456
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 11
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 28900000)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x68___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 104)
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
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




define %struct.Memory* @routine_movq_0x1a0__rcx____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 416
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %10)
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImE2MnImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory*, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6
  %8 = sub i64 %3, %7
  store i64 %8, i64* %2, align 8
  %9 = icmp ugt i64 %7, %3
  %10 = zext i1 %9 to i8
  %11 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 %10, i8* %11, align 1
  %12 = trunc i64 %8 to i32
  %13 = and i32 %12, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13) #22
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i64 %7, %3
  %20 = xor i64 %19, %8
  %21 = lshr i64 %20, 4
  %22 = trunc i64 %21 to i8
  %23 = and i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 %23, i8* %24, align 1
  %25 = icmp eq i64 %8, 0
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 %26, i8* %27, align 1
  %28 = lshr i64 %8, 63
  %29 = trunc i64 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = lshr i64 %3, 63
  %32 = lshr i64 %7, 63
  %33 = xor i64 %32, %31
  %34 = xor i64 %28, %31
  %35 = add   i64 %34, %33
  %36 = icmp eq i64 %35, 2
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 %37, i8* %38, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_subq_0x1a8__rdx____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 424
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImE2MnImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq__rcx__0x1c0__rdx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 448
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq_0x190__rcx____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 400
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %10)
  ret %struct.Memory* %13
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


define %struct.Memory* @routine_callq_.calloc_plt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x40___r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R8D = bitcast %union.anon* %8 to i32*
  %9 = bitcast i32* %R8D to i64*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %9, i64 64)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl__r8d___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i32, i32* %R8D
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movq__rax__0x228__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 552
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq_0x190__rax____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 400
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_movq__rax__0x248__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 584
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq_0x1a0__rax____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 416
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movq__rax__0x238__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 568
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_cmpq__0x0__0x228__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 552
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_4037ea(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpq__0x0__0x238__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 568
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}






define %struct.Memory* @routine_cmpq__0x0__0x248__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 584
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_40381e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x4049c2___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x4049c2_type* @G__0x4049c2 to i64))
  ret %struct.Memory* %11
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



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__eax__MINUS0x12c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 300
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_callq_.getfree(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movq__rax__MINUS0x138__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 312
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}






define %struct.Memory* @routine_movq_0x228__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 552
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2MnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory*, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
  %6 = inttoptr i64 %3 to i64*
  %7 = load i64, i64* %6
  %8 = sext i64 %7 to i128
  %9 = and i128 %8, -18446744073709551616
  %10 = sext i64 %4 to i128
  %11 = and i128 %10, -18446744073709551616
  %12 = zext i64 %7 to i128
  %13 = or i128 %9, %12
  %14 = zext i64 %4 to i128
  %15 = or i128 %11, %14
  %16 = mul  i128 %13, %15
  %17 = trunc i128 %16 to i64
  store i64 %17, i64* %2, align 8
  %18 = sext i64 %17 to i128
  %19 = icmp ne i128 %18, %16
  %20 = zext i1 %19 to i8
  %21 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 1
  store i8 %20, i8* %21, align 1
  %22 = trunc i128 %16 to i32
  %23 = and i32 %22, 255
  %24 = tail call i32 @llvm.ctpop.i32(i32 %23) #22
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = xor i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 3
  store i8 %27, i8* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 5
  store i8 0, i8* %29, align 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  store i8 0, i8* %30, align 1
  %31 = lshr i64 %17, 63
  %32 = trunc i64 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 13
  store i8 %20, i8* %34, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_imulq__0x68__0x190__rcx____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 400
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2MnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %10, i64 104)
  ret %struct.Memory* %13
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


define %struct.Memory* @routine_addq__0x68___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 104)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_movq__rax__0x230__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 560
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq_0x238__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 568
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movq_0x1a8__rcx____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 424
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %10)
  ret %struct.Memory* %13
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






define %struct.Memory* @routine_movq__rax__0x240__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 576
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq_0x248__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 584
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}












define %struct.Memory* @routine_movq__rax__0x250__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 592
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}






define %struct.Memory* @routine_movq__rax__MINUS0x120__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 288
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}






define %struct.Memory* @routine_movq__rax__MINUS0x118__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 280
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__0x1__MINUS0x110__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 272
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 11
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movq_MINUS0x110__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 272
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
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

define %struct.Memory* @routine_cmpq_0x198__rcx____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = add i64 %13, 408
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_jg_.L_403d03(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4JNLEEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}


















define %struct.Memory* @routine_movq__rax__MINUS0x140__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 320
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}








define %struct.Memory* @routine_jne_.L_40393d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpq_MINUS0x100__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = sub i64 %13, 256
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i64 %14)
  ret %struct.Memory* %17
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

define %struct.Memory* @routine_jle_.L_40394a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_subq_MINUS0x110__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 272
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImE2MnImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_movq_MINUS0x120__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 288
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_imulq__0x68__MINUS0x110__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 272
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2MnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13, i64 104)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movl__eax__0x60__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 96
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}








define %struct.Memory* @routine_movq__0xffffffffffffffff__0x50__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 80
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 -1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movq_MINUS0x110__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 272
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movq_MINUS0x110__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 272
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_addq_0x198__rsi____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 408
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2MnImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %14)
  ret %struct.Memory* %17
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

define %struct.Memory* @routine_imulq__0x68___rdx___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 104)
  ret %struct.Memory* %12
}


















define %struct.Memory* @routine_movq__0x1__0x50__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 80
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movq_MINUS0xf8__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 248
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_movl__eax__0x64__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 100
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movq_MINUS0x100__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 256
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}






















define %struct.Memory* @routine_imulq__0x68__0x190__rdx____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 400
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2MnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %10, i64 104)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movq_MINUS0x118__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 280
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__rcx__0x8__rdx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 8
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}










define %struct.Memory* @routine_movq__rcx__0x10__rdx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 16
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq_0x210__rcx____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 528
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_addq__0xf___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 15)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_movq__rcx____rdx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movq__rcx__0x38__rdx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 56
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq_MINUS0x118__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 280
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
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




define %struct.Memory* @routine_movq__rcx__0x20__rdx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 32
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
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






define %struct.Memory* @routine_movq_0x10__rcx____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 16
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movq_0x40__rcx____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 64
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %10)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movq__rcx__0x28__rdx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 40
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}






define %struct.Memory* @routine_movq_0x10__rdx____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 16
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movq__rcx__0x40__rdx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 64
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_addq__0x40___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 64)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movq__rcx__MINUS0x118__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 280
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}
































define %struct.Memory* @routine_movq__0xf____rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %9, i64 15)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_movq__0xf__0x38__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 15)
  ret %struct.Memory* %13
}








































































define %struct.Memory* @routine_cmpq__0x989680__0x210__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 528
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 11
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 10000000)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jle_.L_403c47(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movq_0x210__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 528
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movq__rax__MINUS0x148__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 328
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_jmpq_.L_403c5a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movl__0x989680___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 10000000)
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movq__rcx__MINUS0x148__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 328
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq_MINUS0x148__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 328
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_shlq__0x1___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 1)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_movq__rax____rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movq__rax__0x38__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 56
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq_MINUS0x118__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 280
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_0x8__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
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




define %struct.Memory* @routine_movq__rax__0x20__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 32
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_movq_0x40__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 64
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movq__rax__0x28__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 40
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}








define %struct.Memory* @routine_movq__rax__0x40__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 64
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_addq__0x40___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 64)
  ret %struct.Memory* %12
}








define %struct.Memory* @routine_movq__rax__MINUS0x110__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 272
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_jmpq_.L_4038c6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_movq_0x198__rcx____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 408
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %10)
  ret %struct.Memory* %13
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

define %struct.Memory* @routine_cmpq__rcx___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnImES2_EEP6MemoryS4_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_je_.L_403d2f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movq__0x0__MINUS0x110__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 272
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 11
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}






define %struct.Memory* @routine_cmpq_0x1b0__rcx____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = add i64 %13, 432
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i64 %14)
  ret %struct.Memory* %17
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

define %struct.Memory* @routine_jge_.L_403ea5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_movq__0x4049e1___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 ptrtoint( %G__0x4049e1_type* @G__0x4049e1 to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_leaq_MINUS0x108__rbp____r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 264
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movq__rax__MINUS0x150__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 336
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}






define %struct.Memory* @routine_cmpl__0x3___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 3)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_403db1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movq_MINUS0x120__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 288
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_addq_0x198__rdx____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = add i64 %13, 408
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2MnImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_imulq__0x68___rcx___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 104)
  ret %struct.Memory* %12
}






define %struct.Memory* @routine_movq__rax__0x8__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_imulq__0x68__MINUS0x100__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 256
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2MnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13, i64 104)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movq__rax__0x10__rcx_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 16
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq_MINUS0x108__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 264
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




























































define %struct.Memory* @routine_jmpq_.L_403d3a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_movq_0x240__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 576
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_cmpq_MINUS0x118__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = sub i64 %13, 280
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_je_.L_403f4b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
















define %struct.Memory* @routine_movq__0x0__0x1a8__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 424
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 11
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}






define %struct.Memory* @routine_cmpq_0x240__rcx____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = add i64 %13, 576
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i64 %14)
  ret %struct.Memory* %17
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

define %struct.Memory* @routine_jae_.L_403f35(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movq_0x1a8__rax____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 424
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movq__rcx__0x1a8__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 424
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}








define %struct.Memory* @routine_jmpq_.L_403ef0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i8
  %6 = inttoptr i64 %2 to i8*
  store i8 %5, i8* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movb__0x0__0xc8__rdi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 200
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movl__eax__MINUS0x154__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 340
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}








define %struct.Memory* @routine_jg_.L_404076(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  %10 = load i64, i64* %PC
  %11 = add i64 %10, %rel_off3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4JNLEEP6MemoryR5State3RnWIhE2InImES7_(%struct.Memory* %2, %struct.State* %0, i8* %BRANCH_TAKEN, i64 %7, i64 %9)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_cmpq__0x989680__0x210__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 528
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 11
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 10000000)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jle_.L_403fb4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movq__rax__MINUS0x160__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 352
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_jmpq_.L_403fc7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_movq__rcx__MINUS0x160__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 352
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq_MINUS0x160__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 352
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movq_0x238__rcx____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 568
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_imulq__0x3__MINUS0x110__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 272
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2MnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13, i64 3)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_subq__0x1___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 1)
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










define %struct.Memory* @routine_jle_.L_40401f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movq__rax__MINUS0x168__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 360
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_jmpq_.L_404032(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_movq__rcx__MINUS0x168__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 360
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movq_MINUS0x168__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 360
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}






















define %struct.Memory* @routine_jmpq_.L_403f70(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movq__0x0__MINUS0x8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
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


define %struct.Memory* @routine_addq__0x170___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 368)
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

