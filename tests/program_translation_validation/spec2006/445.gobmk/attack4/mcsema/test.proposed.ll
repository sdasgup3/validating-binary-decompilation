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

declare %struct.Memory* @sub_452090.abortgo(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_417fc0.sgf_trace(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_413c20.chainlinks2(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_461d90.break_chain_moves(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_40f840.findlib(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_461ef0.double_atari_chain2_moves(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4142a0.is_self_atari(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_462130.edge_closing_backfill(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4623f0.edge_block_moves(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4626b0.propose_edge_moves(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_462c90.order_moves(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_40edf0.komaster_trymove(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_463620.do_find_defense(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_45dce0.do_attack(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_40dd60.popgo(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_463930.find_cap(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Data Access Globals
%G_0xab0ef8_type = type <{ [1 x i8] }>
@G_0xab0ef8= global %G_0xab0ef8_type <{ [1 x i8] c"\00" }>
%G_0xae23a4_type = type <{ [4 x i8] }>
@G_0xae23a4= global %G_0xae23a4_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0xb060b8_type = type <{ [4 x i8] }>
@G_0xb060b8= global %G_0xb060b8_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0xb54ce4_type = type <{ [4 x i8] }>
@G_0xb54ce4= global %G_0xb54ce4_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0xb6308c_type = type <{ [4 x i8] }>
@G_0xb6308c= global %G_0xb6308c_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0xb8b854_type = type <{ [4 x i8] }>
@G_0xb8b854= global %G_0xb8b854_type <{ [4 x i8] c"\00\00\00\00" }>
%G__0x57e5fb_type = type <{ [8 x i8] }>
@G__0x57e5fb= global %G__0x57e5fb_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57f60a_type = type <{ [8 x i8] }>
@G__0x57f60a= global %G__0x57f60a_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57fb0d_type = type <{ [8 x i8] }>
@G__0x57fb0d= global %G__0x57fb0d_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57fbff_type = type <{ [8 x i8] }>
@G__0x57fbff= global %G__0x57fbff_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57fc28_type = type <{ [8 x i8] }>
@G__0x57fc28= global %G__0x57fc28_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57fc32_type = type <{ [8 x i8] }>
@G__0x57fc32= global %G__0x57fc32_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57fc5b_type = type <{ [8 x i8] }>
@G__0x57fc5b= global %G__0x57fc5b_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57fce9_type = type <{ [8 x i8] }>
@G__0x57fce9= global %G__0x57fce9_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57fe5e_type = type <{ [8 x i8] }>
@G__0x57fe5e= global %G__0x57fe5e_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>


define %struct.Memory* @attack4(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .attack4:	 RIP: 461390	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 461390	 Bytes: 1
  %loadMem_461390 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461390 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461390)
  store %struct.Memory* %call_461390, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 461391	 Bytes: 3
  %loadMem_461391 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461391 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461391)
  store %struct.Memory* %call_461391, %struct.Memory** %MEMORY

  ; Code: pushq %r14	 RIP: 461394	 Bytes: 2
  %loadMem_461394 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461394 = call %struct.Memory* @routine_pushq__r14(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461394)
  store %struct.Memory* %call_461394, %struct.Memory** %MEMORY

  ; Code: pushq %rbx	 RIP: 461396	 Bytes: 1
  %loadMem_461396 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461396 = call %struct.Memory* @routine_pushq__rbx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461396)
  store %struct.Memory* %call_461396, %struct.Memory** %MEMORY

  ; Code: subq $0x4f0, %rsp	 RIP: 461397	 Bytes: 7
  %loadMem_461397 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461397 = call %struct.Memory* @routine_subq__0x4f0___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461397)
  store %struct.Memory* %call_461397, %struct.Memory** %MEMORY

  ; Code: movq $0x57fe5e, %rax	 RIP: 46139e	 Bytes: 10
  %loadMem_46139e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46139e = call %struct.Memory* @routine_movq__0x57fe5e___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46139e)
  store %struct.Memory* %call_46139e, %struct.Memory** %MEMORY

  ; Code: movl $0x3, %r8d	 RIP: 4613a8	 Bytes: 6
  %loadMem_4613a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4613a8 = call %struct.Memory* @routine_movl__0x3___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4613a8)
  store %struct.Memory* %call_4613a8, %struct.Memory** %MEMORY

  ; Code: movl %edi, -0x18(%rbp)	 RIP: 4613ae	 Bytes: 3
  %loadMem_4613ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4613ae = call %struct.Memory* @routine_movl__edi__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4613ae)
  store %struct.Memory* %call_4613ae, %struct.Memory** %MEMORY

  ; Code: movq %rsi, -0x20(%rbp)	 RIP: 4613b1	 Bytes: 4
  %loadMem_4613b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4613b1 = call %struct.Memory* @routine_movq__rsi__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4613b1)
  store %struct.Memory* %call_4613b1, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x24(%rbp)	 RIP: 4613b5	 Bytes: 3
  %loadMem_4613b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4613b5 = call %struct.Memory* @routine_movl__edx__MINUS0x24__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4613b5)
  store %struct.Memory* %call_4613b5, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x28(%rbp)	 RIP: 4613b8	 Bytes: 3
  %loadMem_4613b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4613b8 = call %struct.Memory* @routine_movl__ecx__MINUS0x28__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4613b8)
  store %struct.Memory* %call_4613b8, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rsi	 RIP: 4613bb	 Bytes: 4
  %loadMem_4613bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4613bb = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4613bb)
  store %struct.Memory* %call_4613bb, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rsi,1), %ecx	 RIP: 4613bf	 Bytes: 8
  %loadMem_4613bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4613bf = call %struct.Memory* @routine_movzbl_0xb89e60___rsi_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4613bf)
  store %struct.Memory* %call_4613bf, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x2c(%rbp)	 RIP: 4613c7	 Bytes: 3
  %loadMem_4613c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4613c7 = call %struct.Memory* @routine_movl__ecx__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4613c7)
  store %struct.Memory* %call_4613c7, %struct.Memory** %MEMORY

  ; Code: subl -0x2c(%rbp), %r8d	 RIP: 4613ca	 Bytes: 4
  %loadMem_4613ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4613ca = call %struct.Memory* @routine_subl_MINUS0x2c__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4613ca)
  store %struct.Memory* %call_4613ca, %struct.Memory** %MEMORY

  ; Code: movl %r8d, -0x30(%rbp)	 RIP: 4613ce	 Bytes: 4
  %loadMem_4613ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4613ce = call %struct.Memory* @routine_movl__r8d__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4613ce)
  store %struct.Memory* %call_4613ce, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x2e4(%rbp)	 RIP: 4613d2	 Bytes: 10
  %loadMem_4613d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4613d2 = call %struct.Memory* @routine_movl__0x0__MINUS0x2e4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4613d2)
  store %struct.Memory* %call_4613d2, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x47c(%rbp)	 RIP: 4613dc	 Bytes: 10
  %loadMem_4613dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4613dc = call %struct.Memory* @routine_movl__0x0__MINUS0x47c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4613dc)
  store %struct.Memory* %call_4613dc, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x480(%rbp)	 RIP: 4613e6	 Bytes: 10
  %loadMem_4613e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4613e6 = call %struct.Memory* @routine_movl__0x0__MINUS0x480__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4613e6)
  store %struct.Memory* %call_4613e6, %struct.Memory** %MEMORY

  ; Code: movq %rax, -0x488(%rbp)	 RIP: 4613f0	 Bytes: 7
  %loadMem_4613f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4613f0 = call %struct.Memory* @routine_movq__rax__MINUS0x488__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4613f0)
  store %struct.Memory* %call_4613f0, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %ecx	 RIP: 4613f7	 Bytes: 3
  %loadMem_4613f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4613f7 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4613f7)
  store %struct.Memory* %call_4613f7, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x48c(%rbp)	 RIP: 4613fa	 Bytes: 6
  %loadMem_4613fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4613fa = call %struct.Memory* @routine_movl__ecx__MINUS0x48c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4613fa)
  store %struct.Memory* %call_4613fa, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rax	 RIP: 461400	 Bytes: 4
  %loadMem_461400 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461400 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461400)
  store %struct.Memory* %call_461400, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 461404	 Bytes: 8
  %loadMem_461404 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461404 = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461404)
  store %struct.Memory* %call_461404, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, %ecx	 RIP: 46140c	 Bytes: 3
  %loadMem_46140c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46140c = call %struct.Memory* @routine_cmpl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46140c)
  store %struct.Memory* %call_46140c, %struct.Memory** %MEMORY

  ; Code: je .L_46142a	 RIP: 46140f	 Bytes: 6
  %loadMem_46140f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46140f = call %struct.Memory* @routine_je_.L_46142a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46140f, i8* %BRANCH_TAKEN, i64 27, i64 6, i64 6)
  store %struct.Memory* %call_46140f, %struct.Memory** %MEMORY

  %loadBr_46140f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46140f = icmp eq i8 %loadBr_46140f, 1
  br i1 %cmpBr_46140f, label %block_.L_46142a, label %block_461415

block_461415:
  ; Code: movslq -0x18(%rbp), %rax	 RIP: 461415	 Bytes: 4
  %loadMem_461415 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461415 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461415)
  store %struct.Memory* %call_461415, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 461419	 Bytes: 8
  %loadMem_461419 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461419 = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461419)
  store %struct.Memory* %call_461419, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, %ecx	 RIP: 461421	 Bytes: 3
  %loadMem_461421 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461421 = call %struct.Memory* @routine_cmpl__0x2___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461421)
  store %struct.Memory* %call_461421, %struct.Memory** %MEMORY

  ; Code: jne .L_46142f	 RIP: 461424	 Bytes: 6
  %loadMem_461424 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461424 = call %struct.Memory* @routine_jne_.L_46142f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461424, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_461424, %struct.Memory** %MEMORY

  %loadBr_461424 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_461424 = icmp eq i8 %loadBr_461424, 1
  br i1 %cmpBr_461424, label %block_.L_46142f, label %block_.L_46142a

  ; Code: .L_46142a:	 RIP: 46142a	 Bytes: 0
block_.L_46142a:

  ; Code: jmpq .L_461457	 RIP: 46142a	 Bytes: 5
  %loadMem_46142a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46142a = call %struct.Memory* @routine_jmpq_.L_461457(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46142a, i64 45, i64 5)
  store %struct.Memory* %call_46142a, %struct.Memory** %MEMORY

  br label %block_.L_461457

  ; Code: .L_46142f:	 RIP: 46142f	 Bytes: 0
block_.L_46142f:

  ; Code: movq $0x57fb0d, %rdi	 RIP: 46142f	 Bytes: 10
  %loadMem_46142f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46142f = call %struct.Memory* @routine_movq__0x57fb0d___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46142f)
  store %struct.Memory* %call_46142f, %struct.Memory** %MEMORY

  ; Code: movl $0xbcc, %esi	 RIP: 461439	 Bytes: 5
  %loadMem_461439 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461439 = call %struct.Memory* @routine_movl__0xbcc___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461439)
  store %struct.Memory* %call_461439, %struct.Memory** %MEMORY

  ; Code: movq $0x57fbff, %rdx	 RIP: 46143e	 Bytes: 10
  %loadMem_46143e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46143e = call %struct.Memory* @routine_movq__0x57fbff___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46143e)
  store %struct.Memory* %call_46143e, %struct.Memory** %MEMORY

  ; Code: movl $0xffffffff, %eax	 RIP: 461448	 Bytes: 5
  %loadMem_461448 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461448 = call %struct.Memory* @routine_movl__0xffffffff___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461448)
  store %struct.Memory* %call_461448, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 46144d	 Bytes: 2
  %loadMem_46144d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46144d = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46144d)
  store %struct.Memory* %call_46144d, %struct.Memory** %MEMORY

  ; Code: movl %eax, %r8d	 RIP: 46144f	 Bytes: 3
  %loadMem_46144f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46144f = call %struct.Memory* @routine_movl__eax___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46144f)
  store %struct.Memory* %call_46144f, %struct.Memory** %MEMORY

  ; Code: callq .abortgo	 RIP: 461452	 Bytes: 5
  %loadMem1_461452 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_461452 = call %struct.Memory* @routine_callq_.abortgo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_461452, i64 -62402, i64 5, i64 5)
  store %struct.Memory* %call1_461452, %struct.Memory** %MEMORY

  %loadMem2_461452 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_461452 = load i64, i64* %3
  %call2_461452 = call %struct.Memory* @sub_452090.abortgo(%struct.State* %0, i64  %loadPC_461452, %struct.Memory* %loadMem2_461452)
  store %struct.Memory* %call2_461452, %struct.Memory** %MEMORY

  ; Code: .L_461457:	 RIP: 461457	 Bytes: 0
  br label %block_.L_461457
block_.L_461457:

  ; Code: movl 0xae23a4, %eax	 RIP: 461457	 Bytes: 7
  %loadMem_461457 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461457 = call %struct.Memory* @routine_movl_0xae23a4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461457)
  store %struct.Memory* %call_461457, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 46145e	 Bytes: 3
  %loadMem_46145e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46145e = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46145e)
  store %struct.Memory* %call_46145e, %struct.Memory** %MEMORY

  ; Code: movl %eax, 0xae23a4	 RIP: 461461	 Bytes: 7
  %loadMem_461461 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461461 = call %struct.Memory* @routine_movl__eax__0xae23a4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461461)
  store %struct.Memory* %call_461461, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x2e8(%rbp)	 RIP: 461468	 Bytes: 10
  %loadMem_461468 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461468 = call %struct.Memory* @routine_movl__0x0__MINUS0x2e8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461468)
  store %struct.Memory* %call_461468, %struct.Memory** %MEMORY

  ; Code: movl 0xb54ce4, %eax	 RIP: 461472	 Bytes: 7
  %loadMem_461472 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461472 = call %struct.Memory* @routine_movl_0xb54ce4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461472)
  store %struct.Memory* %call_461472, %struct.Memory** %MEMORY

  ; Code: cmpl 0xb8b854, %eax	 RIP: 461479	 Bytes: 7
  %loadMem_461479 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461479 = call %struct.Memory* @routine_cmpl_0xb8b854___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461479)
  store %struct.Memory* %call_461479, %struct.Memory** %MEMORY

  ; Code: jle .L_4614c3	 RIP: 461480	 Bytes: 6
  %loadMem_461480 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461480 = call %struct.Memory* @routine_jle_.L_4614c3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461480, i8* %BRANCH_TAKEN, i64 67, i64 6, i64 6)
  store %struct.Memory* %call_461480, %struct.Memory** %MEMORY

  %loadBr_461480 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_461480 = icmp eq i8 %loadBr_461480, 1
  br i1 %cmpBr_461480, label %block_.L_4614c3, label %block_461486

block_461486:
  ; Code: cmpq $0x0, 0xab0ef8	 RIP: 461486	 Bytes: 9
  %loadMem_461486 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461486 = call %struct.Memory* @routine_cmpq__0x0__0xab0ef8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461486)
  store %struct.Memory* %call_461486, %struct.Memory** %MEMORY

  ; Code: je .L_4614b7	 RIP: 46148f	 Bytes: 6
  %loadMem_46148f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46148f = call %struct.Memory* @routine_je_.L_4614b7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46148f, i8* %BRANCH_TAKEN, i64 40, i64 6, i64 6)
  store %struct.Memory* %call_46148f, %struct.Memory** %MEMORY

  %loadBr_46148f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46148f = icmp eq i8 %loadBr_46148f, 1
  br i1 %cmpBr_46148f, label %block_.L_4614b7, label %block_461495

block_461495:
  ; Code: xorl %eax, %eax	 RIP: 461495	 Bytes: 2
  %loadMem_461495 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461495 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461495)
  store %struct.Memory* %call_461495, %struct.Memory** %MEMORY

  ; Code: movq $0x57fc5b, %r8	 RIP: 461497	 Bytes: 10
  %loadMem_461497 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461497 = call %struct.Memory* @routine_movq__0x57fc5b___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461497)
  store %struct.Memory* %call_461497, %struct.Memory** %MEMORY

  ; Code: movq -0x488(%rbp), %rdi	 RIP: 4614a1	 Bytes: 7
  %loadMem_4614a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4614a1 = call %struct.Memory* @routine_movq_MINUS0x488__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4614a1)
  store %struct.Memory* %call_4614a1, %struct.Memory** %MEMORY

  ; Code: movl -0x48c(%rbp), %esi	 RIP: 4614a8	 Bytes: 6
  %loadMem_4614a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4614a8 = call %struct.Memory* @routine_movl_MINUS0x48c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4614a8)
  store %struct.Memory* %call_4614a8, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 4614ae	 Bytes: 2
  %loadMem_4614ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4614ae = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4614ae)
  store %struct.Memory* %call_4614ae, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 4614b0	 Bytes: 2
  %loadMem_4614b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4614b0 = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4614b0)
  store %struct.Memory* %call_4614b0, %struct.Memory** %MEMORY

  ; Code: callq .sgf_trace	 RIP: 4614b2	 Bytes: 5
  %loadMem1_4614b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4614b2 = call %struct.Memory* @routine_callq_.sgf_trace(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4614b2, i64 -300274, i64 5, i64 5)
  store %struct.Memory* %call1_4614b2, %struct.Memory** %MEMORY

  %loadMem2_4614b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4614b2 = load i64, i64* %3
  %call2_4614b2 = call %struct.Memory* @sub_417fc0.sgf_trace(%struct.State* %0, i64  %loadPC_4614b2, %struct.Memory* %loadMem2_4614b2)
  store %struct.Memory* %call2_4614b2, %struct.Memory** %MEMORY

  ; Code: .L_4614b7:	 RIP: 4614b7	 Bytes: 0
  br label %block_.L_4614b7
block_.L_4614b7:

  ; Code: movl $0x0, -0x14(%rbp)	 RIP: 4614b7	 Bytes: 7
  %loadMem_4614b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4614b7 = call %struct.Memory* @routine_movl__0x0__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4614b7)
  store %struct.Memory* %call_4614b7, %struct.Memory** %MEMORY

  ; Code: jmpq .L_461d7b	 RIP: 4614be	 Bytes: 5
  %loadMem_4614be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4614be = call %struct.Memory* @routine_jmpq_.L_461d7b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4614be, i64 2237, i64 5)
  store %struct.Memory* %call_4614be, %struct.Memory** %MEMORY

  br label %block_.L_461d7b

  ; Code: .L_4614c3:	 RIP: 4614c3	 Bytes: 0
block_.L_4614c3:

  ; Code: movl $0x1, %edx	 RIP: 4614c3	 Bytes: 5
  %loadMem_4614c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4614c3 = call %struct.Memory* @routine_movl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4614c3)
  store %struct.Memory* %call_4614c3, %struct.Memory** %MEMORY

  ; Code: leaq -0x2e0(%rbp), %rsi	 RIP: 4614c8	 Bytes: 7
  %loadMem_4614c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4614c8 = call %struct.Memory* @routine_leaq_MINUS0x2e0__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4614c8)
  store %struct.Memory* %call_4614c8, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %edi	 RIP: 4614cf	 Bytes: 3
  %loadMem_4614cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4614cf = call %struct.Memory* @routine_movl_MINUS0x18__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4614cf)
  store %struct.Memory* %call_4614cf, %struct.Memory** %MEMORY

  ; Code: callq .chainlinks2	 RIP: 4614d2	 Bytes: 5
  %loadMem1_4614d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4614d2 = call %struct.Memory* @routine_callq_.chainlinks2(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4614d2, i64 -317618, i64 5, i64 5)
  store %struct.Memory* %call1_4614d2, %struct.Memory** %MEMORY

  %loadMem2_4614d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4614d2 = load i64, i64* %3
  %call2_4614d2 = call %struct.Memory* @sub_413c20.chainlinks2(%struct.State* %0, i64  %loadPC_4614d2, %struct.Memory* %loadMem2_4614d2)
  store %struct.Memory* %call2_4614d2, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x54(%rbp)	 RIP: 4614d7	 Bytes: 3
  %loadMem_4614d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4614d7 = call %struct.Memory* @routine_movl__eax__MINUS0x54__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4614d7)
  store %struct.Memory* %call_4614d7, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x38(%rbp)	 RIP: 4614da	 Bytes: 7
  %loadMem_4614da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4614da = call %struct.Memory* @routine_movl__0x0__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4614da)
  store %struct.Memory* %call_4614da, %struct.Memory** %MEMORY

  ; Code: .L_4614e1:	 RIP: 4614e1	 Bytes: 0
  br label %block_.L_4614e1
block_.L_4614e1:

  ; Code: movl -0x38(%rbp), %eax	 RIP: 4614e1	 Bytes: 3
  %loadMem_4614e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4614e1 = call %struct.Memory* @routine_movl_MINUS0x38__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4614e1)
  store %struct.Memory* %call_4614e1, %struct.Memory** %MEMORY

  ; Code: cmpl -0x54(%rbp), %eax	 RIP: 4614e4	 Bytes: 3
  %loadMem_4614e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4614e4 = call %struct.Memory* @routine_cmpl_MINUS0x54__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4614e4)
  store %struct.Memory* %call_4614e4, %struct.Memory** %MEMORY

  ; Code: jge .L_4615fe	 RIP: 4614e7	 Bytes: 6
  %loadMem_4614e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4614e7 = call %struct.Memory* @routine_jge_.L_4615fe(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4614e7, i8* %BRANCH_TAKEN, i64 279, i64 6, i64 6)
  store %struct.Memory* %call_4614e7, %struct.Memory** %MEMORY

  %loadBr_4614e7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4614e7 = icmp eq i8 %loadBr_4614e7, 1
  br i1 %cmpBr_4614e7, label %block_.L_4615fe, label %block_4614ed

