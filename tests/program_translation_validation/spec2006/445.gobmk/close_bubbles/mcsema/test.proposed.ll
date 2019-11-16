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


define %struct.Memory* @close_bubbles(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .close_bubbles:	 RIP: 46d5f0	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 46d5f0	 Bytes: 1
  %loadMem_46d5f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d5f0 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d5f0)
  store %struct.Memory* %call_46d5f0, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 46d5f1	 Bytes: 3
  %loadMem_46d5f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d5f1 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d5f1)
  store %struct.Memory* %call_46d5f1, %struct.Memory** %MEMORY

  ; Code: subq $0x670, %rsp	 RIP: 46d5f4	 Bytes: 7
  %loadMem_46d5f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d5f4 = call %struct.Memory* @routine_subq__0x670___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d5f4)
  store %struct.Memory* %call_46d5f4, %struct.Memory** %MEMORY

  ; Code: xorl %esi, %esi	 RIP: 46d5fb	 Bytes: 2
  %loadMem_46d5fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d5fb = call %struct.Memory* @routine_xorl__esi___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d5fb)
  store %struct.Memory* %call_46d5fb, %struct.Memory** %MEMORY

  ; Code: movl $0x640, %eax	 RIP: 46d5fd	 Bytes: 5
  %loadMem_46d5fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d5fd = call %struct.Memory* @routine_movl__0x640___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d5fd)
  store %struct.Memory* %call_46d5fd, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 46d602	 Bytes: 2
  %loadMem_46d602 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d602 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d602)
  store %struct.Memory* %call_46d602, %struct.Memory** %MEMORY

  ; Code: leaq -0x650(%rbp), %rcx	 RIP: 46d604	 Bytes: 7
  %loadMem_46d604 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d604 = call %struct.Memory* @routine_leaq_MINUS0x650__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d604)
  store %struct.Memory* %call_46d604, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x8(%rbp)	 RIP: 46d60b	 Bytes: 4
  %loadMem_46d60b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d60b = call %struct.Memory* @routine_movq__rdi__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d60b)
  store %struct.Memory* %call_46d60b, %struct.Memory** %MEMORY

  ; Code: movl $0x1, -0x658(%rbp)	 RIP: 46d60f	 Bytes: 10
  %loadMem_46d60f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d60f = call %struct.Memory* @routine_movl__0x1__MINUS0x658__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d60f)
  store %struct.Memory* %call_46d60f, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 46d619	 Bytes: 3
  %loadMem_46d619 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d619 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d619)
  store %struct.Memory* %call_46d619, %struct.Memory** %MEMORY

  ; Code: callq .memset_plt	 RIP: 46d61c	 Bytes: 5
  %loadMem1_46d61c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46d61c = call %struct.Memory* @routine_callq_.memset_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46d61c, i64 -443820, i64 5, i64 5)
  store %struct.Memory* %call1_46d61c, %struct.Memory** %MEMORY

  %loadMem2_46d61c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46d61c = load i64, i64* %3
  %call2_46d61c = call %struct.Memory* @ext_memset(%struct.State* %0, i64  %loadPC_46d61c, %struct.Memory* %loadMem2_46d61c)
  store %struct.Memory* %call2_46d61c, %struct.Memory** %MEMORY

  ; Code: .L_46d621:	 RIP: 46d621	 Bytes: 0
  br label %block_.L_46d621
block_.L_46d621:

  ; Code: cmpl $0x0, -0x658(%rbp)	 RIP: 46d621	 Bytes: 7
  %loadMem_46d621 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d621 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x658__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d621)
  store %struct.Memory* %call_46d621, %struct.Memory** %MEMORY

  ; Code: je .L_46db36	 RIP: 46d628	 Bytes: 6
  %loadMem_46d628 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d628 = call %struct.Memory* @routine_je_.L_46db36(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d628, i8* %BRANCH_TAKEN, i64 1294, i64 6, i64 6)
  store %struct.Memory* %call_46d628, %struct.Memory** %MEMORY

  %loadBr_46d628 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46d628 = icmp eq i8 %loadBr_46d628, 1
  br i1 %cmpBr_46d628, label %block_.L_46db36, label %block_46d62e

block_46d62e:
  ; Code: movl $0x0, -0x658(%rbp)	 RIP: 46d62e	 Bytes: 10
  %loadMem_46d62e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d62e = call %struct.Memory* @routine_movl__0x0__MINUS0x658__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d62e)
  store %struct.Memory* %call_46d62e, %struct.Memory** %MEMORY

  ; Code: movl $0x15, -0x654(%rbp)	 RIP: 46d638	 Bytes: 10
  %loadMem_46d638 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d638 = call %struct.Memory* @routine_movl__0x15__MINUS0x654__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d638)
  store %struct.Memory* %call_46d638, %struct.Memory** %MEMORY

  ; Code: .L_46d642:	 RIP: 46d642	 Bytes: 0
  br label %block_.L_46d642
block_.L_46d642:

  ; Code: cmpl $0x190, -0x654(%rbp)	 RIP: 46d642	 Bytes: 10
  %loadMem_46d642 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d642 = call %struct.Memory* @routine_cmpl__0x190__MINUS0x654__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d642)
  store %struct.Memory* %call_46d642, %struct.Memory** %MEMORY

  ; Code: jge .L_46db31	 RIP: 46d64c	 Bytes: 6
  %loadMem_46d64c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d64c = call %struct.Memory* @routine_jge_.L_46db31(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d64c, i8* %BRANCH_TAKEN, i64 1253, i64 6, i64 6)
  store %struct.Memory* %call_46d64c, %struct.Memory** %MEMORY

  %loadBr_46d64c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46d64c = icmp eq i8 %loadBr_46d64c, 1
  br i1 %cmpBr_46d64c, label %block_.L_46db31, label %block_46d652

block_46d652:
  ; Code: movl $0x0, -0x65c(%rbp)	 RIP: 46d652	 Bytes: 10
  %loadMem_46d652 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d652 = call %struct.Memory* @routine_movl__0x0__MINUS0x65c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d652)
  store %struct.Memory* %call_46d652, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x660(%rbp)	 RIP: 46d65c	 Bytes: 10
  %loadMem_46d65c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d65c = call %struct.Memory* @routine_movl__0x0__MINUS0x660__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d65c)
  store %struct.Memory* %call_46d65c, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x664(%rbp)	 RIP: 46d666	 Bytes: 10
  %loadMem_46d666 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d666 = call %struct.Memory* @routine_movl__0x0__MINUS0x664__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d666)
  store %struct.Memory* %call_46d666, %struct.Memory** %MEMORY

  ; Code: movslq -0x654(%rbp), %rax	 RIP: 46d670	 Bytes: 7
  %loadMem_46d670 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d670 = call %struct.Memory* @routine_movslq_MINUS0x654__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d670)
  store %struct.Memory* %call_46d670, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 46d677	 Bytes: 8
  %loadMem_46d677 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d677 = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d677)
  store %struct.Memory* %call_46d677, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %ecx	 RIP: 46d67f	 Bytes: 3
  %loadMem_46d67f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d67f = call %struct.Memory* @routine_cmpl__0x3___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d67f)
  store %struct.Memory* %call_46d67f, %struct.Memory** %MEMORY

  ; Code: je .L_46d6b2	 RIP: 46d682	 Bytes: 6
  %loadMem_46d682 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d682 = call %struct.Memory* @routine_je_.L_46d6b2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d682, i8* %BRANCH_TAKEN, i64 48, i64 6, i64 6)
  store %struct.Memory* %call_46d682, %struct.Memory** %MEMORY

  %loadBr_46d682 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46d682 = icmp eq i8 %loadBr_46d682, 1
  br i1 %cmpBr_46d682, label %block_.L_46d6b2, label %block_46d688

block_46d688:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 46d688	 Bytes: 4
  %loadMem_46d688 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d688 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d688)
  store %struct.Memory* %call_46d688, %struct.Memory** %MEMORY

  ; Code: movslq -0x654(%rbp), %rcx	 RIP: 46d68c	 Bytes: 7
  %loadMem_46d68c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d68c = call %struct.Memory* @routine_movslq_MINUS0x654__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d68c)
  store %struct.Memory* %call_46d68c, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, (%rax,%rcx,4)	 RIP: 46d693	 Bytes: 4
  %loadMem_46d693 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d693 = call %struct.Memory* @routine_cmpl__0x0____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d693)
  store %struct.Memory* %call_46d693, %struct.Memory** %MEMORY

  ; Code: jne .L_46d6b2	 RIP: 46d697	 Bytes: 6
  %loadMem_46d697 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d697 = call %struct.Memory* @routine_jne_.L_46d6b2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d697, i8* %BRANCH_TAKEN, i64 27, i64 6, i64 6)
  store %struct.Memory* %call_46d697, %struct.Memory** %MEMORY

  %loadBr_46d697 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46d697 = icmp eq i8 %loadBr_46d697, 1
  br i1 %cmpBr_46d697, label %block_.L_46d6b2, label %block_46d69d

block_46d69d:
  ; Code: movslq -0x654(%rbp), %rax	 RIP: 46d69d	 Bytes: 7
  %loadMem_46d69d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d69d = call %struct.Memory* @routine_movslq_MINUS0x654__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d69d)
  store %struct.Memory* %call_46d69d, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, -0x650(%rbp,%rax,4)	 RIP: 46d6a4	 Bytes: 8
  %loadMem_46d6a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d6a4 = call %struct.Memory* @routine_cmpl__0x3__MINUS0x650__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d6a4)
  store %struct.Memory* %call_46d6a4, %struct.Memory** %MEMORY

  ; Code: jne .L_46d6b7	 RIP: 46d6ac	 Bytes: 6
  %loadMem_46d6ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d6ac = call %struct.Memory* @routine_jne_.L_46d6b7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d6ac, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_46d6ac, %struct.Memory** %MEMORY

  %loadBr_46d6ac = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46d6ac = icmp eq i8 %loadBr_46d6ac, 1
  br i1 %cmpBr_46d6ac, label %block_.L_46d6b7, label %block_.L_46d6b2

  ; Code: .L_46d6b2:	 RIP: 46d6b2	 Bytes: 0
block_.L_46d6b2:

  ; Code: jmpq .L_46db1d	 RIP: 46d6b2	 Bytes: 5
  %loadMem_46d6b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d6b2 = call %struct.Memory* @routine_jmpq_.L_46db1d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d6b2, i64 1131, i64 5)
  store %struct.Memory* %call_46d6b2, %struct.Memory** %MEMORY

  br label %block_.L_46db1d

  ; Code: .L_46d6b7:	 RIP: 46d6b7	 Bytes: 0
block_.L_46d6b7:

  ; Code: movl -0x654(%rbp), %eax	 RIP: 46d6b7	 Bytes: 6
  %loadMem_46d6b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d6b7 = call %struct.Memory* @routine_movl_MINUS0x654__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d6b7)
  store %struct.Memory* %call_46d6b7, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 46d6bd	 Bytes: 3
  %loadMem_46d6bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d6bd = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d6bd)
  store %struct.Memory* %call_46d6bd, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 46d6c0	 Bytes: 3
  %loadMem_46d6c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d6c0 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d6c0)
  store %struct.Memory* %call_46d6c0, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 46d6c3	 Bytes: 8
  %loadMem_46d6c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d6c3 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d6c3)
  store %struct.Memory* %call_46d6c3, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %eax	 RIP: 46d6cb	 Bytes: 3
  %loadMem_46d6cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d6cb = call %struct.Memory* @routine_cmpl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d6cb)
  store %struct.Memory* %call_46d6cb, %struct.Memory** %MEMORY

  ; Code: je .L_46d6ee	 RIP: 46d6ce	 Bytes: 6
  %loadMem_46d6ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d6ce = call %struct.Memory* @routine_je_.L_46d6ee(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d6ce, i8* %BRANCH_TAKEN, i64 32, i64 6, i64 6)
  store %struct.Memory* %call_46d6ce, %struct.Memory** %MEMORY

  %loadBr_46d6ce = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46d6ce = icmp eq i8 %loadBr_46d6ce, 1
  br i1 %cmpBr_46d6ce, label %block_.L_46d6ee, label %block_46d6d4

