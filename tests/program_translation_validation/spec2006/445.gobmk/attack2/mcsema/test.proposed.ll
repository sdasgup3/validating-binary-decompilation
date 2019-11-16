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

declare %struct.Memory* @sub_4141e0.find_origin(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_452090.abortgo(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_40f780.countlib(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_413c20.chainlinks2(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4137f0.countstones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_417fc0.sgf_trace(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_461d90.break_chain_moves(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_40f840.findlib(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4142a0.is_self_atari(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4115b0.approxlib(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4623f0.edge_block_moves(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_414ab0.liberty_of_string(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4626b0.propose_edge_moves(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_462c90.order_moves(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_40edf0.komaster_trymove(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_463620.do_find_defense(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_45dce0.do_attack(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_40dd60.popgo(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_463a80.find_cap2(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_469970.special_attack2(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_469b40.special_attack3(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_469ef0.special_attack4(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_47c0b0.find_superstring_liberties(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_408e30.trymove(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Data Access Globals
%G_0x7ae448_type = type <{ [1 x i8] }>
@G_0x7ae448= global %G_0x7ae448_type <{ [1 x i8] c"\00" }>
%G_0xab0ef8_type = type <{ [1 x i8] }>
@G_0xab0ef8= global %G_0xab0ef8_type <{ [1 x i8] c"\00" }>
%G_0xae23a4_type = type <{ [4 x i8] }>
@G_0xae23a4= global %G_0xae23a4_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0xafd960_type = type <{ [4 x i8] }>
@G_0xafd960= global %G_0xafd960_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0xb060b8_type = type <{ [4 x i8] }>
@G_0xb060b8= global %G_0xb060b8_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0xb54ce4_type = type <{ [4 x i8] }>
@G_0xb54ce4= global %G_0xb54ce4_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0xb8af28_type = type <{ [4 x i8] }>
@G_0xb8af28= global %G_0xb8af28_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0xb8b850_type = type <{ [4 x i8] }>
@G_0xb8b850= global %G_0xb8b850_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0xb8b854_type = type <{ [4 x i8] }>
@G_0xb8b854= global %G_0xb8b854_type <{ [4 x i8] c"\00\00\00\00" }>
%G__0x57a4d2_type = type <{ [8 x i8] }>
@G__0x57a4d2= global %G__0x57a4d2_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57e5fb_type = type <{ [8 x i8] }>
@G__0x57e5fb= global %G__0x57e5fb_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57f60a_type = type <{ [8 x i8] }>
@G__0x57f60a= global %G__0x57f60a_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57fb0d_type = type <{ [8 x i8] }>
@G__0x57fb0d= global %G__0x57fb0d_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57fd27_type = type <{ [8 x i8] }>
@G__0x57fd27= global %G__0x57fd27_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57fd3a_type = type <{ [8 x i8] }>
@G__0x57fd3a= global %G__0x57fd3a_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57fe22_type = type <{ [8 x i8] }>
@G__0x57fe22= global %G__0x57fe22_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57fe2c_type = type <{ [8 x i8] }>
@G__0x57fe2c= global %G__0x57fe2c_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57fe36_type = type <{ [8 x i8] }>
@G__0x57fe36= global %G__0x57fe36_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57fe3e_type = type <{ [8 x i8] }>
@G__0x57fe3e= global %G__0x57fe3e_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57fe46_type = type <{ [8 x i8] }>
@G__0x57fe46= global %G__0x57fe46_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57fe56_type = type <{ [8 x i8] }>
@G__0x57fe56= global %G__0x57fe56_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57fe66_type = type <{ [8 x i8] }>
@G__0x57fe66= global %G__0x57fe66_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57fe70_type = type <{ [8 x i8] }>
@G__0x57fe70= global %G__0x57fe70_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>


define %struct.Memory* @attack2(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .attack2:	 RIP: 45eaa0	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 45eaa0	 Bytes: 1
  %loadMem_45eaa0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45eaa0 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45eaa0)
  store %struct.Memory* %call_45eaa0, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 45eaa1	 Bytes: 3
  %loadMem_45eaa1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45eaa1 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45eaa1)
  store %struct.Memory* %call_45eaa1, %struct.Memory** %MEMORY

  ; Code: pushq %r15	 RIP: 45eaa4	 Bytes: 2
  %loadMem_45eaa4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45eaa4 = call %struct.Memory* @routine_pushq__r15(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45eaa4)
  store %struct.Memory* %call_45eaa4, %struct.Memory** %MEMORY

  ; Code: pushq %r14	 RIP: 45eaa6	 Bytes: 2
  %loadMem_45eaa6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45eaa6 = call %struct.Memory* @routine_pushq__r14(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45eaa6)
  store %struct.Memory* %call_45eaa6, %struct.Memory** %MEMORY

  ; Code: pushq %r13	 RIP: 45eaa8	 Bytes: 2
  %loadMem_45eaa8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45eaa8 = call %struct.Memory* @routine_pushq__r13(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45eaa8)
  store %struct.Memory* %call_45eaa8, %struct.Memory** %MEMORY

  ; Code: pushq %r12	 RIP: 45eaaa	 Bytes: 2
  %loadMem_45eaaa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45eaaa = call %struct.Memory* @routine_pushq__r12(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45eaaa)
  store %struct.Memory* %call_45eaaa, %struct.Memory** %MEMORY

  ; Code: pushq %rbx	 RIP: 45eaac	 Bytes: 1
  %loadMem_45eaac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45eaac = call %struct.Memory* @routine_pushq__rbx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45eaac)
  store %struct.Memory* %call_45eaac, %struct.Memory** %MEMORY

  ; Code: subq $0x5d8, %rsp	 RIP: 45eaad	 Bytes: 7
  %loadMem_45eaad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45eaad = call %struct.Memory* @routine_subq__0x5d8___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45eaad)
  store %struct.Memory* %call_45eaad, %struct.Memory** %MEMORY

  ; Code: movq $0x57fe3e, %rax	 RIP: 45eab4	 Bytes: 10
  %loadMem_45eab4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45eab4 = call %struct.Memory* @routine_movq__0x57fe3e___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45eab4)
  store %struct.Memory* %call_45eab4, %struct.Memory** %MEMORY

  ; Code: movl $0x3, %r8d	 RIP: 45eabe	 Bytes: 6
  %loadMem_45eabe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45eabe = call %struct.Memory* @routine_movl__0x3___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45eabe)
  store %struct.Memory* %call_45eabe, %struct.Memory** %MEMORY

  ; Code: movl %edi, -0x30(%rbp)	 RIP: 45eac4	 Bytes: 3
  %loadMem_45eac4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45eac4 = call %struct.Memory* @routine_movl__edi__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45eac4)
  store %struct.Memory* %call_45eac4, %struct.Memory** %MEMORY

  ; Code: movq %rsi, -0x38(%rbp)	 RIP: 45eac7	 Bytes: 4
  %loadMem_45eac7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45eac7 = call %struct.Memory* @routine_movq__rsi__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45eac7)
  store %struct.Memory* %call_45eac7, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x3c(%rbp)	 RIP: 45eacb	 Bytes: 3
  %loadMem_45eacb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45eacb = call %struct.Memory* @routine_movl__edx__MINUS0x3c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45eacb)
  store %struct.Memory* %call_45eacb, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x40(%rbp)	 RIP: 45eace	 Bytes: 3
  %loadMem_45eace = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45eace = call %struct.Memory* @routine_movl__ecx__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45eace)
  store %struct.Memory* %call_45eace, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rsi	 RIP: 45ead1	 Bytes: 4
  %loadMem_45ead1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ead1 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ead1)
  store %struct.Memory* %call_45ead1, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rsi,1), %ecx	 RIP: 45ead5	 Bytes: 8
  %loadMem_45ead5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ead5 = call %struct.Memory* @routine_movzbl_0xb89e60___rsi_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ead5)
  store %struct.Memory* %call_45ead5, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x44(%rbp)	 RIP: 45eadd	 Bytes: 3
  %loadMem_45eadd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45eadd = call %struct.Memory* @routine_movl__ecx__MINUS0x44__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45eadd)
  store %struct.Memory* %call_45eadd, %struct.Memory** %MEMORY

  ; Code: subl -0x44(%rbp), %r8d	 RIP: 45eae0	 Bytes: 4
  %loadMem_45eae0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45eae0 = call %struct.Memory* @routine_subl_MINUS0x44__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45eae0)
  store %struct.Memory* %call_45eae0, %struct.Memory** %MEMORY

  ; Code: movl %r8d, -0x48(%rbp)	 RIP: 45eae4	 Bytes: 4
  %loadMem_45eae4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45eae4 = call %struct.Memory* @routine_movl__r8d__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45eae4)
  store %struct.Memory* %call_45eae4, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x2f4(%rbp)	 RIP: 45eae8	 Bytes: 10
  %loadMem_45eae8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45eae8 = call %struct.Memory* @routine_movl__0x0__MINUS0x2f4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45eae8)
  store %struct.Memory* %call_45eae8, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x2f8(%rbp)	 RIP: 45eaf2	 Bytes: 10
  %loadMem_45eaf2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45eaf2 = call %struct.Memory* @routine_movl__0x0__MINUS0x2f8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45eaf2)
  store %struct.Memory* %call_45eaf2, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x308(%rbp)	 RIP: 45eafc	 Bytes: 10
  %loadMem_45eafc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45eafc = call %struct.Memory* @routine_movl__0x0__MINUS0x308__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45eafc)
  store %struct.Memory* %call_45eafc, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x4a4(%rbp)	 RIP: 45eb06	 Bytes: 10
  %loadMem_45eb06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45eb06 = call %struct.Memory* @routine_movl__0x0__MINUS0x4a4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45eb06)
  store %struct.Memory* %call_45eb06, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x4b0(%rbp)	 RIP: 45eb10	 Bytes: 7
  %loadMem_45eb10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45eb10 = call %struct.Memory* @routine_movq__rax__MINUS0x4b0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45eb10)
  store %struct.Memory* %call_45eb10, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %ecx	 RIP: 45eb17	 Bytes: 3
  %loadMem_45eb17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45eb17 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45eb17)
  store %struct.Memory* %call_45eb17, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x4b4(%rbp)	 RIP: 45eb1a	 Bytes: 6
  %loadMem_45eb1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45eb1a = call %struct.Memory* @routine_movl__ecx__MINUS0x4b4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45eb1a)
  store %struct.Memory* %call_45eb1a, %struct.Memory** %MEMORY

  ; Code: movl 0xae23a4, %ecx	 RIP: 45eb20	 Bytes: 7
  %loadMem_45eb20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45eb20 = call %struct.Memory* @routine_movl_0xae23a4___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45eb20)
  store %struct.Memory* %call_45eb20, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 45eb27	 Bytes: 3
  %loadMem_45eb27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45eb27 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45eb27)
  store %struct.Memory* %call_45eb27, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0xae23a4	 RIP: 45eb2a	 Bytes: 7
  %loadMem_45eb2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45eb2a = call %struct.Memory* @routine_movl__ecx__0xae23a4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45eb2a)
  store %struct.Memory* %call_45eb2a, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x310(%rbp)	 RIP: 45eb31	 Bytes: 10
  %loadMem_45eb31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45eb31 = call %struct.Memory* @routine_movl__0x0__MINUS0x310__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45eb31)
  store %struct.Memory* %call_45eb31, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %edi	 RIP: 45eb3b	 Bytes: 3
  %loadMem_45eb3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45eb3b = call %struct.Memory* @routine_movl_MINUS0x30__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45eb3b)
  store %struct.Memory* %call_45eb3b, %struct.Memory** %MEMORY

  ; Code: callq .find_origin	 RIP: 45eb3e	 Bytes: 5
  %loadMem1_45eb3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_45eb3e = call %struct.Memory* @routine_callq_.find_origin(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_45eb3e, i64 -305502, i64 5, i64 5)
  store %struct.Memory* %call1_45eb3e, %struct.Memory** %MEMORY

  %loadMem2_45eb3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45eb3e = load i64, i64* %3
  %call2_45eb3e = call %struct.Memory* @sub_4141e0.find_origin(%struct.State* %0, i64  %loadPC_45eb3e, %struct.Memory* %loadMem2_45eb3e)
  store %struct.Memory* %call2_45eb3e, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x30(%rbp)	 RIP: 45eb43	 Bytes: 3
  %loadMem_45eb43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45eb43 = call %struct.Memory* @routine_movl__eax__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45eb43)
  store %struct.Memory* %call_45eb43, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rsi	 RIP: 45eb46	 Bytes: 4
  %loadMem_45eb46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45eb46 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45eb46)
  store %struct.Memory* %call_45eb46, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rsi,1), %eax	 RIP: 45eb4a	 Bytes: 8
  %loadMem_45eb4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45eb4a = call %struct.Memory* @routine_movzbl_0xb89e60___rsi_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45eb4a)
  store %struct.Memory* %call_45eb4a, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, %eax	 RIP: 45eb52	 Bytes: 3
  %loadMem_45eb52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45eb52 = call %struct.Memory* @routine_cmpl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45eb52)
  store %struct.Memory* %call_45eb52, %struct.Memory** %MEMORY

  ; Code: je .L_45eb70	 RIP: 45eb55	 Bytes: 6
  %loadMem_45eb55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45eb55 = call %struct.Memory* @routine_je_.L_45eb70(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45eb55, i8* %BRANCH_TAKEN, i64 27, i64 6, i64 6)
  store %struct.Memory* %call_45eb55, %struct.Memory** %MEMORY

  %loadBr_45eb55 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45eb55 = icmp eq i8 %loadBr_45eb55, 1
  br i1 %cmpBr_45eb55, label %block_.L_45eb70, label %block_45eb5b

block_45eb5b:
  ; Code: movslq -0x30(%rbp), %rax	 RIP: 45eb5b	 Bytes: 4
  %loadMem_45eb5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45eb5b = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45eb5b)
  store %struct.Memory* %call_45eb5b, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 45eb5f	 Bytes: 8
  %loadMem_45eb5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45eb5f = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45eb5f)
  store %struct.Memory* %call_45eb5f, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, %ecx	 RIP: 45eb67	 Bytes: 3
  %loadMem_45eb67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45eb67 = call %struct.Memory* @routine_cmpl__0x2___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45eb67)
  store %struct.Memory* %call_45eb67, %struct.Memory** %MEMORY

  ; Code: jne .L_45eb75	 RIP: 45eb6a	 Bytes: 6
  %loadMem_45eb6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45eb6a = call %struct.Memory* @routine_jne_.L_45eb75(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45eb6a, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_45eb6a, %struct.Memory** %MEMORY

  %loadBr_45eb6a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45eb6a = icmp eq i8 %loadBr_45eb6a, 1
  br i1 %cmpBr_45eb6a, label %block_.L_45eb75, label %block_.L_45eb70

  ; Code: .L_45eb70:	 RIP: 45eb70	 Bytes: 0
block_.L_45eb70:

  ; Code: jmpq .L_45ebe6	 RIP: 45eb70	 Bytes: 5
  %loadMem_45eb70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45eb70 = call %struct.Memory* @routine_jmpq_.L_45ebe6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45eb70, i64 118, i64 5)
  store %struct.Memory* %call_45eb70, %struct.Memory** %MEMORY

  br label %block_.L_45ebe6

  ; Code: .L_45eb75:	 RIP: 45eb75	 Bytes: 0
block_.L_45eb75:

  ; Code: movq $0x57fb0d, %rdi	 RIP: 45eb75	 Bytes: 10
  %loadMem_45eb75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45eb75 = call %struct.Memory* @routine_movq__0x57fb0d___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45eb75)
  store %struct.Memory* %call_45eb75, %struct.Memory** %MEMORY

  ; Code: movl $0x9f8, %esi	 RIP: 45eb7f	 Bytes: 5
  %loadMem_45eb7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45eb7f = call %struct.Memory* @routine_movl__0x9f8___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45eb7f)
  store %struct.Memory* %call_45eb7f, %struct.Memory** %MEMORY

  ; Code: movq $0x57a4d2, %rdx	 RIP: 45eb84	 Bytes: 10
  %loadMem_45eb84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45eb84 = call %struct.Memory* @routine_movq__0x57a4d2___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45eb84)
  store %struct.Memory* %call_45eb84, %struct.Memory** %MEMORY

  ; Code: movl $0x14, %eax	 RIP: 45eb8e	 Bytes: 5
  %loadMem_45eb8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45eb8e = call %struct.Memory* @routine_movl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45eb8e)
  store %struct.Memory* %call_45eb8e, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %ecx	 RIP: 45eb93	 Bytes: 3
  %loadMem_45eb93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45eb93 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45eb93)
  store %struct.Memory* %call_45eb93, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x55c(%rbp)	 RIP: 45eb96	 Bytes: 6
  %loadMem_45eb96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45eb96 = call %struct.Memory* @routine_movl__eax__MINUS0x55c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45eb96)
  store %struct.Memory* %call_45eb96, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %eax	 RIP: 45eb9c	 Bytes: 2
  %loadMem_45eb9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45eb9c = call %struct.Memory* @routine_movl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45eb9c)
  store %struct.Memory* %call_45eb9c, %struct.Memory** %MEMORY

  ; Code: movq %rdx, -0x568(%rbp)	 RIP: 45eb9e	 Bytes: 7
  %loadMem_45eb9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45eb9e = call %struct.Memory* @routine_movq__rdx__MINUS0x568__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45eb9e)
  store %struct.Memory* %call_45eb9e, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 45eba5	 Bytes: 1
  %loadMem_45eba5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45eba5 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45eba5)
  store %struct.Memory* %call_45eba5, %struct.Memory** %MEMORY

  ; Code: movl -0x55c(%rbp), %ecx	 RIP: 45eba6	 Bytes: 6
  %loadMem_45eba6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45eba6 = call %struct.Memory* @routine_movl_MINUS0x55c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45eba6)
  store %struct.Memory* %call_45eba6, %struct.Memory** %MEMORY

  ; Code: idivl %ecx	 RIP: 45ebac	 Bytes: 2
  %loadMem_45ebac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ebac = call %struct.Memory* @routine_idivl__ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ebac)
  store %struct.Memory* %call_45ebac, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 45ebae	 Bytes: 3
  %loadMem_45ebae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ebae = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ebae)
  store %struct.Memory* %call_45ebae, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %r8d	 RIP: 45ebb1	 Bytes: 4
  %loadMem_45ebb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ebb1 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ebb1)
  store %struct.Memory* %call_45ebb1, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x56c(%rbp)	 RIP: 45ebb5	 Bytes: 6
  %loadMem_45ebb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ebb5 = call %struct.Memory* @routine_movl__eax__MINUS0x56c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ebb5)
  store %struct.Memory* %call_45ebb5, %struct.Memory** %MEMORY

  ; Code: movl %r8d, %eax	 RIP: 45ebbb	 Bytes: 3
  %loadMem_45ebbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ebbb = call %struct.Memory* @routine_movl__r8d___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ebbb)
  store %struct.Memory* %call_45ebbb, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 45ebbe	 Bytes: 1
  %loadMem_45ebbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ebbe = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ebbe)
  store %struct.Memory* %call_45ebbe, %struct.Memory** %MEMORY

  ; Code: idivl %ecx	 RIP: 45ebbf	 Bytes: 2
  %loadMem_45ebbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ebbf = call %struct.Memory* @routine_idivl__ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ebbf)
  store %struct.Memory* %call_45ebbf, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 45ebc1	 Bytes: 3
  %loadMem_45ebc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ebc1 = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ebc1)
  store %struct.Memory* %call_45ebc1, %struct.Memory** %MEMORY

  ; Code: movq -0x568(%rbp), %r9	 RIP: 45ebc4	 Bytes: 7
  %loadMem_45ebc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ebc4 = call %struct.Memory* @routine_movq_MINUS0x568__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ebc4)
  store %struct.Memory* %call_45ebc4, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x570(%rbp)	 RIP: 45ebcb	 Bytes: 6
  %loadMem_45ebcb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ebcb = call %struct.Memory* @routine_movl__edx__MINUS0x570__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ebcb)
  store %struct.Memory* %call_45ebcb, %struct.Memory** %MEMORY

  ; Code: movq %r9, %rdx	 RIP: 45ebd1	 Bytes: 3
  %loadMem_45ebd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ebd1 = call %struct.Memory* @routine_movq__r9___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ebd1)
  store %struct.Memory* %call_45ebd1, %struct.Memory** %MEMORY

  ; Code: movl -0x56c(%rbp), %ecx	 RIP: 45ebd4	 Bytes: 6
  %loadMem_45ebd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ebd4 = call %struct.Memory* @routine_movl_MINUS0x56c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ebd4)
  store %struct.Memory* %call_45ebd4, %struct.Memory** %MEMORY

  ; Code: movl -0x570(%rbp), %r8d	 RIP: 45ebda	 Bytes: 7
  %loadMem_45ebda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ebda = call %struct.Memory* @routine_movl_MINUS0x570__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ebda)
  store %struct.Memory* %call_45ebda, %struct.Memory** %MEMORY

  ; Code: callq .abortgo	 RIP: 45ebe1	 Bytes: 5
  %loadMem1_45ebe1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_45ebe1 = call %struct.Memory* @routine_callq_.abortgo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_45ebe1, i64 -52049, i64 5, i64 5)
  store %struct.Memory* %call1_45ebe1, %struct.Memory** %MEMORY

  %loadMem2_45ebe1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45ebe1 = load i64, i64* %3
  %call2_45ebe1 = call %struct.Memory* @sub_452090.abortgo(%struct.State* %0, i64  %loadPC_45ebe1, %struct.Memory* %loadMem2_45ebe1)
  store %struct.Memory* %call2_45ebe1, %struct.Memory** %MEMORY

  ; Code: .L_45ebe6:	 RIP: 45ebe6	 Bytes: 0
  br label %block_.L_45ebe6
block_.L_45ebe6:

  ; Code: movl -0x30(%rbp), %edi	 RIP: 45ebe6	 Bytes: 3
  %loadMem_45ebe6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ebe6 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ebe6)
  store %struct.Memory* %call_45ebe6, %struct.Memory** %MEMORY

  ; Code: callq .countlib	 RIP: 45ebe9	 Bytes: 5
  %loadMem1_45ebe9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_45ebe9 = call %struct.Memory* @routine_callq_.countlib(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_45ebe9, i64 -324713, i64 5, i64 5)
  store %struct.Memory* %call1_45ebe9, %struct.Memory** %MEMORY

  %loadMem2_45ebe9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45ebe9 = load i64, i64* %3
  %call2_45ebe9 = call %struct.Memory* @sub_40f780.countlib(%struct.State* %0, i64  %loadPC_45ebe9, %struct.Memory* %loadMem2_45ebe9)
  store %struct.Memory* %call2_45ebe9, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, %eax	 RIP: 45ebee	 Bytes: 3
  %loadMem_45ebee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ebee = call %struct.Memory* @routine_cmpl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ebee)
  store %struct.Memory* %call_45ebee, %struct.Memory** %MEMORY

  ; Code: jne .L_45ebfc	 RIP: 45ebf1	 Bytes: 6
  %loadMem_45ebf1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ebf1 = call %struct.Memory* @routine_jne_.L_45ebfc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ebf1, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_45ebf1, %struct.Memory** %MEMORY

  %loadBr_45ebf1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45ebf1 = icmp eq i8 %loadBr_45ebf1, 1
  br i1 %cmpBr_45ebf1, label %block_.L_45ebfc, label %block_45ebf7

block_45ebf7:
  ; Code: jmpq .L_45ec6d	 RIP: 45ebf7	 Bytes: 5
  %loadMem_45ebf7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ebf7 = call %struct.Memory* @routine_jmpq_.L_45ec6d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ebf7, i64 118, i64 5)
  store %struct.Memory* %call_45ebf7, %struct.Memory** %MEMORY

  br label %block_.L_45ec6d

  ; Code: .L_45ebfc:	 RIP: 45ebfc	 Bytes: 0
block_.L_45ebfc:

  ; Code: movq $0x57fb0d, %rdi	 RIP: 45ebfc	 Bytes: 10
  %loadMem_45ebfc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ebfc = call %struct.Memory* @routine_movq__0x57fb0d___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ebfc)
  store %struct.Memory* %call_45ebfc, %struct.Memory** %MEMORY

  ; Code: movl $0x9f9, %esi	 RIP: 45ec06	 Bytes: 5
  %loadMem_45ec06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ec06 = call %struct.Memory* @routine_movl__0x9f9___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ec06)
  store %struct.Memory* %call_45ec06, %struct.Memory** %MEMORY

  ; Code: movq $0x57fd27, %rdx	 RIP: 45ec0b	 Bytes: 10
  %loadMem_45ec0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ec0b = call %struct.Memory* @routine_movq__0x57fd27___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ec0b)
  store %struct.Memory* %call_45ec0b, %struct.Memory** %MEMORY

  ; Code: movl $0x14, %eax	 RIP: 45ec15	 Bytes: 5
  %loadMem_45ec15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ec15 = call %struct.Memory* @routine_movl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ec15)
  store %struct.Memory* %call_45ec15, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %ecx	 RIP: 45ec1a	 Bytes: 3
  %loadMem_45ec1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ec1a = call %struct.Memory* @routine_movl_MINUS0x30__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ec1a)
  store %struct.Memory* %call_45ec1a, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x574(%rbp)	 RIP: 45ec1d	 Bytes: 6
  %loadMem_45ec1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ec1d = call %struct.Memory* @routine_movl__eax__MINUS0x574__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ec1d)
  store %struct.Memory* %call_45ec1d, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %eax	 RIP: 45ec23	 Bytes: 2
  %loadMem_45ec23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ec23 = call %struct.Memory* @routine_movl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ec23)
  store %struct.Memory* %call_45ec23, %struct.Memory** %MEMORY

  ; Code: movq %rdx, -0x580(%rbp)	 RIP: 45ec25	 Bytes: 7
  %loadMem_45ec25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ec25 = call %struct.Memory* @routine_movq__rdx__MINUS0x580__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ec25)
  store %struct.Memory* %call_45ec25, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 45ec2c	 Bytes: 1
  %loadMem_45ec2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ec2c = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ec2c)
  store %struct.Memory* %call_45ec2c, %struct.Memory** %MEMORY

  ; Code: movl -0x574(%rbp), %ecx	 RIP: 45ec2d	 Bytes: 6
  %loadMem_45ec2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ec2d = call %struct.Memory* @routine_movl_MINUS0x574__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ec2d)
  store %struct.Memory* %call_45ec2d, %struct.Memory** %MEMORY

  ; Code: idivl %ecx	 RIP: 45ec33	 Bytes: 2
  %loadMem_45ec33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ec33 = call %struct.Memory* @routine_idivl__ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ec33)
  store %struct.Memory* %call_45ec33, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 45ec35	 Bytes: 3
  %loadMem_45ec35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ec35 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ec35)
  store %struct.Memory* %call_45ec35, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %r8d	 RIP: 45ec38	 Bytes: 4
  %loadMem_45ec38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ec38 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ec38)
  store %struct.Memory* %call_45ec38, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x584(%rbp)	 RIP: 45ec3c	 Bytes: 6
  %loadMem_45ec3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ec3c = call %struct.Memory* @routine_movl__eax__MINUS0x584__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ec3c)
  store %struct.Memory* %call_45ec3c, %struct.Memory** %MEMORY

  ; Code: movl %r8d, %eax	 RIP: 45ec42	 Bytes: 3
  %loadMem_45ec42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ec42 = call %struct.Memory* @routine_movl__r8d___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ec42)
  store %struct.Memory* %call_45ec42, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 45ec45	 Bytes: 1
  %loadMem_45ec45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ec45 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ec45)
  store %struct.Memory* %call_45ec45, %struct.Memory** %MEMORY

  ; Code: idivl %ecx	 RIP: 45ec46	 Bytes: 2
  %loadMem_45ec46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ec46 = call %struct.Memory* @routine_idivl__ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ec46)
  store %struct.Memory* %call_45ec46, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 45ec48	 Bytes: 3
  %loadMem_45ec48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ec48 = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ec48)
  store %struct.Memory* %call_45ec48, %struct.Memory** %MEMORY

  ; Code: movq -0x580(%rbp), %r9	 RIP: 45ec4b	 Bytes: 7
  %loadMem_45ec4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ec4b = call %struct.Memory* @routine_movq_MINUS0x580__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ec4b)
  store %struct.Memory* %call_45ec4b, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x588(%rbp)	 RIP: 45ec52	 Bytes: 6
  %loadMem_45ec52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ec52 = call %struct.Memory* @routine_movl__edx__MINUS0x588__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ec52)
  store %struct.Memory* %call_45ec52, %struct.Memory** %MEMORY

  ; Code: movq %r9, %rdx	 RIP: 45ec58	 Bytes: 3
  %loadMem_45ec58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ec58 = call %struct.Memory* @routine_movq__r9___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ec58)
  store %struct.Memory* %call_45ec58, %struct.Memory** %MEMORY

  ; Code: movl -0x584(%rbp), %ecx	 RIP: 45ec5b	 Bytes: 6
  %loadMem_45ec5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ec5b = call %struct.Memory* @routine_movl_MINUS0x584__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ec5b)
  store %struct.Memory* %call_45ec5b, %struct.Memory** %MEMORY

  ; Code: movl -0x588(%rbp), %r8d	 RIP: 45ec61	 Bytes: 7
  %loadMem_45ec61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ec61 = call %struct.Memory* @routine_movl_MINUS0x588__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ec61)
  store %struct.Memory* %call_45ec61, %struct.Memory** %MEMORY

  ; Code: callq .abortgo	 RIP: 45ec68	 Bytes: 5
  %loadMem1_45ec68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_45ec68 = call %struct.Memory* @routine_callq_.abortgo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_45ec68, i64 -52184, i64 5, i64 5)
  store %struct.Memory* %call1_45ec68, %struct.Memory** %MEMORY

  %loadMem2_45ec68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45ec68 = load i64, i64* %3
  %call2_45ec68 = call %struct.Memory* @sub_452090.abortgo(%struct.State* %0, i64  %loadPC_45ec68, %struct.Memory* %loadMem2_45ec68)
  store %struct.Memory* %call2_45ec68, %struct.Memory** %MEMORY

  ; Code: .L_45ec6d:	 RIP: 45ec6d	 Bytes: 0
  br label %block_.L_45ec6d
block_.L_45ec6d:

  ; Code: movl $0x1, %edx	 RIP: 45ec6d	 Bytes: 5
  %loadMem_45ec6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ec6d = call %struct.Memory* @routine_movl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ec6d)
  store %struct.Memory* %call_45ec6d, %struct.Memory** %MEMORY

  ; Code: leaq -0x2f0(%rbp), %rsi	 RIP: 45ec72	 Bytes: 7
  %loadMem_45ec72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ec72 = call %struct.Memory* @routine_leaq_MINUS0x2f0__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ec72)
  store %struct.Memory* %call_45ec72, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %edi	 RIP: 45ec79	 Bytes: 3
  %loadMem_45ec79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ec79 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ec79)
  store %struct.Memory* %call_45ec79, %struct.Memory** %MEMORY

  ; Code: callq .chainlinks2	 RIP: 45ec7c	 Bytes: 5
  %loadMem1_45ec7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_45ec7c = call %struct.Memory* @routine_callq_.chainlinks2(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_45ec7c, i64 -307292, i64 5, i64 5)
  store %struct.Memory* %call1_45ec7c, %struct.Memory** %MEMORY

  %loadMem2_45ec7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45ec7c = load i64, i64* %3
  %call2_45ec7c = call %struct.Memory* @sub_413c20.chainlinks2(%struct.State* %0, i64  %loadPC_45ec7c, %struct.Memory* %loadMem2_45ec7c)
  store %struct.Memory* %call2_45ec7c, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x6c(%rbp)	 RIP: 45ec81	 Bytes: 3
  %loadMem_45ec81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ec81 = call %struct.Memory* @routine_movl__eax__MINUS0x6c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ec81)
  store %struct.Memory* %call_45ec81, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x58(%rbp)	 RIP: 45ec84	 Bytes: 7
  %loadMem_45ec84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ec84 = call %struct.Memory* @routine_movl__0x0__MINUS0x58__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ec84)
  store %struct.Memory* %call_45ec84, %struct.Memory** %MEMORY

  ; Code: .L_45ec8b:	 RIP: 45ec8b	 Bytes: 0
  br label %block_.L_45ec8b
block_.L_45ec8b:

  ; Code: movl -0x58(%rbp), %eax	 RIP: 45ec8b	 Bytes: 3
  %loadMem_45ec8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ec8b = call %struct.Memory* @routine_movl_MINUS0x58__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ec8b)
  store %struct.Memory* %call_45ec8b, %struct.Memory** %MEMORY

  ; Code: cmpl -0x6c(%rbp), %eax	 RIP: 45ec8e	 Bytes: 3
  %loadMem_45ec8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ec8e = call %struct.Memory* @routine_cmpl_MINUS0x6c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ec8e)
  store %struct.Memory* %call_45ec8e, %struct.Memory** %MEMORY

  ; Code: jge .L_45ee1d	 RIP: 45ec91	 Bytes: 6
  %loadMem_45ec91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ec91 = call %struct.Memory* @routine_jge_.L_45ee1d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ec91, i8* %BRANCH_TAKEN, i64 396, i64 6, i64 6)
  store %struct.Memory* %call_45ec91, %struct.Memory** %MEMORY

  %loadBr_45ec91 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45ec91 = icmp eq i8 %loadBr_45ec91, 1
  br i1 %cmpBr_45ec91, label %block_.L_45ee1d, label %block_45ec97

block_45ec97:
  ; Code: movl 0xb54ce4, %eax	 RIP: 45ec97	 Bytes: 7
  %loadMem_45ec97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ec97 = call %struct.Memory* @routine_movl_0xb54ce4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ec97)
  store %struct.Memory* %call_45ec97, %struct.Memory** %MEMORY

  ; Code: cmpl 0xb8b854, %eax	 RIP: 45ec9e	 Bytes: 7
  %loadMem_45ec9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ec9e = call %struct.Memory* @routine_cmpl_0xb8b854___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ec9e)
  store %struct.Memory* %call_45ec9e, %struct.Memory** %MEMORY

  ; Code: jle .L_45ed01	 RIP: 45eca5	 Bytes: 6
  %loadMem_45eca5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45eca5 = call %struct.Memory* @routine_jle_.L_45ed01(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45eca5, i8* %BRANCH_TAKEN, i64 92, i64 6, i64 6)
  store %struct.Memory* %call_45eca5, %struct.Memory** %MEMORY

  %loadBr_45eca5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45eca5 = icmp eq i8 %loadBr_45eca5, 1
  br i1 %cmpBr_45eca5, label %block_.L_45ed01, label %block_45ecab

block_45ecab:
  ; Code: movslq -0x58(%rbp), %rax	 RIP: 45ecab	 Bytes: 4
  %loadMem_45ecab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ecab = call %struct.Memory* @routine_movslq_MINUS0x58__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ecab)
  store %struct.Memory* %call_45ecab, %struct.Memory** %MEMORY

  ; Code: movl -0x2f0(%rbp,%rax,4), %edi	 RIP: 45ecaf	 Bytes: 7
  %loadMem_45ecaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ecaf = call %struct.Memory* @routine_movl_MINUS0x2f0__rbp__rax_4____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ecaf)
  store %struct.Memory* %call_45ecaf, %struct.Memory** %MEMORY

  ; Code: callq .countstones	 RIP: 45ecb6	 Bytes: 5
  %loadMem1_45ecb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_45ecb6 = call %struct.Memory* @routine_callq_.countstones(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_45ecb6, i64 -308422, i64 5, i64 5)
  store %struct.Memory* %call1_45ecb6, %struct.Memory** %MEMORY

  %loadMem2_45ecb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45ecb6 = load i64, i64* %3
  %call2_45ecb6 = call %struct.Memory* @sub_4137f0.countstones(%struct.State* %0, i64  %loadPC_45ecb6, %struct.Memory* %loadMem2_45ecb6)
  store %struct.Memory* %call2_45ecb6, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, %eax	 RIP: 45ecbb	 Bytes: 3
  %loadMem_45ecbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ecbb = call %struct.Memory* @routine_cmpl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ecbb)
  store %struct.Memory* %call_45ecbb, %struct.Memory** %MEMORY

  ; Code: jle .L_45ed01	 RIP: 45ecbe	 Bytes: 6
  %loadMem_45ecbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ecbe = call %struct.Memory* @routine_jle_.L_45ed01(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ecbe, i8* %BRANCH_TAKEN, i64 67, i64 6, i64 6)
  store %struct.Memory* %call_45ecbe, %struct.Memory** %MEMORY

  %loadBr_45ecbe = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45ecbe = icmp eq i8 %loadBr_45ecbe, 1
  br i1 %cmpBr_45ecbe, label %block_.L_45ed01, label %block_45ecc4

block_45ecc4:
  ; Code: jmpq .L_45ecc9	 RIP: 45ecc4	 Bytes: 5
  %loadMem_45ecc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ecc4 = call %struct.Memory* @routine_jmpq_.L_45ecc9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ecc4, i64 5, i64 5)
  store %struct.Memory* %call_45ecc4, %struct.Memory** %MEMORY

  br label %block_.L_45ecc9

  ; Code: .L_45ecc9:	 RIP: 45ecc9	 Bytes: 0
block_.L_45ecc9:

  ; Code: cmpq $0x0, 0xab0ef8	 RIP: 45ecc9	 Bytes: 9
  %loadMem_45ecc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ecc9 = call %struct.Memory* @routine_cmpq__0x0__0xab0ef8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ecc9)
  store %struct.Memory* %call_45ecc9, %struct.Memory** %MEMORY

  ; Code: je .L_45ecf5	 RIP: 45ecd2	 Bytes: 6
  %loadMem_45ecd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ecd2 = call %struct.Memory* @routine_je_.L_45ecf5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ecd2, i8* %BRANCH_TAKEN, i64 35, i64 6, i64 6)
  store %struct.Memory* %call_45ecd2, %struct.Memory** %MEMORY

  %loadBr_45ecd2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45ecd2 = icmp eq i8 %loadBr_45ecd2, 1
  br i1 %cmpBr_45ecd2, label %block_.L_45ecf5, label %block_45ecd8

block_45ecd8:
  ; Code: xorl %eax, %eax	 RIP: 45ecd8	 Bytes: 2
  %loadMem_45ecd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ecd8 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ecd8)
  store %struct.Memory* %call_45ecd8, %struct.Memory** %MEMORY

  ; Code: xorl %ecx, %ecx	 RIP: 45ecda	 Bytes: 2
  %loadMem_45ecda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ecda = call %struct.Memory* @routine_xorl__ecx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ecda)
  store %struct.Memory* %call_45ecda, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %r8d	 RIP: 45ecdc	 Bytes: 3
  %loadMem_45ecdc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ecdc = call %struct.Memory* @routine_movl__ecx___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ecdc)
  store %struct.Memory* %call_45ecdc, %struct.Memory** %MEMORY

  ; Code: movq -0x4b0(%rbp), %rdi	 RIP: 45ecdf	 Bytes: 7
  %loadMem_45ecdf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ecdf = call %struct.Memory* @routine_movq_MINUS0x4b0__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ecdf)
  store %struct.Memory* %call_45ecdf, %struct.Memory** %MEMORY

  ; Code: movl -0x4b4(%rbp), %esi	 RIP: 45ece6	 Bytes: 6
  %loadMem_45ece6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ece6 = call %struct.Memory* @routine_movl_MINUS0x4b4__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ece6)
  store %struct.Memory* %call_45ece6, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 45ecec	 Bytes: 2
  %loadMem_45ecec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ecec = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ecec)
  store %struct.Memory* %call_45ecec, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 45ecee	 Bytes: 2
  %loadMem_45ecee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ecee = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ecee)
  store %struct.Memory* %call_45ecee, %struct.Memory** %MEMORY

  ; Code: callq .sgf_trace	 RIP: 45ecf0	 Bytes: 5
  %loadMem1_45ecf0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_45ecf0 = call %struct.Memory* @routine_callq_.sgf_trace(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_45ecf0, i64 -290096, i64 5, i64 5)
  store %struct.Memory* %call1_45ecf0, %struct.Memory** %MEMORY

  %loadMem2_45ecf0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45ecf0 = load i64, i64* %3
  %call2_45ecf0 = call %struct.Memory* @sub_417fc0.sgf_trace(%struct.State* %0, i64  %loadPC_45ecf0, %struct.Memory* %loadMem2_45ecf0)
  store %struct.Memory* %call2_45ecf0, %struct.Memory** %MEMORY

  ; Code: .L_45ecf5:	 RIP: 45ecf5	 Bytes: 0
  br label %block_.L_45ecf5
block_.L_45ecf5:

  ; Code: movl $0x0, -0x2c(%rbp)	 RIP: 45ecf5	 Bytes: 7
  %loadMem_45ecf5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ecf5 = call %struct.Memory* @routine_movl__0x0__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ecf5)
  store %struct.Memory* %call_45ecf5, %struct.Memory** %MEMORY

  ; Code: jmpq .L_45ff1e	 RIP: 45ecfc	 Bytes: 5
  %loadMem_45ecfc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ecfc = call %struct.Memory* @routine_jmpq_.L_45ff1e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ecfc, i64 4642, i64 5)
  store %struct.Memory* %call_45ecfc, %struct.Memory** %MEMORY

  br label %block_.L_45ff1e

  ; Code: .L_45ed01:	 RIP: 45ed01	 Bytes: 0
block_.L_45ed01:

  ; Code: movl 0xb54ce4, %eax	 RIP: 45ed01	 Bytes: 7
  %loadMem_45ed01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ed01 = call %struct.Memory* @routine_movl_0xb54ce4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ed01)
  store %struct.Memory* %call_45ed01, %struct.Memory** %MEMORY

  ; Code: cmpl 0xb8b854, %eax	 RIP: 45ed08	 Bytes: 7
  %loadMem_45ed08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ed08 = call %struct.Memory* @routine_cmpl_0xb8b854___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ed08)
  store %struct.Memory* %call_45ed08, %struct.Memory** %MEMORY

  ; Code: jg .L_45ed2c	 RIP: 45ed0f	 Bytes: 6
  %loadMem_45ed0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ed0f = call %struct.Memory* @routine_jg_.L_45ed2c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ed0f, i8* %BRANCH_TAKEN, i64 29, i64 6, i64 6)
  store %struct.Memory* %call_45ed0f, %struct.Memory** %MEMORY

  %loadBr_45ed0f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45ed0f = icmp eq i8 %loadBr_45ed0f, 1
  br i1 %cmpBr_45ed0f, label %block_.L_45ed2c, label %block_45ed15

block_45ed15:
  ; Code: leaq -0x4a0(%rbp), %rsi	 RIP: 45ed15	 Bytes: 7
  %loadMem_45ed15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ed15 = call %struct.Memory* @routine_leaq_MINUS0x4a0__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ed15)
  store %struct.Memory* %call_45ed15, %struct.Memory** %MEMORY

  ; Code: movslq -0x58(%rbp), %rax	 RIP: 45ed1c	 Bytes: 4
  %loadMem_45ed1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ed1c = call %struct.Memory* @routine_movslq_MINUS0x58__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ed1c)
  store %struct.Memory* %call_45ed1c, %struct.Memory** %MEMORY

  ; Code: movl -0x2f0(%rbp,%rax,4), %edi	 RIP: 45ed20	 Bytes: 7
  %loadMem_45ed20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ed20 = call %struct.Memory* @routine_movl_MINUS0x2f0__rbp__rax_4____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ed20)
  store %struct.Memory* %call_45ed20, %struct.Memory** %MEMORY

  ; Code: callq .break_chain_moves	 RIP: 45ed27	 Bytes: 5
  %loadMem1_45ed27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_45ed27 = call %struct.Memory* @routine_callq_.break_chain_moves(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_45ed27, i64 12393, i64 5, i64 5)
  store %struct.Memory* %call1_45ed27, %struct.Memory** %MEMORY

  %loadMem2_45ed27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45ed27 = load i64, i64* %3
  %call2_45ed27 = call %struct.Memory* @sub_461d90.break_chain_moves(%struct.State* %0, i64  %loadPC_45ed27, %struct.Memory* %loadMem2_45ed27)
  store %struct.Memory* %call2_45ed27, %struct.Memory** %MEMORY

  ; Code: .L_45ed2c:	 RIP: 45ed2c	 Bytes: 0
  br label %block_.L_45ed2c
block_.L_45ed2c:

  ; Code: movl $0x1, %esi	 RIP: 45ed2c	 Bytes: 5
  %loadMem_45ed2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ed2c = call %struct.Memory* @routine_movl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ed2c)
  store %struct.Memory* %call_45ed2c, %struct.Memory** %MEMORY

  ; Code: leaq -0x4c(%rbp), %rdx	 RIP: 45ed31	 Bytes: 4
  %loadMem_45ed31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ed31 = call %struct.Memory* @routine_leaq_MINUS0x4c__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ed31)
  store %struct.Memory* %call_45ed31, %struct.Memory** %MEMORY

  ; Code: movslq -0x58(%rbp), %rax	 RIP: 45ed35	 Bytes: 4
  %loadMem_45ed35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ed35 = call %struct.Memory* @routine_movslq_MINUS0x58__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ed35)
  store %struct.Memory* %call_45ed35, %struct.Memory** %MEMORY

  ; Code: movl -0x2f0(%rbp,%rax,4), %edi	 RIP: 45ed39	 Bytes: 7
  %loadMem_45ed39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ed39 = call %struct.Memory* @routine_movl_MINUS0x2f0__rbp__rax_4____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ed39)
  store %struct.Memory* %call_45ed39, %struct.Memory** %MEMORY

  ; Code: callq .findlib	 RIP: 45ed40	 Bytes: 5
  %loadMem1_45ed40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_45ed40 = call %struct.Memory* @routine_callq_.findlib(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_45ed40, i64 -324864, i64 5, i64 5)
  store %struct.Memory* %call1_45ed40, %struct.Memory** %MEMORY

  %loadMem2_45ed40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45ed40 = load i64, i64* %3
  %call2_45ed40 = call %struct.Memory* @sub_40f840.findlib(%struct.State* %0, i64  %loadPC_45ed40, %struct.Memory* %loadMem2_45ed40)
  store %struct.Memory* %call2_45ed40, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x58c(%rbp)	 RIP: 45ed45	 Bytes: 6
  %loadMem_45ed45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ed45 = call %struct.Memory* @routine_movl__eax__MINUS0x58c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ed45)
  store %struct.Memory* %call_45ed45, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x4b8(%rbp)	 RIP: 45ed4b	 Bytes: 10
  %loadMem_45ed4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ed4b = call %struct.Memory* @routine_movl__0x0__MINUS0x4b8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ed4b)
  store %struct.Memory* %call_45ed4b, %struct.Memory** %MEMORY

  ; Code: .L_45ed55:	 RIP: 45ed55	 Bytes: 0
  br label %block_.L_45ed55
block_.L_45ed55:

  ; Code: movl -0x4b8(%rbp), %eax	 RIP: 45ed55	 Bytes: 6
  %loadMem_45ed55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ed55 = call %struct.Memory* @routine_movl_MINUS0x4b8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ed55)
  store %struct.Memory* %call_45ed55, %struct.Memory** %MEMORY

  ; Code: cmpl -0x310(%rbp), %eax	 RIP: 45ed5b	 Bytes: 6
  %loadMem_45ed5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ed5b = call %struct.Memory* @routine_cmpl_MINUS0x310__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ed5b)
  store %struct.Memory* %call_45ed5b, %struct.Memory** %MEMORY

  ; Code: jge .L_45edb4	 RIP: 45ed61	 Bytes: 6
  %loadMem_45ed61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ed61 = call %struct.Memory* @routine_jge_.L_45edb4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ed61, i8* %BRANCH_TAKEN, i64 83, i64 6, i64 6)
  store %struct.Memory* %call_45ed61, %struct.Memory** %MEMORY

  %loadBr_45ed61 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45ed61 = icmp eq i8 %loadBr_45ed61, 1
  br i1 %cmpBr_45ed61, label %block_.L_45edb4, label %block_45ed67

block_45ed67:
  ; Code: movslq -0x4b8(%rbp), %rax	 RIP: 45ed67	 Bytes: 7
  %loadMem_45ed67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ed67 = call %struct.Memory* @routine_movslq_MINUS0x4b8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ed67)
  store %struct.Memory* %call_45ed67, %struct.Memory** %MEMORY

  ; Code: movl -0x4a0(%rbp,%rax,4), %ecx	 RIP: 45ed6e	 Bytes: 7
  %loadMem_45ed6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ed6e = call %struct.Memory* @routine_movl_MINUS0x4a0__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ed6e)
  store %struct.Memory* %call_45ed6e, %struct.Memory** %MEMORY

  ; Code: cmpl -0x4c(%rbp), %ecx	 RIP: 45ed75	 Bytes: 3
  %loadMem_45ed75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ed75 = call %struct.Memory* @routine_cmpl_MINUS0x4c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ed75)
  store %struct.Memory* %call_45ed75, %struct.Memory** %MEMORY

  ; Code: jne .L_45ed9b	 RIP: 45ed78	 Bytes: 6
  %loadMem_45ed78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ed78 = call %struct.Memory* @routine_jne_.L_45ed9b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ed78, i8* %BRANCH_TAKEN, i64 35, i64 6, i64 6)
  store %struct.Memory* %call_45ed78, %struct.Memory** %MEMORY

  %loadBr_45ed78 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45ed78 = icmp eq i8 %loadBr_45ed78, 1
  br i1 %cmpBr_45ed78, label %block_.L_45ed9b, label %block_45ed7e

block_45ed7e:
  ; Code: movslq -0x4b8(%rbp), %rax	 RIP: 45ed7e	 Bytes: 7
  %loadMem_45ed7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ed7e = call %struct.Memory* @routine_movslq_MINUS0x4b8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ed7e)
  store %struct.Memory* %call_45ed7e, %struct.Memory** %MEMORY

  ; Code: movl -0x3d8(%rbp,%rax,4), %ecx	 RIP: 45ed85	 Bytes: 7
  %loadMem_45ed85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ed85 = call %struct.Memory* @routine_movl_MINUS0x3d8__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ed85)
  store %struct.Memory* %call_45ed85, %struct.Memory** %MEMORY

  ; Code: addl $0x0, %ecx	 RIP: 45ed8c	 Bytes: 3
  %loadMem_45ed8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ed8c = call %struct.Memory* @routine_addl__0x0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ed8c)
  store %struct.Memory* %call_45ed8c, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x3d8(%rbp,%rax,4)	 RIP: 45ed8f	 Bytes: 7
  %loadMem_45ed8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ed8f = call %struct.Memory* @routine_movl__ecx__MINUS0x3d8__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ed8f)
  store %struct.Memory* %call_45ed8f, %struct.Memory** %MEMORY

  ; Code: jmpq .L_45edb4	 RIP: 45ed96	 Bytes: 5
  %loadMem_45ed96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ed96 = call %struct.Memory* @routine_jmpq_.L_45edb4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ed96, i64 30, i64 5)
  store %struct.Memory* %call_45ed96, %struct.Memory** %MEMORY

  br label %block_.L_45edb4

  ; Code: .L_45ed9b:	 RIP: 45ed9b	 Bytes: 0
block_.L_45ed9b:

  ; Code: jmpq .L_45eda0	 RIP: 45ed9b	 Bytes: 5
  %loadMem_45ed9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ed9b = call %struct.Memory* @routine_jmpq_.L_45eda0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ed9b, i64 5, i64 5)
  store %struct.Memory* %call_45ed9b, %struct.Memory** %MEMORY

  br label %block_.L_45eda0

  ; Code: .L_45eda0:	 RIP: 45eda0	 Bytes: 0
block_.L_45eda0:

  ; Code: movl -0x4b8(%rbp), %eax	 RIP: 45eda0	 Bytes: 6
  %loadMem_45eda0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45eda0 = call %struct.Memory* @routine_movl_MINUS0x4b8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45eda0)
  store %struct.Memory* %call_45eda0, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 45eda6	 Bytes: 3
  %loadMem_45eda6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45eda6 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45eda6)
  store %struct.Memory* %call_45eda6, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4b8(%rbp)	 RIP: 45eda9	 Bytes: 6
  %loadMem_45eda9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45eda9 = call %struct.Memory* @routine_movl__eax__MINUS0x4b8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45eda9)
  store %struct.Memory* %call_45eda9, %struct.Memory** %MEMORY

  ; Code: jmpq .L_45ed55	 RIP: 45edaf	 Bytes: 5
  %loadMem_45edaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45edaf = call %struct.Memory* @routine_jmpq_.L_45ed55(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45edaf, i64 -90, i64 5)
  store %struct.Memory* %call_45edaf, %struct.Memory** %MEMORY

  br label %block_.L_45ed55

  ; Code: .L_45edb4:	 RIP: 45edb4	 Bytes: 0
block_.L_45edb4:

  ; Code: movl -0x4b8(%rbp), %eax	 RIP: 45edb4	 Bytes: 6
  %loadMem_45edb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45edb4 = call %struct.Memory* @routine_movl_MINUS0x4b8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45edb4)
  store %struct.Memory* %call_45edb4, %struct.Memory** %MEMORY

  ; Code: cmpl -0x310(%rbp), %eax	 RIP: 45edba	 Bytes: 6
  %loadMem_45edba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45edba = call %struct.Memory* @routine_cmpl_MINUS0x310__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45edba)
  store %struct.Memory* %call_45edba, %struct.Memory** %MEMORY

  ; Code: jne .L_45ee05	 RIP: 45edc0	 Bytes: 6
  %loadMem_45edc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45edc0 = call %struct.Memory* @routine_jne_.L_45ee05(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45edc0, i8* %BRANCH_TAKEN, i64 69, i64 6, i64 6)
  store %struct.Memory* %call_45edc0, %struct.Memory** %MEMORY

  %loadBr_45edc0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45edc0 = icmp eq i8 %loadBr_45edc0, 1
  br i1 %cmpBr_45edc0, label %block_.L_45ee05, label %block_45edc6

block_45edc6:
  ; Code: cmpl $0x32, -0x310(%rbp)	 RIP: 45edc6	 Bytes: 7
  %loadMem_45edc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45edc6 = call %struct.Memory* @routine_cmpl__0x32__MINUS0x310__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45edc6)
  store %struct.Memory* %call_45edc6, %struct.Memory** %MEMORY

  ; Code: jge .L_45ee05	 RIP: 45edcd	 Bytes: 6
  %loadMem_45edcd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45edcd = call %struct.Memory* @routine_jge_.L_45ee05(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45edcd, i8* %BRANCH_TAKEN, i64 56, i64 6, i64 6)
  store %struct.Memory* %call_45edcd, %struct.Memory** %MEMORY

  %loadBr_45edcd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45edcd = icmp eq i8 %loadBr_45edcd, 1
  br i1 %cmpBr_45edcd, label %block_.L_45ee05, label %block_45edd3

block_45edd3:
  ; Code: movl -0x4c(%rbp), %eax	 RIP: 45edd3	 Bytes: 3
  %loadMem_45edd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45edd3 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45edd3)
  store %struct.Memory* %call_45edd3, %struct.Memory** %MEMORY

  ; Code: movslq -0x310(%rbp), %rcx	 RIP: 45edd6	 Bytes: 7
  %loadMem_45edd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45edd6 = call %struct.Memory* @routine_movslq_MINUS0x310__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45edd6)
  store %struct.Memory* %call_45edd6, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4a0(%rbp,%rcx,4)	 RIP: 45eddd	 Bytes: 7
  %loadMem_45eddd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45eddd = call %struct.Memory* @routine_movl__eax__MINUS0x4a0__rbp__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45eddd)
  store %struct.Memory* %call_45eddd, %struct.Memory** %MEMORY

  ; Code: movslq -0x310(%rbp), %rcx	 RIP: 45ede4	 Bytes: 7
  %loadMem_45ede4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ede4 = call %struct.Memory* @routine_movslq_MINUS0x310__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ede4)
  store %struct.Memory* %call_45ede4, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x3d8(%rbp,%rcx,4)	 RIP: 45edeb	 Bytes: 11
  %loadMem_45edeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45edeb = call %struct.Memory* @routine_movl__0x0__MINUS0x3d8__rbp__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45edeb)
  store %struct.Memory* %call_45edeb, %struct.Memory** %MEMORY

  ; Code: movl -0x310(%rbp), %eax	 RIP: 45edf6	 Bytes: 6
  %loadMem_45edf6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45edf6 = call %struct.Memory* @routine_movl_MINUS0x310__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45edf6)
  store %struct.Memory* %call_45edf6, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 45edfc	 Bytes: 3
  %loadMem_45edfc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45edfc = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45edfc)
  store %struct.Memory* %call_45edfc, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x310(%rbp)	 RIP: 45edff	 Bytes: 6
  %loadMem_45edff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45edff = call %struct.Memory* @routine_movl__eax__MINUS0x310__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45edff)
  store %struct.Memory* %call_45edff, %struct.Memory** %MEMORY

  ; Code: .L_45ee05:	 RIP: 45ee05	 Bytes: 0
  br label %block_.L_45ee05
block_.L_45ee05:

  ; Code: jmpq .L_45ee0a	 RIP: 45ee05	 Bytes: 5
  %loadMem_45ee05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ee05 = call %struct.Memory* @routine_jmpq_.L_45ee0a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ee05, i64 5, i64 5)
  store %struct.Memory* %call_45ee05, %struct.Memory** %MEMORY

  br label %block_.L_45ee0a

  ; Code: .L_45ee0a:	 RIP: 45ee0a	 Bytes: 0
block_.L_45ee0a:

  ; Code: jmpq .L_45ee0f	 RIP: 45ee0a	 Bytes: 5
  %loadMem_45ee0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ee0a = call %struct.Memory* @routine_jmpq_.L_45ee0f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ee0a, i64 5, i64 5)
  store %struct.Memory* %call_45ee0a, %struct.Memory** %MEMORY

  br label %block_.L_45ee0f

  ; Code: .L_45ee0f:	 RIP: 45ee0f	 Bytes: 0
block_.L_45ee0f:

  ; Code: movl -0x58(%rbp), %eax	 RIP: 45ee0f	 Bytes: 3
  %loadMem_45ee0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ee0f = call %struct.Memory* @routine_movl_MINUS0x58__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ee0f)
  store %struct.Memory* %call_45ee0f, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 45ee12	 Bytes: 3
  %loadMem_45ee12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ee12 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ee12)
  store %struct.Memory* %call_45ee12, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x58(%rbp)	 RIP: 45ee15	 Bytes: 3
  %loadMem_45ee15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ee15 = call %struct.Memory* @routine_movl__eax__MINUS0x58__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ee15)
  store %struct.Memory* %call_45ee15, %struct.Memory** %MEMORY

  ; Code: jmpq .L_45ec8b	 RIP: 45ee18	 Bytes: 5
  %loadMem_45ee18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ee18 = call %struct.Memory* @routine_jmpq_.L_45ec8b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ee18, i64 -397, i64 5)
  store %struct.Memory* %call_45ee18, %struct.Memory** %MEMORY

  br label %block_.L_45ec8b

  ; Code: .L_45ee1d:	 RIP: 45ee1d	 Bytes: 0
block_.L_45ee1d:

  ; Code: movl $0x2, %esi	 RIP: 45ee1d	 Bytes: 5
  %loadMem_45ee1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ee1d = call %struct.Memory* @routine_movl__0x2___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ee1d)
  store %struct.Memory* %call_45ee1d, %struct.Memory** %MEMORY

  ; Code: leaq -0x60(%rbp), %rdx	 RIP: 45ee22	 Bytes: 4
  %loadMem_45ee22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ee22 = call %struct.Memory* @routine_leaq_MINUS0x60__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ee22)
  store %struct.Memory* %call_45ee22, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %edi	 RIP: 45ee26	 Bytes: 3
  %loadMem_45ee26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ee26 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ee26)
  store %struct.Memory* %call_45ee26, %struct.Memory** %MEMORY

  ; Code: callq .findlib	 RIP: 45ee29	 Bytes: 5
  %loadMem1_45ee29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_45ee29 = call %struct.Memory* @routine_callq_.findlib(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_45ee29, i64 -325097, i64 5, i64 5)
  store %struct.Memory* %call1_45ee29, %struct.Memory** %MEMORY

  %loadMem2_45ee29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45ee29 = load i64, i64* %3
  %call2_45ee29 = call %struct.Memory* @sub_40f840.findlib(%struct.State* %0, i64  %loadPC_45ee29, %struct.Memory* %loadMem2_45ee29)
  store %struct.Memory* %call2_45ee29, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x54(%rbp)	 RIP: 45ee2e	 Bytes: 3
  %loadMem_45ee2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ee2e = call %struct.Memory* @routine_movl__eax__MINUS0x54__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ee2e)
  store %struct.Memory* %call_45ee2e, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, -0x54(%rbp)	 RIP: 45ee31	 Bytes: 4
  %loadMem_45ee31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ee31 = call %struct.Memory* @routine_cmpl__0x2__MINUS0x54__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ee31)
  store %struct.Memory* %call_45ee31, %struct.Memory** %MEMORY

  ; Code: jne .L_45ee40	 RIP: 45ee35	 Bytes: 6
  %loadMem_45ee35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ee35 = call %struct.Memory* @routine_jne_.L_45ee40(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ee35, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_45ee35, %struct.Memory** %MEMORY

  %loadBr_45ee35 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45ee35 = icmp eq i8 %loadBr_45ee35, 1
  br i1 %cmpBr_45ee35, label %block_.L_45ee40, label %block_45ee3b

block_45ee3b:
  ; Code: jmpq .L_45eeb1	 RIP: 45ee3b	 Bytes: 5
  %loadMem_45ee3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ee3b = call %struct.Memory* @routine_jmpq_.L_45eeb1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ee3b, i64 118, i64 5)
  store %struct.Memory* %call_45ee3b, %struct.Memory** %MEMORY

  br label %block_.L_45eeb1

  ; Code: .L_45ee40:	 RIP: 45ee40	 Bytes: 0
block_.L_45ee40:

  ; Code: movq $0x57fb0d, %rdi	 RIP: 45ee40	 Bytes: 10
  %loadMem_45ee40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ee40 = call %struct.Memory* @routine_movq__0x57fb0d___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ee40)
  store %struct.Memory* %call_45ee40, %struct.Memory** %MEMORY

  ; Code: movl $0xa15, %esi	 RIP: 45ee4a	 Bytes: 5
  %loadMem_45ee4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ee4a = call %struct.Memory* @routine_movl__0xa15___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ee4a)
  store %struct.Memory* %call_45ee4a, %struct.Memory** %MEMORY

  ; Code: movq $0x57fd3a, %rdx	 RIP: 45ee4f	 Bytes: 10
  %loadMem_45ee4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ee4f = call %struct.Memory* @routine_movq__0x57fd3a___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ee4f)
  store %struct.Memory* %call_45ee4f, %struct.Memory** %MEMORY

  ; Code: movl $0x14, %eax	 RIP: 45ee59	 Bytes: 5
  %loadMem_45ee59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ee59 = call %struct.Memory* @routine_movl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ee59)
  store %struct.Memory* %call_45ee59, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %ecx	 RIP: 45ee5e	 Bytes: 3
  %loadMem_45ee5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ee5e = call %struct.Memory* @routine_movl_MINUS0x30__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ee5e)
  store %struct.Memory* %call_45ee5e, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x590(%rbp)	 RIP: 45ee61	 Bytes: 6
  %loadMem_45ee61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ee61 = call %struct.Memory* @routine_movl__eax__MINUS0x590__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ee61)
  store %struct.Memory* %call_45ee61, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %eax	 RIP: 45ee67	 Bytes: 2
  %loadMem_45ee67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ee67 = call %struct.Memory* @routine_movl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ee67)
  store %struct.Memory* %call_45ee67, %struct.Memory** %MEMORY

  ; Code: movq %rdx, -0x598(%rbp)	 RIP: 45ee69	 Bytes: 7
  %loadMem_45ee69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ee69 = call %struct.Memory* @routine_movq__rdx__MINUS0x598__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ee69)
  store %struct.Memory* %call_45ee69, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 45ee70	 Bytes: 1
  %loadMem_45ee70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ee70 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ee70)
  store %struct.Memory* %call_45ee70, %struct.Memory** %MEMORY

  ; Code: movl -0x590(%rbp), %ecx	 RIP: 45ee71	 Bytes: 6
  %loadMem_45ee71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ee71 = call %struct.Memory* @routine_movl_MINUS0x590__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ee71)
  store %struct.Memory* %call_45ee71, %struct.Memory** %MEMORY

  ; Code: idivl %ecx	 RIP: 45ee77	 Bytes: 2
  %loadMem_45ee77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ee77 = call %struct.Memory* @routine_idivl__ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ee77)
  store %struct.Memory* %call_45ee77, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 45ee79	 Bytes: 3
  %loadMem_45ee79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ee79 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ee79)
  store %struct.Memory* %call_45ee79, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %r8d	 RIP: 45ee7c	 Bytes: 4
  %loadMem_45ee7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ee7c = call %struct.Memory* @routine_movl_MINUS0x30__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ee7c)
  store %struct.Memory* %call_45ee7c, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x59c(%rbp)	 RIP: 45ee80	 Bytes: 6
  %loadMem_45ee80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ee80 = call %struct.Memory* @routine_movl__eax__MINUS0x59c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ee80)
  store %struct.Memory* %call_45ee80, %struct.Memory** %MEMORY

  ; Code: movl %r8d, %eax	 RIP: 45ee86	 Bytes: 3
  %loadMem_45ee86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ee86 = call %struct.Memory* @routine_movl__r8d___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ee86)
  store %struct.Memory* %call_45ee86, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 45ee89	 Bytes: 1
  %loadMem_45ee89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ee89 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ee89)
  store %struct.Memory* %call_45ee89, %struct.Memory** %MEMORY

  ; Code: idivl %ecx	 RIP: 45ee8a	 Bytes: 2
  %loadMem_45ee8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ee8a = call %struct.Memory* @routine_idivl__ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ee8a)
  store %struct.Memory* %call_45ee8a, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 45ee8c	 Bytes: 3
  %loadMem_45ee8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ee8c = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ee8c)
  store %struct.Memory* %call_45ee8c, %struct.Memory** %MEMORY

  ; Code: movq -0x598(%rbp), %r9	 RIP: 45ee8f	 Bytes: 7
  %loadMem_45ee8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ee8f = call %struct.Memory* @routine_movq_MINUS0x598__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ee8f)
  store %struct.Memory* %call_45ee8f, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x5a0(%rbp)	 RIP: 45ee96	 Bytes: 6
  %loadMem_45ee96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ee96 = call %struct.Memory* @routine_movl__edx__MINUS0x5a0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ee96)
  store %struct.Memory* %call_45ee96, %struct.Memory** %MEMORY

  ; Code: movq %r9, %rdx	 RIP: 45ee9c	 Bytes: 3
  %loadMem_45ee9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ee9c = call %struct.Memory* @routine_movq__r9___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ee9c)
  store %struct.Memory* %call_45ee9c, %struct.Memory** %MEMORY

  ; Code: movl -0x59c(%rbp), %ecx	 RIP: 45ee9f	 Bytes: 6
  %loadMem_45ee9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ee9f = call %struct.Memory* @routine_movl_MINUS0x59c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ee9f)
  store %struct.Memory* %call_45ee9f, %struct.Memory** %MEMORY

  ; Code: movl -0x5a0(%rbp), %r8d	 RIP: 45eea5	 Bytes: 7
  %loadMem_45eea5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45eea5 = call %struct.Memory* @routine_movl_MINUS0x5a0__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45eea5)
  store %struct.Memory* %call_45eea5, %struct.Memory** %MEMORY

  ; Code: callq .abortgo	 RIP: 45eeac	 Bytes: 5
  %loadMem1_45eeac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_45eeac = call %struct.Memory* @routine_callq_.abortgo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_45eeac, i64 -52764, i64 5, i64 5)
  store %struct.Memory* %call1_45eeac, %struct.Memory** %MEMORY

  %loadMem2_45eeac = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45eeac = load i64, i64* %3
  %call2_45eeac = call %struct.Memory* @sub_452090.abortgo(%struct.State* %0, i64  %loadPC_45eeac, %struct.Memory* %loadMem2_45eeac)
  store %struct.Memory* %call2_45eeac, %struct.Memory** %MEMORY

  ; Code: .L_45eeb1:	 RIP: 45eeb1	 Bytes: 0
  br label %block_.L_45eeb1
block_.L_45eeb1:

  ; Code: movl -0x60(%rbp), %eax	 RIP: 45eeb1	 Bytes: 3
  %loadMem_45eeb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45eeb1 = call %struct.Memory* @routine_movl_MINUS0x60__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45eeb1)
  store %struct.Memory* %call_45eeb1, %struct.Memory** %MEMORY

  ; Code: movl -0x5c(%rbp), %ecx	 RIP: 45eeb4	 Bytes: 3
  %loadMem_45eeb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45eeb4 = call %struct.Memory* @routine_movl_MINUS0x5c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45eeb4)
  store %struct.Memory* %call_45eeb4, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %ecx	 RIP: 45eeb7	 Bytes: 3
  %loadMem_45eeb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45eeb7 = call %struct.Memory* @routine_addl__0x14___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45eeb7)
  store %struct.Memory* %call_45eeb7, %struct.Memory** %MEMORY

  ; Code: cmpl %ecx, %eax	 RIP: 45eeba	 Bytes: 2
  %loadMem_45eeba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45eeba = call %struct.Memory* @routine_cmpl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45eeba)
  store %struct.Memory* %call_45eeba, %struct.Memory** %MEMORY

  ; Code: je .L_45eef5	 RIP: 45eebc	 Bytes: 6
  %loadMem_45eebc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45eebc = call %struct.Memory* @routine_je_.L_45eef5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45eebc, i8* %BRANCH_TAKEN, i64 57, i64 6, i64 6)
  store %struct.Memory* %call_45eebc, %struct.Memory** %MEMORY

  %loadBr_45eebc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45eebc = icmp eq i8 %loadBr_45eebc, 1
  br i1 %cmpBr_45eebc, label %block_.L_45eef5, label %block_45eec2

block_45eec2:
  ; Code: movl -0x60(%rbp), %eax	 RIP: 45eec2	 Bytes: 3
  %loadMem_45eec2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45eec2 = call %struct.Memory* @routine_movl_MINUS0x60__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45eec2)
  store %struct.Memory* %call_45eec2, %struct.Memory** %MEMORY

  ; Code: movl -0x5c(%rbp), %ecx	 RIP: 45eec5	 Bytes: 3
  %loadMem_45eec5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45eec5 = call %struct.Memory* @routine_movl_MINUS0x5c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45eec5)
  store %struct.Memory* %call_45eec5, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 45eec8	 Bytes: 3
  %loadMem_45eec8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45eec8 = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45eec8)
  store %struct.Memory* %call_45eec8, %struct.Memory** %MEMORY

  ; Code: cmpl %ecx, %eax	 RIP: 45eecb	 Bytes: 2
  %loadMem_45eecb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45eecb = call %struct.Memory* @routine_cmpl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45eecb)
  store %struct.Memory* %call_45eecb, %struct.Memory** %MEMORY

  ; Code: je .L_45eef5	 RIP: 45eecd	 Bytes: 6
  %loadMem_45eecd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45eecd = call %struct.Memory* @routine_je_.L_45eef5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45eecd, i8* %BRANCH_TAKEN, i64 40, i64 6, i64 6)
  store %struct.Memory* %call_45eecd, %struct.Memory** %MEMORY

  %loadBr_45eecd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45eecd = icmp eq i8 %loadBr_45eecd, 1
  br i1 %cmpBr_45eecd, label %block_.L_45eef5, label %block_45eed3

block_45eed3:
  ; Code: movl -0x60(%rbp), %eax	 RIP: 45eed3	 Bytes: 3
  %loadMem_45eed3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45eed3 = call %struct.Memory* @routine_movl_MINUS0x60__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45eed3)
  store %struct.Memory* %call_45eed3, %struct.Memory** %MEMORY

  ; Code: movl -0x5c(%rbp), %ecx	 RIP: 45eed6	 Bytes: 3
  %loadMem_45eed6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45eed6 = call %struct.Memory* @routine_movl_MINUS0x5c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45eed6)
  store %struct.Memory* %call_45eed6, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %ecx	 RIP: 45eed9	 Bytes: 3
  %loadMem_45eed9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45eed9 = call %struct.Memory* @routine_subl__0x14___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45eed9)
  store %struct.Memory* %call_45eed9, %struct.Memory** %MEMORY

  ; Code: cmpl %ecx, %eax	 RIP: 45eedc	 Bytes: 2
  %loadMem_45eedc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45eedc = call %struct.Memory* @routine_cmpl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45eedc)
  store %struct.Memory* %call_45eedc, %struct.Memory** %MEMORY

  ; Code: je .L_45eef5	 RIP: 45eede	 Bytes: 6
  %loadMem_45eede = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45eede = call %struct.Memory* @routine_je_.L_45eef5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45eede, i8* %BRANCH_TAKEN, i64 23, i64 6, i64 6)
  store %struct.Memory* %call_45eede, %struct.Memory** %MEMORY

  %loadBr_45eede = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45eede = icmp eq i8 %loadBr_45eede, 1
  br i1 %cmpBr_45eede, label %block_.L_45eef5, label %block_45eee4

block_45eee4:
  ; Code: movl -0x60(%rbp), %eax	 RIP: 45eee4	 Bytes: 3
  %loadMem_45eee4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45eee4 = call %struct.Memory* @routine_movl_MINUS0x60__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45eee4)
  store %struct.Memory* %call_45eee4, %struct.Memory** %MEMORY

  ; Code: movl -0x5c(%rbp), %ecx	 RIP: 45eee7	 Bytes: 3
  %loadMem_45eee7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45eee7 = call %struct.Memory* @routine_movl_MINUS0x5c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45eee7)
  store %struct.Memory* %call_45eee7, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 45eeea	 Bytes: 3
  %loadMem_45eeea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45eeea = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45eeea)
  store %struct.Memory* %call_45eeea, %struct.Memory** %MEMORY

  ; Code: cmpl %ecx, %eax	 RIP: 45eeed	 Bytes: 2
  %loadMem_45eeed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45eeed = call %struct.Memory* @routine_cmpl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45eeed)
  store %struct.Memory* %call_45eeed, %struct.Memory** %MEMORY

  ; Code: jne .L_45eeff	 RIP: 45eeef	 Bytes: 6
  %loadMem_45eeef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45eeef = call %struct.Memory* @routine_jne_.L_45eeff(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45eeef, i8* %BRANCH_TAKEN, i64 16, i64 6, i64 6)
  store %struct.Memory* %call_45eeef, %struct.Memory** %MEMORY

  %loadBr_45eeef = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45eeef = icmp eq i8 %loadBr_45eeef, 1
  br i1 %cmpBr_45eeef, label %block_.L_45eeff, label %block_.L_45eef5

  ; Code: .L_45eef5:	 RIP: 45eef5	 Bytes: 0
block_.L_45eef5:

  ; Code: movl $0x1, -0x4a4(%rbp)	 RIP: 45eef5	 Bytes: 10
  %loadMem_45eef5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45eef5 = call %struct.Memory* @routine_movl__0x1__MINUS0x4a4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45eef5)
  store %struct.Memory* %call_45eef5, %struct.Memory** %MEMORY

  ; Code: .L_45eeff:	 RIP: 45eeff	 Bytes: 0
  br label %block_.L_45eeff
block_.L_45eeff:

  ; Code: movl $0x0, -0x304(%rbp)	 RIP: 45eeff	 Bytes: 10
  %loadMem_45eeff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45eeff = call %struct.Memory* @routine_movl__0x0__MINUS0x304__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45eeff)
  store %struct.Memory* %call_45eeff, %struct.Memory** %MEMORY

  ; Code: .L_45ef09:	 RIP: 45ef09	 Bytes: 0
  br label %block_.L_45ef09
block_.L_45ef09:

  ; Code: cmpl $0x2, -0x304(%rbp)	 RIP: 45ef09	 Bytes: 7
  %loadMem_45ef09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ef09 = call %struct.Memory* @routine_cmpl__0x2__MINUS0x304__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ef09)
  store %struct.Memory* %call_45ef09, %struct.Memory** %MEMORY

  ; Code: jge .L_45f33b	 RIP: 45ef10	 Bytes: 6
  %loadMem_45ef10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ef10 = call %struct.Memory* @routine_jge_.L_45f33b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ef10, i8* %BRANCH_TAKEN, i64 1067, i64 6, i64 6)
  store %struct.Memory* %call_45ef10, %struct.Memory** %MEMORY

  %loadBr_45ef10 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45ef10 = icmp eq i8 %loadBr_45ef10, 1
  br i1 %cmpBr_45ef10, label %block_.L_45f33b, label %block_45ef16

block_45ef16:
  ; Code: movslq -0x304(%rbp), %rax	 RIP: 45ef16	 Bytes: 7
  %loadMem_45ef16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ef16 = call %struct.Memory* @routine_movslq_MINUS0x304__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ef16)
  store %struct.Memory* %call_45ef16, %struct.Memory** %MEMORY

  ; Code: movl -0x60(%rbp,%rax,4), %ecx	 RIP: 45ef1d	 Bytes: 4
  %loadMem_45ef1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ef1d = call %struct.Memory* @routine_movl_MINUS0x60__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ef1d)
  store %struct.Memory* %call_45ef1d, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x4bc(%rbp)	 RIP: 45ef21	 Bytes: 6
  %loadMem_45ef21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ef21 = call %struct.Memory* @routine_movl__ecx__MINUS0x4bc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ef21)
  store %struct.Memory* %call_45ef21, %struct.Memory** %MEMORY

  ; Code: movl -0x4bc(%rbp), %edi	 RIP: 45ef27	 Bytes: 6
  %loadMem_45ef27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ef27 = call %struct.Memory* @routine_movl_MINUS0x4bc__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ef27)
  store %struct.Memory* %call_45ef27, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %esi	 RIP: 45ef2d	 Bytes: 3
  %loadMem_45ef2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ef2d = call %struct.Memory* @routine_movl_MINUS0x48__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ef2d)
  store %struct.Memory* %call_45ef2d, %struct.Memory** %MEMORY

  ; Code: callq .is_self_atari	 RIP: 45ef30	 Bytes: 5
  %loadMem1_45ef30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_45ef30 = call %struct.Memory* @routine_callq_.is_self_atari(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_45ef30, i64 -306320, i64 5, i64 5)
  store %struct.Memory* %call1_45ef30, %struct.Memory** %MEMORY

  %loadMem2_45ef30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45ef30 = load i64, i64* %3
  %call2_45ef30 = call %struct.Memory* @sub_4142a0.is_self_atari(%struct.State* %0, i64  %loadPC_45ef30, %struct.Memory* %loadMem2_45ef30)
  store %struct.Memory* %call2_45ef30, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 45ef35	 Bytes: 3
  %loadMem_45ef35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ef35 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ef35)
  store %struct.Memory* %call_45ef35, %struct.Memory** %MEMORY

  ; Code: jne .L_45ef48	 RIP: 45ef38	 Bytes: 6
  %loadMem_45ef38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ef38 = call %struct.Memory* @routine_jne_.L_45ef48(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ef38, i8* %BRANCH_TAKEN, i64 16, i64 6, i64 6)
  store %struct.Memory* %call_45ef38, %struct.Memory** %MEMORY

  %loadBr_45ef38 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45ef38 = icmp eq i8 %loadBr_45ef38, 1
  br i1 %cmpBr_45ef38, label %block_.L_45ef48, label %block_45ef3e

block_45ef3e:
  ; Code: movl $0x1, -0x308(%rbp)	 RIP: 45ef3e	 Bytes: 10
  %loadMem_45ef3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ef3e = call %struct.Memory* @routine_movl__0x1__MINUS0x308__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ef3e)
  store %struct.Memory* %call_45ef3e, %struct.Memory** %MEMORY

  ; Code: .L_45ef48:	 RIP: 45ef48	 Bytes: 0
  br label %block_.L_45ef48
block_.L_45ef48:

  ; Code: movl 0xb54ce4, %eax	 RIP: 45ef48	 Bytes: 7
  %loadMem_45ef48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ef48 = call %struct.Memory* @routine_movl_0xb54ce4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ef48)
  store %struct.Memory* %call_45ef48, %struct.Memory** %MEMORY

  ; Code: cmpl 0xb060b8, %eax	 RIP: 45ef4f	 Bytes: 7
  %loadMem_45ef4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ef4f = call %struct.Memory* @routine_cmpl_0xb060b8___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ef4f)
  store %struct.Memory* %call_45ef4f, %struct.Memory** %MEMORY

  ; Code: jle .L_45f008	 RIP: 45ef56	 Bytes: 6
  %loadMem_45ef56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ef56 = call %struct.Memory* @routine_jle_.L_45f008(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ef56, i8* %BRANCH_TAKEN, i64 178, i64 6, i64 6)
  store %struct.Memory* %call_45ef56, %struct.Memory** %MEMORY

  %loadBr_45ef56 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45ef56 = icmp eq i8 %loadBr_45ef56, 1
  br i1 %cmpBr_45ef56, label %block_.L_45f008, label %block_45ef5c

block_45ef5c:
  ; Code: movl 0xb54ce4, %eax	 RIP: 45ef5c	 Bytes: 7
  %loadMem_45ef5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ef5c = call %struct.Memory* @routine_movl_0xb54ce4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ef5c)
  store %struct.Memory* %call_45ef5c, %struct.Memory** %MEMORY

  ; Code: cmpl 0xb8b854, %eax	 RIP: 45ef63	 Bytes: 7
  %loadMem_45ef63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ef63 = call %struct.Memory* @routine_cmpl_0xb8b854___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ef63)
  store %struct.Memory* %call_45ef63, %struct.Memory** %MEMORY

  ; Code: jle .L_45ef7d	 RIP: 45ef6a	 Bytes: 6
  %loadMem_45ef6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ef6a = call %struct.Memory* @routine_jle_.L_45ef7d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ef6a, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_45ef6a, %struct.Memory** %MEMORY

  %loadBr_45ef6a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45ef6a = icmp eq i8 %loadBr_45ef6a, 1
  br i1 %cmpBr_45ef6a, label %block_.L_45ef7d, label %block_45ef70

block_45ef70:
  ; Code: cmpl $0x0, -0x4a4(%rbp)	 RIP: 45ef70	 Bytes: 7
  %loadMem_45ef70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ef70 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x4a4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ef70)
  store %struct.Memory* %call_45ef70, %struct.Memory** %MEMORY

  ; Code: je .L_45eff1	 RIP: 45ef77	 Bytes: 6
  %loadMem_45ef77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ef77 = call %struct.Memory* @routine_je_.L_45eff1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ef77, i8* %BRANCH_TAKEN, i64 122, i64 6, i64 6)
  store %struct.Memory* %call_45ef77, %struct.Memory** %MEMORY

  %loadBr_45ef77 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45ef77 = icmp eq i8 %loadBr_45ef77, 1
  br i1 %cmpBr_45ef77, label %block_.L_45eff1, label %block_.L_45ef7d

  ; Code: .L_45ef7d:	 RIP: 45ef7d	 Bytes: 0
block_.L_45ef7d:

  ; Code: movl -0x4bc(%rbp), %eax	 RIP: 45ef7d	 Bytes: 6
  %loadMem_45ef7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ef7d = call %struct.Memory* @routine_movl_MINUS0x4bc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ef7d)
  store %struct.Memory* %call_45ef7d, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 45ef83	 Bytes: 3
  %loadMem_45ef83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ef83 = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ef83)
  store %struct.Memory* %call_45ef83, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 45ef86	 Bytes: 3
  %loadMem_45ef86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ef86 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ef86)
  store %struct.Memory* %call_45ef86, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 45ef89	 Bytes: 8
  %loadMem_45ef89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ef89 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ef89)
  store %struct.Memory* %call_45ef89, %struct.Memory** %MEMORY

  ; Code: cmpl -0x48(%rbp), %eax	 RIP: 45ef91	 Bytes: 3
  %loadMem_45ef91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ef91 = call %struct.Memory* @routine_cmpl_MINUS0x48__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ef91)
  store %struct.Memory* %call_45ef91, %struct.Memory** %MEMORY

  ; Code: je .L_45eff1	 RIP: 45ef94	 Bytes: 6
  %loadMem_45ef94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ef94 = call %struct.Memory* @routine_je_.L_45eff1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ef94, i8* %BRANCH_TAKEN, i64 93, i64 6, i64 6)
  store %struct.Memory* %call_45ef94, %struct.Memory** %MEMORY

  %loadBr_45ef94 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45ef94 = icmp eq i8 %loadBr_45ef94, 1
  br i1 %cmpBr_45ef94, label %block_.L_45eff1, label %block_45ef9a

block_45ef9a:
  ; Code: movl -0x4bc(%rbp), %eax	 RIP: 45ef9a	 Bytes: 6
  %loadMem_45ef9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ef9a = call %struct.Memory* @routine_movl_MINUS0x4bc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ef9a)
  store %struct.Memory* %call_45ef9a, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 45efa0	 Bytes: 3
  %loadMem_45efa0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45efa0 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45efa0)
  store %struct.Memory* %call_45efa0, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 45efa3	 Bytes: 3
  %loadMem_45efa3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45efa3 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45efa3)
  store %struct.Memory* %call_45efa3, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 45efa6	 Bytes: 8
  %loadMem_45efa6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45efa6 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45efa6)
  store %struct.Memory* %call_45efa6, %struct.Memory** %MEMORY

  ; Code: cmpl -0x48(%rbp), %eax	 RIP: 45efae	 Bytes: 3
  %loadMem_45efae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45efae = call %struct.Memory* @routine_cmpl_MINUS0x48__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45efae)
  store %struct.Memory* %call_45efae, %struct.Memory** %MEMORY

  ; Code: je .L_45eff1	 RIP: 45efb1	 Bytes: 6
  %loadMem_45efb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45efb1 = call %struct.Memory* @routine_je_.L_45eff1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45efb1, i8* %BRANCH_TAKEN, i64 64, i64 6, i64 6)
  store %struct.Memory* %call_45efb1, %struct.Memory** %MEMORY

  %loadBr_45efb1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45efb1 = icmp eq i8 %loadBr_45efb1, 1
  br i1 %cmpBr_45efb1, label %block_.L_45eff1, label %block_45efb7

block_45efb7:
  ; Code: movl -0x4bc(%rbp), %eax	 RIP: 45efb7	 Bytes: 6
  %loadMem_45efb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45efb7 = call %struct.Memory* @routine_movl_MINUS0x4bc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45efb7)
  store %struct.Memory* %call_45efb7, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 45efbd	 Bytes: 3
  %loadMem_45efbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45efbd = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45efbd)
  store %struct.Memory* %call_45efbd, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 45efc0	 Bytes: 3
  %loadMem_45efc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45efc0 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45efc0)
  store %struct.Memory* %call_45efc0, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 45efc3	 Bytes: 8
  %loadMem_45efc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45efc3 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45efc3)
  store %struct.Memory* %call_45efc3, %struct.Memory** %MEMORY

  ; Code: cmpl -0x48(%rbp), %eax	 RIP: 45efcb	 Bytes: 3
  %loadMem_45efcb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45efcb = call %struct.Memory* @routine_cmpl_MINUS0x48__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45efcb)
  store %struct.Memory* %call_45efcb, %struct.Memory** %MEMORY

  ; Code: je .L_45eff1	 RIP: 45efce	 Bytes: 6
  %loadMem_45efce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45efce = call %struct.Memory* @routine_je_.L_45eff1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45efce, i8* %BRANCH_TAKEN, i64 35, i64 6, i64 6)
  store %struct.Memory* %call_45efce, %struct.Memory** %MEMORY

  %loadBr_45efce = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45efce = icmp eq i8 %loadBr_45efce, 1
  br i1 %cmpBr_45efce, label %block_.L_45eff1, label %block_45efd4

block_45efd4:
  ; Code: movl -0x4bc(%rbp), %eax	 RIP: 45efd4	 Bytes: 6
  %loadMem_45efd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45efd4 = call %struct.Memory* @routine_movl_MINUS0x4bc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45efd4)
  store %struct.Memory* %call_45efd4, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 45efda	 Bytes: 3
  %loadMem_45efda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45efda = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45efda)
  store %struct.Memory* %call_45efda, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 45efdd	 Bytes: 3
  %loadMem_45efdd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45efdd = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45efdd)
  store %struct.Memory* %call_45efdd, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 45efe0	 Bytes: 8
  %loadMem_45efe0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45efe0 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45efe0)
  store %struct.Memory* %call_45efe0, %struct.Memory** %MEMORY

  ; Code: cmpl -0x48(%rbp), %eax	 RIP: 45efe8	 Bytes: 3
  %loadMem_45efe8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45efe8 = call %struct.Memory* @routine_cmpl_MINUS0x48__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45efe8)
  store %struct.Memory* %call_45efe8, %struct.Memory** %MEMORY

  ; Code: jne .L_45f008	 RIP: 45efeb	 Bytes: 6
  %loadMem_45efeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45efeb = call %struct.Memory* @routine_jne_.L_45f008(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45efeb, i8* %BRANCH_TAKEN, i64 29, i64 6, i64 6)
  store %struct.Memory* %call_45efeb, %struct.Memory** %MEMORY

  %loadBr_45efeb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45efeb = icmp eq i8 %loadBr_45efeb, 1
  br i1 %cmpBr_45efeb, label %block_.L_45f008, label %block_.L_45eff1

  ; Code: .L_45eff1:	 RIP: 45eff1	 Bytes: 0
block_.L_45eff1:

  ; Code: movl -0x4bc(%rbp), %edi	 RIP: 45eff1	 Bytes: 6
  %loadMem_45eff1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45eff1 = call %struct.Memory* @routine_movl_MINUS0x4bc__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45eff1)
  store %struct.Memory* %call_45eff1, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %esi	 RIP: 45eff7	 Bytes: 3
  %loadMem_45eff7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45eff7 = call %struct.Memory* @routine_movl_MINUS0x48__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45eff7)
  store %struct.Memory* %call_45eff7, %struct.Memory** %MEMORY

  ; Code: callq .is_self_atari	 RIP: 45effa	 Bytes: 5
  %loadMem1_45effa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_45effa = call %struct.Memory* @routine_callq_.is_self_atari(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_45effa, i64 -306522, i64 5, i64 5)
  store %struct.Memory* %call1_45effa, %struct.Memory** %MEMORY

  %loadMem2_45effa = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45effa = load i64, i64* %3
  %call2_45effa = call %struct.Memory* @sub_4142a0.is_self_atari(%struct.State* %0, i64  %loadPC_45effa, %struct.Memory* %loadMem2_45effa)
  store %struct.Memory* %call2_45effa, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 45efff	 Bytes: 3
  %loadMem_45efff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45efff = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45efff)
  store %struct.Memory* %call_45efff, %struct.Memory** %MEMORY

  ; Code: jne .L_45f0d7	 RIP: 45f002	 Bytes: 6
  %loadMem_45f002 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f002 = call %struct.Memory* @routine_jne_.L_45f0d7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f002, i8* %BRANCH_TAKEN, i64 213, i64 6, i64 6)
  store %struct.Memory* %call_45f002, %struct.Memory** %MEMORY

  %loadBr_45f002 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45f002 = icmp eq i8 %loadBr_45f002, 1
  br i1 %cmpBr_45f002, label %block_.L_45f0d7, label %block_.L_45f008

  ; Code: .L_45f008:	 RIP: 45f008	 Bytes: 0
block_.L_45f008:

  ; Code: jmpq .L_45f00d	 RIP: 45f008	 Bytes: 5
  %loadMem_45f008 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f008 = call %struct.Memory* @routine_jmpq_.L_45f00d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f008, i64 5, i64 5)
  store %struct.Memory* %call_45f008, %struct.Memory** %MEMORY

  br label %block_.L_45f00d

  ; Code: .L_45f00d:	 RIP: 45f00d	 Bytes: 0
block_.L_45f00d:

  ; Code: movl $0x0, -0x4c0(%rbp)	 RIP: 45f00d	 Bytes: 10
  %loadMem_45f00d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f00d = call %struct.Memory* @routine_movl__0x0__MINUS0x4c0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f00d)
  store %struct.Memory* %call_45f00d, %struct.Memory** %MEMORY

  ; Code: .L_45f017:	 RIP: 45f017	 Bytes: 0
  br label %block_.L_45f017
block_.L_45f017:

  ; Code: movl -0x4c0(%rbp), %eax	 RIP: 45f017	 Bytes: 6
  %loadMem_45f017 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f017 = call %struct.Memory* @routine_movl_MINUS0x4c0__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f017)
  store %struct.Memory* %call_45f017, %struct.Memory** %MEMORY

  ; Code: cmpl -0x310(%rbp), %eax	 RIP: 45f01d	 Bytes: 6
  %loadMem_45f01d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f01d = call %struct.Memory* @routine_cmpl_MINUS0x310__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f01d)
  store %struct.Memory* %call_45f01d, %struct.Memory** %MEMORY

  ; Code: jge .L_45f079	 RIP: 45f023	 Bytes: 6
  %loadMem_45f023 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f023 = call %struct.Memory* @routine_jge_.L_45f079(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f023, i8* %BRANCH_TAKEN, i64 86, i64 6, i64 6)
  store %struct.Memory* %call_45f023, %struct.Memory** %MEMORY

  %loadBr_45f023 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45f023 = icmp eq i8 %loadBr_45f023, 1
  br i1 %cmpBr_45f023, label %block_.L_45f079, label %block_45f029

block_45f029:
  ; Code: movslq -0x4c0(%rbp), %rax	 RIP: 45f029	 Bytes: 7
  %loadMem_45f029 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f029 = call %struct.Memory* @routine_movslq_MINUS0x4c0__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f029)
  store %struct.Memory* %call_45f029, %struct.Memory** %MEMORY

  ; Code: movl -0x4a0(%rbp,%rax,4), %ecx	 RIP: 45f030	 Bytes: 7
  %loadMem_45f030 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f030 = call %struct.Memory* @routine_movl_MINUS0x4a0__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f030)
  store %struct.Memory* %call_45f030, %struct.Memory** %MEMORY

  ; Code: cmpl -0x4bc(%rbp), %ecx	 RIP: 45f037	 Bytes: 6
  %loadMem_45f037 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f037 = call %struct.Memory* @routine_cmpl_MINUS0x4bc__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f037)
  store %struct.Memory* %call_45f037, %struct.Memory** %MEMORY

  ; Code: jne .L_45f060	 RIP: 45f03d	 Bytes: 6
  %loadMem_45f03d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f03d = call %struct.Memory* @routine_jne_.L_45f060(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f03d, i8* %BRANCH_TAKEN, i64 35, i64 6, i64 6)
  store %struct.Memory* %call_45f03d, %struct.Memory** %MEMORY

  %loadBr_45f03d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45f03d = icmp eq i8 %loadBr_45f03d, 1
  br i1 %cmpBr_45f03d, label %block_.L_45f060, label %block_45f043

block_45f043:
  ; Code: movslq -0x4c0(%rbp), %rax	 RIP: 45f043	 Bytes: 7
  %loadMem_45f043 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f043 = call %struct.Memory* @routine_movslq_MINUS0x4c0__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f043)
  store %struct.Memory* %call_45f043, %struct.Memory** %MEMORY

  ; Code: movl -0x3d8(%rbp,%rax,4), %ecx	 RIP: 45f04a	 Bytes: 7
  %loadMem_45f04a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f04a = call %struct.Memory* @routine_movl_MINUS0x3d8__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f04a)
  store %struct.Memory* %call_45f04a, %struct.Memory** %MEMORY

  ; Code: addl $0x0, %ecx	 RIP: 45f051	 Bytes: 3
  %loadMem_45f051 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f051 = call %struct.Memory* @routine_addl__0x0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f051)
  store %struct.Memory* %call_45f051, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x3d8(%rbp,%rax,4)	 RIP: 45f054	 Bytes: 7
  %loadMem_45f054 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f054 = call %struct.Memory* @routine_movl__ecx__MINUS0x3d8__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f054)
  store %struct.Memory* %call_45f054, %struct.Memory** %MEMORY

  ; Code: jmpq .L_45f079	 RIP: 45f05b	 Bytes: 5
  %loadMem_45f05b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f05b = call %struct.Memory* @routine_jmpq_.L_45f079(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f05b, i64 30, i64 5)
  store %struct.Memory* %call_45f05b, %struct.Memory** %MEMORY

  br label %block_.L_45f079

  ; Code: .L_45f060:	 RIP: 45f060	 Bytes: 0
block_.L_45f060:

  ; Code: jmpq .L_45f065	 RIP: 45f060	 Bytes: 5
  %loadMem_45f060 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f060 = call %struct.Memory* @routine_jmpq_.L_45f065(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f060, i64 5, i64 5)
  store %struct.Memory* %call_45f060, %struct.Memory** %MEMORY

  br label %block_.L_45f065

  ; Code: .L_45f065:	 RIP: 45f065	 Bytes: 0
block_.L_45f065:

  ; Code: movl -0x4c0(%rbp), %eax	 RIP: 45f065	 Bytes: 6
  %loadMem_45f065 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f065 = call %struct.Memory* @routine_movl_MINUS0x4c0__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f065)
  store %struct.Memory* %call_45f065, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 45f06b	 Bytes: 3
  %loadMem_45f06b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f06b = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f06b)
  store %struct.Memory* %call_45f06b, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4c0(%rbp)	 RIP: 45f06e	 Bytes: 6
  %loadMem_45f06e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f06e = call %struct.Memory* @routine_movl__eax__MINUS0x4c0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f06e)
  store %struct.Memory* %call_45f06e, %struct.Memory** %MEMORY

  ; Code: jmpq .L_45f017	 RIP: 45f074	 Bytes: 5
  %loadMem_45f074 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f074 = call %struct.Memory* @routine_jmpq_.L_45f017(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f074, i64 -93, i64 5)
  store %struct.Memory* %call_45f074, %struct.Memory** %MEMORY

  br label %block_.L_45f017

  ; Code: .L_45f079:	 RIP: 45f079	 Bytes: 0
block_.L_45f079:

  ; Code: movl -0x4c0(%rbp), %eax	 RIP: 45f079	 Bytes: 6
  %loadMem_45f079 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f079 = call %struct.Memory* @routine_movl_MINUS0x4c0__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f079)
  store %struct.Memory* %call_45f079, %struct.Memory** %MEMORY

  ; Code: cmpl -0x310(%rbp), %eax	 RIP: 45f07f	 Bytes: 6
  %loadMem_45f07f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f07f = call %struct.Memory* @routine_cmpl_MINUS0x310__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f07f)
  store %struct.Memory* %call_45f07f, %struct.Memory** %MEMORY

  ; Code: jne .L_45f0cd	 RIP: 45f085	 Bytes: 6
  %loadMem_45f085 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f085 = call %struct.Memory* @routine_jne_.L_45f0cd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f085, i8* %BRANCH_TAKEN, i64 72, i64 6, i64 6)
  store %struct.Memory* %call_45f085, %struct.Memory** %MEMORY

  %loadBr_45f085 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45f085 = icmp eq i8 %loadBr_45f085, 1
  br i1 %cmpBr_45f085, label %block_.L_45f0cd, label %block_45f08b

block_45f08b:
  ; Code: cmpl $0x32, -0x310(%rbp)	 RIP: 45f08b	 Bytes: 7
  %loadMem_45f08b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f08b = call %struct.Memory* @routine_cmpl__0x32__MINUS0x310__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f08b)
  store %struct.Memory* %call_45f08b, %struct.Memory** %MEMORY

  ; Code: jge .L_45f0cd	 RIP: 45f092	 Bytes: 6
  %loadMem_45f092 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f092 = call %struct.Memory* @routine_jge_.L_45f0cd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f092, i8* %BRANCH_TAKEN, i64 59, i64 6, i64 6)
  store %struct.Memory* %call_45f092, %struct.Memory** %MEMORY

  %loadBr_45f092 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45f092 = icmp eq i8 %loadBr_45f092, 1
  br i1 %cmpBr_45f092, label %block_.L_45f0cd, label %block_45f098

block_45f098:
  ; Code: movl -0x4bc(%rbp), %eax	 RIP: 45f098	 Bytes: 6
  %loadMem_45f098 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f098 = call %struct.Memory* @routine_movl_MINUS0x4bc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f098)
  store %struct.Memory* %call_45f098, %struct.Memory** %MEMORY

  ; Code: movslq -0x310(%rbp), %rcx	 RIP: 45f09e	 Bytes: 7
  %loadMem_45f09e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f09e = call %struct.Memory* @routine_movslq_MINUS0x310__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f09e)
  store %struct.Memory* %call_45f09e, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4a0(%rbp,%rcx,4)	 RIP: 45f0a5	 Bytes: 7
  %loadMem_45f0a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f0a5 = call %struct.Memory* @routine_movl__eax__MINUS0x4a0__rbp__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f0a5)
  store %struct.Memory* %call_45f0a5, %struct.Memory** %MEMORY

  ; Code: movslq -0x310(%rbp), %rcx	 RIP: 45f0ac	 Bytes: 7
  %loadMem_45f0ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f0ac = call %struct.Memory* @routine_movslq_MINUS0x310__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f0ac)
  store %struct.Memory* %call_45f0ac, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x3d8(%rbp,%rcx,4)	 RIP: 45f0b3	 Bytes: 11
  %loadMem_45f0b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f0b3 = call %struct.Memory* @routine_movl__0x0__MINUS0x3d8__rbp__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f0b3)
  store %struct.Memory* %call_45f0b3, %struct.Memory** %MEMORY

  ; Code: movl -0x310(%rbp), %eax	 RIP: 45f0be	 Bytes: 6
  %loadMem_45f0be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f0be = call %struct.Memory* @routine_movl_MINUS0x310__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f0be)
  store %struct.Memory* %call_45f0be, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 45f0c4	 Bytes: 3
  %loadMem_45f0c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f0c4 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f0c4)
  store %struct.Memory* %call_45f0c4, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x310(%rbp)	 RIP: 45f0c7	 Bytes: 6
  %loadMem_45f0c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f0c7 = call %struct.Memory* @routine_movl__eax__MINUS0x310__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f0c7)
  store %struct.Memory* %call_45f0c7, %struct.Memory** %MEMORY

  ; Code: .L_45f0cd:	 RIP: 45f0cd	 Bytes: 0
  br label %block_.L_45f0cd
block_.L_45f0cd:

  ; Code: jmpq .L_45f0d2	 RIP: 45f0cd	 Bytes: 5
  %loadMem_45f0cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f0cd = call %struct.Memory* @routine_jmpq_.L_45f0d2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f0cd, i64 5, i64 5)
  store %struct.Memory* %call_45f0cd, %struct.Memory** %MEMORY

  br label %block_.L_45f0d2

  ; Code: .L_45f0d2:	 RIP: 45f0d2	 Bytes: 0
block_.L_45f0d2:

  ; Code: jmpq .L_45f0d7	 RIP: 45f0d2	 Bytes: 5
  %loadMem_45f0d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f0d2 = call %struct.Memory* @routine_jmpq_.L_45f0d7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f0d2, i64 5, i64 5)
  store %struct.Memory* %call_45f0d2, %struct.Memory** %MEMORY

  br label %block_.L_45f0d7

  ; Code: .L_45f0d7:	 RIP: 45f0d7	 Bytes: 0
block_.L_45f0d7:

  ; Code: movl 0xb54ce4, %eax	 RIP: 45f0d7	 Bytes: 7
  %loadMem_45f0d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f0d7 = call %struct.Memory* @routine_movl_0xb54ce4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f0d7)
  store %struct.Memory* %call_45f0d7, %struct.Memory** %MEMORY

  ; Code: cmpl 0xb060b8, %eax	 RIP: 45f0de	 Bytes: 7
  %loadMem_45f0de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f0de = call %struct.Memory* @routine_cmpl_0xb060b8___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f0de)
  store %struct.Memory* %call_45f0de, %struct.Memory** %MEMORY

  ; Code: jg .L_45f322	 RIP: 45f0e5	 Bytes: 6
  %loadMem_45f0e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f0e5 = call %struct.Memory* @routine_jg_.L_45f322(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f0e5, i8* %BRANCH_TAKEN, i64 573, i64 6, i64 6)
  store %struct.Memory* %call_45f0e5, %struct.Memory** %MEMORY

  %loadBr_45f0e5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45f0e5 = icmp eq i8 %loadBr_45f0e5, 1
  br i1 %cmpBr_45f0e5, label %block_.L_45f322, label %block_45f0eb

block_45f0eb:
  ; Code: movl $0x2, %edx	 RIP: 45f0eb	 Bytes: 5
  %loadMem_45f0eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f0eb = call %struct.Memory* @routine_movl__0x2___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f0eb)
  store %struct.Memory* %call_45f0eb, %struct.Memory** %MEMORY

  ; Code: leaq -0x68(%rbp), %rcx	 RIP: 45f0f0	 Bytes: 4
  %loadMem_45f0f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f0f0 = call %struct.Memory* @routine_leaq_MINUS0x68__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f0f0)
  store %struct.Memory* %call_45f0f0, %struct.Memory** %MEMORY

  ; Code: movl -0x4bc(%rbp), %edi	 RIP: 45f0f4	 Bytes: 6
  %loadMem_45f0f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f0f4 = call %struct.Memory* @routine_movl_MINUS0x4bc__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f0f4)
  store %struct.Memory* %call_45f0f4, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %esi	 RIP: 45f0fa	 Bytes: 3
  %loadMem_45f0fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f0fa = call %struct.Memory* @routine_movl_MINUS0x48__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f0fa)
  store %struct.Memory* %call_45f0fa, %struct.Memory** %MEMORY

  ; Code: callq .approxlib	 RIP: 45f0fd	 Bytes: 5
  %loadMem1_45f0fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_45f0fd = call %struct.Memory* @routine_callq_.approxlib(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_45f0fd, i64 -318285, i64 5, i64 5)
  store %struct.Memory* %call1_45f0fd, %struct.Memory** %MEMORY

  %loadMem2_45f0fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45f0fd = load i64, i64* %3
  %call2_45f0fd = call %struct.Memory* @sub_4115b0.approxlib(%struct.State* %0, i64  %loadPC_45f0fd, %struct.Memory* %loadMem2_45f0fd)
  store %struct.Memory* %call2_45f0fd, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, %eax	 RIP: 45f102	 Bytes: 3
  %loadMem_45f102 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f102 = call %struct.Memory* @routine_cmpl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f102)
  store %struct.Memory* %call_45f102, %struct.Memory** %MEMORY

  ; Code: jne .L_45f322	 RIP: 45f105	 Bytes: 6
  %loadMem_45f105 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f105 = call %struct.Memory* @routine_jne_.L_45f322(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f105, i8* %BRANCH_TAKEN, i64 541, i64 6, i64 6)
  store %struct.Memory* %call_45f105, %struct.Memory** %MEMORY

  %loadBr_45f105 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45f105 = icmp eq i8 %loadBr_45f105, 1
  br i1 %cmpBr_45f105, label %block_.L_45f322, label %block_45f10b

block_45f10b:
  ; Code: jmpq .L_45f110	 RIP: 45f10b	 Bytes: 5
  %loadMem_45f10b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f10b = call %struct.Memory* @routine_jmpq_.L_45f110(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f10b, i64 5, i64 5)
  store %struct.Memory* %call_45f10b, %struct.Memory** %MEMORY

  br label %block_.L_45f110

  ; Code: .L_45f110:	 RIP: 45f110	 Bytes: 0
block_.L_45f110:

  ; Code: movl $0x0, -0x4c4(%rbp)	 RIP: 45f110	 Bytes: 10
  %loadMem_45f110 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f110 = call %struct.Memory* @routine_movl__0x0__MINUS0x4c4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f110)
  store %struct.Memory* %call_45f110, %struct.Memory** %MEMORY

  ; Code: .L_45f11a:	 RIP: 45f11a	 Bytes: 0
  br label %block_.L_45f11a
block_.L_45f11a:

  ; Code: movl -0x4c4(%rbp), %eax	 RIP: 45f11a	 Bytes: 6
  %loadMem_45f11a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f11a = call %struct.Memory* @routine_movl_MINUS0x4c4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f11a)
  store %struct.Memory* %call_45f11a, %struct.Memory** %MEMORY

  ; Code: cmpl -0x310(%rbp), %eax	 RIP: 45f120	 Bytes: 6
  %loadMem_45f120 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f120 = call %struct.Memory* @routine_cmpl_MINUS0x310__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f120)
  store %struct.Memory* %call_45f120, %struct.Memory** %MEMORY

  ; Code: jge .L_45f179	 RIP: 45f126	 Bytes: 6
  %loadMem_45f126 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f126 = call %struct.Memory* @routine_jge_.L_45f179(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f126, i8* %BRANCH_TAKEN, i64 83, i64 6, i64 6)
  store %struct.Memory* %call_45f126, %struct.Memory** %MEMORY

  %loadBr_45f126 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45f126 = icmp eq i8 %loadBr_45f126, 1
  br i1 %cmpBr_45f126, label %block_.L_45f179, label %block_45f12c

block_45f12c:
  ; Code: movslq -0x4c4(%rbp), %rax	 RIP: 45f12c	 Bytes: 7
  %loadMem_45f12c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f12c = call %struct.Memory* @routine_movslq_MINUS0x4c4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f12c)
  store %struct.Memory* %call_45f12c, %struct.Memory** %MEMORY

  ; Code: movl -0x4a0(%rbp,%rax,4), %ecx	 RIP: 45f133	 Bytes: 7
  %loadMem_45f133 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f133 = call %struct.Memory* @routine_movl_MINUS0x4a0__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f133)
  store %struct.Memory* %call_45f133, %struct.Memory** %MEMORY

  ; Code: cmpl -0x68(%rbp), %ecx	 RIP: 45f13a	 Bytes: 3
  %loadMem_45f13a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f13a = call %struct.Memory* @routine_cmpl_MINUS0x68__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f13a)
  store %struct.Memory* %call_45f13a, %struct.Memory** %MEMORY

  ; Code: jne .L_45f160	 RIP: 45f13d	 Bytes: 6
  %loadMem_45f13d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f13d = call %struct.Memory* @routine_jne_.L_45f160(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f13d, i8* %BRANCH_TAKEN, i64 35, i64 6, i64 6)
  store %struct.Memory* %call_45f13d, %struct.Memory** %MEMORY

  %loadBr_45f13d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45f13d = icmp eq i8 %loadBr_45f13d, 1
  br i1 %cmpBr_45f13d, label %block_.L_45f160, label %block_45f143

block_45f143:
  ; Code: movslq -0x4c4(%rbp), %rax	 RIP: 45f143	 Bytes: 7
  %loadMem_45f143 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f143 = call %struct.Memory* @routine_movslq_MINUS0x4c4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f143)
  store %struct.Memory* %call_45f143, %struct.Memory** %MEMORY

  ; Code: movl -0x3d8(%rbp,%rax,4), %ecx	 RIP: 45f14a	 Bytes: 7
  %loadMem_45f14a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f14a = call %struct.Memory* @routine_movl_MINUS0x3d8__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f14a)
  store %struct.Memory* %call_45f14a, %struct.Memory** %MEMORY

  ; Code: addl $0x0, %ecx	 RIP: 45f151	 Bytes: 3
  %loadMem_45f151 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f151 = call %struct.Memory* @routine_addl__0x0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f151)
  store %struct.Memory* %call_45f151, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x3d8(%rbp,%rax,4)	 RIP: 45f154	 Bytes: 7
  %loadMem_45f154 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f154 = call %struct.Memory* @routine_movl__ecx__MINUS0x3d8__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f154)
  store %struct.Memory* %call_45f154, %struct.Memory** %MEMORY

  ; Code: jmpq .L_45f179	 RIP: 45f15b	 Bytes: 5
  %loadMem_45f15b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f15b = call %struct.Memory* @routine_jmpq_.L_45f179(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f15b, i64 30, i64 5)
  store %struct.Memory* %call_45f15b, %struct.Memory** %MEMORY

  br label %block_.L_45f179

  ; Code: .L_45f160:	 RIP: 45f160	 Bytes: 0
block_.L_45f160:

  ; Code: jmpq .L_45f165	 RIP: 45f160	 Bytes: 5
  %loadMem_45f160 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f160 = call %struct.Memory* @routine_jmpq_.L_45f165(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f160, i64 5, i64 5)
  store %struct.Memory* %call_45f160, %struct.Memory** %MEMORY

  br label %block_.L_45f165

  ; Code: .L_45f165:	 RIP: 45f165	 Bytes: 0
block_.L_45f165:

  ; Code: movl -0x4c4(%rbp), %eax	 RIP: 45f165	 Bytes: 6
  %loadMem_45f165 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f165 = call %struct.Memory* @routine_movl_MINUS0x4c4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f165)
  store %struct.Memory* %call_45f165, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 45f16b	 Bytes: 3
  %loadMem_45f16b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f16b = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f16b)
  store %struct.Memory* %call_45f16b, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4c4(%rbp)	 RIP: 45f16e	 Bytes: 6
  %loadMem_45f16e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f16e = call %struct.Memory* @routine_movl__eax__MINUS0x4c4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f16e)
  store %struct.Memory* %call_45f16e, %struct.Memory** %MEMORY

  ; Code: jmpq .L_45f11a	 RIP: 45f174	 Bytes: 5
  %loadMem_45f174 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f174 = call %struct.Memory* @routine_jmpq_.L_45f11a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f174, i64 -90, i64 5)
  store %struct.Memory* %call_45f174, %struct.Memory** %MEMORY

  br label %block_.L_45f11a

  ; Code: .L_45f179:	 RIP: 45f179	 Bytes: 0
block_.L_45f179:

  ; Code: movl -0x4c4(%rbp), %eax	 RIP: 45f179	 Bytes: 6
  %loadMem_45f179 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f179 = call %struct.Memory* @routine_movl_MINUS0x4c4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f179)
  store %struct.Memory* %call_45f179, %struct.Memory** %MEMORY

  ; Code: cmpl -0x310(%rbp), %eax	 RIP: 45f17f	 Bytes: 6
  %loadMem_45f17f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f17f = call %struct.Memory* @routine_cmpl_MINUS0x310__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f17f)
  store %struct.Memory* %call_45f17f, %struct.Memory** %MEMORY

  ; Code: jne .L_45f1ca	 RIP: 45f185	 Bytes: 6
  %loadMem_45f185 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f185 = call %struct.Memory* @routine_jne_.L_45f1ca(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f185, i8* %BRANCH_TAKEN, i64 69, i64 6, i64 6)
  store %struct.Memory* %call_45f185, %struct.Memory** %MEMORY

  %loadBr_45f185 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45f185 = icmp eq i8 %loadBr_45f185, 1
  br i1 %cmpBr_45f185, label %block_.L_45f1ca, label %block_45f18b

block_45f18b:
  ; Code: cmpl $0x32, -0x310(%rbp)	 RIP: 45f18b	 Bytes: 7
  %loadMem_45f18b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f18b = call %struct.Memory* @routine_cmpl__0x32__MINUS0x310__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f18b)
  store %struct.Memory* %call_45f18b, %struct.Memory** %MEMORY

  ; Code: jge .L_45f1ca	 RIP: 45f192	 Bytes: 6
  %loadMem_45f192 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f192 = call %struct.Memory* @routine_jge_.L_45f1ca(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f192, i8* %BRANCH_TAKEN, i64 56, i64 6, i64 6)
  store %struct.Memory* %call_45f192, %struct.Memory** %MEMORY

  %loadBr_45f192 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45f192 = icmp eq i8 %loadBr_45f192, 1
  br i1 %cmpBr_45f192, label %block_.L_45f1ca, label %block_45f198

block_45f198:
  ; Code: movl -0x68(%rbp), %eax	 RIP: 45f198	 Bytes: 3
  %loadMem_45f198 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f198 = call %struct.Memory* @routine_movl_MINUS0x68__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f198)
  store %struct.Memory* %call_45f198, %struct.Memory** %MEMORY

  ; Code: movslq -0x310(%rbp), %rcx	 RIP: 45f19b	 Bytes: 7
  %loadMem_45f19b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f19b = call %struct.Memory* @routine_movslq_MINUS0x310__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f19b)
  store %struct.Memory* %call_45f19b, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4a0(%rbp,%rcx,4)	 RIP: 45f1a2	 Bytes: 7
  %loadMem_45f1a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f1a2 = call %struct.Memory* @routine_movl__eax__MINUS0x4a0__rbp__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f1a2)
  store %struct.Memory* %call_45f1a2, %struct.Memory** %MEMORY

  ; Code: movslq -0x310(%rbp), %rcx	 RIP: 45f1a9	 Bytes: 7
  %loadMem_45f1a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f1a9 = call %struct.Memory* @routine_movslq_MINUS0x310__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f1a9)
  store %struct.Memory* %call_45f1a9, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x3d8(%rbp,%rcx,4)	 RIP: 45f1b0	 Bytes: 11
  %loadMem_45f1b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f1b0 = call %struct.Memory* @routine_movl__0x0__MINUS0x3d8__rbp__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f1b0)
  store %struct.Memory* %call_45f1b0, %struct.Memory** %MEMORY

  ; Code: movl -0x310(%rbp), %eax	 RIP: 45f1bb	 Bytes: 6
  %loadMem_45f1bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f1bb = call %struct.Memory* @routine_movl_MINUS0x310__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f1bb)
  store %struct.Memory* %call_45f1bb, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 45f1c1	 Bytes: 3
  %loadMem_45f1c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f1c1 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f1c1)
  store %struct.Memory* %call_45f1c1, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x310(%rbp)	 RIP: 45f1c4	 Bytes: 6
  %loadMem_45f1c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f1c4 = call %struct.Memory* @routine_movl__eax__MINUS0x310__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f1c4)
  store %struct.Memory* %call_45f1c4, %struct.Memory** %MEMORY

  ; Code: .L_45f1ca:	 RIP: 45f1ca	 Bytes: 0
  br label %block_.L_45f1ca
block_.L_45f1ca:

  ; Code: jmpq .L_45f1cf	 RIP: 45f1ca	 Bytes: 5
  %loadMem_45f1ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f1ca = call %struct.Memory* @routine_jmpq_.L_45f1cf(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f1ca, i64 5, i64 5)
  store %struct.Memory* %call_45f1ca, %struct.Memory** %MEMORY

  br label %block_.L_45f1cf

  ; Code: .L_45f1cf:	 RIP: 45f1cf	 Bytes: 0
block_.L_45f1cf:

  ; Code: movl $0x0, -0x58(%rbp)	 RIP: 45f1cf	 Bytes: 7
  %loadMem_45f1cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f1cf = call %struct.Memory* @routine_movl__0x0__MINUS0x58__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f1cf)
  store %struct.Memory* %call_45f1cf, %struct.Memory** %MEMORY

  ; Code: .L_45f1d6:	 RIP: 45f1d6	 Bytes: 0
  br label %block_.L_45f1d6
block_.L_45f1d6:

  ; Code: cmpl $0x4, -0x58(%rbp)	 RIP: 45f1d6	 Bytes: 4
  %loadMem_45f1d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f1d6 = call %struct.Memory* @routine_cmpl__0x4__MINUS0x58__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f1d6)
  store %struct.Memory* %call_45f1d6, %struct.Memory** %MEMORY

  ; Code: jge .L_45f31d	 RIP: 45f1da	 Bytes: 6
  %loadMem_45f1da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f1da = call %struct.Memory* @routine_jge_.L_45f31d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f1da, i8* %BRANCH_TAKEN, i64 323, i64 6, i64 6)
  store %struct.Memory* %call_45f1da, %struct.Memory** %MEMORY

  %loadBr_45f1da = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45f1da = icmp eq i8 %loadBr_45f1da, 1
  br i1 %cmpBr_45f1da, label %block_.L_45f31d, label %block_45f1e0

block_45f1e0:
  ; Code: movl -0x68(%rbp), %eax	 RIP: 45f1e0	 Bytes: 3
  %loadMem_45f1e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f1e0 = call %struct.Memory* @routine_movl_MINUS0x68__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f1e0)
  store %struct.Memory* %call_45f1e0, %struct.Memory** %MEMORY

  ; Code: movslq -0x58(%rbp), %rcx	 RIP: 45f1e3	 Bytes: 4
  %loadMem_45f1e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f1e3 = call %struct.Memory* @routine_movslq_MINUS0x58__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f1e3)
  store %struct.Memory* %call_45f1e3, %struct.Memory** %MEMORY

  ; Code: addl 0x7ae1b0(,%rcx,4), %eax	 RIP: 45f1e7	 Bytes: 7
  %loadMem_45f1e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f1e7 = call %struct.Memory* @routine_addl_0x7ae1b0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f1e7)
  store %struct.Memory* %call_45f1e7, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4c8(%rbp)	 RIP: 45f1ee	 Bytes: 6
  %loadMem_45f1ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f1ee = call %struct.Memory* @routine_movl__eax__MINUS0x4c8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f1ee)
  store %struct.Memory* %call_45f1ee, %struct.Memory** %MEMORY

  ; Code: movslq -0x4c8(%rbp), %rcx	 RIP: 45f1f4	 Bytes: 7
  %loadMem_45f1f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f1f4 = call %struct.Memory* @routine_movslq_MINUS0x4c8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f1f4)
  store %struct.Memory* %call_45f1f4, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 45f1fb	 Bytes: 8
  %loadMem_45f1fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f1fb = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f1fb)
  store %struct.Memory* %call_45f1fb, %struct.Memory** %MEMORY

  ; Code: cmpl -0x48(%rbp), %eax	 RIP: 45f203	 Bytes: 3
  %loadMem_45f203 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f203 = call %struct.Memory* @routine_cmpl_MINUS0x48__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f203)
  store %struct.Memory* %call_45f203, %struct.Memory** %MEMORY

  ; Code: jne .L_45f30a	 RIP: 45f206	 Bytes: 6
  %loadMem_45f206 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f206 = call %struct.Memory* @routine_jne_.L_45f30a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f206, i8* %BRANCH_TAKEN, i64 260, i64 6, i64 6)
  store %struct.Memory* %call_45f206, %struct.Memory** %MEMORY

  %loadBr_45f206 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45f206 = icmp eq i8 %loadBr_45f206, 1
  br i1 %cmpBr_45f206, label %block_.L_45f30a, label %block_45f20c

block_45f20c:
  ; Code: movl $0x1, %edx	 RIP: 45f20c	 Bytes: 5
  %loadMem_45f20c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f20c = call %struct.Memory* @routine_movl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f20c)
  store %struct.Memory* %call_45f20c, %struct.Memory** %MEMORY

  ; Code: leaq -0x2f0(%rbp), %rsi	 RIP: 45f211	 Bytes: 7
  %loadMem_45f211 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f211 = call %struct.Memory* @routine_leaq_MINUS0x2f0__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f211)
  store %struct.Memory* %call_45f211, %struct.Memory** %MEMORY

  ; Code: movl -0x4c8(%rbp), %edi	 RIP: 45f218	 Bytes: 6
  %loadMem_45f218 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f218 = call %struct.Memory* @routine_movl_MINUS0x4c8__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f218)
  store %struct.Memory* %call_45f218, %struct.Memory** %MEMORY

  ; Code: callq .chainlinks2	 RIP: 45f21e	 Bytes: 5
  %loadMem1_45f21e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_45f21e = call %struct.Memory* @routine_callq_.chainlinks2(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_45f21e, i64 -308734, i64 5, i64 5)
  store %struct.Memory* %call1_45f21e, %struct.Memory** %MEMORY

  %loadMem2_45f21e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45f21e = load i64, i64* %3
  %call2_45f21e = call %struct.Memory* @sub_413c20.chainlinks2(%struct.State* %0, i64  %loadPC_45f21e, %struct.Memory* %loadMem2_45f21e)
  store %struct.Memory* %call2_45f21e, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 45f223	 Bytes: 3
  %loadMem_45f223 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f223 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f223)
  store %struct.Memory* %call_45f223, %struct.Memory** %MEMORY

  ; Code: jle .L_45f30a	 RIP: 45f226	 Bytes: 6
  %loadMem_45f226 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f226 = call %struct.Memory* @routine_jle_.L_45f30a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f226, i8* %BRANCH_TAKEN, i64 228, i64 6, i64 6)
  store %struct.Memory* %call_45f226, %struct.Memory** %MEMORY

  %loadBr_45f226 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45f226 = icmp eq i8 %loadBr_45f226, 1
  br i1 %cmpBr_45f226, label %block_.L_45f30a, label %block_45f22c

block_45f22c:
  ; Code: movl $0x1, %esi	 RIP: 45f22c	 Bytes: 5
  %loadMem_45f22c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f22c = call %struct.Memory* @routine_movl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f22c)
  store %struct.Memory* %call_45f22c, %struct.Memory** %MEMORY

  ; Code: leaq -0x50(%rbp), %rdx	 RIP: 45f231	 Bytes: 4
  %loadMem_45f231 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f231 = call %struct.Memory* @routine_leaq_MINUS0x50__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f231)
  store %struct.Memory* %call_45f231, %struct.Memory** %MEMORY

  ; Code: movl -0x2f0(%rbp), %edi	 RIP: 45f235	 Bytes: 6
  %loadMem_45f235 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f235 = call %struct.Memory* @routine_movl_MINUS0x2f0__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f235)
  store %struct.Memory* %call_45f235, %struct.Memory** %MEMORY

  ; Code: callq .findlib	 RIP: 45f23b	 Bytes: 5
  %loadMem1_45f23b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_45f23b = call %struct.Memory* @routine_callq_.findlib(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_45f23b, i64 -326139, i64 5, i64 5)
  store %struct.Memory* %call1_45f23b, %struct.Memory** %MEMORY

  %loadMem2_45f23b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45f23b = load i64, i64* %3
  %call2_45f23b = call %struct.Memory* @sub_40f840.findlib(%struct.State* %0, i64  %loadPC_45f23b, %struct.Memory* %loadMem2_45f23b)
  store %struct.Memory* %call2_45f23b, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x5a4(%rbp)	 RIP: 45f240	 Bytes: 6
  %loadMem_45f240 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f240 = call %struct.Memory* @routine_movl__eax__MINUS0x5a4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f240)
  store %struct.Memory* %call_45f240, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x4cc(%rbp)	 RIP: 45f246	 Bytes: 10
  %loadMem_45f246 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f246 = call %struct.Memory* @routine_movl__0x0__MINUS0x4cc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f246)
  store %struct.Memory* %call_45f246, %struct.Memory** %MEMORY

  ; Code: .L_45f250:	 RIP: 45f250	 Bytes: 0
  br label %block_.L_45f250
block_.L_45f250:

  ; Code: movl -0x4cc(%rbp), %eax	 RIP: 45f250	 Bytes: 6
  %loadMem_45f250 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f250 = call %struct.Memory* @routine_movl_MINUS0x4cc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f250)
  store %struct.Memory* %call_45f250, %struct.Memory** %MEMORY

  ; Code: cmpl -0x310(%rbp), %eax	 RIP: 45f256	 Bytes: 6
  %loadMem_45f256 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f256 = call %struct.Memory* @routine_cmpl_MINUS0x310__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f256)
  store %struct.Memory* %call_45f256, %struct.Memory** %MEMORY

  ; Code: jge .L_45f2af	 RIP: 45f25c	 Bytes: 6
  %loadMem_45f25c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f25c = call %struct.Memory* @routine_jge_.L_45f2af(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f25c, i8* %BRANCH_TAKEN, i64 83, i64 6, i64 6)
  store %struct.Memory* %call_45f25c, %struct.Memory** %MEMORY

  %loadBr_45f25c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45f25c = icmp eq i8 %loadBr_45f25c, 1
  br i1 %cmpBr_45f25c, label %block_.L_45f2af, label %block_45f262

block_45f262:
  ; Code: movslq -0x4cc(%rbp), %rax	 RIP: 45f262	 Bytes: 7
  %loadMem_45f262 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f262 = call %struct.Memory* @routine_movslq_MINUS0x4cc__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f262)
  store %struct.Memory* %call_45f262, %struct.Memory** %MEMORY

  ; Code: movl -0x4a0(%rbp,%rax,4), %ecx	 RIP: 45f269	 Bytes: 7
  %loadMem_45f269 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f269 = call %struct.Memory* @routine_movl_MINUS0x4a0__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f269)
  store %struct.Memory* %call_45f269, %struct.Memory** %MEMORY

  ; Code: cmpl -0x50(%rbp), %ecx	 RIP: 45f270	 Bytes: 3
  %loadMem_45f270 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f270 = call %struct.Memory* @routine_cmpl_MINUS0x50__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f270)
  store %struct.Memory* %call_45f270, %struct.Memory** %MEMORY

  ; Code: jne .L_45f296	 RIP: 45f273	 Bytes: 6
  %loadMem_45f273 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f273 = call %struct.Memory* @routine_jne_.L_45f296(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f273, i8* %BRANCH_TAKEN, i64 35, i64 6, i64 6)
  store %struct.Memory* %call_45f273, %struct.Memory** %MEMORY

  %loadBr_45f273 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45f273 = icmp eq i8 %loadBr_45f273, 1
  br i1 %cmpBr_45f273, label %block_.L_45f296, label %block_45f279

block_45f279:
  ; Code: movslq -0x4cc(%rbp), %rax	 RIP: 45f279	 Bytes: 7
  %loadMem_45f279 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f279 = call %struct.Memory* @routine_movslq_MINUS0x4cc__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f279)
  store %struct.Memory* %call_45f279, %struct.Memory** %MEMORY

  ; Code: movl -0x3d8(%rbp,%rax,4), %ecx	 RIP: 45f280	 Bytes: 7
  %loadMem_45f280 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f280 = call %struct.Memory* @routine_movl_MINUS0x3d8__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f280)
  store %struct.Memory* %call_45f280, %struct.Memory** %MEMORY

  ; Code: addl $0x0, %ecx	 RIP: 45f287	 Bytes: 3
  %loadMem_45f287 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f287 = call %struct.Memory* @routine_addl__0x0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f287)
  store %struct.Memory* %call_45f287, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x3d8(%rbp,%rax,4)	 RIP: 45f28a	 Bytes: 7
  %loadMem_45f28a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f28a = call %struct.Memory* @routine_movl__ecx__MINUS0x3d8__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f28a)
  store %struct.Memory* %call_45f28a, %struct.Memory** %MEMORY

  ; Code: jmpq .L_45f2af	 RIP: 45f291	 Bytes: 5
  %loadMem_45f291 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f291 = call %struct.Memory* @routine_jmpq_.L_45f2af(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f291, i64 30, i64 5)
  store %struct.Memory* %call_45f291, %struct.Memory** %MEMORY

  br label %block_.L_45f2af

  ; Code: .L_45f296:	 RIP: 45f296	 Bytes: 0
block_.L_45f296:

  ; Code: jmpq .L_45f29b	 RIP: 45f296	 Bytes: 5
  %loadMem_45f296 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f296 = call %struct.Memory* @routine_jmpq_.L_45f29b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f296, i64 5, i64 5)
  store %struct.Memory* %call_45f296, %struct.Memory** %MEMORY

  br label %block_.L_45f29b

  ; Code: .L_45f29b:	 RIP: 45f29b	 Bytes: 0
block_.L_45f29b:

  ; Code: movl -0x4cc(%rbp), %eax	 RIP: 45f29b	 Bytes: 6
  %loadMem_45f29b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f29b = call %struct.Memory* @routine_movl_MINUS0x4cc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f29b)
  store %struct.Memory* %call_45f29b, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 45f2a1	 Bytes: 3
  %loadMem_45f2a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f2a1 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f2a1)
  store %struct.Memory* %call_45f2a1, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4cc(%rbp)	 RIP: 45f2a4	 Bytes: 6
  %loadMem_45f2a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f2a4 = call %struct.Memory* @routine_movl__eax__MINUS0x4cc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f2a4)
  store %struct.Memory* %call_45f2a4, %struct.Memory** %MEMORY

  ; Code: jmpq .L_45f250	 RIP: 45f2aa	 Bytes: 5
  %loadMem_45f2aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f2aa = call %struct.Memory* @routine_jmpq_.L_45f250(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f2aa, i64 -90, i64 5)
  store %struct.Memory* %call_45f2aa, %struct.Memory** %MEMORY

  br label %block_.L_45f250

  ; Code: .L_45f2af:	 RIP: 45f2af	 Bytes: 0
block_.L_45f2af:

  ; Code: movl -0x4cc(%rbp), %eax	 RIP: 45f2af	 Bytes: 6
  %loadMem_45f2af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f2af = call %struct.Memory* @routine_movl_MINUS0x4cc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f2af)
  store %struct.Memory* %call_45f2af, %struct.Memory** %MEMORY

  ; Code: cmpl -0x310(%rbp), %eax	 RIP: 45f2b5	 Bytes: 6
  %loadMem_45f2b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f2b5 = call %struct.Memory* @routine_cmpl_MINUS0x310__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f2b5)
  store %struct.Memory* %call_45f2b5, %struct.Memory** %MEMORY

  ; Code: jne .L_45f300	 RIP: 45f2bb	 Bytes: 6
  %loadMem_45f2bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f2bb = call %struct.Memory* @routine_jne_.L_45f300(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f2bb, i8* %BRANCH_TAKEN, i64 69, i64 6, i64 6)
  store %struct.Memory* %call_45f2bb, %struct.Memory** %MEMORY

  %loadBr_45f2bb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45f2bb = icmp eq i8 %loadBr_45f2bb, 1
  br i1 %cmpBr_45f2bb, label %block_.L_45f300, label %block_45f2c1

block_45f2c1:
  ; Code: cmpl $0x32, -0x310(%rbp)	 RIP: 45f2c1	 Bytes: 7
  %loadMem_45f2c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f2c1 = call %struct.Memory* @routine_cmpl__0x32__MINUS0x310__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f2c1)
  store %struct.Memory* %call_45f2c1, %struct.Memory** %MEMORY

  ; Code: jge .L_45f300	 RIP: 45f2c8	 Bytes: 6
  %loadMem_45f2c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f2c8 = call %struct.Memory* @routine_jge_.L_45f300(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f2c8, i8* %BRANCH_TAKEN, i64 56, i64 6, i64 6)
  store %struct.Memory* %call_45f2c8, %struct.Memory** %MEMORY

  %loadBr_45f2c8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45f2c8 = icmp eq i8 %loadBr_45f2c8, 1
  br i1 %cmpBr_45f2c8, label %block_.L_45f300, label %block_45f2ce

block_45f2ce:
  ; Code: movl -0x50(%rbp), %eax	 RIP: 45f2ce	 Bytes: 3
  %loadMem_45f2ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f2ce = call %struct.Memory* @routine_movl_MINUS0x50__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f2ce)
  store %struct.Memory* %call_45f2ce, %struct.Memory** %MEMORY

  ; Code: movslq -0x310(%rbp), %rcx	 RIP: 45f2d1	 Bytes: 7
  %loadMem_45f2d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f2d1 = call %struct.Memory* @routine_movslq_MINUS0x310__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f2d1)
  store %struct.Memory* %call_45f2d1, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4a0(%rbp,%rcx,4)	 RIP: 45f2d8	 Bytes: 7
  %loadMem_45f2d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f2d8 = call %struct.Memory* @routine_movl__eax__MINUS0x4a0__rbp__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f2d8)
  store %struct.Memory* %call_45f2d8, %struct.Memory** %MEMORY

  ; Code: movslq -0x310(%rbp), %rcx	 RIP: 45f2df	 Bytes: 7
  %loadMem_45f2df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f2df = call %struct.Memory* @routine_movslq_MINUS0x310__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f2df)
  store %struct.Memory* %call_45f2df, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x3d8(%rbp,%rcx,4)	 RIP: 45f2e6	 Bytes: 11
  %loadMem_45f2e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f2e6 = call %struct.Memory* @routine_movl__0x0__MINUS0x3d8__rbp__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f2e6)
  store %struct.Memory* %call_45f2e6, %struct.Memory** %MEMORY

  ; Code: movl -0x310(%rbp), %eax	 RIP: 45f2f1	 Bytes: 6
  %loadMem_45f2f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f2f1 = call %struct.Memory* @routine_movl_MINUS0x310__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f2f1)
  store %struct.Memory* %call_45f2f1, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 45f2f7	 Bytes: 3
  %loadMem_45f2f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f2f7 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f2f7)
  store %struct.Memory* %call_45f2f7, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x310(%rbp)	 RIP: 45f2fa	 Bytes: 6
  %loadMem_45f2fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f2fa = call %struct.Memory* @routine_movl__eax__MINUS0x310__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f2fa)
  store %struct.Memory* %call_45f2fa, %struct.Memory** %MEMORY

  ; Code: .L_45f300:	 RIP: 45f300	 Bytes: 0
  br label %block_.L_45f300
block_.L_45f300:

  ; Code: jmpq .L_45f305	 RIP: 45f300	 Bytes: 5
  %loadMem_45f300 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f300 = call %struct.Memory* @routine_jmpq_.L_45f305(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f300, i64 5, i64 5)
  store %struct.Memory* %call_45f300, %struct.Memory** %MEMORY

  br label %block_.L_45f305

  ; Code: .L_45f305:	 RIP: 45f305	 Bytes: 0
block_.L_45f305:

  ; Code: jmpq .L_45f30a	 RIP: 45f305	 Bytes: 5
  %loadMem_45f305 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f305 = call %struct.Memory* @routine_jmpq_.L_45f30a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f305, i64 5, i64 5)
  store %struct.Memory* %call_45f305, %struct.Memory** %MEMORY

  br label %block_.L_45f30a

  ; Code: .L_45f30a:	 RIP: 45f30a	 Bytes: 0
block_.L_45f30a:

  ; Code: jmpq .L_45f30f	 RIP: 45f30a	 Bytes: 5
  %loadMem_45f30a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f30a = call %struct.Memory* @routine_jmpq_.L_45f30f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f30a, i64 5, i64 5)
  store %struct.Memory* %call_45f30a, %struct.Memory** %MEMORY

  br label %block_.L_45f30f

  ; Code: .L_45f30f:	 RIP: 45f30f	 Bytes: 0
block_.L_45f30f:

  ; Code: movl -0x58(%rbp), %eax	 RIP: 45f30f	 Bytes: 3
  %loadMem_45f30f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f30f = call %struct.Memory* @routine_movl_MINUS0x58__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f30f)
  store %struct.Memory* %call_45f30f, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 45f312	 Bytes: 3
  %loadMem_45f312 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f312 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f312)
  store %struct.Memory* %call_45f312, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x58(%rbp)	 RIP: 45f315	 Bytes: 3
  %loadMem_45f315 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f315 = call %struct.Memory* @routine_movl__eax__MINUS0x58__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f315)
  store %struct.Memory* %call_45f315, %struct.Memory** %MEMORY

  ; Code: jmpq .L_45f1d6	 RIP: 45f318	 Bytes: 5
  %loadMem_45f318 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f318 = call %struct.Memory* @routine_jmpq_.L_45f1d6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f318, i64 -322, i64 5)
  store %struct.Memory* %call_45f318, %struct.Memory** %MEMORY

  br label %block_.L_45f1d6

  ; Code: .L_45f31d:	 RIP: 45f31d	 Bytes: 0
block_.L_45f31d:

  ; Code: jmpq .L_45f322	 RIP: 45f31d	 Bytes: 5
  %loadMem_45f31d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f31d = call %struct.Memory* @routine_jmpq_.L_45f322(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f31d, i64 5, i64 5)
  store %struct.Memory* %call_45f31d, %struct.Memory** %MEMORY

  br label %block_.L_45f322

  ; Code: .L_45f322:	 RIP: 45f322	 Bytes: 0
block_.L_45f322:

  ; Code: jmpq .L_45f327	 RIP: 45f322	 Bytes: 5
  %loadMem_45f322 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f322 = call %struct.Memory* @routine_jmpq_.L_45f327(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f322, i64 5, i64 5)
  store %struct.Memory* %call_45f322, %struct.Memory** %MEMORY

  br label %block_.L_45f327

  ; Code: .L_45f327:	 RIP: 45f327	 Bytes: 0
block_.L_45f327:

  ; Code: movl -0x304(%rbp), %eax	 RIP: 45f327	 Bytes: 6
  %loadMem_45f327 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f327 = call %struct.Memory* @routine_movl_MINUS0x304__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f327)
  store %struct.Memory* %call_45f327, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 45f32d	 Bytes: 3
  %loadMem_45f32d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f32d = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f32d)
  store %struct.Memory* %call_45f32d, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x304(%rbp)	 RIP: 45f330	 Bytes: 6
  %loadMem_45f330 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f330 = call %struct.Memory* @routine_movl__eax__MINUS0x304__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f330)
  store %struct.Memory* %call_45f330, %struct.Memory** %MEMORY

  ; Code: jmpq .L_45ef09	 RIP: 45f336	 Bytes: 5
  %loadMem_45f336 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f336 = call %struct.Memory* @routine_jmpq_.L_45ef09(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f336, i64 -1069, i64 5)
  store %struct.Memory* %call_45f336, %struct.Memory** %MEMORY

  br label %block_.L_45ef09

  ; Code: .L_45f33b:	 RIP: 45f33b	 Bytes: 0
block_.L_45f33b:

  ; Code: cmpl $0x0, -0x308(%rbp)	 RIP: 45f33b	 Bytes: 7
  %loadMem_45f33b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f33b = call %struct.Memory* @routine_cmpl__0x0__MINUS0x308__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f33b)
  store %struct.Memory* %call_45f33b, %struct.Memory** %MEMORY

  ; Code: jne .L_45f392	 RIP: 45f342	 Bytes: 6
  %loadMem_45f342 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f342 = call %struct.Memory* @routine_jne_.L_45f392(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f342, i8* %BRANCH_TAKEN, i64 80, i64 6, i64 6)
  store %struct.Memory* %call_45f342, %struct.Memory** %MEMORY

  %loadBr_45f342 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45f342 = icmp eq i8 %loadBr_45f342, 1
  br i1 %cmpBr_45f342, label %block_.L_45f392, label %block_45f348

block_45f348:
  ; Code: movl $0x0, -0x304(%rbp)	 RIP: 45f348	 Bytes: 10
  %loadMem_45f348 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f348 = call %struct.Memory* @routine_movl__0x0__MINUS0x304__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f348)
  store %struct.Memory* %call_45f348, %struct.Memory** %MEMORY

  ; Code: .L_45f352:	 RIP: 45f352	 Bytes: 0
  br label %block_.L_45f352
block_.L_45f352:

  ; Code: cmpl $0x2, -0x304(%rbp)	 RIP: 45f352	 Bytes: 7
  %loadMem_45f352 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f352 = call %struct.Memory* @routine_cmpl__0x2__MINUS0x304__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f352)
  store %struct.Memory* %call_45f352, %struct.Memory** %MEMORY

  ; Code: jge .L_45f38d	 RIP: 45f359	 Bytes: 6
  %loadMem_45f359 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f359 = call %struct.Memory* @routine_jge_.L_45f38d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f359, i8* %BRANCH_TAKEN, i64 52, i64 6, i64 6)
  store %struct.Memory* %call_45f359, %struct.Memory** %MEMORY

  %loadBr_45f359 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45f359 = icmp eq i8 %loadBr_45f359, 1
  br i1 %cmpBr_45f359, label %block_.L_45f38d, label %block_45f35f

block_45f35f:
  ; Code: leaq -0x4a0(%rbp), %rdx	 RIP: 45f35f	 Bytes: 7
  %loadMem_45f35f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f35f = call %struct.Memory* @routine_leaq_MINUS0x4a0__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f35f)
  store %struct.Memory* %call_45f35f, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %edi	 RIP: 45f366	 Bytes: 3
  %loadMem_45f366 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f366 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f366)
  store %struct.Memory* %call_45f366, %struct.Memory** %MEMORY

  ; Code: movslq -0x304(%rbp), %rax	 RIP: 45f369	 Bytes: 7
  %loadMem_45f369 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f369 = call %struct.Memory* @routine_movslq_MINUS0x304__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f369)
  store %struct.Memory* %call_45f369, %struct.Memory** %MEMORY

  ; Code: movl -0x60(%rbp,%rax,4), %esi	 RIP: 45f370	 Bytes: 4
  %loadMem_45f370 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f370 = call %struct.Memory* @routine_movl_MINUS0x60__rbp__rax_4____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f370)
  store %struct.Memory* %call_45f370, %struct.Memory** %MEMORY

  ; Code: callq .edge_block_moves	 RIP: 45f374	 Bytes: 5
  %loadMem1_45f374 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_45f374 = call %struct.Memory* @routine_callq_.edge_block_moves(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_45f374, i64 12412, i64 5, i64 5)
  store %struct.Memory* %call1_45f374, %struct.Memory** %MEMORY

  %loadMem2_45f374 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45f374 = load i64, i64* %3
  %call2_45f374 = call %struct.Memory* @sub_4623f0.edge_block_moves(%struct.State* %0, i64  %loadPC_45f374, %struct.Memory* %loadMem2_45f374)
  store %struct.Memory* %call2_45f374, %struct.Memory** %MEMORY

  ; Code: movl -0x304(%rbp), %eax	 RIP: 45f379	 Bytes: 6
  %loadMem_45f379 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f379 = call %struct.Memory* @routine_movl_MINUS0x304__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f379)
  store %struct.Memory* %call_45f379, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 45f37f	 Bytes: 3
  %loadMem_45f37f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f37f = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f37f)
  store %struct.Memory* %call_45f37f, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x304(%rbp)	 RIP: 45f382	 Bytes: 6
  %loadMem_45f382 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f382 = call %struct.Memory* @routine_movl__eax__MINUS0x304__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f382)
  store %struct.Memory* %call_45f382, %struct.Memory** %MEMORY

  ; Code: jmpq .L_45f352	 RIP: 45f388	 Bytes: 5
  %loadMem_45f388 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f388 = call %struct.Memory* @routine_jmpq_.L_45f352(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f388, i64 -54, i64 5)
  store %struct.Memory* %call_45f388, %struct.Memory** %MEMORY

  br label %block_.L_45f352

  ; Code: .L_45f38d:	 RIP: 45f38d	 Bytes: 0
block_.L_45f38d:

  ; Code: jmpq .L_45f392	 RIP: 45f38d	 Bytes: 5
  %loadMem_45f38d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f38d = call %struct.Memory* @routine_jmpq_.L_45f392(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f38d, i64 5, i64 5)
  store %struct.Memory* %call_45f38d, %struct.Memory** %MEMORY

  br label %block_.L_45f392

  ; Code: .L_45f392:	 RIP: 45f392	 Bytes: 0
block_.L_45f392:

  ; Code: movl $0x2, %edx	 RIP: 45f392	 Bytes: 5
  %loadMem_45f392 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f392 = call %struct.Memory* @routine_movl__0x2___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f392)
  store %struct.Memory* %call_45f392, %struct.Memory** %MEMORY

  ; Code: leaq -0x2f0(%rbp), %rsi	 RIP: 45f397	 Bytes: 7
  %loadMem_45f397 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f397 = call %struct.Memory* @routine_leaq_MINUS0x2f0__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f397)
  store %struct.Memory* %call_45f397, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %edi	 RIP: 45f39e	 Bytes: 3
  %loadMem_45f39e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f39e = call %struct.Memory* @routine_movl_MINUS0x30__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f39e)
  store %struct.Memory* %call_45f39e, %struct.Memory** %MEMORY

  ; Code: callq .chainlinks2	 RIP: 45f3a1	 Bytes: 5
  %loadMem1_45f3a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_45f3a1 = call %struct.Memory* @routine_callq_.chainlinks2(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_45f3a1, i64 -309121, i64 5, i64 5)
  store %struct.Memory* %call1_45f3a1, %struct.Memory** %MEMORY

  %loadMem2_45f3a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45f3a1 = load i64, i64* %3
  %call2_45f3a1 = call %struct.Memory* @sub_413c20.chainlinks2(%struct.State* %0, i64  %loadPC_45f3a1, %struct.Memory* %loadMem2_45f3a1)
  store %struct.Memory* %call2_45f3a1, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x6c(%rbp)	 RIP: 45f3a6	 Bytes: 3
  %loadMem_45f3a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f3a6 = call %struct.Memory* @routine_movl__eax__MINUS0x6c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f3a6)
  store %struct.Memory* %call_45f3a6, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x58(%rbp)	 RIP: 45f3a9	 Bytes: 7
  %loadMem_45f3a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f3a9 = call %struct.Memory* @routine_movl__0x0__MINUS0x58__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f3a9)
  store %struct.Memory* %call_45f3a9, %struct.Memory** %MEMORY

  ; Code: .L_45f3b0:	 RIP: 45f3b0	 Bytes: 0
  br label %block_.L_45f3b0
block_.L_45f3b0:

  ; Code: movl -0x58(%rbp), %eax	 RIP: 45f3b0	 Bytes: 3
  %loadMem_45f3b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f3b0 = call %struct.Memory* @routine_movl_MINUS0x58__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f3b0)
  store %struct.Memory* %call_45f3b0, %struct.Memory** %MEMORY

  ; Code: cmpl -0x6c(%rbp), %eax	 RIP: 45f3b3	 Bytes: 3
  %loadMem_45f3b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f3b3 = call %struct.Memory* @routine_cmpl_MINUS0x6c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f3b3)
  store %struct.Memory* %call_45f3b3, %struct.Memory** %MEMORY

  ; Code: jge .L_45f420	 RIP: 45f3b6	 Bytes: 6
  %loadMem_45f3b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f3b6 = call %struct.Memory* @routine_jge_.L_45f420(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f3b6, i8* %BRANCH_TAKEN, i64 106, i64 6, i64 6)
  store %struct.Memory* %call_45f3b6, %struct.Memory** %MEMORY

  %loadBr_45f3b6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45f3b6 = icmp eq i8 %loadBr_45f3b6, 1
  br i1 %cmpBr_45f3b6, label %block_.L_45f420, label %block_45f3bc

block_45f3bc:
  ; Code: movslq -0x58(%rbp), %rax	 RIP: 45f3bc	 Bytes: 4
  %loadMem_45f3bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f3bc = call %struct.Memory* @routine_movslq_MINUS0x58__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f3bc)
  store %struct.Memory* %call_45f3bc, %struct.Memory** %MEMORY

  ; Code: movl -0x2f0(%rbp,%rax,4), %ecx	 RIP: 45f3c0	 Bytes: 7
  %loadMem_45f3c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f3c0 = call %struct.Memory* @routine_movl_MINUS0x2f0__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f3c0)
  store %struct.Memory* %call_45f3c0, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x4d0(%rbp)	 RIP: 45f3c7	 Bytes: 6
  %loadMem_45f3c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f3c7 = call %struct.Memory* @routine_movl__ecx__MINUS0x4d0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f3c7)
  store %struct.Memory* %call_45f3c7, %struct.Memory** %MEMORY

  ; Code: movl -0x60(%rbp), %edi	 RIP: 45f3cd	 Bytes: 3
  %loadMem_45f3cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f3cd = call %struct.Memory* @routine_movl_MINUS0x60__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f3cd)
  store %struct.Memory* %call_45f3cd, %struct.Memory** %MEMORY

  ; Code: movl -0x4d0(%rbp), %esi	 RIP: 45f3d0	 Bytes: 6
  %loadMem_45f3d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f3d0 = call %struct.Memory* @routine_movl_MINUS0x4d0__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f3d0)
  store %struct.Memory* %call_45f3d0, %struct.Memory** %MEMORY

  ; Code: callq .liberty_of_string	 RIP: 45f3d6	 Bytes: 5
  %loadMem1_45f3d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_45f3d6 = call %struct.Memory* @routine_callq_.liberty_of_string(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_45f3d6, i64 -305446, i64 5, i64 5)
  store %struct.Memory* %call1_45f3d6, %struct.Memory** %MEMORY

  %loadMem2_45f3d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45f3d6 = load i64, i64* %3
  %call2_45f3d6 = call %struct.Memory* @sub_414ab0.liberty_of_string(%struct.State* %0, i64  %loadPC_45f3d6, %struct.Memory* %loadMem2_45f3d6)
  store %struct.Memory* %call2_45f3d6, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 45f3db	 Bytes: 3
  %loadMem_45f3db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f3db = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f3db)
  store %struct.Memory* %call_45f3db, %struct.Memory** %MEMORY

  ; Code: je .L_45f40d	 RIP: 45f3de	 Bytes: 6
  %loadMem_45f3de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f3de = call %struct.Memory* @routine_je_.L_45f40d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f3de, i8* %BRANCH_TAKEN, i64 47, i64 6, i64 6)
  store %struct.Memory* %call_45f3de, %struct.Memory** %MEMORY

  %loadBr_45f3de = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45f3de = icmp eq i8 %loadBr_45f3de, 1
  br i1 %cmpBr_45f3de, label %block_.L_45f40d, label %block_45f3e4

block_45f3e4:
  ; Code: movl -0x5c(%rbp), %edi	 RIP: 45f3e4	 Bytes: 3
  %loadMem_45f3e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f3e4 = call %struct.Memory* @routine_movl_MINUS0x5c__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f3e4)
  store %struct.Memory* %call_45f3e4, %struct.Memory** %MEMORY

  ; Code: movl -0x4d0(%rbp), %esi	 RIP: 45f3e7	 Bytes: 6
  %loadMem_45f3e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f3e7 = call %struct.Memory* @routine_movl_MINUS0x4d0__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f3e7)
  store %struct.Memory* %call_45f3e7, %struct.Memory** %MEMORY

  ; Code: callq .liberty_of_string	 RIP: 45f3ed	 Bytes: 5
  %loadMem1_45f3ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_45f3ed = call %struct.Memory* @routine_callq_.liberty_of_string(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_45f3ed, i64 -305469, i64 5, i64 5)
  store %struct.Memory* %call1_45f3ed, %struct.Memory** %MEMORY

  %loadMem2_45f3ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45f3ed = load i64, i64* %3
  %call2_45f3ed = call %struct.Memory* @sub_414ab0.liberty_of_string(%struct.State* %0, i64  %loadPC_45f3ed, %struct.Memory* %loadMem2_45f3ed)
  store %struct.Memory* %call2_45f3ed, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 45f3f2	 Bytes: 3
  %loadMem_45f3f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f3f2 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f3f2)
  store %struct.Memory* %call_45f3f2, %struct.Memory** %MEMORY

  ; Code: je .L_45f40d	 RIP: 45f3f5	 Bytes: 6
  %loadMem_45f3f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f3f5 = call %struct.Memory* @routine_je_.L_45f40d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f3f5, i8* %BRANCH_TAKEN, i64 24, i64 6, i64 6)
  store %struct.Memory* %call_45f3f5, %struct.Memory** %MEMORY

  %loadBr_45f3f5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45f3f5 = icmp eq i8 %loadBr_45f3f5, 1
  br i1 %cmpBr_45f3f5, label %block_.L_45f40d, label %block_45f3fb

block_45f3fb:
  ; Code: leaq -0x4a0(%rbp), %rsi	 RIP: 45f3fb	 Bytes: 7
  %loadMem_45f3fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f3fb = call %struct.Memory* @routine_leaq_MINUS0x4a0__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f3fb)
  store %struct.Memory* %call_45f3fb, %struct.Memory** %MEMORY

  ; Code: movl -0x4d0(%rbp), %edi	 RIP: 45f402	 Bytes: 6
  %loadMem_45f402 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f402 = call %struct.Memory* @routine_movl_MINUS0x4d0__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f402)
  store %struct.Memory* %call_45f402, %struct.Memory** %MEMORY

  ; Code: callq .break_chain_moves	 RIP: 45f408	 Bytes: 5
  %loadMem1_45f408 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_45f408 = call %struct.Memory* @routine_callq_.break_chain_moves(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_45f408, i64 10632, i64 5, i64 5)
  store %struct.Memory* %call1_45f408, %struct.Memory** %MEMORY

  %loadMem2_45f408 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45f408 = load i64, i64* %3
  %call2_45f408 = call %struct.Memory* @sub_461d90.break_chain_moves(%struct.State* %0, i64  %loadPC_45f408, %struct.Memory* %loadMem2_45f408)
  store %struct.Memory* %call2_45f408, %struct.Memory** %MEMORY

  ; Code: .L_45f40d:	 RIP: 45f40d	 Bytes: 0
  br label %block_.L_45f40d
block_.L_45f40d:

  ; Code: jmpq .L_45f412	 RIP: 45f40d	 Bytes: 5
  %loadMem_45f40d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f40d = call %struct.Memory* @routine_jmpq_.L_45f412(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f40d, i64 5, i64 5)
  store %struct.Memory* %call_45f40d, %struct.Memory** %MEMORY

  br label %block_.L_45f412

  ; Code: .L_45f412:	 RIP: 45f412	 Bytes: 0
block_.L_45f412:

  ; Code: movl -0x58(%rbp), %eax	 RIP: 45f412	 Bytes: 3
  %loadMem_45f412 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f412 = call %struct.Memory* @routine_movl_MINUS0x58__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f412)
  store %struct.Memory* %call_45f412, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 45f415	 Bytes: 3
  %loadMem_45f415 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f415 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f415)
  store %struct.Memory* %call_45f415, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x58(%rbp)	 RIP: 45f418	 Bytes: 3
  %loadMem_45f418 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f418 = call %struct.Memory* @routine_movl__eax__MINUS0x58__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f418)
  store %struct.Memory* %call_45f418, %struct.Memory** %MEMORY

  ; Code: jmpq .L_45f3b0	 RIP: 45f41b	 Bytes: 5
  %loadMem_45f41b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f41b = call %struct.Memory* @routine_jmpq_.L_45f3b0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f41b, i64 -107, i64 5)
  store %struct.Memory* %call_45f41b, %struct.Memory** %MEMORY

  br label %block_.L_45f3b0

  ; Code: .L_45f420:	 RIP: 45f420	 Bytes: 0
block_.L_45f420:

  ; Code: leaq -0x4a0(%rbp), %rcx	 RIP: 45f420	 Bytes: 7
  %loadMem_45f420 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f420 = call %struct.Memory* @routine_leaq_MINUS0x4a0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f420)
  store %struct.Memory* %call_45f420, %struct.Memory** %MEMORY

  ; Code: leaq -0x60(%rbp), %rsi	 RIP: 45f427	 Bytes: 4
  %loadMem_45f427 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f427 = call %struct.Memory* @routine_leaq_MINUS0x60__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f427)
  store %struct.Memory* %call_45f427, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %edi	 RIP: 45f42b	 Bytes: 3
  %loadMem_45f42b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f42b = call %struct.Memory* @routine_movl_MINUS0x30__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f42b)
  store %struct.Memory* %call_45f42b, %struct.Memory** %MEMORY

  ; Code: movl -0x54(%rbp), %edx	 RIP: 45f42e	 Bytes: 3
  %loadMem_45f42e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f42e = call %struct.Memory* @routine_movl_MINUS0x54__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f42e)
  store %struct.Memory* %call_45f42e, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %r8d	 RIP: 45f431	 Bytes: 4
  %loadMem_45f431 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f431 = call %struct.Memory* @routine_movl_MINUS0x48__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f431)
  store %struct.Memory* %call_45f431, %struct.Memory** %MEMORY

  ; Code: callq .propose_edge_moves	 RIP: 45f435	 Bytes: 5
  %loadMem1_45f435 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_45f435 = call %struct.Memory* @routine_callq_.propose_edge_moves(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_45f435, i64 12923, i64 5, i64 5)
  store %struct.Memory* %call1_45f435, %struct.Memory** %MEMORY

  %loadMem2_45f435 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45f435 = load i64, i64* %3
  %call2_45f435 = call %struct.Memory* @sub_4626b0.propose_edge_moves(%struct.State* %0, i64  %loadPC_45f435, %struct.Memory* %loadMem2_45f435)
  store %struct.Memory* %call2_45f435, %struct.Memory** %MEMORY

  ; Code: leaq -0x4a0(%rbp), %rsi	 RIP: 45f43a	 Bytes: 7
  %loadMem_45f43a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f43a = call %struct.Memory* @routine_leaq_MINUS0x4a0__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f43a)
  store %struct.Memory* %call_45f43a, %struct.Memory** %MEMORY

  ; Code: xorl %r8d, %r8d	 RIP: 45f441	 Bytes: 3
  %loadMem_45f441 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f441 = call %struct.Memory* @routine_xorl__r8d___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f441)
  store %struct.Memory* %call_45f441, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %edi	 RIP: 45f444	 Bytes: 3
  %loadMem_45f444 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f444 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f444)
  store %struct.Memory* %call_45f444, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %edx	 RIP: 45f447	 Bytes: 3
  %loadMem_45f447 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f447 = call %struct.Memory* @routine_movl_MINUS0x48__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f447)
  store %struct.Memory* %call_45f447, %struct.Memory** %MEMORY

  ; Code: movq -0x4b0(%rbp), %rcx	 RIP: 45f44a	 Bytes: 7
  %loadMem_45f44a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f44a = call %struct.Memory* @routine_movq_MINUS0x4b0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f44a)
  store %struct.Memory* %call_45f44a, %struct.Memory** %MEMORY

  ; Code: callq .order_moves	 RIP: 45f451	 Bytes: 5
  %loadMem1_45f451 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_45f451 = call %struct.Memory* @routine_callq_.order_moves(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_45f451, i64 14399, i64 5, i64 5)
  store %struct.Memory* %call1_45f451, %struct.Memory** %MEMORY

  %loadMem2_45f451 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45f451 = load i64, i64* %3
  %call2_45f451 = call %struct.Memory* @sub_462c90.order_moves(%struct.State* %0, i64  %loadPC_45f451, %struct.Memory* %loadMem2_45f451)
  store %struct.Memory* %call2_45f451, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x304(%rbp)	 RIP: 45f456	 Bytes: 10
  %loadMem_45f456 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f456 = call %struct.Memory* @routine_movl__0x0__MINUS0x304__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f456)
  store %struct.Memory* %call_45f456, %struct.Memory** %MEMORY

  ; Code: .L_45f460:	 RIP: 45f460	 Bytes: 0
  br label %block_.L_45f460
block_.L_45f460:

  ; Code: movl -0x304(%rbp), %eax	 RIP: 45f460	 Bytes: 6
  %loadMem_45f460 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f460 = call %struct.Memory* @routine_movl_MINUS0x304__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f460)
  store %struct.Memory* %call_45f460, %struct.Memory** %MEMORY

  ; Code: cmpl -0x310(%rbp), %eax	 RIP: 45f466	 Bytes: 6
  %loadMem_45f466 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f466 = call %struct.Memory* @routine_cmpl_MINUS0x310__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f466)
  store %struct.Memory* %call_45f466, %struct.Memory** %MEMORY

  ; Code: jge .L_45f728	 RIP: 45f46c	 Bytes: 6
  %loadMem_45f46c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f46c = call %struct.Memory* @routine_jge_.L_45f728(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f46c, i8* %BRANCH_TAKEN, i64 700, i64 6, i64 6)
  store %struct.Memory* %call_45f46c, %struct.Memory** %MEMORY

  %loadBr_45f46c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45f46c = icmp eq i8 %loadBr_45f46c, 1
  br i1 %cmpBr_45f46c, label %block_.L_45f728, label %block_45f472

block_45f472:
  ; Code: xorl %eax, %eax	 RIP: 45f472	 Bytes: 2
  %loadMem_45f472 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f472 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f472)
  store %struct.Memory* %call_45f472, %struct.Memory** %MEMORY

  ; Code: movb %al, %cl	 RIP: 45f474	 Bytes: 2
  %loadMem_45f474 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f474 = call %struct.Memory* @routine_movb__al___cl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f474)
  store %struct.Memory* %call_45f474, %struct.Memory** %MEMORY

  ; Code: movslq -0x304(%rbp), %rdx	 RIP: 45f476	 Bytes: 7
  %loadMem_45f476 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f476 = call %struct.Memory* @routine_movslq_MINUS0x304__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f476)
  store %struct.Memory* %call_45f476, %struct.Memory** %MEMORY

  ; Code: movl -0x4a0(%rbp,%rdx,4), %eax	 RIP: 45f47d	 Bytes: 7
  %loadMem_45f47d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f47d = call %struct.Memory* @routine_movl_MINUS0x4a0__rbp__rdx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f47d)
  store %struct.Memory* %call_45f47d, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4e0(%rbp)	 RIP: 45f484	 Bytes: 6
  %loadMem_45f484 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f484 = call %struct.Memory* @routine_movl__eax__MINUS0x4e0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f484)
  store %struct.Memory* %call_45f484, %struct.Memory** %MEMORY

  ; Code: movl -0x4e0(%rbp), %edi	 RIP: 45f48a	 Bytes: 6
  %loadMem_45f48a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f48a = call %struct.Memory* @routine_movl_MINUS0x4e0__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f48a)
  store %struct.Memory* %call_45f48a, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %esi	 RIP: 45f490	 Bytes: 3
  %loadMem_45f490 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f490 = call %struct.Memory* @routine_movl_MINUS0x48__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f490)
  store %struct.Memory* %call_45f490, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %eax	 RIP: 45f493	 Bytes: 3
  %loadMem_45f493 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f493 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f493)
  store %struct.Memory* %call_45f493, %struct.Memory** %MEMORY

  ; Code: movl -0x3c(%rbp), %r8d	 RIP: 45f496	 Bytes: 4
  %loadMem_45f496 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f496 = call %struct.Memory* @routine_movl_MINUS0x3c__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f496)
  store %struct.Memory* %call_45f496, %struct.Memory** %MEMORY

  ; Code: movl -0x40(%rbp), %r9d	 RIP: 45f49a	 Bytes: 4
  %loadMem_45f49a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f49a = call %struct.Memory* @routine_movl_MINUS0x40__rbp____r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f49a)
  store %struct.Memory* %call_45f49a, %struct.Memory** %MEMORY

  ; Code: movl 0xb54ce4, %r10d	 RIP: 45f49e	 Bytes: 8
  %loadMem_45f49e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f49e = call %struct.Memory* @routine_movl_0xb54ce4___r10d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f49e)
  store %struct.Memory* %call_45f49e, %struct.Memory** %MEMORY

  ; Code: cmpl 0xb8b850, %r10d	 RIP: 45f4a6	 Bytes: 8
  %loadMem_45f4a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f4a6 = call %struct.Memory* @routine_cmpl_0xb8b850___r10d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f4a6)
  store %struct.Memory* %call_45f4a6, %struct.Memory** %MEMORY

  ; Code: movl %r9d, -0x5a8(%rbp)	 RIP: 45f4ae	 Bytes: 7
  %loadMem_45f4ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f4ae = call %struct.Memory* @routine_movl__r9d__MINUS0x5a8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f4ae)
  store %struct.Memory* %call_45f4ae, %struct.Memory** %MEMORY

  ; Code: movl %edi, -0x5ac(%rbp)	 RIP: 45f4b5	 Bytes: 6
  %loadMem_45f4b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f4b5 = call %struct.Memory* @routine_movl__edi__MINUS0x5ac__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f4b5)
  store %struct.Memory* %call_45f4b5, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x5b0(%rbp)	 RIP: 45f4bb	 Bytes: 6
  %loadMem_45f4bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f4bb = call %struct.Memory* @routine_movl__esi__MINUS0x5b0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f4bb)
  store %struct.Memory* %call_45f4bb, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x5b4(%rbp)	 RIP: 45f4c1	 Bytes: 6
  %loadMem_45f4c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f4c1 = call %struct.Memory* @routine_movl__eax__MINUS0x5b4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f4c1)
  store %struct.Memory* %call_45f4c1, %struct.Memory** %MEMORY

  ; Code: movl %r8d, -0x5b8(%rbp)	 RIP: 45f4c7	 Bytes: 7
  %loadMem_45f4c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f4c7 = call %struct.Memory* @routine_movl__r8d__MINUS0x5b8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f4c7)
  store %struct.Memory* %call_45f4c7, %struct.Memory** %MEMORY

  ; Code: movb %cl, -0x5b9(%rbp)	 RIP: 45f4ce	 Bytes: 6
  %loadMem_45f4ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f4ce = call %struct.Memory* @routine_movb__cl__MINUS0x5b9__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f4ce)
  store %struct.Memory* %call_45f4ce, %struct.Memory** %MEMORY

  ; Code: jg .L_45f4ea	 RIP: 45f4d4	 Bytes: 6
  %loadMem_45f4d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f4d4 = call %struct.Memory* @routine_jg_.L_45f4ea(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f4d4, i8* %BRANCH_TAKEN, i64 22, i64 6, i64 6)
  store %struct.Memory* %call_45f4d4, %struct.Memory** %MEMORY

  %loadBr_45f4d4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45f4d4 = icmp eq i8 %loadBr_45f4d4, 1
  br i1 %cmpBr_45f4d4, label %block_.L_45f4ea, label %block_45f4da

block_45f4da:
  ; Code: cmpl $0x0, -0x2f8(%rbp)	 RIP: 45f4da	 Bytes: 7
  %loadMem_45f4da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f4da = call %struct.Memory* @routine_cmpl__0x0__MINUS0x2f8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f4da)
  store %struct.Memory* %call_45f4da, %struct.Memory** %MEMORY

  ; Code: sete %al	 RIP: 45f4e1	 Bytes: 3
  %loadMem_45f4e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f4e1 = call %struct.Memory* @routine_sete__al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f4e1)
  store %struct.Memory* %call_45f4e1, %struct.Memory** %MEMORY

  ; Code: movb %al, -0x5b9(%rbp)	 RIP: 45f4e4	 Bytes: 6
  %loadMem_45f4e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f4e4 = call %struct.Memory* @routine_movb__al__MINUS0x5b9__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f4e4)
  store %struct.Memory* %call_45f4e4, %struct.Memory** %MEMORY

  ; Code: .L_45f4ea:	 RIP: 45f4ea	 Bytes: 0
  br label %block_.L_45f4ea
block_.L_45f4ea:

  ; Code: movb -0x5b9(%rbp), %al	 RIP: 45f4ea	 Bytes: 6
  %loadMem_45f4ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f4ea = call %struct.Memory* @routine_movb_MINUS0x5b9__rbp____al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f4ea)
  store %struct.Memory* %call_45f4ea, %struct.Memory** %MEMORY

  ; Code: movq $0x57fe22, %rdx	 RIP: 45f4f0	 Bytes: 10
  %loadMem_45f4f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f4f0 = call %struct.Memory* @routine_movq__0x57fe22___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f4f0)
  store %struct.Memory* %call_45f4f0, %struct.Memory** %MEMORY

  ; Code: leaq -0x4d4(%rbp), %rcx	 RIP: 45f4fa	 Bytes: 7
  %loadMem_45f4fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f4fa = call %struct.Memory* @routine_leaq_MINUS0x4d4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f4fa)
  store %struct.Memory* %call_45f4fa, %struct.Memory** %MEMORY

  ; Code: leaq -0x4d8(%rbp), %rsi	 RIP: 45f501	 Bytes: 7
  %loadMem_45f501 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f501 = call %struct.Memory* @routine_leaq_MINUS0x4d8__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f501)
  store %struct.Memory* %call_45f501, %struct.Memory** %MEMORY

  ; Code: leaq -0x4dc(%rbp), %rdi	 RIP: 45f508	 Bytes: 7
  %loadMem_45f508 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f508 = call %struct.Memory* @routine_leaq_MINUS0x4dc__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f508)
  store %struct.Memory* %call_45f508, %struct.Memory** %MEMORY

  ; Code: andb $0x1, %al	 RIP: 45f50f	 Bytes: 2
  %loadMem_45f50f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f50f = call %struct.Memory* @routine_andb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f50f)
  store %struct.Memory* %call_45f50f, %struct.Memory** %MEMORY

  ; Code: movzbl %al, %r8d	 RIP: 45f511	 Bytes: 4
  %loadMem_45f511 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f511 = call %struct.Memory* @routine_movzbl__al___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f511)
  store %struct.Memory* %call_45f511, %struct.Memory** %MEMORY

  ; Code: movl -0x5ac(%rbp), %r9d	 RIP: 45f515	 Bytes: 7
  %loadMem_45f515 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f515 = call %struct.Memory* @routine_movl_MINUS0x5ac__rbp____r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f515)
  store %struct.Memory* %call_45f515, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x5c8(%rbp)	 RIP: 45f51c	 Bytes: 7
  %loadMem_45f51c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f51c = call %struct.Memory* @routine_movq__rdi__MINUS0x5c8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f51c)
  store %struct.Memory* %call_45f51c, %struct.Memory** %MEMORY

  ; Code: movl %r9d, %edi	 RIP: 45f523	 Bytes: 3
  %loadMem_45f523 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f523 = call %struct.Memory* @routine_movl__r9d___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f523)
  store %struct.Memory* %call_45f523, %struct.Memory** %MEMORY

  ; Code: movl -0x5b0(%rbp), %r10d	 RIP: 45f526	 Bytes: 7
  %loadMem_45f526 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f526 = call %struct.Memory* @routine_movl_MINUS0x5b0__rbp____r10d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f526)
  store %struct.Memory* %call_45f526, %struct.Memory** %MEMORY

  ; Code: movq %rsi, -0x5d0(%rbp)	 RIP: 45f52d	 Bytes: 7
  %loadMem_45f52d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f52d = call %struct.Memory* @routine_movq__rsi__MINUS0x5d0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f52d)
  store %struct.Memory* %call_45f52d, %struct.Memory** %MEMORY

  ; Code: movl %r10d, %esi	 RIP: 45f534	 Bytes: 3
  %loadMem_45f534 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f534 = call %struct.Memory* @routine_movl__r10d___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f534)
  store %struct.Memory* %call_45f534, %struct.Memory** %MEMORY

  ; Code: movl -0x5b4(%rbp), %r11d	 RIP: 45f537	 Bytes: 7
  %loadMem_45f537 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f537 = call %struct.Memory* @routine_movl_MINUS0x5b4__rbp____r11d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f537)
  store %struct.Memory* %call_45f537, %struct.Memory** %MEMORY

  ; Code: movq %rcx, -0x5d8(%rbp)	 RIP: 45f53e	 Bytes: 7
  %loadMem_45f53e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f53e = call %struct.Memory* @routine_movq__rcx__MINUS0x5d8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f53e)
  store %struct.Memory* %call_45f53e, %struct.Memory** %MEMORY

  ; Code: movl %r11d, %ecx	 RIP: 45f545	 Bytes: 3
  %loadMem_45f545 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f545 = call %struct.Memory* @routine_movl__r11d___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f545)
  store %struct.Memory* %call_45f545, %struct.Memory** %MEMORY

  ; Code: movl -0x5b8(%rbp), %ebx	 RIP: 45f548	 Bytes: 6
  %loadMem_45f548 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f548 = call %struct.Memory* @routine_movl_MINUS0x5b8__rbp____ebx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f548)
  store %struct.Memory* %call_45f548, %struct.Memory** %MEMORY

  ; Code: movl %r8d, -0x5dc(%rbp)	 RIP: 45f54e	 Bytes: 7
  %loadMem_45f54e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f54e = call %struct.Memory* @routine_movl__r8d__MINUS0x5dc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f54e)
  store %struct.Memory* %call_45f54e, %struct.Memory** %MEMORY

  ; Code: movl %ebx, %r8d	 RIP: 45f555	 Bytes: 3
  %loadMem_45f555 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f555 = call %struct.Memory* @routine_movl__ebx___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f555)
  store %struct.Memory* %call_45f555, %struct.Memory** %MEMORY

  ; Code: movl -0x5a8(%rbp), %r9d	 RIP: 45f558	 Bytes: 7
  %loadMem_45f558 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f558 = call %struct.Memory* @routine_movl_MINUS0x5a8__rbp____r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f558)
  store %struct.Memory* %call_45f558, %struct.Memory** %MEMORY

  ; Code: movq -0x5d8(%rbp), %r14	 RIP: 45f55f	 Bytes: 7
  %loadMem_45f55f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f55f = call %struct.Memory* @routine_movq_MINUS0x5d8__rbp____r14(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f55f)
  store %struct.Memory* %call_45f55f, %struct.Memory** %MEMORY

  ; Code: movq %r14, (%rsp)	 RIP: 45f566	 Bytes: 4
  %loadMem_45f566 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f566 = call %struct.Memory* @routine_movq__r14____rsp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f566)
  store %struct.Memory* %call_45f566, %struct.Memory** %MEMORY

  ; Code: movq -0x5d0(%rbp), %r15	 RIP: 45f56a	 Bytes: 7
  %loadMem_45f56a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f56a = call %struct.Memory* @routine_movq_MINUS0x5d0__rbp____r15(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f56a)
  store %struct.Memory* %call_45f56a, %struct.Memory** %MEMORY

  ; Code: movq %r15, 0x8(%rsp)	 RIP: 45f571	 Bytes: 5
  %loadMem_45f571 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f571 = call %struct.Memory* @routine_movq__r15__0x8__rsp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f571)
  store %struct.Memory* %call_45f571, %struct.Memory** %MEMORY

  ; Code: movq -0x5c8(%rbp), %r12	 RIP: 45f576	 Bytes: 7
  %loadMem_45f576 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f576 = call %struct.Memory* @routine_movq_MINUS0x5c8__rbp____r12(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f576)
  store %struct.Memory* %call_45f576, %struct.Memory** %MEMORY

  ; Code: movq %r12, 0x10(%rsp)	 RIP: 45f57d	 Bytes: 5
  %loadMem_45f57d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f57d = call %struct.Memory* @routine_movq__r12__0x10__rsp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f57d)
  store %struct.Memory* %call_45f57d, %struct.Memory** %MEMORY

  ; Code: movl -0x5dc(%rbp), %r13d	 RIP: 45f582	 Bytes: 7
  %loadMem_45f582 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f582 = call %struct.Memory* @routine_movl_MINUS0x5dc__rbp____r13d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f582)
  store %struct.Memory* %call_45f582, %struct.Memory** %MEMORY

  ; Code: movl %r13d, 0x18(%rsp)	 RIP: 45f589	 Bytes: 5
  %loadMem_45f589 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f589 = call %struct.Memory* @routine_movl__r13d__0x18__rsp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f589)
  store %struct.Memory* %call_45f589, %struct.Memory** %MEMORY

  ; Code: callq .komaster_trymove	 RIP: 45f58e	 Bytes: 5
  %loadMem1_45f58e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_45f58e = call %struct.Memory* @routine_callq_.komaster_trymove(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_45f58e, i64 -329630, i64 5, i64 5)
  store %struct.Memory* %call1_45f58e, %struct.Memory** %MEMORY

  %loadMem2_45f58e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45f58e = load i64, i64* %3
  %call2_45f58e = call %struct.Memory* @sub_40edf0.komaster_trymove(%struct.State* %0, i64  %loadPC_45f58e, %struct.Memory* %loadMem2_45f58e)
  store %struct.Memory* %call2_45f58e, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 45f593	 Bytes: 3
  %loadMem_45f593 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f593 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f593)
  store %struct.Memory* %call_45f593, %struct.Memory** %MEMORY

  ; Code: je .L_45f70f	 RIP: 45f596	 Bytes: 6
  %loadMem_45f596 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f596 = call %struct.Memory* @routine_je_.L_45f70f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f596, i8* %BRANCH_TAKEN, i64 377, i64 6, i64 6)
  store %struct.Memory* %call_45f596, %struct.Memory** %MEMORY

  %loadBr_45f596 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45f596 = icmp eq i8 %loadBr_45f596, 1
  br i1 %cmpBr_45f596, label %block_.L_45f70f, label %block_45f59c

block_45f59c:
  ; Code: cmpl $0x0, -0x4dc(%rbp)	 RIP: 45f59c	 Bytes: 7
  %loadMem_45f59c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f59c = call %struct.Memory* @routine_cmpl__0x0__MINUS0x4dc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f59c)
  store %struct.Memory* %call_45f59c, %struct.Memory** %MEMORY

  ; Code: jne .L_45f6ad	 RIP: 45f5a3	 Bytes: 6
  %loadMem_45f5a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f5a3 = call %struct.Memory* @routine_jne_.L_45f6ad(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f5a3, i8* %BRANCH_TAKEN, i64 266, i64 6, i64 6)
  store %struct.Memory* %call_45f5a3, %struct.Memory** %MEMORY

  %loadBr_45f5a3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45f5a3 = icmp eq i8 %loadBr_45f5a3, 1
  br i1 %cmpBr_45f5a3, label %block_.L_45f6ad, label %block_45f5a9

block_45f5a9:
  ; Code: xorl %eax, %eax	 RIP: 45f5a9	 Bytes: 2
  %loadMem_45f5a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f5a9 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f5a9)
  store %struct.Memory* %call_45f5a9, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 45f5ab	 Bytes: 2
  %loadMem_45f5ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f5ab = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f5ab)
  store %struct.Memory* %call_45f5ab, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %edi	 RIP: 45f5ad	 Bytes: 3
  %loadMem_45f5ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f5ad = call %struct.Memory* @routine_movl_MINUS0x30__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f5ad)
  store %struct.Memory* %call_45f5ad, %struct.Memory** %MEMORY

  ; Code: movl -0x4d4(%rbp), %edx	 RIP: 45f5b0	 Bytes: 6
  %loadMem_45f5b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f5b0 = call %struct.Memory* @routine_movl_MINUS0x4d4__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f5b0)
  store %struct.Memory* %call_45f5b0, %struct.Memory** %MEMORY

  ; Code: movl -0x4d8(%rbp), %ecx	 RIP: 45f5b6	 Bytes: 6
  %loadMem_45f5b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f5b6 = call %struct.Memory* @routine_movl_MINUS0x4d8__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f5b6)
  store %struct.Memory* %call_45f5b6, %struct.Memory** %MEMORY

  ; Code: callq .do_find_defense	 RIP: 45f5bc	 Bytes: 5
  %loadMem1_45f5bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_45f5bc = call %struct.Memory* @routine_callq_.do_find_defense(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_45f5bc, i64 16484, i64 5, i64 5)
  store %struct.Memory* %call1_45f5bc, %struct.Memory** %MEMORY

  %loadMem2_45f5bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45f5bc = load i64, i64* %3
  %call2_45f5bc = call %struct.Memory* @sub_463620.do_find_defense(%struct.State* %0, i64  %loadPC_45f5bc, %struct.Memory* %loadMem2_45f5bc)
  store %struct.Memory* %call2_45f5bc, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x300(%rbp)	 RIP: 45f5c1	 Bytes: 6
  %loadMem_45f5c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f5c1 = call %struct.Memory* @routine_movl__eax__MINUS0x300__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f5c1)
  store %struct.Memory* %call_45f5c1, %struct.Memory** %MEMORY

  ; Code: cmpl $0x5, -0x300(%rbp)	 RIP: 45f5c7	 Bytes: 7
  %loadMem_45f5c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f5c7 = call %struct.Memory* @routine_cmpl__0x5__MINUS0x300__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f5c7)
  store %struct.Memory* %call_45f5c7, %struct.Memory** %MEMORY

  ; Code: je .L_45f6a3	 RIP: 45f5ce	 Bytes: 6
  %loadMem_45f5ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f5ce = call %struct.Memory* @routine_je_.L_45f6a3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f5ce, i8* %BRANCH_TAKEN, i64 213, i64 6, i64 6)
  store %struct.Memory* %call_45f5ce, %struct.Memory** %MEMORY

  %loadBr_45f5ce = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45f5ce = icmp eq i8 %loadBr_45f5ce, 1
  br i1 %cmpBr_45f5ce, label %block_.L_45f6a3, label %block_45f5d4

block_45f5d4:
  ; Code: xorl %eax, %eax	 RIP: 45f5d4	 Bytes: 2
  %loadMem_45f5d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f5d4 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f5d4)
  store %struct.Memory* %call_45f5d4, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 45f5d6	 Bytes: 2
  %loadMem_45f5d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f5d6 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f5d6)
  store %struct.Memory* %call_45f5d6, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %edi	 RIP: 45f5d8	 Bytes: 3
  %loadMem_45f5d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f5d8 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f5d8)
  store %struct.Memory* %call_45f5d8, %struct.Memory** %MEMORY

  ; Code: movl -0x4d4(%rbp), %edx	 RIP: 45f5db	 Bytes: 6
  %loadMem_45f5db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f5db = call %struct.Memory* @routine_movl_MINUS0x4d4__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f5db)
  store %struct.Memory* %call_45f5db, %struct.Memory** %MEMORY

  ; Code: movl -0x4d8(%rbp), %ecx	 RIP: 45f5e1	 Bytes: 6
  %loadMem_45f5e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f5e1 = call %struct.Memory* @routine_movl_MINUS0x4d8__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f5e1)
  store %struct.Memory* %call_45f5e1, %struct.Memory** %MEMORY

  ; Code: callq .do_attack	 RIP: 45f5e7	 Bytes: 5
  %loadMem1_45f5e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_45f5e7 = call %struct.Memory* @routine_callq_.do_attack(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_45f5e7, i64 -6407, i64 5, i64 5)
  store %struct.Memory* %call1_45f5e7, %struct.Memory** %MEMORY

  %loadMem2_45f5e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45f5e7 = load i64, i64* %3
  %call2_45f5e7 = call %struct.Memory* @sub_45dce0.do_attack(%struct.State* %0, i64  %loadPC_45f5e7, %struct.Memory* %loadMem2_45f5e7)
  store %struct.Memory* %call2_45f5e7, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 45f5ec	 Bytes: 3
  %loadMem_45f5ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f5ec = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f5ec)
  store %struct.Memory* %call_45f5ec, %struct.Memory** %MEMORY

  ; Code: je .L_45f6a3	 RIP: 45f5ef	 Bytes: 6
  %loadMem_45f5ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f5ef = call %struct.Memory* @routine_je_.L_45f6a3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f5ef, i8* %BRANCH_TAKEN, i64 180, i64 6, i64 6)
  store %struct.Memory* %call_45f5ef, %struct.Memory** %MEMORY

  %loadBr_45f5ef = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45f5ef = icmp eq i8 %loadBr_45f5ef, 1
  br i1 %cmpBr_45f5ef, label %block_.L_45f6a3, label %block_45f5f5

block_45f5f5:
  ; Code: callq .popgo	 RIP: 45f5f5	 Bytes: 5
  %loadMem1_45f5f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_45f5f5 = call %struct.Memory* @routine_callq_.popgo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_45f5f5, i64 -333973, i64 5, i64 5)
  store %struct.Memory* %call1_45f5f5, %struct.Memory** %MEMORY

  %loadMem2_45f5f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45f5f5 = load i64, i64* %3
  %call2_45f5f5 = call %struct.Memory* @sub_40dd60.popgo(%struct.State* %0, i64  %loadPC_45f5f5, %struct.Memory* %loadMem2_45f5f5)
  store %struct.Memory* %call2_45f5f5, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0x300(%rbp)	 RIP: 45f5fa	 Bytes: 7
  %loadMem_45f5fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f5fa = call %struct.Memory* @routine_cmpl__0x0__MINUS0x300__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f5fa)
  store %struct.Memory* %call_45f5fa, %struct.Memory** %MEMORY

  ; Code: jne .L_45f660	 RIP: 45f601	 Bytes: 6
  %loadMem_45f601 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f601 = call %struct.Memory* @routine_jne_.L_45f660(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f601, i8* %BRANCH_TAKEN, i64 95, i64 6, i64 6)
  store %struct.Memory* %call_45f601, %struct.Memory** %MEMORY

  %loadBr_45f601 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45f601 = icmp eq i8 %loadBr_45f601, 1
  br i1 %cmpBr_45f601, label %block_.L_45f660, label %block_45f607

block_45f607:
  ; Code: cmpq $0x0, -0x38(%rbp)	 RIP: 45f607	 Bytes: 5
  %loadMem_45f607 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f607 = call %struct.Memory* @routine_cmpq__0x0__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f607)
  store %struct.Memory* %call_45f607, %struct.Memory** %MEMORY

  ; Code: je .L_45f61e	 RIP: 45f60c	 Bytes: 6
  %loadMem_45f60c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f60c = call %struct.Memory* @routine_je_.L_45f61e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f60c, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_45f60c, %struct.Memory** %MEMORY

  %loadBr_45f60c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45f60c = icmp eq i8 %loadBr_45f60c, 1
  br i1 %cmpBr_45f60c, label %block_.L_45f61e, label %block_45f612

block_45f612:
  ; Code: movl -0x4e0(%rbp), %eax	 RIP: 45f612	 Bytes: 6
  %loadMem_45f612 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f612 = call %struct.Memory* @routine_movl_MINUS0x4e0__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f612)
  store %struct.Memory* %call_45f612, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rcx	 RIP: 45f618	 Bytes: 4
  %loadMem_45f618 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f618 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f618)
  store %struct.Memory* %call_45f618, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx)	 RIP: 45f61c	 Bytes: 2
  %loadMem_45f61c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f61c = call %struct.Memory* @routine_movl__eax____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f61c)
  store %struct.Memory* %call_45f61c, %struct.Memory** %MEMORY

  ; Code: .L_45f61e:	 RIP: 45f61e	 Bytes: 0
  br label %block_.L_45f61e
block_.L_45f61e:

  ; Code: cmpq $0x0, 0xab0ef8	 RIP: 45f61e	 Bytes: 9
  %loadMem_45f61e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f61e = call %struct.Memory* @routine_cmpq__0x0__0xab0ef8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f61e)
  store %struct.Memory* %call_45f61e, %struct.Memory** %MEMORY

  ; Code: je .L_45f654	 RIP: 45f627	 Bytes: 6
  %loadMem_45f627 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f627 = call %struct.Memory* @routine_je_.L_45f654(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f627, i8* %BRANCH_TAKEN, i64 45, i64 6, i64 6)
  store %struct.Memory* %call_45f627, %struct.Memory** %MEMORY

  %loadBr_45f627 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45f627 = icmp eq i8 %loadBr_45f627, 1
  br i1 %cmpBr_45f627, label %block_.L_45f654, label %block_45f62d

block_45f62d:
  ; Code: movl $0x5, %ecx	 RIP: 45f62d	 Bytes: 5
  %loadMem_45f62d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f62d = call %struct.Memory* @routine_movl__0x5___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f62d)
  store %struct.Memory* %call_45f62d, %struct.Memory** %MEMORY

  ; Code: movq $0x57e5fb, %r8	 RIP: 45f632	 Bytes: 10
  %loadMem_45f632 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f632 = call %struct.Memory* @routine_movq__0x57e5fb___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f632)
  store %struct.Memory* %call_45f632, %struct.Memory** %MEMORY

  ; Code: movq -0x4b0(%rbp), %rdi	 RIP: 45f63c	 Bytes: 7
  %loadMem_45f63c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f63c = call %struct.Memory* @routine_movq_MINUS0x4b0__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f63c)
  store %struct.Memory* %call_45f63c, %struct.Memory** %MEMORY

  ; Code: movl -0x4b4(%rbp), %esi	 RIP: 45f643	 Bytes: 6
  %loadMem_45f643 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f643 = call %struct.Memory* @routine_movl_MINUS0x4b4__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f643)
  store %struct.Memory* %call_45f643, %struct.Memory** %MEMORY

  ; Code: movl -0x4e0(%rbp), %edx	 RIP: 45f649	 Bytes: 6
  %loadMem_45f649 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f649 = call %struct.Memory* @routine_movl_MINUS0x4e0__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f649)
  store %struct.Memory* %call_45f649, %struct.Memory** %MEMORY

  ; Code: callq .sgf_trace	 RIP: 45f64f	 Bytes: 5
  %loadMem1_45f64f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_45f64f = call %struct.Memory* @routine_callq_.sgf_trace(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_45f64f, i64 -292495, i64 5, i64 5)
  store %struct.Memory* %call1_45f64f, %struct.Memory** %MEMORY

  %loadMem2_45f64f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45f64f = load i64, i64* %3
  %call2_45f64f = call %struct.Memory* @sub_417fc0.sgf_trace(%struct.State* %0, i64  %loadPC_45f64f, %struct.Memory* %loadMem2_45f64f)
  store %struct.Memory* %call2_45f64f, %struct.Memory** %MEMORY

  ; Code: .L_45f654:	 RIP: 45f654	 Bytes: 0
  br label %block_.L_45f654
block_.L_45f654:

  ; Code: movl $0x5, -0x2c(%rbp)	 RIP: 45f654	 Bytes: 7
  %loadMem_45f654 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f654 = call %struct.Memory* @routine_movl__0x5__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f654)
  store %struct.Memory* %call_45f654, %struct.Memory** %MEMORY

  ; Code: jmpq .L_45ff1e	 RIP: 45f65b	 Bytes: 5
  %loadMem_45f65b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f65b = call %struct.Memory* @routine_jmpq_.L_45ff1e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f65b, i64 2243, i64 5)
  store %struct.Memory* %call_45f65b, %struct.Memory** %MEMORY

  br label %block_.L_45ff1e

  ; Code: .L_45f660:	 RIP: 45f660	 Bytes: 0
block_.L_45f660:

  ; Code: movl $0x5, %eax	 RIP: 45f660	 Bytes: 5
  %loadMem_45f660 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f660 = call %struct.Memory* @routine_movl__0x5___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f660)
  store %struct.Memory* %call_45f660, %struct.Memory** %MEMORY

  ; Code: subl -0x300(%rbp), %eax	 RIP: 45f665	 Bytes: 6
  %loadMem_45f665 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f665 = call %struct.Memory* @routine_subl_MINUS0x300__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f665)
  store %struct.Memory* %call_45f665, %struct.Memory** %MEMORY

  ; Code: cmpl -0x2f8(%rbp), %eax	 RIP: 45f66b	 Bytes: 6
  %loadMem_45f66b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f66b = call %struct.Memory* @routine_cmpl_MINUS0x2f8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f66b)
  store %struct.Memory* %call_45f66b, %struct.Memory** %MEMORY

  ; Code: jle .L_45f694	 RIP: 45f671	 Bytes: 6
  %loadMem_45f671 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f671 = call %struct.Memory* @routine_jle_.L_45f694(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f671, i8* %BRANCH_TAKEN, i64 35, i64 6, i64 6)
  store %struct.Memory* %call_45f671, %struct.Memory** %MEMORY

  %loadBr_45f671 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45f671 = icmp eq i8 %loadBr_45f671, 1
  br i1 %cmpBr_45f671, label %block_.L_45f694, label %block_45f677

block_45f677:
  ; Code: movl $0x5, %eax	 RIP: 45f677	 Bytes: 5
  %loadMem_45f677 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f677 = call %struct.Memory* @routine_movl__0x5___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f677)
  store %struct.Memory* %call_45f677, %struct.Memory** %MEMORY

  ; Code: movl -0x4e0(%rbp), %ecx	 RIP: 45f67c	 Bytes: 6
  %loadMem_45f67c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f67c = call %struct.Memory* @routine_movl_MINUS0x4e0__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f67c)
  store %struct.Memory* %call_45f67c, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x2f4(%rbp)	 RIP: 45f682	 Bytes: 6
  %loadMem_45f682 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f682 = call %struct.Memory* @routine_movl__ecx__MINUS0x2f4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f682)
  store %struct.Memory* %call_45f682, %struct.Memory** %MEMORY

  ; Code: subl -0x300(%rbp), %eax	 RIP: 45f688	 Bytes: 6
  %loadMem_45f688 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f688 = call %struct.Memory* @routine_subl_MINUS0x300__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f688)
  store %struct.Memory* %call_45f688, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2f8(%rbp)	 RIP: 45f68e	 Bytes: 6
  %loadMem_45f68e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f68e = call %struct.Memory* @routine_movl__eax__MINUS0x2f8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f68e)
  store %struct.Memory* %call_45f68e, %struct.Memory** %MEMORY

  ; Code: .L_45f694:	 RIP: 45f694	 Bytes: 0
  br label %block_.L_45f694
block_.L_45f694:

  ; Code: jmpq .L_45f699	 RIP: 45f694	 Bytes: 5
  %loadMem_45f694 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f694 = call %struct.Memory* @routine_jmpq_.L_45f699(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f694, i64 5, i64 5)
  store %struct.Memory* %call_45f694, %struct.Memory** %MEMORY

  br label %block_.L_45f699

  ; Code: .L_45f699:	 RIP: 45f699	 Bytes: 0
block_.L_45f699:

  ; Code: jmpq .L_45f69e	 RIP: 45f699	 Bytes: 5
  %loadMem_45f699 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f699 = call %struct.Memory* @routine_jmpq_.L_45f69e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f699, i64 5, i64 5)
  store %struct.Memory* %call_45f699, %struct.Memory** %MEMORY

  br label %block_.L_45f69e

  ; Code: .L_45f69e:	 RIP: 45f69e	 Bytes: 0
block_.L_45f69e:

  ; Code: jmpq .L_45f6a8	 RIP: 45f69e	 Bytes: 5
  %loadMem_45f69e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f69e = call %struct.Memory* @routine_jmpq_.L_45f6a8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f69e, i64 10, i64 5)
  store %struct.Memory* %call_45f69e, %struct.Memory** %MEMORY

  br label %block_.L_45f6a8

  ; Code: .L_45f6a3:	 RIP: 45f6a3	 Bytes: 0
block_.L_45f6a3:

  ; Code: callq .popgo	 RIP: 45f6a3	 Bytes: 5
  %loadMem1_45f6a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_45f6a3 = call %struct.Memory* @routine_callq_.popgo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_45f6a3, i64 -334147, i64 5, i64 5)
  store %struct.Memory* %call1_45f6a3, %struct.Memory** %MEMORY

  %loadMem2_45f6a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45f6a3 = load i64, i64* %3
  %call2_45f6a3 = call %struct.Memory* @sub_40dd60.popgo(%struct.State* %0, i64  %loadPC_45f6a3, %struct.Memory* %loadMem2_45f6a3)
  store %struct.Memory* %call2_45f6a3, %struct.Memory** %MEMORY

  ; Code: .L_45f6a8:	 RIP: 45f6a8	 Bytes: 0
  br label %block_.L_45f6a8
block_.L_45f6a8:

  ; Code: jmpq .L_45f70a	 RIP: 45f6a8	 Bytes: 5
  %loadMem_45f6a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f6a8 = call %struct.Memory* @routine_jmpq_.L_45f70a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f6a8, i64 98, i64 5)
  store %struct.Memory* %call_45f6a8, %struct.Memory** %MEMORY

  br label %block_.L_45f70a

  ; Code: .L_45f6ad:	 RIP: 45f6ad	 Bytes: 0
block_.L_45f6ad:

  ; Code: xorl %eax, %eax	 RIP: 45f6ad	 Bytes: 2
  %loadMem_45f6ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f6ad = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f6ad)
  store %struct.Memory* %call_45f6ad, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 45f6af	 Bytes: 2
  %loadMem_45f6af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f6af = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f6af)
  store %struct.Memory* %call_45f6af, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %edi	 RIP: 45f6b1	 Bytes: 3
  %loadMem_45f6b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f6b1 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f6b1)
  store %struct.Memory* %call_45f6b1, %struct.Memory** %MEMORY

  ; Code: movl -0x4d4(%rbp), %edx	 RIP: 45f6b4	 Bytes: 6
  %loadMem_45f6b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f6b4 = call %struct.Memory* @routine_movl_MINUS0x4d4__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f6b4)
  store %struct.Memory* %call_45f6b4, %struct.Memory** %MEMORY

  ; Code: movl -0x4d8(%rbp), %ecx	 RIP: 45f6ba	 Bytes: 6
  %loadMem_45f6ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f6ba = call %struct.Memory* @routine_movl_MINUS0x4d8__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f6ba)
  store %struct.Memory* %call_45f6ba, %struct.Memory** %MEMORY

  ; Code: callq .do_find_defense	 RIP: 45f6c0	 Bytes: 5
  %loadMem1_45f6c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_45f6c0 = call %struct.Memory* @routine_callq_.do_find_defense(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_45f6c0, i64 16224, i64 5, i64 5)
  store %struct.Memory* %call1_45f6c0, %struct.Memory** %MEMORY

  %loadMem2_45f6c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45f6c0 = load i64, i64* %3
  %call2_45f6c0 = call %struct.Memory* @sub_463620.do_find_defense(%struct.State* %0, i64  %loadPC_45f6c0, %struct.Memory* %loadMem2_45f6c0)
  store %struct.Memory* %call2_45f6c0, %struct.Memory** %MEMORY

  ; Code: cmpl $0x5, %eax	 RIP: 45f6c5	 Bytes: 3
  %loadMem_45f6c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f6c5 = call %struct.Memory* @routine_cmpl__0x5___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f6c5)
  store %struct.Memory* %call_45f6c5, %struct.Memory** %MEMORY

  ; Code: je .L_45f705	 RIP: 45f6c8	 Bytes: 6
  %loadMem_45f6c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f6c8 = call %struct.Memory* @routine_je_.L_45f705(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f6c8, i8* %BRANCH_TAKEN, i64 61, i64 6, i64 6)
  store %struct.Memory* %call_45f6c8, %struct.Memory** %MEMORY

  %loadBr_45f6c8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45f6c8 = icmp eq i8 %loadBr_45f6c8, 1
  br i1 %cmpBr_45f6c8, label %block_.L_45f705, label %block_45f6ce

block_45f6ce:
  ; Code: xorl %eax, %eax	 RIP: 45f6ce	 Bytes: 2
  %loadMem_45f6ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f6ce = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f6ce)
  store %struct.Memory* %call_45f6ce, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 45f6d0	 Bytes: 2
  %loadMem_45f6d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f6d0 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f6d0)
  store %struct.Memory* %call_45f6d0, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %edi	 RIP: 45f6d2	 Bytes: 3
  %loadMem_45f6d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f6d2 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f6d2)
  store %struct.Memory* %call_45f6d2, %struct.Memory** %MEMORY

  ; Code: movl -0x4d4(%rbp), %edx	 RIP: 45f6d5	 Bytes: 6
  %loadMem_45f6d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f6d5 = call %struct.Memory* @routine_movl_MINUS0x4d4__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f6d5)
  store %struct.Memory* %call_45f6d5, %struct.Memory** %MEMORY

  ; Code: movl -0x4d8(%rbp), %ecx	 RIP: 45f6db	 Bytes: 6
  %loadMem_45f6db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f6db = call %struct.Memory* @routine_movl_MINUS0x4d8__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f6db)
  store %struct.Memory* %call_45f6db, %struct.Memory** %MEMORY

  ; Code: callq .do_attack	 RIP: 45f6e1	 Bytes: 5
  %loadMem1_45f6e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_45f6e1 = call %struct.Memory* @routine_callq_.do_attack(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_45f6e1, i64 -6657, i64 5, i64 5)
  store %struct.Memory* %call1_45f6e1, %struct.Memory** %MEMORY

  %loadMem2_45f6e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45f6e1 = load i64, i64* %3
  %call2_45f6e1 = call %struct.Memory* @sub_45dce0.do_attack(%struct.State* %0, i64  %loadPC_45f6e1, %struct.Memory* %loadMem2_45f6e1)
  store %struct.Memory* %call2_45f6e1, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 45f6e6	 Bytes: 3
  %loadMem_45f6e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f6e6 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f6e6)
  store %struct.Memory* %call_45f6e6, %struct.Memory** %MEMORY

  ; Code: je .L_45f705	 RIP: 45f6e9	 Bytes: 6
  %loadMem_45f6e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f6e9 = call %struct.Memory* @routine_je_.L_45f705(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f6e9, i8* %BRANCH_TAKEN, i64 28, i64 6, i64 6)
  store %struct.Memory* %call_45f6e9, %struct.Memory** %MEMORY

  %loadBr_45f6e9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45f6e9 = icmp eq i8 %loadBr_45f6e9, 1
  br i1 %cmpBr_45f6e9, label %block_.L_45f705, label %block_45f6ef

block_45f6ef:
  ; Code: movl -0x4e0(%rbp), %eax	 RIP: 45f6ef	 Bytes: 6
  %loadMem_45f6ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f6ef = call %struct.Memory* @routine_movl_MINUS0x4e0__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f6ef)
  store %struct.Memory* %call_45f6ef, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2f4(%rbp)	 RIP: 45f6f5	 Bytes: 6
  %loadMem_45f6f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f6f5 = call %struct.Memory* @routine_movl__eax__MINUS0x2f4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f6f5)
  store %struct.Memory* %call_45f6f5, %struct.Memory** %MEMORY

  ; Code: movl $0x1, -0x2f8(%rbp)	 RIP: 45f6fb	 Bytes: 10
  %loadMem_45f6fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f6fb = call %struct.Memory* @routine_movl__0x1__MINUS0x2f8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f6fb)
  store %struct.Memory* %call_45f6fb, %struct.Memory** %MEMORY

  ; Code: .L_45f705:	 RIP: 45f705	 Bytes: 0
  br label %block_.L_45f705
block_.L_45f705:

  ; Code: callq .popgo	 RIP: 45f705	 Bytes: 5
  %loadMem1_45f705 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_45f705 = call %struct.Memory* @routine_callq_.popgo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_45f705, i64 -334245, i64 5, i64 5)
  store %struct.Memory* %call1_45f705, %struct.Memory** %MEMORY

  %loadMem2_45f705 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45f705 = load i64, i64* %3
  %call2_45f705 = call %struct.Memory* @sub_40dd60.popgo(%struct.State* %0, i64  %loadPC_45f705, %struct.Memory* %loadMem2_45f705)
  store %struct.Memory* %call2_45f705, %struct.Memory** %MEMORY

  ; Code: .L_45f70a:	 RIP: 45f70a	 Bytes: 0
  br label %block_.L_45f70a
block_.L_45f70a:

  ; Code: jmpq .L_45f70f	 RIP: 45f70a	 Bytes: 5
  %loadMem_45f70a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f70a = call %struct.Memory* @routine_jmpq_.L_45f70f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f70a, i64 5, i64 5)
  store %struct.Memory* %call_45f70a, %struct.Memory** %MEMORY

  br label %block_.L_45f70f

  ; Code: .L_45f70f:	 RIP: 45f70f	 Bytes: 0
block_.L_45f70f:

  ; Code: jmpq .L_45f714	 RIP: 45f70f	 Bytes: 5
  %loadMem_45f70f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f70f = call %struct.Memory* @routine_jmpq_.L_45f714(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f70f, i64 5, i64 5)
  store %struct.Memory* %call_45f70f, %struct.Memory** %MEMORY

  br label %block_.L_45f714

  ; Code: .L_45f714:	 RIP: 45f714	 Bytes: 0
block_.L_45f714:

  ; Code: movl -0x304(%rbp), %eax	 RIP: 45f714	 Bytes: 6
  %loadMem_45f714 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f714 = call %struct.Memory* @routine_movl_MINUS0x304__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f714)
  store %struct.Memory* %call_45f714, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 45f71a	 Bytes: 3
  %loadMem_45f71a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f71a = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f71a)
  store %struct.Memory* %call_45f71a, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x304(%rbp)	 RIP: 45f71d	 Bytes: 6
  %loadMem_45f71d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f71d = call %struct.Memory* @routine_movl__eax__MINUS0x304__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f71d)
  store %struct.Memory* %call_45f71d, %struct.Memory** %MEMORY

  ; Code: jmpq .L_45f460	 RIP: 45f723	 Bytes: 5
  %loadMem_45f723 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f723 = call %struct.Memory* @routine_jmpq_.L_45f460(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f723, i64 -707, i64 5)
  store %struct.Memory* %call_45f723, %struct.Memory** %MEMORY

  br label %block_.L_45f460

  ; Code: .L_45f728:	 RIP: 45f728	 Bytes: 0
block_.L_45f728:

  ; Code: leaq -0x50(%rbp), %rcx	 RIP: 45f728	 Bytes: 4
  %loadMem_45f728 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f728 = call %struct.Memory* @routine_leaq_MINUS0x50__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f728)
  store %struct.Memory* %call_45f728, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %edi	 RIP: 45f72c	 Bytes: 3
  %loadMem_45f72c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f72c = call %struct.Memory* @routine_movl_MINUS0x30__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f72c)
  store %struct.Memory* %call_45f72c, %struct.Memory** %MEMORY

  ; Code: movl -0x60(%rbp), %esi	 RIP: 45f72f	 Bytes: 3
  %loadMem_45f72f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f72f = call %struct.Memory* @routine_movl_MINUS0x60__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f72f)
  store %struct.Memory* %call_45f72f, %struct.Memory** %MEMORY

  ; Code: movl -0x5c(%rbp), %edx	 RIP: 45f732	 Bytes: 3
  %loadMem_45f732 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f732 = call %struct.Memory* @routine_movl_MINUS0x5c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f732)
  store %struct.Memory* %call_45f732, %struct.Memory** %MEMORY

  ; Code: movl -0x3c(%rbp), %r8d	 RIP: 45f735	 Bytes: 4
  %loadMem_45f735 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f735 = call %struct.Memory* @routine_movl_MINUS0x3c__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f735)
  store %struct.Memory* %call_45f735, %struct.Memory** %MEMORY

  ; Code: movl -0x40(%rbp), %r9d	 RIP: 45f739	 Bytes: 4
  %loadMem_45f739 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f739 = call %struct.Memory* @routine_movl_MINUS0x40__rbp____r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f739)
  store %struct.Memory* %call_45f739, %struct.Memory** %MEMORY

  ; Code: callq .find_cap2	 RIP: 45f73d	 Bytes: 5
  %loadMem1_45f73d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_45f73d = call %struct.Memory* @routine_callq_.find_cap2(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_45f73d, i64 17219, i64 5, i64 5)
  store %struct.Memory* %call1_45f73d, %struct.Memory** %MEMORY

  %loadMem2_45f73d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45f73d = load i64, i64* %3
  %call2_45f73d = call %struct.Memory* @sub_463a80.find_cap2(%struct.State* %0, i64  %loadPC_45f73d, %struct.Memory* %loadMem2_45f73d)
  store %struct.Memory* %call2_45f73d, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2fc(%rbp)	 RIP: 45f742	 Bytes: 6
  %loadMem_45f742 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f742 = call %struct.Memory* @routine_movl__eax__MINUS0x2fc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f742)
  store %struct.Memory* %call_45f742, %struct.Memory** %MEMORY

  ; Code: movl $0x5, %eax	 RIP: 45f748	 Bytes: 5
  %loadMem_45f748 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f748 = call %struct.Memory* @routine_movl__0x5___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f748)
  store %struct.Memory* %call_45f748, %struct.Memory** %MEMORY

  ; Code: subl -0x2fc(%rbp), %eax	 RIP: 45f74d	 Bytes: 6
  %loadMem_45f74d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f74d = call %struct.Memory* @routine_subl_MINUS0x2fc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f74d)
  store %struct.Memory* %call_45f74d, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 45f753	 Bytes: 3
  %loadMem_45f753 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f753 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f753)
  store %struct.Memory* %call_45f753, %struct.Memory** %MEMORY

  ; Code: jne .L_45f7af	 RIP: 45f756	 Bytes: 6
  %loadMem_45f756 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f756 = call %struct.Memory* @routine_jne_.L_45f7af(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f756, i8* %BRANCH_TAKEN, i64 89, i64 6, i64 6)
  store %struct.Memory* %call_45f756, %struct.Memory** %MEMORY

  %loadBr_45f756 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45f756 = icmp eq i8 %loadBr_45f756, 1
  br i1 %cmpBr_45f756, label %block_.L_45f7af, label %block_45f75c

block_45f75c:
  ; Code: cmpq $0x0, -0x38(%rbp)	 RIP: 45f75c	 Bytes: 5
  %loadMem_45f75c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f75c = call %struct.Memory* @routine_cmpq__0x0__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f75c)
  store %struct.Memory* %call_45f75c, %struct.Memory** %MEMORY

  ; Code: je .L_45f770	 RIP: 45f761	 Bytes: 6
  %loadMem_45f761 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f761 = call %struct.Memory* @routine_je_.L_45f770(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f761, i8* %BRANCH_TAKEN, i64 15, i64 6, i64 6)
  store %struct.Memory* %call_45f761, %struct.Memory** %MEMORY

  %loadBr_45f761 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45f761 = icmp eq i8 %loadBr_45f761, 1
  br i1 %cmpBr_45f761, label %block_.L_45f770, label %block_45f767

block_45f767:
  ; Code: movl -0x50(%rbp), %eax	 RIP: 45f767	 Bytes: 3
  %loadMem_45f767 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f767 = call %struct.Memory* @routine_movl_MINUS0x50__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f767)
  store %struct.Memory* %call_45f767, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rcx	 RIP: 45f76a	 Bytes: 4
  %loadMem_45f76a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f76a = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f76a)
  store %struct.Memory* %call_45f76a, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx)	 RIP: 45f76e	 Bytes: 2
  %loadMem_45f76e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f76e = call %struct.Memory* @routine_movl__eax____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f76e)
  store %struct.Memory* %call_45f76e, %struct.Memory** %MEMORY

  ; Code: .L_45f770:	 RIP: 45f770	 Bytes: 0
  br label %block_.L_45f770
block_.L_45f770:

  ; Code: cmpq $0x0, 0xab0ef8	 RIP: 45f770	 Bytes: 9
  %loadMem_45f770 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f770 = call %struct.Memory* @routine_cmpq__0x0__0xab0ef8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f770)
  store %struct.Memory* %call_45f770, %struct.Memory** %MEMORY

  ; Code: je .L_45f7a3	 RIP: 45f779	 Bytes: 6
  %loadMem_45f779 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f779 = call %struct.Memory* @routine_je_.L_45f7a3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f779, i8* %BRANCH_TAKEN, i64 42, i64 6, i64 6)
  store %struct.Memory* %call_45f779, %struct.Memory** %MEMORY

  %loadBr_45f779 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45f779 = icmp eq i8 %loadBr_45f779, 1
  br i1 %cmpBr_45f779, label %block_.L_45f7a3, label %block_45f77f

block_45f77f:
  ; Code: movl $0x5, %ecx	 RIP: 45f77f	 Bytes: 5
  %loadMem_45f77f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f77f = call %struct.Memory* @routine_movl__0x5___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f77f)
  store %struct.Memory* %call_45f77f, %struct.Memory** %MEMORY

  ; Code: movq $0x57fe2c, %r8	 RIP: 45f784	 Bytes: 10
  %loadMem_45f784 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f784 = call %struct.Memory* @routine_movq__0x57fe2c___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f784)
  store %struct.Memory* %call_45f784, %struct.Memory** %MEMORY

  ; Code: movq -0x4b0(%rbp), %rdi	 RIP: 45f78e	 Bytes: 7
  %loadMem_45f78e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f78e = call %struct.Memory* @routine_movq_MINUS0x4b0__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f78e)
  store %struct.Memory* %call_45f78e, %struct.Memory** %MEMORY

  ; Code: movl -0x4b4(%rbp), %esi	 RIP: 45f795	 Bytes: 6
  %loadMem_45f795 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f795 = call %struct.Memory* @routine_movl_MINUS0x4b4__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f795)
  store %struct.Memory* %call_45f795, %struct.Memory** %MEMORY

  ; Code: movl -0x50(%rbp), %edx	 RIP: 45f79b	 Bytes: 3
  %loadMem_45f79b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f79b = call %struct.Memory* @routine_movl_MINUS0x50__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f79b)
  store %struct.Memory* %call_45f79b, %struct.Memory** %MEMORY

  ; Code: callq .sgf_trace	 RIP: 45f79e	 Bytes: 5
  %loadMem1_45f79e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_45f79e = call %struct.Memory* @routine_callq_.sgf_trace(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_45f79e, i64 -292830, i64 5, i64 5)
  store %struct.Memory* %call1_45f79e, %struct.Memory** %MEMORY

  %loadMem2_45f79e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45f79e = load i64, i64* %3
  %call2_45f79e = call %struct.Memory* @sub_417fc0.sgf_trace(%struct.State* %0, i64  %loadPC_45f79e, %struct.Memory* %loadMem2_45f79e)
  store %struct.Memory* %call2_45f79e, %struct.Memory** %MEMORY

  ; Code: .L_45f7a3:	 RIP: 45f7a3	 Bytes: 0
  br label %block_.L_45f7a3
block_.L_45f7a3:

  ; Code: movl $0x5, -0x2c(%rbp)	 RIP: 45f7a3	 Bytes: 7
  %loadMem_45f7a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f7a3 = call %struct.Memory* @routine_movl__0x5__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f7a3)
  store %struct.Memory* %call_45f7a3, %struct.Memory** %MEMORY

  ; Code: jmpq .L_45ff1e	 RIP: 45f7aa	 Bytes: 5
  %loadMem_45f7aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f7aa = call %struct.Memory* @routine_jmpq_.L_45ff1e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f7aa, i64 1908, i64 5)
  store %struct.Memory* %call_45f7aa, %struct.Memory** %MEMORY

  br label %block_.L_45ff1e

  ; Code: .L_45f7af:	 RIP: 45f7af	 Bytes: 0
block_.L_45f7af:

  ; Code: movl $0x5, %eax	 RIP: 45f7af	 Bytes: 5
  %loadMem_45f7af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f7af = call %struct.Memory* @routine_movl__0x5___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f7af)
  store %struct.Memory* %call_45f7af, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 45f7b4	 Bytes: 2
  %loadMem_45f7b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f7b4 = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f7b4)
  store %struct.Memory* %call_45f7b4, %struct.Memory** %MEMORY

  ; Code: subl -0x2fc(%rbp), %ecx	 RIP: 45f7b6	 Bytes: 6
  %loadMem_45f7b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f7b6 = call %struct.Memory* @routine_subl_MINUS0x2fc__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f7b6)
  store %struct.Memory* %call_45f7b6, %struct.Memory** %MEMORY

  ; Code: subl %ecx, %eax	 RIP: 45f7bc	 Bytes: 2
  %loadMem_45f7bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f7bc = call %struct.Memory* @routine_subl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f7bc)
  store %struct.Memory* %call_45f7bc, %struct.Memory** %MEMORY

  ; Code: cmpl -0x2f8(%rbp), %eax	 RIP: 45f7be	 Bytes: 6
  %loadMem_45f7be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f7be = call %struct.Memory* @routine_cmpl_MINUS0x2f8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f7be)
  store %struct.Memory* %call_45f7be, %struct.Memory** %MEMORY

  ; Code: jle .L_45f7e8	 RIP: 45f7c4	 Bytes: 6
  %loadMem_45f7c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f7c4 = call %struct.Memory* @routine_jle_.L_45f7e8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f7c4, i8* %BRANCH_TAKEN, i64 36, i64 6, i64 6)
  store %struct.Memory* %call_45f7c4, %struct.Memory** %MEMORY

  %loadBr_45f7c4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45f7c4 = icmp eq i8 %loadBr_45f7c4, 1
  br i1 %cmpBr_45f7c4, label %block_.L_45f7e8, label %block_45f7ca

block_45f7ca:
  ; Code: movl $0x5, %eax	 RIP: 45f7ca	 Bytes: 5
  %loadMem_45f7ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f7ca = call %struct.Memory* @routine_movl__0x5___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f7ca)
  store %struct.Memory* %call_45f7ca, %struct.Memory** %MEMORY

  ; Code: movl -0x50(%rbp), %ecx	 RIP: 45f7cf	 Bytes: 3
  %loadMem_45f7cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f7cf = call %struct.Memory* @routine_movl_MINUS0x50__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f7cf)
  store %struct.Memory* %call_45f7cf, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x2f4(%rbp)	 RIP: 45f7d2	 Bytes: 6
  %loadMem_45f7d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f7d2 = call %struct.Memory* @routine_movl__ecx__MINUS0x2f4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f7d2)
  store %struct.Memory* %call_45f7d2, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 45f7d8	 Bytes: 2
  %loadMem_45f7d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f7d8 = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f7d8)
  store %struct.Memory* %call_45f7d8, %struct.Memory** %MEMORY

  ; Code: subl -0x2fc(%rbp), %ecx	 RIP: 45f7da	 Bytes: 6
  %loadMem_45f7da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f7da = call %struct.Memory* @routine_subl_MINUS0x2fc__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f7da)
  store %struct.Memory* %call_45f7da, %struct.Memory** %MEMORY

  ; Code: subl %ecx, %eax	 RIP: 45f7e0	 Bytes: 2
  %loadMem_45f7e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f7e0 = call %struct.Memory* @routine_subl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f7e0)
  store %struct.Memory* %call_45f7e0, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2f8(%rbp)	 RIP: 45f7e2	 Bytes: 6
  %loadMem_45f7e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f7e2 = call %struct.Memory* @routine_movl__eax__MINUS0x2f8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f7e2)
  store %struct.Memory* %call_45f7e2, %struct.Memory** %MEMORY

  ; Code: .L_45f7e8:	 RIP: 45f7e8	 Bytes: 0
  br label %block_.L_45f7e8
block_.L_45f7e8:

  ; Code: jmpq .L_45f7ed	 RIP: 45f7e8	 Bytes: 5
  %loadMem_45f7e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f7e8 = call %struct.Memory* @routine_jmpq_.L_45f7ed(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f7e8, i64 5, i64 5)
  store %struct.Memory* %call_45f7e8, %struct.Memory** %MEMORY

  br label %block_.L_45f7ed

  ; Code: .L_45f7ed:	 RIP: 45f7ed	 Bytes: 0
block_.L_45f7ed:

  ; Code: jmpq .L_45f7f2	 RIP: 45f7ed	 Bytes: 5
  %loadMem_45f7ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f7ed = call %struct.Memory* @routine_jmpq_.L_45f7f2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f7ed, i64 5, i64 5)
  store %struct.Memory* %call_45f7ed, %struct.Memory** %MEMORY

  br label %block_.L_45f7f2

  ; Code: .L_45f7f2:	 RIP: 45f7f2	 Bytes: 0
block_.L_45f7f2:

  ; Code: movl 0xb54ce4, %eax	 RIP: 45f7f2	 Bytes: 7
  %loadMem_45f7f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f7f2 = call %struct.Memory* @routine_movl_0xb54ce4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f7f2)
  store %struct.Memory* %call_45f7f2, %struct.Memory** %MEMORY

  ; Code: cmpl 0xb060b8, %eax	 RIP: 45f7f9	 Bytes: 7
  %loadMem_45f7f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f7f9 = call %struct.Memory* @routine_cmpl_0xb060b8___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f7f9)
  store %struct.Memory* %call_45f7f9, %struct.Memory** %MEMORY

  ; Code: jg .L_45f8d2	 RIP: 45f800	 Bytes: 6
  %loadMem_45f800 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f800 = call %struct.Memory* @routine_jg_.L_45f8d2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f800, i8* %BRANCH_TAKEN, i64 210, i64 6, i64 6)
  store %struct.Memory* %call_45f800, %struct.Memory** %MEMORY

  %loadBr_45f800 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45f800 = icmp eq i8 %loadBr_45f800, 1
  br i1 %cmpBr_45f800, label %block_.L_45f8d2, label %block_45f806

block_45f806:
  ; Code: leaq -0x50(%rbp), %rdx	 RIP: 45f806	 Bytes: 4
  %loadMem_45f806 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f806 = call %struct.Memory* @routine_leaq_MINUS0x50__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f806)
  store %struct.Memory* %call_45f806, %struct.Memory** %MEMORY

  ; Code: leaq -0x60(%rbp), %rsi	 RIP: 45f80a	 Bytes: 4
  %loadMem_45f80a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f80a = call %struct.Memory* @routine_leaq_MINUS0x60__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f80a)
  store %struct.Memory* %call_45f80a, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %edi	 RIP: 45f80e	 Bytes: 3
  %loadMem_45f80e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f80e = call %struct.Memory* @routine_movl_MINUS0x30__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f80e)
  store %struct.Memory* %call_45f80e, %struct.Memory** %MEMORY

  ; Code: movl -0x3c(%rbp), %ecx	 RIP: 45f811	 Bytes: 3
  %loadMem_45f811 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f811 = call %struct.Memory* @routine_movl_MINUS0x3c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f811)
  store %struct.Memory* %call_45f811, %struct.Memory** %MEMORY

  ; Code: movl -0x40(%rbp), %r8d	 RIP: 45f814	 Bytes: 4
  %loadMem_45f814 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f814 = call %struct.Memory* @routine_movl_MINUS0x40__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f814)
  store %struct.Memory* %call_45f814, %struct.Memory** %MEMORY

  ; Code: callq .special_attack2	 RIP: 45f818	 Bytes: 5
  %loadMem1_45f818 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_45f818 = call %struct.Memory* @routine_callq_.special_attack2(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_45f818, i64 41304, i64 5, i64 5)
  store %struct.Memory* %call1_45f818, %struct.Memory** %MEMORY

  %loadMem2_45f818 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45f818 = load i64, i64* %3
  %call2_45f818 = call %struct.Memory* @sub_469970.special_attack2(%struct.State* %0, i64  %loadPC_45f818, %struct.Memory* %loadMem2_45f818)
  store %struct.Memory* %call2_45f818, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2fc(%rbp)	 RIP: 45f81d	 Bytes: 6
  %loadMem_45f81d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f81d = call %struct.Memory* @routine_movl__eax__MINUS0x2fc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f81d)
  store %struct.Memory* %call_45f81d, %struct.Memory** %MEMORY

  ; Code: movl $0x5, %eax	 RIP: 45f823	 Bytes: 5
  %loadMem_45f823 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f823 = call %struct.Memory* @routine_movl__0x5___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f823)
  store %struct.Memory* %call_45f823, %struct.Memory** %MEMORY

  ; Code: subl -0x2fc(%rbp), %eax	 RIP: 45f828	 Bytes: 6
  %loadMem_45f828 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f828 = call %struct.Memory* @routine_subl_MINUS0x2fc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f828)
  store %struct.Memory* %call_45f828, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 45f82e	 Bytes: 3
  %loadMem_45f82e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f82e = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f82e)
  store %struct.Memory* %call_45f82e, %struct.Memory** %MEMORY

  ; Code: jne .L_45f88a	 RIP: 45f831	 Bytes: 6
  %loadMem_45f831 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f831 = call %struct.Memory* @routine_jne_.L_45f88a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f831, i8* %BRANCH_TAKEN, i64 89, i64 6, i64 6)
  store %struct.Memory* %call_45f831, %struct.Memory** %MEMORY

  %loadBr_45f831 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45f831 = icmp eq i8 %loadBr_45f831, 1
  br i1 %cmpBr_45f831, label %block_.L_45f88a, label %block_45f837

block_45f837:
  ; Code: cmpq $0x0, -0x38(%rbp)	 RIP: 45f837	 Bytes: 5
  %loadMem_45f837 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f837 = call %struct.Memory* @routine_cmpq__0x0__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f837)
  store %struct.Memory* %call_45f837, %struct.Memory** %MEMORY

  ; Code: je .L_45f84b	 RIP: 45f83c	 Bytes: 6
  %loadMem_45f83c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f83c = call %struct.Memory* @routine_je_.L_45f84b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f83c, i8* %BRANCH_TAKEN, i64 15, i64 6, i64 6)
  store %struct.Memory* %call_45f83c, %struct.Memory** %MEMORY

  %loadBr_45f83c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45f83c = icmp eq i8 %loadBr_45f83c, 1
  br i1 %cmpBr_45f83c, label %block_.L_45f84b, label %block_45f842

block_45f842:
  ; Code: movl -0x50(%rbp), %eax	 RIP: 45f842	 Bytes: 3
  %loadMem_45f842 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f842 = call %struct.Memory* @routine_movl_MINUS0x50__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f842)
  store %struct.Memory* %call_45f842, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rcx	 RIP: 45f845	 Bytes: 4
  %loadMem_45f845 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f845 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f845)
  store %struct.Memory* %call_45f845, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx)	 RIP: 45f849	 Bytes: 2
  %loadMem_45f849 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f849 = call %struct.Memory* @routine_movl__eax____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f849)
  store %struct.Memory* %call_45f849, %struct.Memory** %MEMORY

  ; Code: .L_45f84b:	 RIP: 45f84b	 Bytes: 0
  br label %block_.L_45f84b
block_.L_45f84b:

  ; Code: cmpq $0x0, 0xab0ef8	 RIP: 45f84b	 Bytes: 9
  %loadMem_45f84b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f84b = call %struct.Memory* @routine_cmpq__0x0__0xab0ef8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f84b)
  store %struct.Memory* %call_45f84b, %struct.Memory** %MEMORY

  ; Code: je .L_45f87e	 RIP: 45f854	 Bytes: 6
  %loadMem_45f854 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f854 = call %struct.Memory* @routine_je_.L_45f87e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f854, i8* %BRANCH_TAKEN, i64 42, i64 6, i64 6)
  store %struct.Memory* %call_45f854, %struct.Memory** %MEMORY

  %loadBr_45f854 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45f854 = icmp eq i8 %loadBr_45f854, 1
  br i1 %cmpBr_45f854, label %block_.L_45f87e, label %block_45f85a

block_45f85a:
  ; Code: movl $0x5, %ecx	 RIP: 45f85a	 Bytes: 5
  %loadMem_45f85a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f85a = call %struct.Memory* @routine_movl__0x5___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f85a)
  store %struct.Memory* %call_45f85a, %struct.Memory** %MEMORY

  ; Code: movq $0x57fe36, %r8	 RIP: 45f85f	 Bytes: 10
  %loadMem_45f85f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f85f = call %struct.Memory* @routine_movq__0x57fe36___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f85f)
  store %struct.Memory* %call_45f85f, %struct.Memory** %MEMORY

  ; Code: movq -0x4b0(%rbp), %rdi	 RIP: 45f869	 Bytes: 7
  %loadMem_45f869 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f869 = call %struct.Memory* @routine_movq_MINUS0x4b0__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f869)
  store %struct.Memory* %call_45f869, %struct.Memory** %MEMORY

  ; Code: movl -0x4b4(%rbp), %esi	 RIP: 45f870	 Bytes: 6
  %loadMem_45f870 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f870 = call %struct.Memory* @routine_movl_MINUS0x4b4__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f870)
  store %struct.Memory* %call_45f870, %struct.Memory** %MEMORY

  ; Code: movl -0x50(%rbp), %edx	 RIP: 45f876	 Bytes: 3
  %loadMem_45f876 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f876 = call %struct.Memory* @routine_movl_MINUS0x50__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f876)
  store %struct.Memory* %call_45f876, %struct.Memory** %MEMORY

  ; Code: callq .sgf_trace	 RIP: 45f879	 Bytes: 5
  %loadMem1_45f879 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_45f879 = call %struct.Memory* @routine_callq_.sgf_trace(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_45f879, i64 -293049, i64 5, i64 5)
  store %struct.Memory* %call1_45f879, %struct.Memory** %MEMORY

  %loadMem2_45f879 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45f879 = load i64, i64* %3
  %call2_45f879 = call %struct.Memory* @sub_417fc0.sgf_trace(%struct.State* %0, i64  %loadPC_45f879, %struct.Memory* %loadMem2_45f879)
  store %struct.Memory* %call2_45f879, %struct.Memory** %MEMORY

  ; Code: .L_45f87e:	 RIP: 45f87e	 Bytes: 0
  br label %block_.L_45f87e
block_.L_45f87e:

  ; Code: movl $0x5, -0x2c(%rbp)	 RIP: 45f87e	 Bytes: 7
  %loadMem_45f87e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f87e = call %struct.Memory* @routine_movl__0x5__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f87e)
  store %struct.Memory* %call_45f87e, %struct.Memory** %MEMORY

  ; Code: jmpq .L_45ff1e	 RIP: 45f885	 Bytes: 5
  %loadMem_45f885 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f885 = call %struct.Memory* @routine_jmpq_.L_45ff1e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f885, i64 1689, i64 5)
  store %struct.Memory* %call_45f885, %struct.Memory** %MEMORY

  br label %block_.L_45ff1e

  ; Code: .L_45f88a:	 RIP: 45f88a	 Bytes: 0
block_.L_45f88a:

  ; Code: movl $0x5, %eax	 RIP: 45f88a	 Bytes: 5
  %loadMem_45f88a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f88a = call %struct.Memory* @routine_movl__0x5___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f88a)
  store %struct.Memory* %call_45f88a, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 45f88f	 Bytes: 2
  %loadMem_45f88f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f88f = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f88f)
  store %struct.Memory* %call_45f88f, %struct.Memory** %MEMORY

  ; Code: subl -0x2fc(%rbp), %ecx	 RIP: 45f891	 Bytes: 6
  %loadMem_45f891 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f891 = call %struct.Memory* @routine_subl_MINUS0x2fc__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f891)
  store %struct.Memory* %call_45f891, %struct.Memory** %MEMORY

  ; Code: subl %ecx, %eax	 RIP: 45f897	 Bytes: 2
  %loadMem_45f897 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f897 = call %struct.Memory* @routine_subl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f897)
  store %struct.Memory* %call_45f897, %struct.Memory** %MEMORY

  ; Code: cmpl -0x2f8(%rbp), %eax	 RIP: 45f899	 Bytes: 6
  %loadMem_45f899 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f899 = call %struct.Memory* @routine_cmpl_MINUS0x2f8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f899)
  store %struct.Memory* %call_45f899, %struct.Memory** %MEMORY

  ; Code: jle .L_45f8c3	 RIP: 45f89f	 Bytes: 6
  %loadMem_45f89f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f89f = call %struct.Memory* @routine_jle_.L_45f8c3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f89f, i8* %BRANCH_TAKEN, i64 36, i64 6, i64 6)
  store %struct.Memory* %call_45f89f, %struct.Memory** %MEMORY

  %loadBr_45f89f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45f89f = icmp eq i8 %loadBr_45f89f, 1
  br i1 %cmpBr_45f89f, label %block_.L_45f8c3, label %block_45f8a5

block_45f8a5:
  ; Code: movl $0x5, %eax	 RIP: 45f8a5	 Bytes: 5
  %loadMem_45f8a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f8a5 = call %struct.Memory* @routine_movl__0x5___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f8a5)
  store %struct.Memory* %call_45f8a5, %struct.Memory** %MEMORY

  ; Code: movl -0x50(%rbp), %ecx	 RIP: 45f8aa	 Bytes: 3
  %loadMem_45f8aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f8aa = call %struct.Memory* @routine_movl_MINUS0x50__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f8aa)
  store %struct.Memory* %call_45f8aa, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x2f4(%rbp)	 RIP: 45f8ad	 Bytes: 6
  %loadMem_45f8ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f8ad = call %struct.Memory* @routine_movl__ecx__MINUS0x2f4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f8ad)
  store %struct.Memory* %call_45f8ad, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 45f8b3	 Bytes: 2
  %loadMem_45f8b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f8b3 = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f8b3)
  store %struct.Memory* %call_45f8b3, %struct.Memory** %MEMORY

  ; Code: subl -0x2fc(%rbp), %ecx	 RIP: 45f8b5	 Bytes: 6
  %loadMem_45f8b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f8b5 = call %struct.Memory* @routine_subl_MINUS0x2fc__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f8b5)
  store %struct.Memory* %call_45f8b5, %struct.Memory** %MEMORY

  ; Code: subl %ecx, %eax	 RIP: 45f8bb	 Bytes: 2
  %loadMem_45f8bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f8bb = call %struct.Memory* @routine_subl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f8bb)
  store %struct.Memory* %call_45f8bb, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2f8(%rbp)	 RIP: 45f8bd	 Bytes: 6
  %loadMem_45f8bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f8bd = call %struct.Memory* @routine_movl__eax__MINUS0x2f8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f8bd)
  store %struct.Memory* %call_45f8bd, %struct.Memory** %MEMORY

  ; Code: .L_45f8c3:	 RIP: 45f8c3	 Bytes: 0
  br label %block_.L_45f8c3
block_.L_45f8c3:

  ; Code: jmpq .L_45f8c8	 RIP: 45f8c3	 Bytes: 5
  %loadMem_45f8c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f8c3 = call %struct.Memory* @routine_jmpq_.L_45f8c8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f8c3, i64 5, i64 5)
  store %struct.Memory* %call_45f8c3, %struct.Memory** %MEMORY

  br label %block_.L_45f8c8

  ; Code: .L_45f8c8:	 RIP: 45f8c8	 Bytes: 0
block_.L_45f8c8:

  ; Code: jmpq .L_45f8cd	 RIP: 45f8c8	 Bytes: 5
  %loadMem_45f8c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f8c8 = call %struct.Memory* @routine_jmpq_.L_45f8cd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f8c8, i64 5, i64 5)
  store %struct.Memory* %call_45f8c8, %struct.Memory** %MEMORY

  br label %block_.L_45f8cd

  ; Code: .L_45f8cd:	 RIP: 45f8cd	 Bytes: 0
block_.L_45f8cd:

  ; Code: jmpq .L_45f8d2	 RIP: 45f8cd	 Bytes: 5
  %loadMem_45f8cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f8cd = call %struct.Memory* @routine_jmpq_.L_45f8d2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f8cd, i64 5, i64 5)
  store %struct.Memory* %call_45f8cd, %struct.Memory** %MEMORY

  br label %block_.L_45f8d2

  ; Code: .L_45f8d2:	 RIP: 45f8d2	 Bytes: 0
block_.L_45f8d2:

  ; Code: movl 0xb54ce4, %eax	 RIP: 45f8d2	 Bytes: 7
  %loadMem_45f8d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f8d2 = call %struct.Memory* @routine_movl_0xb54ce4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f8d2)
  store %struct.Memory* %call_45f8d2, %struct.Memory** %MEMORY

  ; Code: cmpl 0xb060b8, %eax	 RIP: 45f8d9	 Bytes: 7
  %loadMem_45f8d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f8d9 = call %struct.Memory* @routine_cmpl_0xb060b8___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f8d9)
  store %struct.Memory* %call_45f8d9, %struct.Memory** %MEMORY

  ; Code: jg .L_45f9b2	 RIP: 45f8e0	 Bytes: 6
  %loadMem_45f8e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f8e0 = call %struct.Memory* @routine_jg_.L_45f9b2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f8e0, i8* %BRANCH_TAKEN, i64 210, i64 6, i64 6)
  store %struct.Memory* %call_45f8e0, %struct.Memory** %MEMORY

  %loadBr_45f8e0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45f8e0 = icmp eq i8 %loadBr_45f8e0, 1
  br i1 %cmpBr_45f8e0, label %block_.L_45f9b2, label %block_45f8e6

block_45f8e6:
  ; Code: leaq -0x50(%rbp), %rdx	 RIP: 45f8e6	 Bytes: 4
  %loadMem_45f8e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f8e6 = call %struct.Memory* @routine_leaq_MINUS0x50__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f8e6)
  store %struct.Memory* %call_45f8e6, %struct.Memory** %MEMORY

  ; Code: leaq -0x60(%rbp), %rsi	 RIP: 45f8ea	 Bytes: 4
  %loadMem_45f8ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f8ea = call %struct.Memory* @routine_leaq_MINUS0x60__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f8ea)
  store %struct.Memory* %call_45f8ea, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %edi	 RIP: 45f8ee	 Bytes: 3
  %loadMem_45f8ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f8ee = call %struct.Memory* @routine_movl_MINUS0x30__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f8ee)
  store %struct.Memory* %call_45f8ee, %struct.Memory** %MEMORY

  ; Code: movl -0x3c(%rbp), %ecx	 RIP: 45f8f1	 Bytes: 3
  %loadMem_45f8f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f8f1 = call %struct.Memory* @routine_movl_MINUS0x3c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f8f1)
  store %struct.Memory* %call_45f8f1, %struct.Memory** %MEMORY

  ; Code: movl -0x40(%rbp), %r8d	 RIP: 45f8f4	 Bytes: 4
  %loadMem_45f8f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f8f4 = call %struct.Memory* @routine_movl_MINUS0x40__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f8f4)
  store %struct.Memory* %call_45f8f4, %struct.Memory** %MEMORY

  ; Code: callq .special_attack3	 RIP: 45f8f8	 Bytes: 5
  %loadMem1_45f8f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_45f8f8 = call %struct.Memory* @routine_callq_.special_attack3(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_45f8f8, i64 41544, i64 5, i64 5)
  store %struct.Memory* %call1_45f8f8, %struct.Memory** %MEMORY

  %loadMem2_45f8f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45f8f8 = load i64, i64* %3
  %call2_45f8f8 = call %struct.Memory* @sub_469b40.special_attack3(%struct.State* %0, i64  %loadPC_45f8f8, %struct.Memory* %loadMem2_45f8f8)
  store %struct.Memory* %call2_45f8f8, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2fc(%rbp)	 RIP: 45f8fd	 Bytes: 6
  %loadMem_45f8fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f8fd = call %struct.Memory* @routine_movl__eax__MINUS0x2fc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f8fd)
  store %struct.Memory* %call_45f8fd, %struct.Memory** %MEMORY

  ; Code: movl $0x5, %eax	 RIP: 45f903	 Bytes: 5
  %loadMem_45f903 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f903 = call %struct.Memory* @routine_movl__0x5___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f903)
  store %struct.Memory* %call_45f903, %struct.Memory** %MEMORY

  ; Code: subl -0x2fc(%rbp), %eax	 RIP: 45f908	 Bytes: 6
  %loadMem_45f908 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f908 = call %struct.Memory* @routine_subl_MINUS0x2fc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f908)
  store %struct.Memory* %call_45f908, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 45f90e	 Bytes: 3
  %loadMem_45f90e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f90e = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f90e)
  store %struct.Memory* %call_45f90e, %struct.Memory** %MEMORY

  ; Code: jne .L_45f96a	 RIP: 45f911	 Bytes: 6
  %loadMem_45f911 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f911 = call %struct.Memory* @routine_jne_.L_45f96a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f911, i8* %BRANCH_TAKEN, i64 89, i64 6, i64 6)
  store %struct.Memory* %call_45f911, %struct.Memory** %MEMORY

  %loadBr_45f911 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45f911 = icmp eq i8 %loadBr_45f911, 1
  br i1 %cmpBr_45f911, label %block_.L_45f96a, label %block_45f917

block_45f917:
  ; Code: cmpq $0x0, -0x38(%rbp)	 RIP: 45f917	 Bytes: 5
  %loadMem_45f917 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f917 = call %struct.Memory* @routine_cmpq__0x0__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f917)
  store %struct.Memory* %call_45f917, %struct.Memory** %MEMORY

  ; Code: je .L_45f92b	 RIP: 45f91c	 Bytes: 6
  %loadMem_45f91c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f91c = call %struct.Memory* @routine_je_.L_45f92b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f91c, i8* %BRANCH_TAKEN, i64 15, i64 6, i64 6)
  store %struct.Memory* %call_45f91c, %struct.Memory** %MEMORY

  %loadBr_45f91c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45f91c = icmp eq i8 %loadBr_45f91c, 1
  br i1 %cmpBr_45f91c, label %block_.L_45f92b, label %block_45f922

block_45f922:
  ; Code: movl -0x50(%rbp), %eax	 RIP: 45f922	 Bytes: 3
  %loadMem_45f922 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f922 = call %struct.Memory* @routine_movl_MINUS0x50__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f922)
  store %struct.Memory* %call_45f922, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rcx	 RIP: 45f925	 Bytes: 4
  %loadMem_45f925 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f925 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f925)
  store %struct.Memory* %call_45f925, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx)	 RIP: 45f929	 Bytes: 2
  %loadMem_45f929 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f929 = call %struct.Memory* @routine_movl__eax____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f929)
  store %struct.Memory* %call_45f929, %struct.Memory** %MEMORY

  ; Code: .L_45f92b:	 RIP: 45f92b	 Bytes: 0
  br label %block_.L_45f92b
block_.L_45f92b:

  ; Code: cmpq $0x0, 0xab0ef8	 RIP: 45f92b	 Bytes: 9
  %loadMem_45f92b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f92b = call %struct.Memory* @routine_cmpq__0x0__0xab0ef8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f92b)
  store %struct.Memory* %call_45f92b, %struct.Memory** %MEMORY

  ; Code: je .L_45f95e	 RIP: 45f934	 Bytes: 6
  %loadMem_45f934 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f934 = call %struct.Memory* @routine_je_.L_45f95e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f934, i8* %BRANCH_TAKEN, i64 42, i64 6, i64 6)
  store %struct.Memory* %call_45f934, %struct.Memory** %MEMORY

  %loadBr_45f934 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45f934 = icmp eq i8 %loadBr_45f934, 1
  br i1 %cmpBr_45f934, label %block_.L_45f95e, label %block_45f93a

block_45f93a:
  ; Code: movl $0x5, %ecx	 RIP: 45f93a	 Bytes: 5
  %loadMem_45f93a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f93a = call %struct.Memory* @routine_movl__0x5___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f93a)
  store %struct.Memory* %call_45f93a, %struct.Memory** %MEMORY

  ; Code: movq $0x57fe46, %r8	 RIP: 45f93f	 Bytes: 10
  %loadMem_45f93f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f93f = call %struct.Memory* @routine_movq__0x57fe46___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f93f)
  store %struct.Memory* %call_45f93f, %struct.Memory** %MEMORY

  ; Code: movq -0x4b0(%rbp), %rdi	 RIP: 45f949	 Bytes: 7
  %loadMem_45f949 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f949 = call %struct.Memory* @routine_movq_MINUS0x4b0__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f949)
  store %struct.Memory* %call_45f949, %struct.Memory** %MEMORY

  ; Code: movl -0x4b4(%rbp), %esi	 RIP: 45f950	 Bytes: 6
  %loadMem_45f950 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f950 = call %struct.Memory* @routine_movl_MINUS0x4b4__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f950)
  store %struct.Memory* %call_45f950, %struct.Memory** %MEMORY

  ; Code: movl -0x50(%rbp), %edx	 RIP: 45f956	 Bytes: 3
  %loadMem_45f956 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f956 = call %struct.Memory* @routine_movl_MINUS0x50__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f956)
  store %struct.Memory* %call_45f956, %struct.Memory** %MEMORY

  ; Code: callq .sgf_trace	 RIP: 45f959	 Bytes: 5
  %loadMem1_45f959 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_45f959 = call %struct.Memory* @routine_callq_.sgf_trace(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_45f959, i64 -293273, i64 5, i64 5)
  store %struct.Memory* %call1_45f959, %struct.Memory** %MEMORY

  %loadMem2_45f959 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45f959 = load i64, i64* %3
  %call2_45f959 = call %struct.Memory* @sub_417fc0.sgf_trace(%struct.State* %0, i64  %loadPC_45f959, %struct.Memory* %loadMem2_45f959)
  store %struct.Memory* %call2_45f959, %struct.Memory** %MEMORY

  ; Code: .L_45f95e:	 RIP: 45f95e	 Bytes: 0
  br label %block_.L_45f95e
block_.L_45f95e:

  ; Code: movl $0x5, -0x2c(%rbp)	 RIP: 45f95e	 Bytes: 7
  %loadMem_45f95e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f95e = call %struct.Memory* @routine_movl__0x5__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f95e)
  store %struct.Memory* %call_45f95e, %struct.Memory** %MEMORY

  ; Code: jmpq .L_45ff1e	 RIP: 45f965	 Bytes: 5
  %loadMem_45f965 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f965 = call %struct.Memory* @routine_jmpq_.L_45ff1e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f965, i64 1465, i64 5)
  store %struct.Memory* %call_45f965, %struct.Memory** %MEMORY

  br label %block_.L_45ff1e

  ; Code: .L_45f96a:	 RIP: 45f96a	 Bytes: 0
block_.L_45f96a:

  ; Code: movl $0x5, %eax	 RIP: 45f96a	 Bytes: 5
  %loadMem_45f96a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f96a = call %struct.Memory* @routine_movl__0x5___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f96a)
  store %struct.Memory* %call_45f96a, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 45f96f	 Bytes: 2
  %loadMem_45f96f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f96f = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f96f)
  store %struct.Memory* %call_45f96f, %struct.Memory** %MEMORY

  ; Code: subl -0x2fc(%rbp), %ecx	 RIP: 45f971	 Bytes: 6
  %loadMem_45f971 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f971 = call %struct.Memory* @routine_subl_MINUS0x2fc__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f971)
  store %struct.Memory* %call_45f971, %struct.Memory** %MEMORY

  ; Code: subl %ecx, %eax	 RIP: 45f977	 Bytes: 2
  %loadMem_45f977 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f977 = call %struct.Memory* @routine_subl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f977)
  store %struct.Memory* %call_45f977, %struct.Memory** %MEMORY

  ; Code: cmpl -0x2f8(%rbp), %eax	 RIP: 45f979	 Bytes: 6
  %loadMem_45f979 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f979 = call %struct.Memory* @routine_cmpl_MINUS0x2f8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f979)
  store %struct.Memory* %call_45f979, %struct.Memory** %MEMORY

  ; Code: jle .L_45f9a3	 RIP: 45f97f	 Bytes: 6
  %loadMem_45f97f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f97f = call %struct.Memory* @routine_jle_.L_45f9a3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f97f, i8* %BRANCH_TAKEN, i64 36, i64 6, i64 6)
  store %struct.Memory* %call_45f97f, %struct.Memory** %MEMORY

  %loadBr_45f97f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45f97f = icmp eq i8 %loadBr_45f97f, 1
  br i1 %cmpBr_45f97f, label %block_.L_45f9a3, label %block_45f985

block_45f985:
  ; Code: movl $0x5, %eax	 RIP: 45f985	 Bytes: 5
  %loadMem_45f985 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f985 = call %struct.Memory* @routine_movl__0x5___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f985)
  store %struct.Memory* %call_45f985, %struct.Memory** %MEMORY

  ; Code: movl -0x50(%rbp), %ecx	 RIP: 45f98a	 Bytes: 3
  %loadMem_45f98a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f98a = call %struct.Memory* @routine_movl_MINUS0x50__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f98a)
  store %struct.Memory* %call_45f98a, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x2f4(%rbp)	 RIP: 45f98d	 Bytes: 6
  %loadMem_45f98d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f98d = call %struct.Memory* @routine_movl__ecx__MINUS0x2f4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f98d)
  store %struct.Memory* %call_45f98d, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 45f993	 Bytes: 2
  %loadMem_45f993 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f993 = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f993)
  store %struct.Memory* %call_45f993, %struct.Memory** %MEMORY

  ; Code: subl -0x2fc(%rbp), %ecx	 RIP: 45f995	 Bytes: 6
  %loadMem_45f995 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f995 = call %struct.Memory* @routine_subl_MINUS0x2fc__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f995)
  store %struct.Memory* %call_45f995, %struct.Memory** %MEMORY

  ; Code: subl %ecx, %eax	 RIP: 45f99b	 Bytes: 2
  %loadMem_45f99b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f99b = call %struct.Memory* @routine_subl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f99b)
  store %struct.Memory* %call_45f99b, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2f8(%rbp)	 RIP: 45f99d	 Bytes: 6
  %loadMem_45f99d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f99d = call %struct.Memory* @routine_movl__eax__MINUS0x2f8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f99d)
  store %struct.Memory* %call_45f99d, %struct.Memory** %MEMORY

  ; Code: .L_45f9a3:	 RIP: 45f9a3	 Bytes: 0
  br label %block_.L_45f9a3
block_.L_45f9a3:

  ; Code: jmpq .L_45f9a8	 RIP: 45f9a3	 Bytes: 5
  %loadMem_45f9a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f9a3 = call %struct.Memory* @routine_jmpq_.L_45f9a8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f9a3, i64 5, i64 5)
  store %struct.Memory* %call_45f9a3, %struct.Memory** %MEMORY

  br label %block_.L_45f9a8

  ; Code: .L_45f9a8:	 RIP: 45f9a8	 Bytes: 0
block_.L_45f9a8:

  ; Code: jmpq .L_45f9ad	 RIP: 45f9a8	 Bytes: 5
  %loadMem_45f9a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f9a8 = call %struct.Memory* @routine_jmpq_.L_45f9ad(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f9a8, i64 5, i64 5)
  store %struct.Memory* %call_45f9a8, %struct.Memory** %MEMORY

  br label %block_.L_45f9ad

  ; Code: .L_45f9ad:	 RIP: 45f9ad	 Bytes: 0
block_.L_45f9ad:

  ; Code: jmpq .L_45f9b2	 RIP: 45f9ad	 Bytes: 5
  %loadMem_45f9ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f9ad = call %struct.Memory* @routine_jmpq_.L_45f9b2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f9ad, i64 5, i64 5)
  store %struct.Memory* %call_45f9ad, %struct.Memory** %MEMORY

  br label %block_.L_45f9b2

  ; Code: .L_45f9b2:	 RIP: 45f9b2	 Bytes: 0
block_.L_45f9b2:

  ; Code: movl 0xb54ce4, %eax	 RIP: 45f9b2	 Bytes: 7
  %loadMem_45f9b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f9b2 = call %struct.Memory* @routine_movl_0xb54ce4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f9b2)
  store %struct.Memory* %call_45f9b2, %struct.Memory** %MEMORY

  ; Code: cmpl 0xb060b8, %eax	 RIP: 45f9b9	 Bytes: 7
  %loadMem_45f9b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f9b9 = call %struct.Memory* @routine_cmpl_0xb060b8___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f9b9)
  store %struct.Memory* %call_45f9b9, %struct.Memory** %MEMORY

  ; Code: jg .L_45fa92	 RIP: 45f9c0	 Bytes: 6
  %loadMem_45f9c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f9c0 = call %struct.Memory* @routine_jg_.L_45fa92(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f9c0, i8* %BRANCH_TAKEN, i64 210, i64 6, i64 6)
  store %struct.Memory* %call_45f9c0, %struct.Memory** %MEMORY

  %loadBr_45f9c0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45f9c0 = icmp eq i8 %loadBr_45f9c0, 1
  br i1 %cmpBr_45f9c0, label %block_.L_45fa92, label %block_45f9c6

block_45f9c6:
  ; Code: leaq -0x50(%rbp), %rdx	 RIP: 45f9c6	 Bytes: 4
  %loadMem_45f9c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f9c6 = call %struct.Memory* @routine_leaq_MINUS0x50__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f9c6)
  store %struct.Memory* %call_45f9c6, %struct.Memory** %MEMORY

  ; Code: leaq -0x60(%rbp), %rsi	 RIP: 45f9ca	 Bytes: 4
  %loadMem_45f9ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f9ca = call %struct.Memory* @routine_leaq_MINUS0x60__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f9ca)
  store %struct.Memory* %call_45f9ca, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %edi	 RIP: 45f9ce	 Bytes: 3
  %loadMem_45f9ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f9ce = call %struct.Memory* @routine_movl_MINUS0x30__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f9ce)
  store %struct.Memory* %call_45f9ce, %struct.Memory** %MEMORY

  ; Code: movl -0x3c(%rbp), %ecx	 RIP: 45f9d1	 Bytes: 3
  %loadMem_45f9d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f9d1 = call %struct.Memory* @routine_movl_MINUS0x3c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f9d1)
  store %struct.Memory* %call_45f9d1, %struct.Memory** %MEMORY

  ; Code: movl -0x40(%rbp), %r8d	 RIP: 45f9d4	 Bytes: 4
  %loadMem_45f9d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f9d4 = call %struct.Memory* @routine_movl_MINUS0x40__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f9d4)
  store %struct.Memory* %call_45f9d4, %struct.Memory** %MEMORY

  ; Code: callq .special_attack4	 RIP: 45f9d8	 Bytes: 5
  %loadMem1_45f9d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_45f9d8 = call %struct.Memory* @routine_callq_.special_attack4(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_45f9d8, i64 42264, i64 5, i64 5)
  store %struct.Memory* %call1_45f9d8, %struct.Memory** %MEMORY

  %loadMem2_45f9d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45f9d8 = load i64, i64* %3
  %call2_45f9d8 = call %struct.Memory* @sub_469ef0.special_attack4(%struct.State* %0, i64  %loadPC_45f9d8, %struct.Memory* %loadMem2_45f9d8)
  store %struct.Memory* %call2_45f9d8, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2fc(%rbp)	 RIP: 45f9dd	 Bytes: 6
  %loadMem_45f9dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f9dd = call %struct.Memory* @routine_movl__eax__MINUS0x2fc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f9dd)
  store %struct.Memory* %call_45f9dd, %struct.Memory** %MEMORY

  ; Code: movl $0x5, %eax	 RIP: 45f9e3	 Bytes: 5
  %loadMem_45f9e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f9e3 = call %struct.Memory* @routine_movl__0x5___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f9e3)
  store %struct.Memory* %call_45f9e3, %struct.Memory** %MEMORY

  ; Code: subl -0x2fc(%rbp), %eax	 RIP: 45f9e8	 Bytes: 6
  %loadMem_45f9e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f9e8 = call %struct.Memory* @routine_subl_MINUS0x2fc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f9e8)
  store %struct.Memory* %call_45f9e8, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 45f9ee	 Bytes: 3
  %loadMem_45f9ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f9ee = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f9ee)
  store %struct.Memory* %call_45f9ee, %struct.Memory** %MEMORY

  ; Code: jne .L_45fa4a	 RIP: 45f9f1	 Bytes: 6
  %loadMem_45f9f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f9f1 = call %struct.Memory* @routine_jne_.L_45fa4a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f9f1, i8* %BRANCH_TAKEN, i64 89, i64 6, i64 6)
  store %struct.Memory* %call_45f9f1, %struct.Memory** %MEMORY

  %loadBr_45f9f1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45f9f1 = icmp eq i8 %loadBr_45f9f1, 1
  br i1 %cmpBr_45f9f1, label %block_.L_45fa4a, label %block_45f9f7

block_45f9f7:
  ; Code: cmpq $0x0, -0x38(%rbp)	 RIP: 45f9f7	 Bytes: 5
  %loadMem_45f9f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f9f7 = call %struct.Memory* @routine_cmpq__0x0__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f9f7)
  store %struct.Memory* %call_45f9f7, %struct.Memory** %MEMORY

  ; Code: je .L_45fa0b	 RIP: 45f9fc	 Bytes: 6
  %loadMem_45f9fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45f9fc = call %struct.Memory* @routine_je_.L_45fa0b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45f9fc, i8* %BRANCH_TAKEN, i64 15, i64 6, i64 6)
  store %struct.Memory* %call_45f9fc, %struct.Memory** %MEMORY

  %loadBr_45f9fc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45f9fc = icmp eq i8 %loadBr_45f9fc, 1
  br i1 %cmpBr_45f9fc, label %block_.L_45fa0b, label %block_45fa02

block_45fa02:
  ; Code: movl -0x50(%rbp), %eax	 RIP: 45fa02	 Bytes: 3
  %loadMem_45fa02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fa02 = call %struct.Memory* @routine_movl_MINUS0x50__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fa02)
  store %struct.Memory* %call_45fa02, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rcx	 RIP: 45fa05	 Bytes: 4
  %loadMem_45fa05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fa05 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fa05)
  store %struct.Memory* %call_45fa05, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx)	 RIP: 45fa09	 Bytes: 2
  %loadMem_45fa09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fa09 = call %struct.Memory* @routine_movl__eax____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fa09)
  store %struct.Memory* %call_45fa09, %struct.Memory** %MEMORY

  ; Code: .L_45fa0b:	 RIP: 45fa0b	 Bytes: 0
  br label %block_.L_45fa0b
block_.L_45fa0b:

  ; Code: cmpq $0x0, 0xab0ef8	 RIP: 45fa0b	 Bytes: 9
  %loadMem_45fa0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fa0b = call %struct.Memory* @routine_cmpq__0x0__0xab0ef8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fa0b)
  store %struct.Memory* %call_45fa0b, %struct.Memory** %MEMORY

  ; Code: je .L_45fa3e	 RIP: 45fa14	 Bytes: 6
  %loadMem_45fa14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fa14 = call %struct.Memory* @routine_je_.L_45fa3e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fa14, i8* %BRANCH_TAKEN, i64 42, i64 6, i64 6)
  store %struct.Memory* %call_45fa14, %struct.Memory** %MEMORY

  %loadBr_45fa14 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45fa14 = icmp eq i8 %loadBr_45fa14, 1
  br i1 %cmpBr_45fa14, label %block_.L_45fa3e, label %block_45fa1a

block_45fa1a:
  ; Code: movl $0x5, %ecx	 RIP: 45fa1a	 Bytes: 5
  %loadMem_45fa1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fa1a = call %struct.Memory* @routine_movl__0x5___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fa1a)
  store %struct.Memory* %call_45fa1a, %struct.Memory** %MEMORY

  ; Code: movq $0x57fe56, %r8	 RIP: 45fa1f	 Bytes: 10
  %loadMem_45fa1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fa1f = call %struct.Memory* @routine_movq__0x57fe56___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fa1f)
  store %struct.Memory* %call_45fa1f, %struct.Memory** %MEMORY

  ; Code: movq -0x4b0(%rbp), %rdi	 RIP: 45fa29	 Bytes: 7
  %loadMem_45fa29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fa29 = call %struct.Memory* @routine_movq_MINUS0x4b0__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fa29)
  store %struct.Memory* %call_45fa29, %struct.Memory** %MEMORY

  ; Code: movl -0x4b4(%rbp), %esi	 RIP: 45fa30	 Bytes: 6
  %loadMem_45fa30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fa30 = call %struct.Memory* @routine_movl_MINUS0x4b4__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fa30)
  store %struct.Memory* %call_45fa30, %struct.Memory** %MEMORY

  ; Code: movl -0x50(%rbp), %edx	 RIP: 45fa36	 Bytes: 3
  %loadMem_45fa36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fa36 = call %struct.Memory* @routine_movl_MINUS0x50__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fa36)
  store %struct.Memory* %call_45fa36, %struct.Memory** %MEMORY

  ; Code: callq .sgf_trace	 RIP: 45fa39	 Bytes: 5
  %loadMem1_45fa39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_45fa39 = call %struct.Memory* @routine_callq_.sgf_trace(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_45fa39, i64 -293497, i64 5, i64 5)
  store %struct.Memory* %call1_45fa39, %struct.Memory** %MEMORY

  %loadMem2_45fa39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45fa39 = load i64, i64* %3
  %call2_45fa39 = call %struct.Memory* @sub_417fc0.sgf_trace(%struct.State* %0, i64  %loadPC_45fa39, %struct.Memory* %loadMem2_45fa39)
  store %struct.Memory* %call2_45fa39, %struct.Memory** %MEMORY

  ; Code: .L_45fa3e:	 RIP: 45fa3e	 Bytes: 0
  br label %block_.L_45fa3e
block_.L_45fa3e:

  ; Code: movl $0x5, -0x2c(%rbp)	 RIP: 45fa3e	 Bytes: 7
  %loadMem_45fa3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fa3e = call %struct.Memory* @routine_movl__0x5__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fa3e)
  store %struct.Memory* %call_45fa3e, %struct.Memory** %MEMORY

  ; Code: jmpq .L_45ff1e	 RIP: 45fa45	 Bytes: 5
  %loadMem_45fa45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fa45 = call %struct.Memory* @routine_jmpq_.L_45ff1e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fa45, i64 1241, i64 5)
  store %struct.Memory* %call_45fa45, %struct.Memory** %MEMORY

  br label %block_.L_45ff1e

  ; Code: .L_45fa4a:	 RIP: 45fa4a	 Bytes: 0
block_.L_45fa4a:

  ; Code: movl $0x5, %eax	 RIP: 45fa4a	 Bytes: 5
  %loadMem_45fa4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fa4a = call %struct.Memory* @routine_movl__0x5___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fa4a)
  store %struct.Memory* %call_45fa4a, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 45fa4f	 Bytes: 2
  %loadMem_45fa4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fa4f = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fa4f)
  store %struct.Memory* %call_45fa4f, %struct.Memory** %MEMORY

  ; Code: subl -0x2fc(%rbp), %ecx	 RIP: 45fa51	 Bytes: 6
  %loadMem_45fa51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fa51 = call %struct.Memory* @routine_subl_MINUS0x2fc__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fa51)
  store %struct.Memory* %call_45fa51, %struct.Memory** %MEMORY

  ; Code: subl %ecx, %eax	 RIP: 45fa57	 Bytes: 2
  %loadMem_45fa57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fa57 = call %struct.Memory* @routine_subl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fa57)
  store %struct.Memory* %call_45fa57, %struct.Memory** %MEMORY

  ; Code: cmpl -0x2f8(%rbp), %eax	 RIP: 45fa59	 Bytes: 6
  %loadMem_45fa59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fa59 = call %struct.Memory* @routine_cmpl_MINUS0x2f8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fa59)
  store %struct.Memory* %call_45fa59, %struct.Memory** %MEMORY

  ; Code: jle .L_45fa83	 RIP: 45fa5f	 Bytes: 6
  %loadMem_45fa5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fa5f = call %struct.Memory* @routine_jle_.L_45fa83(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fa5f, i8* %BRANCH_TAKEN, i64 36, i64 6, i64 6)
  store %struct.Memory* %call_45fa5f, %struct.Memory** %MEMORY

  %loadBr_45fa5f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45fa5f = icmp eq i8 %loadBr_45fa5f, 1
  br i1 %cmpBr_45fa5f, label %block_.L_45fa83, label %block_45fa65

block_45fa65:
  ; Code: movl $0x5, %eax	 RIP: 45fa65	 Bytes: 5
  %loadMem_45fa65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fa65 = call %struct.Memory* @routine_movl__0x5___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fa65)
  store %struct.Memory* %call_45fa65, %struct.Memory** %MEMORY

  ; Code: movl -0x50(%rbp), %ecx	 RIP: 45fa6a	 Bytes: 3
  %loadMem_45fa6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fa6a = call %struct.Memory* @routine_movl_MINUS0x50__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fa6a)
  store %struct.Memory* %call_45fa6a, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x2f4(%rbp)	 RIP: 45fa6d	 Bytes: 6
  %loadMem_45fa6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fa6d = call %struct.Memory* @routine_movl__ecx__MINUS0x2f4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fa6d)
  store %struct.Memory* %call_45fa6d, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 45fa73	 Bytes: 2
  %loadMem_45fa73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fa73 = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fa73)
  store %struct.Memory* %call_45fa73, %struct.Memory** %MEMORY

  ; Code: subl -0x2fc(%rbp), %ecx	 RIP: 45fa75	 Bytes: 6
  %loadMem_45fa75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fa75 = call %struct.Memory* @routine_subl_MINUS0x2fc__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fa75)
  store %struct.Memory* %call_45fa75, %struct.Memory** %MEMORY

  ; Code: subl %ecx, %eax	 RIP: 45fa7b	 Bytes: 2
  %loadMem_45fa7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fa7b = call %struct.Memory* @routine_subl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fa7b)
  store %struct.Memory* %call_45fa7b, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2f8(%rbp)	 RIP: 45fa7d	 Bytes: 6
  %loadMem_45fa7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fa7d = call %struct.Memory* @routine_movl__eax__MINUS0x2f8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fa7d)
  store %struct.Memory* %call_45fa7d, %struct.Memory** %MEMORY

  ; Code: .L_45fa83:	 RIP: 45fa83	 Bytes: 0
  br label %block_.L_45fa83
block_.L_45fa83:

  ; Code: jmpq .L_45fa88	 RIP: 45fa83	 Bytes: 5
  %loadMem_45fa83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fa83 = call %struct.Memory* @routine_jmpq_.L_45fa88(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fa83, i64 5, i64 5)
  store %struct.Memory* %call_45fa83, %struct.Memory** %MEMORY

  br label %block_.L_45fa88

  ; Code: .L_45fa88:	 RIP: 45fa88	 Bytes: 0
block_.L_45fa88:

  ; Code: jmpq .L_45fa8d	 RIP: 45fa88	 Bytes: 5
  %loadMem_45fa88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fa88 = call %struct.Memory* @routine_jmpq_.L_45fa8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fa88, i64 5, i64 5)
  store %struct.Memory* %call_45fa88, %struct.Memory** %MEMORY

  br label %block_.L_45fa8d

  ; Code: .L_45fa8d:	 RIP: 45fa8d	 Bytes: 0
block_.L_45fa8d:

  ; Code: jmpq .L_45fa92	 RIP: 45fa8d	 Bytes: 5
  %loadMem_45fa8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fa8d = call %struct.Memory* @routine_jmpq_.L_45fa92(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fa8d, i64 5, i64 5)
  store %struct.Memory* %call_45fa8d, %struct.Memory** %MEMORY

  br label %block_.L_45fa92

  ; Code: .L_45fa92:	 RIP: 45fa92	 Bytes: 0
block_.L_45fa92:

  ; Code: cmpl $0xa, 0x7ae448	 RIP: 45fa92	 Bytes: 8
  %loadMem_45fa92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fa92 = call %struct.Memory* @routine_cmpl__0xa__0x7ae448(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fa92)
  store %struct.Memory* %call_45fa92, %struct.Memory** %MEMORY

  ; Code: jl .L_45fe35	 RIP: 45fa9a	 Bytes: 6
  %loadMem_45fa9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fa9a = call %struct.Memory* @routine_jl_.L_45fe35(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fa9a, i8* %BRANCH_TAKEN, i64 923, i64 6, i64 6)
  store %struct.Memory* %call_45fa9a, %struct.Memory** %MEMORY

  %loadBr_45fa9a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45fa9a = icmp eq i8 %loadBr_45fa9a, 1
  br i1 %cmpBr_45fa9a, label %block_.L_45fe35, label %block_45faa0

block_45faa0:
  ; Code: movl 0xb54ce4, %eax	 RIP: 45faa0	 Bytes: 7
  %loadMem_45faa0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45faa0 = call %struct.Memory* @routine_movl_0xb54ce4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45faa0)
  store %struct.Memory* %call_45faa0, %struct.Memory** %MEMORY

  ; Code: cmpl 0xb060b8, %eax	 RIP: 45faa7	 Bytes: 7
  %loadMem_45faa7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45faa7 = call %struct.Memory* @routine_cmpl_0xb060b8___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45faa7)
  store %struct.Memory* %call_45faa7, %struct.Memory** %MEMORY

  ; Code: jg .L_45fe35	 RIP: 45faae	 Bytes: 6
  %loadMem_45faae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45faae = call %struct.Memory* @routine_jg_.L_45fe35(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45faae, i8* %BRANCH_TAKEN, i64 903, i64 6, i64 6)
  store %struct.Memory* %call_45faae, %struct.Memory** %MEMORY

  %loadBr_45faae = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45faae = icmp eq i8 %loadBr_45faae, 1
  br i1 %cmpBr_45faae, label %block_.L_45fe35, label %block_45fab4

block_45fab4:
  ; Code: movl 0xb54ce4, %eax	 RIP: 45fab4	 Bytes: 7
  %loadMem_45fab4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fab4 = call %struct.Memory* @routine_movl_0xb54ce4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fab4)
  store %struct.Memory* %call_45fab4, %struct.Memory** %MEMORY

  ; Code: cmpl 0xafd960, %eax	 RIP: 45fabb	 Bytes: 7
  %loadMem_45fabb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fabb = call %struct.Memory* @routine_cmpl_0xafd960___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fabb)
  store %struct.Memory* %call_45fabb, %struct.Memory** %MEMORY

  ; Code: jle .L_45fad5	 RIP: 45fac2	 Bytes: 6
  %loadMem_45fac2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fac2 = call %struct.Memory* @routine_jle_.L_45fad5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fac2, i8* %BRANCH_TAKEN, i64 19, i64 6, i64 6)
  store %struct.Memory* %call_45fac2, %struct.Memory** %MEMORY

  %loadBr_45fac2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45fac2 = icmp eq i8 %loadBr_45fac2, 1
  br i1 %cmpBr_45fac2, label %block_.L_45fad5, label %block_45fac8

block_45fac8:
  ; Code: cmpl $0x0, -0x308(%rbp)	 RIP: 45fac8	 Bytes: 7
  %loadMem_45fac8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fac8 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x308__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fac8)
  store %struct.Memory* %call_45fac8, %struct.Memory** %MEMORY

  ; Code: jne .L_45fe35	 RIP: 45facf	 Bytes: 6
  %loadMem_45facf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45facf = call %struct.Memory* @routine_jne_.L_45fe35(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45facf, i8* %BRANCH_TAKEN, i64 870, i64 6, i64 6)
  store %struct.Memory* %call_45facf, %struct.Memory** %MEMORY

  %loadBr_45facf = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45facf = icmp eq i8 %loadBr_45facf, 1
  br i1 %cmpBr_45facf, label %block_.L_45fe35, label %block_.L_45fad5

  ; Code: .L_45fad5:	 RIP: 45fad5	 Bytes: 0
block_.L_45fad5:

  ; Code: movl $0x2, -0x554(%rbp)	 RIP: 45fad5	 Bytes: 10
  %loadMem_45fad5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fad5 = call %struct.Memory* @routine_movl__0x2__MINUS0x554__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fad5)
  store %struct.Memory* %call_45fad5, %struct.Memory** %MEMORY

  ; Code: movl 0xb54ce4, %eax	 RIP: 45fadf	 Bytes: 7
  %loadMem_45fadf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fadf = call %struct.Memory* @routine_movl_0xb54ce4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fadf)
  store %struct.Memory* %call_45fadf, %struct.Memory** %MEMORY

  ; Code: cmpl 0xb8af28, %eax	 RIP: 45fae6	 Bytes: 7
  %loadMem_45fae6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fae6 = call %struct.Memory* @routine_cmpl_0xb8af28___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fae6)
  store %struct.Memory* %call_45fae6, %struct.Memory** %MEMORY

  ; Code: jg .L_45fafd	 RIP: 45faed	 Bytes: 6
  %loadMem_45faed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45faed = call %struct.Memory* @routine_jg_.L_45fafd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45faed, i8* %BRANCH_TAKEN, i64 16, i64 6, i64 6)
  store %struct.Memory* %call_45faed, %struct.Memory** %MEMORY

  %loadBr_45faed = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45faed = icmp eq i8 %loadBr_45faed, 1
  br i1 %cmpBr_45faed, label %block_.L_45fafd, label %block_45faf3

block_45faf3:
  ; Code: movl $0x3, -0x554(%rbp)	 RIP: 45faf3	 Bytes: 10
  %loadMem_45faf3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45faf3 = call %struct.Memory* @routine_movl__0x3__MINUS0x554__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45faf3)
  store %struct.Memory* %call_45faf3, %struct.Memory** %MEMORY

  ; Code: .L_45fafd:	 RIP: 45fafd	 Bytes: 0
  br label %block_.L_45fafd
block_.L_45fafd:

  ; Code: leaq -0x4e4(%rbp), %rsi	 RIP: 45fafd	 Bytes: 7
  %loadMem_45fafd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fafd = call %struct.Memory* @routine_leaq_MINUS0x4e4__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fafd)
  store %struct.Memory* %call_45fafd, %struct.Memory** %MEMORY

  ; Code: leaq -0x550(%rbp), %rdx	 RIP: 45fb04	 Bytes: 7
  %loadMem_45fb04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fb04 = call %struct.Memory* @routine_leaq_MINUS0x550__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fb04)
  store %struct.Memory* %call_45fb04, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %edi	 RIP: 45fb0b	 Bytes: 3
  %loadMem_45fb0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fb0b = call %struct.Memory* @routine_movl_MINUS0x30__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fb0b)
  store %struct.Memory* %call_45fb0b, %struct.Memory** %MEMORY

  ; Code: movl -0x554(%rbp), %ecx	 RIP: 45fb0e	 Bytes: 6
  %loadMem_45fb0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fb0e = call %struct.Memory* @routine_movl_MINUS0x554__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fb0e)
  store %struct.Memory* %call_45fb0e, %struct.Memory** %MEMORY

  ; Code: callq .find_superstring_liberties	 RIP: 45fb14	 Bytes: 5
  %loadMem1_45fb14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_45fb14 = call %struct.Memory* @routine_callq_.find_superstring_liberties(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_45fb14, i64 116124, i64 5, i64 5)
  store %struct.Memory* %call1_45fb14, %struct.Memory** %MEMORY

  %loadMem2_45fb14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45fb14 = load i64, i64* %3
  %call2_45fb14 = call %struct.Memory* @sub_47c0b0.find_superstring_liberties(%struct.State* %0, i64  %loadPC_45fb14, %struct.Memory* %loadMem2_45fb14)
  store %struct.Memory* %call2_45fb14, %struct.Memory** %MEMORY

  ; Code: cmpl $0x5, -0x4e4(%rbp)	 RIP: 45fb19	 Bytes: 7
  %loadMem_45fb19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fb19 = call %struct.Memory* @routine_cmpl__0x5__MINUS0x4e4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fb19)
  store %struct.Memory* %call_45fb19, %struct.Memory** %MEMORY

  ; Code: jg .L_45fe30	 RIP: 45fb20	 Bytes: 6
  %loadMem_45fb20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fb20 = call %struct.Memory* @routine_jg_.L_45fe30(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fb20, i8* %BRANCH_TAKEN, i64 784, i64 6, i64 6)
  store %struct.Memory* %call_45fb20, %struct.Memory** %MEMORY

  %loadBr_45fb20 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45fb20 = icmp eq i8 %loadBr_45fb20, 1
  br i1 %cmpBr_45fb20, label %block_.L_45fe30, label %block_45fb26

block_45fb26:
  ; Code: movl $0x0, -0x304(%rbp)	 RIP: 45fb26	 Bytes: 10
  %loadMem_45fb26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fb26 = call %struct.Memory* @routine_movl__0x0__MINUS0x304__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fb26)
  store %struct.Memory* %call_45fb26, %struct.Memory** %MEMORY

  ; Code: .L_45fb30:	 RIP: 45fb30	 Bytes: 0
  br label %block_.L_45fb30
block_.L_45fb30:

  ; Code: movl -0x304(%rbp), %eax	 RIP: 45fb30	 Bytes: 6
  %loadMem_45fb30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fb30 = call %struct.Memory* @routine_movl_MINUS0x304__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fb30)
  store %struct.Memory* %call_45fb30, %struct.Memory** %MEMORY

  ; Code: cmpl -0x4e4(%rbp), %eax	 RIP: 45fb36	 Bytes: 6
  %loadMem_45fb36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fb36 = call %struct.Memory* @routine_cmpl_MINUS0x4e4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fb36)
  store %struct.Memory* %call_45fb36, %struct.Memory** %MEMORY

  ; Code: jge .L_45fe2b	 RIP: 45fb3c	 Bytes: 6
  %loadMem_45fb3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fb3c = call %struct.Memory* @routine_jge_.L_45fe2b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fb3c, i8* %BRANCH_TAKEN, i64 751, i64 6, i64 6)
  store %struct.Memory* %call_45fb3c, %struct.Memory** %MEMORY

  %loadBr_45fb3c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45fb3c = icmp eq i8 %loadBr_45fb3c, 1
  br i1 %cmpBr_45fb3c, label %block_.L_45fe2b, label %block_45fb42

block_45fb42:
  ; Code: movslq -0x304(%rbp), %rax	 RIP: 45fb42	 Bytes: 7
  %loadMem_45fb42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fb42 = call %struct.Memory* @routine_movslq_MINUS0x304__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fb42)
  store %struct.Memory* %call_45fb42, %struct.Memory** %MEMORY

  ; Code: movl -0x550(%rbp,%rax,4), %ecx	 RIP: 45fb49	 Bytes: 7
  %loadMem_45fb49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fb49 = call %struct.Memory* @routine_movl_MINUS0x550__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fb49)
  store %struct.Memory* %call_45fb49, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x558(%rbp)	 RIP: 45fb50	 Bytes: 6
  %loadMem_45fb50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fb50 = call %struct.Memory* @routine_movl__ecx__MINUS0x558__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fb50)
  store %struct.Memory* %call_45fb50, %struct.Memory** %MEMORY

  ; Code: movl -0x558(%rbp), %edi	 RIP: 45fb56	 Bytes: 6
  %loadMem_45fb56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fb56 = call %struct.Memory* @routine_movl_MINUS0x558__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fb56)
  store %struct.Memory* %call_45fb56, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %esi	 RIP: 45fb5c	 Bytes: 3
  %loadMem_45fb5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fb5c = call %struct.Memory* @routine_movl_MINUS0x30__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fb5c)
  store %struct.Memory* %call_45fb5c, %struct.Memory** %MEMORY

  ; Code: callq .liberty_of_string	 RIP: 45fb5f	 Bytes: 5
  %loadMem1_45fb5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_45fb5f = call %struct.Memory* @routine_callq_.liberty_of_string(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_45fb5f, i64 -307375, i64 5, i64 5)
  store %struct.Memory* %call1_45fb5f, %struct.Memory** %MEMORY

  %loadMem2_45fb5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45fb5f = load i64, i64* %3
  %call2_45fb5f = call %struct.Memory* @sub_414ab0.liberty_of_string(%struct.State* %0, i64  %loadPC_45fb5f, %struct.Memory* %loadMem2_45fb5f)
  store %struct.Memory* %call2_45fb5f, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 45fb64	 Bytes: 3
  %loadMem_45fb64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fb64 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fb64)
  store %struct.Memory* %call_45fb64, %struct.Memory** %MEMORY

  ; Code: je .L_45fb72	 RIP: 45fb67	 Bytes: 6
  %loadMem_45fb67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fb67 = call %struct.Memory* @routine_je_.L_45fb72(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fb67, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_45fb67, %struct.Memory** %MEMORY

  %loadBr_45fb67 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45fb67 = icmp eq i8 %loadBr_45fb67, 1
  br i1 %cmpBr_45fb67, label %block_.L_45fb72, label %block_45fb6d

block_45fb6d:
  ; Code: jmpq .L_45fe17	 RIP: 45fb6d	 Bytes: 5
  %loadMem_45fb6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fb6d = call %struct.Memory* @routine_jmpq_.L_45fe17(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fb6d, i64 682, i64 5)
  store %struct.Memory* %call_45fb6d, %struct.Memory** %MEMORY

  br label %block_.L_45fe17

  ; Code: .L_45fb72:	 RIP: 45fb72	 Bytes: 0
block_.L_45fb72:

  ; Code: movq $0x57fe66, %rdx	 RIP: 45fb72	 Bytes: 10
  %loadMem_45fb72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fb72 = call %struct.Memory* @routine_movq__0x57fe66___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fb72)
  store %struct.Memory* %call_45fb72, %struct.Memory** %MEMORY

  ; Code: movl -0x558(%rbp), %edi	 RIP: 45fb7c	 Bytes: 6
  %loadMem_45fb7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fb7c = call %struct.Memory* @routine_movl_MINUS0x558__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fb7c)
  store %struct.Memory* %call_45fb7c, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %esi	 RIP: 45fb82	 Bytes: 3
  %loadMem_45fb82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fb82 = call %struct.Memory* @routine_movl_MINUS0x48__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fb82)
  store %struct.Memory* %call_45fb82, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %ecx	 RIP: 45fb85	 Bytes: 3
  %loadMem_45fb85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fb85 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fb85)
  store %struct.Memory* %call_45fb85, %struct.Memory** %MEMORY

  ; Code: movl -0x3c(%rbp), %r8d	 RIP: 45fb88	 Bytes: 4
  %loadMem_45fb88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fb88 = call %struct.Memory* @routine_movl_MINUS0x3c__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fb88)
  store %struct.Memory* %call_45fb88, %struct.Memory** %MEMORY

  ; Code: movl -0x40(%rbp), %r9d	 RIP: 45fb8c	 Bytes: 4
  %loadMem_45fb8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fb8c = call %struct.Memory* @routine_movl_MINUS0x40__rbp____r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fb8c)
  store %struct.Memory* %call_45fb8c, %struct.Memory** %MEMORY

  ; Code: callq .trymove	 RIP: 45fb90	 Bytes: 5
  %loadMem1_45fb90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_45fb90 = call %struct.Memory* @routine_callq_.trymove(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_45fb90, i64 -355680, i64 5, i64 5)
  store %struct.Memory* %call1_45fb90, %struct.Memory** %MEMORY

  %loadMem2_45fb90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45fb90 = load i64, i64* %3
  %call2_45fb90 = call %struct.Memory* @sub_408e30.trymove(%struct.State* %0, i64  %loadPC_45fb90, %struct.Memory* %loadMem2_45fb90)
  store %struct.Memory* %call2_45fb90, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 45fb95	 Bytes: 3
  %loadMem_45fb95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fb95 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fb95)
  store %struct.Memory* %call_45fb95, %struct.Memory** %MEMORY

  ; Code: je .L_45fe12	 RIP: 45fb98	 Bytes: 6
  %loadMem_45fb98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fb98 = call %struct.Memory* @routine_je_.L_45fe12(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fb98, i8* %BRANCH_TAKEN, i64 634, i64 6, i64 6)
  store %struct.Memory* %call_45fb98, %struct.Memory** %MEMORY

  %loadBr_45fb98 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45fb98 = icmp eq i8 %loadBr_45fb98, 1
  br i1 %cmpBr_45fb98, label %block_.L_45fe12, label %block_45fb9e

block_45fb9e:
  ; Code: movl -0x558(%rbp), %edi	 RIP: 45fb9e	 Bytes: 6
  %loadMem_45fb9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fb9e = call %struct.Memory* @routine_movl_MINUS0x558__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fb9e)
  store %struct.Memory* %call_45fb9e, %struct.Memory** %MEMORY

  ; Code: callq .countlib	 RIP: 45fba4	 Bytes: 5
  %loadMem1_45fba4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_45fba4 = call %struct.Memory* @routine_callq_.countlib(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_45fba4, i64 -328740, i64 5, i64 5)
  store %struct.Memory* %call1_45fba4, %struct.Memory** %MEMORY

  %loadMem2_45fba4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45fba4 = load i64, i64* %3
  %call2_45fba4 = call %struct.Memory* @sub_40f780.countlib(%struct.State* %0, i64  %loadPC_45fba4, %struct.Memory* %loadMem2_45fba4)
  store %struct.Memory* %call2_45fba4, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, %eax	 RIP: 45fba9	 Bytes: 3
  %loadMem_45fba9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fba9 = call %struct.Memory* @routine_cmpl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fba9)
  store %struct.Memory* %call_45fba9, %struct.Memory** %MEMORY

  ; Code: jne .L_45fd15	 RIP: 45fbac	 Bytes: 6
  %loadMem_45fbac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fbac = call %struct.Memory* @routine_jne_.L_45fd15(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fbac, i8* %BRANCH_TAKEN, i64 361, i64 6, i64 6)
  store %struct.Memory* %call_45fbac, %struct.Memory** %MEMORY

  %loadBr_45fbac = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45fbac = icmp eq i8 %loadBr_45fbac, 1
  br i1 %cmpBr_45fbac, label %block_.L_45fd15, label %block_45fbb2

block_45fbb2:
  ; Code: movl $0x1, %esi	 RIP: 45fbb2	 Bytes: 5
  %loadMem_45fbb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fbb2 = call %struct.Memory* @routine_movl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fbb2)
  store %struct.Memory* %call_45fbb2, %struct.Memory** %MEMORY

  ; Code: leaq -0x50(%rbp), %rdx	 RIP: 45fbb7	 Bytes: 4
  %loadMem_45fbb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fbb7 = call %struct.Memory* @routine_leaq_MINUS0x50__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fbb7)
  store %struct.Memory* %call_45fbb7, %struct.Memory** %MEMORY

  ; Code: movl -0x558(%rbp), %edi	 RIP: 45fbbb	 Bytes: 6
  %loadMem_45fbbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fbbb = call %struct.Memory* @routine_movl_MINUS0x558__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fbbb)
  store %struct.Memory* %call_45fbbb, %struct.Memory** %MEMORY

  ; Code: callq .findlib	 RIP: 45fbc1	 Bytes: 5
  %loadMem1_45fbc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_45fbc1 = call %struct.Memory* @routine_callq_.findlib(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_45fbc1, i64 -328577, i64 5, i64 5)
  store %struct.Memory* %call1_45fbc1, %struct.Memory** %MEMORY

  %loadMem2_45fbc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45fbc1 = load i64, i64* %3
  %call2_45fbc1 = call %struct.Memory* @sub_40f840.findlib(%struct.State* %0, i64  %loadPC_45fbc1, %struct.Memory* %loadMem2_45fbc1)
  store %struct.Memory* %call2_45fbc1, %struct.Memory** %MEMORY

  ; Code: movl $0x2, %edx	 RIP: 45fbc6	 Bytes: 5
  %loadMem_45fbc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fbc6 = call %struct.Memory* @routine_movl__0x2___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fbc6)
  store %struct.Memory* %call_45fbc6, %struct.Memory** %MEMORY

  ; Code: xorl %esi, %esi	 RIP: 45fbcb	 Bytes: 2
  %loadMem_45fbcb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fbcb = call %struct.Memory* @routine_xorl__esi___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fbcb)
  store %struct.Memory* %call_45fbcb, %struct.Memory** %MEMORY

  ; Code: movl %esi, %ecx	 RIP: 45fbcd	 Bytes: 2
  %loadMem_45fbcd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fbcd = call %struct.Memory* @routine_movl__esi___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fbcd)
  store %struct.Memory* %call_45fbcd, %struct.Memory** %MEMORY

  ; Code: movl -0x50(%rbp), %edi	 RIP: 45fbcf	 Bytes: 3
  %loadMem_45fbcf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fbcf = call %struct.Memory* @routine_movl_MINUS0x50__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fbcf)
  store %struct.Memory* %call_45fbcf, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %esi	 RIP: 45fbd2	 Bytes: 3
  %loadMem_45fbd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fbd2 = call %struct.Memory* @routine_movl_MINUS0x48__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fbd2)
  store %struct.Memory* %call_45fbd2, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x5e0(%rbp)	 RIP: 45fbd5	 Bytes: 6
  %loadMem_45fbd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fbd5 = call %struct.Memory* @routine_movl__eax__MINUS0x5e0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fbd5)
  store %struct.Memory* %call_45fbd5, %struct.Memory** %MEMORY

  ; Code: callq .approxlib	 RIP: 45fbdb	 Bytes: 5
  %loadMem1_45fbdb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_45fbdb = call %struct.Memory* @routine_callq_.approxlib(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_45fbdb, i64 -321067, i64 5, i64 5)
  store %struct.Memory* %call1_45fbdb, %struct.Memory** %MEMORY

  %loadMem2_45fbdb = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45fbdb = load i64, i64* %3
  %call2_45fbdb = call %struct.Memory* @sub_4115b0.approxlib(%struct.State* %0, i64  %loadPC_45fbdb, %struct.Memory* %loadMem2_45fbdb)
  store %struct.Memory* %call2_45fbdb, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, %eax	 RIP: 45fbe0	 Bytes: 3
  %loadMem_45fbe0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fbe0 = call %struct.Memory* @routine_cmpl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fbe0)
  store %struct.Memory* %call_45fbe0, %struct.Memory** %MEMORY

  ; Code: jle .L_45fd0b	 RIP: 45fbe3	 Bytes: 6
  %loadMem_45fbe3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fbe3 = call %struct.Memory* @routine_jle_.L_45fd0b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fbe3, i8* %BRANCH_TAKEN, i64 296, i64 6, i64 6)
  store %struct.Memory* %call_45fbe3, %struct.Memory** %MEMORY

  %loadBr_45fbe3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45fbe3 = icmp eq i8 %loadBr_45fbe3, 1
  br i1 %cmpBr_45fbe3, label %block_.L_45fd0b, label %block_45fbe9

block_45fbe9:
  ; Code: callq .popgo	 RIP: 45fbe9	 Bytes: 5
  %loadMem1_45fbe9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_45fbe9 = call %struct.Memory* @routine_callq_.popgo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_45fbe9, i64 -335497, i64 5, i64 5)
  store %struct.Memory* %call1_45fbe9, %struct.Memory** %MEMORY

  %loadMem2_45fbe9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45fbe9 = load i64, i64* %3
  %call2_45fbe9 = call %struct.Memory* @sub_40dd60.popgo(%struct.State* %0, i64  %loadPC_45fbe9, %struct.Memory* %loadMem2_45fbe9)
  store %struct.Memory* %call2_45fbe9, %struct.Memory** %MEMORY

  ; Code: movq $0x57fe70, %rdx	 RIP: 45fbee	 Bytes: 10
  %loadMem_45fbee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fbee = call %struct.Memory* @routine_movq__0x57fe70___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fbee)
  store %struct.Memory* %call_45fbee, %struct.Memory** %MEMORY

  ; Code: movl -0x50(%rbp), %edi	 RIP: 45fbf8	 Bytes: 3
  %loadMem_45fbf8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fbf8 = call %struct.Memory* @routine_movl_MINUS0x50__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fbf8)
  store %struct.Memory* %call_45fbf8, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %esi	 RIP: 45fbfb	 Bytes: 3
  %loadMem_45fbfb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fbfb = call %struct.Memory* @routine_movl_MINUS0x48__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fbfb)
  store %struct.Memory* %call_45fbfb, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %ecx	 RIP: 45fbfe	 Bytes: 3
  %loadMem_45fbfe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fbfe = call %struct.Memory* @routine_movl_MINUS0x30__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fbfe)
  store %struct.Memory* %call_45fbfe, %struct.Memory** %MEMORY

  ; Code: movl -0x3c(%rbp), %r8d	 RIP: 45fc01	 Bytes: 4
  %loadMem_45fc01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fc01 = call %struct.Memory* @routine_movl_MINUS0x3c__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fc01)
  store %struct.Memory* %call_45fc01, %struct.Memory** %MEMORY

  ; Code: movl -0x40(%rbp), %r9d	 RIP: 45fc05	 Bytes: 4
  %loadMem_45fc05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fc05 = call %struct.Memory* @routine_movl_MINUS0x40__rbp____r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fc05)
  store %struct.Memory* %call_45fc05, %struct.Memory** %MEMORY

  ; Code: callq .trymove	 RIP: 45fc09	 Bytes: 5
  %loadMem1_45fc09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_45fc09 = call %struct.Memory* @routine_callq_.trymove(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_45fc09, i64 -355801, i64 5, i64 5)
  store %struct.Memory* %call1_45fc09, %struct.Memory** %MEMORY

  %loadMem2_45fc09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45fc09 = load i64, i64* %3
  %call2_45fc09 = call %struct.Memory* @sub_408e30.trymove(%struct.State* %0, i64  %loadPC_45fc09, %struct.Memory* %loadMem2_45fc09)
  store %struct.Memory* %call2_45fc09, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 45fc0e	 Bytes: 3
  %loadMem_45fc0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fc0e = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fc0e)
  store %struct.Memory* %call_45fc0e, %struct.Memory** %MEMORY

  ; Code: je .L_45fd06	 RIP: 45fc11	 Bytes: 6
  %loadMem_45fc11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fc11 = call %struct.Memory* @routine_je_.L_45fd06(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fc11, i8* %BRANCH_TAKEN, i64 245, i64 6, i64 6)
  store %struct.Memory* %call_45fc11, %struct.Memory** %MEMORY

  %loadBr_45fc11 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45fc11 = icmp eq i8 %loadBr_45fc11, 1
  br i1 %cmpBr_45fc11, label %block_.L_45fd06, label %block_45fc17

block_45fc17:
  ; Code: xorl %eax, %eax	 RIP: 45fc17	 Bytes: 2
  %loadMem_45fc17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fc17 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fc17)
  store %struct.Memory* %call_45fc17, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 45fc19	 Bytes: 2
  %loadMem_45fc19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fc19 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fc19)
  store %struct.Memory* %call_45fc19, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %edi	 RIP: 45fc1b	 Bytes: 3
  %loadMem_45fc1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fc1b = call %struct.Memory* @routine_movl_MINUS0x30__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fc1b)
  store %struct.Memory* %call_45fc1b, %struct.Memory** %MEMORY

  ; Code: movl -0x3c(%rbp), %edx	 RIP: 45fc1e	 Bytes: 3
  %loadMem_45fc1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fc1e = call %struct.Memory* @routine_movl_MINUS0x3c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fc1e)
  store %struct.Memory* %call_45fc1e, %struct.Memory** %MEMORY

  ; Code: movl -0x40(%rbp), %ecx	 RIP: 45fc21	 Bytes: 3
  %loadMem_45fc21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fc21 = call %struct.Memory* @routine_movl_MINUS0x40__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fc21)
  store %struct.Memory* %call_45fc21, %struct.Memory** %MEMORY

  ; Code: callq .do_find_defense	 RIP: 45fc24	 Bytes: 5
  %loadMem1_45fc24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_45fc24 = call %struct.Memory* @routine_callq_.do_find_defense(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_45fc24, i64 14844, i64 5, i64 5)
  store %struct.Memory* %call1_45fc24, %struct.Memory** %MEMORY

  %loadMem2_45fc24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45fc24 = load i64, i64* %3
  %call2_45fc24 = call %struct.Memory* @sub_463620.do_find_defense(%struct.State* %0, i64  %loadPC_45fc24, %struct.Memory* %loadMem2_45fc24)
  store %struct.Memory* %call2_45fc24, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x300(%rbp)	 RIP: 45fc29	 Bytes: 6
  %loadMem_45fc29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fc29 = call %struct.Memory* @routine_movl__eax__MINUS0x300__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fc29)
  store %struct.Memory* %call_45fc29, %struct.Memory** %MEMORY

  ; Code: cmpl $0x5, -0x300(%rbp)	 RIP: 45fc2f	 Bytes: 7
  %loadMem_45fc2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fc2f = call %struct.Memory* @routine_cmpl__0x5__MINUS0x300__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fc2f)
  store %struct.Memory* %call_45fc2f, %struct.Memory** %MEMORY

  ; Code: je .L_45fcfc	 RIP: 45fc36	 Bytes: 6
  %loadMem_45fc36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fc36 = call %struct.Memory* @routine_je_.L_45fcfc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fc36, i8* %BRANCH_TAKEN, i64 198, i64 6, i64 6)
  store %struct.Memory* %call_45fc36, %struct.Memory** %MEMORY

  %loadBr_45fc36 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45fc36 = icmp eq i8 %loadBr_45fc36, 1
  br i1 %cmpBr_45fc36, label %block_.L_45fcfc, label %block_45fc3c

block_45fc3c:
  ; Code: xorl %eax, %eax	 RIP: 45fc3c	 Bytes: 2
  %loadMem_45fc3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fc3c = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fc3c)
  store %struct.Memory* %call_45fc3c, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 45fc3e	 Bytes: 2
  %loadMem_45fc3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fc3e = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fc3e)
  store %struct.Memory* %call_45fc3e, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %edi	 RIP: 45fc40	 Bytes: 3
  %loadMem_45fc40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fc40 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fc40)
  store %struct.Memory* %call_45fc40, %struct.Memory** %MEMORY

  ; Code: movl -0x3c(%rbp), %edx	 RIP: 45fc43	 Bytes: 3
  %loadMem_45fc43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fc43 = call %struct.Memory* @routine_movl_MINUS0x3c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fc43)
  store %struct.Memory* %call_45fc43, %struct.Memory** %MEMORY

  ; Code: movl -0x40(%rbp), %ecx	 RIP: 45fc46	 Bytes: 3
  %loadMem_45fc46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fc46 = call %struct.Memory* @routine_movl_MINUS0x40__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fc46)
  store %struct.Memory* %call_45fc46, %struct.Memory** %MEMORY

  ; Code: callq .do_attack	 RIP: 45fc49	 Bytes: 5
  %loadMem1_45fc49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_45fc49 = call %struct.Memory* @routine_callq_.do_attack(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_45fc49, i64 -8041, i64 5, i64 5)
  store %struct.Memory* %call1_45fc49, %struct.Memory** %MEMORY

  %loadMem2_45fc49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45fc49 = load i64, i64* %3
  %call2_45fc49 = call %struct.Memory* @sub_45dce0.do_attack(%struct.State* %0, i64  %loadPC_45fc49, %struct.Memory* %loadMem2_45fc49)
  store %struct.Memory* %call2_45fc49, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 45fc4e	 Bytes: 3
  %loadMem_45fc4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fc4e = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fc4e)
  store %struct.Memory* %call_45fc4e, %struct.Memory** %MEMORY

  ; Code: je .L_45fcfc	 RIP: 45fc51	 Bytes: 6
  %loadMem_45fc51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fc51 = call %struct.Memory* @routine_je_.L_45fcfc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fc51, i8* %BRANCH_TAKEN, i64 171, i64 6, i64 6)
  store %struct.Memory* %call_45fc51, %struct.Memory** %MEMORY

  %loadBr_45fc51 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45fc51 = icmp eq i8 %loadBr_45fc51, 1
  br i1 %cmpBr_45fc51, label %block_.L_45fcfc, label %block_45fc57

block_45fc57:
  ; Code: callq .popgo	 RIP: 45fc57	 Bytes: 5
  %loadMem1_45fc57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_45fc57 = call %struct.Memory* @routine_callq_.popgo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_45fc57, i64 -335607, i64 5, i64 5)
  store %struct.Memory* %call1_45fc57, %struct.Memory** %MEMORY

  %loadMem2_45fc57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45fc57 = load i64, i64* %3
  %call2_45fc57 = call %struct.Memory* @sub_40dd60.popgo(%struct.State* %0, i64  %loadPC_45fc57, %struct.Memory* %loadMem2_45fc57)
  store %struct.Memory* %call2_45fc57, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0x300(%rbp)	 RIP: 45fc5c	 Bytes: 7
  %loadMem_45fc5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fc5c = call %struct.Memory* @routine_cmpl__0x0__MINUS0x300__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fc5c)
  store %struct.Memory* %call_45fc5c, %struct.Memory** %MEMORY

  ; Code: jne .L_45fcbc	 RIP: 45fc63	 Bytes: 6
  %loadMem_45fc63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fc63 = call %struct.Memory* @routine_jne_.L_45fcbc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fc63, i8* %BRANCH_TAKEN, i64 89, i64 6, i64 6)
  store %struct.Memory* %call_45fc63, %struct.Memory** %MEMORY

  %loadBr_45fc63 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45fc63 = icmp eq i8 %loadBr_45fc63, 1
  br i1 %cmpBr_45fc63, label %block_.L_45fcbc, label %block_45fc69

block_45fc69:
  ; Code: cmpq $0x0, -0x38(%rbp)	 RIP: 45fc69	 Bytes: 5
  %loadMem_45fc69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fc69 = call %struct.Memory* @routine_cmpq__0x0__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fc69)
  store %struct.Memory* %call_45fc69, %struct.Memory** %MEMORY

  ; Code: je .L_45fc7d	 RIP: 45fc6e	 Bytes: 6
  %loadMem_45fc6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fc6e = call %struct.Memory* @routine_je_.L_45fc7d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fc6e, i8* %BRANCH_TAKEN, i64 15, i64 6, i64 6)
  store %struct.Memory* %call_45fc6e, %struct.Memory** %MEMORY

  %loadBr_45fc6e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45fc6e = icmp eq i8 %loadBr_45fc6e, 1
  br i1 %cmpBr_45fc6e, label %block_.L_45fc7d, label %block_45fc74

block_45fc74:
  ; Code: movl -0x50(%rbp), %eax	 RIP: 45fc74	 Bytes: 3
  %loadMem_45fc74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fc74 = call %struct.Memory* @routine_movl_MINUS0x50__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fc74)
  store %struct.Memory* %call_45fc74, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rcx	 RIP: 45fc77	 Bytes: 4
  %loadMem_45fc77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fc77 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fc77)
  store %struct.Memory* %call_45fc77, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx)	 RIP: 45fc7b	 Bytes: 2
  %loadMem_45fc7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fc7b = call %struct.Memory* @routine_movl__eax____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fc7b)
  store %struct.Memory* %call_45fc7b, %struct.Memory** %MEMORY

  ; Code: .L_45fc7d:	 RIP: 45fc7d	 Bytes: 0
  br label %block_.L_45fc7d
block_.L_45fc7d:

  ; Code: cmpq $0x0, 0xab0ef8	 RIP: 45fc7d	 Bytes: 9
  %loadMem_45fc7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fc7d = call %struct.Memory* @routine_cmpq__0x0__0xab0ef8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fc7d)
  store %struct.Memory* %call_45fc7d, %struct.Memory** %MEMORY

  ; Code: je .L_45fcb0	 RIP: 45fc86	 Bytes: 6
  %loadMem_45fc86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fc86 = call %struct.Memory* @routine_je_.L_45fcb0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fc86, i8* %BRANCH_TAKEN, i64 42, i64 6, i64 6)
  store %struct.Memory* %call_45fc86, %struct.Memory** %MEMORY

  %loadBr_45fc86 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45fc86 = icmp eq i8 %loadBr_45fc86, 1
  br i1 %cmpBr_45fc86, label %block_.L_45fcb0, label %block_45fc8c

block_45fc8c:
  ; Code: movl $0x5, %ecx	 RIP: 45fc8c	 Bytes: 5
  %loadMem_45fc8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fc8c = call %struct.Memory* @routine_movl__0x5___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fc8c)
  store %struct.Memory* %call_45fc8c, %struct.Memory** %MEMORY

  ; Code: movq $0x57e5fb, %r8	 RIP: 45fc91	 Bytes: 10
  %loadMem_45fc91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fc91 = call %struct.Memory* @routine_movq__0x57e5fb___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fc91)
  store %struct.Memory* %call_45fc91, %struct.Memory** %MEMORY

  ; Code: movq -0x4b0(%rbp), %rdi	 RIP: 45fc9b	 Bytes: 7
  %loadMem_45fc9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fc9b = call %struct.Memory* @routine_movq_MINUS0x4b0__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fc9b)
  store %struct.Memory* %call_45fc9b, %struct.Memory** %MEMORY

  ; Code: movl -0x4b4(%rbp), %esi	 RIP: 45fca2	 Bytes: 6
  %loadMem_45fca2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fca2 = call %struct.Memory* @routine_movl_MINUS0x4b4__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fca2)
  store %struct.Memory* %call_45fca2, %struct.Memory** %MEMORY

  ; Code: movl -0x50(%rbp), %edx	 RIP: 45fca8	 Bytes: 3
  %loadMem_45fca8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fca8 = call %struct.Memory* @routine_movl_MINUS0x50__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fca8)
  store %struct.Memory* %call_45fca8, %struct.Memory** %MEMORY

  ; Code: callq .sgf_trace	 RIP: 45fcab	 Bytes: 5
  %loadMem1_45fcab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_45fcab = call %struct.Memory* @routine_callq_.sgf_trace(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_45fcab, i64 -294123, i64 5, i64 5)
  store %struct.Memory* %call1_45fcab, %struct.Memory** %MEMORY

  %loadMem2_45fcab = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45fcab = load i64, i64* %3
  %call2_45fcab = call %struct.Memory* @sub_417fc0.sgf_trace(%struct.State* %0, i64  %loadPC_45fcab, %struct.Memory* %loadMem2_45fcab)
  store %struct.Memory* %call2_45fcab, %struct.Memory** %MEMORY

  ; Code: .L_45fcb0:	 RIP: 45fcb0	 Bytes: 0
  br label %block_.L_45fcb0
block_.L_45fcb0:

  ; Code: movl $0x5, -0x2c(%rbp)	 RIP: 45fcb0	 Bytes: 7
  %loadMem_45fcb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fcb0 = call %struct.Memory* @routine_movl__0x5__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fcb0)
  store %struct.Memory* %call_45fcb0, %struct.Memory** %MEMORY

  ; Code: jmpq .L_45ff1e	 RIP: 45fcb7	 Bytes: 5
  %loadMem_45fcb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fcb7 = call %struct.Memory* @routine_jmpq_.L_45ff1e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fcb7, i64 615, i64 5)
  store %struct.Memory* %call_45fcb7, %struct.Memory** %MEMORY

  br label %block_.L_45ff1e

  ; Code: .L_45fcbc:	 RIP: 45fcbc	 Bytes: 0
block_.L_45fcbc:

  ; Code: movl $0x5, %eax	 RIP: 45fcbc	 Bytes: 5
  %loadMem_45fcbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fcbc = call %struct.Memory* @routine_movl__0x5___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fcbc)
  store %struct.Memory* %call_45fcbc, %struct.Memory** %MEMORY

  ; Code: subl -0x300(%rbp), %eax	 RIP: 45fcc1	 Bytes: 6
  %loadMem_45fcc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fcc1 = call %struct.Memory* @routine_subl_MINUS0x300__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fcc1)
  store %struct.Memory* %call_45fcc1, %struct.Memory** %MEMORY

  ; Code: cmpl -0x2f8(%rbp), %eax	 RIP: 45fcc7	 Bytes: 6
  %loadMem_45fcc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fcc7 = call %struct.Memory* @routine_cmpl_MINUS0x2f8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fcc7)
  store %struct.Memory* %call_45fcc7, %struct.Memory** %MEMORY

  ; Code: jle .L_45fced	 RIP: 45fccd	 Bytes: 6
  %loadMem_45fccd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fccd = call %struct.Memory* @routine_jle_.L_45fced(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fccd, i8* %BRANCH_TAKEN, i64 32, i64 6, i64 6)
  store %struct.Memory* %call_45fccd, %struct.Memory** %MEMORY

  %loadBr_45fccd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45fccd = icmp eq i8 %loadBr_45fccd, 1
  br i1 %cmpBr_45fccd, label %block_.L_45fced, label %block_45fcd3

block_45fcd3:
  ; Code: movl $0x5, %eax	 RIP: 45fcd3	 Bytes: 5
  %loadMem_45fcd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fcd3 = call %struct.Memory* @routine_movl__0x5___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fcd3)
  store %struct.Memory* %call_45fcd3, %struct.Memory** %MEMORY

  ; Code: movl -0x50(%rbp), %ecx	 RIP: 45fcd8	 Bytes: 3
  %loadMem_45fcd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fcd8 = call %struct.Memory* @routine_movl_MINUS0x50__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fcd8)
  store %struct.Memory* %call_45fcd8, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x2f4(%rbp)	 RIP: 45fcdb	 Bytes: 6
  %loadMem_45fcdb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fcdb = call %struct.Memory* @routine_movl__ecx__MINUS0x2f4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fcdb)
  store %struct.Memory* %call_45fcdb, %struct.Memory** %MEMORY

  ; Code: subl -0x300(%rbp), %eax	 RIP: 45fce1	 Bytes: 6
  %loadMem_45fce1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fce1 = call %struct.Memory* @routine_subl_MINUS0x300__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fce1)
  store %struct.Memory* %call_45fce1, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2f8(%rbp)	 RIP: 45fce7	 Bytes: 6
  %loadMem_45fce7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fce7 = call %struct.Memory* @routine_movl__eax__MINUS0x2f8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fce7)
  store %struct.Memory* %call_45fce7, %struct.Memory** %MEMORY

  ; Code: .L_45fced:	 RIP: 45fced	 Bytes: 0
  br label %block_.L_45fced
block_.L_45fced:

  ; Code: jmpq .L_45fcf2	 RIP: 45fced	 Bytes: 5
  %loadMem_45fced = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fced = call %struct.Memory* @routine_jmpq_.L_45fcf2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fced, i64 5, i64 5)
  store %struct.Memory* %call_45fced, %struct.Memory** %MEMORY

  br label %block_.L_45fcf2

  ; Code: .L_45fcf2:	 RIP: 45fcf2	 Bytes: 0
block_.L_45fcf2:

  ; Code: jmpq .L_45fcf7	 RIP: 45fcf2	 Bytes: 5
  %loadMem_45fcf2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fcf2 = call %struct.Memory* @routine_jmpq_.L_45fcf7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fcf2, i64 5, i64 5)
  store %struct.Memory* %call_45fcf2, %struct.Memory** %MEMORY

  br label %block_.L_45fcf7

  ; Code: .L_45fcf7:	 RIP: 45fcf7	 Bytes: 0
block_.L_45fcf7:

  ; Code: jmpq .L_45fd01	 RIP: 45fcf7	 Bytes: 5
  %loadMem_45fcf7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fcf7 = call %struct.Memory* @routine_jmpq_.L_45fd01(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fcf7, i64 10, i64 5)
  store %struct.Memory* %call_45fcf7, %struct.Memory** %MEMORY

  br label %block_.L_45fd01

  ; Code: .L_45fcfc:	 RIP: 45fcfc	 Bytes: 0
block_.L_45fcfc:

  ; Code: callq .popgo	 RIP: 45fcfc	 Bytes: 5
  %loadMem1_45fcfc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_45fcfc = call %struct.Memory* @routine_callq_.popgo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_45fcfc, i64 -335772, i64 5, i64 5)
  store %struct.Memory* %call1_45fcfc, %struct.Memory** %MEMORY

  %loadMem2_45fcfc = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45fcfc = load i64, i64* %3
  %call2_45fcfc = call %struct.Memory* @sub_40dd60.popgo(%struct.State* %0, i64  %loadPC_45fcfc, %struct.Memory* %loadMem2_45fcfc)
  store %struct.Memory* %call2_45fcfc, %struct.Memory** %MEMORY

  ; Code: .L_45fd01:	 RIP: 45fd01	 Bytes: 0
  br label %block_.L_45fd01
block_.L_45fd01:

  ; Code: jmpq .L_45fd06	 RIP: 45fd01	 Bytes: 5
  %loadMem_45fd01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fd01 = call %struct.Memory* @routine_jmpq_.L_45fd06(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fd01, i64 5, i64 5)
  store %struct.Memory* %call_45fd01, %struct.Memory** %MEMORY

  br label %block_.L_45fd06

  ; Code: .L_45fd06:	 RIP: 45fd06	 Bytes: 0
block_.L_45fd06:

  ; Code: jmpq .L_45fd10	 RIP: 45fd06	 Bytes: 5
  %loadMem_45fd06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fd06 = call %struct.Memory* @routine_jmpq_.L_45fd10(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fd06, i64 10, i64 5)
  store %struct.Memory* %call_45fd06, %struct.Memory** %MEMORY

  br label %block_.L_45fd10

  ; Code: .L_45fd0b:	 RIP: 45fd0b	 Bytes: 0
block_.L_45fd0b:

  ; Code: callq .popgo	 RIP: 45fd0b	 Bytes: 5
  %loadMem1_45fd0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_45fd0b = call %struct.Memory* @routine_callq_.popgo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_45fd0b, i64 -335787, i64 5, i64 5)
  store %struct.Memory* %call1_45fd0b, %struct.Memory** %MEMORY

  %loadMem2_45fd0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45fd0b = load i64, i64* %3
  %call2_45fd0b = call %struct.Memory* @sub_40dd60.popgo(%struct.State* %0, i64  %loadPC_45fd0b, %struct.Memory* %loadMem2_45fd0b)
  store %struct.Memory* %call2_45fd0b, %struct.Memory** %MEMORY

  ; Code: .L_45fd10:	 RIP: 45fd10	 Bytes: 0
  br label %block_.L_45fd10
block_.L_45fd10:

  ; Code: jmpq .L_45fe0d	 RIP: 45fd10	 Bytes: 5
  %loadMem_45fd10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fd10 = call %struct.Memory* @routine_jmpq_.L_45fe0d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fd10, i64 253, i64 5)
  store %struct.Memory* %call_45fd10, %struct.Memory** %MEMORY

  br label %block_.L_45fe0d

  ; Code: .L_45fd15:	 RIP: 45fd15	 Bytes: 0
block_.L_45fd15:

  ; Code: xorl %eax, %eax	 RIP: 45fd15	 Bytes: 2
  %loadMem_45fd15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fd15 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fd15)
  store %struct.Memory* %call_45fd15, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 45fd17	 Bytes: 2
  %loadMem_45fd17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fd17 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fd17)
  store %struct.Memory* %call_45fd17, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %edi	 RIP: 45fd19	 Bytes: 3
  %loadMem_45fd19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fd19 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fd19)
  store %struct.Memory* %call_45fd19, %struct.Memory** %MEMORY

  ; Code: movl -0x3c(%rbp), %edx	 RIP: 45fd1c	 Bytes: 3
  %loadMem_45fd1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fd1c = call %struct.Memory* @routine_movl_MINUS0x3c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fd1c)
  store %struct.Memory* %call_45fd1c, %struct.Memory** %MEMORY

  ; Code: movl -0x40(%rbp), %ecx	 RIP: 45fd1f	 Bytes: 3
  %loadMem_45fd1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fd1f = call %struct.Memory* @routine_movl_MINUS0x40__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fd1f)
  store %struct.Memory* %call_45fd1f, %struct.Memory** %MEMORY

  ; Code: callq .do_find_defense	 RIP: 45fd22	 Bytes: 5
  %loadMem1_45fd22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_45fd22 = call %struct.Memory* @routine_callq_.do_find_defense(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_45fd22, i64 14590, i64 5, i64 5)
  store %struct.Memory* %call1_45fd22, %struct.Memory** %MEMORY

  %loadMem2_45fd22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45fd22 = load i64, i64* %3
  %call2_45fd22 = call %struct.Memory* @sub_463620.do_find_defense(%struct.State* %0, i64  %loadPC_45fd22, %struct.Memory* %loadMem2_45fd22)
  store %struct.Memory* %call2_45fd22, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x300(%rbp)	 RIP: 45fd27	 Bytes: 6
  %loadMem_45fd27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fd27 = call %struct.Memory* @routine_movl__eax__MINUS0x300__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fd27)
  store %struct.Memory* %call_45fd27, %struct.Memory** %MEMORY

  ; Code: cmpl $0x5, -0x300(%rbp)	 RIP: 45fd2d	 Bytes: 7
  %loadMem_45fd2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fd2d = call %struct.Memory* @routine_cmpl__0x5__MINUS0x300__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fd2d)
  store %struct.Memory* %call_45fd2d, %struct.Memory** %MEMORY

  ; Code: je .L_45fe03	 RIP: 45fd34	 Bytes: 6
  %loadMem_45fd34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fd34 = call %struct.Memory* @routine_je_.L_45fe03(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fd34, i8* %BRANCH_TAKEN, i64 207, i64 6, i64 6)
  store %struct.Memory* %call_45fd34, %struct.Memory** %MEMORY

  %loadBr_45fd34 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45fd34 = icmp eq i8 %loadBr_45fd34, 1
  br i1 %cmpBr_45fd34, label %block_.L_45fe03, label %block_45fd3a

block_45fd3a:
  ; Code: xorl %eax, %eax	 RIP: 45fd3a	 Bytes: 2
  %loadMem_45fd3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fd3a = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fd3a)
  store %struct.Memory* %call_45fd3a, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 45fd3c	 Bytes: 2
  %loadMem_45fd3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fd3c = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fd3c)
  store %struct.Memory* %call_45fd3c, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %edi	 RIP: 45fd3e	 Bytes: 3
  %loadMem_45fd3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fd3e = call %struct.Memory* @routine_movl_MINUS0x30__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fd3e)
  store %struct.Memory* %call_45fd3e, %struct.Memory** %MEMORY

  ; Code: movl -0x3c(%rbp), %edx	 RIP: 45fd41	 Bytes: 3
  %loadMem_45fd41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fd41 = call %struct.Memory* @routine_movl_MINUS0x3c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fd41)
  store %struct.Memory* %call_45fd41, %struct.Memory** %MEMORY

  ; Code: movl -0x40(%rbp), %ecx	 RIP: 45fd44	 Bytes: 3
  %loadMem_45fd44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fd44 = call %struct.Memory* @routine_movl_MINUS0x40__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fd44)
  store %struct.Memory* %call_45fd44, %struct.Memory** %MEMORY

  ; Code: callq .do_attack	 RIP: 45fd47	 Bytes: 5
  %loadMem1_45fd47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_45fd47 = call %struct.Memory* @routine_callq_.do_attack(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_45fd47, i64 -8295, i64 5, i64 5)
  store %struct.Memory* %call1_45fd47, %struct.Memory** %MEMORY

  %loadMem2_45fd47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45fd47 = load i64, i64* %3
  %call2_45fd47 = call %struct.Memory* @sub_45dce0.do_attack(%struct.State* %0, i64  %loadPC_45fd47, %struct.Memory* %loadMem2_45fd47)
  store %struct.Memory* %call2_45fd47, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 45fd4c	 Bytes: 3
  %loadMem_45fd4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fd4c = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fd4c)
  store %struct.Memory* %call_45fd4c, %struct.Memory** %MEMORY

  ; Code: je .L_45fe03	 RIP: 45fd4f	 Bytes: 6
  %loadMem_45fd4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fd4f = call %struct.Memory* @routine_je_.L_45fe03(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fd4f, i8* %BRANCH_TAKEN, i64 180, i64 6, i64 6)
  store %struct.Memory* %call_45fd4f, %struct.Memory** %MEMORY

  %loadBr_45fd4f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45fd4f = icmp eq i8 %loadBr_45fd4f, 1
  br i1 %cmpBr_45fd4f, label %block_.L_45fe03, label %block_45fd55

block_45fd55:
  ; Code: callq .popgo	 RIP: 45fd55	 Bytes: 5
  %loadMem1_45fd55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_45fd55 = call %struct.Memory* @routine_callq_.popgo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_45fd55, i64 -335861, i64 5, i64 5)
  store %struct.Memory* %call1_45fd55, %struct.Memory** %MEMORY

  %loadMem2_45fd55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45fd55 = load i64, i64* %3
  %call2_45fd55 = call %struct.Memory* @sub_40dd60.popgo(%struct.State* %0, i64  %loadPC_45fd55, %struct.Memory* %loadMem2_45fd55)
  store %struct.Memory* %call2_45fd55, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0x300(%rbp)	 RIP: 45fd5a	 Bytes: 7
  %loadMem_45fd5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fd5a = call %struct.Memory* @routine_cmpl__0x0__MINUS0x300__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fd5a)
  store %struct.Memory* %call_45fd5a, %struct.Memory** %MEMORY

  ; Code: jne .L_45fdc0	 RIP: 45fd61	 Bytes: 6
  %loadMem_45fd61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fd61 = call %struct.Memory* @routine_jne_.L_45fdc0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fd61, i8* %BRANCH_TAKEN, i64 95, i64 6, i64 6)
  store %struct.Memory* %call_45fd61, %struct.Memory** %MEMORY

  %loadBr_45fd61 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45fd61 = icmp eq i8 %loadBr_45fd61, 1
  br i1 %cmpBr_45fd61, label %block_.L_45fdc0, label %block_45fd67

block_45fd67:
  ; Code: cmpq $0x0, -0x38(%rbp)	 RIP: 45fd67	 Bytes: 5
  %loadMem_45fd67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fd67 = call %struct.Memory* @routine_cmpq__0x0__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fd67)
  store %struct.Memory* %call_45fd67, %struct.Memory** %MEMORY

  ; Code: je .L_45fd7e	 RIP: 45fd6c	 Bytes: 6
  %loadMem_45fd6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fd6c = call %struct.Memory* @routine_je_.L_45fd7e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fd6c, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_45fd6c, %struct.Memory** %MEMORY

  %loadBr_45fd6c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45fd6c = icmp eq i8 %loadBr_45fd6c, 1
  br i1 %cmpBr_45fd6c, label %block_.L_45fd7e, label %block_45fd72

block_45fd72:
  ; Code: movl -0x558(%rbp), %eax	 RIP: 45fd72	 Bytes: 6
  %loadMem_45fd72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fd72 = call %struct.Memory* @routine_movl_MINUS0x558__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fd72)
  store %struct.Memory* %call_45fd72, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rcx	 RIP: 45fd78	 Bytes: 4
  %loadMem_45fd78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fd78 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fd78)
  store %struct.Memory* %call_45fd78, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx)	 RIP: 45fd7c	 Bytes: 2
  %loadMem_45fd7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fd7c = call %struct.Memory* @routine_movl__eax____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fd7c)
  store %struct.Memory* %call_45fd7c, %struct.Memory** %MEMORY

  ; Code: .L_45fd7e:	 RIP: 45fd7e	 Bytes: 0
  br label %block_.L_45fd7e
block_.L_45fd7e:

  ; Code: cmpq $0x0, 0xab0ef8	 RIP: 45fd7e	 Bytes: 9
  %loadMem_45fd7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fd7e = call %struct.Memory* @routine_cmpq__0x0__0xab0ef8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fd7e)
  store %struct.Memory* %call_45fd7e, %struct.Memory** %MEMORY

  ; Code: je .L_45fdb4	 RIP: 45fd87	 Bytes: 6
  %loadMem_45fd87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fd87 = call %struct.Memory* @routine_je_.L_45fdb4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fd87, i8* %BRANCH_TAKEN, i64 45, i64 6, i64 6)
  store %struct.Memory* %call_45fd87, %struct.Memory** %MEMORY

  %loadBr_45fd87 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45fd87 = icmp eq i8 %loadBr_45fd87, 1
  br i1 %cmpBr_45fd87, label %block_.L_45fdb4, label %block_45fd8d

block_45fd8d:
  ; Code: movl $0x5, %ecx	 RIP: 45fd8d	 Bytes: 5
  %loadMem_45fd8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fd8d = call %struct.Memory* @routine_movl__0x5___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fd8d)
  store %struct.Memory* %call_45fd8d, %struct.Memory** %MEMORY

  ; Code: movq $0x57e5fb, %r8	 RIP: 45fd92	 Bytes: 10
  %loadMem_45fd92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fd92 = call %struct.Memory* @routine_movq__0x57e5fb___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fd92)
  store %struct.Memory* %call_45fd92, %struct.Memory** %MEMORY

  ; Code: movq -0x4b0(%rbp), %rdi	 RIP: 45fd9c	 Bytes: 7
  %loadMem_45fd9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fd9c = call %struct.Memory* @routine_movq_MINUS0x4b0__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fd9c)
  store %struct.Memory* %call_45fd9c, %struct.Memory** %MEMORY

  ; Code: movl -0x4b4(%rbp), %esi	 RIP: 45fda3	 Bytes: 6
  %loadMem_45fda3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fda3 = call %struct.Memory* @routine_movl_MINUS0x4b4__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fda3)
  store %struct.Memory* %call_45fda3, %struct.Memory** %MEMORY

  ; Code: movl -0x558(%rbp), %edx	 RIP: 45fda9	 Bytes: 6
  %loadMem_45fda9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fda9 = call %struct.Memory* @routine_movl_MINUS0x558__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fda9)
  store %struct.Memory* %call_45fda9, %struct.Memory** %MEMORY

  ; Code: callq .sgf_trace	 RIP: 45fdaf	 Bytes: 5
  %loadMem1_45fdaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_45fdaf = call %struct.Memory* @routine_callq_.sgf_trace(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_45fdaf, i64 -294383, i64 5, i64 5)
  store %struct.Memory* %call1_45fdaf, %struct.Memory** %MEMORY

  %loadMem2_45fdaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45fdaf = load i64, i64* %3
  %call2_45fdaf = call %struct.Memory* @sub_417fc0.sgf_trace(%struct.State* %0, i64  %loadPC_45fdaf, %struct.Memory* %loadMem2_45fdaf)
  store %struct.Memory* %call2_45fdaf, %struct.Memory** %MEMORY

  ; Code: .L_45fdb4:	 RIP: 45fdb4	 Bytes: 0
  br label %block_.L_45fdb4
block_.L_45fdb4:

  ; Code: movl $0x5, -0x2c(%rbp)	 RIP: 45fdb4	 Bytes: 7
  %loadMem_45fdb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fdb4 = call %struct.Memory* @routine_movl__0x5__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fdb4)
  store %struct.Memory* %call_45fdb4, %struct.Memory** %MEMORY

  ; Code: jmpq .L_45ff1e	 RIP: 45fdbb	 Bytes: 5
  %loadMem_45fdbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fdbb = call %struct.Memory* @routine_jmpq_.L_45ff1e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fdbb, i64 355, i64 5)
  store %struct.Memory* %call_45fdbb, %struct.Memory** %MEMORY

  br label %block_.L_45ff1e

  ; Code: .L_45fdc0:	 RIP: 45fdc0	 Bytes: 0
block_.L_45fdc0:

  ; Code: movl $0x5, %eax	 RIP: 45fdc0	 Bytes: 5
  %loadMem_45fdc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fdc0 = call %struct.Memory* @routine_movl__0x5___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fdc0)
  store %struct.Memory* %call_45fdc0, %struct.Memory** %MEMORY

  ; Code: subl -0x300(%rbp), %eax	 RIP: 45fdc5	 Bytes: 6
  %loadMem_45fdc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fdc5 = call %struct.Memory* @routine_subl_MINUS0x300__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fdc5)
  store %struct.Memory* %call_45fdc5, %struct.Memory** %MEMORY

  ; Code: cmpl -0x2f8(%rbp), %eax	 RIP: 45fdcb	 Bytes: 6
  %loadMem_45fdcb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fdcb = call %struct.Memory* @routine_cmpl_MINUS0x2f8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fdcb)
  store %struct.Memory* %call_45fdcb, %struct.Memory** %MEMORY

  ; Code: jle .L_45fdf4	 RIP: 45fdd1	 Bytes: 6
  %loadMem_45fdd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fdd1 = call %struct.Memory* @routine_jle_.L_45fdf4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fdd1, i8* %BRANCH_TAKEN, i64 35, i64 6, i64 6)
  store %struct.Memory* %call_45fdd1, %struct.Memory** %MEMORY

  %loadBr_45fdd1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45fdd1 = icmp eq i8 %loadBr_45fdd1, 1
  br i1 %cmpBr_45fdd1, label %block_.L_45fdf4, label %block_45fdd7

block_45fdd7:
  ; Code: movl $0x5, %eax	 RIP: 45fdd7	 Bytes: 5
  %loadMem_45fdd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fdd7 = call %struct.Memory* @routine_movl__0x5___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fdd7)
  store %struct.Memory* %call_45fdd7, %struct.Memory** %MEMORY

  ; Code: movl -0x558(%rbp), %ecx	 RIP: 45fddc	 Bytes: 6
  %loadMem_45fddc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fddc = call %struct.Memory* @routine_movl_MINUS0x558__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fddc)
  store %struct.Memory* %call_45fddc, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x2f4(%rbp)	 RIP: 45fde2	 Bytes: 6
  %loadMem_45fde2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fde2 = call %struct.Memory* @routine_movl__ecx__MINUS0x2f4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fde2)
  store %struct.Memory* %call_45fde2, %struct.Memory** %MEMORY

  ; Code: subl -0x300(%rbp), %eax	 RIP: 45fde8	 Bytes: 6
  %loadMem_45fde8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fde8 = call %struct.Memory* @routine_subl_MINUS0x300__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fde8)
  store %struct.Memory* %call_45fde8, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2f8(%rbp)	 RIP: 45fdee	 Bytes: 6
  %loadMem_45fdee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fdee = call %struct.Memory* @routine_movl__eax__MINUS0x2f8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fdee)
  store %struct.Memory* %call_45fdee, %struct.Memory** %MEMORY

  ; Code: .L_45fdf4:	 RIP: 45fdf4	 Bytes: 0
  br label %block_.L_45fdf4
block_.L_45fdf4:

  ; Code: jmpq .L_45fdf9	 RIP: 45fdf4	 Bytes: 5
  %loadMem_45fdf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fdf4 = call %struct.Memory* @routine_jmpq_.L_45fdf9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fdf4, i64 5, i64 5)
  store %struct.Memory* %call_45fdf4, %struct.Memory** %MEMORY

  br label %block_.L_45fdf9

  ; Code: .L_45fdf9:	 RIP: 45fdf9	 Bytes: 0
block_.L_45fdf9:

  ; Code: jmpq .L_45fdfe	 RIP: 45fdf9	 Bytes: 5
  %loadMem_45fdf9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fdf9 = call %struct.Memory* @routine_jmpq_.L_45fdfe(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fdf9, i64 5, i64 5)
  store %struct.Memory* %call_45fdf9, %struct.Memory** %MEMORY

  br label %block_.L_45fdfe

  ; Code: .L_45fdfe:	 RIP: 45fdfe	 Bytes: 0
block_.L_45fdfe:

  ; Code: jmpq .L_45fe08	 RIP: 45fdfe	 Bytes: 5
  %loadMem_45fdfe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fdfe = call %struct.Memory* @routine_jmpq_.L_45fe08(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fdfe, i64 10, i64 5)
  store %struct.Memory* %call_45fdfe, %struct.Memory** %MEMORY

  br label %block_.L_45fe08

  ; Code: .L_45fe03:	 RIP: 45fe03	 Bytes: 0
block_.L_45fe03:

  ; Code: callq .popgo	 RIP: 45fe03	 Bytes: 5
  %loadMem1_45fe03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_45fe03 = call %struct.Memory* @routine_callq_.popgo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_45fe03, i64 -336035, i64 5, i64 5)
  store %struct.Memory* %call1_45fe03, %struct.Memory** %MEMORY

  %loadMem2_45fe03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45fe03 = load i64, i64* %3
  %call2_45fe03 = call %struct.Memory* @sub_40dd60.popgo(%struct.State* %0, i64  %loadPC_45fe03, %struct.Memory* %loadMem2_45fe03)
  store %struct.Memory* %call2_45fe03, %struct.Memory** %MEMORY

  ; Code: .L_45fe08:	 RIP: 45fe08	 Bytes: 0
  br label %block_.L_45fe08
block_.L_45fe08:

  ; Code: jmpq .L_45fe0d	 RIP: 45fe08	 Bytes: 5
  %loadMem_45fe08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fe08 = call %struct.Memory* @routine_jmpq_.L_45fe0d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fe08, i64 5, i64 5)
  store %struct.Memory* %call_45fe08, %struct.Memory** %MEMORY

  br label %block_.L_45fe0d

  ; Code: .L_45fe0d:	 RIP: 45fe0d	 Bytes: 0
block_.L_45fe0d:

  ; Code: jmpq .L_45fe12	 RIP: 45fe0d	 Bytes: 5
  %loadMem_45fe0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fe0d = call %struct.Memory* @routine_jmpq_.L_45fe12(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fe0d, i64 5, i64 5)
  store %struct.Memory* %call_45fe0d, %struct.Memory** %MEMORY

  br label %block_.L_45fe12

  ; Code: .L_45fe12:	 RIP: 45fe12	 Bytes: 0
block_.L_45fe12:

  ; Code: jmpq .L_45fe17	 RIP: 45fe12	 Bytes: 5
  %loadMem_45fe12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fe12 = call %struct.Memory* @routine_jmpq_.L_45fe17(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fe12, i64 5, i64 5)
  store %struct.Memory* %call_45fe12, %struct.Memory** %MEMORY

  br label %block_.L_45fe17

  ; Code: .L_45fe17:	 RIP: 45fe17	 Bytes: 0
block_.L_45fe17:

  ; Code: movl -0x304(%rbp), %eax	 RIP: 45fe17	 Bytes: 6
  %loadMem_45fe17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fe17 = call %struct.Memory* @routine_movl_MINUS0x304__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fe17)
  store %struct.Memory* %call_45fe17, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 45fe1d	 Bytes: 3
  %loadMem_45fe1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fe1d = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fe1d)
  store %struct.Memory* %call_45fe1d, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x304(%rbp)	 RIP: 45fe20	 Bytes: 6
  %loadMem_45fe20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fe20 = call %struct.Memory* @routine_movl__eax__MINUS0x304__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fe20)
  store %struct.Memory* %call_45fe20, %struct.Memory** %MEMORY

  ; Code: jmpq .L_45fb30	 RIP: 45fe26	 Bytes: 5
  %loadMem_45fe26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fe26 = call %struct.Memory* @routine_jmpq_.L_45fb30(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fe26, i64 -758, i64 5)
  store %struct.Memory* %call_45fe26, %struct.Memory** %MEMORY

  br label %block_.L_45fb30

  ; Code: .L_45fe2b:	 RIP: 45fe2b	 Bytes: 0
block_.L_45fe2b:

  ; Code: jmpq .L_45fe30	 RIP: 45fe2b	 Bytes: 5
  %loadMem_45fe2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fe2b = call %struct.Memory* @routine_jmpq_.L_45fe30(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fe2b, i64 5, i64 5)
  store %struct.Memory* %call_45fe2b, %struct.Memory** %MEMORY

  br label %block_.L_45fe30

  ; Code: .L_45fe30:	 RIP: 45fe30	 Bytes: 0
block_.L_45fe30:

  ; Code: jmpq .L_45fe35	 RIP: 45fe30	 Bytes: 5
  %loadMem_45fe30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fe30 = call %struct.Memory* @routine_jmpq_.L_45fe35(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fe30, i64 5, i64 5)
  store %struct.Memory* %call_45fe30, %struct.Memory** %MEMORY

  br label %block_.L_45fe35

  ; Code: .L_45fe35:	 RIP: 45fe35	 Bytes: 0
block_.L_45fe35:

  ; Code: cmpl $0x0, -0x2f8(%rbp)	 RIP: 45fe35	 Bytes: 7
  %loadMem_45fe35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fe35 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x2f8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fe35)
  store %struct.Memory* %call_45fe35, %struct.Memory** %MEMORY

  ; Code: jne .L_45fe7f	 RIP: 45fe3c	 Bytes: 6
  %loadMem_45fe3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fe3c = call %struct.Memory* @routine_jne_.L_45fe7f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fe3c, i8* %BRANCH_TAKEN, i64 67, i64 6, i64 6)
  store %struct.Memory* %call_45fe3c, %struct.Memory** %MEMORY

  %loadBr_45fe3c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45fe3c = icmp eq i8 %loadBr_45fe3c, 1
  br i1 %cmpBr_45fe3c, label %block_.L_45fe7f, label %block_45fe42

block_45fe42:
  ; Code: jmpq .L_45fe47	 RIP: 45fe42	 Bytes: 5
  %loadMem_45fe42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fe42 = call %struct.Memory* @routine_jmpq_.L_45fe47(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fe42, i64 5, i64 5)
  store %struct.Memory* %call_45fe42, %struct.Memory** %MEMORY

  br label %block_.L_45fe47

  ; Code: .L_45fe47:	 RIP: 45fe47	 Bytes: 0
block_.L_45fe47:

  ; Code: cmpq $0x0, 0xab0ef8	 RIP: 45fe47	 Bytes: 9
  %loadMem_45fe47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fe47 = call %struct.Memory* @routine_cmpq__0x0__0xab0ef8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fe47)
  store %struct.Memory* %call_45fe47, %struct.Memory** %MEMORY

  ; Code: je .L_45fe73	 RIP: 45fe50	 Bytes: 6
  %loadMem_45fe50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fe50 = call %struct.Memory* @routine_je_.L_45fe73(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fe50, i8* %BRANCH_TAKEN, i64 35, i64 6, i64 6)
  store %struct.Memory* %call_45fe50, %struct.Memory** %MEMORY

  %loadBr_45fe50 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45fe50 = icmp eq i8 %loadBr_45fe50, 1
  br i1 %cmpBr_45fe50, label %block_.L_45fe73, label %block_45fe56

block_45fe56:
  ; Code: xorl %eax, %eax	 RIP: 45fe56	 Bytes: 2
  %loadMem_45fe56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fe56 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fe56)
  store %struct.Memory* %call_45fe56, %struct.Memory** %MEMORY

  ; Code: xorl %ecx, %ecx	 RIP: 45fe58	 Bytes: 2
  %loadMem_45fe58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fe58 = call %struct.Memory* @routine_xorl__ecx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fe58)
  store %struct.Memory* %call_45fe58, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %r8d	 RIP: 45fe5a	 Bytes: 3
  %loadMem_45fe5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fe5a = call %struct.Memory* @routine_movl__ecx___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fe5a)
  store %struct.Memory* %call_45fe5a, %struct.Memory** %MEMORY

  ; Code: movq -0x4b0(%rbp), %rdi	 RIP: 45fe5d	 Bytes: 7
  %loadMem_45fe5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fe5d = call %struct.Memory* @routine_movq_MINUS0x4b0__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fe5d)
  store %struct.Memory* %call_45fe5d, %struct.Memory** %MEMORY

  ; Code: movl -0x4b4(%rbp), %esi	 RIP: 45fe64	 Bytes: 6
  %loadMem_45fe64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fe64 = call %struct.Memory* @routine_movl_MINUS0x4b4__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fe64)
  store %struct.Memory* %call_45fe64, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 45fe6a	 Bytes: 2
  %loadMem_45fe6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fe6a = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fe6a)
  store %struct.Memory* %call_45fe6a, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 45fe6c	 Bytes: 2
  %loadMem_45fe6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fe6c = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fe6c)
  store %struct.Memory* %call_45fe6c, %struct.Memory** %MEMORY

  ; Code: callq .sgf_trace	 RIP: 45fe6e	 Bytes: 5
  %loadMem1_45fe6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_45fe6e = call %struct.Memory* @routine_callq_.sgf_trace(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_45fe6e, i64 -294574, i64 5, i64 5)
  store %struct.Memory* %call1_45fe6e, %struct.Memory** %MEMORY

  %loadMem2_45fe6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45fe6e = load i64, i64* %3
  %call2_45fe6e = call %struct.Memory* @sub_417fc0.sgf_trace(%struct.State* %0, i64  %loadPC_45fe6e, %struct.Memory* %loadMem2_45fe6e)
  store %struct.Memory* %call2_45fe6e, %struct.Memory** %MEMORY

  ; Code: .L_45fe73:	 RIP: 45fe73	 Bytes: 0
  br label %block_.L_45fe73
block_.L_45fe73:

  ; Code: movl $0x0, -0x2c(%rbp)	 RIP: 45fe73	 Bytes: 7
  %loadMem_45fe73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fe73 = call %struct.Memory* @routine_movl__0x0__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fe73)
  store %struct.Memory* %call_45fe73, %struct.Memory** %MEMORY

  ; Code: jmpq .L_45ff1e	 RIP: 45fe7a	 Bytes: 5
  %loadMem_45fe7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fe7a = call %struct.Memory* @routine_jmpq_.L_45ff1e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fe7a, i64 164, i64 5)
  store %struct.Memory* %call_45fe7a, %struct.Memory** %MEMORY

  br label %block_.L_45ff1e

  ; Code: .L_45fe7f:	 RIP: 45fe7f	 Bytes: 0
block_.L_45fe7f:

  ; Code: jmpq .L_45fe84	 RIP: 45fe7f	 Bytes: 5
  %loadMem_45fe7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fe7f = call %struct.Memory* @routine_jmpq_.L_45fe84(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fe7f, i64 5, i64 5)
  store %struct.Memory* %call_45fe7f, %struct.Memory** %MEMORY

  br label %block_.L_45fe84

  ; Code: .L_45fe84:	 RIP: 45fe84	 Bytes: 0
block_.L_45fe84:

  ; Code: cmpl $0x0, -0x2f8(%rbp)	 RIP: 45fe84	 Bytes: 7
  %loadMem_45fe84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fe84 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x2f8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fe84)
  store %struct.Memory* %call_45fe84, %struct.Memory** %MEMORY

  ; Code: je .L_45fee4	 RIP: 45fe8b	 Bytes: 6
  %loadMem_45fe8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fe8b = call %struct.Memory* @routine_je_.L_45fee4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fe8b, i8* %BRANCH_TAKEN, i64 89, i64 6, i64 6)
  store %struct.Memory* %call_45fe8b, %struct.Memory** %MEMORY

  %loadBr_45fe8b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45fe8b = icmp eq i8 %loadBr_45fe8b, 1
  br i1 %cmpBr_45fe8b, label %block_.L_45fee4, label %block_45fe91

block_45fe91:
  ; Code: cmpq $0x0, -0x38(%rbp)	 RIP: 45fe91	 Bytes: 5
  %loadMem_45fe91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fe91 = call %struct.Memory* @routine_cmpq__0x0__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fe91)
  store %struct.Memory* %call_45fe91, %struct.Memory** %MEMORY

  ; Code: je .L_45fea8	 RIP: 45fe96	 Bytes: 6
  %loadMem_45fe96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fe96 = call %struct.Memory* @routine_je_.L_45fea8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fe96, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_45fe96, %struct.Memory** %MEMORY

  %loadBr_45fe96 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45fe96 = icmp eq i8 %loadBr_45fe96, 1
  br i1 %cmpBr_45fe96, label %block_.L_45fea8, label %block_45fe9c

block_45fe9c:
  ; Code: movl -0x2f4(%rbp), %eax	 RIP: 45fe9c	 Bytes: 6
  %loadMem_45fe9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fe9c = call %struct.Memory* @routine_movl_MINUS0x2f4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fe9c)
  store %struct.Memory* %call_45fe9c, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rcx	 RIP: 45fea2	 Bytes: 4
  %loadMem_45fea2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fea2 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fea2)
  store %struct.Memory* %call_45fea2, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx)	 RIP: 45fea6	 Bytes: 2
  %loadMem_45fea6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fea6 = call %struct.Memory* @routine_movl__eax____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fea6)
  store %struct.Memory* %call_45fea6, %struct.Memory** %MEMORY

  ; Code: .L_45fea8:	 RIP: 45fea8	 Bytes: 0
  br label %block_.L_45fea8
block_.L_45fea8:

  ; Code: cmpq $0x0, 0xab0ef8	 RIP: 45fea8	 Bytes: 9
  %loadMem_45fea8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fea8 = call %struct.Memory* @routine_cmpq__0x0__0xab0ef8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fea8)
  store %struct.Memory* %call_45fea8, %struct.Memory** %MEMORY

  ; Code: je .L_45fedf	 RIP: 45feb1	 Bytes: 6
  %loadMem_45feb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45feb1 = call %struct.Memory* @routine_je_.L_45fedf(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45feb1, i8* %BRANCH_TAKEN, i64 46, i64 6, i64 6)
  store %struct.Memory* %call_45feb1, %struct.Memory** %MEMORY

  %loadBr_45feb1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45feb1 = icmp eq i8 %loadBr_45feb1, 1
  br i1 %cmpBr_45feb1, label %block_.L_45fedf, label %block_45feb7

block_45feb7:
  ; Code: movq $0x57f60a, %r8	 RIP: 45feb7	 Bytes: 10
  %loadMem_45feb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45feb7 = call %struct.Memory* @routine_movq__0x57f60a___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45feb7)
  store %struct.Memory* %call_45feb7, %struct.Memory** %MEMORY

  ; Code: movq -0x4b0(%rbp), %rdi	 RIP: 45fec1	 Bytes: 7
  %loadMem_45fec1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fec1 = call %struct.Memory* @routine_movq_MINUS0x4b0__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fec1)
  store %struct.Memory* %call_45fec1, %struct.Memory** %MEMORY

  ; Code: movl -0x4b4(%rbp), %esi	 RIP: 45fec8	 Bytes: 6
  %loadMem_45fec8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fec8 = call %struct.Memory* @routine_movl_MINUS0x4b4__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fec8)
  store %struct.Memory* %call_45fec8, %struct.Memory** %MEMORY

  ; Code: movl -0x2f4(%rbp), %edx	 RIP: 45fece	 Bytes: 6
  %loadMem_45fece = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fece = call %struct.Memory* @routine_movl_MINUS0x2f4__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fece)
  store %struct.Memory* %call_45fece, %struct.Memory** %MEMORY

  ; Code: movl -0x2f8(%rbp), %ecx	 RIP: 45fed4	 Bytes: 6
  %loadMem_45fed4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fed4 = call %struct.Memory* @routine_movl_MINUS0x2f8__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fed4)
  store %struct.Memory* %call_45fed4, %struct.Memory** %MEMORY

  ; Code: callq .sgf_trace	 RIP: 45feda	 Bytes: 5
  %loadMem1_45feda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_45feda = call %struct.Memory* @routine_callq_.sgf_trace(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_45feda, i64 -294682, i64 5, i64 5)
  store %struct.Memory* %call1_45feda, %struct.Memory** %MEMORY

  %loadMem2_45feda = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45feda = load i64, i64* %3
  %call2_45feda = call %struct.Memory* @sub_417fc0.sgf_trace(%struct.State* %0, i64  %loadPC_45feda, %struct.Memory* %loadMem2_45feda)
  store %struct.Memory* %call2_45feda, %struct.Memory** %MEMORY

  ; Code: .L_45fedf:	 RIP: 45fedf	 Bytes: 0
  br label %block_.L_45fedf
block_.L_45fedf:

  ; Code: jmpq .L_45ff15	 RIP: 45fedf	 Bytes: 5
  %loadMem_45fedf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fedf = call %struct.Memory* @routine_jmpq_.L_45ff15(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fedf, i64 54, i64 5)
  store %struct.Memory* %call_45fedf, %struct.Memory** %MEMORY

  br label %block_.L_45ff15

  ; Code: .L_45fee4:	 RIP: 45fee4	 Bytes: 0
block_.L_45fee4:

  ; Code: cmpq $0x0, 0xab0ef8	 RIP: 45fee4	 Bytes: 9
  %loadMem_45fee4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fee4 = call %struct.Memory* @routine_cmpq__0x0__0xab0ef8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fee4)
  store %struct.Memory* %call_45fee4, %struct.Memory** %MEMORY

  ; Code: je .L_45ff10	 RIP: 45feed	 Bytes: 6
  %loadMem_45feed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45feed = call %struct.Memory* @routine_je_.L_45ff10(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45feed, i8* %BRANCH_TAKEN, i64 35, i64 6, i64 6)
  store %struct.Memory* %call_45feed, %struct.Memory** %MEMORY

  %loadBr_45feed = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45feed = icmp eq i8 %loadBr_45feed, 1
  br i1 %cmpBr_45feed, label %block_.L_45ff10, label %block_45fef3

block_45fef3:
  ; Code: xorl %eax, %eax	 RIP: 45fef3	 Bytes: 2
  %loadMem_45fef3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fef3 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fef3)
  store %struct.Memory* %call_45fef3, %struct.Memory** %MEMORY

  ; Code: xorl %ecx, %ecx	 RIP: 45fef5	 Bytes: 2
  %loadMem_45fef5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fef5 = call %struct.Memory* @routine_xorl__ecx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fef5)
  store %struct.Memory* %call_45fef5, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %r8d	 RIP: 45fef7	 Bytes: 3
  %loadMem_45fef7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fef7 = call %struct.Memory* @routine_movl__ecx___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fef7)
  store %struct.Memory* %call_45fef7, %struct.Memory** %MEMORY

  ; Code: movq -0x4b0(%rbp), %rdi	 RIP: 45fefa	 Bytes: 7
  %loadMem_45fefa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45fefa = call %struct.Memory* @routine_movq_MINUS0x4b0__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45fefa)
  store %struct.Memory* %call_45fefa, %struct.Memory** %MEMORY

  ; Code: movl -0x4b4(%rbp), %esi	 RIP: 45ff01	 Bytes: 6
  %loadMem_45ff01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ff01 = call %struct.Memory* @routine_movl_MINUS0x4b4__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ff01)
  store %struct.Memory* %call_45ff01, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 45ff07	 Bytes: 2
  %loadMem_45ff07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ff07 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ff07)
  store %struct.Memory* %call_45ff07, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 45ff09	 Bytes: 2
  %loadMem_45ff09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ff09 = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ff09)
  store %struct.Memory* %call_45ff09, %struct.Memory** %MEMORY

  ; Code: callq .sgf_trace	 RIP: 45ff0b	 Bytes: 5
  %loadMem1_45ff0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_45ff0b = call %struct.Memory* @routine_callq_.sgf_trace(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_45ff0b, i64 -294731, i64 5, i64 5)
  store %struct.Memory* %call1_45ff0b, %struct.Memory** %MEMORY

  %loadMem2_45ff0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_45ff0b = load i64, i64* %3
  %call2_45ff0b = call %struct.Memory* @sub_417fc0.sgf_trace(%struct.State* %0, i64  %loadPC_45ff0b, %struct.Memory* %loadMem2_45ff0b)
  store %struct.Memory* %call2_45ff0b, %struct.Memory** %MEMORY

  ; Code: .L_45ff10:	 RIP: 45ff10	 Bytes: 0
  br label %block_.L_45ff10
block_.L_45ff10:

  ; Code: jmpq .L_45ff15	 RIP: 45ff10	 Bytes: 5
  %loadMem_45ff10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ff10 = call %struct.Memory* @routine_jmpq_.L_45ff15(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ff10, i64 5, i64 5)
  store %struct.Memory* %call_45ff10, %struct.Memory** %MEMORY

  br label %block_.L_45ff15

  ; Code: .L_45ff15:	 RIP: 45ff15	 Bytes: 0
block_.L_45ff15:

  ; Code: movl -0x2f8(%rbp), %eax	 RIP: 45ff15	 Bytes: 6
  %loadMem_45ff15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ff15 = call %struct.Memory* @routine_movl_MINUS0x2f8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ff15)
  store %struct.Memory* %call_45ff15, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2c(%rbp)	 RIP: 45ff1b	 Bytes: 3
  %loadMem_45ff1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ff1b = call %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ff1b)
  store %struct.Memory* %call_45ff1b, %struct.Memory** %MEMORY

  ; Code: .L_45ff1e:	 RIP: 45ff1e	 Bytes: 0
  br label %block_.L_45ff1e
block_.L_45ff1e:

  ; Code: movl -0x2c(%rbp), %eax	 RIP: 45ff1e	 Bytes: 3
  %loadMem_45ff1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ff1e = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ff1e)
  store %struct.Memory* %call_45ff1e, %struct.Memory** %MEMORY

  ; Code: addq $0x5d8, %rsp	 RIP: 45ff21	 Bytes: 7
  %loadMem_45ff21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ff21 = call %struct.Memory* @routine_addq__0x5d8___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ff21)
  store %struct.Memory* %call_45ff21, %struct.Memory** %MEMORY

  ; Code: popq %rbx	 RIP: 45ff28	 Bytes: 1
  %loadMem_45ff28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ff28 = call %struct.Memory* @routine_popq__rbx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ff28)
  store %struct.Memory* %call_45ff28, %struct.Memory** %MEMORY

  ; Code: popq %r12	 RIP: 45ff29	 Bytes: 2
  %loadMem_45ff29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ff29 = call %struct.Memory* @routine_popq__r12(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ff29)
  store %struct.Memory* %call_45ff29, %struct.Memory** %MEMORY

  ; Code: popq %r13	 RIP: 45ff2b	 Bytes: 2
  %loadMem_45ff2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ff2b = call %struct.Memory* @routine_popq__r13(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ff2b)
  store %struct.Memory* %call_45ff2b, %struct.Memory** %MEMORY

  ; Code: popq %r14	 RIP: 45ff2d	 Bytes: 2
  %loadMem_45ff2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ff2d = call %struct.Memory* @routine_popq__r14(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ff2d)
  store %struct.Memory* %call_45ff2d, %struct.Memory** %MEMORY

  ; Code: popq %r15	 RIP: 45ff2f	 Bytes: 2
  %loadMem_45ff2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ff2f = call %struct.Memory* @routine_popq__r15(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ff2f)
  store %struct.Memory* %call_45ff2f, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 45ff31	 Bytes: 1
  %loadMem_45ff31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ff31 = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ff31)
  store %struct.Memory* %call_45ff31, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 45ff32	 Bytes: 1
  %loadMem_45ff32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_45ff32 = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_45ff32)
  store %struct.Memory* %call_45ff32, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_45ff32
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


define %struct.Memory* @routine_pushq__r15(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 31
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R15 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %R15
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 2
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4PUSHI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_pushq__r14(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 29
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R14 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %R14
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 2
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4PUSHI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_pushq__r13(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 27
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R13 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %R13
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 2
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4PUSHI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_pushq__r12(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 25
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R12 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %R12
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 2
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4PUSHI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %9)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_pushq__rbx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RBX
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 1
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4PUSHI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %9)
  ret %struct.Memory* %12
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

define %struct.Memory* @routine_subq__0x5d8___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 1496)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__0x57fe3e___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x57fe3e_type* @G__0x57fe3e to i64))
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0x3___r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %9, i64 3)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__edi__MINUS0x30__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 48
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

define %struct.Memory* @routine_movq__rsi__MINUS0x38__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RSI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = sext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movslq_MINUS0x30__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i8*
  %6 = load i8, i8* %5
  %7 = zext i8 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movzbl_0xb89e60___rsi_1____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 12099168
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__ecx__MINUS0x44__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 68
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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

define %struct.Memory* @routine_subl_MINUS0x44__rbp____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i32, i32* %R8D
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %RBP
  %16 = sub i64 %15, 68
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 4
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_movl__r8d__MINUS0x48__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 72
  %14 = load i32, i32* %R8D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
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

define %struct.Memory* @routine_movl__0x0__MINUS0x2f4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 756
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x0__MINUS0x2f8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 760
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x0__MINUS0x308__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 776
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x0__MINUS0x4a4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 1188
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movq__rax__MINUS0x4b0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 1200
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
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


define %struct.Memory* @routine_movl__ecx__MINUS0x4b4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1204
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_0xae23a4___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G_0xae23a4_type* @G_0xae23a4 to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_movl__ecx__0xae23a4(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0xae23a4_type* @G_0xae23a4 to i64), i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x0__MINUS0x310__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 784
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_MINUS0x30__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 48
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
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

define %struct.Memory* @routine_callq_.find_origin(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movzbl_0xb89e60___rsi_1____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 12099168
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
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

define %struct.Memory* @routine_cmpl__0x1___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
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

define %struct.Memory* @routine_je_.L_45eb70(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movslq_MINUS0x30__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 12099168
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_cmpl__0x2___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 2)
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

define %struct.Memory* @routine_jne_.L_45eb75(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64) #2 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2, i64* %4, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jmpq_.L_45ebe6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movq__0x57fb0d___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x57fb0d_type* @G__0x57fb0d to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__0x9f8___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 2552)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__0x57a4d2___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G__0x57a4d2_type* @G__0x57a4d2 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__0x14___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 20)
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movl__eax__MINUS0x55c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1372
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


define %struct.Memory* @routine_movq__rdx__MINUS0x568__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1384
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_movl_MINUS0x55c__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1372
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
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


define %struct.Memory* @routine_movl_MINUS0x30__rbp____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 48
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__eax__MINUS0x56c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1388
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__r8d___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i32, i32* %R8D
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i64*
  %6 = load i64, i64* %5
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq_MINUS0x568__rbp____r9(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 1384
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R9, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__edx__MINUS0x570__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1392
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movq__r9___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R9
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12)
  ret %struct.Memory* %15
}


define %struct.Memory* @routine_movl_MINUS0x56c__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1388
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x570__rbp____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 1392
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_callq_.abortgo(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_callq_.countlib(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jne_.L_45ebfc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_45ec6d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_movl__0x9f9___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 2553)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__0x57fd27___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G__0x57fd27_type* @G__0x57fd27 to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movl__eax__MINUS0x574__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1396
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movq__rdx__MINUS0x580__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1408
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movl_MINUS0x574__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1396
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_movl__eax__MINUS0x584__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1412
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}










define %struct.Memory* @routine_movq_MINUS0x580__rbp____r9(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 1408
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R9, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__edx__MINUS0x588__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1416
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movl_MINUS0x584__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1412
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x588__rbp____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 1416
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movl__0x1___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 1)
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_leaq_MINUS0x2f0__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 752
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_callq_.chainlinks2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_cmpl_MINUS0x6c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 108
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

define %struct.Memory* @routine_jge_.L_45ee1d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_0xb54ce4___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0xb54ce4_type* @G_0xb54ce4 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_cmpl_0xb8b854___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 ptrtoint( %G_0xb8b854_type* @G_0xb8b854 to i64))
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

define %struct.Memory* @routine_jle_.L_45ed01(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movslq_MINUS0x58__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x2f0__rbp__rax_4____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RAX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -752
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %19)
  ret %struct.Memory* %22
}


define %struct.Memory* @routine_callq_.countstones(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jmpq_.L_45ecc9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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

define %struct.Memory* @routine_cmpq__0x0__0xab0ef8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 9
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0xab0ef8_type* @G_0xab0ef8 to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_je_.L_45ecf5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_xorl__ecx___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RCX
  %13 = load i32, i32* %ECX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3XORI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__ecx___r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = bitcast i32* %R8D to i64*
  %13 = load i32, i32* %ECX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq_MINUS0x4b0__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x4b4__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1204
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_callq_.sgf_trace(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x0__MINUS0x2c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jmpq_.L_45ff1e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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

define %struct.Memory* @routine_jg_.L_45ed2c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_leaq_MINUS0x4a0__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1184
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_callq_.break_chain_moves(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x1___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 1)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_leaq_MINUS0x4c__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 76
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_callq_.findlib(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__eax__MINUS0x58c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1420
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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


define %struct.Memory* @routine_cmpl_MINUS0x310__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 784
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_45edb4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movslq_MINUS0x4b8__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x4a0__rbp__rax_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RAX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -1184
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %19)
  ret %struct.Memory* %22
}


define %struct.Memory* @routine_cmpl_MINUS0x4c__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 76
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jne_.L_45ed9b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl_MINUS0x3d8__rbp__rax_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RAX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -984
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %19)
  ret %struct.Memory* %22
}


define %struct.Memory* @routine_addl__0x0___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 0)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movl__ecx__MINUS0x3d8__rbp__rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RAX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -984
  %19 = add i64 %18, %17
  %20 = load i32, i32* %ECX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %21)
  ret %struct.Memory* %24
}


define %struct.Memory* @routine_jmpq_.L_45edb4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_45eda0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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


define %struct.Memory* @routine_jmpq_.L_45ed55(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_jne_.L_45ee05(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_cmpl__0x32__MINUS0x310__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 784
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 50)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_45ee05(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movslq_MINUS0x310__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__eax__MINUS0x4a0__rbp__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -1184
  %19 = add i64 %18, %17
  %20 = load i32, i32* %EAX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %21)
  ret %struct.Memory* %24
}




define %struct.Memory* @routine_movl__0x0__MINUS0x3d8__rbp__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %RCX
  %14 = mul i64 %13, 4
  %15 = add i64 %12, -984
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 11
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %16, i64 0)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_movl_MINUS0x310__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__eax__MINUS0x310__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 784
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_45ee0a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_45ee0f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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


define %struct.Memory* @routine_jmpq_.L_45ec8b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movl__0x2___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 2)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_leaq_MINUS0x60__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 96
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movl__eax__MINUS0x54__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 84
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_cmpl__0x2__MINUS0x54__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 2)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_45ee40(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_45eeb1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_movl__0xa15___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 2581)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__0x57fd3a___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G__0x57fd3a_type* @G__0x57fd3a to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movl__eax__MINUS0x590__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1424
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movq__rdx__MINUS0x598__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1432
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movl_MINUS0x590__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1424
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_movl__eax__MINUS0x59c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1436
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}










define %struct.Memory* @routine_movq_MINUS0x598__rbp____r9(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 1432
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R9, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__edx__MINUS0x5a0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1440
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movl_MINUS0x59c__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1436
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x5a0__rbp____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 1440
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movl_MINUS0x60__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x5c__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 92
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addl__0x14___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 20)
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


define %struct.Memory* @routine_je_.L_45eef5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_subl__0x14___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 20)
  ret %struct.Memory* %12
}














define %struct.Memory* @routine_jne_.L_45eeff(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x1__MINUS0x4a4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 1188
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x0__MINUS0x304__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 772
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_cmpl__0x2__MINUS0x304__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 772
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 2)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_45f33b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movslq_MINUS0x304__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 772
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x60__rbp__rax_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RAX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -96
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 4
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %19)
  ret %struct.Memory* %22
}


define %struct.Memory* @routine_movl__ecx__MINUS0x4bc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1212
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x4bc__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1212
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x48__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.is_self_atari(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jne_.L_45ef48(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x1__MINUS0x308__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 776
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_cmpl_0xb060b8___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 ptrtoint( %G_0xb060b8_type* @G_0xb060b8 to i64))
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jle_.L_45f008(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jle_.L_45ef7d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x0__MINUS0x4a4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 1188
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_45eff1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_addl__0x14___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 20)
  ret %struct.Memory* %12
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


define %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 12099168
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_cmpl_MINUS0x48__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 72
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


















define %struct.Memory* @routine_subl__0x14___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 20)
  ret %struct.Memory* %12
}




















define %struct.Memory* @routine_jne_.L_45f008(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_jne_.L_45f0d7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_45f00d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movl__0x0__MINUS0x4c0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 1216
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_MINUS0x4c0__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 1216
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_jge_.L_45f079(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movslq_MINUS0x4c0__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 1216
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_cmpl_MINUS0x4bc__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 1212
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jne_.L_45f060(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_jmpq_.L_45f079(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_45f065(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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


define %struct.Memory* @routine_jmpq_.L_45f017(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_jne_.L_45f0cd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jge_.L_45f0cd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


















define %struct.Memory* @routine_jmpq_.L_45f0d2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_45f0d7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_jg_.L_45f322(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x2___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 2)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_leaq_MINUS0x68__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 104
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_callq_.approxlib(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jne_.L_45f322(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_45f110(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movl__0x0__MINUS0x4c4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 1220
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_MINUS0x4c4__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 1220
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_jge_.L_45f179(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movslq_MINUS0x4c4__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 1220
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_cmpl_MINUS0x68__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 104
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jne_.L_45f160(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_jmpq_.L_45f179(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_45f165(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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


define %struct.Memory* @routine_jmpq_.L_45f11a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_jne_.L_45f1ca(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jge_.L_45f1ca(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_MINUS0x68__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}
















define %struct.Memory* @routine_jmpq_.L_45f1cf(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_cmpl__0x4__MINUS0x58__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 4)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_45f31d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movslq_MINUS0x58__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
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

define %struct.Memory* @routine_addl_0x7ae1b0___rcx_4____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %15 = add i64 %14, 8053168
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 7
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %15)
  ret %struct.Memory* %18
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


define %struct.Memory* @routine_movslq_MINUS0x4c8__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1224
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_jne_.L_45f30a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movl_MINUS0x4c8__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1224
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_jle_.L_45f30a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_leaq_MINUS0x50__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x2f0__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 752
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__eax__MINUS0x5a4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1444
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__0x0__MINUS0x4cc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 1228
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_MINUS0x4cc__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 1228
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_jge_.L_45f2af(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movslq_MINUS0x4cc__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 1228
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_cmpl_MINUS0x50__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 80
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jne_.L_45f296(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_jmpq_.L_45f2af(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_45f29b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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


define %struct.Memory* @routine_jmpq_.L_45f250(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_jne_.L_45f300(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jge_.L_45f300(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_MINUS0x50__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 80
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}
















define %struct.Memory* @routine_jmpq_.L_45f305(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_45f30a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_45f30f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_45f1d6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_45f322(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_45f327(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movl_MINUS0x304__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 772
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


define %struct.Memory* @routine_jmpq_.L_45ef09(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_cmpl__0x0__MINUS0x308__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 776
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_45f392(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jge_.L_45f38d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_leaq_MINUS0x4a0__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1184
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movl_MINUS0x60__rbp__rax_4____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RAX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -96
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 4
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %19)
  ret %struct.Memory* %22
}


define %struct.Memory* @routine_callq_.edge_block_moves(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jmpq_.L_45f352(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_45f392(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


















define %struct.Memory* @routine_jge_.L_45f420(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl_MINUS0x2f0__rbp__rax_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RAX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -752
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %19)
  ret %struct.Memory* %22
}


define %struct.Memory* @routine_movl__ecx__MINUS0x4d0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1232
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x60__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 96
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x4d0__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1232
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.liberty_of_string(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_je_.L_45f40d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_MINUS0x5c__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 92
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}












define %struct.Memory* @routine_movl_MINUS0x4d0__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1232
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_jmpq_.L_45f412(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_45f3b0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_leaq_MINUS0x4a0__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1184
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_leaq_MINUS0x60__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 96
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl_MINUS0x54__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 84
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x48__rbp____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 72
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_callq_.propose_edge_moves(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_xorl__r8d___r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = load i32, i32* %R8D
  %11 = zext i32 %10 to i64
  %12 = load i32, i32* %R8D
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3XORI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %9, i64 %11, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl_MINUS0x48__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 72
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_MINUS0x4b0__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1200
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.order_moves(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jge_.L_45f728(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movslq_MINUS0x304__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 772
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x4a0__rbp__rdx_4____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RDX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -1184
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %19)
  ret %struct.Memory* %22
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


define %struct.Memory* @routine_movl_MINUS0x4e0__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1248
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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


define %struct.Memory* @routine_movl_MINUS0x3c__rbp____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 60
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl_MINUS0x40__rbp____r9d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = bitcast i32* %R9D to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl_0xb54ce4___r10d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 21
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R10D = bitcast %union.anon* %8 to i32*
  %9 = bitcast i32* %R10D to i64*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 8
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %9, i64 ptrtoint( %G_0xb54ce4_type* @G_0xb54ce4 to i64))
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_cmpl_0xb8b850___r10d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 21
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R10D = bitcast %union.anon* %8 to i32*
  %9 = load i32, i32* %R10D
  %10 = zext i32 %9 to i64
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 ptrtoint( %G_0xb8b850_type* @G_0xb8b850 to i64))
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__r9d__MINUS0x5a8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1448
  %14 = load i32, i32* %R9D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 7
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__edi__MINUS0x5ac__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1452
  %14 = load i32, i32* %EDI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__esi__MINUS0x5b0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1456
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__eax__MINUS0x5b4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1460
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__r8d__MINUS0x5b8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1464
  %14 = load i32, i32* %R8D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 7
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i8
  %6 = inttoptr i64 %2 to i8*
  store i8 %5, i8* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movb__cl__MINUS0x5b9__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 1465
  %15 = load i8, i8* %CL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 6
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_jg_.L_45f4ea(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x0__MINUS0x2f8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 760
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L4SETZI3RnWIhEEEP6MemoryS4_R5StateT_(%struct.Memory* readnone returned, %struct.State* nocapture readonly dereferenceable(3376), i8* nocapture) #2 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %2, align 1
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_sete__al(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 3
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4SETZI3RnWIhEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i8* %AL)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movb__al__MINUS0x5b9__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 1465
  %15 = load i8, i8* %AL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 6
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

define %struct.Memory* @routine_movb_MINUS0x5b9__rbp____al(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 1465
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %AL, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__0x57fe22___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G__0x57fe22_type* @G__0x57fe22 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_leaq_MINUS0x4d4__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1236
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_leaq_MINUS0x4d8__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1240
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_leaq_MINUS0x4dc__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1244
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
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

define %struct.Memory* @routine_movzbl__al___r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 17
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %R8D = bitcast %union.anon* %12 to i32*
  %13 = bitcast i32* %R8D to i64*
  %14 = load i8, i8* %AL
  %15 = zext i8 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x5ac__rbp____r9d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = bitcast i32* %R9D to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 1452
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__rdi__MINUS0x5c8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1480
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__r9d___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %R9D
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x5b0__rbp____r10d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = bitcast i32* %R10D to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 1456
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__rsi__MINUS0x5d0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1488
  %14 = load i64, i64* %RSI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__r10d___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %R10D
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x5b4__rbp____r11d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 23
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R11D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = bitcast i32* %R11D to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 1460
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__rcx__MINUS0x5d8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1496
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__r11d___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 23
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R11D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %R11D
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x5b8__rbp____ebx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 1464
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RBX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__r8d__MINUS0x5dc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1500
  %14 = load i32, i32* %R8D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 7
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__ebx___r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EBX = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8D = bitcast %union.anon* %11 to i32*
  %12 = bitcast i32* %R8D to i64*
  %13 = load i32, i32* %EBX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl_MINUS0x5a8__rbp____r9d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = bitcast i32* %R9D to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 1448
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq_MINUS0x5d8__rbp____r14(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 29
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R14 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 1496
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R14, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__r14____rsp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 29
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R14 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSP
  %13 = load i64, i64* %R14
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_MINUS0x5d0__rbp____r15(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 31
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R15 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 1488
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R15, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__r15__0x8__rsp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 31
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R15 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSP
  %13 = add i64 %12, 8
  %14 = load i64, i64* %R15
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq_MINUS0x5c8__rbp____r12(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 25
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R12 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 1480
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__r12__0x10__rsp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 25
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R12 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSP
  %13 = add i64 %12, 16
  %14 = load i64, i64* %R12
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl_MINUS0x5dc__rbp____r13d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 27
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R13D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = bitcast i32* %R13D to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 1500
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__r13d__0x18__rsp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 27
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R13D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 13
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSP
  %13 = add i64 %12, 24
  %14 = load i32, i32* %R13D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 5
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_callq_.komaster_trymove(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_je_.L_45f70f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x0__MINUS0x4dc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 1244
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_45f6ad(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl_MINUS0x4d4__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1236
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x4d8__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1240
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.do_find_defense(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__eax__MINUS0x300__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 768
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_cmpl__0x5__MINUS0x300__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 768
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 5)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_45f6a3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_callq_.do_attack(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_callq_.popgo(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x0__MINUS0x300__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 768
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_45f660(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpq__0x0__MINUS0x38__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 5
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_45f61e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_MINUS0x4e0__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 1248
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
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




define %struct.Memory* @routine_je_.L_45f654(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x5___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 5)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__0x57e5fb___r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 ptrtoint( %G__0x57e5fb_type* @G__0x57e5fb to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movl_MINUS0x4e0__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1248
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__0x5__MINUS0x2c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 5)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_movl__0x5___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 5)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_subl_MINUS0x300__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = sub i64 %13, 768
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_cmpl_MINUS0x2f8__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 760
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jle_.L_45f694(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl_MINUS0x4e0__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1248
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__ecx__MINUS0x2f4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 756
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movl__eax__MINUS0x2f8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 760
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_45f699(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_45f69e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_45f6a8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_jmpq_.L_45f70a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}














define %struct.Memory* @routine_cmpl__0x5___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 5)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_45f705(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




















define %struct.Memory* @routine_movl__eax__MINUS0x2f4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 756
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__0x1__MINUS0x2f8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 760
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_jmpq_.L_45f70f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_45f714(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_45f460(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_leaq_MINUS0x50__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 80
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl_MINUS0x60__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 96
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x5c__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 92
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_callq_.find_cap2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__eax__MINUS0x2fc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 764
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_subl_MINUS0x2fc__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = sub i64 %13, 764
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_jne_.L_45f7af(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_je_.L_45f770(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_je_.L_45f7a3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movq__0x57fe2c___r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 ptrtoint( %G__0x57fe2c_type* @G__0x57fe2c to i64))
  ret %struct.Memory* %11
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












define %struct.Memory* @routine_subl_MINUS0x2fc__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 764
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %14)
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




define %struct.Memory* @routine_jle_.L_45f7e8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl_MINUS0x50__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 80
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}












define %struct.Memory* @routine_jmpq_.L_45f7ed(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_45f7f2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_jg_.L_45f8d2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_movl_MINUS0x3c__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 60
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x40__rbp____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_callq_.special_attack2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_jne_.L_45f88a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_je_.L_45f84b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_je_.L_45f87e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movq__0x57fe36___r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 ptrtoint( %G__0x57fe36_type* @G__0x57fe36 to i64))
  ret %struct.Memory* %11
}
























define %struct.Memory* @routine_jle_.L_45f8c3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
















define %struct.Memory* @routine_jmpq_.L_45f8c8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_45f8cd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_45f8d2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_jg_.L_45f9b2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_callq_.special_attack3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_jne_.L_45f96a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_je_.L_45f92b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_je_.L_45f95e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movq__0x57fe46___r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 ptrtoint( %G__0x57fe46_type* @G__0x57fe46 to i64))
  ret %struct.Memory* %11
}
























define %struct.Memory* @routine_jle_.L_45f9a3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
















define %struct.Memory* @routine_jmpq_.L_45f9a8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_45f9ad(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_45f9b2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_jg_.L_45fa92(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_callq_.special_attack4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_jne_.L_45fa4a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_je_.L_45fa0b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_je_.L_45fa3e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movq__0x57fe56___r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 ptrtoint( %G__0x57fe56_type* @G__0x57fe56 to i64))
  ret %struct.Memory* %11
}
























define %struct.Memory* @routine_jle_.L_45fa83(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
















define %struct.Memory* @routine_jmpq_.L_45fa88(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_45fa8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_45fa92(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_cmpl__0xa__0x7ae448(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x7ae448_type* @G_0x7ae448 to i64), i64 10)
  ret %struct.Memory* %8
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

define %struct.Memory* @routine_jl_.L_45fe35(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jg_.L_45fe35(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpl_0xafd960___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 ptrtoint( %G_0xafd960_type* @G_0xafd960 to i64))
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jle_.L_45fad5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jne_.L_45fe35(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x2__MINUS0x554__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 1364
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 2)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_cmpl_0xb8af28___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 ptrtoint( %G_0xb8af28_type* @G_0xb8af28 to i64))
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jg_.L_45fafd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x3__MINUS0x554__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 1364
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 3)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_leaq_MINUS0x4e4__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1252
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_leaq_MINUS0x550__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1360
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl_MINUS0x554__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1364
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.find_superstring_liberties(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x5__MINUS0x4e4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 1252
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 5)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jg_.L_45fe30(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_cmpl_MINUS0x4e4__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 1252
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_45fe2b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl_MINUS0x550__rbp__rax_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RAX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -1360
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %19)
  ret %struct.Memory* %22
}


define %struct.Memory* @routine_movl__ecx__MINUS0x558__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1368
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x558__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1368
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x30__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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






define %struct.Memory* @routine_je_.L_45fb72(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_45fe17(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movq__0x57fe66___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G__0x57fe66_type* @G__0x57fe66 to i64))
  ret %struct.Memory* %11
}












define %struct.Memory* @routine_callq_.trymove(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_je_.L_45fe12(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jne_.L_45fd15(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__esi___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x50__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 80
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
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






define %struct.Memory* @routine_jle_.L_45fd0b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movq__0x57fe70___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G__0x57fe70_type* @G__0x57fe70 to i64))
  ret %struct.Memory* %11
}
















define %struct.Memory* @routine_je_.L_45fd06(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_movl_MINUS0x3c__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 60
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x40__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_je_.L_45fcfc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






















define %struct.Memory* @routine_jne_.L_45fcbc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_je_.L_45fc7d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_je_.L_45fcb0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
























define %struct.Memory* @routine_jle_.L_45fced(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_jmpq_.L_45fcf2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_45fcf7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_45fd01(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_jmpq_.L_45fd06(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_45fd10(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_jmpq_.L_45fe0d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


















define %struct.Memory* @routine_je_.L_45fe03(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






















define %struct.Memory* @routine_jne_.L_45fdc0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_je_.L_45fd7e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_MINUS0x558__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 1368
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_je_.L_45fdb4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_movl_MINUS0x558__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1368
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}














define %struct.Memory* @routine_jle_.L_45fdf4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl_MINUS0x558__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_jmpq_.L_45fdf9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_45fdfe(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_45fe08(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_jmpq_.L_45fe12(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}










define %struct.Memory* @routine_jmpq_.L_45fb30(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_45fe30(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_45fe35(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_jne_.L_45fe7f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_45fe47(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_je_.L_45fe73(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






















define %struct.Memory* @routine_jmpq_.L_45fe84(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_je_.L_45fee4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_je_.L_45fea8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_MINUS0x2f4__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 756
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_je_.L_45fedf(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x57f60a___r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 ptrtoint( %G__0x57f60a_type* @G__0x57f60a to i64))
  ret %struct.Memory* %11
}






define %struct.Memory* @routine_movl_MINUS0x2f4__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 756
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x2f8__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 760
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_jmpq_.L_45ff15(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_je_.L_45ff10(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




















define %struct.Memory* @routine_movl_MINUS0x2f8__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 760
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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

define %struct.Memory* @routine_addq__0x5d8___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 1496)
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

define %struct.Memory* @routine_popq__rbx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 1
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3POPI3RnWImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64* %RBX)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_popq__r12(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 25
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R12 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 2
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3POPI3RnWImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64* %R12)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_popq__r13(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 27
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R13 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 2
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3POPI3RnWImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64* %R13)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_popq__r14(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 29
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R14 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 2
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3POPI3RnWImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64* %R14)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_popq__r15(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 31
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R15 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 2
  store i64 %10, i64* %PC
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3POPI3RnWImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64* %R15)
  ret %struct.Memory* %11
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