block_4614ed:
  ; Code: leaq -0x478(%rbp), %rsi	 RIP: 4614ed	 Bytes: 7
  %loadMem_4614ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4614ed = call %struct.Memory* @routine_leaq_MINUS0x478__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4614ed)
  store %struct.Memory* %call_4614ed, %struct.Memory** %MEMORY

  ; Code: movslq -0x38(%rbp), %rax	 RIP: 4614f4	 Bytes: 4
  %loadMem_4614f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4614f4 = call %struct.Memory* @routine_movslq_MINUS0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4614f4)
  store %struct.Memory* %call_4614f4, %struct.Memory** %MEMORY

  ; Code: movl -0x2e0(%rbp,%rax,4), %edi	 RIP: 4614f8	 Bytes: 7
  %loadMem_4614f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4614f8 = call %struct.Memory* @routine_movl_MINUS0x2e0__rbp__rax_4____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4614f8)
  store %struct.Memory* %call_4614f8, %struct.Memory** %MEMORY

  ; Code: callq .break_chain_moves	 RIP: 4614ff	 Bytes: 5
  %loadMem1_4614ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4614ff = call %struct.Memory* @routine_callq_.break_chain_moves(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4614ff, i64 2193, i64 5, i64 5)
  store %struct.Memory* %call1_4614ff, %struct.Memory** %MEMORY

  %loadMem2_4614ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4614ff = load i64, i64* %3
  %call2_4614ff = call %struct.Memory* @sub_461d90.break_chain_moves(%struct.State* %0, i64  %loadPC_4614ff, %struct.Memory* %loadMem2_4614ff)
  store %struct.Memory* %call2_4614ff, %struct.Memory** %MEMORY

  ; Code: movl $0x1, %esi	 RIP: 461504	 Bytes: 5
  %loadMem_461504 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461504 = call %struct.Memory* @routine_movl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461504)
  store %struct.Memory* %call_461504, %struct.Memory** %MEMORY

  ; Code: leaq -0x490(%rbp), %rdx	 RIP: 461509	 Bytes: 7
  %loadMem_461509 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461509 = call %struct.Memory* @routine_leaq_MINUS0x490__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461509)
  store %struct.Memory* %call_461509, %struct.Memory** %MEMORY

  ; Code: movslq -0x38(%rbp), %rax	 RIP: 461510	 Bytes: 4
  %loadMem_461510 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461510 = call %struct.Memory* @routine_movslq_MINUS0x38__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461510)
  store %struct.Memory* %call_461510, %struct.Memory** %MEMORY

  ; Code: movl -0x2e0(%rbp,%rax,4), %edi	 RIP: 461514	 Bytes: 7
  %loadMem_461514 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461514 = call %struct.Memory* @routine_movl_MINUS0x2e0__rbp__rax_4____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461514)
  store %struct.Memory* %call_461514, %struct.Memory** %MEMORY

  ; Code: callq .findlib	 RIP: 46151b	 Bytes: 5
  %loadMem1_46151b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46151b = call %struct.Memory* @routine_callq_.findlib(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46151b, i64 -335067, i64 5, i64 5)
  store %struct.Memory* %call1_46151b, %struct.Memory** %MEMORY

  %loadMem2_46151b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46151b = load i64, i64* %3
  %call2_46151b = call %struct.Memory* @sub_40f840.findlib(%struct.State* %0, i64  %loadPC_46151b, %struct.Memory* %loadMem2_46151b)
  store %struct.Memory* %call2_46151b, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4b4(%rbp)	 RIP: 461520	 Bytes: 6
  %loadMem_461520 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461520 = call %struct.Memory* @routine_movl__eax__MINUS0x4b4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461520)
  store %struct.Memory* %call_461520, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x494(%rbp)	 RIP: 461526	 Bytes: 10
  %loadMem_461526 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461526 = call %struct.Memory* @routine_movl__0x0__MINUS0x494__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461526)
  store %struct.Memory* %call_461526, %struct.Memory** %MEMORY

  ; Code: .L_461530:	 RIP: 461530	 Bytes: 0
  br label %block_.L_461530
block_.L_461530:

  ; Code: movl -0x494(%rbp), %eax	 RIP: 461530	 Bytes: 6
  %loadMem_461530 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461530 = call %struct.Memory* @routine_movl_MINUS0x494__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461530)
  store %struct.Memory* %call_461530, %struct.Memory** %MEMORY

  ; Code: cmpl -0x2e8(%rbp), %eax	 RIP: 461536	 Bytes: 6
  %loadMem_461536 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461536 = call %struct.Memory* @routine_cmpl_MINUS0x2e8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461536)
  store %struct.Memory* %call_461536, %struct.Memory** %MEMORY

  ; Code: jge .L_461592	 RIP: 46153c	 Bytes: 6
  %loadMem_46153c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46153c = call %struct.Memory* @routine_jge_.L_461592(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46153c, i8* %BRANCH_TAKEN, i64 86, i64 6, i64 6)
  store %struct.Memory* %call_46153c, %struct.Memory** %MEMORY

  %loadBr_46153c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46153c = icmp eq i8 %loadBr_46153c, 1
  br i1 %cmpBr_46153c, label %block_.L_461592, label %block_461542

block_461542:
  ; Code: movslq -0x494(%rbp), %rax	 RIP: 461542	 Bytes: 7
  %loadMem_461542 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461542 = call %struct.Memory* @routine_movslq_MINUS0x494__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461542)
  store %struct.Memory* %call_461542, %struct.Memory** %MEMORY

  ; Code: movl -0x478(%rbp,%rax,4), %ecx	 RIP: 461549	 Bytes: 7
  %loadMem_461549 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461549 = call %struct.Memory* @routine_movl_MINUS0x478__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461549)
  store %struct.Memory* %call_461549, %struct.Memory** %MEMORY

  ; Code: cmpl -0x490(%rbp), %ecx	 RIP: 461550	 Bytes: 6
  %loadMem_461550 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461550 = call %struct.Memory* @routine_cmpl_MINUS0x490__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461550)
  store %struct.Memory* %call_461550, %struct.Memory** %MEMORY

  ; Code: jne .L_461579	 RIP: 461556	 Bytes: 6
  %loadMem_461556 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461556 = call %struct.Memory* @routine_jne_.L_461579(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461556, i8* %BRANCH_TAKEN, i64 35, i64 6, i64 6)
  store %struct.Memory* %call_461556, %struct.Memory** %MEMORY

  %loadBr_461556 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_461556 = icmp eq i8 %loadBr_461556, 1
  br i1 %cmpBr_461556, label %block_.L_461579, label %block_46155c

block_46155c:
  ; Code: movslq -0x494(%rbp), %rax	 RIP: 46155c	 Bytes: 7
  %loadMem_46155c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46155c = call %struct.Memory* @routine_movslq_MINUS0x494__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46155c)
  store %struct.Memory* %call_46155c, %struct.Memory** %MEMORY

  ; Code: movl -0x3b0(%rbp,%rax,4), %ecx	 RIP: 461563	 Bytes: 7
  %loadMem_461563 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461563 = call %struct.Memory* @routine_movl_MINUS0x3b0__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461563)
  store %struct.Memory* %call_461563, %struct.Memory** %MEMORY

  ; Code: addl $0x0, %ecx	 RIP: 46156a	 Bytes: 3
  %loadMem_46156a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46156a = call %struct.Memory* @routine_addl__0x0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46156a)
  store %struct.Memory* %call_46156a, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x3b0(%rbp,%rax,4)	 RIP: 46156d	 Bytes: 7
  %loadMem_46156d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46156d = call %struct.Memory* @routine_movl__ecx__MINUS0x3b0__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46156d)
  store %struct.Memory* %call_46156d, %struct.Memory** %MEMORY

  ; Code: jmpq .L_461592	 RIP: 461574	 Bytes: 5
  %loadMem_461574 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461574 = call %struct.Memory* @routine_jmpq_.L_461592(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461574, i64 30, i64 5)
  store %struct.Memory* %call_461574, %struct.Memory** %MEMORY

  br label %block_.L_461592

  ; Code: .L_461579:	 RIP: 461579	 Bytes: 0
block_.L_461579:

  ; Code: jmpq .L_46157e	 RIP: 461579	 Bytes: 5
  %loadMem_461579 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461579 = call %struct.Memory* @routine_jmpq_.L_46157e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461579, i64 5, i64 5)
  store %struct.Memory* %call_461579, %struct.Memory** %MEMORY

  br label %block_.L_46157e

  ; Code: .L_46157e:	 RIP: 46157e	 Bytes: 0
block_.L_46157e:

  ; Code: movl -0x494(%rbp), %eax	 RIP: 46157e	 Bytes: 6
  %loadMem_46157e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46157e = call %struct.Memory* @routine_movl_MINUS0x494__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46157e)
  store %struct.Memory* %call_46157e, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 461584	 Bytes: 3
  %loadMem_461584 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461584 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461584)
  store %struct.Memory* %call_461584, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x494(%rbp)	 RIP: 461587	 Bytes: 6
  %loadMem_461587 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461587 = call %struct.Memory* @routine_movl__eax__MINUS0x494__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461587)
  store %struct.Memory* %call_461587, %struct.Memory** %MEMORY

  ; Code: jmpq .L_461530	 RIP: 46158d	 Bytes: 5
  %loadMem_46158d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46158d = call %struct.Memory* @routine_jmpq_.L_461530(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46158d, i64 -93, i64 5)
  store %struct.Memory* %call_46158d, %struct.Memory** %MEMORY

  br label %block_.L_461530

  ; Code: .L_461592:	 RIP: 461592	 Bytes: 0
block_.L_461592:

  ; Code: movl -0x494(%rbp), %eax	 RIP: 461592	 Bytes: 6
  %loadMem_461592 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461592 = call %struct.Memory* @routine_movl_MINUS0x494__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461592)
  store %struct.Memory* %call_461592, %struct.Memory** %MEMORY

  ; Code: cmpl -0x2e8(%rbp), %eax	 RIP: 461598	 Bytes: 6
  %loadMem_461598 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461598 = call %struct.Memory* @routine_cmpl_MINUS0x2e8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461598)
  store %struct.Memory* %call_461598, %struct.Memory** %MEMORY

  ; Code: jne .L_4615e6	 RIP: 46159e	 Bytes: 6
  %loadMem_46159e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46159e = call %struct.Memory* @routine_jne_.L_4615e6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46159e, i8* %BRANCH_TAKEN, i64 72, i64 6, i64 6)
  store %struct.Memory* %call_46159e, %struct.Memory** %MEMORY

  %loadBr_46159e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46159e = icmp eq i8 %loadBr_46159e, 1
  br i1 %cmpBr_46159e, label %block_.L_4615e6, label %block_4615a4

block_4615a4:
  ; Code: cmpl $0x32, -0x2e8(%rbp)	 RIP: 4615a4	 Bytes: 7
  %loadMem_4615a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4615a4 = call %struct.Memory* @routine_cmpl__0x32__MINUS0x2e8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4615a4)
  store %struct.Memory* %call_4615a4, %struct.Memory** %MEMORY

  ; Code: jge .L_4615e6	 RIP: 4615ab	 Bytes: 6
  %loadMem_4615ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4615ab = call %struct.Memory* @routine_jge_.L_4615e6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4615ab, i8* %BRANCH_TAKEN, i64 59, i64 6, i64 6)
  store %struct.Memory* %call_4615ab, %struct.Memory** %MEMORY

  %loadBr_4615ab = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4615ab = icmp eq i8 %loadBr_4615ab, 1
  br i1 %cmpBr_4615ab, label %block_.L_4615e6, label %block_4615b1

block_4615b1:
  ; Code: movl -0x490(%rbp), %eax	 RIP: 4615b1	 Bytes: 6
  %loadMem_4615b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4615b1 = call %struct.Memory* @routine_movl_MINUS0x490__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4615b1)
  store %struct.Memory* %call_4615b1, %struct.Memory** %MEMORY

  ; Code: movslq -0x2e8(%rbp), %rcx	 RIP: 4615b7	 Bytes: 7
  %loadMem_4615b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4615b7 = call %struct.Memory* @routine_movslq_MINUS0x2e8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4615b7)
  store %struct.Memory* %call_4615b7, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x478(%rbp,%rcx,4)	 RIP: 4615be	 Bytes: 7
  %loadMem_4615be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4615be = call %struct.Memory* @routine_movl__eax__MINUS0x478__rbp__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4615be)
  store %struct.Memory* %call_4615be, %struct.Memory** %MEMORY

  ; Code: movslq -0x2e8(%rbp), %rcx	 RIP: 4615c5	 Bytes: 7
  %loadMem_4615c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4615c5 = call %struct.Memory* @routine_movslq_MINUS0x2e8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4615c5)
  store %struct.Memory* %call_4615c5, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x3b0(%rbp,%rcx,4)	 RIP: 4615cc	 Bytes: 11
  %loadMem_4615cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4615cc = call %struct.Memory* @routine_movl__0x0__MINUS0x3b0__rbp__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4615cc)
  store %struct.Memory* %call_4615cc, %struct.Memory** %MEMORY

  ; Code: movl -0x2e8(%rbp), %eax	 RIP: 4615d7	 Bytes: 6
  %loadMem_4615d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4615d7 = call %struct.Memory* @routine_movl_MINUS0x2e8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4615d7)
  store %struct.Memory* %call_4615d7, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4615dd	 Bytes: 3
  %loadMem_4615dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4615dd = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4615dd)
  store %struct.Memory* %call_4615dd, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2e8(%rbp)	 RIP: 4615e0	 Bytes: 6
  %loadMem_4615e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4615e0 = call %struct.Memory* @routine_movl__eax__MINUS0x2e8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4615e0)
  store %struct.Memory* %call_4615e0, %struct.Memory** %MEMORY

  ; Code: .L_4615e6:	 RIP: 4615e6	 Bytes: 0
  br label %block_.L_4615e6
block_.L_4615e6:

  ; Code: jmpq .L_4615eb	 RIP: 4615e6	 Bytes: 5
  %loadMem_4615e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4615e6 = call %struct.Memory* @routine_jmpq_.L_4615eb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4615e6, i64 5, i64 5)
  store %struct.Memory* %call_4615e6, %struct.Memory** %MEMORY

  br label %block_.L_4615eb

  ; Code: .L_4615eb:	 RIP: 4615eb	 Bytes: 0
block_.L_4615eb:

  ; Code: jmpq .L_4615f0	 RIP: 4615eb	 Bytes: 5
  %loadMem_4615eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4615eb = call %struct.Memory* @routine_jmpq_.L_4615f0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4615eb, i64 5, i64 5)
  store %struct.Memory* %call_4615eb, %struct.Memory** %MEMORY

  br label %block_.L_4615f0

  ; Code: .L_4615f0:	 RIP: 4615f0	 Bytes: 0
block_.L_4615f0:

  ; Code: movl -0x38(%rbp), %eax	 RIP: 4615f0	 Bytes: 3
  %loadMem_4615f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4615f0 = call %struct.Memory* @routine_movl_MINUS0x38__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4615f0)
  store %struct.Memory* %call_4615f0, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4615f3	 Bytes: 3
  %loadMem_4615f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4615f3 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4615f3)
  store %struct.Memory* %call_4615f3, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x38(%rbp)	 RIP: 4615f6	 Bytes: 3
  %loadMem_4615f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4615f6 = call %struct.Memory* @routine_movl__eax__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4615f6)
  store %struct.Memory* %call_4615f6, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4614e1	 RIP: 4615f9	 Bytes: 5
  %loadMem_4615f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4615f9 = call %struct.Memory* @routine_jmpq_.L_4614e1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4615f9, i64 -280, i64 5)
  store %struct.Memory* %call_4615f9, %struct.Memory** %MEMORY

  br label %block_.L_4614e1

  ; Code: .L_4615fe:	 RIP: 4615fe	 Bytes: 0
block_.L_4615fe:

  ; Code: leaq -0x478(%rbp), %rsi	 RIP: 4615fe	 Bytes: 7
  %loadMem_4615fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4615fe = call %struct.Memory* @routine_leaq_MINUS0x478__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4615fe)
  store %struct.Memory* %call_4615fe, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %edi	 RIP: 461605	 Bytes: 3
  %loadMem_461605 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461605 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461605)
  store %struct.Memory* %call_461605, %struct.Memory** %MEMORY

  ; Code: callq .double_atari_chain2_moves	 RIP: 461608	 Bytes: 5
  %loadMem1_461608 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_461608 = call %struct.Memory* @routine_callq_.double_atari_chain2_moves(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_461608, i64 2280, i64 5, i64 5)
  store %struct.Memory* %call1_461608, %struct.Memory** %MEMORY

  %loadMem2_461608 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_461608 = load i64, i64* %3
  %call2_461608 = call %struct.Memory* @sub_461ef0.double_atari_chain2_moves(%struct.State* %0, i64  %loadPC_461608, %struct.Memory* %loadMem2_461608)
  store %struct.Memory* %call2_461608, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x3c(%rbp)	 RIP: 46160d	 Bytes: 7
  %loadMem_46160d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46160d = call %struct.Memory* @routine_movl__0x0__MINUS0x3c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46160d)
  store %struct.Memory* %call_46160d, %struct.Memory** %MEMORY

  ; Code: .L_461614:	 RIP: 461614	 Bytes: 0
  br label %block_.L_461614
block_.L_461614:

  ; Code: movl -0x3c(%rbp), %eax	 RIP: 461614	 Bytes: 3
  %loadMem_461614 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461614 = call %struct.Memory* @routine_movl_MINUS0x3c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461614)
  store %struct.Memory* %call_461614, %struct.Memory** %MEMORY

  ; Code: cmpl -0x2e8(%rbp), %eax	 RIP: 461617	 Bytes: 6
  %loadMem_461617 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461617 = call %struct.Memory* @routine_cmpl_MINUS0x2e8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461617)
  store %struct.Memory* %call_461617, %struct.Memory** %MEMORY

  ; Code: jge .L_461646	 RIP: 46161d	 Bytes: 6
  %loadMem_46161d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46161d = call %struct.Memory* @routine_jge_.L_461646(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46161d, i8* %BRANCH_TAKEN, i64 41, i64 6, i64 6)
  store %struct.Memory* %call_46161d, %struct.Memory** %MEMORY

  %loadBr_46161d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46161d = icmp eq i8 %loadBr_46161d, 1
  br i1 %cmpBr_46161d, label %block_.L_461646, label %block_461623

block_461623:
  ; Code: movslq -0x3c(%rbp), %rax	 RIP: 461623	 Bytes: 4
  %loadMem_461623 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461623 = call %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461623)
  store %struct.Memory* %call_461623, %struct.Memory** %MEMORY

  ; Code: movl -0x3b0(%rbp,%rax,4), %ecx	 RIP: 461627	 Bytes: 7
  %loadMem_461627 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461627 = call %struct.Memory* @routine_movl_MINUS0x3b0__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461627)
  store %struct.Memory* %call_461627, %struct.Memory** %MEMORY

  ; Code: addl $0x5, %ecx	 RIP: 46162e	 Bytes: 3
  %loadMem_46162e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46162e = call %struct.Memory* @routine_addl__0x5___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46162e)
  store %struct.Memory* %call_46162e, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x3b0(%rbp,%rax,4)	 RIP: 461631	 Bytes: 7
  %loadMem_461631 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461631 = call %struct.Memory* @routine_movl__ecx__MINUS0x3b0__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461631)
  store %struct.Memory* %call_461631, %struct.Memory** %MEMORY

  ; Code: movl -0x3c(%rbp), %eax	 RIP: 461638	 Bytes: 3
  %loadMem_461638 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461638 = call %struct.Memory* @routine_movl_MINUS0x3c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461638)
  store %struct.Memory* %call_461638, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 46163b	 Bytes: 3
  %loadMem_46163b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46163b = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46163b)
  store %struct.Memory* %call_46163b, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x3c(%rbp)	 RIP: 46163e	 Bytes: 3
  %loadMem_46163e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46163e = call %struct.Memory* @routine_movl__eax__MINUS0x3c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46163e)
  store %struct.Memory* %call_46163e, %struct.Memory** %MEMORY

  ; Code: jmpq .L_461614	 RIP: 461641	 Bytes: 5
  %loadMem_461641 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461641 = call %struct.Memory* @routine_jmpq_.L_461614(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461641, i64 -45, i64 5)
  store %struct.Memory* %call_461641, %struct.Memory** %MEMORY

  br label %block_.L_461614

  ; Code: .L_461646:	 RIP: 461646	 Bytes: 0