block_46d6d4:
  ; Code: movl -0x654(%rbp), %eax	 RIP: 46d6d4	 Bytes: 6
  %loadMem_46d6d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d6d4 = call %struct.Memory* @routine_movl_MINUS0x654__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d6d4)
  store %struct.Memory* %call_46d6d4, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 46d6da	 Bytes: 3
  %loadMem_46d6da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d6da = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d6da)
  store %struct.Memory* %call_46d6da, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 46d6dd	 Bytes: 3
  %loadMem_46d6dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d6dd = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d6dd)
  store %struct.Memory* %call_46d6dd, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, -0x650(%rbp,%rcx,4)	 RIP: 46d6e0	 Bytes: 8
  %loadMem_46d6e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d6e0 = call %struct.Memory* @routine_cmpl__0x3__MINUS0x650__rbp__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d6e0)
  store %struct.Memory* %call_46d6e0, %struct.Memory** %MEMORY

  ; Code: je .L_46d793	 RIP: 46d6e8	 Bytes: 6
  %loadMem_46d6e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d6e8 = call %struct.Memory* @routine_je_.L_46d793(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d6e8, i8* %BRANCH_TAKEN, i64 171, i64 6, i64 6)
  store %struct.Memory* %call_46d6e8, %struct.Memory** %MEMORY

  %loadBr_46d6e8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46d6e8 = icmp eq i8 %loadBr_46d6e8, 1
  br i1 %cmpBr_46d6e8, label %block_.L_46d793, label %block_.L_46d6ee

  ; Code: .L_46d6ee:	 RIP: 46d6ee	 Bytes: 0
block_.L_46d6ee:

  ; Code: movl -0x654(%rbp), %eax	 RIP: 46d6ee	 Bytes: 6
  %loadMem_46d6ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d6ee = call %struct.Memory* @routine_movl_MINUS0x654__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d6ee)
  store %struct.Memory* %call_46d6ee, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 46d6f4	 Bytes: 3
  %loadMem_46d6f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d6f4 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d6f4)
  store %struct.Memory* %call_46d6f4, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 46d6f7	 Bytes: 3
  %loadMem_46d6f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d6f7 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d6f7)
  store %struct.Memory* %call_46d6f7, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 46d6fa	 Bytes: 8
  %loadMem_46d6fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d6fa = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d6fa)
  store %struct.Memory* %call_46d6fa, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %eax	 RIP: 46d702	 Bytes: 3
  %loadMem_46d702 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d702 = call %struct.Memory* @routine_cmpl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d702)
  store %struct.Memory* %call_46d702, %struct.Memory** %MEMORY

  ; Code: je .L_46d725	 RIP: 46d705	 Bytes: 6
  %loadMem_46d705 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d705 = call %struct.Memory* @routine_je_.L_46d725(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d705, i8* %BRANCH_TAKEN, i64 32, i64 6, i64 6)
  store %struct.Memory* %call_46d705, %struct.Memory** %MEMORY

  %loadBr_46d705 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46d705 = icmp eq i8 %loadBr_46d705, 1
  br i1 %cmpBr_46d705, label %block_.L_46d725, label %block_46d70b

block_46d70b:
  ; Code: movl -0x654(%rbp), %eax	 RIP: 46d70b	 Bytes: 6
  %loadMem_46d70b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d70b = call %struct.Memory* @routine_movl_MINUS0x654__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d70b)
  store %struct.Memory* %call_46d70b, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 46d711	 Bytes: 3
  %loadMem_46d711 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d711 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d711)
  store %struct.Memory* %call_46d711, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 46d714	 Bytes: 3
  %loadMem_46d714 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d714 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d714)
  store %struct.Memory* %call_46d714, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, -0x650(%rbp,%rcx,4)	 RIP: 46d717	 Bytes: 8
  %loadMem_46d717 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d717 = call %struct.Memory* @routine_cmpl__0x3__MINUS0x650__rbp__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d717)
  store %struct.Memory* %call_46d717, %struct.Memory** %MEMORY

  ; Code: je .L_46d793	 RIP: 46d71f	 Bytes: 6
  %loadMem_46d71f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d71f = call %struct.Memory* @routine_je_.L_46d793(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d71f, i8* %BRANCH_TAKEN, i64 116, i64 6, i64 6)
  store %struct.Memory* %call_46d71f, %struct.Memory** %MEMORY

  %loadBr_46d71f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46d71f = icmp eq i8 %loadBr_46d71f, 1
  br i1 %cmpBr_46d71f, label %block_.L_46d793, label %block_.L_46d725

  ; Code: .L_46d725:	 RIP: 46d725	 Bytes: 0
block_.L_46d725:

  ; Code: movl -0x654(%rbp), %eax	 RIP: 46d725	 Bytes: 6
  %loadMem_46d725 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d725 = call %struct.Memory* @routine_movl_MINUS0x654__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d725)
  store %struct.Memory* %call_46d725, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 46d72b	 Bytes: 3
  %loadMem_46d72b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d72b = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d72b)
  store %struct.Memory* %call_46d72b, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 46d72e	 Bytes: 3
  %loadMem_46d72e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d72e = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d72e)
  store %struct.Memory* %call_46d72e, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 46d731	 Bytes: 8
  %loadMem_46d731 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d731 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d731)
  store %struct.Memory* %call_46d731, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %eax	 RIP: 46d739	 Bytes: 3
  %loadMem_46d739 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d739 = call %struct.Memory* @routine_cmpl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d739)
  store %struct.Memory* %call_46d739, %struct.Memory** %MEMORY

  ; Code: je .L_46d75c	 RIP: 46d73c	 Bytes: 6
  %loadMem_46d73c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d73c = call %struct.Memory* @routine_je_.L_46d75c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d73c, i8* %BRANCH_TAKEN, i64 32, i64 6, i64 6)
  store %struct.Memory* %call_46d73c, %struct.Memory** %MEMORY

  %loadBr_46d73c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46d73c = icmp eq i8 %loadBr_46d73c, 1
  br i1 %cmpBr_46d73c, label %block_.L_46d75c, label %block_46d742

block_46d742:
  ; Code: movl -0x654(%rbp), %eax	 RIP: 46d742	 Bytes: 6
  %loadMem_46d742 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d742 = call %struct.Memory* @routine_movl_MINUS0x654__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d742)
  store %struct.Memory* %call_46d742, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 46d748	 Bytes: 3
  %loadMem_46d748 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d748 = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d748)
  store %struct.Memory* %call_46d748, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 46d74b	 Bytes: 3
  %loadMem_46d74b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d74b = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d74b)
  store %struct.Memory* %call_46d74b, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, -0x650(%rbp,%rcx,4)	 RIP: 46d74e	 Bytes: 8
  %loadMem_46d74e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d74e = call %struct.Memory* @routine_cmpl__0x3__MINUS0x650__rbp__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d74e)
  store %struct.Memory* %call_46d74e, %struct.Memory** %MEMORY

  ; Code: je .L_46d793	 RIP: 46d756	 Bytes: 6
  %loadMem_46d756 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d756 = call %struct.Memory* @routine_je_.L_46d793(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d756, i8* %BRANCH_TAKEN, i64 61, i64 6, i64 6)
  store %struct.Memory* %call_46d756, %struct.Memory** %MEMORY

  %loadBr_46d756 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46d756 = icmp eq i8 %loadBr_46d756, 1
  br i1 %cmpBr_46d756, label %block_.L_46d793, label %block_.L_46d75c

  ; Code: .L_46d75c:	 RIP: 46d75c	 Bytes: 0
block_.L_46d75c:

  ; Code: movl -0x654(%rbp), %eax	 RIP: 46d75c	 Bytes: 6
  %loadMem_46d75c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d75c = call %struct.Memory* @routine_movl_MINUS0x654__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d75c)
  store %struct.Memory* %call_46d75c, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 46d762	 Bytes: 3
  %loadMem_46d762 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d762 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d762)
  store %struct.Memory* %call_46d762, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 46d765	 Bytes: 3
  %loadMem_46d765 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d765 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d765)
  store %struct.Memory* %call_46d765, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 46d768	 Bytes: 8
  %loadMem_46d768 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d768 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d768)
  store %struct.Memory* %call_46d768, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %eax	 RIP: 46d770	 Bytes: 3
  %loadMem_46d770 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d770 = call %struct.Memory* @routine_cmpl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d770)
  store %struct.Memory* %call_46d770, %struct.Memory** %MEMORY

  ; Code: je .L_46d7b4	 RIP: 46d773	 Bytes: 6
  %loadMem_46d773 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d773 = call %struct.Memory* @routine_je_.L_46d7b4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d773, i8* %BRANCH_TAKEN, i64 65, i64 6, i64 6)
  store %struct.Memory* %call_46d773, %struct.Memory** %MEMORY

  %loadBr_46d773 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46d773 = icmp eq i8 %loadBr_46d773, 1
  br i1 %cmpBr_46d773, label %block_.L_46d7b4, label %block_46d779

block_46d779:
  ; Code: movl -0x654(%rbp), %eax	 RIP: 46d779	 Bytes: 6
  %loadMem_46d779 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d779 = call %struct.Memory* @routine_movl_MINUS0x654__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d779)
  store %struct.Memory* %call_46d779, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 46d77f	 Bytes: 3
  %loadMem_46d77f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d77f = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d77f)
  store %struct.Memory* %call_46d77f, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 46d782	 Bytes: 3
  %loadMem_46d782 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d782 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d782)
  store %struct.Memory* %call_46d782, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, -0x650(%rbp,%rcx,4)	 RIP: 46d785	 Bytes: 8
  %loadMem_46d785 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d785 = call %struct.Memory* @routine_cmpl__0x3__MINUS0x650__rbp__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d785)
  store %struct.Memory* %call_46d785, %struct.Memory** %MEMORY

  ; Code: jne .L_46d7b4	 RIP: 46d78d	 Bytes: 6
  %loadMem_46d78d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d78d = call %struct.Memory* @routine_jne_.L_46d7b4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d78d, i8* %BRANCH_TAKEN, i64 39, i64 6, i64 6)
  store %struct.Memory* %call_46d78d, %struct.Memory** %MEMORY

  %loadBr_46d78d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46d78d = icmp eq i8 %loadBr_46d78d, 1
  br i1 %cmpBr_46d78d, label %block_.L_46d7b4, label %block_.L_46d793

  ; Code: .L_46d793:	 RIP: 46d793	 Bytes: 0
block_.L_46d793:

  ; Code: movl $0x1, -0x658(%rbp)	 RIP: 46d793	 Bytes: 10
  %loadMem_46d793 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d793 = call %struct.Memory* @routine_movl__0x1__MINUS0x658__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d793)
  store %struct.Memory* %call_46d793, %struct.Memory** %MEMORY

  ; Code: movslq -0x654(%rbp), %rax	 RIP: 46d79d	 Bytes: 7
  %loadMem_46d79d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d79d = call %struct.Memory* @routine_movslq_MINUS0x654__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d79d)
  store %struct.Memory* %call_46d79d, %struct.Memory** %MEMORY

  ; Code: movl $0x3, -0x650(%rbp,%rax,4)	 RIP: 46d7a4	 Bytes: 11
  %loadMem_46d7a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d7a4 = call %struct.Memory* @routine_movl__0x3__MINUS0x650__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d7a4)
  store %struct.Memory* %call_46d7a4, %struct.Memory** %MEMORY

  ; Code: jmpq .L_46db18	 RIP: 46d7af	 Bytes: 5
  %loadMem_46d7af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d7af = call %struct.Memory* @routine_jmpq_.L_46db18(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d7af, i64 873, i64 5)
  store %struct.Memory* %call_46d7af, %struct.Memory** %MEMORY

  br label %block_.L_46db18

  ; Code: .L_46d7b4:	 RIP: 46d7b4	 Bytes: 0
block_.L_46d7b4:

  ; Code: movslq -0x654(%rbp), %rax	 RIP: 46d7b4	 Bytes: 7
  %loadMem_46d7b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d7b4 = call %struct.Memory* @routine_movslq_MINUS0x654__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d7b4)
  store %struct.Memory* %call_46d7b4, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, -0x650(%rbp,%rax,4)	 RIP: 46d7bb	 Bytes: 8
  %loadMem_46d7bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d7bb = call %struct.Memory* @routine_cmpl__0x1__MINUS0x650__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d7bb)
  store %struct.Memory* %call_46d7bb, %struct.Memory** %MEMORY

  ; Code: je .L_46d90d	 RIP: 46d7c3	 Bytes: 6
  %loadMem_46d7c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d7c3 = call %struct.Memory* @routine_je_.L_46d90d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d7c3, i8* %BRANCH_TAKEN, i64 330, i64 6, i64 6)
  store %struct.Memory* %call_46d7c3, %struct.Memory** %MEMORY

  %loadBr_46d7c3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46d7c3 = icmp eq i8 %loadBr_46d7c3, 1
  br i1 %cmpBr_46d7c3, label %block_.L_46d90d, label %block_46d7c9

block_46d7c9:
  ; Code: movl -0x654(%rbp), %eax	 RIP: 46d7c9	 Bytes: 6
  %loadMem_46d7c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d7c9 = call %struct.Memory* @routine_movl_MINUS0x654__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d7c9)
  store %struct.Memory* %call_46d7c9, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 46d7cf	 Bytes: 3
  %loadMem_46d7cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d7cf = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d7cf)
  store %struct.Memory* %call_46d7cf, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 46d7d2	 Bytes: 3
  %loadMem_46d7d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d7d2 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d7d2)
  store %struct.Memory* %call_46d7d2, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 46d7d5	 Bytes: 8
  %loadMem_46d7d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d7d5 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d7d5)
  store %struct.Memory* %call_46d7d5, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %eax	 RIP: 46d7dd	 Bytes: 3
  %loadMem_46d7dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d7dd = call %struct.Memory* @routine_cmpl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d7dd)
  store %struct.Memory* %call_46d7dd, %struct.Memory** %MEMORY

  ; Code: je .L_46d81a	 RIP: 46d7e0	 Bytes: 6
  %loadMem_46d7e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d7e0 = call %struct.Memory* @routine_je_.L_46d81a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d7e0, i8* %BRANCH_TAKEN, i64 58, i64 6, i64 6)
  store %struct.Memory* %call_46d7e0, %struct.Memory** %MEMORY

  %loadBr_46d7e0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46d7e0 = icmp eq i8 %loadBr_46d7e0, 1
  br i1 %cmpBr_46d7e0, label %block_.L_46d81a, label %block_46d7e6

block_46d7e6:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 46d7e6	 Bytes: 4
  %loadMem_46d7e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d7e6 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d7e6)
  store %struct.Memory* %call_46d7e6, %struct.Memory** %MEMORY

  ; Code: movl -0x654(%rbp), %ecx	 RIP: 46d7ea	 Bytes: 6
  %loadMem_46d7ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d7ea = call %struct.Memory* @routine_movl_MINUS0x654__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d7ea)
  store %struct.Memory* %call_46d7ea, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %ecx	 RIP: 46d7f0	 Bytes: 3
  %loadMem_46d7f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d7f0 = call %struct.Memory* @routine_addl__0x14___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d7f0)
  store %struct.Memory* %call_46d7f0, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 46d7f3	 Bytes: 3
  %loadMem_46d7f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d7f3 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d7f3)
  store %struct.Memory* %call_46d7f3, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, (%rax,%rdx,4)	 RIP: 46d7f6	 Bytes: 4
  %loadMem_46d7f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d7f6 = call %struct.Memory* @routine_cmpl__0x0____rax__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d7f6)
  store %struct.Memory* %call_46d7f6, %struct.Memory** %MEMORY

  ; Code: jg .L_46d90d	 RIP: 46d7fa	 Bytes: 6
  %loadMem_46d7fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d7fa = call %struct.Memory* @routine_jg_.L_46d90d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d7fa, i8* %BRANCH_TAKEN, i64 275, i64 6, i64 6)
  store %struct.Memory* %call_46d7fa, %struct.Memory** %MEMORY

  %loadBr_46d7fa = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46d7fa = icmp eq i8 %loadBr_46d7fa, 1
  br i1 %cmpBr_46d7fa, label %block_.L_46d90d, label %block_46d800

block_46d800:
  ; Code: movl -0x654(%rbp), %eax	 RIP: 46d800	 Bytes: 6
  %loadMem_46d800 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d800 = call %struct.Memory* @routine_movl_MINUS0x654__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d800)
  store %struct.Memory* %call_46d800, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 46d806	 Bytes: 3
  %loadMem_46d806 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d806 = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d806)
  store %struct.Memory* %call_46d806, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 46d809	 Bytes: 3
  %loadMem_46d809 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d809 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d809)
  store %struct.Memory* %call_46d809, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, -0x650(%rbp,%rcx,4)	 RIP: 46d80c	 Bytes: 8
  %loadMem_46d80c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d80c = call %struct.Memory* @routine_cmpl__0x1__MINUS0x650__rbp__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d80c)
  store %struct.Memory* %call_46d80c, %struct.Memory** %MEMORY

  ; Code: je .L_46d90d	 RIP: 46d814	 Bytes: 6
  %loadMem_46d814 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d814 = call %struct.Memory* @routine_je_.L_46d90d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d814, i8* %BRANCH_TAKEN, i64 249, i64 6, i64 6)
  store %struct.Memory* %call_46d814, %struct.Memory** %MEMORY

  %loadBr_46d814 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46d814 = icmp eq i8 %loadBr_46d814, 1
  br i1 %cmpBr_46d814, label %block_.L_46d90d, label %block_.L_46d81a

  ; Code: .L_46d81a:	 RIP: 46d81a	 Bytes: 0
block_.L_46d81a:

  ; Code: movl -0x654(%rbp), %eax	 RIP: 46d81a	 Bytes: 6
  %loadMem_46d81a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d81a = call %struct.Memory* @routine_movl_MINUS0x654__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d81a)
  store %struct.Memory* %call_46d81a, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 46d820	 Bytes: 3
  %loadMem_46d820 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d820 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d820)
  store %struct.Memory* %call_46d820, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 46d823	 Bytes: 3
  %loadMem_46d823 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d823 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d823)
  store %struct.Memory* %call_46d823, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 46d826	 Bytes: 8
  %loadMem_46d826 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d826 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d826)
  store %struct.Memory* %call_46d826, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %eax	 RIP: 46d82e	 Bytes: 3
  %loadMem_46d82e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d82e = call %struct.Memory* @routine_cmpl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d82e)
  store %struct.Memory* %call_46d82e, %struct.Memory** %MEMORY

  ; Code: je .L_46d86b	 RIP: 46d831	 Bytes: 6
  %loadMem_46d831 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d831 = call %struct.Memory* @routine_je_.L_46d86b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d831, i8* %BRANCH_TAKEN, i64 58, i64 6, i64 6)
  store %struct.Memory* %call_46d831, %struct.Memory** %MEMORY

  %loadBr_46d831 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46d831 = icmp eq i8 %loadBr_46d831, 1
  br i1 %cmpBr_46d831, label %block_.L_46d86b, label %block_46d837

block_46d837:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 46d837	 Bytes: 4
  %loadMem_46d837 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d837 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d837)
  store %struct.Memory* %call_46d837, %struct.Memory** %MEMORY

  ; Code: movl -0x654(%rbp), %ecx	 RIP: 46d83b	 Bytes: 6
  %loadMem_46d83b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d83b = call %struct.Memory* @routine_movl_MINUS0x654__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d83b)
  store %struct.Memory* %call_46d83b, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 46d841	 Bytes: 3
  %loadMem_46d841 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d841 = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d841)
  store %struct.Memory* %call_46d841, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 46d844	 Bytes: 3
  %loadMem_46d844 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d844 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d844)
  store %struct.Memory* %call_46d844, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, (%rax,%rdx,4)	 RIP: 46d847	 Bytes: 4
  %loadMem_46d847 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d847 = call %struct.Memory* @routine_cmpl__0x0____rax__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d847)
  store %struct.Memory* %call_46d847, %struct.Memory** %MEMORY

  ; Code: jg .L_46d90d	 RIP: 46d84b	 Bytes: 6
  %loadMem_46d84b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d84b = call %struct.Memory* @routine_jg_.L_46d90d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d84b, i8* %BRANCH_TAKEN, i64 194, i64 6, i64 6)
  store %struct.Memory* %call_46d84b, %struct.Memory** %MEMORY

  %loadBr_46d84b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46d84b = icmp eq i8 %loadBr_46d84b, 1
  br i1 %cmpBr_46d84b, label %block_.L_46d90d, label %block_46d851

block_46d851:
  ; Code: movl -0x654(%rbp), %eax	 RIP: 46d851	 Bytes: 6
  %loadMem_46d851 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d851 = call %struct.Memory* @routine_movl_MINUS0x654__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d851)
  store %struct.Memory* %call_46d851, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 46d857	 Bytes: 3
  %loadMem_46d857 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d857 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d857)
  store %struct.Memory* %call_46d857, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 46d85a	 Bytes: 3
  %loadMem_46d85a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d85a = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d85a)
  store %struct.Memory* %call_46d85a, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, -0x650(%rbp,%rcx,4)	 RIP: 46d85d	 Bytes: 8
  %loadMem_46d85d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d85d = call %struct.Memory* @routine_cmpl__0x1__MINUS0x650__rbp__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d85d)
  store %struct.Memory* %call_46d85d, %struct.Memory** %MEMORY

  ; Code: je .L_46d90d	 RIP: 46d865	 Bytes: 6
  %loadMem_46d865 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d865 = call %struct.Memory* @routine_je_.L_46d90d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d865, i8* %BRANCH_TAKEN, i64 168, i64 6, i64 6)
  store %struct.Memory* %call_46d865, %struct.Memory** %MEMORY

  %loadBr_46d865 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46d865 = icmp eq i8 %loadBr_46d865, 1
  br i1 %cmpBr_46d865, label %block_.L_46d90d, label %block_.L_46d86b

  ; Code: .L_46d86b:	 RIP: 46d86b	 Bytes: 0