block_.L_461646:

  ; Code: movl $0x4, %esi	 RIP: 461646	 Bytes: 5
  %loadMem_461646 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461646 = call %struct.Memory* @routine_movl__0x4___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461646)
  store %struct.Memory* %call_461646, %struct.Memory** %MEMORY

  ; Code: leaq -0x50(%rbp), %rdx	 RIP: 46164b	 Bytes: 4
  %loadMem_46164b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46164b = call %struct.Memory* @routine_leaq_MINUS0x50__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46164b)
  store %struct.Memory* %call_46164b, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %edi	 RIP: 46164f	 Bytes: 3
  %loadMem_46164f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46164f = call %struct.Memory* @routine_movl_MINUS0x18__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46164f)
  store %struct.Memory* %call_46164f, %struct.Memory** %MEMORY

  ; Code: callq .findlib	 RIP: 461652	 Bytes: 5
  %loadMem1_461652 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_461652 = call %struct.Memory* @routine_callq_.findlib(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_461652, i64 -335378, i64 5, i64 5)
  store %struct.Memory* %call1_461652, %struct.Memory** %MEMORY

  %loadMem2_461652 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_461652 = load i64, i64* %3
  %call2_461652 = call %struct.Memory* @sub_40f840.findlib(%struct.State* %0, i64  %loadPC_461652, %struct.Memory* %loadMem2_461652)
  store %struct.Memory* %call2_461652, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x40(%rbp)	 RIP: 461657	 Bytes: 3
  %loadMem_461657 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461657 = call %struct.Memory* @routine_movl__eax__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461657)
  store %struct.Memory* %call_461657, %struct.Memory** %MEMORY

  ; Code: cmpl $0x4, -0x40(%rbp)	 RIP: 46165a	 Bytes: 4
  %loadMem_46165a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46165a = call %struct.Memory* @routine_cmpl__0x4__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46165a)
  store %struct.Memory* %call_46165a, %struct.Memory** %MEMORY

  ; Code: jne .L_461669	 RIP: 46165e	 Bytes: 6
  %loadMem_46165e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46165e = call %struct.Memory* @routine_jne_.L_461669(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46165e, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_46165e, %struct.Memory** %MEMORY

  %loadBr_46165e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46165e = icmp eq i8 %loadBr_46165e, 1
  br i1 %cmpBr_46165e, label %block_.L_461669, label %block_461664

block_461664:
  ; Code: jmpq .L_4616da	 RIP: 461664	 Bytes: 5
  %loadMem_461664 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461664 = call %struct.Memory* @routine_jmpq_.L_4616da(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461664, i64 118, i64 5)
  store %struct.Memory* %call_461664, %struct.Memory** %MEMORY

  br label %block_.L_4616da

  ; Code: .L_461669:	 RIP: 461669	 Bytes: 0
block_.L_461669:

  ; Code: movq $0x57fb0d, %rdi	 RIP: 461669	 Bytes: 10
  %loadMem_461669 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461669 = call %struct.Memory* @routine_movq__0x57fb0d___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461669)
  store %struct.Memory* %call_461669, %struct.Memory** %MEMORY

  ; Code: movl $0xbe8, %esi	 RIP: 461673	 Bytes: 5
  %loadMem_461673 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461673 = call %struct.Memory* @routine_movl__0xbe8___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461673)
  store %struct.Memory* %call_461673, %struct.Memory** %MEMORY

  ; Code: movq $0x57fce9, %rdx	 RIP: 461678	 Bytes: 10
  %loadMem_461678 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461678 = call %struct.Memory* @routine_movq__0x57fce9___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461678)
  store %struct.Memory* %call_461678, %struct.Memory** %MEMORY

  ; Code: movl $0x14, %eax	 RIP: 461682	 Bytes: 5
  %loadMem_461682 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461682 = call %struct.Memory* @routine_movl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461682)
  store %struct.Memory* %call_461682, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %ecx	 RIP: 461687	 Bytes: 3
  %loadMem_461687 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461687 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461687)
  store %struct.Memory* %call_461687, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4b8(%rbp)	 RIP: 46168a	 Bytes: 6
  %loadMem_46168a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46168a = call %struct.Memory* @routine_movl__eax__MINUS0x4b8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46168a)
  store %struct.Memory* %call_46168a, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %eax	 RIP: 461690	 Bytes: 2
  %loadMem_461690 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461690 = call %struct.Memory* @routine_movl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461690)
  store %struct.Memory* %call_461690, %struct.Memory** %MEMORY

  ; Code: movq %rdx, -0x4c0(%rbp)	 RIP: 461692	 Bytes: 7
  %loadMem_461692 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461692 = call %struct.Memory* @routine_movq__rdx__MINUS0x4c0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461692)
  store %struct.Memory* %call_461692, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 461699	 Bytes: 1
  %loadMem_461699 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461699 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461699)
  store %struct.Memory* %call_461699, %struct.Memory** %MEMORY

  ; Code: movl -0x4b8(%rbp), %ecx	 RIP: 46169a	 Bytes: 6
  %loadMem_46169a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46169a = call %struct.Memory* @routine_movl_MINUS0x4b8__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46169a)
  store %struct.Memory* %call_46169a, %struct.Memory** %MEMORY

  ; Code: idivl %ecx	 RIP: 4616a0	 Bytes: 2
  %loadMem_4616a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4616a0 = call %struct.Memory* @routine_idivl__ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4616a0)
  store %struct.Memory* %call_4616a0, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 4616a2	 Bytes: 3
  %loadMem_4616a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4616a2 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4616a2)
  store %struct.Memory* %call_4616a2, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %r8d	 RIP: 4616a5	 Bytes: 4
  %loadMem_4616a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4616a5 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4616a5)
  store %struct.Memory* %call_4616a5, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4c4(%rbp)	 RIP: 4616a9	 Bytes: 6
  %loadMem_4616a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4616a9 = call %struct.Memory* @routine_movl__eax__MINUS0x4c4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4616a9)
  store %struct.Memory* %call_4616a9, %struct.Memory** %MEMORY

  ; Code: movl %r8d, %eax	 RIP: 4616af	 Bytes: 3
  %loadMem_4616af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4616af = call %struct.Memory* @routine_movl__r8d___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4616af)
  store %struct.Memory* %call_4616af, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 4616b2	 Bytes: 1
  %loadMem_4616b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4616b2 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4616b2)
  store %struct.Memory* %call_4616b2, %struct.Memory** %MEMORY

  ; Code: idivl %ecx	 RIP: 4616b3	 Bytes: 2
  %loadMem_4616b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4616b3 = call %struct.Memory* @routine_idivl__ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4616b3)
  store %struct.Memory* %call_4616b3, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 4616b5	 Bytes: 3
  %loadMem_4616b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4616b5 = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4616b5)
  store %struct.Memory* %call_4616b5, %struct.Memory** %MEMORY

  ; Code: movq -0x4c0(%rbp), %r9	 RIP: 4616b8	 Bytes: 7
  %loadMem_4616b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4616b8 = call %struct.Memory* @routine_movq_MINUS0x4c0__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4616b8)
  store %struct.Memory* %call_4616b8, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x4c8(%rbp)	 RIP: 4616bf	 Bytes: 6
  %loadMem_4616bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4616bf = call %struct.Memory* @routine_movl__edx__MINUS0x4c8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4616bf)
  store %struct.Memory* %call_4616bf, %struct.Memory** %MEMORY

  ; Code: movq %r9, %rdx	 RIP: 4616c5	 Bytes: 3
  %loadMem_4616c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4616c5 = call %struct.Memory* @routine_movq__r9___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4616c5)
  store %struct.Memory* %call_4616c5, %struct.Memory** %MEMORY

  ; Code: movl -0x4c4(%rbp), %ecx	 RIP: 4616c8	 Bytes: 6
  %loadMem_4616c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4616c8 = call %struct.Memory* @routine_movl_MINUS0x4c4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4616c8)
  store %struct.Memory* %call_4616c8, %struct.Memory** %MEMORY

  ; Code: movl -0x4c8(%rbp), %r8d	 RIP: 4616ce	 Bytes: 7
  %loadMem_4616ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4616ce = call %struct.Memory* @routine_movl_MINUS0x4c8__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4616ce)
  store %struct.Memory* %call_4616ce, %struct.Memory** %MEMORY

  ; Code: callq .abortgo	 RIP: 4616d5	 Bytes: 5
  %loadMem1_4616d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4616d5 = call %struct.Memory* @routine_callq_.abortgo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4616d5, i64 -63045, i64 5, i64 5)
  store %struct.Memory* %call1_4616d5, %struct.Memory** %MEMORY

  %loadMem2_4616d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4616d5 = load i64, i64* %3
  %call2_4616d5 = call %struct.Memory* @sub_452090.abortgo(%struct.State* %0, i64  %loadPC_4616d5, %struct.Memory* %loadMem2_4616d5)
  store %struct.Memory* %call2_4616d5, %struct.Memory** %MEMORY

  ; Code: .L_4616da:	 RIP: 4616da	 Bytes: 0
  br label %block_.L_4616da
block_.L_4616da:

  ; Code: movl $0x0, -0x3c(%rbp)	 RIP: 4616da	 Bytes: 7
  %loadMem_4616da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4616da = call %struct.Memory* @routine_movl__0x0__MINUS0x3c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4616da)
  store %struct.Memory* %call_4616da, %struct.Memory** %MEMORY

  ; Code: .L_4616e1:	 RIP: 4616e1	 Bytes: 0
  br label %block_.L_4616e1
block_.L_4616e1:

  ; Code: cmpl $0x4, -0x3c(%rbp)	 RIP: 4616e1	 Bytes: 4
  %loadMem_4616e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4616e1 = call %struct.Memory* @routine_cmpl__0x4__MINUS0x3c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4616e1)
  store %struct.Memory* %call_4616e1, %struct.Memory** %MEMORY

  ; Code: jge .L_461982	 RIP: 4616e5	 Bytes: 6
  %loadMem_4616e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4616e5 = call %struct.Memory* @routine_jge_.L_461982(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4616e5, i8* %BRANCH_TAKEN, i64 669, i64 6, i64 6)
  store %struct.Memory* %call_4616e5, %struct.Memory** %MEMORY

  %loadBr_4616e5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4616e5 = icmp eq i8 %loadBr_4616e5, 1
  br i1 %cmpBr_4616e5, label %block_.L_461982, label %block_4616eb

block_4616eb:
  ; Code: movslq -0x3c(%rbp), %rax	 RIP: 4616eb	 Bytes: 4
  %loadMem_4616eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4616eb = call %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4616eb)
  store %struct.Memory* %call_4616eb, %struct.Memory** %MEMORY

  ; Code: movl -0x50(%rbp,%rax,4), %ecx	 RIP: 4616ef	 Bytes: 4
  %loadMem_4616ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4616ef = call %struct.Memory* @routine_movl_MINUS0x50__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4616ef)
  store %struct.Memory* %call_4616ef, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x498(%rbp)	 RIP: 4616f3	 Bytes: 6
  %loadMem_4616f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4616f3 = call %struct.Memory* @routine_movl__ecx__MINUS0x498__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4616f3)
  store %struct.Memory* %call_4616f3, %struct.Memory** %MEMORY

  ; Code: movl 0xb54ce4, %ecx	 RIP: 4616f9	 Bytes: 7
  %loadMem_4616f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4616f9 = call %struct.Memory* @routine_movl_0xb54ce4___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4616f9)
  store %struct.Memory* %call_4616f9, %struct.Memory** %MEMORY

  ; Code: cmpl 0xb060b8, %ecx	 RIP: 461700	 Bytes: 7
  %loadMem_461700 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461700 = call %struct.Memory* @routine_cmpl_0xb060b8___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461700)
  store %struct.Memory* %call_461700, %struct.Memory** %MEMORY

  ; Code: jle .L_4617ac	 RIP: 461707	 Bytes: 6
  %loadMem_461707 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461707 = call %struct.Memory* @routine_jle_.L_4617ac(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461707, i8* %BRANCH_TAKEN, i64 165, i64 6, i64 6)
  store %struct.Memory* %call_461707, %struct.Memory** %MEMORY

  %loadBr_461707 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_461707 = icmp eq i8 %loadBr_461707, 1
  br i1 %cmpBr_461707, label %block_.L_4617ac, label %block_46170d

block_46170d:
  ; Code: movl 0xb54ce4, %eax	 RIP: 46170d	 Bytes: 7
  %loadMem_46170d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46170d = call %struct.Memory* @routine_movl_0xb54ce4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46170d)
  store %struct.Memory* %call_46170d, %struct.Memory** %MEMORY

  ; Code: cmpl 0xb8b854, %eax	 RIP: 461714	 Bytes: 7
  %loadMem_461714 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461714 = call %struct.Memory* @routine_cmpl_0xb8b854___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461714)
  store %struct.Memory* %call_461714, %struct.Memory** %MEMORY

  ; Code: jg .L_461795	 RIP: 46171b	 Bytes: 6
  %loadMem_46171b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46171b = call %struct.Memory* @routine_jg_.L_461795(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46171b, i8* %BRANCH_TAKEN, i64 122, i64 6, i64 6)
  store %struct.Memory* %call_46171b, %struct.Memory** %MEMORY

  %loadBr_46171b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46171b = icmp eq i8 %loadBr_46171b, 1
  br i1 %cmpBr_46171b, label %block_.L_461795, label %block_461721

block_461721:
  ; Code: movl -0x498(%rbp), %eax	 RIP: 461721	 Bytes: 6
  %loadMem_461721 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461721 = call %struct.Memory* @routine_movl_MINUS0x498__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461721)
  store %struct.Memory* %call_461721, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 461727	 Bytes: 3
  %loadMem_461727 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461727 = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461727)
  store %struct.Memory* %call_461727, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 46172a	 Bytes: 3
  %loadMem_46172a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46172a = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46172a)
  store %struct.Memory* %call_46172a, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 46172d	 Bytes: 8
  %loadMem_46172d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46172d = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46172d)
  store %struct.Memory* %call_46172d, %struct.Memory** %MEMORY

  ; Code: cmpl -0x30(%rbp), %eax	 RIP: 461735	 Bytes: 3
  %loadMem_461735 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461735 = call %struct.Memory* @routine_cmpl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461735)
  store %struct.Memory* %call_461735, %struct.Memory** %MEMORY

  ; Code: je .L_461795	 RIP: 461738	 Bytes: 6
  %loadMem_461738 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461738 = call %struct.Memory* @routine_je_.L_461795(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461738, i8* %BRANCH_TAKEN, i64 93, i64 6, i64 6)
  store %struct.Memory* %call_461738, %struct.Memory** %MEMORY

  %loadBr_461738 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_461738 = icmp eq i8 %loadBr_461738, 1
  br i1 %cmpBr_461738, label %block_.L_461795, label %block_46173e

block_46173e:
  ; Code: movl -0x498(%rbp), %eax	 RIP: 46173e	 Bytes: 6
  %loadMem_46173e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46173e = call %struct.Memory* @routine_movl_MINUS0x498__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46173e)
  store %struct.Memory* %call_46173e, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 461744	 Bytes: 3
  %loadMem_461744 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461744 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461744)
  store %struct.Memory* %call_461744, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 461747	 Bytes: 3
  %loadMem_461747 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461747 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461747)
  store %struct.Memory* %call_461747, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 46174a	 Bytes: 8
  %loadMem_46174a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46174a = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46174a)
  store %struct.Memory* %call_46174a, %struct.Memory** %MEMORY

  ; Code: cmpl -0x30(%rbp), %eax	 RIP: 461752	 Bytes: 3
  %loadMem_461752 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461752 = call %struct.Memory* @routine_cmpl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461752)
  store %struct.Memory* %call_461752, %struct.Memory** %MEMORY

  ; Code: je .L_461795	 RIP: 461755	 Bytes: 6
  %loadMem_461755 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461755 = call %struct.Memory* @routine_je_.L_461795(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461755, i8* %BRANCH_TAKEN, i64 64, i64 6, i64 6)
  store %struct.Memory* %call_461755, %struct.Memory** %MEMORY

  %loadBr_461755 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_461755 = icmp eq i8 %loadBr_461755, 1
  br i1 %cmpBr_461755, label %block_.L_461795, label %block_46175b

block_46175b:
  ; Code: movl -0x498(%rbp), %eax	 RIP: 46175b	 Bytes: 6
  %loadMem_46175b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46175b = call %struct.Memory* @routine_movl_MINUS0x498__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46175b)
  store %struct.Memory* %call_46175b, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 461761	 Bytes: 3
  %loadMem_461761 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461761 = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461761)
  store %struct.Memory* %call_461761, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 461764	 Bytes: 3
  %loadMem_461764 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461764 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461764)
  store %struct.Memory* %call_461764, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 461767	 Bytes: 8
  %loadMem_461767 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461767 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461767)
  store %struct.Memory* %call_461767, %struct.Memory** %MEMORY

  ; Code: cmpl -0x30(%rbp), %eax	 RIP: 46176f	 Bytes: 3
  %loadMem_46176f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46176f = call %struct.Memory* @routine_cmpl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46176f)
  store %struct.Memory* %call_46176f, %struct.Memory** %MEMORY

  ; Code: je .L_461795	 RIP: 461772	 Bytes: 6
  %loadMem_461772 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461772 = call %struct.Memory* @routine_je_.L_461795(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461772, i8* %BRANCH_TAKEN, i64 35, i64 6, i64 6)
  store %struct.Memory* %call_461772, %struct.Memory** %MEMORY

  %loadBr_461772 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_461772 = icmp eq i8 %loadBr_461772, 1
  br i1 %cmpBr_461772, label %block_.L_461795, label %block_461778

block_461778:
  ; Code: movl -0x498(%rbp), %eax	 RIP: 461778	 Bytes: 6
  %loadMem_461778 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461778 = call %struct.Memory* @routine_movl_MINUS0x498__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461778)
  store %struct.Memory* %call_461778, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 46177e	 Bytes: 3
  %loadMem_46177e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46177e = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46177e)
  store %struct.Memory* %call_46177e, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 461781	 Bytes: 3
  %loadMem_461781 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461781 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461781)
  store %struct.Memory* %call_461781, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 461784	 Bytes: 8
  %loadMem_461784 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461784 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461784)
  store %struct.Memory* %call_461784, %struct.Memory** %MEMORY

  ; Code: cmpl -0x30(%rbp), %eax	 RIP: 46178c	 Bytes: 3
  %loadMem_46178c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46178c = call %struct.Memory* @routine_cmpl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46178c)
  store %struct.Memory* %call_46178c, %struct.Memory** %MEMORY

  ; Code: jne .L_4617ac	 RIP: 46178f	 Bytes: 6
  %loadMem_46178f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46178f = call %struct.Memory* @routine_jne_.L_4617ac(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46178f, i8* %BRANCH_TAKEN, i64 29, i64 6, i64 6)
  store %struct.Memory* %call_46178f, %struct.Memory** %MEMORY

  %loadBr_46178f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46178f = icmp eq i8 %loadBr_46178f, 1
  br i1 %cmpBr_46178f, label %block_.L_4617ac, label %block_.L_461795

  ; Code: .L_461795:	 RIP: 461795	 Bytes: 0
block_.L_461795:

  ; Code: movl -0x498(%rbp), %edi	 RIP: 461795	 Bytes: 6
  %loadMem_461795 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461795 = call %struct.Memory* @routine_movl_MINUS0x498__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461795)
  store %struct.Memory* %call_461795, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %esi	 RIP: 46179b	 Bytes: 3
  %loadMem_46179b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46179b = call %struct.Memory* @routine_movl_MINUS0x30__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46179b)
  store %struct.Memory* %call_46179b, %struct.Memory** %MEMORY

  ; Code: callq .is_self_atari	 RIP: 46179e	 Bytes: 5
  %loadMem1_46179e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46179e = call %struct.Memory* @routine_callq_.is_self_atari(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46179e, i64 -316670, i64 5, i64 5)
  store %struct.Memory* %call1_46179e, %struct.Memory** %MEMORY

  %loadMem2_46179e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46179e = load i64, i64* %3
  %call2_46179e = call %struct.Memory* @sub_4142a0.is_self_atari(%struct.State* %0, i64  %loadPC_46179e, %struct.Memory* %loadMem2_46179e)
  store %struct.Memory* %call2_46179e, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 4617a3	 Bytes: 3
  %loadMem_4617a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4617a3 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4617a3)
  store %struct.Memory* %call_4617a3, %struct.Memory** %MEMORY

  ; Code: jne .L_46187b	 RIP: 4617a6	 Bytes: 6
  %loadMem_4617a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4617a6 = call %struct.Memory* @routine_jne_.L_46187b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4617a6, i8* %BRANCH_TAKEN, i64 213, i64 6, i64 6)
  store %struct.Memory* %call_4617a6, %struct.Memory** %MEMORY

  %loadBr_4617a6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4617a6 = icmp eq i8 %loadBr_4617a6, 1
  br i1 %cmpBr_4617a6, label %block_.L_46187b, label %block_.L_4617ac

  ; Code: .L_4617ac:	 RIP: 4617ac	 Bytes: 0
block_.L_4617ac:

  ; Code: jmpq .L_4617b1	 RIP: 4617ac	 Bytes: 5
  %loadMem_4617ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4617ac = call %struct.Memory* @routine_jmpq_.L_4617b1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4617ac, i64 5, i64 5)
  store %struct.Memory* %call_4617ac, %struct.Memory** %MEMORY

  br label %block_.L_4617b1

  ; Code: .L_4617b1:	 RIP: 4617b1	 Bytes: 0
block_.L_4617b1:

  ; Code: movl $0x0, -0x49c(%rbp)	 RIP: 4617b1	 Bytes: 10
  %loadMem_4617b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4617b1 = call %struct.Memory* @routine_movl__0x0__MINUS0x49c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4617b1)
  store %struct.Memory* %call_4617b1, %struct.Memory** %MEMORY

  ; Code: .L_4617bb:	 RIP: 4617bb	 Bytes: 0
  br label %block_.L_4617bb
block_.L_4617bb:

  ; Code: movl -0x49c(%rbp), %eax	 RIP: 4617bb	 Bytes: 6
  %loadMem_4617bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4617bb = call %struct.Memory* @routine_movl_MINUS0x49c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4617bb)
  store %struct.Memory* %call_4617bb, %struct.Memory** %MEMORY

  ; Code: cmpl -0x2e8(%rbp), %eax	 RIP: 4617c1	 Bytes: 6
  %loadMem_4617c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4617c1 = call %struct.Memory* @routine_cmpl_MINUS0x2e8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4617c1)
  store %struct.Memory* %call_4617c1, %struct.Memory** %MEMORY

  ; Code: jge .L_46181d	 RIP: 4617c7	 Bytes: 6
  %loadMem_4617c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4617c7 = call %struct.Memory* @routine_jge_.L_46181d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4617c7, i8* %BRANCH_TAKEN, i64 86, i64 6, i64 6)
  store %struct.Memory* %call_4617c7, %struct.Memory** %MEMORY

  %loadBr_4617c7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4617c7 = icmp eq i8 %loadBr_4617c7, 1
  br i1 %cmpBr_4617c7, label %block_.L_46181d, label %block_4617cd