block_.L_46d86b:

  ; Code: movl -0x654(%rbp), %eax	 RIP: 46d86b	 Bytes: 6
  %loadMem_46d86b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d86b = call %struct.Memory* @routine_movl_MINUS0x654__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d86b)
  store %struct.Memory* %call_46d86b, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 46d871	 Bytes: 3
  %loadMem_46d871 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d871 = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d871)
  store %struct.Memory* %call_46d871, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 46d874	 Bytes: 3
  %loadMem_46d874 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d874 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d874)
  store %struct.Memory* %call_46d874, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 46d877	 Bytes: 8
  %loadMem_46d877 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d877 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d877)
  store %struct.Memory* %call_46d877, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %eax	 RIP: 46d87f	 Bytes: 3
  %loadMem_46d87f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d87f = call %struct.Memory* @routine_cmpl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d87f)
  store %struct.Memory* %call_46d87f, %struct.Memory** %MEMORY

  ; Code: je .L_46d8bc	 RIP: 46d882	 Bytes: 6
  %loadMem_46d882 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d882 = call %struct.Memory* @routine_je_.L_46d8bc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d882, i8* %BRANCH_TAKEN, i64 58, i64 6, i64 6)
  store %struct.Memory* %call_46d882, %struct.Memory** %MEMORY

  %loadBr_46d882 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46d882 = icmp eq i8 %loadBr_46d882, 1
  br i1 %cmpBr_46d882, label %block_.L_46d8bc, label %block_46d888

block_46d888:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 46d888	 Bytes: 4
  %loadMem_46d888 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d888 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d888)
  store %struct.Memory* %call_46d888, %struct.Memory** %MEMORY

  ; Code: movl -0x654(%rbp), %ecx	 RIP: 46d88c	 Bytes: 6
  %loadMem_46d88c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d88c = call %struct.Memory* @routine_movl_MINUS0x654__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d88c)
  store %struct.Memory* %call_46d88c, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %ecx	 RIP: 46d892	 Bytes: 3
  %loadMem_46d892 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d892 = call %struct.Memory* @routine_subl__0x14___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d892)
  store %struct.Memory* %call_46d892, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 46d895	 Bytes: 3
  %loadMem_46d895 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d895 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d895)
  store %struct.Memory* %call_46d895, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, (%rax,%rdx,4)	 RIP: 46d898	 Bytes: 4
  %loadMem_46d898 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d898 = call %struct.Memory* @routine_cmpl__0x0____rax__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d898)
  store %struct.Memory* %call_46d898, %struct.Memory** %MEMORY

  ; Code: jg .L_46d90d	 RIP: 46d89c	 Bytes: 6
  %loadMem_46d89c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d89c = call %struct.Memory* @routine_jg_.L_46d90d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d89c, i8* %BRANCH_TAKEN, i64 113, i64 6, i64 6)
  store %struct.Memory* %call_46d89c, %struct.Memory** %MEMORY

  %loadBr_46d89c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46d89c = icmp eq i8 %loadBr_46d89c, 1
  br i1 %cmpBr_46d89c, label %block_.L_46d90d, label %block_46d8a2

block_46d8a2:
  ; Code: movl -0x654(%rbp), %eax	 RIP: 46d8a2	 Bytes: 6
  %loadMem_46d8a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d8a2 = call %struct.Memory* @routine_movl_MINUS0x654__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d8a2)
  store %struct.Memory* %call_46d8a2, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 46d8a8	 Bytes: 3
  %loadMem_46d8a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d8a8 = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d8a8)
  store %struct.Memory* %call_46d8a8, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 46d8ab	 Bytes: 3
  %loadMem_46d8ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d8ab = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d8ab)
  store %struct.Memory* %call_46d8ab, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, -0x650(%rbp,%rcx,4)	 RIP: 46d8ae	 Bytes: 8
  %loadMem_46d8ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d8ae = call %struct.Memory* @routine_cmpl__0x1__MINUS0x650__rbp__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d8ae)
  store %struct.Memory* %call_46d8ae, %struct.Memory** %MEMORY

  ; Code: je .L_46d90d	 RIP: 46d8b6	 Bytes: 6
  %loadMem_46d8b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d8b6 = call %struct.Memory* @routine_je_.L_46d90d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d8b6, i8* %BRANCH_TAKEN, i64 87, i64 6, i64 6)
  store %struct.Memory* %call_46d8b6, %struct.Memory** %MEMORY

  %loadBr_46d8b6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46d8b6 = icmp eq i8 %loadBr_46d8b6, 1
  br i1 %cmpBr_46d8b6, label %block_.L_46d90d, label %block_.L_46d8bc

  ; Code: .L_46d8bc:	 RIP: 46d8bc	 Bytes: 0
block_.L_46d8bc:

  ; Code: movl -0x654(%rbp), %eax	 RIP: 46d8bc	 Bytes: 6
  %loadMem_46d8bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d8bc = call %struct.Memory* @routine_movl_MINUS0x654__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d8bc)
  store %struct.Memory* %call_46d8bc, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 46d8c2	 Bytes: 3
  %loadMem_46d8c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d8c2 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d8c2)
  store %struct.Memory* %call_46d8c2, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 46d8c5	 Bytes: 3
  %loadMem_46d8c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d8c5 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d8c5)
  store %struct.Memory* %call_46d8c5, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 46d8c8	 Bytes: 8
  %loadMem_46d8c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d8c8 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d8c8)
  store %struct.Memory* %call_46d8c8, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %eax	 RIP: 46d8d0	 Bytes: 3
  %loadMem_46d8d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d8d0 = call %struct.Memory* @routine_cmpl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d8d0)
  store %struct.Memory* %call_46d8d0, %struct.Memory** %MEMORY

  ; Code: je .L_46d917	 RIP: 46d8d3	 Bytes: 6
  %loadMem_46d8d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d8d3 = call %struct.Memory* @routine_je_.L_46d917(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d8d3, i8* %BRANCH_TAKEN, i64 68, i64 6, i64 6)
  store %struct.Memory* %call_46d8d3, %struct.Memory** %MEMORY

  %loadBr_46d8d3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46d8d3 = icmp eq i8 %loadBr_46d8d3, 1
  br i1 %cmpBr_46d8d3, label %block_.L_46d917, label %block_46d8d9

block_46d8d9:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 46d8d9	 Bytes: 4
  %loadMem_46d8d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d8d9 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d8d9)
  store %struct.Memory* %call_46d8d9, %struct.Memory** %MEMORY

  ; Code: movl -0x654(%rbp), %ecx	 RIP: 46d8dd	 Bytes: 6
  %loadMem_46d8dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d8dd = call %struct.Memory* @routine_movl_MINUS0x654__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d8dd)
  store %struct.Memory* %call_46d8dd, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 46d8e3	 Bytes: 3
  %loadMem_46d8e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d8e3 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d8e3)
  store %struct.Memory* %call_46d8e3, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 46d8e6	 Bytes: 3
  %loadMem_46d8e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d8e6 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d8e6)
  store %struct.Memory* %call_46d8e6, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, (%rax,%rdx,4)	 RIP: 46d8e9	 Bytes: 4
  %loadMem_46d8e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d8e9 = call %struct.Memory* @routine_cmpl__0x0____rax__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d8e9)
  store %struct.Memory* %call_46d8e9, %struct.Memory** %MEMORY

  ; Code: jg .L_46d90d	 RIP: 46d8ed	 Bytes: 6
  %loadMem_46d8ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d8ed = call %struct.Memory* @routine_jg_.L_46d90d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d8ed, i8* %BRANCH_TAKEN, i64 32, i64 6, i64 6)
  store %struct.Memory* %call_46d8ed, %struct.Memory** %MEMORY

  %loadBr_46d8ed = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46d8ed = icmp eq i8 %loadBr_46d8ed, 1
  br i1 %cmpBr_46d8ed, label %block_.L_46d90d, label %block_46d8f3

block_46d8f3:
  ; Code: movl -0x654(%rbp), %eax	 RIP: 46d8f3	 Bytes: 6
  %loadMem_46d8f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d8f3 = call %struct.Memory* @routine_movl_MINUS0x654__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d8f3)
  store %struct.Memory* %call_46d8f3, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 46d8f9	 Bytes: 3
  %loadMem_46d8f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d8f9 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d8f9)
  store %struct.Memory* %call_46d8f9, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 46d8fc	 Bytes: 3
  %loadMem_46d8fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d8fc = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d8fc)
  store %struct.Memory* %call_46d8fc, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, -0x650(%rbp,%rcx,4)	 RIP: 46d8ff	 Bytes: 8
  %loadMem_46d8ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d8ff = call %struct.Memory* @routine_cmpl__0x1__MINUS0x650__rbp__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d8ff)
  store %struct.Memory* %call_46d8ff, %struct.Memory** %MEMORY

  ; Code: jne .L_46d917	 RIP: 46d907	 Bytes: 6
  %loadMem_46d907 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d907 = call %struct.Memory* @routine_jne_.L_46d917(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d907, i8* %BRANCH_TAKEN, i64 16, i64 6, i64 6)
  store %struct.Memory* %call_46d907, %struct.Memory** %MEMORY

  %loadBr_46d907 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46d907 = icmp eq i8 %loadBr_46d907, 1
  br i1 %cmpBr_46d907, label %block_.L_46d917, label %block_.L_46d90d

  ; Code: .L_46d90d:	 RIP: 46d90d	 Bytes: 0
block_.L_46d90d:

  ; Code: movl $0x1, -0x65c(%rbp)	 RIP: 46d90d	 Bytes: 10
  %loadMem_46d90d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d90d = call %struct.Memory* @routine_movl__0x1__MINUS0x65c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d90d)
  store %struct.Memory* %call_46d90d, %struct.Memory** %MEMORY

  ; Code: .L_46d917:	 RIP: 46d917	 Bytes: 0
  br label %block_.L_46d917
block_.L_46d917:

  ; Code: movslq -0x654(%rbp), %rax	 RIP: 46d917	 Bytes: 7
  %loadMem_46d917 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d917 = call %struct.Memory* @routine_movslq_MINUS0x654__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d917)
  store %struct.Memory* %call_46d917, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, -0x650(%rbp,%rax,4)	 RIP: 46d91e	 Bytes: 8
  %loadMem_46d91e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d91e = call %struct.Memory* @routine_cmpl__0x2__MINUS0x650__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d91e)
  store %struct.Memory* %call_46d91e, %struct.Memory** %MEMORY

  ; Code: je .L_46da70	 RIP: 46d926	 Bytes: 6
  %loadMem_46d926 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d926 = call %struct.Memory* @routine_je_.L_46da70(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d926, i8* %BRANCH_TAKEN, i64 330, i64 6, i64 6)
  store %struct.Memory* %call_46d926, %struct.Memory** %MEMORY

  %loadBr_46d926 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46d926 = icmp eq i8 %loadBr_46d926, 1
  br i1 %cmpBr_46d926, label %block_.L_46da70, label %block_46d92c