block_4617cd:
  ; Code: movslq -0x49c(%rbp), %rax	 RIP: 4617cd	 Bytes: 7
  %loadMem_4617cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4617cd = call %struct.Memory* @routine_movslq_MINUS0x49c__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4617cd)
  store %struct.Memory* %call_4617cd, %struct.Memory** %MEMORY

  ; Code: movl -0x478(%rbp,%rax,4), %ecx	 RIP: 4617d4	 Bytes: 7
  %loadMem_4617d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4617d4 = call %struct.Memory* @routine_movl_MINUS0x478__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4617d4)
  store %struct.Memory* %call_4617d4, %struct.Memory** %MEMORY

  ; Code: cmpl -0x498(%rbp), %ecx	 RIP: 4617db	 Bytes: 6
  %loadMem_4617db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4617db = call %struct.Memory* @routine_cmpl_MINUS0x498__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4617db)
  store %struct.Memory* %call_4617db, %struct.Memory** %MEMORY

  ; Code: jne .L_461804	 RIP: 4617e1	 Bytes: 6
  %loadMem_4617e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4617e1 = call %struct.Memory* @routine_jne_.L_461804(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4617e1, i8* %BRANCH_TAKEN, i64 35, i64 6, i64 6)
  store %struct.Memory* %call_4617e1, %struct.Memory** %MEMORY

  %loadBr_4617e1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4617e1 = icmp eq i8 %loadBr_4617e1, 1
  br i1 %cmpBr_4617e1, label %block_.L_461804, label %block_4617e7

block_4617e7:
  ; Code: movslq -0x49c(%rbp), %rax	 RIP: 4617e7	 Bytes: 7
  %loadMem_4617e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4617e7 = call %struct.Memory* @routine_movslq_MINUS0x49c__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4617e7)
  store %struct.Memory* %call_4617e7, %struct.Memory** %MEMORY

  ; Code: movl -0x3b0(%rbp,%rax,4), %ecx	 RIP: 4617ee	 Bytes: 7
  %loadMem_4617ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4617ee = call %struct.Memory* @routine_movl_MINUS0x3b0__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4617ee)
  store %struct.Memory* %call_4617ee, %struct.Memory** %MEMORY

  ; Code: addl $0x0, %ecx	 RIP: 4617f5	 Bytes: 3
  %loadMem_4617f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4617f5 = call %struct.Memory* @routine_addl__0x0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4617f5)
  store %struct.Memory* %call_4617f5, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x3b0(%rbp,%rax,4)	 RIP: 4617f8	 Bytes: 7
  %loadMem_4617f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4617f8 = call %struct.Memory* @routine_movl__ecx__MINUS0x3b0__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4617f8)
  store %struct.Memory* %call_4617f8, %struct.Memory** %MEMORY

  ; Code: jmpq .L_46181d	 RIP: 4617ff	 Bytes: 5
  %loadMem_4617ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4617ff = call %struct.Memory* @routine_jmpq_.L_46181d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4617ff, i64 30, i64 5)
  store %struct.Memory* %call_4617ff, %struct.Memory** %MEMORY

  br label %block_.L_46181d

  ; Code: .L_461804:	 RIP: 461804	 Bytes: 0
block_.L_461804:

  ; Code: jmpq .L_461809	 RIP: 461804	 Bytes: 5
  %loadMem_461804 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461804 = call %struct.Memory* @routine_jmpq_.L_461809(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461804, i64 5, i64 5)
  store %struct.Memory* %call_461804, %struct.Memory** %MEMORY

  br label %block_.L_461809

  ; Code: .L_461809:	 RIP: 461809	 Bytes: 0
block_.L_461809:

  ; Code: movl -0x49c(%rbp), %eax	 RIP: 461809	 Bytes: 6
  %loadMem_461809 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461809 = call %struct.Memory* @routine_movl_MINUS0x49c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461809)
  store %struct.Memory* %call_461809, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 46180f	 Bytes: 3
  %loadMem_46180f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46180f = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46180f)
  store %struct.Memory* %call_46180f, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x49c(%rbp)	 RIP: 461812	 Bytes: 6
  %loadMem_461812 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461812 = call %struct.Memory* @routine_movl__eax__MINUS0x49c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461812)
  store %struct.Memory* %call_461812, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4617bb	 RIP: 461818	 Bytes: 5
  %loadMem_461818 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461818 = call %struct.Memory* @routine_jmpq_.L_4617bb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461818, i64 -93, i64 5)
  store %struct.Memory* %call_461818, %struct.Memory** %MEMORY

  br label %block_.L_4617bb

  ; Code: .L_46181d:	 RIP: 46181d	 Bytes: 0
block_.L_46181d:

  ; Code: movl -0x49c(%rbp), %eax	 RIP: 46181d	 Bytes: 6
  %loadMem_46181d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46181d = call %struct.Memory* @routine_movl_MINUS0x49c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46181d)
  store %struct.Memory* %call_46181d, %struct.Memory** %MEMORY

  ; Code: cmpl -0x2e8(%rbp), %eax	 RIP: 461823	 Bytes: 6
  %loadMem_461823 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461823 = call %struct.Memory* @routine_cmpl_MINUS0x2e8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461823)
  store %struct.Memory* %call_461823, %struct.Memory** %MEMORY

  ; Code: jne .L_461871	 RIP: 461829	 Bytes: 6
  %loadMem_461829 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461829 = call %struct.Memory* @routine_jne_.L_461871(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461829, i8* %BRANCH_TAKEN, i64 72, i64 6, i64 6)
  store %struct.Memory* %call_461829, %struct.Memory** %MEMORY

  %loadBr_461829 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_461829 = icmp eq i8 %loadBr_461829, 1
  br i1 %cmpBr_461829, label %block_.L_461871, label %block_46182f

block_46182f:
  ; Code: cmpl $0x32, -0x2e8(%rbp)	 RIP: 46182f	 Bytes: 7
  %loadMem_46182f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46182f = call %struct.Memory* @routine_cmpl__0x32__MINUS0x2e8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46182f)
  store %struct.Memory* %call_46182f, %struct.Memory** %MEMORY

  ; Code: jge .L_461871	 RIP: 461836	 Bytes: 6
  %loadMem_461836 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461836 = call %struct.Memory* @routine_jge_.L_461871(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461836, i8* %BRANCH_TAKEN, i64 59, i64 6, i64 6)
  store %struct.Memory* %call_461836, %struct.Memory** %MEMORY

  %loadBr_461836 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_461836 = icmp eq i8 %loadBr_461836, 1
  br i1 %cmpBr_461836, label %block_.L_461871, label %block_46183c

block_46183c:
  ; Code: movl -0x498(%rbp), %eax	 RIP: 46183c	 Bytes: 6
  %loadMem_46183c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46183c = call %struct.Memory* @routine_movl_MINUS0x498__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46183c)
  store %struct.Memory* %call_46183c, %struct.Memory** %MEMORY

  ; Code: movslq -0x2e8(%rbp), %rcx	 RIP: 461842	 Bytes: 7
  %loadMem_461842 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461842 = call %struct.Memory* @routine_movslq_MINUS0x2e8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461842)
  store %struct.Memory* %call_461842, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x478(%rbp,%rcx,4)	 RIP: 461849	 Bytes: 7
  %loadMem_461849 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461849 = call %struct.Memory* @routine_movl__eax__MINUS0x478__rbp__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461849)
  store %struct.Memory* %call_461849, %struct.Memory** %MEMORY

  ; Code: movslq -0x2e8(%rbp), %rcx	 RIP: 461850	 Bytes: 7
  %loadMem_461850 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461850 = call %struct.Memory* @routine_movslq_MINUS0x2e8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461850)
  store %struct.Memory* %call_461850, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x3b0(%rbp,%rcx,4)	 RIP: 461857	 Bytes: 11
  %loadMem_461857 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461857 = call %struct.Memory* @routine_movl__0x0__MINUS0x3b0__rbp__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461857)
  store %struct.Memory* %call_461857, %struct.Memory** %MEMORY

  ; Code: movl -0x2e8(%rbp), %eax	 RIP: 461862	 Bytes: 6
  %loadMem_461862 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461862 = call %struct.Memory* @routine_movl_MINUS0x2e8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461862)
  store %struct.Memory* %call_461862, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 461868	 Bytes: 3
  %loadMem_461868 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461868 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461868)
  store %struct.Memory* %call_461868, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2e8(%rbp)	 RIP: 46186b	 Bytes: 6
  %loadMem_46186b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46186b = call %struct.Memory* @routine_movl__eax__MINUS0x2e8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46186b)
  store %struct.Memory* %call_46186b, %struct.Memory** %MEMORY

  ; Code: .L_461871:	 RIP: 461871	 Bytes: 0
  br label %block_.L_461871
block_.L_461871:

  ; Code: jmpq .L_461876	 RIP: 461871	 Bytes: 5
  %loadMem_461871 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461871 = call %struct.Memory* @routine_jmpq_.L_461876(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461871, i64 5, i64 5)
  store %struct.Memory* %call_461871, %struct.Memory** %MEMORY

  br label %block_.L_461876

  ; Code: .L_461876:	 RIP: 461876	 Bytes: 0
block_.L_461876:

  ; Code: jmpq .L_46187b	 RIP: 461876	 Bytes: 5
  %loadMem_461876 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461876 = call %struct.Memory* @routine_jmpq_.L_46187b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461876, i64 5, i64 5)
  store %struct.Memory* %call_461876, %struct.Memory** %MEMORY

  br label %block_.L_46187b

  ; Code: .L_46187b:	 RIP: 46187b	 Bytes: 0
block_.L_46187b:

  ; Code: leaq -0x34(%rbp), %rdx	 RIP: 46187b	 Bytes: 4
  %loadMem_46187b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46187b = call %struct.Memory* @routine_leaq_MINUS0x34__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46187b)
  store %struct.Memory* %call_46187b, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %edi	 RIP: 46187f	 Bytes: 3
  %loadMem_46187f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46187f = call %struct.Memory* @routine_movl_MINUS0x18__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46187f)
  store %struct.Memory* %call_46187f, %struct.Memory** %MEMORY

  ; Code: movl -0x498(%rbp), %esi	 RIP: 461882	 Bytes: 6
  %loadMem_461882 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461882 = call %struct.Memory* @routine_movl_MINUS0x498__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461882)
  store %struct.Memory* %call_461882, %struct.Memory** %MEMORY

  ; Code: callq .edge_closing_backfill	 RIP: 461888	 Bytes: 5
  %loadMem1_461888 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_461888 = call %struct.Memory* @routine_callq_.edge_closing_backfill(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_461888, i64 2216, i64 5, i64 5)
  store %struct.Memory* %call1_461888, %struct.Memory** %MEMORY

  %loadMem2_461888 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_461888 = load i64, i64* %3
  %call2_461888 = call %struct.Memory* @sub_462130.edge_closing_backfill(%struct.State* %0, i64  %loadPC_461888, %struct.Memory* %loadMem2_461888)
  store %struct.Memory* %call2_461888, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 46188d	 Bytes: 3
  %loadMem_46188d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46188d = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46188d)
  store %struct.Memory* %call_46188d, %struct.Memory** %MEMORY

  ; Code: je .L_46195f	 RIP: 461890	 Bytes: 6
  %loadMem_461890 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461890 = call %struct.Memory* @routine_je_.L_46195f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461890, i8* %BRANCH_TAKEN, i64 207, i64 6, i64 6)
  store %struct.Memory* %call_461890, %struct.Memory** %MEMORY

  %loadBr_461890 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_461890 = icmp eq i8 %loadBr_461890, 1
  br i1 %cmpBr_461890, label %block_.L_46195f, label %block_461896

block_461896:
  ; Code: jmpq .L_46189b	 RIP: 461896	 Bytes: 5
  %loadMem_461896 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461896 = call %struct.Memory* @routine_jmpq_.L_46189b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461896, i64 5, i64 5)
  store %struct.Memory* %call_461896, %struct.Memory** %MEMORY

  br label %block_.L_46189b

  ; Code: .L_46189b:	 RIP: 46189b	 Bytes: 0
block_.L_46189b:

  ; Code: movl $0x0, -0x4a0(%rbp)	 RIP: 46189b	 Bytes: 10
  %loadMem_46189b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46189b = call %struct.Memory* @routine_movl__0x0__MINUS0x4a0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46189b)
  store %struct.Memory* %call_46189b, %struct.Memory** %MEMORY

  ; Code: .L_4618a5:	 RIP: 4618a5	 Bytes: 0
  br label %block_.L_4618a5
block_.L_4618a5:

  ; Code: movl -0x4a0(%rbp), %eax	 RIP: 4618a5	 Bytes: 6
  %loadMem_4618a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4618a5 = call %struct.Memory* @routine_movl_MINUS0x4a0__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4618a5)
  store %struct.Memory* %call_4618a5, %struct.Memory** %MEMORY

  ; Code: cmpl -0x2e8(%rbp), %eax	 RIP: 4618ab	 Bytes: 6
  %loadMem_4618ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4618ab = call %struct.Memory* @routine_cmpl_MINUS0x2e8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4618ab)
  store %struct.Memory* %call_4618ab, %struct.Memory** %MEMORY

  ; Code: jge .L_461904	 RIP: 4618b1	 Bytes: 6
  %loadMem_4618b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4618b1 = call %struct.Memory* @routine_jge_.L_461904(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4618b1, i8* %BRANCH_TAKEN, i64 83, i64 6, i64 6)
  store %struct.Memory* %call_4618b1, %struct.Memory** %MEMORY

  %loadBr_4618b1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4618b1 = icmp eq i8 %loadBr_4618b1, 1
  br i1 %cmpBr_4618b1, label %block_.L_461904, label %block_4618b7

block_4618b7:
  ; Code: movslq -0x4a0(%rbp), %rax	 RIP: 4618b7	 Bytes: 7
  %loadMem_4618b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4618b7 = call %struct.Memory* @routine_movslq_MINUS0x4a0__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4618b7)
  store %struct.Memory* %call_4618b7, %struct.Memory** %MEMORY

  ; Code: movl -0x478(%rbp,%rax,4), %ecx	 RIP: 4618be	 Bytes: 7
  %loadMem_4618be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4618be = call %struct.Memory* @routine_movl_MINUS0x478__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4618be)
  store %struct.Memory* %call_4618be, %struct.Memory** %MEMORY

  ; Code: cmpl -0x34(%rbp), %ecx	 RIP: 4618c5	 Bytes: 3
  %loadMem_4618c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4618c5 = call %struct.Memory* @routine_cmpl_MINUS0x34__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4618c5)
  store %struct.Memory* %call_4618c5, %struct.Memory** %MEMORY

  ; Code: jne .L_4618eb	 RIP: 4618c8	 Bytes: 6
  %loadMem_4618c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4618c8 = call %struct.Memory* @routine_jne_.L_4618eb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4618c8, i8* %BRANCH_TAKEN, i64 35, i64 6, i64 6)
  store %struct.Memory* %call_4618c8, %struct.Memory** %MEMORY

  %loadBr_4618c8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4618c8 = icmp eq i8 %loadBr_4618c8, 1
  br i1 %cmpBr_4618c8, label %block_.L_4618eb, label %block_4618ce

block_4618ce:
  ; Code: movslq -0x4a0(%rbp), %rax	 RIP: 4618ce	 Bytes: 7
  %loadMem_4618ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4618ce = call %struct.Memory* @routine_movslq_MINUS0x4a0__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4618ce)
  store %struct.Memory* %call_4618ce, %struct.Memory** %MEMORY

  ; Code: movl -0x3b0(%rbp,%rax,4), %ecx	 RIP: 4618d5	 Bytes: 7
  %loadMem_4618d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4618d5 = call %struct.Memory* @routine_movl_MINUS0x3b0__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4618d5)
  store %struct.Memory* %call_4618d5, %struct.Memory** %MEMORY

  ; Code: addl $0xa, %ecx	 RIP: 4618dc	 Bytes: 3
  %loadMem_4618dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4618dc = call %struct.Memory* @routine_addl__0xa___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4618dc)
  store %struct.Memory* %call_4618dc, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x3b0(%rbp,%rax,4)	 RIP: 4618df	 Bytes: 7
  %loadMem_4618df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4618df = call %struct.Memory* @routine_movl__ecx__MINUS0x3b0__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4618df)
  store %struct.Memory* %call_4618df, %struct.Memory** %MEMORY

  ; Code: jmpq .L_461904	 RIP: 4618e6	 Bytes: 5
  %loadMem_4618e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4618e6 = call %struct.Memory* @routine_jmpq_.L_461904(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4618e6, i64 30, i64 5)
  store %struct.Memory* %call_4618e6, %struct.Memory** %MEMORY

  br label %block_.L_461904

  ; Code: .L_4618eb:	 RIP: 4618eb	 Bytes: 0
block_.L_4618eb:

  ; Code: jmpq .L_4618f0	 RIP: 4618eb	 Bytes: 5
  %loadMem_4618eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4618eb = call %struct.Memory* @routine_jmpq_.L_4618f0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4618eb, i64 5, i64 5)
  store %struct.Memory* %call_4618eb, %struct.Memory** %MEMORY

  br label %block_.L_4618f0

  ; Code: .L_4618f0:	 RIP: 4618f0	 Bytes: 0
block_.L_4618f0:

  ; Code: movl -0x4a0(%rbp), %eax	 RIP: 4618f0	 Bytes: 6
  %loadMem_4618f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4618f0 = call %struct.Memory* @routine_movl_MINUS0x4a0__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4618f0)
  store %struct.Memory* %call_4618f0, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4618f6	 Bytes: 3
  %loadMem_4618f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4618f6 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4618f6)
  store %struct.Memory* %call_4618f6, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4a0(%rbp)	 RIP: 4618f9	 Bytes: 6
  %loadMem_4618f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4618f9 = call %struct.Memory* @routine_movl__eax__MINUS0x4a0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4618f9)
  store %struct.Memory* %call_4618f9, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4618a5	 RIP: 4618ff	 Bytes: 5
  %loadMem_4618ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4618ff = call %struct.Memory* @routine_jmpq_.L_4618a5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4618ff, i64 -90, i64 5)
  store %struct.Memory* %call_4618ff, %struct.Memory** %MEMORY

  br label %block_.L_4618a5

  ; Code: .L_461904:	 RIP: 461904	 Bytes: 0
block_.L_461904:

  ; Code: movl -0x4a0(%rbp), %eax	 RIP: 461904	 Bytes: 6
  %loadMem_461904 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461904 = call %struct.Memory* @routine_movl_MINUS0x4a0__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461904)
  store %struct.Memory* %call_461904, %struct.Memory** %MEMORY

  ; Code: cmpl -0x2e8(%rbp), %eax	 RIP: 46190a	 Bytes: 6
  %loadMem_46190a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46190a = call %struct.Memory* @routine_cmpl_MINUS0x2e8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46190a)
  store %struct.Memory* %call_46190a, %struct.Memory** %MEMORY

  ; Code: jne .L_461955	 RIP: 461910	 Bytes: 6
  %loadMem_461910 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461910 = call %struct.Memory* @routine_jne_.L_461955(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461910, i8* %BRANCH_TAKEN, i64 69, i64 6, i64 6)
  store %struct.Memory* %call_461910, %struct.Memory** %MEMORY

  %loadBr_461910 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_461910 = icmp eq i8 %loadBr_461910, 1
  br i1 %cmpBr_461910, label %block_.L_461955, label %block_461916

block_461916:
  ; Code: cmpl $0x32, -0x2e8(%rbp)	 RIP: 461916	 Bytes: 7
  %loadMem_461916 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461916 = call %struct.Memory* @routine_cmpl__0x32__MINUS0x2e8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461916)
  store %struct.Memory* %call_461916, %struct.Memory** %MEMORY

  ; Code: jge .L_461955	 RIP: 46191d	 Bytes: 6
  %loadMem_46191d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46191d = call %struct.Memory* @routine_jge_.L_461955(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46191d, i8* %BRANCH_TAKEN, i64 56, i64 6, i64 6)
  store %struct.Memory* %call_46191d, %struct.Memory** %MEMORY

  %loadBr_46191d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46191d = icmp eq i8 %loadBr_46191d, 1
  br i1 %cmpBr_46191d, label %block_.L_461955, label %block_461923

block_461923:
  ; Code: movl -0x34(%rbp), %eax	 RIP: 461923	 Bytes: 3
  %loadMem_461923 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461923 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461923)
  store %struct.Memory* %call_461923, %struct.Memory** %MEMORY

  ; Code: movslq -0x2e8(%rbp), %rcx	 RIP: 461926	 Bytes: 7
  %loadMem_461926 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461926 = call %struct.Memory* @routine_movslq_MINUS0x2e8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461926)
  store %struct.Memory* %call_461926, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x478(%rbp,%rcx,4)	 RIP: 46192d	 Bytes: 7
  %loadMem_46192d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46192d = call %struct.Memory* @routine_movl__eax__MINUS0x478__rbp__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46192d)
  store %struct.Memory* %call_46192d, %struct.Memory** %MEMORY

  ; Code: movslq -0x2e8(%rbp), %rcx	 RIP: 461934	 Bytes: 7
  %loadMem_461934 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461934 = call %struct.Memory* @routine_movslq_MINUS0x2e8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461934)
  store %struct.Memory* %call_461934, %struct.Memory** %MEMORY

  ; Code: movl $0xa, -0x3b0(%rbp,%rcx,4)	 RIP: 46193b	 Bytes: 11
  %loadMem_46193b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46193b = call %struct.Memory* @routine_movl__0xa__MINUS0x3b0__rbp__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46193b)
  store %struct.Memory* %call_46193b, %struct.Memory** %MEMORY

  ; Code: movl -0x2e8(%rbp), %eax	 RIP: 461946	 Bytes: 6
  %loadMem_461946 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461946 = call %struct.Memory* @routine_movl_MINUS0x2e8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461946)
  store %struct.Memory* %call_461946, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 46194c	 Bytes: 3
  %loadMem_46194c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46194c = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46194c)
  store %struct.Memory* %call_46194c, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2e8(%rbp)	 RIP: 46194f	 Bytes: 6
  %loadMem_46194f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46194f = call %struct.Memory* @routine_movl__eax__MINUS0x2e8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46194f)
  store %struct.Memory* %call_46194f, %struct.Memory** %MEMORY

  ; Code: .L_461955:	 RIP: 461955	 Bytes: 0
  br label %block_.L_461955
block_.L_461955:

  ; Code: jmpq .L_46195a	 RIP: 461955	 Bytes: 5
  %loadMem_461955 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461955 = call %struct.Memory* @routine_jmpq_.L_46195a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461955, i64 5, i64 5)
  store %struct.Memory* %call_461955, %struct.Memory** %MEMORY

  br label %block_.L_46195a

  ; Code: .L_46195a:	 RIP: 46195a	 Bytes: 0
block_.L_46195a:

  ; Code: jmpq .L_46195f	 RIP: 46195a	 Bytes: 5
  %loadMem_46195a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46195a = call %struct.Memory* @routine_jmpq_.L_46195f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46195a, i64 5, i64 5)
  store %struct.Memory* %call_46195a, %struct.Memory** %MEMORY

  br label %block_.L_46195f

  ; Code: .L_46195f:	 RIP: 46195f	 Bytes: 0
block_.L_46195f:

  ; Code: leaq -0x478(%rbp), %rdx	 RIP: 46195f	 Bytes: 7
  %loadMem_46195f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46195f = call %struct.Memory* @routine_leaq_MINUS0x478__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46195f)
  store %struct.Memory* %call_46195f, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %edi	 RIP: 461966	 Bytes: 3
  %loadMem_461966 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461966 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461966)
  store %struct.Memory* %call_461966, %struct.Memory** %MEMORY

  ; Code: movl -0x498(%rbp), %esi	 RIP: 461969	 Bytes: 6
  %loadMem_461969 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461969 = call %struct.Memory* @routine_movl_MINUS0x498__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461969)
  store %struct.Memory* %call_461969, %struct.Memory** %MEMORY

  ; Code: callq .edge_block_moves	 RIP: 46196f	 Bytes: 5
  %loadMem1_46196f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46196f = call %struct.Memory* @routine_callq_.edge_block_moves(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46196f, i64 2689, i64 5, i64 5)
  store %struct.Memory* %call1_46196f, %struct.Memory** %MEMORY

  %loadMem2_46196f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46196f = load i64, i64* %3
  %call2_46196f = call %struct.Memory* @sub_4623f0.edge_block_moves(%struct.State* %0, i64  %loadPC_46196f, %struct.Memory* %loadMem2_46196f)
  store %struct.Memory* %call2_46196f, %struct.Memory** %MEMORY

  ; Code: movl -0x3c(%rbp), %eax	 RIP: 461974	 Bytes: 3
  %loadMem_461974 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461974 = call %struct.Memory* @routine_movl_MINUS0x3c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461974)
  store %struct.Memory* %call_461974, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 461977	 Bytes: 3
  %loadMem_461977 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461977 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461977)
  store %struct.Memory* %call_461977, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x3c(%rbp)	 RIP: 46197a	 Bytes: 3
  %loadMem_46197a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46197a = call %struct.Memory* @routine_movl__eax__MINUS0x3c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46197a)
  store %struct.Memory* %call_46197a, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4616e1	 RIP: 46197d	 Bytes: 5
  %loadMem_46197d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46197d = call %struct.Memory* @routine_jmpq_.L_4616e1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46197d, i64 -668, i64 5)
  store %struct.Memory* %call_46197d, %struct.Memory** %MEMORY

  br label %block_.L_4616e1

  ; Code: .L_461982:	 RIP: 461982	 Bytes: 0
block_.L_461982:

  ; Code: leaq -0x478(%rbp), %rcx	 RIP: 461982	 Bytes: 7
  %loadMem_461982 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461982 = call %struct.Memory* @routine_leaq_MINUS0x478__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461982)
  store %struct.Memory* %call_461982, %struct.Memory** %MEMORY

  ; Code: leaq -0x50(%rbp), %rsi	 RIP: 461989	 Bytes: 4
  %loadMem_461989 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461989 = call %struct.Memory* @routine_leaq_MINUS0x50__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461989)
  store %struct.Memory* %call_461989, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %edi	 RIP: 46198d	 Bytes: 3
  %loadMem_46198d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46198d = call %struct.Memory* @routine_movl_MINUS0x18__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46198d)
  store %struct.Memory* %call_46198d, %struct.Memory** %MEMORY

  ; Code: movl -0x40(%rbp), %edx	 RIP: 461990	 Bytes: 3
  %loadMem_461990 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461990 = call %struct.Memory* @routine_movl_MINUS0x40__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461990)
  store %struct.Memory* %call_461990, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %r8d	 RIP: 461993	 Bytes: 4
  %loadMem_461993 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461993 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461993)
  store %struct.Memory* %call_461993, %struct.Memory** %MEMORY

  ; Code: callq .propose_edge_moves	 RIP: 461997	 Bytes: 5
  %loadMem1_461997 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_461997 = call %struct.Memory* @routine_callq_.propose_edge_moves(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_461997, i64 3353, i64 5, i64 5)
  store %struct.Memory* %call1_461997, %struct.Memory** %MEMORY

  %loadMem2_461997 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_461997 = load i64, i64* %3
  %call2_461997 = call %struct.Memory* @sub_4626b0.propose_edge_moves(%struct.State* %0, i64  %loadPC_461997, %struct.Memory* %loadMem2_461997)
  store %struct.Memory* %call2_461997, %struct.Memory** %MEMORY

  ; Code: leaq -0x478(%rbp), %rsi	 RIP: 46199c	 Bytes: 7
  %loadMem_46199c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46199c = call %struct.Memory* @routine_leaq_MINUS0x478__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46199c)
  store %struct.Memory* %call_46199c, %struct.Memory** %MEMORY

  ; Code: xorl %r8d, %r8d	 RIP: 4619a3	 Bytes: 3
  %loadMem_4619a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4619a3 = call %struct.Memory* @routine_xorl__r8d___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4619a3)
  store %struct.Memory* %call_4619a3, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %edi	 RIP: 4619a6	 Bytes: 3
  %loadMem_4619a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4619a6 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4619a6)
  store %struct.Memory* %call_4619a6, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %edx	 RIP: 4619a9	 Bytes: 3
  %loadMem_4619a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4619a9 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4619a9)
  store %struct.Memory* %call_4619a9, %struct.Memory** %MEMORY

  ; Code: movq -0x488(%rbp), %rcx	 RIP: 4619ac	 Bytes: 7
  %loadMem_4619ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4619ac = call %struct.Memory* @routine_movq_MINUS0x488__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4619ac)
  store %struct.Memory* %call_4619ac, %struct.Memory** %MEMORY

  ; Code: callq .order_moves	 RIP: 4619b3	 Bytes: 5
  %loadMem1_4619b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4619b3 = call %struct.Memory* @routine_callq_.order_moves(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4619b3, i64 4829, i64 5, i64 5)
  store %struct.Memory* %call1_4619b3, %struct.Memory** %MEMORY

  %loadMem2_4619b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4619b3 = load i64, i64* %3
  %call2_4619b3 = call %struct.Memory* @sub_462c90.order_moves(%struct.State* %0, i64  %loadPC_4619b3, %struct.Memory* %loadMem2_4619b3)
  store %struct.Memory* %call2_4619b3, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x3c(%rbp)	 RIP: 4619b8	 Bytes: 7
  %loadMem_4619b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4619b8 = call %struct.Memory* @routine_movl__0x0__MINUS0x3c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4619b8)
  store %struct.Memory* %call_4619b8, %struct.Memory** %MEMORY

  ; Code: .L_4619bf:	 RIP: 4619bf	 Bytes: 0
  br label %block_.L_4619bf
block_.L_4619bf:

  ; Code: movl -0x3c(%rbp), %eax	 RIP: 4619bf	 Bytes: 3
  %loadMem_4619bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4619bf = call %struct.Memory* @routine_movl_MINUS0x3c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4619bf)
  store %struct.Memory* %call_4619bf, %struct.Memory** %MEMORY

  ; Code: cmpl -0x2e8(%rbp), %eax	 RIP: 4619c2	 Bytes: 6
  %loadMem_4619c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4619c2 = call %struct.Memory* @routine_cmpl_MINUS0x2e8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4619c2)
  store %struct.Memory* %call_4619c2, %struct.Memory** %MEMORY

  ; Code: jge .L_461c01	 RIP: 4619c8	 Bytes: 6
  %loadMem_4619c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4619c8 = call %struct.Memory* @routine_jge_.L_461c01(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4619c8, i8* %BRANCH_TAKEN, i64 569, i64 6, i64 6)
  store %struct.Memory* %call_4619c8, %struct.Memory** %MEMORY

  %loadBr_4619c8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4619c8 = icmp eq i8 %loadBr_4619c8, 1
  br i1 %cmpBr_4619c8, label %block_.L_461c01, label %block_4619ce

block_4619ce:
  ; Code: movl 0xb54ce4, %eax	 RIP: 4619ce	 Bytes: 7
  %loadMem_4619ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4619ce = call %struct.Memory* @routine_movl_0xb54ce4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4619ce)
  store %struct.Memory* %call_4619ce, %struct.Memory** %MEMORY

  ; Code: cmpl 0xb6308c, %eax	 RIP: 4619d5	 Bytes: 7
  %loadMem_4619d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4619d5 = call %struct.Memory* @routine_cmpl_0xb6308c___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4619d5)
  store %struct.Memory* %call_4619d5, %struct.Memory** %MEMORY

  ; Code: jl .L_4619f1	 RIP: 4619dc	 Bytes: 6
  %loadMem_4619dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4619dc = call %struct.Memory* @routine_jl_.L_4619f1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4619dc, i8* %BRANCH_TAKEN, i64 21, i64 6, i64 6)
  store %struct.Memory* %call_4619dc, %struct.Memory** %MEMORY

  %loadBr_4619dc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4619dc = icmp eq i8 %loadBr_4619dc, 1
  br i1 %cmpBr_4619dc, label %block_.L_4619f1, label %block_4619e2

block_4619e2:
  ; Code: cmpl $0x0, -0x3c(%rbp)	 RIP: 4619e2	 Bytes: 4
  %loadMem_4619e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4619e2 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x3c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4619e2)
  store %struct.Memory* %call_4619e2, %struct.Memory** %MEMORY

  ; Code: jle .L_4619f1	 RIP: 4619e6	 Bytes: 6
  %loadMem_4619e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4619e6 = call %struct.Memory* @routine_jle_.L_4619f1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4619e6, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_4619e6, %struct.Memory** %MEMORY

  %loadBr_4619e6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4619e6 = icmp eq i8 %loadBr_4619e6, 1
  br i1 %cmpBr_4619e6, label %block_.L_4619f1, label %block_4619ec

block_4619ec:
  ; Code: jmpq .L_461c01	 RIP: 4619ec	 Bytes: 5
  %loadMem_4619ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4619ec = call %struct.Memory* @routine_jmpq_.L_461c01(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4619ec, i64 533, i64 5)
  store %struct.Memory* %call_4619ec, %struct.Memory** %MEMORY

  br label %block_.L_461c01

  ; Code: .L_4619f1:	 RIP: 4619f1	 Bytes: 0
block_.L_4619f1:

  ; Code: movq $0x57fc28, %rdx	 RIP: 4619f1	 Bytes: 10
  %loadMem_4619f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4619f1 = call %struct.Memory* @routine_movq__0x57fc28___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4619f1)
  store %struct.Memory* %call_4619f1, %struct.Memory** %MEMORY

  ; Code: leaq -0x4a4(%rbp), %rax	 RIP: 4619fb	 Bytes: 7
  %loadMem_4619fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4619fb = call %struct.Memory* @routine_leaq_MINUS0x4a4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4619fb)
  store %struct.Memory* %call_4619fb, %struct.Memory** %MEMORY

  ; Code: leaq -0x4a8(%rbp), %rcx	 RIP: 461a02	 Bytes: 7
  %loadMem_461a02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461a02 = call %struct.Memory* @routine_leaq_MINUS0x4a8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461a02)
  store %struct.Memory* %call_461a02, %struct.Memory** %MEMORY

  ; Code: leaq -0x4ac(%rbp), %rsi	 RIP: 461a09	 Bytes: 7
  %loadMem_461a09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461a09 = call %struct.Memory* @routine_leaq_MINUS0x4ac__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461a09)
  store %struct.Memory* %call_461a09, %struct.Memory** %MEMORY

  ; Code: xorl %edi, %edi	 RIP: 461a10	 Bytes: 2
  %loadMem_461a10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461a10 = call %struct.Memory* @routine_xorl__edi___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461a10)
  store %struct.Memory* %call_461a10, %struct.Memory** %MEMORY

  ; Code: movslq -0x3c(%rbp), %r8	 RIP: 461a12	 Bytes: 4
  %loadMem_461a12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461a12 = call %struct.Memory* @routine_movslq_MINUS0x3c__rbp____r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461a12)
  store %struct.Memory* %call_461a12, %struct.Memory** %MEMORY

  ; Code: movl -0x478(%rbp,%r8,4), %r9d	 RIP: 461a16	 Bytes: 8
  %loadMem_461a16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461a16 = call %struct.Memory* @routine_movl_MINUS0x478__rbp__r8_4____r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461a16)
  store %struct.Memory* %call_461a16, %struct.Memory** %MEMORY

  ; Code: movl %r9d, -0x34(%rbp)	 RIP: 461a1e	 Bytes: 4
  %loadMem_461a1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461a1e = call %struct.Memory* @routine_movl__r9d__MINUS0x34__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461a1e)
  store %struct.Memory* %call_461a1e, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %r9d	 RIP: 461a22	 Bytes: 4
  %loadMem_461a22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461a22 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461a22)
  store %struct.Memory* %call_461a22, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %r10d	 RIP: 461a26	 Bytes: 4
  %loadMem_461a26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461a26 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____r10d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461a26)
  store %struct.Memory* %call_461a26, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %r11d	 RIP: 461a2a	 Bytes: 4
  %loadMem_461a2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461a2a = call %struct.Memory* @routine_movl_MINUS0x18__rbp____r11d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461a2a)
  store %struct.Memory* %call_461a2a, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %r8d	 RIP: 461a2e	 Bytes: 4
  %loadMem_461a2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461a2e = call %struct.Memory* @routine_movl_MINUS0x24__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461a2e)
  store %struct.Memory* %call_461a2e, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %ebx	 RIP: 461a32	 Bytes: 3
  %loadMem_461a32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461a32 = call %struct.Memory* @routine_movl_MINUS0x28__rbp____ebx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461a32)
  store %struct.Memory* %call_461a32, %struct.Memory** %MEMORY

  ; Code: movl %edi, -0x4cc(%rbp)	 RIP: 461a35	 Bytes: 6
  %loadMem_461a35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461a35 = call %struct.Memory* @routine_movl__edi__MINUS0x4cc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461a35)
  store %struct.Memory* %call_461a35, %struct.Memory** %MEMORY

  ; Code: movl %r9d, %edi	 RIP: 461a3b	 Bytes: 3
  %loadMem_461a3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461a3b = call %struct.Memory* @routine_movl__r9d___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461a3b)
  store %struct.Memory* %call_461a3b, %struct.Memory** %MEMORY

  ; Code: movq %rsi, -0x4d8(%rbp)	 RIP: 461a3e	 Bytes: 7
  %loadMem_461a3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461a3e = call %struct.Memory* @routine_movq__rsi__MINUS0x4d8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461a3e)
  store %struct.Memory* %call_461a3e, %struct.Memory** %MEMORY

  ; Code: movl %r10d, %esi	 RIP: 461a45	 Bytes: 3
  %loadMem_461a45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461a45 = call %struct.Memory* @routine_movl__r10d___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461a45)
  store %struct.Memory* %call_461a45, %struct.Memory** %MEMORY

  ; Code: movq %rcx, -0x4e0(%rbp)	 RIP: 461a48	 Bytes: 7
  %loadMem_461a48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461a48 = call %struct.Memory* @routine_movq__rcx__MINUS0x4e0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461a48)
  store %struct.Memory* %call_461a48, %struct.Memory** %MEMORY

  ; Code: movl %r11d, %ecx	 RIP: 461a4f	 Bytes: 3
  %loadMem_461a4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461a4f = call %struct.Memory* @routine_movl__r11d___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461a4f)
  store %struct.Memory* %call_461a4f, %struct.Memory** %MEMORY

  ; Code: movl %ebx, %r9d	 RIP: 461a52	 Bytes: 3
  %loadMem_461a52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461a52 = call %struct.Memory* @routine_movl__ebx___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461a52)
  store %struct.Memory* %call_461a52, %struct.Memory** %MEMORY

  ; Code: movq %rax, (%rsp)	 RIP: 461a55	 Bytes: 4
  %loadMem_461a55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461a55 = call %struct.Memory* @routine_movq__rax____rsp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461a55)
  store %struct.Memory* %call_461a55, %struct.Memory** %MEMORY

  ; Code: movq -0x4e0(%rbp), %rax	 RIP: 461a59	 Bytes: 7
  %loadMem_461a59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461a59 = call %struct.Memory* @routine_movq_MINUS0x4e0__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461a59)
  store %struct.Memory* %call_461a59, %struct.Memory** %MEMORY

  ; Code: movq %rax, 0x8(%rsp)	 RIP: 461a60	 Bytes: 5
  %loadMem_461a60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461a60 = call %struct.Memory* @routine_movq__rax__0x8__rsp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461a60)
  store %struct.Memory* %call_461a60, %struct.Memory** %MEMORY

  ; Code: movq -0x4d8(%rbp), %r14	 RIP: 461a65	 Bytes: 7
  %loadMem_461a65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461a65 = call %struct.Memory* @routine_movq_MINUS0x4d8__rbp____r14(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461a65)
  store %struct.Memory* %call_461a65, %struct.Memory** %MEMORY

  ; Code: movq %r14, 0x10(%rsp)	 RIP: 461a6c	 Bytes: 5
  %loadMem_461a6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461a6c = call %struct.Memory* @routine_movq__r14__0x10__rsp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461a6c)
  store %struct.Memory* %call_461a6c, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0x18(%rsp)	 RIP: 461a71	 Bytes: 8
  %loadMem_461a71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461a71 = call %struct.Memory* @routine_movl__0x0__0x18__rsp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461a71)
  store %struct.Memory* %call_461a71, %struct.Memory** %MEMORY

  ; Code: callq .komaster_trymove	 RIP: 461a79	 Bytes: 5
  %loadMem1_461a79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_461a79 = call %struct.Memory* @routine_callq_.komaster_trymove(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_461a79, i64 -339081, i64 5, i64 5)
  store %struct.Memory* %call1_461a79, %struct.Memory** %MEMORY

  %loadMem2_461a79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_461a79 = load i64, i64* %3
  %call2_461a79 = call %struct.Memory* @sub_40edf0.komaster_trymove(%struct.State* %0, i64  %loadPC_461a79, %struct.Memory* %loadMem2_461a79)
  store %struct.Memory* %call2_461a79, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 461a7e	 Bytes: 3
  %loadMem_461a7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461a7e = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461a7e)
  store %struct.Memory* %call_461a7e, %struct.Memory** %MEMORY

  ; Code: je .L_461bee	 RIP: 461a81	 Bytes: 6
  %loadMem_461a81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461a81 = call %struct.Memory* @routine_je_.L_461bee(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461a81, i8* %BRANCH_TAKEN, i64 365, i64 6, i64 6)
  store %struct.Memory* %call_461a81, %struct.Memory** %MEMORY

  %loadBr_461a81 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_461a81 = icmp eq i8 %loadBr_461a81, 1
  br i1 %cmpBr_461a81, label %block_.L_461bee, label %block_461a87

block_461a87:
  ; Code: cmpl $0x0, -0x4ac(%rbp)	 RIP: 461a87	 Bytes: 7
  %loadMem_461a87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461a87 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x4ac__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461a87)
  store %struct.Memory* %call_461a87, %struct.Memory** %MEMORY

  ; Code: jne .L_461b8f	 RIP: 461a8e	 Bytes: 6
  %loadMem_461a8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461a8e = call %struct.Memory* @routine_jne_.L_461b8f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461a8e, i8* %BRANCH_TAKEN, i64 257, i64 6, i64 6)
  store %struct.Memory* %call_461a8e, %struct.Memory** %MEMORY

  %loadBr_461a8e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_461a8e = icmp eq i8 %loadBr_461a8e, 1
  br i1 %cmpBr_461a8e, label %block_.L_461b8f, label %block_461a94