block_46d92c:
  ; Code: movl -0x654(%rbp), %eax	 RIP: 46d92c	 Bytes: 6
  %loadMem_46d92c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d92c = call %struct.Memory* @routine_movl_MINUS0x654__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d92c)
  store %struct.Memory* %call_46d92c, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 46d932	 Bytes: 3
  %loadMem_46d932 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d932 = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d932)
  store %struct.Memory* %call_46d932, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 46d935	 Bytes: 3
  %loadMem_46d935 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d935 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d935)
  store %struct.Memory* %call_46d935, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 46d938	 Bytes: 8
  %loadMem_46d938 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d938 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d938)
  store %struct.Memory* %call_46d938, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %eax	 RIP: 46d940	 Bytes: 3
  %loadMem_46d940 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d940 = call %struct.Memory* @routine_cmpl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d940)
  store %struct.Memory* %call_46d940, %struct.Memory** %MEMORY

  ; Code: je .L_46d97d	 RIP: 46d943	 Bytes: 6
  %loadMem_46d943 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d943 = call %struct.Memory* @routine_je_.L_46d97d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d943, i8* %BRANCH_TAKEN, i64 58, i64 6, i64 6)
  store %struct.Memory* %call_46d943, %struct.Memory** %MEMORY

  %loadBr_46d943 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46d943 = icmp eq i8 %loadBr_46d943, 1
  br i1 %cmpBr_46d943, label %block_.L_46d97d, label %block_46d949

block_46d949:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 46d949	 Bytes: 4
  %loadMem_46d949 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d949 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d949)
  store %struct.Memory* %call_46d949, %struct.Memory** %MEMORY

  ; Code: movl -0x654(%rbp), %ecx	 RIP: 46d94d	 Bytes: 6
  %loadMem_46d94d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d94d = call %struct.Memory* @routine_movl_MINUS0x654__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d94d)
  store %struct.Memory* %call_46d94d, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %ecx	 RIP: 46d953	 Bytes: 3
  %loadMem_46d953 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d953 = call %struct.Memory* @routine_addl__0x14___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d953)
  store %struct.Memory* %call_46d953, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 46d956	 Bytes: 3
  %loadMem_46d956 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d956 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d956)
  store %struct.Memory* %call_46d956, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, (%rax,%rdx,4)	 RIP: 46d959	 Bytes: 4
  %loadMem_46d959 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d959 = call %struct.Memory* @routine_cmpl__0x0____rax__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d959)
  store %struct.Memory* %call_46d959, %struct.Memory** %MEMORY

  ; Code: jl .L_46da70	 RIP: 46d95d	 Bytes: 6
  %loadMem_46d95d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d95d = call %struct.Memory* @routine_jl_.L_46da70(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d95d, i8* %BRANCH_TAKEN, i64 275, i64 6, i64 6)
  store %struct.Memory* %call_46d95d, %struct.Memory** %MEMORY

  %loadBr_46d95d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46d95d = icmp eq i8 %loadBr_46d95d, 1
  br i1 %cmpBr_46d95d, label %block_.L_46da70, label %block_46d963

block_46d963:
  ; Code: movl -0x654(%rbp), %eax	 RIP: 46d963	 Bytes: 6
  %loadMem_46d963 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d963 = call %struct.Memory* @routine_movl_MINUS0x654__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d963)
  store %struct.Memory* %call_46d963, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 46d969	 Bytes: 3
  %loadMem_46d969 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d969 = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d969)
  store %struct.Memory* %call_46d969, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 46d96c	 Bytes: 3
  %loadMem_46d96c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d96c = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d96c)
  store %struct.Memory* %call_46d96c, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, -0x650(%rbp,%rcx,4)	 RIP: 46d96f	 Bytes: 8
  %loadMem_46d96f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d96f = call %struct.Memory* @routine_cmpl__0x2__MINUS0x650__rbp__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d96f)
  store %struct.Memory* %call_46d96f, %struct.Memory** %MEMORY

  ; Code: je .L_46da70	 RIP: 46d977	 Bytes: 6
  %loadMem_46d977 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d977 = call %struct.Memory* @routine_je_.L_46da70(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d977, i8* %BRANCH_TAKEN, i64 249, i64 6, i64 6)
  store %struct.Memory* %call_46d977, %struct.Memory** %MEMORY

  %loadBr_46d977 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46d977 = icmp eq i8 %loadBr_46d977, 1
  br i1 %cmpBr_46d977, label %block_.L_46da70, label %block_.L_46d97d

  ; Code: .L_46d97d:	 RIP: 46d97d	 Bytes: 0
block_.L_46d97d:

  ; Code: movl -0x654(%rbp), %eax	 RIP: 46d97d	 Bytes: 6
  %loadMem_46d97d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d97d = call %struct.Memory* @routine_movl_MINUS0x654__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d97d)
  store %struct.Memory* %call_46d97d, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 46d983	 Bytes: 3
  %loadMem_46d983 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d983 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d983)
  store %struct.Memory* %call_46d983, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 46d986	 Bytes: 3
  %loadMem_46d986 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d986 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d986)
  store %struct.Memory* %call_46d986, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 46d989	 Bytes: 8
  %loadMem_46d989 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d989 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d989)
  store %struct.Memory* %call_46d989, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %eax	 RIP: 46d991	 Bytes: 3
  %loadMem_46d991 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d991 = call %struct.Memory* @routine_cmpl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d991)
  store %struct.Memory* %call_46d991, %struct.Memory** %MEMORY

  ; Code: je .L_46d9ce	 RIP: 46d994	 Bytes: 6
  %loadMem_46d994 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d994 = call %struct.Memory* @routine_je_.L_46d9ce(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d994, i8* %BRANCH_TAKEN, i64 58, i64 6, i64 6)
  store %struct.Memory* %call_46d994, %struct.Memory** %MEMORY

  %loadBr_46d994 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46d994 = icmp eq i8 %loadBr_46d994, 1
  br i1 %cmpBr_46d994, label %block_.L_46d9ce, label %block_46d99a

block_46d99a:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 46d99a	 Bytes: 4
  %loadMem_46d99a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d99a = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d99a)
  store %struct.Memory* %call_46d99a, %struct.Memory** %MEMORY

  ; Code: movl -0x654(%rbp), %ecx	 RIP: 46d99e	 Bytes: 6
  %loadMem_46d99e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d99e = call %struct.Memory* @routine_movl_MINUS0x654__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d99e)
  store %struct.Memory* %call_46d99e, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 46d9a4	 Bytes: 3
  %loadMem_46d9a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d9a4 = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d9a4)
  store %struct.Memory* %call_46d9a4, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 46d9a7	 Bytes: 3
  %loadMem_46d9a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d9a7 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d9a7)
  store %struct.Memory* %call_46d9a7, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, (%rax,%rdx,4)	 RIP: 46d9aa	 Bytes: 4
  %loadMem_46d9aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d9aa = call %struct.Memory* @routine_cmpl__0x0____rax__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d9aa)
  store %struct.Memory* %call_46d9aa, %struct.Memory** %MEMORY

  ; Code: jl .L_46da70	 RIP: 46d9ae	 Bytes: 6
  %loadMem_46d9ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d9ae = call %struct.Memory* @routine_jl_.L_46da70(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d9ae, i8* %BRANCH_TAKEN, i64 194, i64 6, i64 6)
  store %struct.Memory* %call_46d9ae, %struct.Memory** %MEMORY

  %loadBr_46d9ae = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46d9ae = icmp eq i8 %loadBr_46d9ae, 1
  br i1 %cmpBr_46d9ae, label %block_.L_46da70, label %block_46d9b4

block_46d9b4:
  ; Code: movl -0x654(%rbp), %eax	 RIP: 46d9b4	 Bytes: 6
  %loadMem_46d9b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d9b4 = call %struct.Memory* @routine_movl_MINUS0x654__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d9b4)
  store %struct.Memory* %call_46d9b4, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 46d9ba	 Bytes: 3
  %loadMem_46d9ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d9ba = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d9ba)
  store %struct.Memory* %call_46d9ba, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 46d9bd	 Bytes: 3
  %loadMem_46d9bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d9bd = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d9bd)
  store %struct.Memory* %call_46d9bd, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, -0x650(%rbp,%rcx,4)	 RIP: 46d9c0	 Bytes: 8
  %loadMem_46d9c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d9c0 = call %struct.Memory* @routine_cmpl__0x2__MINUS0x650__rbp__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d9c0)
  store %struct.Memory* %call_46d9c0, %struct.Memory** %MEMORY

  ; Code: je .L_46da70	 RIP: 46d9c8	 Bytes: 6
  %loadMem_46d9c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d9c8 = call %struct.Memory* @routine_je_.L_46da70(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d9c8, i8* %BRANCH_TAKEN, i64 168, i64 6, i64 6)
  store %struct.Memory* %call_46d9c8, %struct.Memory** %MEMORY

  %loadBr_46d9c8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46d9c8 = icmp eq i8 %loadBr_46d9c8, 1
  br i1 %cmpBr_46d9c8, label %block_.L_46da70, label %block_.L_46d9ce

  ; Code: .L_46d9ce:	 RIP: 46d9ce	 Bytes: 0
block_.L_46d9ce:

  ; Code: movl -0x654(%rbp), %eax	 RIP: 46d9ce	 Bytes: 6
  %loadMem_46d9ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d9ce = call %struct.Memory* @routine_movl_MINUS0x654__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d9ce)
  store %struct.Memory* %call_46d9ce, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 46d9d4	 Bytes: 3
  %loadMem_46d9d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d9d4 = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d9d4)
  store %struct.Memory* %call_46d9d4, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 46d9d7	 Bytes: 3
  %loadMem_46d9d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d9d7 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d9d7)
  store %struct.Memory* %call_46d9d7, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 46d9da	 Bytes: 8
  %loadMem_46d9da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d9da = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d9da)
  store %struct.Memory* %call_46d9da, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %eax	 RIP: 46d9e2	 Bytes: 3
  %loadMem_46d9e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d9e2 = call %struct.Memory* @routine_cmpl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d9e2)
  store %struct.Memory* %call_46d9e2, %struct.Memory** %MEMORY

  ; Code: je .L_46da1f	 RIP: 46d9e5	 Bytes: 6
  %loadMem_46d9e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d9e5 = call %struct.Memory* @routine_je_.L_46da1f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d9e5, i8* %BRANCH_TAKEN, i64 58, i64 6, i64 6)
  store %struct.Memory* %call_46d9e5, %struct.Memory** %MEMORY

  %loadBr_46d9e5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46d9e5 = icmp eq i8 %loadBr_46d9e5, 1
  br i1 %cmpBr_46d9e5, label %block_.L_46da1f, label %block_46d9eb

block_46d9eb:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 46d9eb	 Bytes: 4
  %loadMem_46d9eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d9eb = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d9eb)
  store %struct.Memory* %call_46d9eb, %struct.Memory** %MEMORY

  ; Code: movl -0x654(%rbp), %ecx	 RIP: 46d9ef	 Bytes: 6
  %loadMem_46d9ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d9ef = call %struct.Memory* @routine_movl_MINUS0x654__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d9ef)
  store %struct.Memory* %call_46d9ef, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %ecx	 RIP: 46d9f5	 Bytes: 3
  %loadMem_46d9f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d9f5 = call %struct.Memory* @routine_subl__0x14___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d9f5)
  store %struct.Memory* %call_46d9f5, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 46d9f8	 Bytes: 3
  %loadMem_46d9f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d9f8 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d9f8)
  store %struct.Memory* %call_46d9f8, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, (%rax,%rdx,4)	 RIP: 46d9fb	 Bytes: 4
  %loadMem_46d9fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d9fb = call %struct.Memory* @routine_cmpl__0x0____rax__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d9fb)
  store %struct.Memory* %call_46d9fb, %struct.Memory** %MEMORY

  ; Code: jl .L_46da70	 RIP: 46d9ff	 Bytes: 6
  %loadMem_46d9ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d9ff = call %struct.Memory* @routine_jl_.L_46da70(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d9ff, i8* %BRANCH_TAKEN, i64 113, i64 6, i64 6)
  store %struct.Memory* %call_46d9ff, %struct.Memory** %MEMORY

  %loadBr_46d9ff = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46d9ff = icmp eq i8 %loadBr_46d9ff, 1
  br i1 %cmpBr_46d9ff, label %block_.L_46da70, label %block_46da05