block_461a94:
  ; Code: xorl %eax, %eax	 RIP: 461a94	 Bytes: 2
  %loadMem_461a94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461a94 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461a94)
  store %struct.Memory* %call_461a94, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 461a96	 Bytes: 2
  %loadMem_461a96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461a96 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461a96)
  store %struct.Memory* %call_461a96, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %edi	 RIP: 461a98	 Bytes: 3
  %loadMem_461a98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461a98 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461a98)
  store %struct.Memory* %call_461a98, %struct.Memory** %MEMORY

  ; Code: movl -0x4a4(%rbp), %edx	 RIP: 461a9b	 Bytes: 6
  %loadMem_461a9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461a9b = call %struct.Memory* @routine_movl_MINUS0x4a4__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461a9b)
  store %struct.Memory* %call_461a9b, %struct.Memory** %MEMORY

  ; Code: movl -0x4a8(%rbp), %ecx	 RIP: 461aa1	 Bytes: 6
  %loadMem_461aa1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461aa1 = call %struct.Memory* @routine_movl_MINUS0x4a8__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461aa1)
  store %struct.Memory* %call_461aa1, %struct.Memory** %MEMORY

  ; Code: callq .do_find_defense	 RIP: 461aa7	 Bytes: 5
  %loadMem1_461aa7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_461aa7 = call %struct.Memory* @routine_callq_.do_find_defense(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_461aa7, i64 7033, i64 5, i64 5)
  store %struct.Memory* %call1_461aa7, %struct.Memory** %MEMORY

  %loadMem2_461aa7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_461aa7 = load i64, i64* %3
  %call2_461aa7 = call %struct.Memory* @sub_463620.do_find_defense(%struct.State* %0, i64  %loadPC_461aa7, %struct.Memory* %loadMem2_461aa7)
  store %struct.Memory* %call2_461aa7, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2e4(%rbp)	 RIP: 461aac	 Bytes: 6
  %loadMem_461aac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461aac = call %struct.Memory* @routine_movl__eax__MINUS0x2e4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461aac)
  store %struct.Memory* %call_461aac, %struct.Memory** %MEMORY

  ; Code: cmpl $0x5, -0x2e4(%rbp)	 RIP: 461ab2	 Bytes: 7
  %loadMem_461ab2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461ab2 = call %struct.Memory* @routine_cmpl__0x5__MINUS0x2e4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461ab2)
  store %struct.Memory* %call_461ab2, %struct.Memory** %MEMORY

  ; Code: je .L_461b85	 RIP: 461ab9	 Bytes: 6
  %loadMem_461ab9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461ab9 = call %struct.Memory* @routine_je_.L_461b85(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461ab9, i8* %BRANCH_TAKEN, i64 204, i64 6, i64 6)
  store %struct.Memory* %call_461ab9, %struct.Memory** %MEMORY

  %loadBr_461ab9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_461ab9 = icmp eq i8 %loadBr_461ab9, 1
  br i1 %cmpBr_461ab9, label %block_.L_461b85, label %block_461abf

block_461abf:
  ; Code: xorl %eax, %eax	 RIP: 461abf	 Bytes: 2
  %loadMem_461abf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461abf = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461abf)
  store %struct.Memory* %call_461abf, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 461ac1	 Bytes: 2
  %loadMem_461ac1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461ac1 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461ac1)
  store %struct.Memory* %call_461ac1, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %edi	 RIP: 461ac3	 Bytes: 3
  %loadMem_461ac3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461ac3 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461ac3)
  store %struct.Memory* %call_461ac3, %struct.Memory** %MEMORY

  ; Code: movl -0x4a4(%rbp), %edx	 RIP: 461ac6	 Bytes: 6
  %loadMem_461ac6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461ac6 = call %struct.Memory* @routine_movl_MINUS0x4a4__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461ac6)
  store %struct.Memory* %call_461ac6, %struct.Memory** %MEMORY

  ; Code: movl -0x4a8(%rbp), %ecx	 RIP: 461acc	 Bytes: 6
  %loadMem_461acc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461acc = call %struct.Memory* @routine_movl_MINUS0x4a8__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461acc)
  store %struct.Memory* %call_461acc, %struct.Memory** %MEMORY

  ; Code: callq .do_attack	 RIP: 461ad2	 Bytes: 5
  %loadMem1_461ad2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_461ad2 = call %struct.Memory* @routine_callq_.do_attack(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_461ad2, i64 -15858, i64 5, i64 5)
  store %struct.Memory* %call1_461ad2, %struct.Memory** %MEMORY

  %loadMem2_461ad2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_461ad2 = load i64, i64* %3
  %call2_461ad2 = call %struct.Memory* @sub_45dce0.do_attack(%struct.State* %0, i64  %loadPC_461ad2, %struct.Memory* %loadMem2_461ad2)
  store %struct.Memory* %call2_461ad2, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 461ad7	 Bytes: 3
  %loadMem_461ad7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461ad7 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461ad7)
  store %struct.Memory* %call_461ad7, %struct.Memory** %MEMORY

  ; Code: je .L_461b85	 RIP: 461ada	 Bytes: 6
  %loadMem_461ada = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461ada = call %struct.Memory* @routine_je_.L_461b85(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461ada, i8* %BRANCH_TAKEN, i64 171, i64 6, i64 6)
  store %struct.Memory* %call_461ada, %struct.Memory** %MEMORY

  %loadBr_461ada = load i8, i8* %BRANCH_TAKEN
  %cmpBr_461ada = icmp eq i8 %loadBr_461ada, 1
  br i1 %cmpBr_461ada, label %block_.L_461b85, label %block_461ae0

block_461ae0:
  ; Code: callq .popgo	 RIP: 461ae0	 Bytes: 5
  %loadMem1_461ae0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_461ae0 = call %struct.Memory* @routine_callq_.popgo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_461ae0, i64 -343424, i64 5, i64 5)
  store %struct.Memory* %call1_461ae0, %struct.Memory** %MEMORY

  %loadMem2_461ae0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_461ae0 = load i64, i64* %3
  %call2_461ae0 = call %struct.Memory* @sub_40dd60.popgo(%struct.State* %0, i64  %loadPC_461ae0, %struct.Memory* %loadMem2_461ae0)
  store %struct.Memory* %call2_461ae0, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0x2e4(%rbp)	 RIP: 461ae5	 Bytes: 7
  %loadMem_461ae5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461ae5 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x2e4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461ae5)
  store %struct.Memory* %call_461ae5, %struct.Memory** %MEMORY

  ; Code: jne .L_461b45	 RIP: 461aec	 Bytes: 6
  %loadMem_461aec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461aec = call %struct.Memory* @routine_jne_.L_461b45(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461aec, i8* %BRANCH_TAKEN, i64 89, i64 6, i64 6)
  store %struct.Memory* %call_461aec, %struct.Memory** %MEMORY

  %loadBr_461aec = load i8, i8* %BRANCH_TAKEN
  %cmpBr_461aec = icmp eq i8 %loadBr_461aec, 1
  br i1 %cmpBr_461aec, label %block_.L_461b45, label %block_461af2

block_461af2:
  ; Code: cmpq $0x0, -0x20(%rbp)	 RIP: 461af2	 Bytes: 5
  %loadMem_461af2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461af2 = call %struct.Memory* @routine_cmpq__0x0__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461af2)
  store %struct.Memory* %call_461af2, %struct.Memory** %MEMORY

  ; Code: je .L_461b06	 RIP: 461af7	 Bytes: 6
  %loadMem_461af7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461af7 = call %struct.Memory* @routine_je_.L_461b06(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461af7, i8* %BRANCH_TAKEN, i64 15, i64 6, i64 6)
  store %struct.Memory* %call_461af7, %struct.Memory** %MEMORY

  %loadBr_461af7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_461af7 = icmp eq i8 %loadBr_461af7, 1
  br i1 %cmpBr_461af7, label %block_.L_461b06, label %block_461afd

block_461afd:
  ; Code: movl -0x34(%rbp), %eax	 RIP: 461afd	 Bytes: 3
  %loadMem_461afd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461afd = call %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461afd)
  store %struct.Memory* %call_461afd, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 461b00	 Bytes: 4
  %loadMem_461b00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461b00 = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461b00)
  store %struct.Memory* %call_461b00, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx)	 RIP: 461b04	 Bytes: 2
  %loadMem_461b04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461b04 = call %struct.Memory* @routine_movl__eax____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461b04)
  store %struct.Memory* %call_461b04, %struct.Memory** %MEMORY

  ; Code: .L_461b06:	 RIP: 461b06	 Bytes: 0
  br label %block_.L_461b06
block_.L_461b06:

  ; Code: cmpq $0x0, 0xab0ef8	 RIP: 461b06	 Bytes: 9
  %loadMem_461b06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461b06 = call %struct.Memory* @routine_cmpq__0x0__0xab0ef8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461b06)
  store %struct.Memory* %call_461b06, %struct.Memory** %MEMORY

  ; Code: je .L_461b39	 RIP: 461b0f	 Bytes: 6
  %loadMem_461b0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461b0f = call %struct.Memory* @routine_je_.L_461b39(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461b0f, i8* %BRANCH_TAKEN, i64 42, i64 6, i64 6)
  store %struct.Memory* %call_461b0f, %struct.Memory** %MEMORY

  %loadBr_461b0f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_461b0f = icmp eq i8 %loadBr_461b0f, 1
  br i1 %cmpBr_461b0f, label %block_.L_461b39, label %block_461b15

block_461b15:
  ; Code: movl $0x5, %ecx	 RIP: 461b15	 Bytes: 5
  %loadMem_461b15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461b15 = call %struct.Memory* @routine_movl__0x5___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461b15)
  store %struct.Memory* %call_461b15, %struct.Memory** %MEMORY

  ; Code: movq $0x57e5fb, %r8	 RIP: 461b1a	 Bytes: 10
  %loadMem_461b1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461b1a = call %struct.Memory* @routine_movq__0x57e5fb___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461b1a)
  store %struct.Memory* %call_461b1a, %struct.Memory** %MEMORY

  ; Code: movq -0x488(%rbp), %rdi	 RIP: 461b24	 Bytes: 7
  %loadMem_461b24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461b24 = call %struct.Memory* @routine_movq_MINUS0x488__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461b24)
  store %struct.Memory* %call_461b24, %struct.Memory** %MEMORY

  ; Code: movl -0x48c(%rbp), %esi	 RIP: 461b2b	 Bytes: 6
  %loadMem_461b2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461b2b = call %struct.Memory* @routine_movl_MINUS0x48c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461b2b)
  store %struct.Memory* %call_461b2b, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %edx	 RIP: 461b31	 Bytes: 3
  %loadMem_461b31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461b31 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461b31)
  store %struct.Memory* %call_461b31, %struct.Memory** %MEMORY

  ; Code: callq .sgf_trace	 RIP: 461b34	 Bytes: 5
  %loadMem1_461b34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_461b34 = call %struct.Memory* @routine_callq_.sgf_trace(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_461b34, i64 -301940, i64 5, i64 5)
  store %struct.Memory* %call1_461b34, %struct.Memory** %MEMORY

  %loadMem2_461b34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_461b34 = load i64, i64* %3
  %call2_461b34 = call %struct.Memory* @sub_417fc0.sgf_trace(%struct.State* %0, i64  %loadPC_461b34, %struct.Memory* %loadMem2_461b34)
  store %struct.Memory* %call2_461b34, %struct.Memory** %MEMORY

  ; Code: .L_461b39:	 RIP: 461b39	 Bytes: 0
  br label %block_.L_461b39
block_.L_461b39:

  ; Code: movl $0x5, -0x14(%rbp)	 RIP: 461b39	 Bytes: 7
  %loadMem_461b39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461b39 = call %struct.Memory* @routine_movl__0x5__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461b39)
  store %struct.Memory* %call_461b39, %struct.Memory** %MEMORY

  ; Code: jmpq .L_461d7b	 RIP: 461b40	 Bytes: 5
  %loadMem_461b40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461b40 = call %struct.Memory* @routine_jmpq_.L_461d7b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461b40, i64 571, i64 5)
  store %struct.Memory* %call_461b40, %struct.Memory** %MEMORY

  br label %block_.L_461d7b

  ; Code: .L_461b45:	 RIP: 461b45	 Bytes: 0
block_.L_461b45:

  ; Code: movl $0x5, %eax	 RIP: 461b45	 Bytes: 5
  %loadMem_461b45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461b45 = call %struct.Memory* @routine_movl__0x5___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461b45)
  store %struct.Memory* %call_461b45, %struct.Memory** %MEMORY

  ; Code: subl -0x2e4(%rbp), %eax	 RIP: 461b4a	 Bytes: 6
  %loadMem_461b4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461b4a = call %struct.Memory* @routine_subl_MINUS0x2e4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461b4a)
  store %struct.Memory* %call_461b4a, %struct.Memory** %MEMORY

  ; Code: cmpl -0x480(%rbp), %eax	 RIP: 461b50	 Bytes: 6
  %loadMem_461b50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461b50 = call %struct.Memory* @routine_cmpl_MINUS0x480__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461b50)
  store %struct.Memory* %call_461b50, %struct.Memory** %MEMORY

  ; Code: jle .L_461b76	 RIP: 461b56	 Bytes: 6
  %loadMem_461b56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461b56 = call %struct.Memory* @routine_jle_.L_461b76(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461b56, i8* %BRANCH_TAKEN, i64 32, i64 6, i64 6)
  store %struct.Memory* %call_461b56, %struct.Memory** %MEMORY

  %loadBr_461b56 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_461b56 = icmp eq i8 %loadBr_461b56, 1
  br i1 %cmpBr_461b56, label %block_.L_461b76, label %block_461b5c

block_461b5c:
  ; Code: movl $0x5, %eax	 RIP: 461b5c	 Bytes: 5
  %loadMem_461b5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461b5c = call %struct.Memory* @routine_movl__0x5___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461b5c)
  store %struct.Memory* %call_461b5c, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %ecx	 RIP: 461b61	 Bytes: 3
  %loadMem_461b61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461b61 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461b61)
  store %struct.Memory* %call_461b61, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x47c(%rbp)	 RIP: 461b64	 Bytes: 6
  %loadMem_461b64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461b64 = call %struct.Memory* @routine_movl__ecx__MINUS0x47c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461b64)
  store %struct.Memory* %call_461b64, %struct.Memory** %MEMORY

  ; Code: subl -0x2e4(%rbp), %eax	 RIP: 461b6a	 Bytes: 6
  %loadMem_461b6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461b6a = call %struct.Memory* @routine_subl_MINUS0x2e4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461b6a)
  store %struct.Memory* %call_461b6a, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x480(%rbp)	 RIP: 461b70	 Bytes: 6
  %loadMem_461b70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461b70 = call %struct.Memory* @routine_movl__eax__MINUS0x480__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461b70)
  store %struct.Memory* %call_461b70, %struct.Memory** %MEMORY

  ; Code: .L_461b76:	 RIP: 461b76	 Bytes: 0
  br label %block_.L_461b76
block_.L_461b76:

  ; Code: jmpq .L_461b7b	 RIP: 461b76	 Bytes: 5
  %loadMem_461b76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461b76 = call %struct.Memory* @routine_jmpq_.L_461b7b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461b76, i64 5, i64 5)
  store %struct.Memory* %call_461b76, %struct.Memory** %MEMORY

  br label %block_.L_461b7b

  ; Code: .L_461b7b:	 RIP: 461b7b	 Bytes: 0
block_.L_461b7b:

  ; Code: jmpq .L_461b80	 RIP: 461b7b	 Bytes: 5
  %loadMem_461b7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461b7b = call %struct.Memory* @routine_jmpq_.L_461b80(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461b7b, i64 5, i64 5)
  store %struct.Memory* %call_461b7b, %struct.Memory** %MEMORY

  br label %block_.L_461b80

  ; Code: .L_461b80:	 RIP: 461b80	 Bytes: 0
block_.L_461b80:

  ; Code: jmpq .L_461b8a	 RIP: 461b80	 Bytes: 5
  %loadMem_461b80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461b80 = call %struct.Memory* @routine_jmpq_.L_461b8a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461b80, i64 10, i64 5)
  store %struct.Memory* %call_461b80, %struct.Memory** %MEMORY

  br label %block_.L_461b8a

  ; Code: .L_461b85:	 RIP: 461b85	 Bytes: 0
block_.L_461b85:

  ; Code: callq .popgo	 RIP: 461b85	 Bytes: 5
  %loadMem1_461b85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_461b85 = call %struct.Memory* @routine_callq_.popgo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_461b85, i64 -343589, i64 5, i64 5)
  store %struct.Memory* %call1_461b85, %struct.Memory** %MEMORY

  %loadMem2_461b85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_461b85 = load i64, i64* %3
  %call2_461b85 = call %struct.Memory* @sub_40dd60.popgo(%struct.State* %0, i64  %loadPC_461b85, %struct.Memory* %loadMem2_461b85)
  store %struct.Memory* %call2_461b85, %struct.Memory** %MEMORY

  ; Code: .L_461b8a:	 RIP: 461b8a	 Bytes: 0
  br label %block_.L_461b8a
block_.L_461b8a:

  ; Code: jmpq .L_461be9	 RIP: 461b8a	 Bytes: 5
  %loadMem_461b8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461b8a = call %struct.Memory* @routine_jmpq_.L_461be9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461b8a, i64 95, i64 5)
  store %struct.Memory* %call_461b8a, %struct.Memory** %MEMORY

  br label %block_.L_461be9

  ; Code: .L_461b8f:	 RIP: 461b8f	 Bytes: 0
block_.L_461b8f:

  ; Code: xorl %eax, %eax	 RIP: 461b8f	 Bytes: 2
  %loadMem_461b8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461b8f = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461b8f)
  store %struct.Memory* %call_461b8f, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 461b91	 Bytes: 2
  %loadMem_461b91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461b91 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461b91)
  store %struct.Memory* %call_461b91, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %edi	 RIP: 461b93	 Bytes: 3
  %loadMem_461b93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461b93 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461b93)
  store %struct.Memory* %call_461b93, %struct.Memory** %MEMORY

  ; Code: movl -0x4a4(%rbp), %edx	 RIP: 461b96	 Bytes: 6
  %loadMem_461b96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461b96 = call %struct.Memory* @routine_movl_MINUS0x4a4__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461b96)
  store %struct.Memory* %call_461b96, %struct.Memory** %MEMORY

  ; Code: movl -0x4a8(%rbp), %ecx	 RIP: 461b9c	 Bytes: 6
  %loadMem_461b9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461b9c = call %struct.Memory* @routine_movl_MINUS0x4a8__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461b9c)
  store %struct.Memory* %call_461b9c, %struct.Memory** %MEMORY

  ; Code: callq .do_find_defense	 RIP: 461ba2	 Bytes: 5
  %loadMem1_461ba2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_461ba2 = call %struct.Memory* @routine_callq_.do_find_defense(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_461ba2, i64 6782, i64 5, i64 5)
  store %struct.Memory* %call1_461ba2, %struct.Memory** %MEMORY

  %loadMem2_461ba2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_461ba2 = load i64, i64* %3
  %call2_461ba2 = call %struct.Memory* @sub_463620.do_find_defense(%struct.State* %0, i64  %loadPC_461ba2, %struct.Memory* %loadMem2_461ba2)
  store %struct.Memory* %call2_461ba2, %struct.Memory** %MEMORY

  ; Code: cmpl $0x5, %eax	 RIP: 461ba7	 Bytes: 3
  %loadMem_461ba7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461ba7 = call %struct.Memory* @routine_cmpl__0x5___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461ba7)
  store %struct.Memory* %call_461ba7, %struct.Memory** %MEMORY

  ; Code: je .L_461be4	 RIP: 461baa	 Bytes: 6
  %loadMem_461baa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461baa = call %struct.Memory* @routine_je_.L_461be4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461baa, i8* %BRANCH_TAKEN, i64 58, i64 6, i64 6)
  store %struct.Memory* %call_461baa, %struct.Memory** %MEMORY

  %loadBr_461baa = load i8, i8* %BRANCH_TAKEN
  %cmpBr_461baa = icmp eq i8 %loadBr_461baa, 1
  br i1 %cmpBr_461baa, label %block_.L_461be4, label %block_461bb0

block_461bb0:
  ; Code: xorl %eax, %eax	 RIP: 461bb0	 Bytes: 2
  %loadMem_461bb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461bb0 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461bb0)
  store %struct.Memory* %call_461bb0, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 461bb2	 Bytes: 2
  %loadMem_461bb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461bb2 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461bb2)
  store %struct.Memory* %call_461bb2, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %edi	 RIP: 461bb4	 Bytes: 3
  %loadMem_461bb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461bb4 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461bb4)
  store %struct.Memory* %call_461bb4, %struct.Memory** %MEMORY

  ; Code: movl -0x4a4(%rbp), %edx	 RIP: 461bb7	 Bytes: 6
  %loadMem_461bb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461bb7 = call %struct.Memory* @routine_movl_MINUS0x4a4__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461bb7)
  store %struct.Memory* %call_461bb7, %struct.Memory** %MEMORY

  ; Code: movl -0x4a8(%rbp), %ecx	 RIP: 461bbd	 Bytes: 6
  %loadMem_461bbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461bbd = call %struct.Memory* @routine_movl_MINUS0x4a8__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461bbd)
  store %struct.Memory* %call_461bbd, %struct.Memory** %MEMORY

  ; Code: callq .do_attack	 RIP: 461bc3	 Bytes: 5
  %loadMem1_461bc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_461bc3 = call %struct.Memory* @routine_callq_.do_attack(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_461bc3, i64 -16099, i64 5, i64 5)
  store %struct.Memory* %call1_461bc3, %struct.Memory** %MEMORY

  %loadMem2_461bc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_461bc3 = load i64, i64* %3
  %call2_461bc3 = call %struct.Memory* @sub_45dce0.do_attack(%struct.State* %0, i64  %loadPC_461bc3, %struct.Memory* %loadMem2_461bc3)
  store %struct.Memory* %call2_461bc3, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 461bc8	 Bytes: 3
  %loadMem_461bc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461bc8 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461bc8)
  store %struct.Memory* %call_461bc8, %struct.Memory** %MEMORY

  ; Code: je .L_461be4	 RIP: 461bcb	 Bytes: 6
  %loadMem_461bcb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461bcb = call %struct.Memory* @routine_je_.L_461be4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461bcb, i8* %BRANCH_TAKEN, i64 25, i64 6, i64 6)
  store %struct.Memory* %call_461bcb, %struct.Memory** %MEMORY

  %loadBr_461bcb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_461bcb = icmp eq i8 %loadBr_461bcb, 1
  br i1 %cmpBr_461bcb, label %block_.L_461be4, label %block_461bd1

block_461bd1:
  ; Code: movl -0x34(%rbp), %eax	 RIP: 461bd1	 Bytes: 3
  %loadMem_461bd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461bd1 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461bd1)
  store %struct.Memory* %call_461bd1, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x47c(%rbp)	 RIP: 461bd4	 Bytes: 6
  %loadMem_461bd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461bd4 = call %struct.Memory* @routine_movl__eax__MINUS0x47c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461bd4)
  store %struct.Memory* %call_461bd4, %struct.Memory** %MEMORY

  ; Code: movl $0x1, -0x480(%rbp)	 RIP: 461bda	 Bytes: 10
  %loadMem_461bda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461bda = call %struct.Memory* @routine_movl__0x1__MINUS0x480__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461bda)
  store %struct.Memory* %call_461bda, %struct.Memory** %MEMORY

  ; Code: .L_461be4:	 RIP: 461be4	 Bytes: 0
  br label %block_.L_461be4
block_.L_461be4:

  ; Code: callq .popgo	 RIP: 461be4	 Bytes: 5
  %loadMem1_461be4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_461be4 = call %struct.Memory* @routine_callq_.popgo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_461be4, i64 -343684, i64 5, i64 5)
  store %struct.Memory* %call1_461be4, %struct.Memory** %MEMORY

  %loadMem2_461be4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_461be4 = load i64, i64* %3
  %call2_461be4 = call %struct.Memory* @sub_40dd60.popgo(%struct.State* %0, i64  %loadPC_461be4, %struct.Memory* %loadMem2_461be4)
  store %struct.Memory* %call2_461be4, %struct.Memory** %MEMORY

  ; Code: .L_461be9:	 RIP: 461be9	 Bytes: 0
  br label %block_.L_461be9
block_.L_461be9:

  ; Code: jmpq .L_461bee	 RIP: 461be9	 Bytes: 5
  %loadMem_461be9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461be9 = call %struct.Memory* @routine_jmpq_.L_461bee(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461be9, i64 5, i64 5)
  store %struct.Memory* %call_461be9, %struct.Memory** %MEMORY

  br label %block_.L_461bee

  ; Code: .L_461bee:	 RIP: 461bee	 Bytes: 0
block_.L_461bee:

  ; Code: jmpq .L_461bf3	 RIP: 461bee	 Bytes: 5
  %loadMem_461bee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461bee = call %struct.Memory* @routine_jmpq_.L_461bf3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461bee, i64 5, i64 5)
  store %struct.Memory* %call_461bee, %struct.Memory** %MEMORY

  br label %block_.L_461bf3

  ; Code: .L_461bf3:	 RIP: 461bf3	 Bytes: 0
block_.L_461bf3:

  ; Code: movl -0x3c(%rbp), %eax	 RIP: 461bf3	 Bytes: 3
  %loadMem_461bf3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461bf3 = call %struct.Memory* @routine_movl_MINUS0x3c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461bf3)
  store %struct.Memory* %call_461bf3, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 461bf6	 Bytes: 3
  %loadMem_461bf6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461bf6 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461bf6)
  store %struct.Memory* %call_461bf6, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x3c(%rbp)	 RIP: 461bf9	 Bytes: 3
  %loadMem_461bf9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461bf9 = call %struct.Memory* @routine_movl__eax__MINUS0x3c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461bf9)
  store %struct.Memory* %call_461bf9, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4619bf	 RIP: 461bfc	 Bytes: 5
  %loadMem_461bfc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461bfc = call %struct.Memory* @routine_jmpq_.L_4619bf(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461bfc, i64 -573, i64 5)
  store %struct.Memory* %call_461bfc, %struct.Memory** %MEMORY

  br label %block_.L_4619bf

  ; Code: .L_461c01:	 RIP: 461c01	 Bytes: 0
block_.L_461c01:

  ; Code: movl 0xb54ce4, %eax	 RIP: 461c01	 Bytes: 7
  %loadMem_461c01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461c01 = call %struct.Memory* @routine_movl_0xb54ce4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461c01)
  store %struct.Memory* %call_461c01, %struct.Memory** %MEMORY

  ; Code: cmpl 0xb060b8, %eax	 RIP: 461c08	 Bytes: 7
  %loadMem_461c08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461c08 = call %struct.Memory* @routine_cmpl_0xb060b8___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461c08)
  store %struct.Memory* %call_461c08, %struct.Memory** %MEMORY

  ; Code: jg .L_461cdc	 RIP: 461c0f	 Bytes: 6
  %loadMem_461c0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461c0f = call %struct.Memory* @routine_jg_.L_461cdc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461c0f, i8* %BRANCH_TAKEN, i64 205, i64 6, i64 6)
  store %struct.Memory* %call_461c0f, %struct.Memory** %MEMORY

  %loadBr_461c0f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_461c0f = icmp eq i8 %loadBr_461c0f, 1
  br i1 %cmpBr_461c0f, label %block_.L_461cdc, label %block_461c15

block_461c15:
  ; Code: leaq -0x34(%rbp), %rsi	 RIP: 461c15	 Bytes: 4
  %loadMem_461c15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461c15 = call %struct.Memory* @routine_leaq_MINUS0x34__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461c15)
  store %struct.Memory* %call_461c15, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %edi	 RIP: 461c19	 Bytes: 3
  %loadMem_461c19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461c19 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461c19)
  store %struct.Memory* %call_461c19, %struct.Memory** %MEMORY

  ; Code: movl -0x24(%rbp), %edx	 RIP: 461c1c	 Bytes: 3
  %loadMem_461c1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461c1c = call %struct.Memory* @routine_movl_MINUS0x24__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461c1c)
  store %struct.Memory* %call_461c1c, %struct.Memory** %MEMORY

  ; Code: movl -0x28(%rbp), %ecx	 RIP: 461c1f	 Bytes: 3
  %loadMem_461c1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461c1f = call %struct.Memory* @routine_movl_MINUS0x28__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461c1f)
  store %struct.Memory* %call_461c1f, %struct.Memory** %MEMORY

  ; Code: callq .find_cap	 RIP: 461c22	 Bytes: 5
  %loadMem1_461c22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_461c22 = call %struct.Memory* @routine_callq_.find_cap(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_461c22, i64 7438, i64 5, i64 5)
  store %struct.Memory* %call1_461c22, %struct.Memory** %MEMORY

  %loadMem2_461c22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_461c22 = load i64, i64* %3
  %call2_461c22 = call %struct.Memory* @sub_463930.find_cap(%struct.State* %0, i64  %loadPC_461c22, %struct.Memory* %loadMem2_461c22)
  store %struct.Memory* %call2_461c22, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4b0(%rbp)	 RIP: 461c27	 Bytes: 6
  %loadMem_461c27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461c27 = call %struct.Memory* @routine_movl__eax__MINUS0x4b0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461c27)
  store %struct.Memory* %call_461c27, %struct.Memory** %MEMORY

  ; Code: movl $0x5, %eax	 RIP: 461c2d	 Bytes: 5
  %loadMem_461c2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461c2d = call %struct.Memory* @routine_movl__0x5___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461c2d)
  store %struct.Memory* %call_461c2d, %struct.Memory** %MEMORY

  ; Code: subl -0x4b0(%rbp), %eax	 RIP: 461c32	 Bytes: 6
  %loadMem_461c32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461c32 = call %struct.Memory* @routine_subl_MINUS0x4b0__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461c32)
  store %struct.Memory* %call_461c32, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 461c38	 Bytes: 3
  %loadMem_461c38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461c38 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461c38)
  store %struct.Memory* %call_461c38, %struct.Memory** %MEMORY

  ; Code: jne .L_461c94	 RIP: 461c3b	 Bytes: 6
  %loadMem_461c3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461c3b = call %struct.Memory* @routine_jne_.L_461c94(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461c3b, i8* %BRANCH_TAKEN, i64 89, i64 6, i64 6)
  store %struct.Memory* %call_461c3b, %struct.Memory** %MEMORY

  %loadBr_461c3b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_461c3b = icmp eq i8 %loadBr_461c3b, 1
  br i1 %cmpBr_461c3b, label %block_.L_461c94, label %block_461c41

block_461c41:
  ; Code: cmpq $0x0, -0x20(%rbp)	 RIP: 461c41	 Bytes: 5
  %loadMem_461c41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461c41 = call %struct.Memory* @routine_cmpq__0x0__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461c41)
  store %struct.Memory* %call_461c41, %struct.Memory** %MEMORY

  ; Code: je .L_461c55	 RIP: 461c46	 Bytes: 6
  %loadMem_461c46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461c46 = call %struct.Memory* @routine_je_.L_461c55(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461c46, i8* %BRANCH_TAKEN, i64 15, i64 6, i64 6)
  store %struct.Memory* %call_461c46, %struct.Memory** %MEMORY

  %loadBr_461c46 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_461c46 = icmp eq i8 %loadBr_461c46, 1
  br i1 %cmpBr_461c46, label %block_.L_461c55, label %block_461c4c

block_461c4c:
  ; Code: movl -0x34(%rbp), %eax	 RIP: 461c4c	 Bytes: 3
  %loadMem_461c4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461c4c = call %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461c4c)
  store %struct.Memory* %call_461c4c, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 461c4f	 Bytes: 4
  %loadMem_461c4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461c4f = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461c4f)
  store %struct.Memory* %call_461c4f, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx)	 RIP: 461c53	 Bytes: 2
  %loadMem_461c53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461c53 = call %struct.Memory* @routine_movl__eax____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461c53)
  store %struct.Memory* %call_461c53, %struct.Memory** %MEMORY

  ; Code: .L_461c55:	 RIP: 461c55	 Bytes: 0
  br label %block_.L_461c55
block_.L_461c55:

  ; Code: cmpq $0x0, 0xab0ef8	 RIP: 461c55	 Bytes: 9
  %loadMem_461c55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461c55 = call %struct.Memory* @routine_cmpq__0x0__0xab0ef8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461c55)
  store %struct.Memory* %call_461c55, %struct.Memory** %MEMORY

  ; Code: je .L_461c88	 RIP: 461c5e	 Bytes: 6
  %loadMem_461c5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461c5e = call %struct.Memory* @routine_je_.L_461c88(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461c5e, i8* %BRANCH_TAKEN, i64 42, i64 6, i64 6)
  store %struct.Memory* %call_461c5e, %struct.Memory** %MEMORY

  %loadBr_461c5e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_461c5e = icmp eq i8 %loadBr_461c5e, 1
  br i1 %cmpBr_461c5e, label %block_.L_461c88, label %block_461c64

block_461c64:
  ; Code: movl $0x5, %ecx	 RIP: 461c64	 Bytes: 5
  %loadMem_461c64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461c64 = call %struct.Memory* @routine_movl__0x5___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461c64)
  store %struct.Memory* %call_461c64, %struct.Memory** %MEMORY

  ; Code: movq $0x57fc32, %r8	 RIP: 461c69	 Bytes: 10
  %loadMem_461c69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461c69 = call %struct.Memory* @routine_movq__0x57fc32___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461c69)
  store %struct.Memory* %call_461c69, %struct.Memory** %MEMORY

  ; Code: movq -0x488(%rbp), %rdi	 RIP: 461c73	 Bytes: 7
  %loadMem_461c73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461c73 = call %struct.Memory* @routine_movq_MINUS0x488__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461c73)
  store %struct.Memory* %call_461c73, %struct.Memory** %MEMORY

  ; Code: movl -0x48c(%rbp), %esi	 RIP: 461c7a	 Bytes: 6
  %loadMem_461c7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461c7a = call %struct.Memory* @routine_movl_MINUS0x48c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461c7a)
  store %struct.Memory* %call_461c7a, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %edx	 RIP: 461c80	 Bytes: 3
  %loadMem_461c80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461c80 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461c80)
  store %struct.Memory* %call_461c80, %struct.Memory** %MEMORY

  ; Code: callq .sgf_trace	 RIP: 461c83	 Bytes: 5
  %loadMem1_461c83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_461c83 = call %struct.Memory* @routine_callq_.sgf_trace(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_461c83, i64 -302275, i64 5, i64 5)
  store %struct.Memory* %call1_461c83, %struct.Memory** %MEMORY

  %loadMem2_461c83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_461c83 = load i64, i64* %3
  %call2_461c83 = call %struct.Memory* @sub_417fc0.sgf_trace(%struct.State* %0, i64  %loadPC_461c83, %struct.Memory* %loadMem2_461c83)
  store %struct.Memory* %call2_461c83, %struct.Memory** %MEMORY

  ; Code: .L_461c88:	 RIP: 461c88	 Bytes: 0
  br label %block_.L_461c88
block_.L_461c88:

  ; Code: movl $0x5, -0x14(%rbp)	 RIP: 461c88	 Bytes: 7
  %loadMem_461c88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461c88 = call %struct.Memory* @routine_movl__0x5__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461c88)
  store %struct.Memory* %call_461c88, %struct.Memory** %MEMORY

  ; Code: jmpq .L_461d7b	 RIP: 461c8f	 Bytes: 5
  %loadMem_461c8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461c8f = call %struct.Memory* @routine_jmpq_.L_461d7b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461c8f, i64 236, i64 5)
  store %struct.Memory* %call_461c8f, %struct.Memory** %MEMORY

  br label %block_.L_461d7b

  ; Code: .L_461c94:	 RIP: 461c94	 Bytes: 0
block_.L_461c94:

  ; Code: movl $0x5, %eax	 RIP: 461c94	 Bytes: 5
  %loadMem_461c94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461c94 = call %struct.Memory* @routine_movl__0x5___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461c94)
  store %struct.Memory* %call_461c94, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 461c99	 Bytes: 2
  %loadMem_461c99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461c99 = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461c99)
  store %struct.Memory* %call_461c99, %struct.Memory** %MEMORY

  ; Code: subl -0x4b0(%rbp), %ecx	 RIP: 461c9b	 Bytes: 6
  %loadMem_461c9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461c9b = call %struct.Memory* @routine_subl_MINUS0x4b0__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461c9b)
  store %struct.Memory* %call_461c9b, %struct.Memory** %MEMORY

  ; Code: subl %ecx, %eax	 RIP: 461ca1	 Bytes: 2
  %loadMem_461ca1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461ca1 = call %struct.Memory* @routine_subl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461ca1)
  store %struct.Memory* %call_461ca1, %struct.Memory** %MEMORY

  ; Code: cmpl -0x480(%rbp), %eax	 RIP: 461ca3	 Bytes: 6
  %loadMem_461ca3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461ca3 = call %struct.Memory* @routine_cmpl_MINUS0x480__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461ca3)
  store %struct.Memory* %call_461ca3, %struct.Memory** %MEMORY

  ; Code: jle .L_461ccd	 RIP: 461ca9	 Bytes: 6
  %loadMem_461ca9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461ca9 = call %struct.Memory* @routine_jle_.L_461ccd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461ca9, i8* %BRANCH_TAKEN, i64 36, i64 6, i64 6)
  store %struct.Memory* %call_461ca9, %struct.Memory** %MEMORY

  %loadBr_461ca9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_461ca9 = icmp eq i8 %loadBr_461ca9, 1
  br i1 %cmpBr_461ca9, label %block_.L_461ccd, label %block_461caf

block_461caf:
  ; Code: movl $0x5, %eax	 RIP: 461caf	 Bytes: 5
  %loadMem_461caf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461caf = call %struct.Memory* @routine_movl__0x5___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461caf)
  store %struct.Memory* %call_461caf, %struct.Memory** %MEMORY

  ; Code: movl -0x34(%rbp), %ecx	 RIP: 461cb4	 Bytes: 3
  %loadMem_461cb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461cb4 = call %struct.Memory* @routine_movl_MINUS0x34__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461cb4)
  store %struct.Memory* %call_461cb4, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x47c(%rbp)	 RIP: 461cb7	 Bytes: 6
  %loadMem_461cb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461cb7 = call %struct.Memory* @routine_movl__ecx__MINUS0x47c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461cb7)
  store %struct.Memory* %call_461cb7, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 461cbd	 Bytes: 2
  %loadMem_461cbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461cbd = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461cbd)
  store %struct.Memory* %call_461cbd, %struct.Memory** %MEMORY

  ; Code: subl -0x4b0(%rbp), %ecx	 RIP: 461cbf	 Bytes: 6
  %loadMem_461cbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461cbf = call %struct.Memory* @routine_subl_MINUS0x4b0__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461cbf)
  store %struct.Memory* %call_461cbf, %struct.Memory** %MEMORY

  ; Code: subl %ecx, %eax	 RIP: 461cc5	 Bytes: 2
  %loadMem_461cc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461cc5 = call %struct.Memory* @routine_subl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461cc5)
  store %struct.Memory* %call_461cc5, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x480(%rbp)	 RIP: 461cc7	 Bytes: 6
  %loadMem_461cc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461cc7 = call %struct.Memory* @routine_movl__eax__MINUS0x480__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461cc7)
  store %struct.Memory* %call_461cc7, %struct.Memory** %MEMORY

  ; Code: .L_461ccd:	 RIP: 461ccd	 Bytes: 0
  br label %block_.L_461ccd
block_.L_461ccd:

  ; Code: jmpq .L_461cd2	 RIP: 461ccd	 Bytes: 5
  %loadMem_461ccd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461ccd = call %struct.Memory* @routine_jmpq_.L_461cd2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461ccd, i64 5, i64 5)
  store %struct.Memory* %call_461ccd, %struct.Memory** %MEMORY

  br label %block_.L_461cd2

  ; Code: .L_461cd2:	 RIP: 461cd2	 Bytes: 0
block_.L_461cd2:

  ; Code: jmpq .L_461cd7	 RIP: 461cd2	 Bytes: 5
  %loadMem_461cd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461cd2 = call %struct.Memory* @routine_jmpq_.L_461cd7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461cd2, i64 5, i64 5)
  store %struct.Memory* %call_461cd2, %struct.Memory** %MEMORY

  br label %block_.L_461cd7

  ; Code: .L_461cd7:	 RIP: 461cd7	 Bytes: 0
block_.L_461cd7:

  ; Code: jmpq .L_461cdc	 RIP: 461cd7	 Bytes: 5
  %loadMem_461cd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461cd7 = call %struct.Memory* @routine_jmpq_.L_461cdc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461cd7, i64 5, i64 5)
  store %struct.Memory* %call_461cd7, %struct.Memory** %MEMORY

  br label %block_.L_461cdc

  ; Code: .L_461cdc:	 RIP: 461cdc	 Bytes: 0
block_.L_461cdc:

  ; Code: jmpq .L_461ce1	 RIP: 461cdc	 Bytes: 5
  %loadMem_461cdc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461cdc = call %struct.Memory* @routine_jmpq_.L_461ce1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461cdc, i64 5, i64 5)
  store %struct.Memory* %call_461cdc, %struct.Memory** %MEMORY

  br label %block_.L_461ce1

  ; Code: .L_461ce1:	 RIP: 461ce1	 Bytes: 0
block_.L_461ce1:

  ; Code: cmpl $0x0, -0x480(%rbp)	 RIP: 461ce1	 Bytes: 7
  %loadMem_461ce1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461ce1 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x480__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461ce1)
  store %struct.Memory* %call_461ce1, %struct.Memory** %MEMORY

  ; Code: je .L_461d41	 RIP: 461ce8	 Bytes: 6
  %loadMem_461ce8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461ce8 = call %struct.Memory* @routine_je_.L_461d41(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461ce8, i8* %BRANCH_TAKEN, i64 89, i64 6, i64 6)
  store %struct.Memory* %call_461ce8, %struct.Memory** %MEMORY

  %loadBr_461ce8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_461ce8 = icmp eq i8 %loadBr_461ce8, 1
  br i1 %cmpBr_461ce8, label %block_.L_461d41, label %block_461cee

block_461cee:
  ; Code: cmpq $0x0, -0x20(%rbp)	 RIP: 461cee	 Bytes: 5
  %loadMem_461cee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461cee = call %struct.Memory* @routine_cmpq__0x0__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461cee)
  store %struct.Memory* %call_461cee, %struct.Memory** %MEMORY

  ; Code: je .L_461d05	 RIP: 461cf3	 Bytes: 6
  %loadMem_461cf3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461cf3 = call %struct.Memory* @routine_je_.L_461d05(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461cf3, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_461cf3, %struct.Memory** %MEMORY

  %loadBr_461cf3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_461cf3 = icmp eq i8 %loadBr_461cf3, 1
  br i1 %cmpBr_461cf3, label %block_.L_461d05, label %block_461cf9

block_461cf9:
  ; Code: movl -0x47c(%rbp), %eax	 RIP: 461cf9	 Bytes: 6
  %loadMem_461cf9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461cf9 = call %struct.Memory* @routine_movl_MINUS0x47c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461cf9)
  store %struct.Memory* %call_461cf9, %struct.Memory** %MEMORY

  ; Code: movq -0x20(%rbp), %rcx	 RIP: 461cff	 Bytes: 4
  %loadMem_461cff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461cff = call %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461cff)
  store %struct.Memory* %call_461cff, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx)	 RIP: 461d03	 Bytes: 2
  %loadMem_461d03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461d03 = call %struct.Memory* @routine_movl__eax____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461d03)
  store %struct.Memory* %call_461d03, %struct.Memory** %MEMORY

  ; Code: .L_461d05:	 RIP: 461d05	 Bytes: 0
  br label %block_.L_461d05