block_46da05:
  ; Code: movl -0x654(%rbp), %eax	 RIP: 46da05	 Bytes: 6
  %loadMem_46da05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46da05 = call %struct.Memory* @routine_movl_MINUS0x654__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46da05)
  store %struct.Memory* %call_46da05, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 46da0b	 Bytes: 3
  %loadMem_46da0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46da0b = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46da0b)
  store %struct.Memory* %call_46da0b, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 46da0e	 Bytes: 3
  %loadMem_46da0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46da0e = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46da0e)
  store %struct.Memory* %call_46da0e, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, -0x650(%rbp,%rcx,4)	 RIP: 46da11	 Bytes: 8
  %loadMem_46da11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46da11 = call %struct.Memory* @routine_cmpl__0x2__MINUS0x650__rbp__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46da11)
  store %struct.Memory* %call_46da11, %struct.Memory** %MEMORY

  ; Code: je .L_46da70	 RIP: 46da19	 Bytes: 6
  %loadMem_46da19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46da19 = call %struct.Memory* @routine_je_.L_46da70(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46da19, i8* %BRANCH_TAKEN, i64 87, i64 6, i64 6)
  store %struct.Memory* %call_46da19, %struct.Memory** %MEMORY

  %loadBr_46da19 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46da19 = icmp eq i8 %loadBr_46da19, 1
  br i1 %cmpBr_46da19, label %block_.L_46da70, label %block_.L_46da1f

  ; Code: .L_46da1f:	 RIP: 46da1f	 Bytes: 0
block_.L_46da1f:

  ; Code: movl -0x654(%rbp), %eax	 RIP: 46da1f	 Bytes: 6
  %loadMem_46da1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46da1f = call %struct.Memory* @routine_movl_MINUS0x654__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46da1f)
  store %struct.Memory* %call_46da1f, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 46da25	 Bytes: 3
  %loadMem_46da25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46da25 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46da25)
  store %struct.Memory* %call_46da25, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 46da28	 Bytes: 3
  %loadMem_46da28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46da28 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46da28)
  store %struct.Memory* %call_46da28, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 46da2b	 Bytes: 8
  %loadMem_46da2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46da2b = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46da2b)
  store %struct.Memory* %call_46da2b, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %eax	 RIP: 46da33	 Bytes: 3
  %loadMem_46da33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46da33 = call %struct.Memory* @routine_cmpl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46da33)
  store %struct.Memory* %call_46da33, %struct.Memory** %MEMORY

  ; Code: je .L_46da7a	 RIP: 46da36	 Bytes: 6
  %loadMem_46da36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46da36 = call %struct.Memory* @routine_je_.L_46da7a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46da36, i8* %BRANCH_TAKEN, i64 68, i64 6, i64 6)
  store %struct.Memory* %call_46da36, %struct.Memory** %MEMORY

  %loadBr_46da36 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46da36 = icmp eq i8 %loadBr_46da36, 1
  br i1 %cmpBr_46da36, label %block_.L_46da7a, label %block_46da3c

block_46da3c:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 46da3c	 Bytes: 4
  %loadMem_46da3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46da3c = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46da3c)
  store %struct.Memory* %call_46da3c, %struct.Memory** %MEMORY

  ; Code: movl -0x654(%rbp), %ecx	 RIP: 46da40	 Bytes: 6
  %loadMem_46da40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46da40 = call %struct.Memory* @routine_movl_MINUS0x654__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46da40)
  store %struct.Memory* %call_46da40, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 46da46	 Bytes: 3
  %loadMem_46da46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46da46 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46da46)
  store %struct.Memory* %call_46da46, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 46da49	 Bytes: 3
  %loadMem_46da49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46da49 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46da49)
  store %struct.Memory* %call_46da49, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, (%rax,%rdx,4)	 RIP: 46da4c	 Bytes: 4
  %loadMem_46da4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46da4c = call %struct.Memory* @routine_cmpl__0x0____rax__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46da4c)
  store %struct.Memory* %call_46da4c, %struct.Memory** %MEMORY

  ; Code: jl .L_46da70	 RIP: 46da50	 Bytes: 6
  %loadMem_46da50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46da50 = call %struct.Memory* @routine_jl_.L_46da70(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46da50, i8* %BRANCH_TAKEN, i64 32, i64 6, i64 6)
  store %struct.Memory* %call_46da50, %struct.Memory** %MEMORY

  %loadBr_46da50 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46da50 = icmp eq i8 %loadBr_46da50, 1
  br i1 %cmpBr_46da50, label %block_.L_46da70, label %block_46da56

block_46da56:
  ; Code: movl -0x654(%rbp), %eax	 RIP: 46da56	 Bytes: 6
  %loadMem_46da56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46da56 = call %struct.Memory* @routine_movl_MINUS0x654__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46da56)
  store %struct.Memory* %call_46da56, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 46da5c	 Bytes: 3
  %loadMem_46da5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46da5c = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46da5c)
  store %struct.Memory* %call_46da5c, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 46da5f	 Bytes: 3
  %loadMem_46da5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46da5f = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46da5f)
  store %struct.Memory* %call_46da5f, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, -0x650(%rbp,%rcx,4)	 RIP: 46da62	 Bytes: 8
  %loadMem_46da62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46da62 = call %struct.Memory* @routine_cmpl__0x2__MINUS0x650__rbp__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46da62)
  store %struct.Memory* %call_46da62, %struct.Memory** %MEMORY

  ; Code: jne .L_46da7a	 RIP: 46da6a	 Bytes: 6
  %loadMem_46da6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46da6a = call %struct.Memory* @routine_jne_.L_46da7a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46da6a, i8* %BRANCH_TAKEN, i64 16, i64 6, i64 6)
  store %struct.Memory* %call_46da6a, %struct.Memory** %MEMORY

  %loadBr_46da6a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46da6a = icmp eq i8 %loadBr_46da6a, 1
  br i1 %cmpBr_46da6a, label %block_.L_46da7a, label %block_.L_46da70

  ; Code: .L_46da70:	 RIP: 46da70	 Bytes: 0
block_.L_46da70:

  ; Code: movl $0x1, -0x660(%rbp)	 RIP: 46da70	 Bytes: 10
  %loadMem_46da70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46da70 = call %struct.Memory* @routine_movl__0x1__MINUS0x660__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46da70)
  store %struct.Memory* %call_46da70, %struct.Memory** %MEMORY

  ; Code: .L_46da7a:	 RIP: 46da7a	 Bytes: 0
  br label %block_.L_46da7a
block_.L_46da7a:

  ; Code: cmpl $0x0, -0x65c(%rbp)	 RIP: 46da7a	 Bytes: 7
  %loadMem_46da7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46da7a = call %struct.Memory* @routine_cmpl__0x0__MINUS0x65c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46da7a)
  store %struct.Memory* %call_46da7a, %struct.Memory** %MEMORY

  ; Code: je .L_46dab2	 RIP: 46da81	 Bytes: 6
  %loadMem_46da81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46da81 = call %struct.Memory* @routine_je_.L_46dab2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46da81, i8* %BRANCH_TAKEN, i64 49, i64 6, i64 6)
  store %struct.Memory* %call_46da81, %struct.Memory** %MEMORY

  %loadBr_46da81 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46da81 = icmp eq i8 %loadBr_46da81, 1
  br i1 %cmpBr_46da81, label %block_.L_46dab2, label %block_46da87

block_46da87:
  ; Code: cmpl $0x0, -0x660(%rbp)	 RIP: 46da87	 Bytes: 7
  %loadMem_46da87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46da87 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x660__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46da87)
  store %struct.Memory* %call_46da87, %struct.Memory** %MEMORY

  ; Code: je .L_46daa3	 RIP: 46da8e	 Bytes: 6
  %loadMem_46da8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46da8e = call %struct.Memory* @routine_je_.L_46daa3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46da8e, i8* %BRANCH_TAKEN, i64 21, i64 6, i64 6)
  store %struct.Memory* %call_46da8e, %struct.Memory** %MEMORY

  %loadBr_46da8e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46da8e = icmp eq i8 %loadBr_46da8e, 1
  br i1 %cmpBr_46da8e, label %block_.L_46daa3, label %block_46da94

block_46da94:
  ; Code: movl $0x3, -0x664(%rbp)	 RIP: 46da94	 Bytes: 10
  %loadMem_46da94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46da94 = call %struct.Memory* @routine_movl__0x3__MINUS0x664__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46da94)
  store %struct.Memory* %call_46da94, %struct.Memory** %MEMORY

  ; Code: jmpq .L_46daad	 RIP: 46da9e	 Bytes: 5
  %loadMem_46da9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46da9e = call %struct.Memory* @routine_jmpq_.L_46daad(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46da9e, i64 15, i64 5)
  store %struct.Memory* %call_46da9e, %struct.Memory** %MEMORY

  br label %block_.L_46daad

  ; Code: .L_46daa3:	 RIP: 46daa3	 Bytes: 0
block_.L_46daa3:

  ; Code: movl $0x1, -0x664(%rbp)	 RIP: 46daa3	 Bytes: 10
  %loadMem_46daa3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46daa3 = call %struct.Memory* @routine_movl__0x1__MINUS0x664__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46daa3)
  store %struct.Memory* %call_46daa3, %struct.Memory** %MEMORY

  ; Code: .L_46daad:	 RIP: 46daad	 Bytes: 0
  br label %block_.L_46daad
block_.L_46daad:

  ; Code: jmpq .L_46dace	 RIP: 46daad	 Bytes: 5
  %loadMem_46daad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46daad = call %struct.Memory* @routine_jmpq_.L_46dace(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46daad, i64 33, i64 5)
  store %struct.Memory* %call_46daad, %struct.Memory** %MEMORY

  br label %block_.L_46dace

  ; Code: .L_46dab2:	 RIP: 46dab2	 Bytes: 0
block_.L_46dab2:

  ; Code: cmpl $0x0, -0x660(%rbp)	 RIP: 46dab2	 Bytes: 7
  %loadMem_46dab2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46dab2 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x660__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46dab2)
  store %struct.Memory* %call_46dab2, %struct.Memory** %MEMORY

  ; Code: je .L_46dac9	 RIP: 46dab9	 Bytes: 6
  %loadMem_46dab9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46dab9 = call %struct.Memory* @routine_je_.L_46dac9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46dab9, i8* %BRANCH_TAKEN, i64 16, i64 6, i64 6)
  store %struct.Memory* %call_46dab9, %struct.Memory** %MEMORY

  %loadBr_46dab9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46dab9 = icmp eq i8 %loadBr_46dab9, 1
  br i1 %cmpBr_46dab9, label %block_.L_46dac9, label %block_46dabf

block_46dabf:
  ; Code: movl $0x2, -0x664(%rbp)	 RIP: 46dabf	 Bytes: 10
  %loadMem_46dabf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46dabf = call %struct.Memory* @routine_movl__0x2__MINUS0x664__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46dabf)
  store %struct.Memory* %call_46dabf, %struct.Memory** %MEMORY

  ; Code: .L_46dac9:	 RIP: 46dac9	 Bytes: 0
  br label %block_.L_46dac9
block_.L_46dac9:

  ; Code: jmpq .L_46dace	 RIP: 46dac9	 Bytes: 5
  %loadMem_46dac9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46dac9 = call %struct.Memory* @routine_jmpq_.L_46dace(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46dac9, i64 5, i64 5)
  store %struct.Memory* %call_46dac9, %struct.Memory** %MEMORY

  br label %block_.L_46dace

  ; Code: .L_46dace:	 RIP: 46dace	 Bytes: 0
block_.L_46dace:

  ; Code: cmpl $0x0, -0x664(%rbp)	 RIP: 46dace	 Bytes: 7
  %loadMem_46dace = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46dace = call %struct.Memory* @routine_cmpl__0x0__MINUS0x664__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46dace)
  store %struct.Memory* %call_46dace, %struct.Memory** %MEMORY

  ; Code: je .L_46db13	 RIP: 46dad5	 Bytes: 6
  %loadMem_46dad5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46dad5 = call %struct.Memory* @routine_je_.L_46db13(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46dad5, i8* %BRANCH_TAKEN, i64 62, i64 6, i64 6)
  store %struct.Memory* %call_46dad5, %struct.Memory** %MEMORY

  %loadBr_46dad5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46dad5 = icmp eq i8 %loadBr_46dad5, 1
  br i1 %cmpBr_46dad5, label %block_.L_46db13, label %block_46dadb

block_46dadb:
  ; Code: movl -0x664(%rbp), %eax	 RIP: 46dadb	 Bytes: 6
  %loadMem_46dadb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46dadb = call %struct.Memory* @routine_movl_MINUS0x664__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46dadb)
  store %struct.Memory* %call_46dadb, %struct.Memory** %MEMORY

  ; Code: movslq -0x654(%rbp), %rcx	 RIP: 46dae1	 Bytes: 7
  %loadMem_46dae1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46dae1 = call %struct.Memory* @routine_movslq_MINUS0x654__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46dae1)
  store %struct.Memory* %call_46dae1, %struct.Memory** %MEMORY

  ; Code: cmpl -0x650(%rbp,%rcx,4), %eax	 RIP: 46dae8	 Bytes: 7
  %loadMem_46dae8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46dae8 = call %struct.Memory* @routine_cmpl_MINUS0x650__rbp__rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46dae8)
  store %struct.Memory* %call_46dae8, %struct.Memory** %MEMORY

  ; Code: je .L_46db13	 RIP: 46daef	 Bytes: 6
  %loadMem_46daef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46daef = call %struct.Memory* @routine_je_.L_46db13(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46daef, i8* %BRANCH_TAKEN, i64 36, i64 6, i64 6)
  store %struct.Memory* %call_46daef, %struct.Memory** %MEMORY

  %loadBr_46daef = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46daef = icmp eq i8 %loadBr_46daef, 1
  br i1 %cmpBr_46daef, label %block_.L_46db13, label %block_46daf5

block_46daf5:
  ; Code: movl $0x1, -0x658(%rbp)	 RIP: 46daf5	 Bytes: 10
  %loadMem_46daf5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46daf5 = call %struct.Memory* @routine_movl__0x1__MINUS0x658__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46daf5)
  store %struct.Memory* %call_46daf5, %struct.Memory** %MEMORY

  ; Code: movl -0x664(%rbp), %eax	 RIP: 46daff	 Bytes: 6
  %loadMem_46daff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46daff = call %struct.Memory* @routine_movl_MINUS0x664__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46daff)
  store %struct.Memory* %call_46daff, %struct.Memory** %MEMORY

  ; Code: movslq -0x654(%rbp), %rcx	 RIP: 46db05	 Bytes: 7
  %loadMem_46db05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46db05 = call %struct.Memory* @routine_movslq_MINUS0x654__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46db05)
  store %struct.Memory* %call_46db05, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x650(%rbp,%rcx,4)	 RIP: 46db0c	 Bytes: 7
  %loadMem_46db0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46db0c = call %struct.Memory* @routine_movl__eax__MINUS0x650__rbp__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46db0c)
  store %struct.Memory* %call_46db0c, %struct.Memory** %MEMORY

  ; Code: .L_46db13:	 RIP: 46db13	 Bytes: 0
  br label %block_.L_46db13
block_.L_46db13:

  ; Code: jmpq .L_46db18	 RIP: 46db13	 Bytes: 5
  %loadMem_46db13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46db13 = call %struct.Memory* @routine_jmpq_.L_46db18(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46db13, i64 5, i64 5)
  store %struct.Memory* %call_46db13, %struct.Memory** %MEMORY

  br label %block_.L_46db18

  ; Code: .L_46db18:	 RIP: 46db18	 Bytes: 0
block_.L_46db18:

  ; Code: jmpq .L_46db1d	 RIP: 46db18	 Bytes: 5
  %loadMem_46db18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46db18 = call %struct.Memory* @routine_jmpq_.L_46db1d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46db18, i64 5, i64 5)
  store %struct.Memory* %call_46db18, %struct.Memory** %MEMORY

  br label %block_.L_46db1d

  ; Code: .L_46db1d:	 RIP: 46db1d	 Bytes: 0
block_.L_46db1d:

  ; Code: movl -0x654(%rbp), %eax	 RIP: 46db1d	 Bytes: 6
  %loadMem_46db1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46db1d = call %struct.Memory* @routine_movl_MINUS0x654__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46db1d)
  store %struct.Memory* %call_46db1d, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 46db23	 Bytes: 3
  %loadMem_46db23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46db23 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46db23)
  store %struct.Memory* %call_46db23, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x654(%rbp)	 RIP: 46db26	 Bytes: 6
  %loadMem_46db26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46db26 = call %struct.Memory* @routine_movl__eax__MINUS0x654__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46db26)
  store %struct.Memory* %call_46db26, %struct.Memory** %MEMORY

  ; Code: jmpq .L_46d642	 RIP: 46db2c	 Bytes: 5
  %loadMem_46db2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46db2c = call %struct.Memory* @routine_jmpq_.L_46d642(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46db2c, i64 -1258, i64 5)
  store %struct.Memory* %call_46db2c, %struct.Memory** %MEMORY

  br label %block_.L_46d642

  ; Code: .L_46db31:	 RIP: 46db31	 Bytes: 0
block_.L_46db31:

  ; Code: jmpq .L_46d621	 RIP: 46db31	 Bytes: 5
  %loadMem_46db31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46db31 = call %struct.Memory* @routine_jmpq_.L_46d621(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46db31, i64 -1296, i64 5)
  store %struct.Memory* %call_46db31, %struct.Memory** %MEMORY

  br label %block_.L_46d621

  ; Code: .L_46db36:	 RIP: 46db36	 Bytes: 0
block_.L_46db36:

  ; Code: movl $0x15, -0x654(%rbp)	 RIP: 46db36	 Bytes: 10
  %loadMem_46db36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46db36 = call %struct.Memory* @routine_movl__0x15__MINUS0x654__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46db36)
  store %struct.Memory* %call_46db36, %struct.Memory** %MEMORY

  ; Code: .L_46db40:	 RIP: 46db40	 Bytes: 0
  br label %block_.L_46db40
block_.L_46db40:

  ; Code: cmpl $0x190, -0x654(%rbp)	 RIP: 46db40	 Bytes: 10
  %loadMem_46db40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46db40 = call %struct.Memory* @routine_cmpl__0x190__MINUS0x654__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46db40)
  store %struct.Memory* %call_46db40, %struct.Memory** %MEMORY

  ; Code: jge .L_46dbe9	 RIP: 46db4a	 Bytes: 6
  %loadMem_46db4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46db4a = call %struct.Memory* @routine_jge_.L_46dbe9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46db4a, i8* %BRANCH_TAKEN, i64 159, i64 6, i64 6)
  store %struct.Memory* %call_46db4a, %struct.Memory** %MEMORY

  %loadBr_46db4a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46db4a = icmp eq i8 %loadBr_46db4a, 1
  br i1 %cmpBr_46db4a, label %block_.L_46dbe9, label %block_46db50

block_46db50:
  ; Code: movslq -0x654(%rbp), %rax	 RIP: 46db50	 Bytes: 7
  %loadMem_46db50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46db50 = call %struct.Memory* @routine_movslq_MINUS0x654__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46db50)
  store %struct.Memory* %call_46db50, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 46db57	 Bytes: 8
  %loadMem_46db57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46db57 = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46db57)
  store %struct.Memory* %call_46db57, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %ecx	 RIP: 46db5f	 Bytes: 3
  %loadMem_46db5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46db5f = call %struct.Memory* @routine_cmpl__0x3___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46db5f)
  store %struct.Memory* %call_46db5f, %struct.Memory** %MEMORY

  ; Code: je .L_46db7d	 RIP: 46db62	 Bytes: 6
  %loadMem_46db62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46db62 = call %struct.Memory* @routine_je_.L_46db7d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46db62, i8* %BRANCH_TAKEN, i64 27, i64 6, i64 6)
  store %struct.Memory* %call_46db62, %struct.Memory** %MEMORY

  %loadBr_46db62 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46db62 = icmp eq i8 %loadBr_46db62, 1
  br i1 %cmpBr_46db62, label %block_.L_46db7d, label %block_46db68

block_46db68:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 46db68	 Bytes: 4
  %loadMem_46db68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46db68 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46db68)
  store %struct.Memory* %call_46db68, %struct.Memory** %MEMORY

  ; Code: movslq -0x654(%rbp), %rcx	 RIP: 46db6c	 Bytes: 7
  %loadMem_46db6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46db6c = call %struct.Memory* @routine_movslq_MINUS0x654__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46db6c)
  store %struct.Memory* %call_46db6c, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, (%rax,%rcx,4)	 RIP: 46db73	 Bytes: 4
  %loadMem_46db73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46db73 = call %struct.Memory* @routine_cmpl__0x0____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46db73)
  store %struct.Memory* %call_46db73, %struct.Memory** %MEMORY

  ; Code: je .L_46db82	 RIP: 46db77	 Bytes: 6
  %loadMem_46db77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46db77 = call %struct.Memory* @routine_je_.L_46db82(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46db77, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_46db77, %struct.Memory** %MEMORY

  %loadBr_46db77 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46db77 = icmp eq i8 %loadBr_46db77, 1
  br i1 %cmpBr_46db77, label %block_.L_46db82, label %block_.L_46db7d

  ; Code: .L_46db7d:	 RIP: 46db7d	 Bytes: 0
block_.L_46db7d:

  ; Code: jmpq .L_46dbd5	 RIP: 46db7d	 Bytes: 5
  %loadMem_46db7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46db7d = call %struct.Memory* @routine_jmpq_.L_46dbd5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46db7d, i64 88, i64 5)
  store %struct.Memory* %call_46db7d, %struct.Memory** %MEMORY

  br label %block_.L_46dbd5

  ; Code: .L_46db82:	 RIP: 46db82	 Bytes: 0