block_.L_461d05:

  ; Code: cmpq $0x0, 0xab0ef8	 RIP: 461d05	 Bytes: 9
  %loadMem_461d05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461d05 = call %struct.Memory* @routine_cmpq__0x0__0xab0ef8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461d05)
  store %struct.Memory* %call_461d05, %struct.Memory** %MEMORY

  ; Code: je .L_461d3c	 RIP: 461d0e	 Bytes: 6
  %loadMem_461d0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461d0e = call %struct.Memory* @routine_je_.L_461d3c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461d0e, i8* %BRANCH_TAKEN, i64 46, i64 6, i64 6)
  store %struct.Memory* %call_461d0e, %struct.Memory** %MEMORY

  %loadBr_461d0e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_461d0e = icmp eq i8 %loadBr_461d0e, 1
  br i1 %cmpBr_461d0e, label %block_.L_461d3c, label %block_461d14

block_461d14:
  ; Code: movq $0x57f60a, %r8	 RIP: 461d14	 Bytes: 10
  %loadMem_461d14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461d14 = call %struct.Memory* @routine_movq__0x57f60a___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461d14)
  store %struct.Memory* %call_461d14, %struct.Memory** %MEMORY

  ; Code: movq -0x488(%rbp), %rdi	 RIP: 461d1e	 Bytes: 7
  %loadMem_461d1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461d1e = call %struct.Memory* @routine_movq_MINUS0x488__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461d1e)
  store %struct.Memory* %call_461d1e, %struct.Memory** %MEMORY

  ; Code: movl -0x48c(%rbp), %esi	 RIP: 461d25	 Bytes: 6
  %loadMem_461d25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461d25 = call %struct.Memory* @routine_movl_MINUS0x48c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461d25)
  store %struct.Memory* %call_461d25, %struct.Memory** %MEMORY

  ; Code: movl -0x47c(%rbp), %edx	 RIP: 461d2b	 Bytes: 6
  %loadMem_461d2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461d2b = call %struct.Memory* @routine_movl_MINUS0x47c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461d2b)
  store %struct.Memory* %call_461d2b, %struct.Memory** %MEMORY

  ; Code: movl -0x480(%rbp), %ecx	 RIP: 461d31	 Bytes: 6
  %loadMem_461d31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461d31 = call %struct.Memory* @routine_movl_MINUS0x480__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461d31)
  store %struct.Memory* %call_461d31, %struct.Memory** %MEMORY

  ; Code: callq .sgf_trace	 RIP: 461d37	 Bytes: 5
  %loadMem1_461d37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_461d37 = call %struct.Memory* @routine_callq_.sgf_trace(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_461d37, i64 -302455, i64 5, i64 5)
  store %struct.Memory* %call1_461d37, %struct.Memory** %MEMORY

  %loadMem2_461d37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_461d37 = load i64, i64* %3
  %call2_461d37 = call %struct.Memory* @sub_417fc0.sgf_trace(%struct.State* %0, i64  %loadPC_461d37, %struct.Memory* %loadMem2_461d37)
  store %struct.Memory* %call2_461d37, %struct.Memory** %MEMORY

  ; Code: .L_461d3c:	 RIP: 461d3c	 Bytes: 0
  br label %block_.L_461d3c
block_.L_461d3c:

  ; Code: jmpq .L_461d72	 RIP: 461d3c	 Bytes: 5
  %loadMem_461d3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461d3c = call %struct.Memory* @routine_jmpq_.L_461d72(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461d3c, i64 54, i64 5)
  store %struct.Memory* %call_461d3c, %struct.Memory** %MEMORY

  br label %block_.L_461d72

  ; Code: .L_461d41:	 RIP: 461d41	 Bytes: 0
block_.L_461d41:

  ; Code: cmpq $0x0, 0xab0ef8	 RIP: 461d41	 Bytes: 9
  %loadMem_461d41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461d41 = call %struct.Memory* @routine_cmpq__0x0__0xab0ef8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461d41)
  store %struct.Memory* %call_461d41, %struct.Memory** %MEMORY

  ; Code: je .L_461d6d	 RIP: 461d4a	 Bytes: 6
  %loadMem_461d4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461d4a = call %struct.Memory* @routine_je_.L_461d6d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461d4a, i8* %BRANCH_TAKEN, i64 35, i64 6, i64 6)
  store %struct.Memory* %call_461d4a, %struct.Memory** %MEMORY

  %loadBr_461d4a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_461d4a = icmp eq i8 %loadBr_461d4a, 1
  br i1 %cmpBr_461d4a, label %block_.L_461d6d, label %block_461d50

block_461d50:
  ; Code: xorl %eax, %eax	 RIP: 461d50	 Bytes: 2
  %loadMem_461d50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461d50 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461d50)
  store %struct.Memory* %call_461d50, %struct.Memory** %MEMORY

  ; Code: xorl %ecx, %ecx	 RIP: 461d52	 Bytes: 2
  %loadMem_461d52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461d52 = call %struct.Memory* @routine_xorl__ecx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461d52)
  store %struct.Memory* %call_461d52, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %r8d	 RIP: 461d54	 Bytes: 3
  %loadMem_461d54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461d54 = call %struct.Memory* @routine_movl__ecx___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461d54)
  store %struct.Memory* %call_461d54, %struct.Memory** %MEMORY

  ; Code: movq -0x488(%rbp), %rdi	 RIP: 461d57	 Bytes: 7
  %loadMem_461d57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461d57 = call %struct.Memory* @routine_movq_MINUS0x488__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461d57)
  store %struct.Memory* %call_461d57, %struct.Memory** %MEMORY

  ; Code: movl -0x48c(%rbp), %esi	 RIP: 461d5e	 Bytes: 6
  %loadMem_461d5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461d5e = call %struct.Memory* @routine_movl_MINUS0x48c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461d5e)
  store %struct.Memory* %call_461d5e, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 461d64	 Bytes: 2
  %loadMem_461d64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461d64 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461d64)
  store %struct.Memory* %call_461d64, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 461d66	 Bytes: 2
  %loadMem_461d66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461d66 = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461d66)
  store %struct.Memory* %call_461d66, %struct.Memory** %MEMORY

  ; Code: callq .sgf_trace	 RIP: 461d68	 Bytes: 5
  %loadMem1_461d68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_461d68 = call %struct.Memory* @routine_callq_.sgf_trace(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_461d68, i64 -302504, i64 5, i64 5)
  store %struct.Memory* %call1_461d68, %struct.Memory** %MEMORY

  %loadMem2_461d68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_461d68 = load i64, i64* %3
  %call2_461d68 = call %struct.Memory* @sub_417fc0.sgf_trace(%struct.State* %0, i64  %loadPC_461d68, %struct.Memory* %loadMem2_461d68)
  store %struct.Memory* %call2_461d68, %struct.Memory** %MEMORY

  ; Code: .L_461d6d:	 RIP: 461d6d	 Bytes: 0
  br label %block_.L_461d6d
block_.L_461d6d:

  ; Code: jmpq .L_461d72	 RIP: 461d6d	 Bytes: 5
  %loadMem_461d6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461d6d = call %struct.Memory* @routine_jmpq_.L_461d72(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461d6d, i64 5, i64 5)
  store %struct.Memory* %call_461d6d, %struct.Memory** %MEMORY

  br label %block_.L_461d72

  ; Code: .L_461d72:	 RIP: 461d72	 Bytes: 0
block_.L_461d72:

  ; Code: movl -0x480(%rbp), %eax	 RIP: 461d72	 Bytes: 6
  %loadMem_461d72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461d72 = call %struct.Memory* @routine_movl_MINUS0x480__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461d72)
  store %struct.Memory* %call_461d72, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x14(%rbp)	 RIP: 461d78	 Bytes: 3
  %loadMem_461d78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461d78 = call %struct.Memory* @routine_movl__eax__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461d78)
  store %struct.Memory* %call_461d78, %struct.Memory** %MEMORY

  ; Code: .L_461d7b:	 RIP: 461d7b	 Bytes: 0
  br label %block_.L_461d7b
block_.L_461d7b:

  ; Code: movl -0x14(%rbp), %eax	 RIP: 461d7b	 Bytes: 3
  %loadMem_461d7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461d7b = call %struct.Memory* @routine_movl_MINUS0x14__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461d7b)
  store %struct.Memory* %call_461d7b, %struct.Memory** %MEMORY

  ; Code: addq $0x4f0, %rsp	 RIP: 461d7e	 Bytes: 7
  %loadMem_461d7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461d7e = call %struct.Memory* @routine_addq__0x4f0___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461d7e)
  store %struct.Memory* %call_461d7e, %struct.Memory** %MEMORY

  ; Code: popq %rbx	 RIP: 461d85	 Bytes: 1
  %loadMem_461d85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461d85 = call %struct.Memory* @routine_popq__rbx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461d85)
  store %struct.Memory* %call_461d85, %struct.Memory** %MEMORY

  ; Code: popq %r14	 RIP: 461d86	 Bytes: 2
  %loadMem_461d86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461d86 = call %struct.Memory* @routine_popq__r14(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461d86)
  store %struct.Memory* %call_461d86, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 461d88	 Bytes: 1
  %loadMem_461d88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461d88 = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461d88)
  store %struct.Memory* %call_461d88, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 461d89	 Bytes: 1
  %loadMem_461d89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_461d89 = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_461d89)
  store %struct.Memory* %call_461d89, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_461d89
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

define %struct.Memory* @routine_subq__0x4f0___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 1264)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__0x57fe5e___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0x57fe5e_type* @G__0x57fe5e to i64))
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

define %struct.Memory* @routine_movl__edi__MINUS0x18__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 24
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

define %struct.Memory* @routine_movq__rsi__MINUS0x20__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RSI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__edx__MINUS0x24__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 36
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = sext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movslq_MINUS0x18__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 24
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


define %struct.Memory* @routine_movl__ecx__MINUS0x2c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 44
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

define %struct.Memory* @routine_subl_MINUS0x2c__rbp____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = sub i64 %15, 44
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 4
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_movl__r8d__MINUS0x30__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 48
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

define %struct.Memory* @routine_movl__0x0__MINUS0x2e4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 740
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x0__MINUS0x47c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 1148
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x0__MINUS0x480__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 1152
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movq__rax__MINUS0x488__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 1160
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

define %struct.Memory* @routine_movl_MINUS0x18__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__ecx__MINUS0x48c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1164
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movslq_MINUS0x18__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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

define %struct.Memory* @routine_cmpl__0x1___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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

define %struct.Memory* @routine_je_.L_46142a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jne_.L_46142f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jmpq_.L_461457(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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


define %struct.Memory* @routine_movl__0xbcc___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 3020)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__0x57fbff___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G__0x57fbff_type* @G__0x57fbff to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__0xffffffff___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 4294967295)
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_movl__eax___r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8D = bitcast %union.anon* %11 to i32*
  %12 = bitcast i32* %R8D to i64*
  %13 = load i32, i32* %EAX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_movl_0xae23a4___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G_0xae23a4_type* @G_0xae23a4 to i64))
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


define %struct.Memory* @routine_movl__eax__0xae23a4(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0xae23a4_type* @G_0xae23a4 to i64), i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x0__MINUS0x2e8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 744
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
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

define %struct.Memory* @routine_jle_.L_4614c3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_je_.L_4614b7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x57fc5b___r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 ptrtoint( %G__0x57fc5b_type* @G__0x57fc5b to i64))
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i64*
  %6 = load i64, i64* %5
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq_MINUS0x488__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1160
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x48c__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1164
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


define %struct.Memory* @routine_jmpq_.L_461d7b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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

define %struct.Memory* @routine_leaq_MINUS0x2e0__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 736
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x18__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
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


define %struct.Memory* @routine_cmpl_MINUS0x54__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 84
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

define %struct.Memory* @routine_jge_.L_4615fe(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_leaq_MINUS0x478__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1144
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movl_MINUS0x2e0__rbp__rax_4____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %18 = add i64 %15, -736
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %19)
  ret %struct.Memory* %22
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


define %struct.Memory* @routine_leaq_MINUS0x490__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1168
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
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


define %struct.Memory* @routine_movl__0x0__MINUS0x494__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 1172
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_MINUS0x494__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 1172
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_cmpl_MINUS0x2e8__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 744
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_461592(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movslq_MINUS0x494__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 1172
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x478__rbp__rax_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %18 = add i64 %15, -1144
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %19)
  ret %struct.Memory* %22
}


define %struct.Memory* @routine_cmpl_MINUS0x490__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 1168
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jne_.L_461579(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl_MINUS0x3b0__rbp__rax_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %18 = add i64 %15, -944
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


define %struct.Memory* @routine_movl__ecx__MINUS0x3b0__rbp__rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %18 = add i64 %15, -944
  %19 = add i64 %18, %17
  %20 = load i32, i32* %ECX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %21)
  ret %struct.Memory* %24
}


define %struct.Memory* @routine_jmpq_.L_461592(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_46157e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_movl__eax__MINUS0x494__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1172
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_461530(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_jne_.L_4615e6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_cmpl__0x32__MINUS0x2e8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 744
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 50)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_4615e6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_MINUS0x490__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 1168
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movslq_MINUS0x2e8__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 744
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__eax__MINUS0x478__rbp__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %18 = add i64 %15, -1144
  %19 = add i64 %18, %17
  %20 = load i32, i32* %EAX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %21)
  ret %struct.Memory* %24
}




define %struct.Memory* @routine_movl__0x0__MINUS0x3b0__rbp__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %12, -944
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 11
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %16, i64 0)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_movl_MINUS0x2e8__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 744
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__eax__MINUS0x2e8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 744
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_4615eb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_4615f0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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


define %struct.Memory* @routine_jmpq_.L_4614e1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_callq_.double_atari_chain2_moves(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x0__MINUS0x3c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 60
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
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




define %struct.Memory* @routine_jge_.L_461646(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_addl__0x5___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 5)
  ret %struct.Memory* %12
}








define %struct.Memory* @routine_movl__eax__MINUS0x3c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 60
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_461614(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movl__0x4___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 4)
  ret %struct.Memory* %11
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






define %struct.Memory* @routine_movl__eax__MINUS0x40__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 64
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_cmpl__0x4__MINUS0x40__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 64
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 4)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_461669(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_4616da(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_movl__0xbe8___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 3048)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__0x57fce9___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G__0x57fce9_type* @G__0x57fce9 to i64))
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


define %struct.Memory* @routine_movq__rdx__MINUS0x4c0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1216
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


define %struct.Memory* @routine_movl_MINUS0x4b8__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1208
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


define %struct.Memory* @routine_movl_MINUS0x18__rbp____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 24
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_movq_MINUS0x4c0__rbp____r9(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1216
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R9, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__edx__MINUS0x4c8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1224
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


define %struct.Memory* @routine_movl_MINUS0x4c4__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1220
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x4c8__rbp____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 1224
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}






define %struct.Memory* @routine_cmpl__0x4__MINUS0x3c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 60
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 4)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_461982(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl_MINUS0x50__rbp__rax_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %18 = add i64 %15, -80
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 4
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %19)
  ret %struct.Memory* %22
}


define %struct.Memory* @routine_movl__ecx__MINUS0x498__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1176
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_0xb54ce4___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G_0xb54ce4_type* @G_0xb54ce4 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_cmpl_0xb060b8___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 ptrtoint( %G_0xb060b8_type* @G_0xb060b8 to i64))
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jle_.L_4617ac(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jg_.L_461795(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_MINUS0x498__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 1176
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


define %struct.Memory* @routine_cmpl_MINUS0x30__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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


define %struct.Memory* @routine_je_.L_461795(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




















define %struct.Memory* @routine_jne_.L_4617ac(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_MINUS0x498__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1176
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


define %struct.Memory* @routine_jne_.L_46187b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_4617b1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movl__0x0__MINUS0x49c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 1180
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_MINUS0x49c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 1180
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_jge_.L_46181d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movslq_MINUS0x49c__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 1180
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_cmpl_MINUS0x498__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 1176
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jne_.L_461804(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_jmpq_.L_46181d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_461809(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_movl__eax__MINUS0x49c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1180
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_4617bb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_jne_.L_461871(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jge_.L_461871(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


















define %struct.Memory* @routine_jmpq_.L_461876(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_46187b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_leaq_MINUS0x34__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl_MINUS0x498__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1176
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_callq_.edge_closing_backfill(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_je_.L_46195f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_46189b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movl__0x0__MINUS0x4a0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 1184
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_MINUS0x4a0__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 1184
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_jge_.L_461904(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movslq_MINUS0x4a0__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 1184
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_cmpl_MINUS0x34__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 52
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jne_.L_4618eb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_addl__0xa___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 10)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_jmpq_.L_461904(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_4618f0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_movl__eax__MINUS0x4a0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1184
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_4618a5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_jne_.L_461955(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jge_.L_461955(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_movl__0xa__MINUS0x3b0__rbp__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %12, -944
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 11
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %16, i64 10)
  ret %struct.Memory* %19
}








define %struct.Memory* @routine_jmpq_.L_46195a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_46195f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_leaq_MINUS0x478__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1144
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
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








define %struct.Memory* @routine_jmpq_.L_4616e1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_leaq_MINUS0x478__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1144
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_leaq_MINUS0x50__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 80
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl_MINUS0x40__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
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




define %struct.Memory* @routine_movl_MINUS0x30__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 48
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_MINUS0x488__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1160
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








define %struct.Memory* @routine_jge_.L_461c01(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpl_0xb6308c___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 ptrtoint( %G_0xb6308c_type* @G_0xb6308c to i64))
  ret %struct.Memory* %13
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

define %struct.Memory* @routine_jl_.L_4619f1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x0__MINUS0x3c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 60
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jle_.L_4619f1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_461c01(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movq__0x57fc28___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G__0x57fc28_type* @G__0x57fc28 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_leaq_MINUS0x4a4__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 1188
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_leaq_MINUS0x4a8__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1192
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_leaq_MINUS0x4ac__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1196
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_xorl__edi___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDI
  %13 = load i32, i32* %EDI
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3XORI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movslq_MINUS0x3c__rbp____r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 60
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x478__rbp__r8_4____r9d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 17
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %R8 = bitcast %union.anon* %14 to i64*
  %15 = bitcast i32* %R9D to i64*
  %16 = load i64, i64* %RBP
  %17 = load i64, i64* %R8
  %18 = mul i64 %17, 4
  %19 = add i64 %16, -1144
  %20 = add i64 %19, %18
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 8
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %15, i64 %20)
  ret %struct.Memory* %23
}


define %struct.Memory* @routine_movl__r9d__MINUS0x34__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 52
  %14 = load i32, i32* %R9D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x34__rbp____r9d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 52
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl_MINUS0x30__rbp____r10d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 48
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl_MINUS0x18__rbp____r11d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 24
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl_MINUS0x24__rbp____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 36
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl_MINUS0x28__rbp____ebx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 40
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RBX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__edi__MINUS0x4cc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1228
  %14 = load i32, i32* %EDI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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


define %struct.Memory* @routine_movq__rsi__MINUS0x4d8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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


define %struct.Memory* @routine_movq__rcx__MINUS0x4e0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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


define %struct.Memory* @routine_movl__ebx___r9d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9D = bitcast %union.anon* %11 to i32*
  %12 = bitcast i32* %R9D to i64*
  %13 = load i32, i32* %EBX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__rax____rsp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 13
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSP
  %13 = load i64, i64* %RAX
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_MINUS0x4e0__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__rax__0x8__rsp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 13
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSP
  %13 = add i64 %12, 8
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq_MINUS0x4d8__rbp____r14(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1240
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R14, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq__r14__0x10__rsp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 16
  %14 = load i64, i64* %R14
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__0x0__0x18__rsp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 24
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
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




define %struct.Memory* @routine_je_.L_461bee(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x0__MINUS0x4ac__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 1196
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_461b8f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl_MINUS0x4a4__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1188
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x4a8__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1192
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


define %struct.Memory* @routine_movl__eax__MINUS0x2e4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 740
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_cmpl__0x5__MINUS0x2e4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 740
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 5)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_461b85(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x0__MINUS0x2e4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 740
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_461b45(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_je_.L_461b06(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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




define %struct.Memory* @routine_je_.L_461b39(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movl_MINUS0x34__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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




define %struct.Memory* @routine_movl__0x5__MINUS0x14__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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


define %struct.Memory* @routine_subl_MINUS0x2e4__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = sub i64 %13, 740
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_cmpl_MINUS0x480__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 1152
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jle_.L_461b76(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl_MINUS0x34__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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


define %struct.Memory* @routine_movl__ecx__MINUS0x47c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1148
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movl__eax__MINUS0x480__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1152
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_461b7b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_461b80(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_461b8a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_jmpq_.L_461be9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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


define %struct.Memory* @routine_je_.L_461be4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




















define %struct.Memory* @routine_movl__eax__MINUS0x47c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1148
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__0x1__MINUS0x480__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 1152
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_jmpq_.L_461bee(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_461bf3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_4619bf(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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


define %struct.Memory* @routine_jg_.L_461cdc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_leaq_MINUS0x34__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 52
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl_MINUS0x24__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x28__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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


define %struct.Memory* @routine_callq_.find_cap(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__eax__MINUS0x4b0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1200
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_subl_MINUS0x4b0__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = sub i64 %13, 1200
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_jne_.L_461c94(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_je_.L_461c55(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_je_.L_461c88(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movq__0x57fc32___r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 ptrtoint( %G__0x57fc32_type* @G__0x57fc32 to i64))
  ret %struct.Memory* %11
}


















define %struct.Memory* @routine_subl_MINUS0x4b0__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 1200
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




define %struct.Memory* @routine_jle_.L_461ccd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
















define %struct.Memory* @routine_jmpq_.L_461cd2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_461cd7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_461cdc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_461ce1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_cmpl__0x0__MINUS0x480__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 1152
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_461d41(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_je_.L_461d05(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_MINUS0x47c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 1148
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_je_.L_461d3c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movl_MINUS0x47c__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1148
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x480__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1152
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_jmpq_.L_461d72(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_je_.L_461d6d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














define %struct.Memory* @routine_movl_MINUS0x480__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 1152
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
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

define %struct.Memory* @routine_addq__0x4f0___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 1264)
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