block_.L_46db82:

  ; Code: movslq -0x654(%rbp), %rax	 RIP: 46db82	 Bytes: 7
  %loadMem_46db82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46db82 = call %struct.Memory* @routine_movslq_MINUS0x654__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46db82)
  store %struct.Memory* %call_46db82, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, -0x650(%rbp,%rax,4)	 RIP: 46db89	 Bytes: 8
  %loadMem_46db89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46db89 = call %struct.Memory* @routine_cmpl__0x1__MINUS0x650__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46db89)
  store %struct.Memory* %call_46db89, %struct.Memory** %MEMORY

  ; Code: jne .L_46dba9	 RIP: 46db91	 Bytes: 6
  %loadMem_46db91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46db91 = call %struct.Memory* @routine_jne_.L_46dba9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46db91, i8* %BRANCH_TAKEN, i64 24, i64 6, i64 6)
  store %struct.Memory* %call_46db91, %struct.Memory** %MEMORY

  %loadBr_46db91 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46db91 = icmp eq i8 %loadBr_46db91, 1
  br i1 %cmpBr_46db91, label %block_.L_46dba9, label %block_46db97

block_46db97:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 46db97	 Bytes: 4
  %loadMem_46db97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46db97 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46db97)
  store %struct.Memory* %call_46db97, %struct.Memory** %MEMORY

  ; Code: movslq -0x654(%rbp), %rcx	 RIP: 46db9b	 Bytes: 7
  %loadMem_46db9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46db9b = call %struct.Memory* @routine_movslq_MINUS0x654__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46db9b)
  store %struct.Memory* %call_46db9b, %struct.Memory** %MEMORY

  ; Code: movl $0x1, (%rax,%rcx,4)	 RIP: 46dba2	 Bytes: 7
  %loadMem_46dba2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46dba2 = call %struct.Memory* @routine_movl__0x1____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46dba2)
  store %struct.Memory* %call_46dba2, %struct.Memory** %MEMORY

  ; Code: .L_46dba9:	 RIP: 46dba9	 Bytes: 0
  br label %block_.L_46dba9
block_.L_46dba9:

  ; Code: movslq -0x654(%rbp), %rax	 RIP: 46dba9	 Bytes: 7
  %loadMem_46dba9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46dba9 = call %struct.Memory* @routine_movslq_MINUS0x654__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46dba9)
  store %struct.Memory* %call_46dba9, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, -0x650(%rbp,%rax,4)	 RIP: 46dbb0	 Bytes: 8
  %loadMem_46dbb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46dbb0 = call %struct.Memory* @routine_cmpl__0x2__MINUS0x650__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46dbb0)
  store %struct.Memory* %call_46dbb0, %struct.Memory** %MEMORY

  ; Code: jne .L_46dbd0	 RIP: 46dbb8	 Bytes: 6
  %loadMem_46dbb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46dbb8 = call %struct.Memory* @routine_jne_.L_46dbd0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46dbb8, i8* %BRANCH_TAKEN, i64 24, i64 6, i64 6)
  store %struct.Memory* %call_46dbb8, %struct.Memory** %MEMORY

  %loadBr_46dbb8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46dbb8 = icmp eq i8 %loadBr_46dbb8, 1
  br i1 %cmpBr_46dbb8, label %block_.L_46dbd0, label %block_46dbbe

block_46dbbe:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 46dbbe	 Bytes: 4
  %loadMem_46dbbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46dbbe = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46dbbe)
  store %struct.Memory* %call_46dbbe, %struct.Memory** %MEMORY

  ; Code: movslq -0x654(%rbp), %rcx	 RIP: 46dbc2	 Bytes: 7
  %loadMem_46dbc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46dbc2 = call %struct.Memory* @routine_movslq_MINUS0x654__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46dbc2)
  store %struct.Memory* %call_46dbc2, %struct.Memory** %MEMORY

  ; Code: movl $0xffffffff, (%rax,%rcx,4)	 RIP: 46dbc9	 Bytes: 7
  %loadMem_46dbc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46dbc9 = call %struct.Memory* @routine_movl__0xffffffff____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46dbc9)
  store %struct.Memory* %call_46dbc9, %struct.Memory** %MEMORY

  ; Code: .L_46dbd0:	 RIP: 46dbd0	 Bytes: 0
  br label %block_.L_46dbd0
block_.L_46dbd0:

  ; Code: jmpq .L_46dbd5	 RIP: 46dbd0	 Bytes: 5
  %loadMem_46dbd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46dbd0 = call %struct.Memory* @routine_jmpq_.L_46dbd5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46dbd0, i64 5, i64 5)
  store %struct.Memory* %call_46dbd0, %struct.Memory** %MEMORY

  br label %block_.L_46dbd5

  ; Code: .L_46dbd5:	 RIP: 46dbd5	 Bytes: 0
block_.L_46dbd5:

  ; Code: movl -0x654(%rbp), %eax	 RIP: 46dbd5	 Bytes: 6
  %loadMem_46dbd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46dbd5 = call %struct.Memory* @routine_movl_MINUS0x654__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46dbd5)
  store %struct.Memory* %call_46dbd5, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 46dbdb	 Bytes: 3
  %loadMem_46dbdb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46dbdb = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46dbdb)
  store %struct.Memory* %call_46dbdb, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x654(%rbp)	 RIP: 46dbde	 Bytes: 6
  %loadMem_46dbde = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46dbde = call %struct.Memory* @routine_movl__eax__MINUS0x654__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46dbde)
  store %struct.Memory* %call_46dbde, %struct.Memory** %MEMORY

  ; Code: jmpq .L_46db40	 RIP: 46dbe4	 Bytes: 5
  %loadMem_46dbe4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46dbe4 = call %struct.Memory* @routine_jmpq_.L_46db40(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46dbe4, i64 -164, i64 5)
  store %struct.Memory* %call_46dbe4, %struct.Memory** %MEMORY

  br label %block_.L_46db40

  ; Code: .L_46dbe9:	 RIP: 46dbe9	 Bytes: 0
block_.L_46dbe9:

  ; Code: addq $0x670, %rsp	 RIP: 46dbe9	 Bytes: 7
  %loadMem_46dbe9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46dbe9 = call %struct.Memory* @routine_addq__0x670___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46dbe9)
  store %struct.Memory* %call_46dbe9, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 46dbf0	 Bytes: 1
  %loadMem_46dbf0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46dbf0 = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46dbf0)
  store %struct.Memory* %call_46dbf0, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 46dbf1	 Bytes: 1
  %loadMem_46dbf1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46dbf1 = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46dbf1)
  store %struct.Memory* %call_46dbf1, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_46dbf1
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

define %struct.Memory* @routine_subq__0x670___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 1648)
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0x640___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 1600)
  ret %struct.Memory* %11
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_leaq_MINUS0x650__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1616
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0x1__MINUS0x658__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 1624
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
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

define %struct.Memory* @routine_callq_.memset_plt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_cmpl__0x0__MINUS0x658__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 1624
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

define %struct.Memory* @routine_je_.L_46db36(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x0__MINUS0x658__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 1624
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x15__MINUS0x654__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 1620
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 21)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_cmpl__0x190__MINUS0x654__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 1620
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 400)
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

define %struct.Memory* @routine_jge_.L_46db31(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x0__MINUS0x65c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 1628
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x0__MINUS0x660__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 1632
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x0__MINUS0x664__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 1636
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = sext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movslq_MINUS0x654__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 1620
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i8*
  %6 = load i8, i8* %5
  %7 = zext i8 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
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

define %struct.Memory* @routine_cmpl__0x3___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 3)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_46d6b2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i64*
  %6 = load i64, i64* %5
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
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


define %struct.Memory* @routine_movslq_MINUS0x654__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
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

define %struct.Memory* @routine_jne_.L_46d6b2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_cmpl__0x3__MINUS0x650__rbp__rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = mul i64 %13, 4
  %15 = add i64 %12, -1616
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 8
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %16, i64 3)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_jne_.L_46d6b7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jmpq_.L_46db1d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl_MINUS0x654__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 1620
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
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


define %struct.Memory* @routine_je_.L_46d6ee(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_cmpl__0x3__MINUS0x650__rbp__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %12, -1616
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 8
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %16, i64 3)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_je_.L_46d793(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_je_.L_46d725(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_je_.L_46d75c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_je_.L_46d7b4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_jne_.L_46d7b4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movl__0x3__MINUS0x650__rbp__rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = mul i64 %13, 4
  %15 = add i64 %12, -1616
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 11
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %16, i64 3)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_jmpq_.L_46db18(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_cmpl__0x1__MINUS0x650__rbp__rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = mul i64 %13, 4
  %15 = add i64 %12, -1616
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 8
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %16, i64 1)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_je_.L_46d90d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_je_.L_46d81a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x0____rax__rdx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = mul i64 %13, 4
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %15, i64 0)
  ret %struct.Memory* %18
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

define %struct.Memory* @routine_jg_.L_46d90d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_cmpl__0x1__MINUS0x650__rbp__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %12, -1616
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 8
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %16, i64 1)
  ret %struct.Memory* %19
}














define %struct.Memory* @routine_je_.L_46d86b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




























define %struct.Memory* @routine_je_.L_46d8bc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




























define %struct.Memory* @routine_je_.L_46d917(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
















define %struct.Memory* @routine_jne_.L_46d917(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x1__MINUS0x65c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 1628
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_cmpl__0x2__MINUS0x650__rbp__rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = mul i64 %13, 4
  %15 = add i64 %12, -1616
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 8
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %16, i64 2)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_je_.L_46da70(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_je_.L_46d97d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jl_.L_46da70(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_cmpl__0x2__MINUS0x650__rbp__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %12, -1616
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 8
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %16, i64 2)
  ret %struct.Memory* %19
}














define %struct.Memory* @routine_je_.L_46d9ce(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


































define %struct.Memory* @routine_je_.L_46da1f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


































define %struct.Memory* @routine_je_.L_46da7a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






















define %struct.Memory* @routine_jne_.L_46da7a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x1__MINUS0x660__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 1632
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_cmpl__0x0__MINUS0x65c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 1628
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_46dab2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x0__MINUS0x660__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 1632
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_46daa3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x3__MINUS0x664__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 1636
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 3)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jmpq_.L_46daad(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movl__0x1__MINUS0x664__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 1636
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jmpq_.L_46dace(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_je_.L_46dac9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x2__MINUS0x664__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 1636
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 2)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_cmpl__0x0__MINUS0x664__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 1636
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_46db13(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_MINUS0x664__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 1636
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

define %struct.Memory* @routine_cmpl_MINUS0x650__rbp__rcx_4____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %15 = load i32, i32* %EAX
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* %RBP
  %18 = load i64, i64* %RCX
  %19 = mul i64 %18, 4
  %20 = add i64 %17, -1616
  %21 = add i64 %20, %19
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %16, i64 %21)
  ret %struct.Memory* %24
}









define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__eax__MINUS0x650__rbp__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %18 = add i64 %15, -1616
  %19 = add i64 %18, %17
  %20 = load i32, i32* %EAX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %21)
  ret %struct.Memory* %24
}










define %struct.Memory* @routine_movl__eax__MINUS0x654__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 1620
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_46d642(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_46d621(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_jge_.L_46dbe9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_je_.L_46db7d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_je_.L_46db82(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_46dbd5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_jne_.L_46dba9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movl__0x1____rax__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %15, i64 1)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_jne_.L_46dbd0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movl__0xffffffff____rax__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %15, i64 -1)
  ret %struct.Memory* %18
}










define %struct.Memory* @routine_jmpq_.L_46db40(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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

define %struct.Memory* @routine_addq__0x670___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 1648)
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

