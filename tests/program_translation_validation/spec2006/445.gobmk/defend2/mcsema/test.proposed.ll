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
declare %struct.Memory* @sub_40f780.countlib(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_40f840.findlib(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_461d90.break_chain_moves(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4669b0.break_chain2_efficient_moves(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4626b0.propose_edge_moves(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_467690.edge_clamp_moves(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4680d0.special_rescue_moves(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4691b0.special_rescue2_moves(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_462c90.order_moves(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_40edf0.komaster_trymove(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_45dce0.do_attack(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_40dd60.popgo(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_417fc0.sgf_trace(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4142a0.is_self_atari(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_4115b0.approxlib(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_415250.has_neighbor(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_468270.superstring_breakchain_moves(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_47c0b0.find_superstring_liberties(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_414ab0.liberty_of_string(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_466a20.break_chain2_defense_moves(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_468450.special_rescue5_moves(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)
declare %struct.Memory* @sub_468d50.break_chain3_moves(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Data Access Globals
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
%G__0x57a739_type = type <{ [8 x i8] }>
@G__0x57a739= global %G__0x57a739_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57f60a_type = type <{ [8 x i8] }>
@G__0x57f60a= global %G__0x57f60a_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57fb0d_type = type <{ [8 x i8] }>
@G__0x57fb0d= global %G__0x57fb0d_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57fbff_type = type <{ [8 x i8] }>
@G__0x57fbff= global %G__0x57fbff_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57fc87_type = type <{ [8 x i8] }>
@G__0x57fc87= global %G__0x57fc87_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57fd27_type = type <{ [8 x i8] }>
@G__0x57fd27= global %G__0x57fd27_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57fd3a_type = type <{ [8 x i8] }>
@G__0x57fd3a= global %G__0x57fd3a_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57fd49_type = type <{ [8 x i8] }>
@G__0x57fd49= global %G__0x57fd49_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57fd53_type = type <{ [8 x i8] }>
@G__0x57fd53= global %G__0x57fd53_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57fd5d_type = type <{ [8 x i8] }>
@G__0x57fd5d= global %G__0x57fd5d_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57fd73_type = type <{ [8 x i8] }>
@G__0x57fd73= global %G__0x57fd73_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>


define %struct.Memory* @defend2(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .defend2:	 RIP: 464400	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 464400	 Bytes: 1
  %loadMem_464400 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464400 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464400)
  store %struct.Memory* %call_464400, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 464401	 Bytes: 3
  %loadMem_464401 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464401 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464401)
  store %struct.Memory* %call_464401, %struct.Memory** %MEMORY

  ; Code: pushq %r15	 RIP: 464404	 Bytes: 2
  %loadMem_464404 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464404 = call %struct.Memory* @routine_pushq__r15(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464404)
  store %struct.Memory* %call_464404, %struct.Memory** %MEMORY

  ; Code: pushq %r14	 RIP: 464406	 Bytes: 2
  %loadMem_464406 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464406 = call %struct.Memory* @routine_pushq__r14(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464406)
  store %struct.Memory* %call_464406, %struct.Memory** %MEMORY

  ; Code: pushq %r13	 RIP: 464408	 Bytes: 2
  %loadMem_464408 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464408 = call %struct.Memory* @routine_pushq__r13(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464408)
  store %struct.Memory* %call_464408, %struct.Memory** %MEMORY

  ; Code: pushq %r12	 RIP: 46440a	 Bytes: 2
  %loadMem_46440a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46440a = call %struct.Memory* @routine_pushq__r12(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46440a)
  store %struct.Memory* %call_46440a, %struct.Memory** %MEMORY

  ; Code: pushq %rbx	 RIP: 46440c	 Bytes: 1
  %loadMem_46440c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46440c = call %struct.Memory* @routine_pushq__rbx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46440c)
  store %struct.Memory* %call_46440c, %struct.Memory** %MEMORY

  ; Code: subq $0x3a8, %rsp	 RIP: 46440d	 Bytes: 7
  %loadMem_46440d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46440d = call %struct.Memory* @routine_subq__0x3a8___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46440d)
  store %struct.Memory* %call_46440d, %struct.Memory** %MEMORY

  ; Code: movl $0x3, %eax	 RIP: 464414	 Bytes: 5
  %loadMem_464414 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464414 = call %struct.Memory* @routine_movl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464414)
  store %struct.Memory* %call_464414, %struct.Memory** %MEMORY

  ; Code: movq $0x57a739, %r8	 RIP: 464419	 Bytes: 10
  %loadMem_464419 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464419 = call %struct.Memory* @routine_movq__0x57a739___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464419)
  store %struct.Memory* %call_464419, %struct.Memory** %MEMORY

  ; Code: movl %edi, -0x30(%rbp)	 RIP: 464423	 Bytes: 3
  %loadMem_464423 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464423 = call %struct.Memory* @routine_movl__edi__MINUS0x30__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464423)
  store %struct.Memory* %call_464423, %struct.Memory** %MEMORY

  ; Code: movq %rsi, -0x38(%rbp)	 RIP: 464426	 Bytes: 4
  %loadMem_464426 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464426 = call %struct.Memory* @routine_movq__rsi__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464426)
  store %struct.Memory* %call_464426, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x3c(%rbp)	 RIP: 46442a	 Bytes: 3
  %loadMem_46442a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46442a = call %struct.Memory* @routine_movl__edx__MINUS0x3c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46442a)
  store %struct.Memory* %call_46442a, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x40(%rbp)	 RIP: 46442d	 Bytes: 3
  %loadMem_46442d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46442d = call %struct.Memory* @routine_movl__ecx__MINUS0x40__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46442d)
  store %struct.Memory* %call_46442d, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x220(%rbp)	 RIP: 464430	 Bytes: 10
  %loadMem_464430 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464430 = call %struct.Memory* @routine_movl__0x0__MINUS0x220__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464430)
  store %struct.Memory* %call_464430, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x224(%rbp)	 RIP: 46443a	 Bytes: 10
  %loadMem_46443a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46443a = call %struct.Memory* @routine_movl__0x0__MINUS0x224__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46443a)
  store %struct.Memory* %call_46443a, %struct.Memory** %MEMORY

  ; Code: movq %r8, -0x238(%rbp)	 RIP: 464444	 Bytes: 7
  %loadMem_464444 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464444 = call %struct.Memory* @routine_movq__r8__MINUS0x238__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464444)
  store %struct.Memory* %call_464444, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %ecx	 RIP: 46444b	 Bytes: 3
  %loadMem_46444b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46444b = call %struct.Memory* @routine_movl_MINUS0x30__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46444b)
  store %struct.Memory* %call_46444b, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x23c(%rbp)	 RIP: 46444e	 Bytes: 6
  %loadMem_46444e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46444e = call %struct.Memory* @routine_movl__ecx__MINUS0x23c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46444e)
  store %struct.Memory* %call_46444e, %struct.Memory** %MEMORY

  ; Code: movl 0xae23a4, %ecx	 RIP: 464454	 Bytes: 7
  %loadMem_464454 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464454 = call %struct.Memory* @routine_movl_0xae23a4___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464454)
  store %struct.Memory* %call_464454, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 46445b	 Bytes: 3
  %loadMem_46445b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46445b = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46445b)
  store %struct.Memory* %call_46445b, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0xae23a4	 RIP: 46445e	 Bytes: 7
  %loadMem_46445e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46445e = call %struct.Memory* @routine_movl__ecx__0xae23a4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46445e)
  store %struct.Memory* %call_46445e, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rsi	 RIP: 464465	 Bytes: 4
  %loadMem_464465 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464465 = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464465)
  store %struct.Memory* %call_464465, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rsi,1), %ecx	 RIP: 464469	 Bytes: 8
  %loadMem_464469 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464469 = call %struct.Memory* @routine_movzbl_0xb89e60___rsi_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464469)
  store %struct.Memory* %call_464469, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x44(%rbp)	 RIP: 464471	 Bytes: 3
  %loadMem_464471 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464471 = call %struct.Memory* @routine_movl__ecx__MINUS0x44__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464471)
  store %struct.Memory* %call_464471, %struct.Memory** %MEMORY

  ; Code: subl -0x44(%rbp), %eax	 RIP: 464474	 Bytes: 3
  %loadMem_464474 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464474 = call %struct.Memory* @routine_subl_MINUS0x44__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464474)
  store %struct.Memory* %call_464474, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x48(%rbp)	 RIP: 464477	 Bytes: 3
  %loadMem_464477 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464477 = call %struct.Memory* @routine_movl__eax__MINUS0x48__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464477)
  store %struct.Memory* %call_464477, %struct.Memory** %MEMORY

  ; Code: movslq -0x30(%rbp), %rsi	 RIP: 46447a	 Bytes: 4
  %loadMem_46447a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46447a = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46447a)
  store %struct.Memory* %call_46447a, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rsi,1), %eax	 RIP: 46447e	 Bytes: 8
  %loadMem_46447e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46447e = call %struct.Memory* @routine_movzbl_0xb89e60___rsi_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46447e)
  store %struct.Memory* %call_46447e, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, %eax	 RIP: 464486	 Bytes: 3
  %loadMem_464486 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464486 = call %struct.Memory* @routine_cmpl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464486)
  store %struct.Memory* %call_464486, %struct.Memory** %MEMORY

  ; Code: je .L_4644a4	 RIP: 464489	 Bytes: 6
  %loadMem_464489 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464489 = call %struct.Memory* @routine_je_.L_4644a4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464489, i8* %BRANCH_TAKEN, i64 27, i64 6, i64 6)
  store %struct.Memory* %call_464489, %struct.Memory** %MEMORY

  %loadBr_464489 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_464489 = icmp eq i8 %loadBr_464489, 1
  br i1 %cmpBr_464489, label %block_.L_4644a4, label %block_46448f

block_46448f:
  ; Code: movslq -0x30(%rbp), %rax	 RIP: 46448f	 Bytes: 4
  %loadMem_46448f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46448f = call %struct.Memory* @routine_movslq_MINUS0x30__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46448f)
  store %struct.Memory* %call_46448f, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 464493	 Bytes: 8
  %loadMem_464493 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464493 = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464493)
  store %struct.Memory* %call_464493, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, %ecx	 RIP: 46449b	 Bytes: 3
  %loadMem_46449b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46449b = call %struct.Memory* @routine_cmpl__0x2___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46449b)
  store %struct.Memory* %call_46449b, %struct.Memory** %MEMORY

  ; Code: jne .L_4644a9	 RIP: 46449e	 Bytes: 6
  %loadMem_46449e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46449e = call %struct.Memory* @routine_jne_.L_4644a9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46449e, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_46449e, %struct.Memory** %MEMORY

  %loadBr_46449e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46449e = icmp eq i8 %loadBr_46449e, 1
  br i1 %cmpBr_46449e, label %block_.L_4644a9, label %block_.L_4644a4

  ; Code: .L_4644a4:	 RIP: 4644a4	 Bytes: 0
block_.L_4644a4:

  ; Code: jmpq .L_4644d1	 RIP: 4644a4	 Bytes: 5
  %loadMem_4644a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4644a4 = call %struct.Memory* @routine_jmpq_.L_4644d1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4644a4, i64 45, i64 5)
  store %struct.Memory* %call_4644a4, %struct.Memory** %MEMORY

  br label %block_.L_4644d1

  ; Code: .L_4644a9:	 RIP: 4644a9	 Bytes: 0
block_.L_4644a9:

  ; Code: movq $0x57fb0d, %rdi	 RIP: 4644a9	 Bytes: 10
  %loadMem_4644a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4644a9 = call %struct.Memory* @routine_movq__0x57fb0d___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4644a9)
  store %struct.Memory* %call_4644a9, %struct.Memory** %MEMORY

  ; Code: movl $0x4a1, %esi	 RIP: 4644b3	 Bytes: 5
  %loadMem_4644b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4644b3 = call %struct.Memory* @routine_movl__0x4a1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4644b3)
  store %struct.Memory* %call_4644b3, %struct.Memory** %MEMORY

  ; Code: movq $0x57fbff, %rdx	 RIP: 4644b8	 Bytes: 10
  %loadMem_4644b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4644b8 = call %struct.Memory* @routine_movq__0x57fbff___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4644b8)
  store %struct.Memory* %call_4644b8, %struct.Memory** %MEMORY

  ; Code: movl $0xffffffff, %eax	 RIP: 4644c2	 Bytes: 5
  %loadMem_4644c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4644c2 = call %struct.Memory* @routine_movl__0xffffffff___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4644c2)
  store %struct.Memory* %call_4644c2, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 4644c7	 Bytes: 2
  %loadMem_4644c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4644c7 = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4644c7)
  store %struct.Memory* %call_4644c7, %struct.Memory** %MEMORY

  ; Code: movl %eax, %r8d	 RIP: 4644c9	 Bytes: 3
  %loadMem_4644c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4644c9 = call %struct.Memory* @routine_movl__eax___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4644c9)
  store %struct.Memory* %call_4644c9, %struct.Memory** %MEMORY

  ; Code: callq .abortgo	 RIP: 4644cc	 Bytes: 5
  %loadMem1_4644cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4644cc = call %struct.Memory* @routine_callq_.abortgo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4644cc, i64 -74812, i64 5, i64 5)
  store %struct.Memory* %call1_4644cc, %struct.Memory** %MEMORY

  %loadMem2_4644cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4644cc = load i64, i64* %3
  %call2_4644cc = call %struct.Memory* @sub_452090.abortgo(%struct.State* %0, i64  %loadPC_4644cc, %struct.Memory* %loadMem2_4644cc)
  store %struct.Memory* %call2_4644cc, %struct.Memory** %MEMORY

  ; Code: .L_4644d1:	 RIP: 4644d1	 Bytes: 0
  br label %block_.L_4644d1
block_.L_4644d1:

  ; Code: movl -0x30(%rbp), %edi	 RIP: 4644d1	 Bytes: 3
  %loadMem_4644d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4644d1 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4644d1)
  store %struct.Memory* %call_4644d1, %struct.Memory** %MEMORY

  ; Code: callq .countlib	 RIP: 4644d4	 Bytes: 5
  %loadMem1_4644d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4644d4 = call %struct.Memory* @routine_callq_.countlib(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4644d4, i64 -347476, i64 5, i64 5)
  store %struct.Memory* %call1_4644d4, %struct.Memory** %MEMORY

  %loadMem2_4644d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4644d4 = load i64, i64* %3
  %call2_4644d4 = call %struct.Memory* @sub_40f780.countlib(%struct.State* %0, i64  %loadPC_4644d4, %struct.Memory* %loadMem2_4644d4)
  store %struct.Memory* %call2_4644d4, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, %eax	 RIP: 4644d9	 Bytes: 3
  %loadMem_4644d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4644d9 = call %struct.Memory* @routine_cmpl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4644d9)
  store %struct.Memory* %call_4644d9, %struct.Memory** %MEMORY

  ; Code: jne .L_4644e7	 RIP: 4644dc	 Bytes: 6
  %loadMem_4644dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4644dc = call %struct.Memory* @routine_jne_.L_4644e7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4644dc, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_4644dc, %struct.Memory** %MEMORY

  %loadBr_4644dc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4644dc = icmp eq i8 %loadBr_4644dc, 1
  br i1 %cmpBr_4644dc, label %block_.L_4644e7, label %block_4644e2

block_4644e2:
  ; Code: jmpq .L_46450f	 RIP: 4644e2	 Bytes: 5
  %loadMem_4644e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4644e2 = call %struct.Memory* @routine_jmpq_.L_46450f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4644e2, i64 45, i64 5)
  store %struct.Memory* %call_4644e2, %struct.Memory** %MEMORY

  br label %block_.L_46450f

  ; Code: .L_4644e7:	 RIP: 4644e7	 Bytes: 0
block_.L_4644e7:

  ; Code: movq $0x57fb0d, %rdi	 RIP: 4644e7	 Bytes: 10
  %loadMem_4644e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4644e7 = call %struct.Memory* @routine_movq__0x57fb0d___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4644e7)
  store %struct.Memory* %call_4644e7, %struct.Memory** %MEMORY

  ; Code: movl $0x4a2, %esi	 RIP: 4644f1	 Bytes: 5
  %loadMem_4644f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4644f1 = call %struct.Memory* @routine_movl__0x4a2___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4644f1)
  store %struct.Memory* %call_4644f1, %struct.Memory** %MEMORY

  ; Code: movq $0x57fd27, %rdx	 RIP: 4644f6	 Bytes: 10
  %loadMem_4644f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4644f6 = call %struct.Memory* @routine_movq__0x57fd27___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4644f6)
  store %struct.Memory* %call_4644f6, %struct.Memory** %MEMORY

  ; Code: movl $0xffffffff, %eax	 RIP: 464500	 Bytes: 5
  %loadMem_464500 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464500 = call %struct.Memory* @routine_movl__0xffffffff___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464500)
  store %struct.Memory* %call_464500, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 464505	 Bytes: 2
  %loadMem_464505 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464505 = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464505)
  store %struct.Memory* %call_464505, %struct.Memory** %MEMORY

  ; Code: movl %eax, %r8d	 RIP: 464507	 Bytes: 3
  %loadMem_464507 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464507 = call %struct.Memory* @routine_movl__eax___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464507)
  store %struct.Memory* %call_464507, %struct.Memory** %MEMORY

  ; Code: callq .abortgo	 RIP: 46450a	 Bytes: 5
  %loadMem1_46450a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46450a = call %struct.Memory* @routine_callq_.abortgo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46450a, i64 -74874, i64 5, i64 5)
  store %struct.Memory* %call1_46450a, %struct.Memory** %MEMORY

  %loadMem2_46450a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46450a = load i64, i64* %3
  %call2_46450a = call %struct.Memory* @sub_452090.abortgo(%struct.State* %0, i64  %loadPC_46450a, %struct.Memory* %loadMem2_46450a)
  store %struct.Memory* %call2_46450a, %struct.Memory** %MEMORY

  ; Code: .L_46450f:	 RIP: 46450f	 Bytes: 0
  br label %block_.L_46450f
block_.L_46450f:

  ; Code: movl $0x2, %esi	 RIP: 46450f	 Bytes: 5
  %loadMem_46450f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46450f = call %struct.Memory* @routine_movl__0x2___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46450f)
  store %struct.Memory* %call_46450f, %struct.Memory** %MEMORY

  ; Code: leaq -0x58(%rbp), %rdx	 RIP: 464514	 Bytes: 4
  %loadMem_464514 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464514 = call %struct.Memory* @routine_leaq_MINUS0x58__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464514)
  store %struct.Memory* %call_464514, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %edi	 RIP: 464518	 Bytes: 3
  %loadMem_464518 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464518 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464518)
  store %struct.Memory* %call_464518, %struct.Memory** %MEMORY

  ; Code: callq .findlib	 RIP: 46451b	 Bytes: 5
  %loadMem1_46451b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46451b = call %struct.Memory* @routine_callq_.findlib(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46451b, i64 -347355, i64 5, i64 5)
  store %struct.Memory* %call1_46451b, %struct.Memory** %MEMORY

  %loadMem2_46451b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46451b = load i64, i64* %3
  %call2_46451b = call %struct.Memory* @sub_40f840.findlib(%struct.State* %0, i64  %loadPC_46451b, %struct.Memory* %loadMem2_46451b)
  store %struct.Memory* %call2_46451b, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x50(%rbp)	 RIP: 464520	 Bytes: 3
  %loadMem_464520 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464520 = call %struct.Memory* @routine_movl__eax__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464520)
  store %struct.Memory* %call_464520, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, -0x50(%rbp)	 RIP: 464523	 Bytes: 4
  %loadMem_464523 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464523 = call %struct.Memory* @routine_cmpl__0x2__MINUS0x50__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464523)
  store %struct.Memory* %call_464523, %struct.Memory** %MEMORY

  ; Code: jne .L_464532	 RIP: 464527	 Bytes: 6
  %loadMem_464527 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464527 = call %struct.Memory* @routine_jne_.L_464532(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464527, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_464527, %struct.Memory** %MEMORY

  %loadBr_464527 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_464527 = icmp eq i8 %loadBr_464527, 1
  br i1 %cmpBr_464527, label %block_.L_464532, label %block_46452d

block_46452d:
  ; Code: jmpq .L_4645a3	 RIP: 46452d	 Bytes: 5
  %loadMem_46452d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46452d = call %struct.Memory* @routine_jmpq_.L_4645a3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46452d, i64 118, i64 5)
  store %struct.Memory* %call_46452d, %struct.Memory** %MEMORY

  br label %block_.L_4645a3

  ; Code: .L_464532:	 RIP: 464532	 Bytes: 0
block_.L_464532:

  ; Code: movq $0x57fb0d, %rdi	 RIP: 464532	 Bytes: 10
  %loadMem_464532 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464532 = call %struct.Memory* @routine_movq__0x57fb0d___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464532)
  store %struct.Memory* %call_464532, %struct.Memory** %MEMORY

  ; Code: movl $0x4a5, %esi	 RIP: 46453c	 Bytes: 5
  %loadMem_46453c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46453c = call %struct.Memory* @routine_movl__0x4a5___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46453c)
  store %struct.Memory* %call_46453c, %struct.Memory** %MEMORY

  ; Code: movq $0x57fd3a, %rdx	 RIP: 464541	 Bytes: 10
  %loadMem_464541 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464541 = call %struct.Memory* @routine_movq__0x57fd3a___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464541)
  store %struct.Memory* %call_464541, %struct.Memory** %MEMORY

  ; Code: movl $0x14, %eax	 RIP: 46454b	 Bytes: 5
  %loadMem_46454b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46454b = call %struct.Memory* @routine_movl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46454b)
  store %struct.Memory* %call_46454b, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %ecx	 RIP: 464550	 Bytes: 3
  %loadMem_464550 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464550 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464550)
  store %struct.Memory* %call_464550, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2f0(%rbp)	 RIP: 464553	 Bytes: 6
  %loadMem_464553 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464553 = call %struct.Memory* @routine_movl__eax__MINUS0x2f0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464553)
  store %struct.Memory* %call_464553, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %eax	 RIP: 464559	 Bytes: 2
  %loadMem_464559 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464559 = call %struct.Memory* @routine_movl__ecx___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464559)
  store %struct.Memory* %call_464559, %struct.Memory** %MEMORY

  ; Code: movq %rdx, -0x2f8(%rbp)	 RIP: 46455b	 Bytes: 7
  %loadMem_46455b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46455b = call %struct.Memory* @routine_movq__rdx__MINUS0x2f8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46455b)
  store %struct.Memory* %call_46455b, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 464562	 Bytes: 1
  %loadMem_464562 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464562 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464562)
  store %struct.Memory* %call_464562, %struct.Memory** %MEMORY

  ; Code: movl -0x2f0(%rbp), %ecx	 RIP: 464563	 Bytes: 6
  %loadMem_464563 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464563 = call %struct.Memory* @routine_movl_MINUS0x2f0__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464563)
  store %struct.Memory* %call_464563, %struct.Memory** %MEMORY

  ; Code: idivl %ecx	 RIP: 464569	 Bytes: 2
  %loadMem_464569 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464569 = call %struct.Memory* @routine_idivl__ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464569)
  store %struct.Memory* %call_464569, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 46456b	 Bytes: 3
  %loadMem_46456b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46456b = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46456b)
  store %struct.Memory* %call_46456b, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %r8d	 RIP: 46456e	 Bytes: 4
  %loadMem_46456e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46456e = call %struct.Memory* @routine_movl_MINUS0x30__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46456e)
  store %struct.Memory* %call_46456e, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2fc(%rbp)	 RIP: 464572	 Bytes: 6
  %loadMem_464572 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464572 = call %struct.Memory* @routine_movl__eax__MINUS0x2fc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464572)
  store %struct.Memory* %call_464572, %struct.Memory** %MEMORY

  ; Code: movl %r8d, %eax	 RIP: 464578	 Bytes: 3
  %loadMem_464578 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464578 = call %struct.Memory* @routine_movl__r8d___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464578)
  store %struct.Memory* %call_464578, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 46457b	 Bytes: 1
  %loadMem_46457b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46457b = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46457b)
  store %struct.Memory* %call_46457b, %struct.Memory** %MEMORY

  ; Code: idivl %ecx	 RIP: 46457c	 Bytes: 2
  %loadMem_46457c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46457c = call %struct.Memory* @routine_idivl__ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46457c)
  store %struct.Memory* %call_46457c, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 46457e	 Bytes: 3
  %loadMem_46457e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46457e = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46457e)
  store %struct.Memory* %call_46457e, %struct.Memory** %MEMORY

  ; Code: movq -0x2f8(%rbp), %r9	 RIP: 464581	 Bytes: 7
  %loadMem_464581 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464581 = call %struct.Memory* @routine_movq_MINUS0x2f8__rbp____r9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464581)
  store %struct.Memory* %call_464581, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x300(%rbp)	 RIP: 464588	 Bytes: 6
  %loadMem_464588 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464588 = call %struct.Memory* @routine_movl__edx__MINUS0x300__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464588)
  store %struct.Memory* %call_464588, %struct.Memory** %MEMORY

  ; Code: movq %r9, %rdx	 RIP: 46458e	 Bytes: 3
  %loadMem_46458e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46458e = call %struct.Memory* @routine_movq__r9___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46458e)
  store %struct.Memory* %call_46458e, %struct.Memory** %MEMORY

  ; Code: movl -0x2fc(%rbp), %ecx	 RIP: 464591	 Bytes: 6
  %loadMem_464591 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464591 = call %struct.Memory* @routine_movl_MINUS0x2fc__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464591)
  store %struct.Memory* %call_464591, %struct.Memory** %MEMORY

  ; Code: movl -0x300(%rbp), %r8d	 RIP: 464597	 Bytes: 7
  %loadMem_464597 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464597 = call %struct.Memory* @routine_movl_MINUS0x300__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464597)
  store %struct.Memory* %call_464597, %struct.Memory** %MEMORY

  ; Code: callq .abortgo	 RIP: 46459e	 Bytes: 5
  %loadMem1_46459e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46459e = call %struct.Memory* @routine_callq_.abortgo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46459e, i64 -75022, i64 5, i64 5)
  store %struct.Memory* %call1_46459e, %struct.Memory** %MEMORY

  %loadMem2_46459e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46459e = load i64, i64* %3
  %call2_46459e = call %struct.Memory* @sub_452090.abortgo(%struct.State* %0, i64  %loadPC_46459e, %struct.Memory* %loadMem2_46459e)
  store %struct.Memory* %call2_46459e, %struct.Memory** %MEMORY

  ; Code: .L_4645a3:	 RIP: 4645a3	 Bytes: 0
  br label %block_.L_4645a3
block_.L_4645a3:

  ; Code: movl $0x0, -0x228(%rbp)	 RIP: 4645a3	 Bytes: 10
  %loadMem_4645a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4645a3 = call %struct.Memory* @routine_movl__0x0__MINUS0x228__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4645a3)
  store %struct.Memory* %call_4645a3, %struct.Memory** %MEMORY

  ; Code: .L_4645ad:	 RIP: 4645ad	 Bytes: 0
  br label %block_.L_4645ad
block_.L_4645ad:

  ; Code: movl -0x228(%rbp), %eax	 RIP: 4645ad	 Bytes: 6
  %loadMem_4645ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4645ad = call %struct.Memory* @routine_movl_MINUS0x228__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4645ad)
  store %struct.Memory* %call_4645ad, %struct.Memory** %MEMORY

  ; Code: cmpl -0x50(%rbp), %eax	 RIP: 4645b3	 Bytes: 3
  %loadMem_4645b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4645b3 = call %struct.Memory* @routine_cmpl_MINUS0x50__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4645b3)
  store %struct.Memory* %call_4645b3, %struct.Memory** %MEMORY

  ; Code: jge .L_4645fb	 RIP: 4645b6	 Bytes: 6
  %loadMem_4645b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4645b6 = call %struct.Memory* @routine_jge_.L_4645fb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4645b6, i8* %BRANCH_TAKEN, i64 69, i64 6, i64 6)
  store %struct.Memory* %call_4645b6, %struct.Memory** %MEMORY

  %loadBr_4645b6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4645b6 = icmp eq i8 %loadBr_4645b6, 1
  br i1 %cmpBr_4645b6, label %block_.L_4645fb, label %block_4645bc

block_4645bc:
  ; Code: movslq -0x228(%rbp), %rax	 RIP: 4645bc	 Bytes: 7
  %loadMem_4645bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4645bc = call %struct.Memory* @routine_movslq_MINUS0x228__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4645bc)
  store %struct.Memory* %call_4645bc, %struct.Memory** %MEMORY

  ; Code: movl -0x58(%rbp,%rax,4), %ecx	 RIP: 4645c3	 Bytes: 4
  %loadMem_4645c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4645c3 = call %struct.Memory* @routine_movl_MINUS0x58__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4645c3)
  store %struct.Memory* %call_4645c3, %struct.Memory** %MEMORY

  ; Code: movslq -0x228(%rbp), %rax	 RIP: 4645c7	 Bytes: 7
  %loadMem_4645c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4645c7 = call %struct.Memory* @routine_movslq_MINUS0x228__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4645c7)
  store %struct.Memory* %call_4645c7, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x218(%rbp,%rax,4)	 RIP: 4645ce	 Bytes: 7
  %loadMem_4645ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4645ce = call %struct.Memory* @routine_movl__ecx__MINUS0x218__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4645ce)
  store %struct.Memory* %call_4645ce, %struct.Memory** %MEMORY

  ; Code: movslq -0x228(%rbp), %rax	 RIP: 4645d5	 Bytes: 7
  %loadMem_4645d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4645d5 = call %struct.Memory* @routine_movslq_MINUS0x228__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4645d5)
  store %struct.Memory* %call_4645d5, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x150(%rbp,%rax,4)	 RIP: 4645dc	 Bytes: 11
  %loadMem_4645dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4645dc = call %struct.Memory* @routine_movl__0x0__MINUS0x150__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4645dc)
  store %struct.Memory* %call_4645dc, %struct.Memory** %MEMORY

  ; Code: movl -0x228(%rbp), %eax	 RIP: 4645e7	 Bytes: 6
  %loadMem_4645e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4645e7 = call %struct.Memory* @routine_movl_MINUS0x228__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4645e7)
  store %struct.Memory* %call_4645e7, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4645ed	 Bytes: 3
  %loadMem_4645ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4645ed = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4645ed)
  store %struct.Memory* %call_4645ed, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x228(%rbp)	 RIP: 4645f0	 Bytes: 6
  %loadMem_4645f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4645f0 = call %struct.Memory* @routine_movl__eax__MINUS0x228__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4645f0)
  store %struct.Memory* %call_4645f0, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4645ad	 RIP: 4645f6	 Bytes: 5
  %loadMem_4645f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4645f6 = call %struct.Memory* @routine_jmpq_.L_4645ad(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4645f6, i64 -73, i64 5)
  store %struct.Memory* %call_4645f6, %struct.Memory** %MEMORY

  br label %block_.L_4645ad

  ; Code: .L_4645fb:	 RIP: 4645fb	 Bytes: 0
block_.L_4645fb:

  ; Code: leaq -0x218(%rbp), %rsi	 RIP: 4645fb	 Bytes: 7
  %loadMem_4645fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4645fb = call %struct.Memory* @routine_leaq_MINUS0x218__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4645fb)
  store %struct.Memory* %call_4645fb, %struct.Memory** %MEMORY

  ; Code: movl -0x50(%rbp), %eax	 RIP: 464602	 Bytes: 3
  %loadMem_464602 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464602 = call %struct.Memory* @routine_movl_MINUS0x50__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464602)
  store %struct.Memory* %call_464602, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x88(%rbp)	 RIP: 464605	 Bytes: 6
  %loadMem_464605 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464605 = call %struct.Memory* @routine_movl__eax__MINUS0x88__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464605)
  store %struct.Memory* %call_464605, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %edi	 RIP: 46460b	 Bytes: 3
  %loadMem_46460b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46460b = call %struct.Memory* @routine_movl_MINUS0x30__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46460b)
  store %struct.Memory* %call_46460b, %struct.Memory** %MEMORY

  ; Code: callq .break_chain_moves	 RIP: 46460e	 Bytes: 5
  %loadMem1_46460e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46460e = call %struct.Memory* @routine_callq_.break_chain_moves(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46460e, i64 -10366, i64 5, i64 5)
  store %struct.Memory* %call1_46460e, %struct.Memory** %MEMORY

  %loadMem2_46460e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46460e = load i64, i64* %3
  %call2_46460e = call %struct.Memory* @sub_461d90.break_chain_moves(%struct.State* %0, i64  %loadPC_46460e, %struct.Memory* %loadMem2_46460e)
  store %struct.Memory* %call2_46460e, %struct.Memory** %MEMORY

  ; Code: leaq -0x218(%rbp), %rsi	 RIP: 464613	 Bytes: 7
  %loadMem_464613 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464613 = call %struct.Memory* @routine_leaq_MINUS0x218__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464613)
  store %struct.Memory* %call_464613, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %edi	 RIP: 46461a	 Bytes: 3
  %loadMem_46461a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46461a = call %struct.Memory* @routine_movl_MINUS0x30__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46461a)
  store %struct.Memory* %call_46461a, %struct.Memory** %MEMORY

  ; Code: callq .break_chain2_efficient_moves	 RIP: 46461d	 Bytes: 5
  %loadMem1_46461d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46461d = call %struct.Memory* @routine_callq_.break_chain2_efficient_moves(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46461d, i64 9107, i64 5, i64 5)
  store %struct.Memory* %call1_46461d, %struct.Memory** %MEMORY

  %loadMem2_46461d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46461d = load i64, i64* %3
  %call2_46461d = call %struct.Memory* @sub_4669b0.break_chain2_efficient_moves(%struct.State* %0, i64  %loadPC_46461d, %struct.Memory* %loadMem2_46461d)
  store %struct.Memory* %call2_46461d, %struct.Memory** %MEMORY

  ; Code: leaq -0x218(%rbp), %rcx	 RIP: 464622	 Bytes: 7
  %loadMem_464622 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464622 = call %struct.Memory* @routine_leaq_MINUS0x218__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464622)
  store %struct.Memory* %call_464622, %struct.Memory** %MEMORY

  ; Code: leaq -0x58(%rbp), %rsi	 RIP: 464629	 Bytes: 4
  %loadMem_464629 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464629 = call %struct.Memory* @routine_leaq_MINUS0x58__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464629)
  store %struct.Memory* %call_464629, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %edi	 RIP: 46462d	 Bytes: 3
  %loadMem_46462d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46462d = call %struct.Memory* @routine_movl_MINUS0x30__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46462d)
  store %struct.Memory* %call_46462d, %struct.Memory** %MEMORY

  ; Code: movl -0x50(%rbp), %edx	 RIP: 464630	 Bytes: 3
  %loadMem_464630 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464630 = call %struct.Memory* @routine_movl_MINUS0x50__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464630)
  store %struct.Memory* %call_464630, %struct.Memory** %MEMORY

  ; Code: movl -0x44(%rbp), %r8d	 RIP: 464633	 Bytes: 4
  %loadMem_464633 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464633 = call %struct.Memory* @routine_movl_MINUS0x44__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464633)
  store %struct.Memory* %call_464633, %struct.Memory** %MEMORY

  ; Code: callq .propose_edge_moves	 RIP: 464637	 Bytes: 5
  %loadMem1_464637 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_464637 = call %struct.Memory* @routine_callq_.propose_edge_moves(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_464637, i64 -8071, i64 5, i64 5)
  store %struct.Memory* %call1_464637, %struct.Memory** %MEMORY

  %loadMem2_464637 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_464637 = load i64, i64* %3
  %call2_464637 = call %struct.Memory* @sub_4626b0.propose_edge_moves(%struct.State* %0, i64  %loadPC_464637, %struct.Memory* %loadMem2_464637)
  store %struct.Memory* %call2_464637, %struct.Memory** %MEMORY

  ; Code: leaq -0x218(%rbp), %rsi	 RIP: 46463c	 Bytes: 7
  %loadMem_46463c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46463c = call %struct.Memory* @routine_leaq_MINUS0x218__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46463c)
  store %struct.Memory* %call_46463c, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %edi	 RIP: 464643	 Bytes: 3
  %loadMem_464643 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464643 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464643)
  store %struct.Memory* %call_464643, %struct.Memory** %MEMORY

  ; Code: callq .edge_clamp_moves	 RIP: 464646	 Bytes: 5
  %loadMem1_464646 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_464646 = call %struct.Memory* @routine_callq_.edge_clamp_moves(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_464646, i64 12362, i64 5, i64 5)
  store %struct.Memory* %call1_464646, %struct.Memory** %MEMORY

  %loadMem2_464646 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_464646 = load i64, i64* %3
  %call2_464646 = call %struct.Memory* @sub_467690.edge_clamp_moves(%struct.State* %0, i64  %loadPC_464646, %struct.Memory* %loadMem2_464646)
  store %struct.Memory* %call2_464646, %struct.Memory** %MEMORY

  ; Code: movl 0xb54ce4, %eax	 RIP: 46464b	 Bytes: 7
  %loadMem_46464b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46464b = call %struct.Memory* @routine_movl_0xb54ce4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46464b)
  store %struct.Memory* %call_46464b, %struct.Memory** %MEMORY

  ; Code: cmpl 0xb8b854, %eax	 RIP: 464652	 Bytes: 7
  %loadMem_464652 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464652 = call %struct.Memory* @routine_cmpl_0xb8b854___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464652)
  store %struct.Memory* %call_464652, %struct.Memory** %MEMORY

  ; Code: jg .L_4646ab	 RIP: 464659	 Bytes: 6
  %loadMem_464659 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464659 = call %struct.Memory* @routine_jg_.L_4646ab(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464659, i8* %BRANCH_TAKEN, i64 82, i64 6, i64 6)
  store %struct.Memory* %call_464659, %struct.Memory** %MEMORY

  %loadBr_464659 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_464659 = icmp eq i8 %loadBr_464659, 1
  br i1 %cmpBr_464659, label %block_.L_4646ab, label %block_46465f

block_46465f:
  ; Code: movl $0x0, -0x228(%rbp)	 RIP: 46465f	 Bytes: 10
  %loadMem_46465f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46465f = call %struct.Memory* @routine_movl__0x0__MINUS0x228__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46465f)
  store %struct.Memory* %call_46465f, %struct.Memory** %MEMORY

  ; Code: .L_464669:	 RIP: 464669	 Bytes: 0
  br label %block_.L_464669
block_.L_464669:

  ; Code: movl -0x228(%rbp), %eax	 RIP: 464669	 Bytes: 6
  %loadMem_464669 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464669 = call %struct.Memory* @routine_movl_MINUS0x228__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464669)
  store %struct.Memory* %call_464669, %struct.Memory** %MEMORY

  ; Code: cmpl -0x50(%rbp), %eax	 RIP: 46466f	 Bytes: 3
  %loadMem_46466f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46466f = call %struct.Memory* @routine_cmpl_MINUS0x50__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46466f)
  store %struct.Memory* %call_46466f, %struct.Memory** %MEMORY

  ; Code: jge .L_4646a6	 RIP: 464672	 Bytes: 6
  %loadMem_464672 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464672 = call %struct.Memory* @routine_jge_.L_4646a6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464672, i8* %BRANCH_TAKEN, i64 52, i64 6, i64 6)
  store %struct.Memory* %call_464672, %struct.Memory** %MEMORY

  %loadBr_464672 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_464672 = icmp eq i8 %loadBr_464672, 1
  br i1 %cmpBr_464672, label %block_.L_4646a6, label %block_464678

block_464678:
  ; Code: leaq -0x218(%rbp), %rdx	 RIP: 464678	 Bytes: 7
  %loadMem_464678 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464678 = call %struct.Memory* @routine_leaq_MINUS0x218__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464678)
  store %struct.Memory* %call_464678, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %edi	 RIP: 46467f	 Bytes: 3
  %loadMem_46467f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46467f = call %struct.Memory* @routine_movl_MINUS0x30__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46467f)
  store %struct.Memory* %call_46467f, %struct.Memory** %MEMORY

  ; Code: movslq -0x228(%rbp), %rax	 RIP: 464682	 Bytes: 7
  %loadMem_464682 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464682 = call %struct.Memory* @routine_movslq_MINUS0x228__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464682)
  store %struct.Memory* %call_464682, %struct.Memory** %MEMORY

  ; Code: movl -0x58(%rbp,%rax,4), %esi	 RIP: 464689	 Bytes: 4
  %loadMem_464689 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464689 = call %struct.Memory* @routine_movl_MINUS0x58__rbp__rax_4____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464689)
  store %struct.Memory* %call_464689, %struct.Memory** %MEMORY

  ; Code: callq .special_rescue_moves	 RIP: 46468d	 Bytes: 5
  %loadMem1_46468d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46468d = call %struct.Memory* @routine_callq_.special_rescue_moves(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46468d, i64 14915, i64 5, i64 5)
  store %struct.Memory* %call1_46468d, %struct.Memory** %MEMORY

  %loadMem2_46468d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46468d = load i64, i64* %3
  %call2_46468d = call %struct.Memory* @sub_4680d0.special_rescue_moves(%struct.State* %0, i64  %loadPC_46468d, %struct.Memory* %loadMem2_46468d)
  store %struct.Memory* %call2_46468d, %struct.Memory** %MEMORY

  ; Code: movl -0x228(%rbp), %eax	 RIP: 464692	 Bytes: 6
  %loadMem_464692 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464692 = call %struct.Memory* @routine_movl_MINUS0x228__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464692)
  store %struct.Memory* %call_464692, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 464698	 Bytes: 3
  %loadMem_464698 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464698 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464698)
  store %struct.Memory* %call_464698, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x228(%rbp)	 RIP: 46469b	 Bytes: 6
  %loadMem_46469b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46469b = call %struct.Memory* @routine_movl__eax__MINUS0x228__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46469b)
  store %struct.Memory* %call_46469b, %struct.Memory** %MEMORY

  ; Code: jmpq .L_464669	 RIP: 4646a1	 Bytes: 5
  %loadMem_4646a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4646a1 = call %struct.Memory* @routine_jmpq_.L_464669(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4646a1, i64 -56, i64 5)
  store %struct.Memory* %call_4646a1, %struct.Memory** %MEMORY

  br label %block_.L_464669

  ; Code: .L_4646a6:	 RIP: 4646a6	 Bytes: 0
block_.L_4646a6:

  ; Code: jmpq .L_4646ab	 RIP: 4646a6	 Bytes: 5
  %loadMem_4646a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4646a6 = call %struct.Memory* @routine_jmpq_.L_4646ab(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4646a6, i64 5, i64 5)
  store %struct.Memory* %call_4646a6, %struct.Memory** %MEMORY

  br label %block_.L_4646ab

  ; Code: .L_4646ab:	 RIP: 4646ab	 Bytes: 0
block_.L_4646ab:

  ; Code: movl 0xb54ce4, %eax	 RIP: 4646ab	 Bytes: 7
  %loadMem_4646ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4646ab = call %struct.Memory* @routine_movl_0xb54ce4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4646ab)
  store %struct.Memory* %call_4646ab, %struct.Memory** %MEMORY

  ; Code: cmpl 0xb060b8, %eax	 RIP: 4646b2	 Bytes: 7
  %loadMem_4646b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4646b2 = call %struct.Memory* @routine_cmpl_0xb060b8___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4646b2)
  store %struct.Memory* %call_4646b2, %struct.Memory** %MEMORY

  ; Code: jg .L_4646d2	 RIP: 4646b9	 Bytes: 6
  %loadMem_4646b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4646b9 = call %struct.Memory* @routine_jg_.L_4646d2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4646b9, i8* %BRANCH_TAKEN, i64 25, i64 6, i64 6)
  store %struct.Memory* %call_4646b9, %struct.Memory** %MEMORY

  %loadBr_4646b9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4646b9 = icmp eq i8 %loadBr_4646b9, 1
  br i1 %cmpBr_4646b9, label %block_.L_4646d2, label %block_4646bf

block_4646bf:
  ; Code: leaq -0x218(%rbp), %rdx	 RIP: 4646bf	 Bytes: 7
  %loadMem_4646bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4646bf = call %struct.Memory* @routine_leaq_MINUS0x218__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4646bf)
  store %struct.Memory* %call_4646bf, %struct.Memory** %MEMORY

  ; Code: leaq -0x58(%rbp), %rsi	 RIP: 4646c6	 Bytes: 4
  %loadMem_4646c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4646c6 = call %struct.Memory* @routine_leaq_MINUS0x58__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4646c6)
  store %struct.Memory* %call_4646c6, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %edi	 RIP: 4646ca	 Bytes: 3
  %loadMem_4646ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4646ca = call %struct.Memory* @routine_movl_MINUS0x30__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4646ca)
  store %struct.Memory* %call_4646ca, %struct.Memory** %MEMORY

  ; Code: callq .special_rescue2_moves	 RIP: 4646cd	 Bytes: 5
  %loadMem1_4646cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4646cd = call %struct.Memory* @routine_callq_.special_rescue2_moves(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4646cd, i64 19171, i64 5, i64 5)
  store %struct.Memory* %call1_4646cd, %struct.Memory** %MEMORY

  %loadMem2_4646cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4646cd = load i64, i64* %3
  %call2_4646cd = call %struct.Memory* @sub_4691b0.special_rescue2_moves(%struct.State* %0, i64  %loadPC_4646cd, %struct.Memory* %loadMem2_4646cd)
  store %struct.Memory* %call2_4646cd, %struct.Memory** %MEMORY

  ; Code: .L_4646d2:	 RIP: 4646d2	 Bytes: 0
  br label %block_.L_4646d2
block_.L_4646d2:

  ; Code: leaq -0x218(%rbp), %rsi	 RIP: 4646d2	 Bytes: 7
  %loadMem_4646d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4646d2 = call %struct.Memory* @routine_leaq_MINUS0x218__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4646d2)
  store %struct.Memory* %call_4646d2, %struct.Memory** %MEMORY

  ; Code: xorl %r8d, %r8d	 RIP: 4646d9	 Bytes: 3
  %loadMem_4646d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4646d9 = call %struct.Memory* @routine_xorl__r8d___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4646d9)
  store %struct.Memory* %call_4646d9, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %edi	 RIP: 4646dc	 Bytes: 3
  %loadMem_4646dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4646dc = call %struct.Memory* @routine_movl_MINUS0x30__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4646dc)
  store %struct.Memory* %call_4646dc, %struct.Memory** %MEMORY

  ; Code: movl -0x44(%rbp), %edx	 RIP: 4646df	 Bytes: 3
  %loadMem_4646df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4646df = call %struct.Memory* @routine_movl_MINUS0x44__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4646df)
  store %struct.Memory* %call_4646df, %struct.Memory** %MEMORY

  ; Code: movq -0x238(%rbp), %rcx	 RIP: 4646e2	 Bytes: 7
  %loadMem_4646e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4646e2 = call %struct.Memory* @routine_movq_MINUS0x238__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4646e2)
  store %struct.Memory* %call_4646e2, %struct.Memory** %MEMORY

  ; Code: callq .order_moves	 RIP: 4646e9	 Bytes: 5
  %loadMem1_4646e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4646e9 = call %struct.Memory* @routine_callq_.order_moves(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4646e9, i64 -6745, i64 5, i64 5)
  store %struct.Memory* %call1_4646e9, %struct.Memory** %MEMORY

  %loadMem2_4646e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4646e9 = load i64, i64* %3
  %call2_4646e9 = call %struct.Memory* @sub_462c90.order_moves(%struct.State* %0, i64  %loadPC_4646e9, %struct.Memory* %loadMem2_4646e9)
  store %struct.Memory* %call2_4646e9, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x228(%rbp)	 RIP: 4646ee	 Bytes: 10
  %loadMem_4646ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4646ee = call %struct.Memory* @routine_movl__0x0__MINUS0x228__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4646ee)
  store %struct.Memory* %call_4646ee, %struct.Memory** %MEMORY

  ; Code: .L_4646f8:	 RIP: 4646f8	 Bytes: 0
  br label %block_.L_4646f8
block_.L_4646f8:

  ; Code: movl -0x228(%rbp), %eax	 RIP: 4646f8	 Bytes: 6
  %loadMem_4646f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4646f8 = call %struct.Memory* @routine_movl_MINUS0x228__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4646f8)
  store %struct.Memory* %call_4646f8, %struct.Memory** %MEMORY

  ; Code: cmpl -0x88(%rbp), %eax	 RIP: 4646fe	 Bytes: 6
  %loadMem_4646fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4646fe = call %struct.Memory* @routine_cmpl_MINUS0x88__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4646fe)
  store %struct.Memory* %call_4646fe, %struct.Memory** %MEMORY

  ; Code: jge .L_464955	 RIP: 464704	 Bytes: 6
  %loadMem_464704 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464704 = call %struct.Memory* @routine_jge_.L_464955(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464704, i8* %BRANCH_TAKEN, i64 593, i64 6, i64 6)
  store %struct.Memory* %call_464704, %struct.Memory** %MEMORY

  %loadBr_464704 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_464704 = icmp eq i8 %loadBr_464704, 1
  br i1 %cmpBr_464704, label %block_.L_464955, label %block_46470a

block_46470a:
  ; Code: xorl %eax, %eax	 RIP: 46470a	 Bytes: 2
  %loadMem_46470a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46470a = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46470a)
  store %struct.Memory* %call_46470a, %struct.Memory** %MEMORY

  ; Code: movb %al, %cl	 RIP: 46470c	 Bytes: 2
  %loadMem_46470c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46470c = call %struct.Memory* @routine_movb__al___cl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46470c)
  store %struct.Memory* %call_46470c, %struct.Memory** %MEMORY

  ; Code: movslq -0x228(%rbp), %rdx	 RIP: 46470e	 Bytes: 7
  %loadMem_46470e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46470e = call %struct.Memory* @routine_movslq_MINUS0x228__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46470e)
  store %struct.Memory* %call_46470e, %struct.Memory** %MEMORY

  ; Code: movl -0x218(%rbp,%rdx,4), %eax	 RIP: 464715	 Bytes: 7
  %loadMem_464715 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464715 = call %struct.Memory* @routine_movl_MINUS0x218__rbp__rdx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464715)
  store %struct.Memory* %call_464715, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4c(%rbp)	 RIP: 46471c	 Bytes: 3
  %loadMem_46471c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46471c = call %struct.Memory* @routine_movl__eax__MINUS0x4c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46471c)
  store %struct.Memory* %call_46471c, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %edi	 RIP: 46471f	 Bytes: 3
  %loadMem_46471f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46471f = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46471f)
  store %struct.Memory* %call_46471f, %struct.Memory** %MEMORY

  ; Code: movl -0x44(%rbp), %esi	 RIP: 464722	 Bytes: 3
  %loadMem_464722 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464722 = call %struct.Memory* @routine_movl_MINUS0x44__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464722)
  store %struct.Memory* %call_464722, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %eax	 RIP: 464725	 Bytes: 3
  %loadMem_464725 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464725 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464725)
  store %struct.Memory* %call_464725, %struct.Memory** %MEMORY

  ; Code: movl -0x3c(%rbp), %r8d	 RIP: 464728	 Bytes: 4
  %loadMem_464728 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464728 = call %struct.Memory* @routine_movl_MINUS0x3c__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464728)
  store %struct.Memory* %call_464728, %struct.Memory** %MEMORY

  ; Code: movl -0x40(%rbp), %r9d	 RIP: 46472c	 Bytes: 4
  %loadMem_46472c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46472c = call %struct.Memory* @routine_movl_MINUS0x40__rbp____r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46472c)
  store %struct.Memory* %call_46472c, %struct.Memory** %MEMORY

  ; Code: movl 0xb54ce4, %r10d	 RIP: 464730	 Bytes: 8
  %loadMem_464730 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464730 = call %struct.Memory* @routine_movl_0xb54ce4___r10d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464730)
  store %struct.Memory* %call_464730, %struct.Memory** %MEMORY

  ; Code: cmpl 0xb8b850, %r10d	 RIP: 464738	 Bytes: 8
  %loadMem_464738 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464738 = call %struct.Memory* @routine_cmpl_0xb8b850___r10d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464738)
  store %struct.Memory* %call_464738, %struct.Memory** %MEMORY

  ; Code: movl %r9d, -0x304(%rbp)	 RIP: 464740	 Bytes: 7
  %loadMem_464740 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464740 = call %struct.Memory* @routine_movl__r9d__MINUS0x304__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464740)
  store %struct.Memory* %call_464740, %struct.Memory** %MEMORY

  ; Code: movl %edi, -0x308(%rbp)	 RIP: 464747	 Bytes: 6
  %loadMem_464747 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464747 = call %struct.Memory* @routine_movl__edi__MINUS0x308__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464747)
  store %struct.Memory* %call_464747, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x30c(%rbp)	 RIP: 46474d	 Bytes: 6
  %loadMem_46474d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46474d = call %struct.Memory* @routine_movl__esi__MINUS0x30c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46474d)
  store %struct.Memory* %call_46474d, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x310(%rbp)	 RIP: 464753	 Bytes: 6
  %loadMem_464753 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464753 = call %struct.Memory* @routine_movl__eax__MINUS0x310__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464753)
  store %struct.Memory* %call_464753, %struct.Memory** %MEMORY

  ; Code: movl %r8d, -0x314(%rbp)	 RIP: 464759	 Bytes: 7
  %loadMem_464759 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464759 = call %struct.Memory* @routine_movl__r8d__MINUS0x314__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464759)
  store %struct.Memory* %call_464759, %struct.Memory** %MEMORY

  ; Code: movb %cl, -0x315(%rbp)	 RIP: 464760	 Bytes: 6
  %loadMem_464760 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464760 = call %struct.Memory* @routine_movb__cl__MINUS0x315__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464760)
  store %struct.Memory* %call_464760, %struct.Memory** %MEMORY

  ; Code: jg .L_46477c	 RIP: 464766	 Bytes: 6
  %loadMem_464766 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464766 = call %struct.Memory* @routine_jg_.L_46477c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464766, i8* %BRANCH_TAKEN, i64 22, i64 6, i64 6)
  store %struct.Memory* %call_464766, %struct.Memory** %MEMORY

  %loadBr_464766 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_464766 = icmp eq i8 %loadBr_464766, 1
  br i1 %cmpBr_464766, label %block_.L_46477c, label %block_46476c

block_46476c:
  ; Code: cmpl $0x0, -0x224(%rbp)	 RIP: 46476c	 Bytes: 7
  %loadMem_46476c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46476c = call %struct.Memory* @routine_cmpl__0x0__MINUS0x224__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46476c)
  store %struct.Memory* %call_46476c, %struct.Memory** %MEMORY

  ; Code: sete %al	 RIP: 464773	 Bytes: 3
  %loadMem_464773 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464773 = call %struct.Memory* @routine_sete__al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464773)
  store %struct.Memory* %call_464773, %struct.Memory** %MEMORY

  ; Code: movb %al, -0x315(%rbp)	 RIP: 464776	 Bytes: 6
  %loadMem_464776 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464776 = call %struct.Memory* @routine_movb__al__MINUS0x315__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464776)
  store %struct.Memory* %call_464776, %struct.Memory** %MEMORY

  ; Code: .L_46477c:	 RIP: 46477c	 Bytes: 0
  br label %block_.L_46477c
block_.L_46477c:

  ; Code: movb -0x315(%rbp), %al	 RIP: 46477c	 Bytes: 6
  %loadMem_46477c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46477c = call %struct.Memory* @routine_movb_MINUS0x315__rbp____al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46477c)
  store %struct.Memory* %call_46477c, %struct.Memory** %MEMORY

  ; Code: movq $0x57fd49, %rdx	 RIP: 464782	 Bytes: 10
  %loadMem_464782 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464782 = call %struct.Memory* @routine_movq__0x57fd49___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464782)
  store %struct.Memory* %call_464782, %struct.Memory** %MEMORY

  ; Code: leaq -0x240(%rbp), %rcx	 RIP: 46478c	 Bytes: 7
  %loadMem_46478c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46478c = call %struct.Memory* @routine_leaq_MINUS0x240__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46478c)
  store %struct.Memory* %call_46478c, %struct.Memory** %MEMORY

  ; Code: leaq -0x244(%rbp), %rsi	 RIP: 464793	 Bytes: 7
  %loadMem_464793 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464793 = call %struct.Memory* @routine_leaq_MINUS0x244__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464793)
  store %struct.Memory* %call_464793, %struct.Memory** %MEMORY

  ; Code: leaq -0x248(%rbp), %rdi	 RIP: 46479a	 Bytes: 7
  %loadMem_46479a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46479a = call %struct.Memory* @routine_leaq_MINUS0x248__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46479a)
  store %struct.Memory* %call_46479a, %struct.Memory** %MEMORY

  ; Code: andb $0x1, %al	 RIP: 4647a1	 Bytes: 2
  %loadMem_4647a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4647a1 = call %struct.Memory* @routine_andb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4647a1)
  store %struct.Memory* %call_4647a1, %struct.Memory** %MEMORY

  ; Code: movzbl %al, %r8d	 RIP: 4647a3	 Bytes: 4
  %loadMem_4647a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4647a3 = call %struct.Memory* @routine_movzbl__al___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4647a3)
  store %struct.Memory* %call_4647a3, %struct.Memory** %MEMORY

  ; Code: movl -0x308(%rbp), %r9d	 RIP: 4647a7	 Bytes: 7
  %loadMem_4647a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4647a7 = call %struct.Memory* @routine_movl_MINUS0x308__rbp____r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4647a7)
  store %struct.Memory* %call_4647a7, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x320(%rbp)	 RIP: 4647ae	 Bytes: 7
  %loadMem_4647ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4647ae = call %struct.Memory* @routine_movq__rdi__MINUS0x320__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4647ae)
  store %struct.Memory* %call_4647ae, %struct.Memory** %MEMORY

  ; Code: movl %r9d, %edi	 RIP: 4647b5	 Bytes: 3
  %loadMem_4647b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4647b5 = call %struct.Memory* @routine_movl__r9d___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4647b5)
  store %struct.Memory* %call_4647b5, %struct.Memory** %MEMORY

  ; Code: movl -0x30c(%rbp), %r10d	 RIP: 4647b8	 Bytes: 7
  %loadMem_4647b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4647b8 = call %struct.Memory* @routine_movl_MINUS0x30c__rbp____r10d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4647b8)
  store %struct.Memory* %call_4647b8, %struct.Memory** %MEMORY

  ; Code: movq %rsi, -0x328(%rbp)	 RIP: 4647bf	 Bytes: 7
  %loadMem_4647bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4647bf = call %struct.Memory* @routine_movq__rsi__MINUS0x328__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4647bf)
  store %struct.Memory* %call_4647bf, %struct.Memory** %MEMORY

  ; Code: movl %r10d, %esi	 RIP: 4647c6	 Bytes: 3
  %loadMem_4647c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4647c6 = call %struct.Memory* @routine_movl__r10d___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4647c6)
  store %struct.Memory* %call_4647c6, %struct.Memory** %MEMORY

  ; Code: movl -0x310(%rbp), %r11d	 RIP: 4647c9	 Bytes: 7
  %loadMem_4647c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4647c9 = call %struct.Memory* @routine_movl_MINUS0x310__rbp____r11d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4647c9)
  store %struct.Memory* %call_4647c9, %struct.Memory** %MEMORY

  ; Code: movq %rcx, -0x330(%rbp)	 RIP: 4647d0	 Bytes: 7
  %loadMem_4647d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4647d0 = call %struct.Memory* @routine_movq__rcx__MINUS0x330__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4647d0)
  store %struct.Memory* %call_4647d0, %struct.Memory** %MEMORY

  ; Code: movl %r11d, %ecx	 RIP: 4647d7	 Bytes: 3
  %loadMem_4647d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4647d7 = call %struct.Memory* @routine_movl__r11d___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4647d7)
  store %struct.Memory* %call_4647d7, %struct.Memory** %MEMORY

  ; Code: movl -0x314(%rbp), %ebx	 RIP: 4647da	 Bytes: 6
  %loadMem_4647da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4647da = call %struct.Memory* @routine_movl_MINUS0x314__rbp____ebx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4647da)
  store %struct.Memory* %call_4647da, %struct.Memory** %MEMORY

  ; Code: movl %r8d, -0x334(%rbp)	 RIP: 4647e0	 Bytes: 7
  %loadMem_4647e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4647e0 = call %struct.Memory* @routine_movl__r8d__MINUS0x334__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4647e0)
  store %struct.Memory* %call_4647e0, %struct.Memory** %MEMORY

  ; Code: movl %ebx, %r8d	 RIP: 4647e7	 Bytes: 3
  %loadMem_4647e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4647e7 = call %struct.Memory* @routine_movl__ebx___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4647e7)
  store %struct.Memory* %call_4647e7, %struct.Memory** %MEMORY

  ; Code: movl -0x304(%rbp), %r9d	 RIP: 4647ea	 Bytes: 7
  %loadMem_4647ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4647ea = call %struct.Memory* @routine_movl_MINUS0x304__rbp____r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4647ea)
  store %struct.Memory* %call_4647ea, %struct.Memory** %MEMORY

  ; Code: movq -0x330(%rbp), %r14	 RIP: 4647f1	 Bytes: 7
  %loadMem_4647f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4647f1 = call %struct.Memory* @routine_movq_MINUS0x330__rbp____r14(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4647f1)
  store %struct.Memory* %call_4647f1, %struct.Memory** %MEMORY

  ; Code: movq %r14, (%rsp)	 RIP: 4647f8	 Bytes: 4
  %loadMem_4647f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4647f8 = call %struct.Memory* @routine_movq__r14____rsp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4647f8)
  store %struct.Memory* %call_4647f8, %struct.Memory** %MEMORY

  ; Code: movq -0x328(%rbp), %r15	 RIP: 4647fc	 Bytes: 7
  %loadMem_4647fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4647fc = call %struct.Memory* @routine_movq_MINUS0x328__rbp____r15(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4647fc)
  store %struct.Memory* %call_4647fc, %struct.Memory** %MEMORY

  ; Code: movq %r15, 0x8(%rsp)	 RIP: 464803	 Bytes: 5
  %loadMem_464803 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464803 = call %struct.Memory* @routine_movq__r15__0x8__rsp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464803)
  store %struct.Memory* %call_464803, %struct.Memory** %MEMORY

  ; Code: movq -0x320(%rbp), %r12	 RIP: 464808	 Bytes: 7
  %loadMem_464808 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464808 = call %struct.Memory* @routine_movq_MINUS0x320__rbp____r12(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464808)
  store %struct.Memory* %call_464808, %struct.Memory** %MEMORY

  ; Code: movq %r12, 0x10(%rsp)	 RIP: 46480f	 Bytes: 5
  %loadMem_46480f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46480f = call %struct.Memory* @routine_movq__r12__0x10__rsp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46480f)
  store %struct.Memory* %call_46480f, %struct.Memory** %MEMORY

  ; Code: movl -0x334(%rbp), %r13d	 RIP: 464814	 Bytes: 7
  %loadMem_464814 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464814 = call %struct.Memory* @routine_movl_MINUS0x334__rbp____r13d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464814)
  store %struct.Memory* %call_464814, %struct.Memory** %MEMORY

  ; Code: movl %r13d, 0x18(%rsp)	 RIP: 46481b	 Bytes: 5
  %loadMem_46481b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46481b = call %struct.Memory* @routine_movl__r13d__0x18__rsp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46481b)
  store %struct.Memory* %call_46481b, %struct.Memory** %MEMORY

  ; Code: callq .komaster_trymove	 RIP: 464820	 Bytes: 5
  %loadMem1_464820 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_464820 = call %struct.Memory* @routine_callq_.komaster_trymove(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_464820, i64 -350768, i64 5, i64 5)
  store %struct.Memory* %call1_464820, %struct.Memory** %MEMORY

  %loadMem2_464820 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_464820 = load i64, i64* %3
  %call2_464820 = call %struct.Memory* @sub_40edf0.komaster_trymove(%struct.State* %0, i64  %loadPC_464820, %struct.Memory* %loadMem2_464820)
  store %struct.Memory* %call2_464820, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 464825	 Bytes: 3
  %loadMem_464825 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464825 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464825)
  store %struct.Memory* %call_464825, %struct.Memory** %MEMORY

  ; Code: je .L_46493c	 RIP: 464828	 Bytes: 6
  %loadMem_464828 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464828 = call %struct.Memory* @routine_je_.L_46493c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464828, i8* %BRANCH_TAKEN, i64 276, i64 6, i64 6)
  store %struct.Memory* %call_464828, %struct.Memory** %MEMORY

  %loadBr_464828 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_464828 = icmp eq i8 %loadBr_464828, 1
  br i1 %cmpBr_464828, label %block_.L_46493c, label %block_46482e

block_46482e:
  ; Code: cmpl $0x0, -0x248(%rbp)	 RIP: 46482e	 Bytes: 7
  %loadMem_46482e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46482e = call %struct.Memory* @routine_cmpl__0x0__MINUS0x248__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46482e)
  store %struct.Memory* %call_46482e, %struct.Memory** %MEMORY

  ; Code: jne .L_4648fe	 RIP: 464835	 Bytes: 6
  %loadMem_464835 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464835 = call %struct.Memory* @routine_jne_.L_4648fe(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464835, i8* %BRANCH_TAKEN, i64 201, i64 6, i64 6)
  store %struct.Memory* %call_464835, %struct.Memory** %MEMORY

  %loadBr_464835 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_464835 = icmp eq i8 %loadBr_464835, 1
  br i1 %cmpBr_464835, label %block_.L_4648fe, label %block_46483b

block_46483b:
  ; Code: xorl %eax, %eax	 RIP: 46483b	 Bytes: 2
  %loadMem_46483b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46483b = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46483b)
  store %struct.Memory* %call_46483b, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 46483d	 Bytes: 2
  %loadMem_46483d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46483d = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46483d)
  store %struct.Memory* %call_46483d, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %edi	 RIP: 46483f	 Bytes: 3
  %loadMem_46483f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46483f = call %struct.Memory* @routine_movl_MINUS0x30__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46483f)
  store %struct.Memory* %call_46483f, %struct.Memory** %MEMORY

  ; Code: movl -0x240(%rbp), %edx	 RIP: 464842	 Bytes: 6
  %loadMem_464842 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464842 = call %struct.Memory* @routine_movl_MINUS0x240__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464842)
  store %struct.Memory* %call_464842, %struct.Memory** %MEMORY

  ; Code: movl -0x244(%rbp), %ecx	 RIP: 464848	 Bytes: 6
  %loadMem_464848 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464848 = call %struct.Memory* @routine_movl_MINUS0x244__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464848)
  store %struct.Memory* %call_464848, %struct.Memory** %MEMORY

  ; Code: callq .do_attack	 RIP: 46484e	 Bytes: 5
  %loadMem1_46484e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46484e = call %struct.Memory* @routine_callq_.do_attack(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46484e, i64 -27502, i64 5, i64 5)
  store %struct.Memory* %call1_46484e, %struct.Memory** %MEMORY

  %loadMem2_46484e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46484e = load i64, i64* %3
  %call2_46484e = call %struct.Memory* @sub_45dce0.do_attack(%struct.State* %0, i64  %loadPC_46484e, %struct.Memory* %loadMem2_46484e)
  store %struct.Memory* %call2_46484e, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x24c(%rbp)	 RIP: 464853	 Bytes: 6
  %loadMem_464853 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464853 = call %struct.Memory* @routine_movl__eax__MINUS0x24c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464853)
  store %struct.Memory* %call_464853, %struct.Memory** %MEMORY

  ; Code: callq .popgo	 RIP: 464859	 Bytes: 5
  %loadMem1_464859 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_464859 = call %struct.Memory* @routine_callq_.popgo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_464859, i64 -355065, i64 5, i64 5)
  store %struct.Memory* %call1_464859, %struct.Memory** %MEMORY

  %loadMem2_464859 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_464859 = load i64, i64* %3
  %call2_464859 = call %struct.Memory* @sub_40dd60.popgo(%struct.State* %0, i64  %loadPC_464859, %struct.Memory* %loadMem2_464859)
  store %struct.Memory* %call2_464859, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0x24c(%rbp)	 RIP: 46485e	 Bytes: 7
  %loadMem_46485e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46485e = call %struct.Memory* @routine_cmpl__0x0__MINUS0x24c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46485e)
  store %struct.Memory* %call_46485e, %struct.Memory** %MEMORY

  ; Code: jne .L_4648be	 RIP: 464865	 Bytes: 6
  %loadMem_464865 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464865 = call %struct.Memory* @routine_jne_.L_4648be(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464865, i8* %BRANCH_TAKEN, i64 89, i64 6, i64 6)
  store %struct.Memory* %call_464865, %struct.Memory** %MEMORY

  %loadBr_464865 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_464865 = icmp eq i8 %loadBr_464865, 1
  br i1 %cmpBr_464865, label %block_.L_4648be, label %block_46486b

block_46486b:
  ; Code: cmpq $0x0, -0x38(%rbp)	 RIP: 46486b	 Bytes: 5
  %loadMem_46486b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46486b = call %struct.Memory* @routine_cmpq__0x0__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46486b)
  store %struct.Memory* %call_46486b, %struct.Memory** %MEMORY

  ; Code: je .L_46487f	 RIP: 464870	 Bytes: 6
  %loadMem_464870 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464870 = call %struct.Memory* @routine_je_.L_46487f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464870, i8* %BRANCH_TAKEN, i64 15, i64 6, i64 6)
  store %struct.Memory* %call_464870, %struct.Memory** %MEMORY

  %loadBr_464870 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_464870 = icmp eq i8 %loadBr_464870, 1
  br i1 %cmpBr_464870, label %block_.L_46487f, label %block_464876

block_464876:
  ; Code: movl -0x4c(%rbp), %eax	 RIP: 464876	 Bytes: 3
  %loadMem_464876 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464876 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464876)
  store %struct.Memory* %call_464876, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rcx	 RIP: 464879	 Bytes: 4
  %loadMem_464879 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464879 = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464879)
  store %struct.Memory* %call_464879, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx)	 RIP: 46487d	 Bytes: 2
  %loadMem_46487d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46487d = call %struct.Memory* @routine_movl__eax____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46487d)
  store %struct.Memory* %call_46487d, %struct.Memory** %MEMORY

  ; Code: .L_46487f:	 RIP: 46487f	 Bytes: 0
  br label %block_.L_46487f
block_.L_46487f:

  ; Code: cmpq $0x0, 0xab0ef8	 RIP: 46487f	 Bytes: 9
  %loadMem_46487f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46487f = call %struct.Memory* @routine_cmpq__0x0__0xab0ef8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46487f)
  store %struct.Memory* %call_46487f, %struct.Memory** %MEMORY

  ; Code: je .L_4648b2	 RIP: 464888	 Bytes: 6
  %loadMem_464888 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464888 = call %struct.Memory* @routine_je_.L_4648b2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464888, i8* %BRANCH_TAKEN, i64 42, i64 6, i64 6)
  store %struct.Memory* %call_464888, %struct.Memory** %MEMORY

  %loadBr_464888 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_464888 = icmp eq i8 %loadBr_464888, 1
  br i1 %cmpBr_464888, label %block_.L_4648b2, label %block_46488e

block_46488e:
  ; Code: movl $0x5, %ecx	 RIP: 46488e	 Bytes: 5
  %loadMem_46488e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46488e = call %struct.Memory* @routine_movl__0x5___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46488e)
  store %struct.Memory* %call_46488e, %struct.Memory** %MEMORY

  ; Code: movq $0x57fc87, %r8	 RIP: 464893	 Bytes: 10
  %loadMem_464893 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464893 = call %struct.Memory* @routine_movq__0x57fc87___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464893)
  store %struct.Memory* %call_464893, %struct.Memory** %MEMORY

  ; Code: movq -0x238(%rbp), %rdi	 RIP: 46489d	 Bytes: 7
  %loadMem_46489d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46489d = call %struct.Memory* @routine_movq_MINUS0x238__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46489d)
  store %struct.Memory* %call_46489d, %struct.Memory** %MEMORY

  ; Code: movl -0x23c(%rbp), %esi	 RIP: 4648a4	 Bytes: 6
  %loadMem_4648a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4648a4 = call %struct.Memory* @routine_movl_MINUS0x23c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4648a4)
  store %struct.Memory* %call_4648a4, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %edx	 RIP: 4648aa	 Bytes: 3
  %loadMem_4648aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4648aa = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4648aa)
  store %struct.Memory* %call_4648aa, %struct.Memory** %MEMORY

  ; Code: callq .sgf_trace	 RIP: 4648ad	 Bytes: 5
  %loadMem1_4648ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4648ad = call %struct.Memory* @routine_callq_.sgf_trace(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4648ad, i64 -313581, i64 5, i64 5)
  store %struct.Memory* %call1_4648ad, %struct.Memory** %MEMORY

  %loadMem2_4648ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4648ad = load i64, i64* %3
  %call2_4648ad = call %struct.Memory* @sub_417fc0.sgf_trace(%struct.State* %0, i64  %loadPC_4648ad, %struct.Memory* %loadMem2_4648ad)
  store %struct.Memory* %call2_4648ad, %struct.Memory** %MEMORY

  ; Code: .L_4648b2:	 RIP: 4648b2	 Bytes: 0
  br label %block_.L_4648b2
block_.L_4648b2:

  ; Code: movl $0x5, -0x2c(%rbp)	 RIP: 4648b2	 Bytes: 7
  %loadMem_4648b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4648b2 = call %struct.Memory* @routine_movl__0x5__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4648b2)
  store %struct.Memory* %call_4648b2, %struct.Memory** %MEMORY

  ; Code: jmpq .L_465536	 RIP: 4648b9	 Bytes: 5
  %loadMem_4648b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4648b9 = call %struct.Memory* @routine_jmpq_.L_465536(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4648b9, i64 3197, i64 5)
  store %struct.Memory* %call_4648b9, %struct.Memory** %MEMORY

  br label %block_.L_465536

  ; Code: .L_4648be:	 RIP: 4648be	 Bytes: 0
block_.L_4648be:

  ; Code: movl $0x5, %eax	 RIP: 4648be	 Bytes: 5
  %loadMem_4648be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4648be = call %struct.Memory* @routine_movl__0x5___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4648be)
  store %struct.Memory* %call_4648be, %struct.Memory** %MEMORY

  ; Code: subl -0x24c(%rbp), %eax	 RIP: 4648c3	 Bytes: 6
  %loadMem_4648c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4648c3 = call %struct.Memory* @routine_subl_MINUS0x24c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4648c3)
  store %struct.Memory* %call_4648c3, %struct.Memory** %MEMORY

  ; Code: cmpl -0x224(%rbp), %eax	 RIP: 4648c9	 Bytes: 6
  %loadMem_4648c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4648c9 = call %struct.Memory* @routine_cmpl_MINUS0x224__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4648c9)
  store %struct.Memory* %call_4648c9, %struct.Memory** %MEMORY

  ; Code: jle .L_4648ef	 RIP: 4648cf	 Bytes: 6
  %loadMem_4648cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4648cf = call %struct.Memory* @routine_jle_.L_4648ef(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4648cf, i8* %BRANCH_TAKEN, i64 32, i64 6, i64 6)
  store %struct.Memory* %call_4648cf, %struct.Memory** %MEMORY

  %loadBr_4648cf = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4648cf = icmp eq i8 %loadBr_4648cf, 1
  br i1 %cmpBr_4648cf, label %block_.L_4648ef, label %block_4648d5

block_4648d5:
  ; Code: movl $0x5, %eax	 RIP: 4648d5	 Bytes: 5
  %loadMem_4648d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4648d5 = call %struct.Memory* @routine_movl__0x5___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4648d5)
  store %struct.Memory* %call_4648d5, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %ecx	 RIP: 4648da	 Bytes: 3
  %loadMem_4648da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4648da = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4648da)
  store %struct.Memory* %call_4648da, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x220(%rbp)	 RIP: 4648dd	 Bytes: 6
  %loadMem_4648dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4648dd = call %struct.Memory* @routine_movl__ecx__MINUS0x220__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4648dd)
  store %struct.Memory* %call_4648dd, %struct.Memory** %MEMORY

  ; Code: subl -0x24c(%rbp), %eax	 RIP: 4648e3	 Bytes: 6
  %loadMem_4648e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4648e3 = call %struct.Memory* @routine_subl_MINUS0x24c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4648e3)
  store %struct.Memory* %call_4648e3, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x224(%rbp)	 RIP: 4648e9	 Bytes: 6
  %loadMem_4648e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4648e9 = call %struct.Memory* @routine_movl__eax__MINUS0x224__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4648e9)
  store %struct.Memory* %call_4648e9, %struct.Memory** %MEMORY

  ; Code: .L_4648ef:	 RIP: 4648ef	 Bytes: 0
  br label %block_.L_4648ef
block_.L_4648ef:

  ; Code: jmpq .L_4648f4	 RIP: 4648ef	 Bytes: 5
  %loadMem_4648ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4648ef = call %struct.Memory* @routine_jmpq_.L_4648f4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4648ef, i64 5, i64 5)
  store %struct.Memory* %call_4648ef, %struct.Memory** %MEMORY

  br label %block_.L_4648f4

  ; Code: .L_4648f4:	 RIP: 4648f4	 Bytes: 0
block_.L_4648f4:

  ; Code: jmpq .L_4648f9	 RIP: 4648f4	 Bytes: 5
  %loadMem_4648f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4648f4 = call %struct.Memory* @routine_jmpq_.L_4648f9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4648f4, i64 5, i64 5)
  store %struct.Memory* %call_4648f4, %struct.Memory** %MEMORY

  br label %block_.L_4648f9

  ; Code: .L_4648f9:	 RIP: 4648f9	 Bytes: 0
block_.L_4648f9:

  ; Code: jmpq .L_464937	 RIP: 4648f9	 Bytes: 5
  %loadMem_4648f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4648f9 = call %struct.Memory* @routine_jmpq_.L_464937(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4648f9, i64 62, i64 5)
  store %struct.Memory* %call_4648f9, %struct.Memory** %MEMORY

  br label %block_.L_464937

  ; Code: .L_4648fe:	 RIP: 4648fe	 Bytes: 0
block_.L_4648fe:

  ; Code: xorl %eax, %eax	 RIP: 4648fe	 Bytes: 2
  %loadMem_4648fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4648fe = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4648fe)
  store %struct.Memory* %call_4648fe, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 464900	 Bytes: 2
  %loadMem_464900 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464900 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464900)
  store %struct.Memory* %call_464900, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %edi	 RIP: 464902	 Bytes: 3
  %loadMem_464902 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464902 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464902)
  store %struct.Memory* %call_464902, %struct.Memory** %MEMORY

  ; Code: movl -0x240(%rbp), %edx	 RIP: 464905	 Bytes: 6
  %loadMem_464905 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464905 = call %struct.Memory* @routine_movl_MINUS0x240__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464905)
  store %struct.Memory* %call_464905, %struct.Memory** %MEMORY

  ; Code: movl -0x244(%rbp), %ecx	 RIP: 46490b	 Bytes: 6
  %loadMem_46490b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46490b = call %struct.Memory* @routine_movl_MINUS0x244__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46490b)
  store %struct.Memory* %call_46490b, %struct.Memory** %MEMORY

  ; Code: callq .do_attack	 RIP: 464911	 Bytes: 5
  %loadMem1_464911 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_464911 = call %struct.Memory* @routine_callq_.do_attack(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_464911, i64 -27697, i64 5, i64 5)
  store %struct.Memory* %call1_464911, %struct.Memory** %MEMORY

  %loadMem2_464911 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_464911 = load i64, i64* %3
  %call2_464911 = call %struct.Memory* @sub_45dce0.do_attack(%struct.State* %0, i64  %loadPC_464911, %struct.Memory* %loadMem2_464911)
  store %struct.Memory* %call2_464911, %struct.Memory** %MEMORY

  ; Code: cmpl $0x5, %eax	 RIP: 464916	 Bytes: 3
  %loadMem_464916 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464916 = call %struct.Memory* @routine_cmpl__0x5___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464916)
  store %struct.Memory* %call_464916, %struct.Memory** %MEMORY

  ; Code: je .L_464932	 RIP: 464919	 Bytes: 6
  %loadMem_464919 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464919 = call %struct.Memory* @routine_je_.L_464932(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464919, i8* %BRANCH_TAKEN, i64 25, i64 6, i64 6)
  store %struct.Memory* %call_464919, %struct.Memory** %MEMORY

  %loadBr_464919 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_464919 = icmp eq i8 %loadBr_464919, 1
  br i1 %cmpBr_464919, label %block_.L_464932, label %block_46491f

block_46491f:
  ; Code: movl -0x4c(%rbp), %eax	 RIP: 46491f	 Bytes: 3
  %loadMem_46491f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46491f = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46491f)
  store %struct.Memory* %call_46491f, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x220(%rbp)	 RIP: 464922	 Bytes: 6
  %loadMem_464922 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464922 = call %struct.Memory* @routine_movl__eax__MINUS0x220__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464922)
  store %struct.Memory* %call_464922, %struct.Memory** %MEMORY

  ; Code: movl $0x1, -0x224(%rbp)	 RIP: 464928	 Bytes: 10
  %loadMem_464928 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464928 = call %struct.Memory* @routine_movl__0x1__MINUS0x224__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464928)
  store %struct.Memory* %call_464928, %struct.Memory** %MEMORY

  ; Code: .L_464932:	 RIP: 464932	 Bytes: 0
  br label %block_.L_464932
block_.L_464932:

  ; Code: callq .popgo	 RIP: 464932	 Bytes: 5
  %loadMem1_464932 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_464932 = call %struct.Memory* @routine_callq_.popgo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_464932, i64 -355282, i64 5, i64 5)
  store %struct.Memory* %call1_464932, %struct.Memory** %MEMORY

  %loadMem2_464932 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_464932 = load i64, i64* %3
  %call2_464932 = call %struct.Memory* @sub_40dd60.popgo(%struct.State* %0, i64  %loadPC_464932, %struct.Memory* %loadMem2_464932)
  store %struct.Memory* %call2_464932, %struct.Memory** %MEMORY

  ; Code: .L_464937:	 RIP: 464937	 Bytes: 0
  br label %block_.L_464937
block_.L_464937:

  ; Code: jmpq .L_46493c	 RIP: 464937	 Bytes: 5
  %loadMem_464937 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464937 = call %struct.Memory* @routine_jmpq_.L_46493c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464937, i64 5, i64 5)
  store %struct.Memory* %call_464937, %struct.Memory** %MEMORY

  br label %block_.L_46493c

  ; Code: .L_46493c:	 RIP: 46493c	 Bytes: 0
block_.L_46493c:

  ; Code: jmpq .L_464941	 RIP: 46493c	 Bytes: 5
  %loadMem_46493c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46493c = call %struct.Memory* @routine_jmpq_.L_464941(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46493c, i64 5, i64 5)
  store %struct.Memory* %call_46493c, %struct.Memory** %MEMORY

  br label %block_.L_464941

  ; Code: .L_464941:	 RIP: 464941	 Bytes: 0
block_.L_464941:

  ; Code: movl -0x228(%rbp), %eax	 RIP: 464941	 Bytes: 6
  %loadMem_464941 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464941 = call %struct.Memory* @routine_movl_MINUS0x228__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464941)
  store %struct.Memory* %call_464941, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 464947	 Bytes: 3
  %loadMem_464947 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464947 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464947)
  store %struct.Memory* %call_464947, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x228(%rbp)	 RIP: 46494a	 Bytes: 6
  %loadMem_46494a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46494a = call %struct.Memory* @routine_movl__eax__MINUS0x228__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46494a)
  store %struct.Memory* %call_46494a, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4646f8	 RIP: 464950	 Bytes: 5
  %loadMem_464950 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464950 = call %struct.Memory* @routine_jmpq_.L_4646f8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464950, i64 -600, i64 5)
  store %struct.Memory* %call_464950, %struct.Memory** %MEMORY

  br label %block_.L_4646f8

  ; Code: .L_464955:	 RIP: 464955	 Bytes: 0
block_.L_464955:

  ; Code: movl -0x88(%rbp), %eax	 RIP: 464955	 Bytes: 6
  %loadMem_464955 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464955 = call %struct.Memory* @routine_movl_MINUS0x88__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464955)
  store %struct.Memory* %call_464955, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x21c(%rbp)	 RIP: 46495b	 Bytes: 6
  %loadMem_46495b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46495b = call %struct.Memory* @routine_movl__eax__MINUS0x21c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46495b)
  store %struct.Memory* %call_46495b, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x228(%rbp)	 RIP: 464961	 Bytes: 10
  %loadMem_464961 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464961 = call %struct.Memory* @routine_movl__0x0__MINUS0x228__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464961)
  store %struct.Memory* %call_464961, %struct.Memory** %MEMORY

  ; Code: .L_46496b:	 RIP: 46496b	 Bytes: 0
  br label %block_.L_46496b
block_.L_46496b:

  ; Code: movl -0x228(%rbp), %eax	 RIP: 46496b	 Bytes: 6
  %loadMem_46496b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46496b = call %struct.Memory* @routine_movl_MINUS0x228__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46496b)
  store %struct.Memory* %call_46496b, %struct.Memory** %MEMORY

  ; Code: cmpl -0x50(%rbp), %eax	 RIP: 464971	 Bytes: 3
  %loadMem_464971 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464971 = call %struct.Memory* @routine_cmpl_MINUS0x50__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464971)
  store %struct.Memory* %call_464971, %struct.Memory** %MEMORY

  ; Code: jge .L_464c4f	 RIP: 464974	 Bytes: 6
  %loadMem_464974 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464974 = call %struct.Memory* @routine_jge_.L_464c4f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464974, i8* %BRANCH_TAKEN, i64 731, i64 6, i64 6)
  store %struct.Memory* %call_464974, %struct.Memory** %MEMORY

  %loadBr_464974 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_464974 = icmp eq i8 %loadBr_464974, 1
  br i1 %cmpBr_464974, label %block_.L_464c4f, label %block_46497a

block_46497a:
  ; Code: movslq -0x228(%rbp), %rax	 RIP: 46497a	 Bytes: 7
  %loadMem_46497a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46497a = call %struct.Memory* @routine_movslq_MINUS0x228__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46497a)
  store %struct.Memory* %call_46497a, %struct.Memory** %MEMORY

  ; Code: movl -0x58(%rbp,%rax,4), %edi	 RIP: 464981	 Bytes: 4
  %loadMem_464981 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464981 = call %struct.Memory* @routine_movl_MINUS0x58__rbp__rax_4____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464981)
  store %struct.Memory* %call_464981, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %esi	 RIP: 464985	 Bytes: 3
  %loadMem_464985 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464985 = call %struct.Memory* @routine_movl_MINUS0x48__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464985)
  store %struct.Memory* %call_464985, %struct.Memory** %MEMORY

  ; Code: callq .is_self_atari	 RIP: 464988	 Bytes: 5
  %loadMem1_464988 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_464988 = call %struct.Memory* @routine_callq_.is_self_atari(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_464988, i64 -329448, i64 5, i64 5)
  store %struct.Memory* %call1_464988, %struct.Memory** %MEMORY

  %loadMem2_464988 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_464988 = load i64, i64* %3
  %call2_464988 = call %struct.Memory* @sub_4142a0.is_self_atari(%struct.State* %0, i64  %loadPC_464988, %struct.Memory* %loadMem2_464988)
  store %struct.Memory* %call2_464988, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 46498d	 Bytes: 3
  %loadMem_46498d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46498d = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46498d)
  store %struct.Memory* %call_46498d, %struct.Memory** %MEMORY

  ; Code: je .L_464aeb	 RIP: 464990	 Bytes: 6
  %loadMem_464990 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464990 = call %struct.Memory* @routine_je_.L_464aeb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464990, i8* %BRANCH_TAKEN, i64 347, i64 6, i64 6)
  store %struct.Memory* %call_464990, %struct.Memory** %MEMORY

  %loadBr_464990 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_464990 = icmp eq i8 %loadBr_464990, 1
  br i1 %cmpBr_464990, label %block_.L_464aeb, label %block_464996

block_464996:
  ; Code: movl $0x6, %edx	 RIP: 464996	 Bytes: 5
  %loadMem_464996 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464996 = call %struct.Memory* @routine_movl__0x6___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464996)
  store %struct.Memory* %call_464996, %struct.Memory** %MEMORY

  ; Code: leaq -0x80(%rbp), %rcx	 RIP: 46499b	 Bytes: 4
  %loadMem_46499b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46499b = call %struct.Memory* @routine_leaq_MINUS0x80__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46499b)
  store %struct.Memory* %call_46499b, %struct.Memory** %MEMORY

  ; Code: movslq -0x228(%rbp), %rax	 RIP: 46499f	 Bytes: 7
  %loadMem_46499f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46499f = call %struct.Memory* @routine_movslq_MINUS0x228__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46499f)
  store %struct.Memory* %call_46499f, %struct.Memory** %MEMORY

  ; Code: movl -0x58(%rbp,%rax,4), %edi	 RIP: 4649a6	 Bytes: 4
  %loadMem_4649a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4649a6 = call %struct.Memory* @routine_movl_MINUS0x58__rbp__rax_4____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4649a6)
  store %struct.Memory* %call_4649a6, %struct.Memory** %MEMORY

  ; Code: movl -0x44(%rbp), %esi	 RIP: 4649aa	 Bytes: 3
  %loadMem_4649aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4649aa = call %struct.Memory* @routine_movl_MINUS0x44__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4649aa)
  store %struct.Memory* %call_4649aa, %struct.Memory** %MEMORY

  ; Code: callq .approxlib	 RIP: 4649ad	 Bytes: 5
  %loadMem1_4649ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4649ad = call %struct.Memory* @routine_callq_.approxlib(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4649ad, i64 -340989, i64 5, i64 5)
  store %struct.Memory* %call1_4649ad, %struct.Memory** %MEMORY

  %loadMem2_4649ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4649ad = load i64, i64* %3
  %call2_4649ad = call %struct.Memory* @sub_4115b0.approxlib(%struct.State* %0, i64  %loadPC_4649ad, %struct.Memory* %loadMem2_4649ad)
  store %struct.Memory* %call2_4649ad, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x5c(%rbp)	 RIP: 4649b2	 Bytes: 3
  %loadMem_4649b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4649b2 = call %struct.Memory* @routine_movl__eax__MINUS0x5c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4649b2)
  store %struct.Memory* %call_4649b2, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x22c(%rbp)	 RIP: 4649b5	 Bytes: 10
  %loadMem_4649b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4649b5 = call %struct.Memory* @routine_movl__0x0__MINUS0x22c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4649b5)
  store %struct.Memory* %call_4649b5, %struct.Memory** %MEMORY

  ; Code: .L_4649bf:	 RIP: 4649bf	 Bytes: 0
  br label %block_.L_4649bf
block_.L_4649bf:

  ; Code: movl -0x22c(%rbp), %eax	 RIP: 4649bf	 Bytes: 6
  %loadMem_4649bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4649bf = call %struct.Memory* @routine_movl_MINUS0x22c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4649bf)
  store %struct.Memory* %call_4649bf, %struct.Memory** %MEMORY

  ; Code: cmpl -0x5c(%rbp), %eax	 RIP: 4649c5	 Bytes: 3
  %loadMem_4649c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4649c5 = call %struct.Memory* @routine_cmpl_MINUS0x5c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4649c5)
  store %struct.Memory* %call_4649c5, %struct.Memory** %MEMORY

  ; Code: jge .L_464ae6	 RIP: 4649c8	 Bytes: 6
  %loadMem_4649c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4649c8 = call %struct.Memory* @routine_jge_.L_464ae6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4649c8, i8* %BRANCH_TAKEN, i64 286, i64 6, i64 6)
  store %struct.Memory* %call_4649c8, %struct.Memory** %MEMORY

  %loadBr_4649c8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4649c8 = icmp eq i8 %loadBr_4649c8, 1
  br i1 %cmpBr_4649c8, label %block_.L_464ae6, label %block_4649ce

block_4649ce:
  ; Code: movslq -0x22c(%rbp), %rax	 RIP: 4649ce	 Bytes: 7
  %loadMem_4649ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4649ce = call %struct.Memory* @routine_movslq_MINUS0x22c__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4649ce)
  store %struct.Memory* %call_4649ce, %struct.Memory** %MEMORY

  ; Code: movl -0x80(%rbp,%rax,4), %ecx	 RIP: 4649d5	 Bytes: 4
  %loadMem_4649d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4649d5 = call %struct.Memory* @routine_movl_MINUS0x80__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4649d5)
  store %struct.Memory* %call_4649d5, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x4c(%rbp)	 RIP: 4649d9	 Bytes: 3
  %loadMem_4649d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4649d9 = call %struct.Memory* @routine_movl__ecx__MINUS0x4c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4649d9)
  store %struct.Memory* %call_4649d9, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %edi	 RIP: 4649dc	 Bytes: 3
  %loadMem_4649dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4649dc = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4649dc)
  store %struct.Memory* %call_4649dc, %struct.Memory** %MEMORY

  ; Code: movl -0x44(%rbp), %esi	 RIP: 4649df	 Bytes: 3
  %loadMem_4649df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4649df = call %struct.Memory* @routine_movl_MINUS0x44__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4649df)
  store %struct.Memory* %call_4649df, %struct.Memory** %MEMORY

  ; Code: callq .is_self_atari	 RIP: 4649e2	 Bytes: 5
  %loadMem1_4649e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4649e2 = call %struct.Memory* @routine_callq_.is_self_atari(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4649e2, i64 -329538, i64 5, i64 5)
  store %struct.Memory* %call1_4649e2, %struct.Memory** %MEMORY

  %loadMem2_4649e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4649e2 = load i64, i64* %3
  %call2_4649e2 = call %struct.Memory* @sub_4142a0.is_self_atari(%struct.State* %0, i64  %loadPC_4649e2, %struct.Memory* %loadMem2_4649e2)
  store %struct.Memory* %call2_4649e2, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 4649e7	 Bytes: 3
  %loadMem_4649e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4649e7 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4649e7)
  store %struct.Memory* %call_4649e7, %struct.Memory** %MEMORY

  ; Code: je .L_464a04	 RIP: 4649ea	 Bytes: 6
  %loadMem_4649ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4649ea = call %struct.Memory* @routine_je_.L_464a04(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4649ea, i8* %BRANCH_TAKEN, i64 26, i64 6, i64 6)
  store %struct.Memory* %call_4649ea, %struct.Memory** %MEMORY

  %loadBr_4649ea = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4649ea = icmp eq i8 %loadBr_4649ea, 1
  br i1 %cmpBr_4649ea, label %block_.L_464a04, label %block_4649f0

block_4649f0:
  ; Code: movl -0x4c(%rbp), %edi	 RIP: 4649f0	 Bytes: 3
  %loadMem_4649f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4649f0 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4649f0)
  store %struct.Memory* %call_4649f0, %struct.Memory** %MEMORY

  ; Code: movl -0x44(%rbp), %esi	 RIP: 4649f3	 Bytes: 3
  %loadMem_4649f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4649f3 = call %struct.Memory* @routine_movl_MINUS0x44__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4649f3)
  store %struct.Memory* %call_4649f3, %struct.Memory** %MEMORY

  ; Code: callq .has_neighbor	 RIP: 4649f6	 Bytes: 5
  %loadMem1_4649f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4649f6 = call %struct.Memory* @routine_callq_.has_neighbor(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4649f6, i64 -325542, i64 5, i64 5)
  store %struct.Memory* %call1_4649f6, %struct.Memory** %MEMORY

  %loadMem2_4649f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4649f6 = load i64, i64* %3
  %call2_4649f6 = call %struct.Memory* @sub_415250.has_neighbor(%struct.State* %0, i64  %loadPC_4649f6, %struct.Memory* %loadMem2_4649f6)
  store %struct.Memory* %call2_4649f6, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 4649fb	 Bytes: 3
  %loadMem_4649fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4649fb = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4649fb)
  store %struct.Memory* %call_4649fb, %struct.Memory** %MEMORY

  ; Code: je .L_464acd	 RIP: 4649fe	 Bytes: 6
  %loadMem_4649fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4649fe = call %struct.Memory* @routine_je_.L_464acd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4649fe, i8* %BRANCH_TAKEN, i64 207, i64 6, i64 6)
  store %struct.Memory* %call_4649fe, %struct.Memory** %MEMORY

  %loadBr_4649fe = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4649fe = icmp eq i8 %loadBr_4649fe, 1
  br i1 %cmpBr_4649fe, label %block_.L_464acd, label %block_.L_464a04

  ; Code: .L_464a04:	 RIP: 464a04	 Bytes: 0
block_.L_464a04:

  ; Code: jmpq .L_464a09	 RIP: 464a04	 Bytes: 5
  %loadMem_464a04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464a04 = call %struct.Memory* @routine_jmpq_.L_464a09(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464a04, i64 5, i64 5)
  store %struct.Memory* %call_464a04, %struct.Memory** %MEMORY

  br label %block_.L_464a09

  ; Code: .L_464a09:	 RIP: 464a09	 Bytes: 0
block_.L_464a09:

  ; Code: movl $0x0, -0x250(%rbp)	 RIP: 464a09	 Bytes: 10
  %loadMem_464a09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464a09 = call %struct.Memory* @routine_movl__0x0__MINUS0x250__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464a09)
  store %struct.Memory* %call_464a09, %struct.Memory** %MEMORY

  ; Code: .L_464a13:	 RIP: 464a13	 Bytes: 0
  br label %block_.L_464a13
block_.L_464a13:

  ; Code: movl -0x250(%rbp), %eax	 RIP: 464a13	 Bytes: 6
  %loadMem_464a13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464a13 = call %struct.Memory* @routine_movl_MINUS0x250__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464a13)
  store %struct.Memory* %call_464a13, %struct.Memory** %MEMORY

  ; Code: cmpl -0x88(%rbp), %eax	 RIP: 464a19	 Bytes: 6
  %loadMem_464a19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464a19 = call %struct.Memory* @routine_cmpl_MINUS0x88__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464a19)
  store %struct.Memory* %call_464a19, %struct.Memory** %MEMORY

  ; Code: jge .L_464a72	 RIP: 464a1f	 Bytes: 6
  %loadMem_464a1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464a1f = call %struct.Memory* @routine_jge_.L_464a72(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464a1f, i8* %BRANCH_TAKEN, i64 83, i64 6, i64 6)
  store %struct.Memory* %call_464a1f, %struct.Memory** %MEMORY

  %loadBr_464a1f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_464a1f = icmp eq i8 %loadBr_464a1f, 1
  br i1 %cmpBr_464a1f, label %block_.L_464a72, label %block_464a25

block_464a25:
  ; Code: movslq -0x250(%rbp), %rax	 RIP: 464a25	 Bytes: 7
  %loadMem_464a25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464a25 = call %struct.Memory* @routine_movslq_MINUS0x250__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464a25)
  store %struct.Memory* %call_464a25, %struct.Memory** %MEMORY

  ; Code: movl -0x218(%rbp,%rax,4), %ecx	 RIP: 464a2c	 Bytes: 7
  %loadMem_464a2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464a2c = call %struct.Memory* @routine_movl_MINUS0x218__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464a2c)
  store %struct.Memory* %call_464a2c, %struct.Memory** %MEMORY

  ; Code: cmpl -0x4c(%rbp), %ecx	 RIP: 464a33	 Bytes: 3
  %loadMem_464a33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464a33 = call %struct.Memory* @routine_cmpl_MINUS0x4c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464a33)
  store %struct.Memory* %call_464a33, %struct.Memory** %MEMORY

  ; Code: jne .L_464a59	 RIP: 464a36	 Bytes: 6
  %loadMem_464a36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464a36 = call %struct.Memory* @routine_jne_.L_464a59(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464a36, i8* %BRANCH_TAKEN, i64 35, i64 6, i64 6)
  store %struct.Memory* %call_464a36, %struct.Memory** %MEMORY

  %loadBr_464a36 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_464a36 = icmp eq i8 %loadBr_464a36, 1
  br i1 %cmpBr_464a36, label %block_.L_464a59, label %block_464a3c

block_464a3c:
  ; Code: movslq -0x250(%rbp), %rax	 RIP: 464a3c	 Bytes: 7
  %loadMem_464a3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464a3c = call %struct.Memory* @routine_movslq_MINUS0x250__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464a3c)
  store %struct.Memory* %call_464a3c, %struct.Memory** %MEMORY

  ; Code: movl -0x150(%rbp,%rax,4), %ecx	 RIP: 464a43	 Bytes: 7
  %loadMem_464a43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464a43 = call %struct.Memory* @routine_movl_MINUS0x150__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464a43)
  store %struct.Memory* %call_464a43, %struct.Memory** %MEMORY

  ; Code: addl $0x0, %ecx	 RIP: 464a4a	 Bytes: 3
  %loadMem_464a4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464a4a = call %struct.Memory* @routine_addl__0x0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464a4a)
  store %struct.Memory* %call_464a4a, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x150(%rbp,%rax,4)	 RIP: 464a4d	 Bytes: 7
  %loadMem_464a4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464a4d = call %struct.Memory* @routine_movl__ecx__MINUS0x150__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464a4d)
  store %struct.Memory* %call_464a4d, %struct.Memory** %MEMORY

  ; Code: jmpq .L_464a72	 RIP: 464a54	 Bytes: 5
  %loadMem_464a54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464a54 = call %struct.Memory* @routine_jmpq_.L_464a72(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464a54, i64 30, i64 5)
  store %struct.Memory* %call_464a54, %struct.Memory** %MEMORY

  br label %block_.L_464a72

  ; Code: .L_464a59:	 RIP: 464a59	 Bytes: 0
block_.L_464a59:

  ; Code: jmpq .L_464a5e	 RIP: 464a59	 Bytes: 5
  %loadMem_464a59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464a59 = call %struct.Memory* @routine_jmpq_.L_464a5e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464a59, i64 5, i64 5)
  store %struct.Memory* %call_464a59, %struct.Memory** %MEMORY

  br label %block_.L_464a5e

  ; Code: .L_464a5e:	 RIP: 464a5e	 Bytes: 0
block_.L_464a5e:

  ; Code: movl -0x250(%rbp), %eax	 RIP: 464a5e	 Bytes: 6
  %loadMem_464a5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464a5e = call %struct.Memory* @routine_movl_MINUS0x250__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464a5e)
  store %struct.Memory* %call_464a5e, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 464a64	 Bytes: 3
  %loadMem_464a64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464a64 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464a64)
  store %struct.Memory* %call_464a64, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x250(%rbp)	 RIP: 464a67	 Bytes: 6
  %loadMem_464a67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464a67 = call %struct.Memory* @routine_movl__eax__MINUS0x250__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464a67)
  store %struct.Memory* %call_464a67, %struct.Memory** %MEMORY

  ; Code: jmpq .L_464a13	 RIP: 464a6d	 Bytes: 5
  %loadMem_464a6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464a6d = call %struct.Memory* @routine_jmpq_.L_464a13(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464a6d, i64 -90, i64 5)
  store %struct.Memory* %call_464a6d, %struct.Memory** %MEMORY

  br label %block_.L_464a13

  ; Code: .L_464a72:	 RIP: 464a72	 Bytes: 0
block_.L_464a72:

  ; Code: movl -0x250(%rbp), %eax	 RIP: 464a72	 Bytes: 6
  %loadMem_464a72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464a72 = call %struct.Memory* @routine_movl_MINUS0x250__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464a72)
  store %struct.Memory* %call_464a72, %struct.Memory** %MEMORY

  ; Code: cmpl -0x88(%rbp), %eax	 RIP: 464a78	 Bytes: 6
  %loadMem_464a78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464a78 = call %struct.Memory* @routine_cmpl_MINUS0x88__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464a78)
  store %struct.Memory* %call_464a78, %struct.Memory** %MEMORY

  ; Code: jne .L_464ac3	 RIP: 464a7e	 Bytes: 6
  %loadMem_464a7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464a7e = call %struct.Memory* @routine_jne_.L_464ac3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464a7e, i8* %BRANCH_TAKEN, i64 69, i64 6, i64 6)
  store %struct.Memory* %call_464a7e, %struct.Memory** %MEMORY

  %loadBr_464a7e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_464a7e = icmp eq i8 %loadBr_464a7e, 1
  br i1 %cmpBr_464a7e, label %block_.L_464ac3, label %block_464a84

block_464a84:
  ; Code: cmpl $0x32, -0x88(%rbp)	 RIP: 464a84	 Bytes: 7
  %loadMem_464a84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464a84 = call %struct.Memory* @routine_cmpl__0x32__MINUS0x88__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464a84)
  store %struct.Memory* %call_464a84, %struct.Memory** %MEMORY

  ; Code: jge .L_464ac3	 RIP: 464a8b	 Bytes: 6
  %loadMem_464a8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464a8b = call %struct.Memory* @routine_jge_.L_464ac3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464a8b, i8* %BRANCH_TAKEN, i64 56, i64 6, i64 6)
  store %struct.Memory* %call_464a8b, %struct.Memory** %MEMORY

  %loadBr_464a8b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_464a8b = icmp eq i8 %loadBr_464a8b, 1
  br i1 %cmpBr_464a8b, label %block_.L_464ac3, label %block_464a91

block_464a91:
  ; Code: movl -0x4c(%rbp), %eax	 RIP: 464a91	 Bytes: 3
  %loadMem_464a91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464a91 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464a91)
  store %struct.Memory* %call_464a91, %struct.Memory** %MEMORY

  ; Code: movslq -0x88(%rbp), %rcx	 RIP: 464a94	 Bytes: 7
  %loadMem_464a94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464a94 = call %struct.Memory* @routine_movslq_MINUS0x88__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464a94)
  store %struct.Memory* %call_464a94, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x218(%rbp,%rcx,4)	 RIP: 464a9b	 Bytes: 7
  %loadMem_464a9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464a9b = call %struct.Memory* @routine_movl__eax__MINUS0x218__rbp__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464a9b)
  store %struct.Memory* %call_464a9b, %struct.Memory** %MEMORY

  ; Code: movslq -0x88(%rbp), %rcx	 RIP: 464aa2	 Bytes: 7
  %loadMem_464aa2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464aa2 = call %struct.Memory* @routine_movslq_MINUS0x88__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464aa2)
  store %struct.Memory* %call_464aa2, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x150(%rbp,%rcx,4)	 RIP: 464aa9	 Bytes: 11
  %loadMem_464aa9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464aa9 = call %struct.Memory* @routine_movl__0x0__MINUS0x150__rbp__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464aa9)
  store %struct.Memory* %call_464aa9, %struct.Memory** %MEMORY

  ; Code: movl -0x88(%rbp), %eax	 RIP: 464ab4	 Bytes: 6
  %loadMem_464ab4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464ab4 = call %struct.Memory* @routine_movl_MINUS0x88__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464ab4)
  store %struct.Memory* %call_464ab4, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 464aba	 Bytes: 3
  %loadMem_464aba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464aba = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464aba)
  store %struct.Memory* %call_464aba, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x88(%rbp)	 RIP: 464abd	 Bytes: 6
  %loadMem_464abd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464abd = call %struct.Memory* @routine_movl__eax__MINUS0x88__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464abd)
  store %struct.Memory* %call_464abd, %struct.Memory** %MEMORY

  ; Code: .L_464ac3:	 RIP: 464ac3	 Bytes: 0
  br label %block_.L_464ac3
block_.L_464ac3:

  ; Code: jmpq .L_464ac8	 RIP: 464ac3	 Bytes: 5
  %loadMem_464ac3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464ac3 = call %struct.Memory* @routine_jmpq_.L_464ac8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464ac3, i64 5, i64 5)
  store %struct.Memory* %call_464ac3, %struct.Memory** %MEMORY

  br label %block_.L_464ac8

  ; Code: .L_464ac8:	 RIP: 464ac8	 Bytes: 0
block_.L_464ac8:

  ; Code: jmpq .L_464acd	 RIP: 464ac8	 Bytes: 5
  %loadMem_464ac8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464ac8 = call %struct.Memory* @routine_jmpq_.L_464acd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464ac8, i64 5, i64 5)
  store %struct.Memory* %call_464ac8, %struct.Memory** %MEMORY

  br label %block_.L_464acd

  ; Code: .L_464acd:	 RIP: 464acd	 Bytes: 0
block_.L_464acd:

  ; Code: jmpq .L_464ad2	 RIP: 464acd	 Bytes: 5
  %loadMem_464acd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464acd = call %struct.Memory* @routine_jmpq_.L_464ad2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464acd, i64 5, i64 5)
  store %struct.Memory* %call_464acd, %struct.Memory** %MEMORY

  br label %block_.L_464ad2

  ; Code: .L_464ad2:	 RIP: 464ad2	 Bytes: 0
block_.L_464ad2:

  ; Code: movl -0x22c(%rbp), %eax	 RIP: 464ad2	 Bytes: 6
  %loadMem_464ad2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464ad2 = call %struct.Memory* @routine_movl_MINUS0x22c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464ad2)
  store %struct.Memory* %call_464ad2, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 464ad8	 Bytes: 3
  %loadMem_464ad8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464ad8 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464ad8)
  store %struct.Memory* %call_464ad8, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x22c(%rbp)	 RIP: 464adb	 Bytes: 6
  %loadMem_464adb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464adb = call %struct.Memory* @routine_movl__eax__MINUS0x22c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464adb)
  store %struct.Memory* %call_464adb, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4649bf	 RIP: 464ae1	 Bytes: 5
  %loadMem_464ae1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464ae1 = call %struct.Memory* @routine_jmpq_.L_4649bf(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464ae1, i64 -290, i64 5)
  store %struct.Memory* %call_464ae1, %struct.Memory** %MEMORY

  br label %block_.L_4649bf

  ; Code: .L_464ae6:	 RIP: 464ae6	 Bytes: 0
block_.L_464ae6:

  ; Code: jmpq .L_464aeb	 RIP: 464ae6	 Bytes: 5
  %loadMem_464ae6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464ae6 = call %struct.Memory* @routine_jmpq_.L_464aeb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464ae6, i64 5, i64 5)
  store %struct.Memory* %call_464ae6, %struct.Memory** %MEMORY

  br label %block_.L_464aeb

  ; Code: .L_464aeb:	 RIP: 464aeb	 Bytes: 0
block_.L_464aeb:

  ; Code: movl $0x3, %edx	 RIP: 464aeb	 Bytes: 5
  %loadMem_464aeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464aeb = call %struct.Memory* @routine_movl__0x3___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464aeb)
  store %struct.Memory* %call_464aeb, %struct.Memory** %MEMORY

  ; Code: leaq -0x80(%rbp), %rcx	 RIP: 464af0	 Bytes: 4
  %loadMem_464af0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464af0 = call %struct.Memory* @routine_leaq_MINUS0x80__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464af0)
  store %struct.Memory* %call_464af0, %struct.Memory** %MEMORY

  ; Code: movslq -0x228(%rbp), %rax	 RIP: 464af4	 Bytes: 7
  %loadMem_464af4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464af4 = call %struct.Memory* @routine_movslq_MINUS0x228__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464af4)
  store %struct.Memory* %call_464af4, %struct.Memory** %MEMORY

  ; Code: movl -0x58(%rbp,%rax,4), %edi	 RIP: 464afb	 Bytes: 4
  %loadMem_464afb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464afb = call %struct.Memory* @routine_movl_MINUS0x58__rbp__rax_4____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464afb)
  store %struct.Memory* %call_464afb, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %esi	 RIP: 464aff	 Bytes: 3
  %loadMem_464aff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464aff = call %struct.Memory* @routine_movl_MINUS0x48__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464aff)
  store %struct.Memory* %call_464aff, %struct.Memory** %MEMORY

  ; Code: callq .approxlib	 RIP: 464b02	 Bytes: 5
  %loadMem1_464b02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_464b02 = call %struct.Memory* @routine_callq_.approxlib(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_464b02, i64 -341330, i64 5, i64 5)
  store %struct.Memory* %call1_464b02, %struct.Memory** %MEMORY

  %loadMem2_464b02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_464b02 = load i64, i64* %3
  %call2_464b02 = call %struct.Memory* @sub_4115b0.approxlib(%struct.State* %0, i64  %loadPC_464b02, %struct.Memory* %loadMem2_464b02)
  store %struct.Memory* %call2_464b02, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x5c(%rbp)	 RIP: 464b07	 Bytes: 3
  %loadMem_464b07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464b07 = call %struct.Memory* @routine_movl__eax__MINUS0x5c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464b07)
  store %struct.Memory* %call_464b07, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, -0x5c(%rbp)	 RIP: 464b0a	 Bytes: 4
  %loadMem_464b0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464b0a = call %struct.Memory* @routine_cmpl__0x2__MINUS0x5c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464b0a)
  store %struct.Memory* %call_464b0a, %struct.Memory** %MEMORY

  ; Code: jg .L_464c36	 RIP: 464b0e	 Bytes: 6
  %loadMem_464b0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464b0e = call %struct.Memory* @routine_jg_.L_464c36(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464b0e, i8* %BRANCH_TAKEN, i64 296, i64 6, i64 6)
  store %struct.Memory* %call_464b0e, %struct.Memory** %MEMORY

  %loadBr_464b0e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_464b0e = icmp eq i8 %loadBr_464b0e, 1
  br i1 %cmpBr_464b0e, label %block_.L_464c36, label %block_464b14

block_464b14:
  ; Code: movl $0x0, -0x22c(%rbp)	 RIP: 464b14	 Bytes: 10
  %loadMem_464b14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464b14 = call %struct.Memory* @routine_movl__0x0__MINUS0x22c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464b14)
  store %struct.Memory* %call_464b14, %struct.Memory** %MEMORY

  ; Code: .L_464b1e:	 RIP: 464b1e	 Bytes: 0
  br label %block_.L_464b1e
block_.L_464b1e:

  ; Code: movl -0x22c(%rbp), %eax	 RIP: 464b1e	 Bytes: 6
  %loadMem_464b1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464b1e = call %struct.Memory* @routine_movl_MINUS0x22c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464b1e)
  store %struct.Memory* %call_464b1e, %struct.Memory** %MEMORY

  ; Code: cmpl -0x5c(%rbp), %eax	 RIP: 464b24	 Bytes: 3
  %loadMem_464b24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464b24 = call %struct.Memory* @routine_cmpl_MINUS0x5c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464b24)
  store %struct.Memory* %call_464b24, %struct.Memory** %MEMORY

  ; Code: jge .L_464c31	 RIP: 464b27	 Bytes: 6
  %loadMem_464b27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464b27 = call %struct.Memory* @routine_jge_.L_464c31(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464b27, i8* %BRANCH_TAKEN, i64 266, i64 6, i64 6)
  store %struct.Memory* %call_464b27, %struct.Memory** %MEMORY

  %loadBr_464b27 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_464b27 = icmp eq i8 %loadBr_464b27, 1
  br i1 %cmpBr_464b27, label %block_.L_464c31, label %block_464b2d

block_464b2d:
  ; Code: movslq -0x22c(%rbp), %rax	 RIP: 464b2d	 Bytes: 7
  %loadMem_464b2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464b2d = call %struct.Memory* @routine_movslq_MINUS0x22c__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464b2d)
  store %struct.Memory* %call_464b2d, %struct.Memory** %MEMORY

  ; Code: movl -0x80(%rbp,%rax,4), %ecx	 RIP: 464b34	 Bytes: 4
  %loadMem_464b34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464b34 = call %struct.Memory* @routine_movl_MINUS0x80__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464b34)
  store %struct.Memory* %call_464b34, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x4c(%rbp)	 RIP: 464b38	 Bytes: 3
  %loadMem_464b38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464b38 = call %struct.Memory* @routine_movl__ecx__MINUS0x4c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464b38)
  store %struct.Memory* %call_464b38, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %edi	 RIP: 464b3b	 Bytes: 3
  %loadMem_464b3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464b3b = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464b3b)
  store %struct.Memory* %call_464b3b, %struct.Memory** %MEMORY

  ; Code: movl -0x44(%rbp), %esi	 RIP: 464b3e	 Bytes: 3
  %loadMem_464b3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464b3e = call %struct.Memory* @routine_movl_MINUS0x44__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464b3e)
  store %struct.Memory* %call_464b3e, %struct.Memory** %MEMORY

  ; Code: callq .is_self_atari	 RIP: 464b41	 Bytes: 5
  %loadMem1_464b41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_464b41 = call %struct.Memory* @routine_callq_.is_self_atari(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_464b41, i64 -329889, i64 5, i64 5)
  store %struct.Memory* %call1_464b41, %struct.Memory** %MEMORY

  %loadMem2_464b41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_464b41 = load i64, i64* %3
  %call2_464b41 = call %struct.Memory* @sub_4142a0.is_self_atari(%struct.State* %0, i64  %loadPC_464b41, %struct.Memory* %loadMem2_464b41)
  store %struct.Memory* %call2_464b41, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 464b46	 Bytes: 3
  %loadMem_464b46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464b46 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464b46)
  store %struct.Memory* %call_464b46, %struct.Memory** %MEMORY

  ; Code: jne .L_464c18	 RIP: 464b49	 Bytes: 6
  %loadMem_464b49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464b49 = call %struct.Memory* @routine_jne_.L_464c18(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464b49, i8* %BRANCH_TAKEN, i64 207, i64 6, i64 6)
  store %struct.Memory* %call_464b49, %struct.Memory** %MEMORY

  %loadBr_464b49 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_464b49 = icmp eq i8 %loadBr_464b49, 1
  br i1 %cmpBr_464b49, label %block_.L_464c18, label %block_464b4f

block_464b4f:
  ; Code: jmpq .L_464b54	 RIP: 464b4f	 Bytes: 5
  %loadMem_464b4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464b4f = call %struct.Memory* @routine_jmpq_.L_464b54(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464b4f, i64 5, i64 5)
  store %struct.Memory* %call_464b4f, %struct.Memory** %MEMORY

  br label %block_.L_464b54

  ; Code: .L_464b54:	 RIP: 464b54	 Bytes: 0
block_.L_464b54:

  ; Code: movl $0x0, -0x254(%rbp)	 RIP: 464b54	 Bytes: 10
  %loadMem_464b54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464b54 = call %struct.Memory* @routine_movl__0x0__MINUS0x254__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464b54)
  store %struct.Memory* %call_464b54, %struct.Memory** %MEMORY

  ; Code: .L_464b5e:	 RIP: 464b5e	 Bytes: 0
  br label %block_.L_464b5e
block_.L_464b5e:

  ; Code: movl -0x254(%rbp), %eax	 RIP: 464b5e	 Bytes: 6
  %loadMem_464b5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464b5e = call %struct.Memory* @routine_movl_MINUS0x254__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464b5e)
  store %struct.Memory* %call_464b5e, %struct.Memory** %MEMORY

  ; Code: cmpl -0x88(%rbp), %eax	 RIP: 464b64	 Bytes: 6
  %loadMem_464b64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464b64 = call %struct.Memory* @routine_cmpl_MINUS0x88__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464b64)
  store %struct.Memory* %call_464b64, %struct.Memory** %MEMORY

  ; Code: jge .L_464bbd	 RIP: 464b6a	 Bytes: 6
  %loadMem_464b6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464b6a = call %struct.Memory* @routine_jge_.L_464bbd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464b6a, i8* %BRANCH_TAKEN, i64 83, i64 6, i64 6)
  store %struct.Memory* %call_464b6a, %struct.Memory** %MEMORY

  %loadBr_464b6a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_464b6a = icmp eq i8 %loadBr_464b6a, 1
  br i1 %cmpBr_464b6a, label %block_.L_464bbd, label %block_464b70

block_464b70:
  ; Code: movslq -0x254(%rbp), %rax	 RIP: 464b70	 Bytes: 7
  %loadMem_464b70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464b70 = call %struct.Memory* @routine_movslq_MINUS0x254__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464b70)
  store %struct.Memory* %call_464b70, %struct.Memory** %MEMORY

  ; Code: movl -0x218(%rbp,%rax,4), %ecx	 RIP: 464b77	 Bytes: 7
  %loadMem_464b77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464b77 = call %struct.Memory* @routine_movl_MINUS0x218__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464b77)
  store %struct.Memory* %call_464b77, %struct.Memory** %MEMORY

  ; Code: cmpl -0x4c(%rbp), %ecx	 RIP: 464b7e	 Bytes: 3
  %loadMem_464b7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464b7e = call %struct.Memory* @routine_cmpl_MINUS0x4c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464b7e)
  store %struct.Memory* %call_464b7e, %struct.Memory** %MEMORY

  ; Code: jne .L_464ba4	 RIP: 464b81	 Bytes: 6
  %loadMem_464b81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464b81 = call %struct.Memory* @routine_jne_.L_464ba4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464b81, i8* %BRANCH_TAKEN, i64 35, i64 6, i64 6)
  store %struct.Memory* %call_464b81, %struct.Memory** %MEMORY

  %loadBr_464b81 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_464b81 = icmp eq i8 %loadBr_464b81, 1
  br i1 %cmpBr_464b81, label %block_.L_464ba4, label %block_464b87

block_464b87:
  ; Code: movslq -0x254(%rbp), %rax	 RIP: 464b87	 Bytes: 7
  %loadMem_464b87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464b87 = call %struct.Memory* @routine_movslq_MINUS0x254__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464b87)
  store %struct.Memory* %call_464b87, %struct.Memory** %MEMORY

  ; Code: movl -0x150(%rbp,%rax,4), %ecx	 RIP: 464b8e	 Bytes: 7
  %loadMem_464b8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464b8e = call %struct.Memory* @routine_movl_MINUS0x150__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464b8e)
  store %struct.Memory* %call_464b8e, %struct.Memory** %MEMORY

  ; Code: addl $0x0, %ecx	 RIP: 464b95	 Bytes: 3
  %loadMem_464b95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464b95 = call %struct.Memory* @routine_addl__0x0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464b95)
  store %struct.Memory* %call_464b95, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x150(%rbp,%rax,4)	 RIP: 464b98	 Bytes: 7
  %loadMem_464b98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464b98 = call %struct.Memory* @routine_movl__ecx__MINUS0x150__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464b98)
  store %struct.Memory* %call_464b98, %struct.Memory** %MEMORY

  ; Code: jmpq .L_464bbd	 RIP: 464b9f	 Bytes: 5
  %loadMem_464b9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464b9f = call %struct.Memory* @routine_jmpq_.L_464bbd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464b9f, i64 30, i64 5)
  store %struct.Memory* %call_464b9f, %struct.Memory** %MEMORY

  br label %block_.L_464bbd

  ; Code: .L_464ba4:	 RIP: 464ba4	 Bytes: 0
block_.L_464ba4:

  ; Code: jmpq .L_464ba9	 RIP: 464ba4	 Bytes: 5
  %loadMem_464ba4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464ba4 = call %struct.Memory* @routine_jmpq_.L_464ba9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464ba4, i64 5, i64 5)
  store %struct.Memory* %call_464ba4, %struct.Memory** %MEMORY

  br label %block_.L_464ba9

  ; Code: .L_464ba9:	 RIP: 464ba9	 Bytes: 0
block_.L_464ba9:

  ; Code: movl -0x254(%rbp), %eax	 RIP: 464ba9	 Bytes: 6
  %loadMem_464ba9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464ba9 = call %struct.Memory* @routine_movl_MINUS0x254__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464ba9)
  store %struct.Memory* %call_464ba9, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 464baf	 Bytes: 3
  %loadMem_464baf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464baf = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464baf)
  store %struct.Memory* %call_464baf, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x254(%rbp)	 RIP: 464bb2	 Bytes: 6
  %loadMem_464bb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464bb2 = call %struct.Memory* @routine_movl__eax__MINUS0x254__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464bb2)
  store %struct.Memory* %call_464bb2, %struct.Memory** %MEMORY

  ; Code: jmpq .L_464b5e	 RIP: 464bb8	 Bytes: 5
  %loadMem_464bb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464bb8 = call %struct.Memory* @routine_jmpq_.L_464b5e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464bb8, i64 -90, i64 5)
  store %struct.Memory* %call_464bb8, %struct.Memory** %MEMORY

  br label %block_.L_464b5e

  ; Code: .L_464bbd:	 RIP: 464bbd	 Bytes: 0
block_.L_464bbd:

  ; Code: movl -0x254(%rbp), %eax	 RIP: 464bbd	 Bytes: 6
  %loadMem_464bbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464bbd = call %struct.Memory* @routine_movl_MINUS0x254__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464bbd)
  store %struct.Memory* %call_464bbd, %struct.Memory** %MEMORY

  ; Code: cmpl -0x88(%rbp), %eax	 RIP: 464bc3	 Bytes: 6
  %loadMem_464bc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464bc3 = call %struct.Memory* @routine_cmpl_MINUS0x88__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464bc3)
  store %struct.Memory* %call_464bc3, %struct.Memory** %MEMORY

  ; Code: jne .L_464c0e	 RIP: 464bc9	 Bytes: 6
  %loadMem_464bc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464bc9 = call %struct.Memory* @routine_jne_.L_464c0e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464bc9, i8* %BRANCH_TAKEN, i64 69, i64 6, i64 6)
  store %struct.Memory* %call_464bc9, %struct.Memory** %MEMORY

  %loadBr_464bc9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_464bc9 = icmp eq i8 %loadBr_464bc9, 1
  br i1 %cmpBr_464bc9, label %block_.L_464c0e, label %block_464bcf

block_464bcf:
  ; Code: cmpl $0x32, -0x88(%rbp)	 RIP: 464bcf	 Bytes: 7
  %loadMem_464bcf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464bcf = call %struct.Memory* @routine_cmpl__0x32__MINUS0x88__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464bcf)
  store %struct.Memory* %call_464bcf, %struct.Memory** %MEMORY

  ; Code: jge .L_464c0e	 RIP: 464bd6	 Bytes: 6
  %loadMem_464bd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464bd6 = call %struct.Memory* @routine_jge_.L_464c0e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464bd6, i8* %BRANCH_TAKEN, i64 56, i64 6, i64 6)
  store %struct.Memory* %call_464bd6, %struct.Memory** %MEMORY

  %loadBr_464bd6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_464bd6 = icmp eq i8 %loadBr_464bd6, 1
  br i1 %cmpBr_464bd6, label %block_.L_464c0e, label %block_464bdc

block_464bdc:
  ; Code: movl -0x4c(%rbp), %eax	 RIP: 464bdc	 Bytes: 3
  %loadMem_464bdc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464bdc = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464bdc)
  store %struct.Memory* %call_464bdc, %struct.Memory** %MEMORY

  ; Code: movslq -0x88(%rbp), %rcx	 RIP: 464bdf	 Bytes: 7
  %loadMem_464bdf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464bdf = call %struct.Memory* @routine_movslq_MINUS0x88__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464bdf)
  store %struct.Memory* %call_464bdf, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x218(%rbp,%rcx,4)	 RIP: 464be6	 Bytes: 7
  %loadMem_464be6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464be6 = call %struct.Memory* @routine_movl__eax__MINUS0x218__rbp__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464be6)
  store %struct.Memory* %call_464be6, %struct.Memory** %MEMORY

  ; Code: movslq -0x88(%rbp), %rcx	 RIP: 464bed	 Bytes: 7
  %loadMem_464bed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464bed = call %struct.Memory* @routine_movslq_MINUS0x88__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464bed)
  store %struct.Memory* %call_464bed, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x150(%rbp,%rcx,4)	 RIP: 464bf4	 Bytes: 11
  %loadMem_464bf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464bf4 = call %struct.Memory* @routine_movl__0x0__MINUS0x150__rbp__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464bf4)
  store %struct.Memory* %call_464bf4, %struct.Memory** %MEMORY

  ; Code: movl -0x88(%rbp), %eax	 RIP: 464bff	 Bytes: 6
  %loadMem_464bff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464bff = call %struct.Memory* @routine_movl_MINUS0x88__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464bff)
  store %struct.Memory* %call_464bff, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 464c05	 Bytes: 3
  %loadMem_464c05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464c05 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464c05)
  store %struct.Memory* %call_464c05, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x88(%rbp)	 RIP: 464c08	 Bytes: 6
  %loadMem_464c08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464c08 = call %struct.Memory* @routine_movl__eax__MINUS0x88__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464c08)
  store %struct.Memory* %call_464c08, %struct.Memory** %MEMORY

  ; Code: .L_464c0e:	 RIP: 464c0e	 Bytes: 0
  br label %block_.L_464c0e
block_.L_464c0e:

  ; Code: jmpq .L_464c13	 RIP: 464c0e	 Bytes: 5
  %loadMem_464c0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464c0e = call %struct.Memory* @routine_jmpq_.L_464c13(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464c0e, i64 5, i64 5)
  store %struct.Memory* %call_464c0e, %struct.Memory** %MEMORY

  br label %block_.L_464c13

  ; Code: .L_464c13:	 RIP: 464c13	 Bytes: 0
block_.L_464c13:

  ; Code: jmpq .L_464c18	 RIP: 464c13	 Bytes: 5
  %loadMem_464c13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464c13 = call %struct.Memory* @routine_jmpq_.L_464c18(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464c13, i64 5, i64 5)
  store %struct.Memory* %call_464c13, %struct.Memory** %MEMORY

  br label %block_.L_464c18

  ; Code: .L_464c18:	 RIP: 464c18	 Bytes: 0
block_.L_464c18:

  ; Code: jmpq .L_464c1d	 RIP: 464c18	 Bytes: 5
  %loadMem_464c18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464c18 = call %struct.Memory* @routine_jmpq_.L_464c1d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464c18, i64 5, i64 5)
  store %struct.Memory* %call_464c18, %struct.Memory** %MEMORY

  br label %block_.L_464c1d

  ; Code: .L_464c1d:	 RIP: 464c1d	 Bytes: 0
block_.L_464c1d:

  ; Code: movl -0x22c(%rbp), %eax	 RIP: 464c1d	 Bytes: 6
  %loadMem_464c1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464c1d = call %struct.Memory* @routine_movl_MINUS0x22c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464c1d)
  store %struct.Memory* %call_464c1d, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 464c23	 Bytes: 3
  %loadMem_464c23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464c23 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464c23)
  store %struct.Memory* %call_464c23, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x22c(%rbp)	 RIP: 464c26	 Bytes: 6
  %loadMem_464c26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464c26 = call %struct.Memory* @routine_movl__eax__MINUS0x22c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464c26)
  store %struct.Memory* %call_464c26, %struct.Memory** %MEMORY

  ; Code: jmpq .L_464b1e	 RIP: 464c2c	 Bytes: 5
  %loadMem_464c2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464c2c = call %struct.Memory* @routine_jmpq_.L_464b1e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464c2c, i64 -270, i64 5)
  store %struct.Memory* %call_464c2c, %struct.Memory** %MEMORY

  br label %block_.L_464b1e

  ; Code: .L_464c31:	 RIP: 464c31	 Bytes: 0
block_.L_464c31:

  ; Code: jmpq .L_464c36	 RIP: 464c31	 Bytes: 5
  %loadMem_464c31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464c31 = call %struct.Memory* @routine_jmpq_.L_464c36(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464c31, i64 5, i64 5)
  store %struct.Memory* %call_464c31, %struct.Memory** %MEMORY

  br label %block_.L_464c36

  ; Code: .L_464c36:	 RIP: 464c36	 Bytes: 0
block_.L_464c36:

  ; Code: jmpq .L_464c3b	 RIP: 464c36	 Bytes: 5
  %loadMem_464c36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464c36 = call %struct.Memory* @routine_jmpq_.L_464c3b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464c36, i64 5, i64 5)
  store %struct.Memory* %call_464c36, %struct.Memory** %MEMORY

  br label %block_.L_464c3b

  ; Code: .L_464c3b:	 RIP: 464c3b	 Bytes: 0
block_.L_464c3b:

  ; Code: movl -0x228(%rbp), %eax	 RIP: 464c3b	 Bytes: 6
  %loadMem_464c3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464c3b = call %struct.Memory* @routine_movl_MINUS0x228__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464c3b)
  store %struct.Memory* %call_464c3b, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 464c41	 Bytes: 3
  %loadMem_464c41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464c41 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464c41)
  store %struct.Memory* %call_464c41, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x228(%rbp)	 RIP: 464c44	 Bytes: 6
  %loadMem_464c44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464c44 = call %struct.Memory* @routine_movl__eax__MINUS0x228__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464c44)
  store %struct.Memory* %call_464c44, %struct.Memory** %MEMORY

  ; Code: jmpq .L_46496b	 RIP: 464c4a	 Bytes: 5
  %loadMem_464c4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464c4a = call %struct.Memory* @routine_jmpq_.L_46496b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464c4a, i64 -735, i64 5)
  store %struct.Memory* %call_464c4a, %struct.Memory** %MEMORY

  br label %block_.L_46496b

  ; Code: .L_464c4f:	 RIP: 464c4f	 Bytes: 0
block_.L_464c4f:

  ; Code: leaq -0x218(%rbp), %rsi	 RIP: 464c4f	 Bytes: 7
  %loadMem_464c4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464c4f = call %struct.Memory* @routine_leaq_MINUS0x218__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464c4f)
  store %struct.Memory* %call_464c4f, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %edi	 RIP: 464c56	 Bytes: 3
  %loadMem_464c56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464c56 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464c56)
  store %struct.Memory* %call_464c56, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %edx	 RIP: 464c59	 Bytes: 3
  %loadMem_464c59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464c59 = call %struct.Memory* @routine_movl_MINUS0x48__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464c59)
  store %struct.Memory* %call_464c59, %struct.Memory** %MEMORY

  ; Code: movq -0x238(%rbp), %rcx	 RIP: 464c5c	 Bytes: 7
  %loadMem_464c5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464c5c = call %struct.Memory* @routine_movq_MINUS0x238__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464c5c)
  store %struct.Memory* %call_464c5c, %struct.Memory** %MEMORY

  ; Code: movl -0x21c(%rbp), %r8d	 RIP: 464c63	 Bytes: 7
  %loadMem_464c63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464c63 = call %struct.Memory* @routine_movl_MINUS0x21c__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464c63)
  store %struct.Memory* %call_464c63, %struct.Memory** %MEMORY

  ; Code: callq .order_moves	 RIP: 464c6a	 Bytes: 5
  %loadMem1_464c6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_464c6a = call %struct.Memory* @routine_callq_.order_moves(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_464c6a, i64 -8154, i64 5, i64 5)
  store %struct.Memory* %call1_464c6a, %struct.Memory** %MEMORY

  %loadMem2_464c6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_464c6a = load i64, i64* %3
  %call2_464c6a = call %struct.Memory* @sub_462c90.order_moves(%struct.State* %0, i64  %loadPC_464c6a, %struct.Memory* %loadMem2_464c6a)
  store %struct.Memory* %call2_464c6a, %struct.Memory** %MEMORY

  ; Code: movl -0x21c(%rbp), %edx	 RIP: 464c6f	 Bytes: 6
  %loadMem_464c6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464c6f = call %struct.Memory* @routine_movl_MINUS0x21c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464c6f)
  store %struct.Memory* %call_464c6f, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x228(%rbp)	 RIP: 464c75	 Bytes: 6
  %loadMem_464c75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464c75 = call %struct.Memory* @routine_movl__edx__MINUS0x228__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464c75)
  store %struct.Memory* %call_464c75, %struct.Memory** %MEMORY

  ; Code: .L_464c7b:	 RIP: 464c7b	 Bytes: 0
  br label %block_.L_464c7b
block_.L_464c7b:

  ; Code: movl -0x228(%rbp), %eax	 RIP: 464c7b	 Bytes: 6
  %loadMem_464c7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464c7b = call %struct.Memory* @routine_movl_MINUS0x228__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464c7b)
  store %struct.Memory* %call_464c7b, %struct.Memory** %MEMORY

  ; Code: cmpl -0x88(%rbp), %eax	 RIP: 464c81	 Bytes: 6
  %loadMem_464c81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464c81 = call %struct.Memory* @routine_cmpl_MINUS0x88__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464c81)
  store %struct.Memory* %call_464c81, %struct.Memory** %MEMORY

  ; Code: jge .L_464ed8	 RIP: 464c87	 Bytes: 6
  %loadMem_464c87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464c87 = call %struct.Memory* @routine_jge_.L_464ed8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464c87, i8* %BRANCH_TAKEN, i64 593, i64 6, i64 6)
  store %struct.Memory* %call_464c87, %struct.Memory** %MEMORY

  %loadBr_464c87 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_464c87 = icmp eq i8 %loadBr_464c87, 1
  br i1 %cmpBr_464c87, label %block_.L_464ed8, label %block_464c8d

block_464c8d:
  ; Code: xorl %eax, %eax	 RIP: 464c8d	 Bytes: 2
  %loadMem_464c8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464c8d = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464c8d)
  store %struct.Memory* %call_464c8d, %struct.Memory** %MEMORY

  ; Code: movb %al, %cl	 RIP: 464c8f	 Bytes: 2
  %loadMem_464c8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464c8f = call %struct.Memory* @routine_movb__al___cl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464c8f)
  store %struct.Memory* %call_464c8f, %struct.Memory** %MEMORY

  ; Code: movslq -0x228(%rbp), %rdx	 RIP: 464c91	 Bytes: 7
  %loadMem_464c91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464c91 = call %struct.Memory* @routine_movslq_MINUS0x228__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464c91)
  store %struct.Memory* %call_464c91, %struct.Memory** %MEMORY

  ; Code: movl -0x218(%rbp,%rdx,4), %eax	 RIP: 464c98	 Bytes: 7
  %loadMem_464c98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464c98 = call %struct.Memory* @routine_movl_MINUS0x218__rbp__rdx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464c98)
  store %struct.Memory* %call_464c98, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4c(%rbp)	 RIP: 464c9f	 Bytes: 3
  %loadMem_464c9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464c9f = call %struct.Memory* @routine_movl__eax__MINUS0x4c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464c9f)
  store %struct.Memory* %call_464c9f, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %edi	 RIP: 464ca2	 Bytes: 3
  %loadMem_464ca2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464ca2 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464ca2)
  store %struct.Memory* %call_464ca2, %struct.Memory** %MEMORY

  ; Code: movl -0x44(%rbp), %esi	 RIP: 464ca5	 Bytes: 3
  %loadMem_464ca5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464ca5 = call %struct.Memory* @routine_movl_MINUS0x44__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464ca5)
  store %struct.Memory* %call_464ca5, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %eax	 RIP: 464ca8	 Bytes: 3
  %loadMem_464ca8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464ca8 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464ca8)
  store %struct.Memory* %call_464ca8, %struct.Memory** %MEMORY

  ; Code: movl -0x3c(%rbp), %r8d	 RIP: 464cab	 Bytes: 4
  %loadMem_464cab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464cab = call %struct.Memory* @routine_movl_MINUS0x3c__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464cab)
  store %struct.Memory* %call_464cab, %struct.Memory** %MEMORY

  ; Code: movl -0x40(%rbp), %r9d	 RIP: 464caf	 Bytes: 4
  %loadMem_464caf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464caf = call %struct.Memory* @routine_movl_MINUS0x40__rbp____r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464caf)
  store %struct.Memory* %call_464caf, %struct.Memory** %MEMORY

  ; Code: movl 0xb54ce4, %r10d	 RIP: 464cb3	 Bytes: 8
  %loadMem_464cb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464cb3 = call %struct.Memory* @routine_movl_0xb54ce4___r10d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464cb3)
  store %struct.Memory* %call_464cb3, %struct.Memory** %MEMORY

  ; Code: cmpl 0xb8b850, %r10d	 RIP: 464cbb	 Bytes: 8
  %loadMem_464cbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464cbb = call %struct.Memory* @routine_cmpl_0xb8b850___r10d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464cbb)
  store %struct.Memory* %call_464cbb, %struct.Memory** %MEMORY

  ; Code: movl %r9d, -0x338(%rbp)	 RIP: 464cc3	 Bytes: 7
  %loadMem_464cc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464cc3 = call %struct.Memory* @routine_movl__r9d__MINUS0x338__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464cc3)
  store %struct.Memory* %call_464cc3, %struct.Memory** %MEMORY

  ; Code: movl %edi, -0x33c(%rbp)	 RIP: 464cca	 Bytes: 6
  %loadMem_464cca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464cca = call %struct.Memory* @routine_movl__edi__MINUS0x33c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464cca)
  store %struct.Memory* %call_464cca, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x340(%rbp)	 RIP: 464cd0	 Bytes: 6
  %loadMem_464cd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464cd0 = call %struct.Memory* @routine_movl__esi__MINUS0x340__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464cd0)
  store %struct.Memory* %call_464cd0, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x344(%rbp)	 RIP: 464cd6	 Bytes: 6
  %loadMem_464cd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464cd6 = call %struct.Memory* @routine_movl__eax__MINUS0x344__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464cd6)
  store %struct.Memory* %call_464cd6, %struct.Memory** %MEMORY

  ; Code: movl %r8d, -0x348(%rbp)	 RIP: 464cdc	 Bytes: 7
  %loadMem_464cdc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464cdc = call %struct.Memory* @routine_movl__r8d__MINUS0x348__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464cdc)
  store %struct.Memory* %call_464cdc, %struct.Memory** %MEMORY

  ; Code: movb %cl, -0x349(%rbp)	 RIP: 464ce3	 Bytes: 6
  %loadMem_464ce3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464ce3 = call %struct.Memory* @routine_movb__cl__MINUS0x349__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464ce3)
  store %struct.Memory* %call_464ce3, %struct.Memory** %MEMORY

  ; Code: jg .L_464cff	 RIP: 464ce9	 Bytes: 6
  %loadMem_464ce9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464ce9 = call %struct.Memory* @routine_jg_.L_464cff(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464ce9, i8* %BRANCH_TAKEN, i64 22, i64 6, i64 6)
  store %struct.Memory* %call_464ce9, %struct.Memory** %MEMORY

  %loadBr_464ce9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_464ce9 = icmp eq i8 %loadBr_464ce9, 1
  br i1 %cmpBr_464ce9, label %block_.L_464cff, label %block_464cef

block_464cef:
  ; Code: cmpl $0x0, -0x224(%rbp)	 RIP: 464cef	 Bytes: 7
  %loadMem_464cef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464cef = call %struct.Memory* @routine_cmpl__0x0__MINUS0x224__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464cef)
  store %struct.Memory* %call_464cef, %struct.Memory** %MEMORY

  ; Code: sete %al	 RIP: 464cf6	 Bytes: 3
  %loadMem_464cf6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464cf6 = call %struct.Memory* @routine_sete__al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464cf6)
  store %struct.Memory* %call_464cf6, %struct.Memory** %MEMORY

  ; Code: movb %al, -0x349(%rbp)	 RIP: 464cf9	 Bytes: 6
  %loadMem_464cf9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464cf9 = call %struct.Memory* @routine_movb__al__MINUS0x349__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464cf9)
  store %struct.Memory* %call_464cf9, %struct.Memory** %MEMORY

  ; Code: .L_464cff:	 RIP: 464cff	 Bytes: 0
  br label %block_.L_464cff
block_.L_464cff:

  ; Code: movb -0x349(%rbp), %al	 RIP: 464cff	 Bytes: 6
  %loadMem_464cff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464cff = call %struct.Memory* @routine_movb_MINUS0x349__rbp____al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464cff)
  store %struct.Memory* %call_464cff, %struct.Memory** %MEMORY

  ; Code: movq $0x57fd53, %rdx	 RIP: 464d05	 Bytes: 10
  %loadMem_464d05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464d05 = call %struct.Memory* @routine_movq__0x57fd53___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464d05)
  store %struct.Memory* %call_464d05, %struct.Memory** %MEMORY

  ; Code: leaq -0x258(%rbp), %rcx	 RIP: 464d0f	 Bytes: 7
  %loadMem_464d0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464d0f = call %struct.Memory* @routine_leaq_MINUS0x258__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464d0f)
  store %struct.Memory* %call_464d0f, %struct.Memory** %MEMORY

  ; Code: leaq -0x25c(%rbp), %rsi	 RIP: 464d16	 Bytes: 7
  %loadMem_464d16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464d16 = call %struct.Memory* @routine_leaq_MINUS0x25c__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464d16)
  store %struct.Memory* %call_464d16, %struct.Memory** %MEMORY

  ; Code: leaq -0x260(%rbp), %rdi	 RIP: 464d1d	 Bytes: 7
  %loadMem_464d1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464d1d = call %struct.Memory* @routine_leaq_MINUS0x260__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464d1d)
  store %struct.Memory* %call_464d1d, %struct.Memory** %MEMORY

  ; Code: andb $0x1, %al	 RIP: 464d24	 Bytes: 2
  %loadMem_464d24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464d24 = call %struct.Memory* @routine_andb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464d24)
  store %struct.Memory* %call_464d24, %struct.Memory** %MEMORY

  ; Code: movzbl %al, %r8d	 RIP: 464d26	 Bytes: 4
  %loadMem_464d26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464d26 = call %struct.Memory* @routine_movzbl__al___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464d26)
  store %struct.Memory* %call_464d26, %struct.Memory** %MEMORY

  ; Code: movl -0x33c(%rbp), %r9d	 RIP: 464d2a	 Bytes: 7
  %loadMem_464d2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464d2a = call %struct.Memory* @routine_movl_MINUS0x33c__rbp____r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464d2a)
  store %struct.Memory* %call_464d2a, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x358(%rbp)	 RIP: 464d31	 Bytes: 7
  %loadMem_464d31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464d31 = call %struct.Memory* @routine_movq__rdi__MINUS0x358__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464d31)
  store %struct.Memory* %call_464d31, %struct.Memory** %MEMORY

  ; Code: movl %r9d, %edi	 RIP: 464d38	 Bytes: 3
  %loadMem_464d38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464d38 = call %struct.Memory* @routine_movl__r9d___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464d38)
  store %struct.Memory* %call_464d38, %struct.Memory** %MEMORY

  ; Code: movl -0x340(%rbp), %r10d	 RIP: 464d3b	 Bytes: 7
  %loadMem_464d3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464d3b = call %struct.Memory* @routine_movl_MINUS0x340__rbp____r10d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464d3b)
  store %struct.Memory* %call_464d3b, %struct.Memory** %MEMORY

  ; Code: movq %rsi, -0x360(%rbp)	 RIP: 464d42	 Bytes: 7
  %loadMem_464d42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464d42 = call %struct.Memory* @routine_movq__rsi__MINUS0x360__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464d42)
  store %struct.Memory* %call_464d42, %struct.Memory** %MEMORY

  ; Code: movl %r10d, %esi	 RIP: 464d49	 Bytes: 3
  %loadMem_464d49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464d49 = call %struct.Memory* @routine_movl__r10d___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464d49)
  store %struct.Memory* %call_464d49, %struct.Memory** %MEMORY

  ; Code: movl -0x344(%rbp), %r11d	 RIP: 464d4c	 Bytes: 7
  %loadMem_464d4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464d4c = call %struct.Memory* @routine_movl_MINUS0x344__rbp____r11d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464d4c)
  store %struct.Memory* %call_464d4c, %struct.Memory** %MEMORY

  ; Code: movq %rcx, -0x368(%rbp)	 RIP: 464d53	 Bytes: 7
  %loadMem_464d53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464d53 = call %struct.Memory* @routine_movq__rcx__MINUS0x368__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464d53)
  store %struct.Memory* %call_464d53, %struct.Memory** %MEMORY

  ; Code: movl %r11d, %ecx	 RIP: 464d5a	 Bytes: 3
  %loadMem_464d5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464d5a = call %struct.Memory* @routine_movl__r11d___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464d5a)
  store %struct.Memory* %call_464d5a, %struct.Memory** %MEMORY

  ; Code: movl -0x348(%rbp), %ebx	 RIP: 464d5d	 Bytes: 6
  %loadMem_464d5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464d5d = call %struct.Memory* @routine_movl_MINUS0x348__rbp____ebx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464d5d)
  store %struct.Memory* %call_464d5d, %struct.Memory** %MEMORY

  ; Code: movl %r8d, -0x36c(%rbp)	 RIP: 464d63	 Bytes: 7
  %loadMem_464d63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464d63 = call %struct.Memory* @routine_movl__r8d__MINUS0x36c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464d63)
  store %struct.Memory* %call_464d63, %struct.Memory** %MEMORY

  ; Code: movl %ebx, %r8d	 RIP: 464d6a	 Bytes: 3
  %loadMem_464d6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464d6a = call %struct.Memory* @routine_movl__ebx___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464d6a)
  store %struct.Memory* %call_464d6a, %struct.Memory** %MEMORY

  ; Code: movl -0x338(%rbp), %r9d	 RIP: 464d6d	 Bytes: 7
  %loadMem_464d6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464d6d = call %struct.Memory* @routine_movl_MINUS0x338__rbp____r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464d6d)
  store %struct.Memory* %call_464d6d, %struct.Memory** %MEMORY

  ; Code: movq -0x368(%rbp), %r14	 RIP: 464d74	 Bytes: 7
  %loadMem_464d74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464d74 = call %struct.Memory* @routine_movq_MINUS0x368__rbp____r14(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464d74)
  store %struct.Memory* %call_464d74, %struct.Memory** %MEMORY

  ; Code: movq %r14, (%rsp)	 RIP: 464d7b	 Bytes: 4
  %loadMem_464d7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464d7b = call %struct.Memory* @routine_movq__r14____rsp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464d7b)
  store %struct.Memory* %call_464d7b, %struct.Memory** %MEMORY

  ; Code: movq -0x360(%rbp), %r15	 RIP: 464d7f	 Bytes: 7
  %loadMem_464d7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464d7f = call %struct.Memory* @routine_movq_MINUS0x360__rbp____r15(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464d7f)
  store %struct.Memory* %call_464d7f, %struct.Memory** %MEMORY

  ; Code: movq %r15, 0x8(%rsp)	 RIP: 464d86	 Bytes: 5
  %loadMem_464d86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464d86 = call %struct.Memory* @routine_movq__r15__0x8__rsp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464d86)
  store %struct.Memory* %call_464d86, %struct.Memory** %MEMORY

  ; Code: movq -0x358(%rbp), %r12	 RIP: 464d8b	 Bytes: 7
  %loadMem_464d8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464d8b = call %struct.Memory* @routine_movq_MINUS0x358__rbp____r12(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464d8b)
  store %struct.Memory* %call_464d8b, %struct.Memory** %MEMORY

  ; Code: movq %r12, 0x10(%rsp)	 RIP: 464d92	 Bytes: 5
  %loadMem_464d92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464d92 = call %struct.Memory* @routine_movq__r12__0x10__rsp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464d92)
  store %struct.Memory* %call_464d92, %struct.Memory** %MEMORY

  ; Code: movl -0x36c(%rbp), %r13d	 RIP: 464d97	 Bytes: 7
  %loadMem_464d97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464d97 = call %struct.Memory* @routine_movl_MINUS0x36c__rbp____r13d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464d97)
  store %struct.Memory* %call_464d97, %struct.Memory** %MEMORY

  ; Code: movl %r13d, 0x18(%rsp)	 RIP: 464d9e	 Bytes: 5
  %loadMem_464d9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464d9e = call %struct.Memory* @routine_movl__r13d__0x18__rsp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464d9e)
  store %struct.Memory* %call_464d9e, %struct.Memory** %MEMORY

  ; Code: callq .komaster_trymove	 RIP: 464da3	 Bytes: 5
  %loadMem1_464da3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_464da3 = call %struct.Memory* @routine_callq_.komaster_trymove(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_464da3, i64 -352179, i64 5, i64 5)
  store %struct.Memory* %call1_464da3, %struct.Memory** %MEMORY

  %loadMem2_464da3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_464da3 = load i64, i64* %3
  %call2_464da3 = call %struct.Memory* @sub_40edf0.komaster_trymove(%struct.State* %0, i64  %loadPC_464da3, %struct.Memory* %loadMem2_464da3)
  store %struct.Memory* %call2_464da3, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 464da8	 Bytes: 3
  %loadMem_464da8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464da8 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464da8)
  store %struct.Memory* %call_464da8, %struct.Memory** %MEMORY

  ; Code: je .L_464ebf	 RIP: 464dab	 Bytes: 6
  %loadMem_464dab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464dab = call %struct.Memory* @routine_je_.L_464ebf(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464dab, i8* %BRANCH_TAKEN, i64 276, i64 6, i64 6)
  store %struct.Memory* %call_464dab, %struct.Memory** %MEMORY

  %loadBr_464dab = load i8, i8* %BRANCH_TAKEN
  %cmpBr_464dab = icmp eq i8 %loadBr_464dab, 1
  br i1 %cmpBr_464dab, label %block_.L_464ebf, label %block_464db1

block_464db1:
  ; Code: cmpl $0x0, -0x260(%rbp)	 RIP: 464db1	 Bytes: 7
  %loadMem_464db1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464db1 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x260__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464db1)
  store %struct.Memory* %call_464db1, %struct.Memory** %MEMORY

  ; Code: jne .L_464e81	 RIP: 464db8	 Bytes: 6
  %loadMem_464db8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464db8 = call %struct.Memory* @routine_jne_.L_464e81(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464db8, i8* %BRANCH_TAKEN, i64 201, i64 6, i64 6)
  store %struct.Memory* %call_464db8, %struct.Memory** %MEMORY

  %loadBr_464db8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_464db8 = icmp eq i8 %loadBr_464db8, 1
  br i1 %cmpBr_464db8, label %block_.L_464e81, label %block_464dbe

block_464dbe:
  ; Code: xorl %eax, %eax	 RIP: 464dbe	 Bytes: 2
  %loadMem_464dbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464dbe = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464dbe)
  store %struct.Memory* %call_464dbe, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 464dc0	 Bytes: 2
  %loadMem_464dc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464dc0 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464dc0)
  store %struct.Memory* %call_464dc0, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %edi	 RIP: 464dc2	 Bytes: 3
  %loadMem_464dc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464dc2 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464dc2)
  store %struct.Memory* %call_464dc2, %struct.Memory** %MEMORY

  ; Code: movl -0x258(%rbp), %edx	 RIP: 464dc5	 Bytes: 6
  %loadMem_464dc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464dc5 = call %struct.Memory* @routine_movl_MINUS0x258__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464dc5)
  store %struct.Memory* %call_464dc5, %struct.Memory** %MEMORY

  ; Code: movl -0x25c(%rbp), %ecx	 RIP: 464dcb	 Bytes: 6
  %loadMem_464dcb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464dcb = call %struct.Memory* @routine_movl_MINUS0x25c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464dcb)
  store %struct.Memory* %call_464dcb, %struct.Memory** %MEMORY

  ; Code: callq .do_attack	 RIP: 464dd1	 Bytes: 5
  %loadMem1_464dd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_464dd1 = call %struct.Memory* @routine_callq_.do_attack(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_464dd1, i64 -28913, i64 5, i64 5)
  store %struct.Memory* %call1_464dd1, %struct.Memory** %MEMORY

  %loadMem2_464dd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_464dd1 = load i64, i64* %3
  %call2_464dd1 = call %struct.Memory* @sub_45dce0.do_attack(%struct.State* %0, i64  %loadPC_464dd1, %struct.Memory* %loadMem2_464dd1)
  store %struct.Memory* %call2_464dd1, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x264(%rbp)	 RIP: 464dd6	 Bytes: 6
  %loadMem_464dd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464dd6 = call %struct.Memory* @routine_movl__eax__MINUS0x264__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464dd6)
  store %struct.Memory* %call_464dd6, %struct.Memory** %MEMORY

  ; Code: callq .popgo	 RIP: 464ddc	 Bytes: 5
  %loadMem1_464ddc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_464ddc = call %struct.Memory* @routine_callq_.popgo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_464ddc, i64 -356476, i64 5, i64 5)
  store %struct.Memory* %call1_464ddc, %struct.Memory** %MEMORY

  %loadMem2_464ddc = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_464ddc = load i64, i64* %3
  %call2_464ddc = call %struct.Memory* @sub_40dd60.popgo(%struct.State* %0, i64  %loadPC_464ddc, %struct.Memory* %loadMem2_464ddc)
  store %struct.Memory* %call2_464ddc, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0x264(%rbp)	 RIP: 464de1	 Bytes: 7
  %loadMem_464de1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464de1 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x264__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464de1)
  store %struct.Memory* %call_464de1, %struct.Memory** %MEMORY

  ; Code: jne .L_464e41	 RIP: 464de8	 Bytes: 6
  %loadMem_464de8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464de8 = call %struct.Memory* @routine_jne_.L_464e41(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464de8, i8* %BRANCH_TAKEN, i64 89, i64 6, i64 6)
  store %struct.Memory* %call_464de8, %struct.Memory** %MEMORY

  %loadBr_464de8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_464de8 = icmp eq i8 %loadBr_464de8, 1
  br i1 %cmpBr_464de8, label %block_.L_464e41, label %block_464dee

block_464dee:
  ; Code: cmpq $0x0, -0x38(%rbp)	 RIP: 464dee	 Bytes: 5
  %loadMem_464dee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464dee = call %struct.Memory* @routine_cmpq__0x0__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464dee)
  store %struct.Memory* %call_464dee, %struct.Memory** %MEMORY

  ; Code: je .L_464e02	 RIP: 464df3	 Bytes: 6
  %loadMem_464df3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464df3 = call %struct.Memory* @routine_je_.L_464e02(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464df3, i8* %BRANCH_TAKEN, i64 15, i64 6, i64 6)
  store %struct.Memory* %call_464df3, %struct.Memory** %MEMORY

  %loadBr_464df3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_464df3 = icmp eq i8 %loadBr_464df3, 1
  br i1 %cmpBr_464df3, label %block_.L_464e02, label %block_464df9

block_464df9:
  ; Code: movl -0x4c(%rbp), %eax	 RIP: 464df9	 Bytes: 3
  %loadMem_464df9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464df9 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464df9)
  store %struct.Memory* %call_464df9, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rcx	 RIP: 464dfc	 Bytes: 4
  %loadMem_464dfc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464dfc = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464dfc)
  store %struct.Memory* %call_464dfc, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx)	 RIP: 464e00	 Bytes: 2
  %loadMem_464e00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464e00 = call %struct.Memory* @routine_movl__eax____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464e00)
  store %struct.Memory* %call_464e00, %struct.Memory** %MEMORY

  ; Code: .L_464e02:	 RIP: 464e02	 Bytes: 0
  br label %block_.L_464e02
block_.L_464e02:

  ; Code: cmpq $0x0, 0xab0ef8	 RIP: 464e02	 Bytes: 9
  %loadMem_464e02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464e02 = call %struct.Memory* @routine_cmpq__0x0__0xab0ef8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464e02)
  store %struct.Memory* %call_464e02, %struct.Memory** %MEMORY

  ; Code: je .L_464e35	 RIP: 464e0b	 Bytes: 6
  %loadMem_464e0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464e0b = call %struct.Memory* @routine_je_.L_464e35(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464e0b, i8* %BRANCH_TAKEN, i64 42, i64 6, i64 6)
  store %struct.Memory* %call_464e0b, %struct.Memory** %MEMORY

  %loadBr_464e0b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_464e0b = icmp eq i8 %loadBr_464e0b, 1
  br i1 %cmpBr_464e0b, label %block_.L_464e35, label %block_464e11

block_464e11:
  ; Code: movl $0x5, %ecx	 RIP: 464e11	 Bytes: 5
  %loadMem_464e11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464e11 = call %struct.Memory* @routine_movl__0x5___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464e11)
  store %struct.Memory* %call_464e11, %struct.Memory** %MEMORY

  ; Code: movq $0x57fd5d, %r8	 RIP: 464e16	 Bytes: 10
  %loadMem_464e16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464e16 = call %struct.Memory* @routine_movq__0x57fd5d___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464e16)
  store %struct.Memory* %call_464e16, %struct.Memory** %MEMORY

  ; Code: movq -0x238(%rbp), %rdi	 RIP: 464e20	 Bytes: 7
  %loadMem_464e20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464e20 = call %struct.Memory* @routine_movq_MINUS0x238__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464e20)
  store %struct.Memory* %call_464e20, %struct.Memory** %MEMORY

  ; Code: movl -0x23c(%rbp), %esi	 RIP: 464e27	 Bytes: 6
  %loadMem_464e27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464e27 = call %struct.Memory* @routine_movl_MINUS0x23c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464e27)
  store %struct.Memory* %call_464e27, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %edx	 RIP: 464e2d	 Bytes: 3
  %loadMem_464e2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464e2d = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464e2d)
  store %struct.Memory* %call_464e2d, %struct.Memory** %MEMORY

  ; Code: callq .sgf_trace	 RIP: 464e30	 Bytes: 5
  %loadMem1_464e30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_464e30 = call %struct.Memory* @routine_callq_.sgf_trace(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_464e30, i64 -314992, i64 5, i64 5)
  store %struct.Memory* %call1_464e30, %struct.Memory** %MEMORY

  %loadMem2_464e30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_464e30 = load i64, i64* %3
  %call2_464e30 = call %struct.Memory* @sub_417fc0.sgf_trace(%struct.State* %0, i64  %loadPC_464e30, %struct.Memory* %loadMem2_464e30)
  store %struct.Memory* %call2_464e30, %struct.Memory** %MEMORY

  ; Code: .L_464e35:	 RIP: 464e35	 Bytes: 0
  br label %block_.L_464e35
block_.L_464e35:

  ; Code: movl $0x5, -0x2c(%rbp)	 RIP: 464e35	 Bytes: 7
  %loadMem_464e35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464e35 = call %struct.Memory* @routine_movl__0x5__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464e35)
  store %struct.Memory* %call_464e35, %struct.Memory** %MEMORY

  ; Code: jmpq .L_465536	 RIP: 464e3c	 Bytes: 5
  %loadMem_464e3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464e3c = call %struct.Memory* @routine_jmpq_.L_465536(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464e3c, i64 1786, i64 5)
  store %struct.Memory* %call_464e3c, %struct.Memory** %MEMORY

  br label %block_.L_465536

  ; Code: .L_464e41:	 RIP: 464e41	 Bytes: 0
block_.L_464e41:

  ; Code: movl $0x5, %eax	 RIP: 464e41	 Bytes: 5
  %loadMem_464e41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464e41 = call %struct.Memory* @routine_movl__0x5___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464e41)
  store %struct.Memory* %call_464e41, %struct.Memory** %MEMORY

  ; Code: subl -0x264(%rbp), %eax	 RIP: 464e46	 Bytes: 6
  %loadMem_464e46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464e46 = call %struct.Memory* @routine_subl_MINUS0x264__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464e46)
  store %struct.Memory* %call_464e46, %struct.Memory** %MEMORY

  ; Code: cmpl -0x224(%rbp), %eax	 RIP: 464e4c	 Bytes: 6
  %loadMem_464e4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464e4c = call %struct.Memory* @routine_cmpl_MINUS0x224__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464e4c)
  store %struct.Memory* %call_464e4c, %struct.Memory** %MEMORY

  ; Code: jle .L_464e72	 RIP: 464e52	 Bytes: 6
  %loadMem_464e52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464e52 = call %struct.Memory* @routine_jle_.L_464e72(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464e52, i8* %BRANCH_TAKEN, i64 32, i64 6, i64 6)
  store %struct.Memory* %call_464e52, %struct.Memory** %MEMORY

  %loadBr_464e52 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_464e52 = icmp eq i8 %loadBr_464e52, 1
  br i1 %cmpBr_464e52, label %block_.L_464e72, label %block_464e58

block_464e58:
  ; Code: movl $0x5, %eax	 RIP: 464e58	 Bytes: 5
  %loadMem_464e58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464e58 = call %struct.Memory* @routine_movl__0x5___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464e58)
  store %struct.Memory* %call_464e58, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %ecx	 RIP: 464e5d	 Bytes: 3
  %loadMem_464e5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464e5d = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464e5d)
  store %struct.Memory* %call_464e5d, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x220(%rbp)	 RIP: 464e60	 Bytes: 6
  %loadMem_464e60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464e60 = call %struct.Memory* @routine_movl__ecx__MINUS0x220__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464e60)
  store %struct.Memory* %call_464e60, %struct.Memory** %MEMORY

  ; Code: subl -0x264(%rbp), %eax	 RIP: 464e66	 Bytes: 6
  %loadMem_464e66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464e66 = call %struct.Memory* @routine_subl_MINUS0x264__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464e66)
  store %struct.Memory* %call_464e66, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x224(%rbp)	 RIP: 464e6c	 Bytes: 6
  %loadMem_464e6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464e6c = call %struct.Memory* @routine_movl__eax__MINUS0x224__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464e6c)
  store %struct.Memory* %call_464e6c, %struct.Memory** %MEMORY

  ; Code: .L_464e72:	 RIP: 464e72	 Bytes: 0
  br label %block_.L_464e72
block_.L_464e72:

  ; Code: jmpq .L_464e77	 RIP: 464e72	 Bytes: 5
  %loadMem_464e72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464e72 = call %struct.Memory* @routine_jmpq_.L_464e77(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464e72, i64 5, i64 5)
  store %struct.Memory* %call_464e72, %struct.Memory** %MEMORY

  br label %block_.L_464e77

  ; Code: .L_464e77:	 RIP: 464e77	 Bytes: 0
block_.L_464e77:

  ; Code: jmpq .L_464e7c	 RIP: 464e77	 Bytes: 5
  %loadMem_464e77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464e77 = call %struct.Memory* @routine_jmpq_.L_464e7c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464e77, i64 5, i64 5)
  store %struct.Memory* %call_464e77, %struct.Memory** %MEMORY

  br label %block_.L_464e7c

  ; Code: .L_464e7c:	 RIP: 464e7c	 Bytes: 0
block_.L_464e7c:

  ; Code: jmpq .L_464eba	 RIP: 464e7c	 Bytes: 5
  %loadMem_464e7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464e7c = call %struct.Memory* @routine_jmpq_.L_464eba(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464e7c, i64 62, i64 5)
  store %struct.Memory* %call_464e7c, %struct.Memory** %MEMORY

  br label %block_.L_464eba

  ; Code: .L_464e81:	 RIP: 464e81	 Bytes: 0
block_.L_464e81:

  ; Code: xorl %eax, %eax	 RIP: 464e81	 Bytes: 2
  %loadMem_464e81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464e81 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464e81)
  store %struct.Memory* %call_464e81, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 464e83	 Bytes: 2
  %loadMem_464e83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464e83 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464e83)
  store %struct.Memory* %call_464e83, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %edi	 RIP: 464e85	 Bytes: 3
  %loadMem_464e85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464e85 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464e85)
  store %struct.Memory* %call_464e85, %struct.Memory** %MEMORY

  ; Code: movl -0x258(%rbp), %edx	 RIP: 464e88	 Bytes: 6
  %loadMem_464e88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464e88 = call %struct.Memory* @routine_movl_MINUS0x258__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464e88)
  store %struct.Memory* %call_464e88, %struct.Memory** %MEMORY

  ; Code: movl -0x25c(%rbp), %ecx	 RIP: 464e8e	 Bytes: 6
  %loadMem_464e8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464e8e = call %struct.Memory* @routine_movl_MINUS0x25c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464e8e)
  store %struct.Memory* %call_464e8e, %struct.Memory** %MEMORY

  ; Code: callq .do_attack	 RIP: 464e94	 Bytes: 5
  %loadMem1_464e94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_464e94 = call %struct.Memory* @routine_callq_.do_attack(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_464e94, i64 -29108, i64 5, i64 5)
  store %struct.Memory* %call1_464e94, %struct.Memory** %MEMORY

  %loadMem2_464e94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_464e94 = load i64, i64* %3
  %call2_464e94 = call %struct.Memory* @sub_45dce0.do_attack(%struct.State* %0, i64  %loadPC_464e94, %struct.Memory* %loadMem2_464e94)
  store %struct.Memory* %call2_464e94, %struct.Memory** %MEMORY

  ; Code: cmpl $0x5, %eax	 RIP: 464e99	 Bytes: 3
  %loadMem_464e99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464e99 = call %struct.Memory* @routine_cmpl__0x5___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464e99)
  store %struct.Memory* %call_464e99, %struct.Memory** %MEMORY

  ; Code: je .L_464eb5	 RIP: 464e9c	 Bytes: 6
  %loadMem_464e9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464e9c = call %struct.Memory* @routine_je_.L_464eb5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464e9c, i8* %BRANCH_TAKEN, i64 25, i64 6, i64 6)
  store %struct.Memory* %call_464e9c, %struct.Memory** %MEMORY

  %loadBr_464e9c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_464e9c = icmp eq i8 %loadBr_464e9c, 1
  br i1 %cmpBr_464e9c, label %block_.L_464eb5, label %block_464ea2

block_464ea2:
  ; Code: movl -0x4c(%rbp), %eax	 RIP: 464ea2	 Bytes: 3
  %loadMem_464ea2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464ea2 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464ea2)
  store %struct.Memory* %call_464ea2, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x220(%rbp)	 RIP: 464ea5	 Bytes: 6
  %loadMem_464ea5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464ea5 = call %struct.Memory* @routine_movl__eax__MINUS0x220__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464ea5)
  store %struct.Memory* %call_464ea5, %struct.Memory** %MEMORY

  ; Code: movl $0x1, -0x224(%rbp)	 RIP: 464eab	 Bytes: 10
  %loadMem_464eab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464eab = call %struct.Memory* @routine_movl__0x1__MINUS0x224__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464eab)
  store %struct.Memory* %call_464eab, %struct.Memory** %MEMORY

  ; Code: .L_464eb5:	 RIP: 464eb5	 Bytes: 0
  br label %block_.L_464eb5
block_.L_464eb5:

  ; Code: callq .popgo	 RIP: 464eb5	 Bytes: 5
  %loadMem1_464eb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_464eb5 = call %struct.Memory* @routine_callq_.popgo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_464eb5, i64 -356693, i64 5, i64 5)
  store %struct.Memory* %call1_464eb5, %struct.Memory** %MEMORY

  %loadMem2_464eb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_464eb5 = load i64, i64* %3
  %call2_464eb5 = call %struct.Memory* @sub_40dd60.popgo(%struct.State* %0, i64  %loadPC_464eb5, %struct.Memory* %loadMem2_464eb5)
  store %struct.Memory* %call2_464eb5, %struct.Memory** %MEMORY

  ; Code: .L_464eba:	 RIP: 464eba	 Bytes: 0
  br label %block_.L_464eba
block_.L_464eba:

  ; Code: jmpq .L_464ebf	 RIP: 464eba	 Bytes: 5
  %loadMem_464eba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464eba = call %struct.Memory* @routine_jmpq_.L_464ebf(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464eba, i64 5, i64 5)
  store %struct.Memory* %call_464eba, %struct.Memory** %MEMORY

  br label %block_.L_464ebf

  ; Code: .L_464ebf:	 RIP: 464ebf	 Bytes: 0
block_.L_464ebf:

  ; Code: jmpq .L_464ec4	 RIP: 464ebf	 Bytes: 5
  %loadMem_464ebf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464ebf = call %struct.Memory* @routine_jmpq_.L_464ec4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464ebf, i64 5, i64 5)
  store %struct.Memory* %call_464ebf, %struct.Memory** %MEMORY

  br label %block_.L_464ec4

  ; Code: .L_464ec4:	 RIP: 464ec4	 Bytes: 0
block_.L_464ec4:

  ; Code: movl -0x228(%rbp), %eax	 RIP: 464ec4	 Bytes: 6
  %loadMem_464ec4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464ec4 = call %struct.Memory* @routine_movl_MINUS0x228__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464ec4)
  store %struct.Memory* %call_464ec4, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 464eca	 Bytes: 3
  %loadMem_464eca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464eca = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464eca)
  store %struct.Memory* %call_464eca, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x228(%rbp)	 RIP: 464ecd	 Bytes: 6
  %loadMem_464ecd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464ecd = call %struct.Memory* @routine_movl__eax__MINUS0x228__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464ecd)
  store %struct.Memory* %call_464ecd, %struct.Memory** %MEMORY

  ; Code: jmpq .L_464c7b	 RIP: 464ed3	 Bytes: 5
  %loadMem_464ed3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464ed3 = call %struct.Memory* @routine_jmpq_.L_464c7b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464ed3, i64 -600, i64 5)
  store %struct.Memory* %call_464ed3, %struct.Memory** %MEMORY

  br label %block_.L_464c7b

  ; Code: .L_464ed8:	 RIP: 464ed8	 Bytes: 0
block_.L_464ed8:

  ; Code: movl -0x88(%rbp), %eax	 RIP: 464ed8	 Bytes: 6
  %loadMem_464ed8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464ed8 = call %struct.Memory* @routine_movl_MINUS0x88__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464ed8)
  store %struct.Memory* %call_464ed8, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x21c(%rbp)	 RIP: 464ede	 Bytes: 6
  %loadMem_464ede = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464ede = call %struct.Memory* @routine_movl__eax__MINUS0x21c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464ede)
  store %struct.Memory* %call_464ede, %struct.Memory** %MEMORY

  ; Code: movl 0xb54ce4, %eax	 RIP: 464ee4	 Bytes: 7
  %loadMem_464ee4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464ee4 = call %struct.Memory* @routine_movl_0xb54ce4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464ee4)
  store %struct.Memory* %call_464ee4, %struct.Memory** %MEMORY

  ; Code: cmpl 0xafd960, %eax	 RIP: 464eeb	 Bytes: 7
  %loadMem_464eeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464eeb = call %struct.Memory* @routine_cmpl_0xafd960___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464eeb)
  store %struct.Memory* %call_464eeb, %struct.Memory** %MEMORY

  ; Code: jg .L_464f0c	 RIP: 464ef2	 Bytes: 6
  %loadMem_464ef2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464ef2 = call %struct.Memory* @routine_jg_.L_464f0c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464ef2, i8* %BRANCH_TAKEN, i64 26, i64 6, i64 6)
  store %struct.Memory* %call_464ef2, %struct.Memory** %MEMORY

  %loadBr_464ef2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_464ef2 = icmp eq i8 %loadBr_464ef2, 1
  br i1 %cmpBr_464ef2, label %block_.L_464f0c, label %block_464ef8

block_464ef8:
  ; Code: movl $0x4, %esi	 RIP: 464ef8	 Bytes: 5
  %loadMem_464ef8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464ef8 = call %struct.Memory* @routine_movl__0x4___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464ef8)
  store %struct.Memory* %call_464ef8, %struct.Memory** %MEMORY

  ; Code: leaq -0x218(%rbp), %rdx	 RIP: 464efd	 Bytes: 7
  %loadMem_464efd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464efd = call %struct.Memory* @routine_leaq_MINUS0x218__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464efd)
  store %struct.Memory* %call_464efd, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %edi	 RIP: 464f04	 Bytes: 3
  %loadMem_464f04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464f04 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464f04)
  store %struct.Memory* %call_464f04, %struct.Memory** %MEMORY

  ; Code: callq .superstring_breakchain_moves	 RIP: 464f07	 Bytes: 5
  %loadMem1_464f07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_464f07 = call %struct.Memory* @routine_callq_.superstring_breakchain_moves(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_464f07, i64 13161, i64 5, i64 5)
  store %struct.Memory* %call1_464f07, %struct.Memory** %MEMORY

  %loadMem2_464f07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_464f07 = load i64, i64* %3
  %call2_464f07 = call %struct.Memory* @sub_468270.superstring_breakchain_moves(%struct.State* %0, i64  %loadPC_464f07, %struct.Memory* %loadMem2_464f07)
  store %struct.Memory* %call2_464f07, %struct.Memory** %MEMORY

  ; Code: .L_464f0c:	 RIP: 464f0c	 Bytes: 0
  br label %block_.L_464f0c
block_.L_464f0c:

  ; Code: movl 0xb54ce4, %eax	 RIP: 464f0c	 Bytes: 7
  %loadMem_464f0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464f0c = call %struct.Memory* @routine_movl_0xb54ce4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464f0c)
  store %struct.Memory* %call_464f0c, %struct.Memory** %MEMORY

  ; Code: cmpl 0xafd960, %eax	 RIP: 464f13	 Bytes: 7
  %loadMem_464f13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464f13 = call %struct.Memory* @routine_cmpl_0xafd960___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464f13)
  store %struct.Memory* %call_464f13, %struct.Memory** %MEMORY

  ; Code: jg .L_465109	 RIP: 464f1a	 Bytes: 6
  %loadMem_464f1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464f1a = call %struct.Memory* @routine_jg_.L_465109(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464f1a, i8* %BRANCH_TAKEN, i64 495, i64 6, i64 6)
  store %struct.Memory* %call_464f1a, %struct.Memory** %MEMORY

  %loadBr_464f1a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_464f1a = icmp eq i8 %loadBr_464f1a, 1
  br i1 %cmpBr_464f1a, label %block_.L_465109, label %block_464f20

block_464f20:
  ; Code: leaq -0x268(%rbp), %rsi	 RIP: 464f20	 Bytes: 7
  %loadMem_464f20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464f20 = call %struct.Memory* @routine_leaq_MINUS0x268__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464f20)
  store %struct.Memory* %call_464f20, %struct.Memory** %MEMORY

  ; Code: movl $0x3, %ecx	 RIP: 464f27	 Bytes: 5
  %loadMem_464f27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464f27 = call %struct.Memory* @routine_movl__0x3___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464f27)
  store %struct.Memory* %call_464f27, %struct.Memory** %MEMORY

  ; Code: leaq -0x2d0(%rbp), %rdx	 RIP: 464f2c	 Bytes: 7
  %loadMem_464f2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464f2c = call %struct.Memory* @routine_leaq_MINUS0x2d0__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464f2c)
  store %struct.Memory* %call_464f2c, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %edi	 RIP: 464f33	 Bytes: 3
  %loadMem_464f33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464f33 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464f33)
  store %struct.Memory* %call_464f33, %struct.Memory** %MEMORY

  ; Code: callq .find_superstring_liberties	 RIP: 464f36	 Bytes: 5
  %loadMem1_464f36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_464f36 = call %struct.Memory* @routine_callq_.find_superstring_liberties(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_464f36, i64 94586, i64 5, i64 5)
  store %struct.Memory* %call1_464f36, %struct.Memory** %MEMORY

  %loadMem2_464f36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_464f36 = load i64, i64* %3
  %call2_464f36 = call %struct.Memory* @sub_47c0b0.find_superstring_liberties(%struct.State* %0, i64  %loadPC_464f36, %struct.Memory* %loadMem2_464f36)
  store %struct.Memory* %call2_464f36, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x228(%rbp)	 RIP: 464f3b	 Bytes: 10
  %loadMem_464f3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464f3b = call %struct.Memory* @routine_movl__0x0__MINUS0x228__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464f3b)
  store %struct.Memory* %call_464f3b, %struct.Memory** %MEMORY

  ; Code: .L_464f45:	 RIP: 464f45	 Bytes: 0
  br label %block_.L_464f45
block_.L_464f45:

  ; Code: movl -0x228(%rbp), %eax	 RIP: 464f45	 Bytes: 6
  %loadMem_464f45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464f45 = call %struct.Memory* @routine_movl_MINUS0x228__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464f45)
  store %struct.Memory* %call_464f45, %struct.Memory** %MEMORY

  ; Code: cmpl -0x268(%rbp), %eax	 RIP: 464f4b	 Bytes: 6
  %loadMem_464f4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464f4b = call %struct.Memory* @routine_cmpl_MINUS0x268__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464f4b)
  store %struct.Memory* %call_464f4b, %struct.Memory** %MEMORY

  ; Code: jge .L_46508f	 RIP: 464f51	 Bytes: 6
  %loadMem_464f51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464f51 = call %struct.Memory* @routine_jge_.L_46508f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464f51, i8* %BRANCH_TAKEN, i64 318, i64 6, i64 6)
  store %struct.Memory* %call_464f51, %struct.Memory** %MEMORY

  %loadBr_464f51 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_464f51 = icmp eq i8 %loadBr_464f51, 1
  br i1 %cmpBr_464f51, label %block_.L_46508f, label %block_464f57

block_464f57:
  ; Code: movslq -0x228(%rbp), %rax	 RIP: 464f57	 Bytes: 7
  %loadMem_464f57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464f57 = call %struct.Memory* @routine_movslq_MINUS0x228__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464f57)
  store %struct.Memory* %call_464f57, %struct.Memory** %MEMORY

  ; Code: movl -0x2d0(%rbp,%rax,4), %ecx	 RIP: 464f5e	 Bytes: 7
  %loadMem_464f5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464f5e = call %struct.Memory* @routine_movl_MINUS0x2d0__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464f5e)
  store %struct.Memory* %call_464f5e, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x2d4(%rbp)	 RIP: 464f65	 Bytes: 6
  %loadMem_464f65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464f65 = call %struct.Memory* @routine_movl__ecx__MINUS0x2d4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464f65)
  store %struct.Memory* %call_464f65, %struct.Memory** %MEMORY

  ; Code: movl -0x2d4(%rbp), %edi	 RIP: 464f6b	 Bytes: 6
  %loadMem_464f6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464f6b = call %struct.Memory* @routine_movl_MINUS0x2d4__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464f6b)
  store %struct.Memory* %call_464f6b, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %esi	 RIP: 464f71	 Bytes: 3
  %loadMem_464f71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464f71 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464f71)
  store %struct.Memory* %call_464f71, %struct.Memory** %MEMORY

  ; Code: callq .liberty_of_string	 RIP: 464f74	 Bytes: 5
  %loadMem1_464f74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_464f74 = call %struct.Memory* @routine_callq_.liberty_of_string(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_464f74, i64 -328900, i64 5, i64 5)
  store %struct.Memory* %call1_464f74, %struct.Memory** %MEMORY

  %loadMem2_464f74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_464f74 = load i64, i64* %3
  %call2_464f74 = call %struct.Memory* @sub_414ab0.liberty_of_string(%struct.State* %0, i64  %loadPC_464f74, %struct.Memory* %loadMem2_464f74)
  store %struct.Memory* %call2_464f74, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 464f79	 Bytes: 3
  %loadMem_464f79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464f79 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464f79)
  store %struct.Memory* %call_464f79, %struct.Memory** %MEMORY

  ; Code: je .L_464f87	 RIP: 464f7c	 Bytes: 6
  %loadMem_464f7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464f7c = call %struct.Memory* @routine_je_.L_464f87(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464f7c, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_464f7c, %struct.Memory** %MEMORY

  %loadBr_464f7c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_464f7c = icmp eq i8 %loadBr_464f7c, 1
  br i1 %cmpBr_464f7c, label %block_.L_464f87, label %block_464f82

block_464f82:
  ; Code: jmpq .L_46507b	 RIP: 464f82	 Bytes: 5
  %loadMem_464f82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464f82 = call %struct.Memory* @routine_jmpq_.L_46507b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464f82, i64 249, i64 5)
  store %struct.Memory* %call_464f82, %struct.Memory** %MEMORY

  br label %block_.L_46507b

  ; Code: .L_464f87:	 RIP: 464f87	 Bytes: 0
block_.L_464f87:

  ; Code: movl $0x2, %edx	 RIP: 464f87	 Bytes: 5
  %loadMem_464f87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464f87 = call %struct.Memory* @routine_movl__0x2___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464f87)
  store %struct.Memory* %call_464f87, %struct.Memory** %MEMORY

  ; Code: xorl %eax, %eax	 RIP: 464f8c	 Bytes: 2
  %loadMem_464f8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464f8c = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464f8c)
  store %struct.Memory* %call_464f8c, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 464f8e	 Bytes: 2
  %loadMem_464f8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464f8e = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464f8e)
  store %struct.Memory* %call_464f8e, %struct.Memory** %MEMORY

  ; Code: movl -0x2d4(%rbp), %edi	 RIP: 464f90	 Bytes: 6
  %loadMem_464f90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464f90 = call %struct.Memory* @routine_movl_MINUS0x2d4__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464f90)
  store %struct.Memory* %call_464f90, %struct.Memory** %MEMORY

  ; Code: movl -0x44(%rbp), %esi	 RIP: 464f96	 Bytes: 3
  %loadMem_464f96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464f96 = call %struct.Memory* @routine_movl_MINUS0x44__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464f96)
  store %struct.Memory* %call_464f96, %struct.Memory** %MEMORY

  ; Code: callq .approxlib	 RIP: 464f99	 Bytes: 5
  %loadMem1_464f99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_464f99 = call %struct.Memory* @routine_callq_.approxlib(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_464f99, i64 -342505, i64 5, i64 5)
  store %struct.Memory* %call1_464f99, %struct.Memory** %MEMORY

  %loadMem2_464f99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_464f99 = load i64, i64* %3
  %call2_464f99 = call %struct.Memory* @sub_4115b0.approxlib(%struct.State* %0, i64  %loadPC_464f99, %struct.Memory* %loadMem2_464f99)
  store %struct.Memory* %call2_464f99, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, %eax	 RIP: 464f9e	 Bytes: 3
  %loadMem_464f9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464f9e = call %struct.Memory* @routine_cmpl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464f9e)
  store %struct.Memory* %call_464f9e, %struct.Memory** %MEMORY

  ; Code: jle .L_465076	 RIP: 464fa1	 Bytes: 6
  %loadMem_464fa1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464fa1 = call %struct.Memory* @routine_jle_.L_465076(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464fa1, i8* %BRANCH_TAKEN, i64 213, i64 6, i64 6)
  store %struct.Memory* %call_464fa1, %struct.Memory** %MEMORY

  %loadBr_464fa1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_464fa1 = icmp eq i8 %loadBr_464fa1, 1
  br i1 %cmpBr_464fa1, label %block_.L_465076, label %block_464fa7

block_464fa7:
  ; Code: jmpq .L_464fac	 RIP: 464fa7	 Bytes: 5
  %loadMem_464fa7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464fa7 = call %struct.Memory* @routine_jmpq_.L_464fac(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464fa7, i64 5, i64 5)
  store %struct.Memory* %call_464fa7, %struct.Memory** %MEMORY

  br label %block_.L_464fac

  ; Code: .L_464fac:	 RIP: 464fac	 Bytes: 0
block_.L_464fac:

  ; Code: movl $0x0, -0x2d8(%rbp)	 RIP: 464fac	 Bytes: 10
  %loadMem_464fac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464fac = call %struct.Memory* @routine_movl__0x0__MINUS0x2d8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464fac)
  store %struct.Memory* %call_464fac, %struct.Memory** %MEMORY

  ; Code: .L_464fb6:	 RIP: 464fb6	 Bytes: 0
  br label %block_.L_464fb6
block_.L_464fb6:

  ; Code: movl -0x2d8(%rbp), %eax	 RIP: 464fb6	 Bytes: 6
  %loadMem_464fb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464fb6 = call %struct.Memory* @routine_movl_MINUS0x2d8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464fb6)
  store %struct.Memory* %call_464fb6, %struct.Memory** %MEMORY

  ; Code: cmpl -0x88(%rbp), %eax	 RIP: 464fbc	 Bytes: 6
  %loadMem_464fbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464fbc = call %struct.Memory* @routine_cmpl_MINUS0x88__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464fbc)
  store %struct.Memory* %call_464fbc, %struct.Memory** %MEMORY

  ; Code: jge .L_465018	 RIP: 464fc2	 Bytes: 6
  %loadMem_464fc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464fc2 = call %struct.Memory* @routine_jge_.L_465018(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464fc2, i8* %BRANCH_TAKEN, i64 86, i64 6, i64 6)
  store %struct.Memory* %call_464fc2, %struct.Memory** %MEMORY

  %loadBr_464fc2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_464fc2 = icmp eq i8 %loadBr_464fc2, 1
  br i1 %cmpBr_464fc2, label %block_.L_465018, label %block_464fc8

block_464fc8:
  ; Code: movslq -0x2d8(%rbp), %rax	 RIP: 464fc8	 Bytes: 7
  %loadMem_464fc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464fc8 = call %struct.Memory* @routine_movslq_MINUS0x2d8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464fc8)
  store %struct.Memory* %call_464fc8, %struct.Memory** %MEMORY

  ; Code: movl -0x218(%rbp,%rax,4), %ecx	 RIP: 464fcf	 Bytes: 7
  %loadMem_464fcf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464fcf = call %struct.Memory* @routine_movl_MINUS0x218__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464fcf)
  store %struct.Memory* %call_464fcf, %struct.Memory** %MEMORY

  ; Code: cmpl -0x2d4(%rbp), %ecx	 RIP: 464fd6	 Bytes: 6
  %loadMem_464fd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464fd6 = call %struct.Memory* @routine_cmpl_MINUS0x2d4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464fd6)
  store %struct.Memory* %call_464fd6, %struct.Memory** %MEMORY

  ; Code: jne .L_464fff	 RIP: 464fdc	 Bytes: 6
  %loadMem_464fdc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464fdc = call %struct.Memory* @routine_jne_.L_464fff(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464fdc, i8* %BRANCH_TAKEN, i64 35, i64 6, i64 6)
  store %struct.Memory* %call_464fdc, %struct.Memory** %MEMORY

  %loadBr_464fdc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_464fdc = icmp eq i8 %loadBr_464fdc, 1
  br i1 %cmpBr_464fdc, label %block_.L_464fff, label %block_464fe2

block_464fe2:
  ; Code: movslq -0x2d8(%rbp), %rax	 RIP: 464fe2	 Bytes: 7
  %loadMem_464fe2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464fe2 = call %struct.Memory* @routine_movslq_MINUS0x2d8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464fe2)
  store %struct.Memory* %call_464fe2, %struct.Memory** %MEMORY

  ; Code: movl -0x150(%rbp,%rax,4), %ecx	 RIP: 464fe9	 Bytes: 7
  %loadMem_464fe9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464fe9 = call %struct.Memory* @routine_movl_MINUS0x150__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464fe9)
  store %struct.Memory* %call_464fe9, %struct.Memory** %MEMORY

  ; Code: addl $0x0, %ecx	 RIP: 464ff0	 Bytes: 3
  %loadMem_464ff0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464ff0 = call %struct.Memory* @routine_addl__0x0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464ff0)
  store %struct.Memory* %call_464ff0, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x150(%rbp,%rax,4)	 RIP: 464ff3	 Bytes: 7
  %loadMem_464ff3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464ff3 = call %struct.Memory* @routine_movl__ecx__MINUS0x150__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464ff3)
  store %struct.Memory* %call_464ff3, %struct.Memory** %MEMORY

  ; Code: jmpq .L_465018	 RIP: 464ffa	 Bytes: 5
  %loadMem_464ffa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464ffa = call %struct.Memory* @routine_jmpq_.L_465018(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464ffa, i64 30, i64 5)
  store %struct.Memory* %call_464ffa, %struct.Memory** %MEMORY

  br label %block_.L_465018

  ; Code: .L_464fff:	 RIP: 464fff	 Bytes: 0
block_.L_464fff:

  ; Code: jmpq .L_465004	 RIP: 464fff	 Bytes: 5
  %loadMem_464fff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_464fff = call %struct.Memory* @routine_jmpq_.L_465004(%struct.State* %0, i64  0, %struct.Memory* %loadMem_464fff, i64 5, i64 5)
  store %struct.Memory* %call_464fff, %struct.Memory** %MEMORY

  br label %block_.L_465004

  ; Code: .L_465004:	 RIP: 465004	 Bytes: 0
block_.L_465004:

  ; Code: movl -0x2d8(%rbp), %eax	 RIP: 465004	 Bytes: 6
  %loadMem_465004 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465004 = call %struct.Memory* @routine_movl_MINUS0x2d8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465004)
  store %struct.Memory* %call_465004, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 46500a	 Bytes: 3
  %loadMem_46500a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46500a = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46500a)
  store %struct.Memory* %call_46500a, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2d8(%rbp)	 RIP: 46500d	 Bytes: 6
  %loadMem_46500d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46500d = call %struct.Memory* @routine_movl__eax__MINUS0x2d8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46500d)
  store %struct.Memory* %call_46500d, %struct.Memory** %MEMORY

  ; Code: jmpq .L_464fb6	 RIP: 465013	 Bytes: 5
  %loadMem_465013 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465013 = call %struct.Memory* @routine_jmpq_.L_464fb6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465013, i64 -93, i64 5)
  store %struct.Memory* %call_465013, %struct.Memory** %MEMORY

  br label %block_.L_464fb6

  ; Code: .L_465018:	 RIP: 465018	 Bytes: 0
block_.L_465018:

  ; Code: movl -0x2d8(%rbp), %eax	 RIP: 465018	 Bytes: 6
  %loadMem_465018 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465018 = call %struct.Memory* @routine_movl_MINUS0x2d8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465018)
  store %struct.Memory* %call_465018, %struct.Memory** %MEMORY

  ; Code: cmpl -0x88(%rbp), %eax	 RIP: 46501e	 Bytes: 6
  %loadMem_46501e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46501e = call %struct.Memory* @routine_cmpl_MINUS0x88__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46501e)
  store %struct.Memory* %call_46501e, %struct.Memory** %MEMORY

  ; Code: jne .L_46506c	 RIP: 465024	 Bytes: 6
  %loadMem_465024 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465024 = call %struct.Memory* @routine_jne_.L_46506c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465024, i8* %BRANCH_TAKEN, i64 72, i64 6, i64 6)
  store %struct.Memory* %call_465024, %struct.Memory** %MEMORY

  %loadBr_465024 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_465024 = icmp eq i8 %loadBr_465024, 1
  br i1 %cmpBr_465024, label %block_.L_46506c, label %block_46502a

block_46502a:
  ; Code: cmpl $0x32, -0x88(%rbp)	 RIP: 46502a	 Bytes: 7
  %loadMem_46502a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46502a = call %struct.Memory* @routine_cmpl__0x32__MINUS0x88__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46502a)
  store %struct.Memory* %call_46502a, %struct.Memory** %MEMORY

  ; Code: jge .L_46506c	 RIP: 465031	 Bytes: 6
  %loadMem_465031 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465031 = call %struct.Memory* @routine_jge_.L_46506c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465031, i8* %BRANCH_TAKEN, i64 59, i64 6, i64 6)
  store %struct.Memory* %call_465031, %struct.Memory** %MEMORY

  %loadBr_465031 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_465031 = icmp eq i8 %loadBr_465031, 1
  br i1 %cmpBr_465031, label %block_.L_46506c, label %block_465037

block_465037:
  ; Code: movl -0x2d4(%rbp), %eax	 RIP: 465037	 Bytes: 6
  %loadMem_465037 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465037 = call %struct.Memory* @routine_movl_MINUS0x2d4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465037)
  store %struct.Memory* %call_465037, %struct.Memory** %MEMORY

  ; Code: movslq -0x88(%rbp), %rcx	 RIP: 46503d	 Bytes: 7
  %loadMem_46503d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46503d = call %struct.Memory* @routine_movslq_MINUS0x88__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46503d)
  store %struct.Memory* %call_46503d, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x218(%rbp,%rcx,4)	 RIP: 465044	 Bytes: 7
  %loadMem_465044 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465044 = call %struct.Memory* @routine_movl__eax__MINUS0x218__rbp__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465044)
  store %struct.Memory* %call_465044, %struct.Memory** %MEMORY

  ; Code: movslq -0x88(%rbp), %rcx	 RIP: 46504b	 Bytes: 7
  %loadMem_46504b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46504b = call %struct.Memory* @routine_movslq_MINUS0x88__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46504b)
  store %struct.Memory* %call_46504b, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x150(%rbp,%rcx,4)	 RIP: 465052	 Bytes: 11
  %loadMem_465052 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465052 = call %struct.Memory* @routine_movl__0x0__MINUS0x150__rbp__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465052)
  store %struct.Memory* %call_465052, %struct.Memory** %MEMORY

  ; Code: movl -0x88(%rbp), %eax	 RIP: 46505d	 Bytes: 6
  %loadMem_46505d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46505d = call %struct.Memory* @routine_movl_MINUS0x88__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46505d)
  store %struct.Memory* %call_46505d, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 465063	 Bytes: 3
  %loadMem_465063 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465063 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465063)
  store %struct.Memory* %call_465063, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x88(%rbp)	 RIP: 465066	 Bytes: 6
  %loadMem_465066 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465066 = call %struct.Memory* @routine_movl__eax__MINUS0x88__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465066)
  store %struct.Memory* %call_465066, %struct.Memory** %MEMORY

  ; Code: .L_46506c:	 RIP: 46506c	 Bytes: 0
  br label %block_.L_46506c
block_.L_46506c:

  ; Code: jmpq .L_465071	 RIP: 46506c	 Bytes: 5
  %loadMem_46506c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46506c = call %struct.Memory* @routine_jmpq_.L_465071(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46506c, i64 5, i64 5)
  store %struct.Memory* %call_46506c, %struct.Memory** %MEMORY

  br label %block_.L_465071

  ; Code: .L_465071:	 RIP: 465071	 Bytes: 0
block_.L_465071:

  ; Code: jmpq .L_465076	 RIP: 465071	 Bytes: 5
  %loadMem_465071 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465071 = call %struct.Memory* @routine_jmpq_.L_465076(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465071, i64 5, i64 5)
  store %struct.Memory* %call_465071, %struct.Memory** %MEMORY

  br label %block_.L_465076

  ; Code: .L_465076:	 RIP: 465076	 Bytes: 0
block_.L_465076:

  ; Code: jmpq .L_46507b	 RIP: 465076	 Bytes: 5
  %loadMem_465076 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465076 = call %struct.Memory* @routine_jmpq_.L_46507b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465076, i64 5, i64 5)
  store %struct.Memory* %call_465076, %struct.Memory** %MEMORY

  br label %block_.L_46507b

  ; Code: .L_46507b:	 RIP: 46507b	 Bytes: 0
block_.L_46507b:

  ; Code: movl -0x228(%rbp), %eax	 RIP: 46507b	 Bytes: 6
  %loadMem_46507b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46507b = call %struct.Memory* @routine_movl_MINUS0x228__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46507b)
  store %struct.Memory* %call_46507b, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 465081	 Bytes: 3
  %loadMem_465081 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465081 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465081)
  store %struct.Memory* %call_465081, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x228(%rbp)	 RIP: 465084	 Bytes: 6
  %loadMem_465084 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465084 = call %struct.Memory* @routine_movl__eax__MINUS0x228__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465084)
  store %struct.Memory* %call_465084, %struct.Memory** %MEMORY

  ; Code: jmpq .L_464f45	 RIP: 46508a	 Bytes: 5
  %loadMem_46508a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46508a = call %struct.Memory* @routine_jmpq_.L_464f45(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46508a, i64 -325, i64 5)
  store %struct.Memory* %call_46508a, %struct.Memory** %MEMORY

  br label %block_.L_464f45

  ; Code: .L_46508f:	 RIP: 46508f	 Bytes: 0
block_.L_46508f:

  ; Code: movl $0x0, -0x228(%rbp)	 RIP: 46508f	 Bytes: 10
  %loadMem_46508f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46508f = call %struct.Memory* @routine_movl__0x0__MINUS0x228__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46508f)
  store %struct.Memory* %call_46508f, %struct.Memory** %MEMORY

  ; Code: .L_465099:	 RIP: 465099	 Bytes: 0
  br label %block_.L_465099
block_.L_465099:

  ; Code: movl -0x228(%rbp), %eax	 RIP: 465099	 Bytes: 6
  %loadMem_465099 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465099 = call %struct.Memory* @routine_movl_MINUS0x228__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465099)
  store %struct.Memory* %call_465099, %struct.Memory** %MEMORY

  ; Code: cmpl -0x268(%rbp), %eax	 RIP: 46509f	 Bytes: 6
  %loadMem_46509f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46509f = call %struct.Memory* @routine_cmpl_MINUS0x268__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46509f)
  store %struct.Memory* %call_46509f, %struct.Memory** %MEMORY

  ; Code: jge .L_465104	 RIP: 4650a5	 Bytes: 6
  %loadMem_4650a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4650a5 = call %struct.Memory* @routine_jge_.L_465104(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4650a5, i8* %BRANCH_TAKEN, i64 95, i64 6, i64 6)
  store %struct.Memory* %call_4650a5, %struct.Memory** %MEMORY

  %loadBr_4650a5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4650a5 = icmp eq i8 %loadBr_4650a5, 1
  br i1 %cmpBr_4650a5, label %block_.L_465104, label %block_4650ab

block_4650ab:
  ; Code: movslq -0x228(%rbp), %rax	 RIP: 4650ab	 Bytes: 7
  %loadMem_4650ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4650ab = call %struct.Memory* @routine_movslq_MINUS0x228__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4650ab)
  store %struct.Memory* %call_4650ab, %struct.Memory** %MEMORY

  ; Code: movl -0x2d0(%rbp,%rax,4), %ecx	 RIP: 4650b2	 Bytes: 7
  %loadMem_4650b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4650b2 = call %struct.Memory* @routine_movl_MINUS0x2d0__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4650b2)
  store %struct.Memory* %call_4650b2, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x2dc(%rbp)	 RIP: 4650b9	 Bytes: 6
  %loadMem_4650b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4650b9 = call %struct.Memory* @routine_movl__ecx__MINUS0x2dc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4650b9)
  store %struct.Memory* %call_4650b9, %struct.Memory** %MEMORY

  ; Code: movl -0x2dc(%rbp), %edi	 RIP: 4650bf	 Bytes: 6
  %loadMem_4650bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4650bf = call %struct.Memory* @routine_movl_MINUS0x2dc__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4650bf)
  store %struct.Memory* %call_4650bf, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %esi	 RIP: 4650c5	 Bytes: 3
  %loadMem_4650c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4650c5 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4650c5)
  store %struct.Memory* %call_4650c5, %struct.Memory** %MEMORY

  ; Code: callq .liberty_of_string	 RIP: 4650c8	 Bytes: 5
  %loadMem1_4650c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4650c8 = call %struct.Memory* @routine_callq_.liberty_of_string(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4650c8, i64 -329240, i64 5, i64 5)
  store %struct.Memory* %call1_4650c8, %struct.Memory** %MEMORY

  %loadMem2_4650c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4650c8 = load i64, i64* %3
  %call2_4650c8 = call %struct.Memory* @sub_414ab0.liberty_of_string(%struct.State* %0, i64  %loadPC_4650c8, %struct.Memory* %loadMem2_4650c8)
  store %struct.Memory* %call2_4650c8, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 4650cd	 Bytes: 3
  %loadMem_4650cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4650cd = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4650cd)
  store %struct.Memory* %call_4650cd, %struct.Memory** %MEMORY

  ; Code: je .L_4650db	 RIP: 4650d0	 Bytes: 6
  %loadMem_4650d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4650d0 = call %struct.Memory* @routine_je_.L_4650db(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4650d0, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_4650d0, %struct.Memory** %MEMORY

  %loadBr_4650d0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4650d0 = icmp eq i8 %loadBr_4650d0, 1
  br i1 %cmpBr_4650d0, label %block_.L_4650db, label %block_4650d6

block_4650d6:
  ; Code: jmpq .L_4650f0	 RIP: 4650d6	 Bytes: 5
  %loadMem_4650d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4650d6 = call %struct.Memory* @routine_jmpq_.L_4650f0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4650d6, i64 26, i64 5)
  store %struct.Memory* %call_4650d6, %struct.Memory** %MEMORY

  br label %block_.L_4650f0

  ; Code: .L_4650db:	 RIP: 4650db	 Bytes: 0
block_.L_4650db:

  ; Code: leaq -0x218(%rbp), %rdx	 RIP: 4650db	 Bytes: 7
  %loadMem_4650db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4650db = call %struct.Memory* @routine_leaq_MINUS0x218__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4650db)
  store %struct.Memory* %call_4650db, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %edi	 RIP: 4650e2	 Bytes: 3
  %loadMem_4650e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4650e2 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4650e2)
  store %struct.Memory* %call_4650e2, %struct.Memory** %MEMORY

  ; Code: movl -0x2dc(%rbp), %esi	 RIP: 4650e5	 Bytes: 6
  %loadMem_4650e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4650e5 = call %struct.Memory* @routine_movl_MINUS0x2dc__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4650e5)
  store %struct.Memory* %call_4650e5, %struct.Memory** %MEMORY

  ; Code: callq .special_rescue_moves	 RIP: 4650eb	 Bytes: 5
  %loadMem1_4650eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4650eb = call %struct.Memory* @routine_callq_.special_rescue_moves(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4650eb, i64 12261, i64 5, i64 5)
  store %struct.Memory* %call1_4650eb, %struct.Memory** %MEMORY

  %loadMem2_4650eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4650eb = load i64, i64* %3
  %call2_4650eb = call %struct.Memory* @sub_4680d0.special_rescue_moves(%struct.State* %0, i64  %loadPC_4650eb, %struct.Memory* %loadMem2_4650eb)
  store %struct.Memory* %call2_4650eb, %struct.Memory** %MEMORY

  ; Code: .L_4650f0:	 RIP: 4650f0	 Bytes: 0
  br label %block_.L_4650f0
block_.L_4650f0:

  ; Code: movl -0x228(%rbp), %eax	 RIP: 4650f0	 Bytes: 6
  %loadMem_4650f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4650f0 = call %struct.Memory* @routine_movl_MINUS0x228__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4650f0)
  store %struct.Memory* %call_4650f0, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4650f6	 Bytes: 3
  %loadMem_4650f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4650f6 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4650f6)
  store %struct.Memory* %call_4650f6, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x228(%rbp)	 RIP: 4650f9	 Bytes: 6
  %loadMem_4650f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4650f9 = call %struct.Memory* @routine_movl__eax__MINUS0x228__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4650f9)
  store %struct.Memory* %call_4650f9, %struct.Memory** %MEMORY

  ; Code: jmpq .L_465099	 RIP: 4650ff	 Bytes: 5
  %loadMem_4650ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4650ff = call %struct.Memory* @routine_jmpq_.L_465099(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4650ff, i64 -102, i64 5)
  store %struct.Memory* %call_4650ff, %struct.Memory** %MEMORY

  br label %block_.L_465099

  ; Code: .L_465104:	 RIP: 465104	 Bytes: 0
block_.L_465104:

  ; Code: jmpq .L_465109	 RIP: 465104	 Bytes: 5
  %loadMem_465104 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465104 = call %struct.Memory* @routine_jmpq_.L_465109(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465104, i64 5, i64 5)
  store %struct.Memory* %call_465104, %struct.Memory** %MEMORY

  br label %block_.L_465109

  ; Code: .L_465109:	 RIP: 465109	 Bytes: 0
block_.L_465109:

  ; Code: leaq -0x218(%rbp), %rsi	 RIP: 465109	 Bytes: 7
  %loadMem_465109 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465109 = call %struct.Memory* @routine_leaq_MINUS0x218__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465109)
  store %struct.Memory* %call_465109, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %edi	 RIP: 465110	 Bytes: 3
  %loadMem_465110 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465110 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465110)
  store %struct.Memory* %call_465110, %struct.Memory** %MEMORY

  ; Code: callq .break_chain2_defense_moves	 RIP: 465113	 Bytes: 5
  %loadMem1_465113 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_465113 = call %struct.Memory* @routine_callq_.break_chain2_defense_moves(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_465113, i64 6413, i64 5, i64 5)
  store %struct.Memory* %call1_465113, %struct.Memory** %MEMORY

  %loadMem2_465113 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_465113 = load i64, i64* %3
  %call2_465113 = call %struct.Memory* @sub_466a20.break_chain2_defense_moves(%struct.State* %0, i64  %loadPC_465113, %struct.Memory* %loadMem2_465113)
  store %struct.Memory* %call2_465113, %struct.Memory** %MEMORY

  ; Code: movl 0xb54ce4, %edi	 RIP: 465118	 Bytes: 7
  %loadMem_465118 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465118 = call %struct.Memory* @routine_movl_0xb54ce4___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465118)
  store %struct.Memory* %call_465118, %struct.Memory** %MEMORY

  ; Code: cmpl 0xb060b8, %edi	 RIP: 46511f	 Bytes: 7
  %loadMem_46511f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46511f = call %struct.Memory* @routine_cmpl_0xb060b8___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46511f)
  store %struct.Memory* %call_46511f, %struct.Memory** %MEMORY

  ; Code: jg .L_46513f	 RIP: 465126	 Bytes: 6
  %loadMem_465126 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465126 = call %struct.Memory* @routine_jg_.L_46513f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465126, i8* %BRANCH_TAKEN, i64 25, i64 6, i64 6)
  store %struct.Memory* %call_465126, %struct.Memory** %MEMORY

  %loadBr_465126 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_465126 = icmp eq i8 %loadBr_465126, 1
  br i1 %cmpBr_465126, label %block_.L_46513f, label %block_46512c

block_46512c:
  ; Code: leaq -0x218(%rbp), %rdx	 RIP: 46512c	 Bytes: 7
  %loadMem_46512c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46512c = call %struct.Memory* @routine_leaq_MINUS0x218__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46512c)
  store %struct.Memory* %call_46512c, %struct.Memory** %MEMORY

  ; Code: leaq -0x58(%rbp), %rsi	 RIP: 465133	 Bytes: 4
  %loadMem_465133 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465133 = call %struct.Memory* @routine_leaq_MINUS0x58__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465133)
  store %struct.Memory* %call_465133, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %edi	 RIP: 465137	 Bytes: 3
  %loadMem_465137 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465137 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465137)
  store %struct.Memory* %call_465137, %struct.Memory** %MEMORY

  ; Code: callq .special_rescue5_moves	 RIP: 46513a	 Bytes: 5
  %loadMem1_46513a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46513a = call %struct.Memory* @routine_callq_.special_rescue5_moves(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46513a, i64 13078, i64 5, i64 5)
  store %struct.Memory* %call1_46513a, %struct.Memory** %MEMORY

  %loadMem2_46513a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46513a = load i64, i64* %3
  %call2_46513a = call %struct.Memory* @sub_468450.special_rescue5_moves(%struct.State* %0, i64  %loadPC_46513a, %struct.Memory* %loadMem2_46513a)
  store %struct.Memory* %call2_46513a, %struct.Memory** %MEMORY

  ; Code: .L_46513f:	 RIP: 46513f	 Bytes: 0
  br label %block_.L_46513f
block_.L_46513f:

  ; Code: movl 0xb54ce4, %eax	 RIP: 46513f	 Bytes: 7
  %loadMem_46513f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46513f = call %struct.Memory* @routine_movl_0xb54ce4___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46513f)
  store %struct.Memory* %call_46513f, %struct.Memory** %MEMORY

  ; Code: cmpl 0xb8af28, %eax	 RIP: 465146	 Bytes: 7
  %loadMem_465146 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465146 = call %struct.Memory* @routine_cmpl_0xb8af28___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465146)
  store %struct.Memory* %call_465146, %struct.Memory** %MEMORY

  ; Code: jg .L_465162	 RIP: 46514d	 Bytes: 6
  %loadMem_46514d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46514d = call %struct.Memory* @routine_jg_.L_465162(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46514d, i8* %BRANCH_TAKEN, i64 21, i64 6, i64 6)
  store %struct.Memory* %call_46514d, %struct.Memory** %MEMORY

  %loadBr_46514d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46514d = icmp eq i8 %loadBr_46514d, 1
  br i1 %cmpBr_46514d, label %block_.L_465162, label %block_465153

block_465153:
  ; Code: leaq -0x218(%rbp), %rsi	 RIP: 465153	 Bytes: 7
  %loadMem_465153 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465153 = call %struct.Memory* @routine_leaq_MINUS0x218__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465153)
  store %struct.Memory* %call_465153, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %edi	 RIP: 46515a	 Bytes: 3
  %loadMem_46515a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46515a = call %struct.Memory* @routine_movl_MINUS0x30__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46515a)
  store %struct.Memory* %call_46515a, %struct.Memory** %MEMORY

  ; Code: callq .break_chain3_moves	 RIP: 46515d	 Bytes: 5
  %loadMem1_46515d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46515d = call %struct.Memory* @routine_callq_.break_chain3_moves(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46515d, i64 15347, i64 5, i64 5)
  store %struct.Memory* %call1_46515d, %struct.Memory** %MEMORY

  %loadMem2_46515d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46515d = load i64, i64* %3
  %call2_46515d = call %struct.Memory* @sub_468d50.break_chain3_moves(%struct.State* %0, i64  %loadPC_46515d, %struct.Memory* %loadMem2_46515d)
  store %struct.Memory* %call2_46515d, %struct.Memory** %MEMORY

  ; Code: .L_465162:	 RIP: 465162	 Bytes: 0
  br label %block_.L_465162
block_.L_465162:

  ; Code: leaq -0x218(%rbp), %rsi	 RIP: 465162	 Bytes: 7
  %loadMem_465162 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465162 = call %struct.Memory* @routine_leaq_MINUS0x218__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465162)
  store %struct.Memory* %call_465162, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %edi	 RIP: 465169	 Bytes: 3
  %loadMem_465169 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465169 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465169)
  store %struct.Memory* %call_465169, %struct.Memory** %MEMORY

  ; Code: movl -0x48(%rbp), %edx	 RIP: 46516c	 Bytes: 3
  %loadMem_46516c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46516c = call %struct.Memory* @routine_movl_MINUS0x48__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46516c)
  store %struct.Memory* %call_46516c, %struct.Memory** %MEMORY

  ; Code: movq -0x238(%rbp), %rcx	 RIP: 46516f	 Bytes: 7
  %loadMem_46516f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46516f = call %struct.Memory* @routine_movq_MINUS0x238__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46516f)
  store %struct.Memory* %call_46516f, %struct.Memory** %MEMORY

  ; Code: movl -0x21c(%rbp), %r8d	 RIP: 465176	 Bytes: 7
  %loadMem_465176 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465176 = call %struct.Memory* @routine_movl_MINUS0x21c__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465176)
  store %struct.Memory* %call_465176, %struct.Memory** %MEMORY

  ; Code: callq .order_moves	 RIP: 46517d	 Bytes: 5
  %loadMem1_46517d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46517d = call %struct.Memory* @routine_callq_.order_moves(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46517d, i64 -9453, i64 5, i64 5)
  store %struct.Memory* %call1_46517d, %struct.Memory** %MEMORY

  %loadMem2_46517d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46517d = load i64, i64* %3
  %call2_46517d = call %struct.Memory* @sub_462c90.order_moves(%struct.State* %0, i64  %loadPC_46517d, %struct.Memory* %loadMem2_46517d)
  store %struct.Memory* %call2_46517d, %struct.Memory** %MEMORY

  ; Code: movl -0x21c(%rbp), %edx	 RIP: 465182	 Bytes: 6
  %loadMem_465182 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465182 = call %struct.Memory* @routine_movl_MINUS0x21c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465182)
  store %struct.Memory* %call_465182, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x228(%rbp)	 RIP: 465188	 Bytes: 6
  %loadMem_465188 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465188 = call %struct.Memory* @routine_movl__edx__MINUS0x228__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465188)
  store %struct.Memory* %call_465188, %struct.Memory** %MEMORY

  ; Code: .L_46518e:	 RIP: 46518e	 Bytes: 0
  br label %block_.L_46518e
block_.L_46518e:

  ; Code: movl -0x228(%rbp), %eax	 RIP: 46518e	 Bytes: 6
  %loadMem_46518e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46518e = call %struct.Memory* @routine_movl_MINUS0x228__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46518e)
  store %struct.Memory* %call_46518e, %struct.Memory** %MEMORY

  ; Code: cmpl -0x88(%rbp), %eax	 RIP: 465194	 Bytes: 6
  %loadMem_465194 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465194 = call %struct.Memory* @routine_cmpl_MINUS0x88__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465194)
  store %struct.Memory* %call_465194, %struct.Memory** %MEMORY

  ; Code: jge .L_4653eb	 RIP: 46519a	 Bytes: 6
  %loadMem_46519a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46519a = call %struct.Memory* @routine_jge_.L_4653eb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46519a, i8* %BRANCH_TAKEN, i64 593, i64 6, i64 6)
  store %struct.Memory* %call_46519a, %struct.Memory** %MEMORY

  %loadBr_46519a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46519a = icmp eq i8 %loadBr_46519a, 1
  br i1 %cmpBr_46519a, label %block_.L_4653eb, label %block_4651a0

block_4651a0:
  ; Code: xorl %eax, %eax	 RIP: 4651a0	 Bytes: 2
  %loadMem_4651a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4651a0 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4651a0)
  store %struct.Memory* %call_4651a0, %struct.Memory** %MEMORY

  ; Code: movb %al, %cl	 RIP: 4651a2	 Bytes: 2
  %loadMem_4651a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4651a2 = call %struct.Memory* @routine_movb__al___cl(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4651a2)
  store %struct.Memory* %call_4651a2, %struct.Memory** %MEMORY

  ; Code: movslq -0x228(%rbp), %rdx	 RIP: 4651a4	 Bytes: 7
  %loadMem_4651a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4651a4 = call %struct.Memory* @routine_movslq_MINUS0x228__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4651a4)
  store %struct.Memory* %call_4651a4, %struct.Memory** %MEMORY

  ; Code: movl -0x218(%rbp,%rdx,4), %eax	 RIP: 4651ab	 Bytes: 7
  %loadMem_4651ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4651ab = call %struct.Memory* @routine_movl_MINUS0x218__rbp__rdx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4651ab)
  store %struct.Memory* %call_4651ab, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x4c(%rbp)	 RIP: 4651b2	 Bytes: 3
  %loadMem_4651b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4651b2 = call %struct.Memory* @routine_movl__eax__MINUS0x4c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4651b2)
  store %struct.Memory* %call_4651b2, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %edi	 RIP: 4651b5	 Bytes: 3
  %loadMem_4651b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4651b5 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4651b5)
  store %struct.Memory* %call_4651b5, %struct.Memory** %MEMORY

  ; Code: movl -0x44(%rbp), %esi	 RIP: 4651b8	 Bytes: 3
  %loadMem_4651b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4651b8 = call %struct.Memory* @routine_movl_MINUS0x44__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4651b8)
  store %struct.Memory* %call_4651b8, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %eax	 RIP: 4651bb	 Bytes: 3
  %loadMem_4651bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4651bb = call %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4651bb)
  store %struct.Memory* %call_4651bb, %struct.Memory** %MEMORY

  ; Code: movl -0x3c(%rbp), %r8d	 RIP: 4651be	 Bytes: 4
  %loadMem_4651be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4651be = call %struct.Memory* @routine_movl_MINUS0x3c__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4651be)
  store %struct.Memory* %call_4651be, %struct.Memory** %MEMORY

  ; Code: movl -0x40(%rbp), %r9d	 RIP: 4651c2	 Bytes: 4
  %loadMem_4651c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4651c2 = call %struct.Memory* @routine_movl_MINUS0x40__rbp____r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4651c2)
  store %struct.Memory* %call_4651c2, %struct.Memory** %MEMORY

  ; Code: movl 0xb54ce4, %r10d	 RIP: 4651c6	 Bytes: 8
  %loadMem_4651c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4651c6 = call %struct.Memory* @routine_movl_0xb54ce4___r10d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4651c6)
  store %struct.Memory* %call_4651c6, %struct.Memory** %MEMORY

  ; Code: cmpl 0xb8b850, %r10d	 RIP: 4651ce	 Bytes: 8
  %loadMem_4651ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4651ce = call %struct.Memory* @routine_cmpl_0xb8b850___r10d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4651ce)
  store %struct.Memory* %call_4651ce, %struct.Memory** %MEMORY

  ; Code: movl %r9d, -0x370(%rbp)	 RIP: 4651d6	 Bytes: 7
  %loadMem_4651d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4651d6 = call %struct.Memory* @routine_movl__r9d__MINUS0x370__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4651d6)
  store %struct.Memory* %call_4651d6, %struct.Memory** %MEMORY

  ; Code: movl %edi, -0x374(%rbp)	 RIP: 4651dd	 Bytes: 6
  %loadMem_4651dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4651dd = call %struct.Memory* @routine_movl__edi__MINUS0x374__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4651dd)
  store %struct.Memory* %call_4651dd, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x378(%rbp)	 RIP: 4651e3	 Bytes: 6
  %loadMem_4651e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4651e3 = call %struct.Memory* @routine_movl__esi__MINUS0x378__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4651e3)
  store %struct.Memory* %call_4651e3, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x37c(%rbp)	 RIP: 4651e9	 Bytes: 6
  %loadMem_4651e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4651e9 = call %struct.Memory* @routine_movl__eax__MINUS0x37c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4651e9)
  store %struct.Memory* %call_4651e9, %struct.Memory** %MEMORY

  ; Code: movl %r8d, -0x380(%rbp)	 RIP: 4651ef	 Bytes: 7
  %loadMem_4651ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4651ef = call %struct.Memory* @routine_movl__r8d__MINUS0x380__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4651ef)
  store %struct.Memory* %call_4651ef, %struct.Memory** %MEMORY

  ; Code: movb %cl, -0x381(%rbp)	 RIP: 4651f6	 Bytes: 6
  %loadMem_4651f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4651f6 = call %struct.Memory* @routine_movb__cl__MINUS0x381__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4651f6)
  store %struct.Memory* %call_4651f6, %struct.Memory** %MEMORY

  ; Code: jg .L_465212	 RIP: 4651fc	 Bytes: 6
  %loadMem_4651fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4651fc = call %struct.Memory* @routine_jg_.L_465212(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4651fc, i8* %BRANCH_TAKEN, i64 22, i64 6, i64 6)
  store %struct.Memory* %call_4651fc, %struct.Memory** %MEMORY

  %loadBr_4651fc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4651fc = icmp eq i8 %loadBr_4651fc, 1
  br i1 %cmpBr_4651fc, label %block_.L_465212, label %block_465202

block_465202:
  ; Code: cmpl $0x0, -0x224(%rbp)	 RIP: 465202	 Bytes: 7
  %loadMem_465202 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465202 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x224__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465202)
  store %struct.Memory* %call_465202, %struct.Memory** %MEMORY

  ; Code: sete %al	 RIP: 465209	 Bytes: 3
  %loadMem_465209 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465209 = call %struct.Memory* @routine_sete__al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465209)
  store %struct.Memory* %call_465209, %struct.Memory** %MEMORY

  ; Code: movb %al, -0x381(%rbp)	 RIP: 46520c	 Bytes: 6
  %loadMem_46520c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46520c = call %struct.Memory* @routine_movb__al__MINUS0x381__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46520c)
  store %struct.Memory* %call_46520c, %struct.Memory** %MEMORY

  ; Code: .L_465212:	 RIP: 465212	 Bytes: 0
  br label %block_.L_465212
block_.L_465212:

  ; Code: movb -0x381(%rbp), %al	 RIP: 465212	 Bytes: 6
  %loadMem_465212 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465212 = call %struct.Memory* @routine_movb_MINUS0x381__rbp____al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465212)
  store %struct.Memory* %call_465212, %struct.Memory** %MEMORY

  ; Code: movq $0x57fd73, %rdx	 RIP: 465218	 Bytes: 10
  %loadMem_465218 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465218 = call %struct.Memory* @routine_movq__0x57fd73___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465218)
  store %struct.Memory* %call_465218, %struct.Memory** %MEMORY

  ; Code: leaq -0x2e0(%rbp), %rcx	 RIP: 465222	 Bytes: 7
  %loadMem_465222 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465222 = call %struct.Memory* @routine_leaq_MINUS0x2e0__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465222)
  store %struct.Memory* %call_465222, %struct.Memory** %MEMORY

  ; Code: leaq -0x2e4(%rbp), %rsi	 RIP: 465229	 Bytes: 7
  %loadMem_465229 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465229 = call %struct.Memory* @routine_leaq_MINUS0x2e4__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465229)
  store %struct.Memory* %call_465229, %struct.Memory** %MEMORY

  ; Code: leaq -0x2e8(%rbp), %rdi	 RIP: 465230	 Bytes: 7
  %loadMem_465230 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465230 = call %struct.Memory* @routine_leaq_MINUS0x2e8__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465230)
  store %struct.Memory* %call_465230, %struct.Memory** %MEMORY

  ; Code: andb $0x1, %al	 RIP: 465237	 Bytes: 2
  %loadMem_465237 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465237 = call %struct.Memory* @routine_andb__0x1___al(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465237)
  store %struct.Memory* %call_465237, %struct.Memory** %MEMORY

  ; Code: movzbl %al, %r8d	 RIP: 465239	 Bytes: 4
  %loadMem_465239 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465239 = call %struct.Memory* @routine_movzbl__al___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465239)
  store %struct.Memory* %call_465239, %struct.Memory** %MEMORY

  ; Code: movl -0x374(%rbp), %r9d	 RIP: 46523d	 Bytes: 7
  %loadMem_46523d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46523d = call %struct.Memory* @routine_movl_MINUS0x374__rbp____r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46523d)
  store %struct.Memory* %call_46523d, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x390(%rbp)	 RIP: 465244	 Bytes: 7
  %loadMem_465244 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465244 = call %struct.Memory* @routine_movq__rdi__MINUS0x390__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465244)
  store %struct.Memory* %call_465244, %struct.Memory** %MEMORY

  ; Code: movl %r9d, %edi	 RIP: 46524b	 Bytes: 3
  %loadMem_46524b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46524b = call %struct.Memory* @routine_movl__r9d___edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46524b)
  store %struct.Memory* %call_46524b, %struct.Memory** %MEMORY

  ; Code: movl -0x378(%rbp), %r10d	 RIP: 46524e	 Bytes: 7
  %loadMem_46524e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46524e = call %struct.Memory* @routine_movl_MINUS0x378__rbp____r10d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46524e)
  store %struct.Memory* %call_46524e, %struct.Memory** %MEMORY

  ; Code: movq %rsi, -0x398(%rbp)	 RIP: 465255	 Bytes: 7
  %loadMem_465255 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465255 = call %struct.Memory* @routine_movq__rsi__MINUS0x398__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465255)
  store %struct.Memory* %call_465255, %struct.Memory** %MEMORY

  ; Code: movl %r10d, %esi	 RIP: 46525c	 Bytes: 3
  %loadMem_46525c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46525c = call %struct.Memory* @routine_movl__r10d___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46525c)
  store %struct.Memory* %call_46525c, %struct.Memory** %MEMORY

  ; Code: movl -0x37c(%rbp), %r11d	 RIP: 46525f	 Bytes: 7
  %loadMem_46525f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46525f = call %struct.Memory* @routine_movl_MINUS0x37c__rbp____r11d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46525f)
  store %struct.Memory* %call_46525f, %struct.Memory** %MEMORY

  ; Code: movq %rcx, -0x3a0(%rbp)	 RIP: 465266	 Bytes: 7
  %loadMem_465266 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465266 = call %struct.Memory* @routine_movq__rcx__MINUS0x3a0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465266)
  store %struct.Memory* %call_465266, %struct.Memory** %MEMORY

  ; Code: movl %r11d, %ecx	 RIP: 46526d	 Bytes: 3
  %loadMem_46526d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46526d = call %struct.Memory* @routine_movl__r11d___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46526d)
  store %struct.Memory* %call_46526d, %struct.Memory** %MEMORY

  ; Code: movl -0x380(%rbp), %ebx	 RIP: 465270	 Bytes: 6
  %loadMem_465270 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465270 = call %struct.Memory* @routine_movl_MINUS0x380__rbp____ebx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465270)
  store %struct.Memory* %call_465270, %struct.Memory** %MEMORY

  ; Code: movl %r8d, -0x3a4(%rbp)	 RIP: 465276	 Bytes: 7
  %loadMem_465276 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465276 = call %struct.Memory* @routine_movl__r8d__MINUS0x3a4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465276)
  store %struct.Memory* %call_465276, %struct.Memory** %MEMORY

  ; Code: movl %ebx, %r8d	 RIP: 46527d	 Bytes: 3
  %loadMem_46527d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46527d = call %struct.Memory* @routine_movl__ebx___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46527d)
  store %struct.Memory* %call_46527d, %struct.Memory** %MEMORY

  ; Code: movl -0x370(%rbp), %r9d	 RIP: 465280	 Bytes: 7
  %loadMem_465280 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465280 = call %struct.Memory* @routine_movl_MINUS0x370__rbp____r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465280)
  store %struct.Memory* %call_465280, %struct.Memory** %MEMORY

  ; Code: movq -0x3a0(%rbp), %r14	 RIP: 465287	 Bytes: 7
  %loadMem_465287 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465287 = call %struct.Memory* @routine_movq_MINUS0x3a0__rbp____r14(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465287)
  store %struct.Memory* %call_465287, %struct.Memory** %MEMORY

  ; Code: movq %r14, (%rsp)	 RIP: 46528e	 Bytes: 4
  %loadMem_46528e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46528e = call %struct.Memory* @routine_movq__r14____rsp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46528e)
  store %struct.Memory* %call_46528e, %struct.Memory** %MEMORY

  ; Code: movq -0x398(%rbp), %r15	 RIP: 465292	 Bytes: 7
  %loadMem_465292 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465292 = call %struct.Memory* @routine_movq_MINUS0x398__rbp____r15(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465292)
  store %struct.Memory* %call_465292, %struct.Memory** %MEMORY

  ; Code: movq %r15, 0x8(%rsp)	 RIP: 465299	 Bytes: 5
  %loadMem_465299 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465299 = call %struct.Memory* @routine_movq__r15__0x8__rsp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465299)
  store %struct.Memory* %call_465299, %struct.Memory** %MEMORY

  ; Code: movq -0x390(%rbp), %r12	 RIP: 46529e	 Bytes: 7
  %loadMem_46529e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46529e = call %struct.Memory* @routine_movq_MINUS0x390__rbp____r12(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46529e)
  store %struct.Memory* %call_46529e, %struct.Memory** %MEMORY

  ; Code: movq %r12, 0x10(%rsp)	 RIP: 4652a5	 Bytes: 5
  %loadMem_4652a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4652a5 = call %struct.Memory* @routine_movq__r12__0x10__rsp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4652a5)
  store %struct.Memory* %call_4652a5, %struct.Memory** %MEMORY

  ; Code: movl -0x3a4(%rbp), %r13d	 RIP: 4652aa	 Bytes: 7
  %loadMem_4652aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4652aa = call %struct.Memory* @routine_movl_MINUS0x3a4__rbp____r13d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4652aa)
  store %struct.Memory* %call_4652aa, %struct.Memory** %MEMORY

  ; Code: movl %r13d, 0x18(%rsp)	 RIP: 4652b1	 Bytes: 5
  %loadMem_4652b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4652b1 = call %struct.Memory* @routine_movl__r13d__0x18__rsp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4652b1)
  store %struct.Memory* %call_4652b1, %struct.Memory** %MEMORY

  ; Code: callq .komaster_trymove	 RIP: 4652b6	 Bytes: 5
  %loadMem1_4652b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4652b6 = call %struct.Memory* @routine_callq_.komaster_trymove(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4652b6, i64 -353478, i64 5, i64 5)
  store %struct.Memory* %call1_4652b6, %struct.Memory** %MEMORY

  %loadMem2_4652b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4652b6 = load i64, i64* %3
  %call2_4652b6 = call %struct.Memory* @sub_40edf0.komaster_trymove(%struct.State* %0, i64  %loadPC_4652b6, %struct.Memory* %loadMem2_4652b6)
  store %struct.Memory* %call2_4652b6, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 4652bb	 Bytes: 3
  %loadMem_4652bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4652bb = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4652bb)
  store %struct.Memory* %call_4652bb, %struct.Memory** %MEMORY

  ; Code: je .L_4653d2	 RIP: 4652be	 Bytes: 6
  %loadMem_4652be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4652be = call %struct.Memory* @routine_je_.L_4653d2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4652be, i8* %BRANCH_TAKEN, i64 276, i64 6, i64 6)
  store %struct.Memory* %call_4652be, %struct.Memory** %MEMORY

  %loadBr_4652be = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4652be = icmp eq i8 %loadBr_4652be, 1
  br i1 %cmpBr_4652be, label %block_.L_4653d2, label %block_4652c4

block_4652c4:
  ; Code: cmpl $0x0, -0x2e8(%rbp)	 RIP: 4652c4	 Bytes: 7
  %loadMem_4652c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4652c4 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x2e8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4652c4)
  store %struct.Memory* %call_4652c4, %struct.Memory** %MEMORY

  ; Code: jne .L_465394	 RIP: 4652cb	 Bytes: 6
  %loadMem_4652cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4652cb = call %struct.Memory* @routine_jne_.L_465394(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4652cb, i8* %BRANCH_TAKEN, i64 201, i64 6, i64 6)
  store %struct.Memory* %call_4652cb, %struct.Memory** %MEMORY

  %loadBr_4652cb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4652cb = icmp eq i8 %loadBr_4652cb, 1
  br i1 %cmpBr_4652cb, label %block_.L_465394, label %block_4652d1

block_4652d1:
  ; Code: xorl %eax, %eax	 RIP: 4652d1	 Bytes: 2
  %loadMem_4652d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4652d1 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4652d1)
  store %struct.Memory* %call_4652d1, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 4652d3	 Bytes: 2
  %loadMem_4652d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4652d3 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4652d3)
  store %struct.Memory* %call_4652d3, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %edi	 RIP: 4652d5	 Bytes: 3
  %loadMem_4652d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4652d5 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4652d5)
  store %struct.Memory* %call_4652d5, %struct.Memory** %MEMORY

  ; Code: movl -0x2e0(%rbp), %edx	 RIP: 4652d8	 Bytes: 6
  %loadMem_4652d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4652d8 = call %struct.Memory* @routine_movl_MINUS0x2e0__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4652d8)
  store %struct.Memory* %call_4652d8, %struct.Memory** %MEMORY

  ; Code: movl -0x2e4(%rbp), %ecx	 RIP: 4652de	 Bytes: 6
  %loadMem_4652de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4652de = call %struct.Memory* @routine_movl_MINUS0x2e4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4652de)
  store %struct.Memory* %call_4652de, %struct.Memory** %MEMORY

  ; Code: callq .do_attack	 RIP: 4652e4	 Bytes: 5
  %loadMem1_4652e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4652e4 = call %struct.Memory* @routine_callq_.do_attack(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4652e4, i64 -30212, i64 5, i64 5)
  store %struct.Memory* %call1_4652e4, %struct.Memory** %MEMORY

  %loadMem2_4652e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4652e4 = load i64, i64* %3
  %call2_4652e4 = call %struct.Memory* @sub_45dce0.do_attack(%struct.State* %0, i64  %loadPC_4652e4, %struct.Memory* %loadMem2_4652e4)
  store %struct.Memory* %call2_4652e4, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2ec(%rbp)	 RIP: 4652e9	 Bytes: 6
  %loadMem_4652e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4652e9 = call %struct.Memory* @routine_movl__eax__MINUS0x2ec__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4652e9)
  store %struct.Memory* %call_4652e9, %struct.Memory** %MEMORY

  ; Code: callq .popgo	 RIP: 4652ef	 Bytes: 5
  %loadMem1_4652ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4652ef = call %struct.Memory* @routine_callq_.popgo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4652ef, i64 -357775, i64 5, i64 5)
  store %struct.Memory* %call1_4652ef, %struct.Memory** %MEMORY

  %loadMem2_4652ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4652ef = load i64, i64* %3
  %call2_4652ef = call %struct.Memory* @sub_40dd60.popgo(%struct.State* %0, i64  %loadPC_4652ef, %struct.Memory* %loadMem2_4652ef)
  store %struct.Memory* %call2_4652ef, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0x2ec(%rbp)	 RIP: 4652f4	 Bytes: 7
  %loadMem_4652f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4652f4 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x2ec__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4652f4)
  store %struct.Memory* %call_4652f4, %struct.Memory** %MEMORY

  ; Code: jne .L_465354	 RIP: 4652fb	 Bytes: 6
  %loadMem_4652fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4652fb = call %struct.Memory* @routine_jne_.L_465354(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4652fb, i8* %BRANCH_TAKEN, i64 89, i64 6, i64 6)
  store %struct.Memory* %call_4652fb, %struct.Memory** %MEMORY

  %loadBr_4652fb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4652fb = icmp eq i8 %loadBr_4652fb, 1
  br i1 %cmpBr_4652fb, label %block_.L_465354, label %block_465301

block_465301:
  ; Code: cmpq $0x0, -0x38(%rbp)	 RIP: 465301	 Bytes: 5
  %loadMem_465301 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465301 = call %struct.Memory* @routine_cmpq__0x0__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465301)
  store %struct.Memory* %call_465301, %struct.Memory** %MEMORY

  ; Code: je .L_465315	 RIP: 465306	 Bytes: 6
  %loadMem_465306 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465306 = call %struct.Memory* @routine_je_.L_465315(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465306, i8* %BRANCH_TAKEN, i64 15, i64 6, i64 6)
  store %struct.Memory* %call_465306, %struct.Memory** %MEMORY

  %loadBr_465306 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_465306 = icmp eq i8 %loadBr_465306, 1
  br i1 %cmpBr_465306, label %block_.L_465315, label %block_46530c

block_46530c:
  ; Code: movl -0x4c(%rbp), %eax	 RIP: 46530c	 Bytes: 3
  %loadMem_46530c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46530c = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46530c)
  store %struct.Memory* %call_46530c, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rcx	 RIP: 46530f	 Bytes: 4
  %loadMem_46530f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46530f = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46530f)
  store %struct.Memory* %call_46530f, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx)	 RIP: 465313	 Bytes: 2
  %loadMem_465313 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465313 = call %struct.Memory* @routine_movl__eax____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465313)
  store %struct.Memory* %call_465313, %struct.Memory** %MEMORY

  ; Code: .L_465315:	 RIP: 465315	 Bytes: 0
  br label %block_.L_465315
block_.L_465315:

  ; Code: cmpq $0x0, 0xab0ef8	 RIP: 465315	 Bytes: 9
  %loadMem_465315 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465315 = call %struct.Memory* @routine_cmpq__0x0__0xab0ef8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465315)
  store %struct.Memory* %call_465315, %struct.Memory** %MEMORY

  ; Code: je .L_465348	 RIP: 46531e	 Bytes: 6
  %loadMem_46531e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46531e = call %struct.Memory* @routine_je_.L_465348(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46531e, i8* %BRANCH_TAKEN, i64 42, i64 6, i64 6)
  store %struct.Memory* %call_46531e, %struct.Memory** %MEMORY

  %loadBr_46531e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46531e = icmp eq i8 %loadBr_46531e, 1
  br i1 %cmpBr_46531e, label %block_.L_465348, label %block_465324

block_465324:
  ; Code: movl $0x5, %ecx	 RIP: 465324	 Bytes: 5
  %loadMem_465324 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465324 = call %struct.Memory* @routine_movl__0x5___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465324)
  store %struct.Memory* %call_465324, %struct.Memory** %MEMORY

  ; Code: movq $0x57fc87, %r8	 RIP: 465329	 Bytes: 10
  %loadMem_465329 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465329 = call %struct.Memory* @routine_movq__0x57fc87___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465329)
  store %struct.Memory* %call_465329, %struct.Memory** %MEMORY

  ; Code: movq -0x238(%rbp), %rdi	 RIP: 465333	 Bytes: 7
  %loadMem_465333 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465333 = call %struct.Memory* @routine_movq_MINUS0x238__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465333)
  store %struct.Memory* %call_465333, %struct.Memory** %MEMORY

  ; Code: movl -0x23c(%rbp), %esi	 RIP: 46533a	 Bytes: 6
  %loadMem_46533a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46533a = call %struct.Memory* @routine_movl_MINUS0x23c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46533a)
  store %struct.Memory* %call_46533a, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %edx	 RIP: 465340	 Bytes: 3
  %loadMem_465340 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465340 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465340)
  store %struct.Memory* %call_465340, %struct.Memory** %MEMORY

  ; Code: callq .sgf_trace	 RIP: 465343	 Bytes: 5
  %loadMem1_465343 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_465343 = call %struct.Memory* @routine_callq_.sgf_trace(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_465343, i64 -316291, i64 5, i64 5)
  store %struct.Memory* %call1_465343, %struct.Memory** %MEMORY

  %loadMem2_465343 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_465343 = load i64, i64* %3
  %call2_465343 = call %struct.Memory* @sub_417fc0.sgf_trace(%struct.State* %0, i64  %loadPC_465343, %struct.Memory* %loadMem2_465343)
  store %struct.Memory* %call2_465343, %struct.Memory** %MEMORY

  ; Code: .L_465348:	 RIP: 465348	 Bytes: 0
  br label %block_.L_465348
block_.L_465348:

  ; Code: movl $0x5, -0x2c(%rbp)	 RIP: 465348	 Bytes: 7
  %loadMem_465348 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465348 = call %struct.Memory* @routine_movl__0x5__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465348)
  store %struct.Memory* %call_465348, %struct.Memory** %MEMORY

  ; Code: jmpq .L_465536	 RIP: 46534f	 Bytes: 5
  %loadMem_46534f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46534f = call %struct.Memory* @routine_jmpq_.L_465536(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46534f, i64 487, i64 5)
  store %struct.Memory* %call_46534f, %struct.Memory** %MEMORY

  br label %block_.L_465536

  ; Code: .L_465354:	 RIP: 465354	 Bytes: 0
block_.L_465354:

  ; Code: movl $0x5, %eax	 RIP: 465354	 Bytes: 5
  %loadMem_465354 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465354 = call %struct.Memory* @routine_movl__0x5___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465354)
  store %struct.Memory* %call_465354, %struct.Memory** %MEMORY

  ; Code: subl -0x2ec(%rbp), %eax	 RIP: 465359	 Bytes: 6
  %loadMem_465359 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465359 = call %struct.Memory* @routine_subl_MINUS0x2ec__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465359)
  store %struct.Memory* %call_465359, %struct.Memory** %MEMORY

  ; Code: cmpl -0x224(%rbp), %eax	 RIP: 46535f	 Bytes: 6
  %loadMem_46535f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46535f = call %struct.Memory* @routine_cmpl_MINUS0x224__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46535f)
  store %struct.Memory* %call_46535f, %struct.Memory** %MEMORY

  ; Code: jle .L_465385	 RIP: 465365	 Bytes: 6
  %loadMem_465365 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465365 = call %struct.Memory* @routine_jle_.L_465385(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465365, i8* %BRANCH_TAKEN, i64 32, i64 6, i64 6)
  store %struct.Memory* %call_465365, %struct.Memory** %MEMORY

  %loadBr_465365 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_465365 = icmp eq i8 %loadBr_465365, 1
  br i1 %cmpBr_465365, label %block_.L_465385, label %block_46536b

block_46536b:
  ; Code: movl $0x5, %eax	 RIP: 46536b	 Bytes: 5
  %loadMem_46536b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46536b = call %struct.Memory* @routine_movl__0x5___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46536b)
  store %struct.Memory* %call_46536b, %struct.Memory** %MEMORY

  ; Code: movl -0x4c(%rbp), %ecx	 RIP: 465370	 Bytes: 3
  %loadMem_465370 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465370 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465370)
  store %struct.Memory* %call_465370, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x220(%rbp)	 RIP: 465373	 Bytes: 6
  %loadMem_465373 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465373 = call %struct.Memory* @routine_movl__ecx__MINUS0x220__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465373)
  store %struct.Memory* %call_465373, %struct.Memory** %MEMORY

  ; Code: subl -0x2ec(%rbp), %eax	 RIP: 465379	 Bytes: 6
  %loadMem_465379 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465379 = call %struct.Memory* @routine_subl_MINUS0x2ec__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465379)
  store %struct.Memory* %call_465379, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x224(%rbp)	 RIP: 46537f	 Bytes: 6
  %loadMem_46537f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46537f = call %struct.Memory* @routine_movl__eax__MINUS0x224__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46537f)
  store %struct.Memory* %call_46537f, %struct.Memory** %MEMORY

  ; Code: .L_465385:	 RIP: 465385	 Bytes: 0
  br label %block_.L_465385
block_.L_465385:

  ; Code: jmpq .L_46538a	 RIP: 465385	 Bytes: 5
  %loadMem_465385 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465385 = call %struct.Memory* @routine_jmpq_.L_46538a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465385, i64 5, i64 5)
  store %struct.Memory* %call_465385, %struct.Memory** %MEMORY

  br label %block_.L_46538a

  ; Code: .L_46538a:	 RIP: 46538a	 Bytes: 0
block_.L_46538a:

  ; Code: jmpq .L_46538f	 RIP: 46538a	 Bytes: 5
  %loadMem_46538a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46538a = call %struct.Memory* @routine_jmpq_.L_46538f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46538a, i64 5, i64 5)
  store %struct.Memory* %call_46538a, %struct.Memory** %MEMORY

  br label %block_.L_46538f

  ; Code: .L_46538f:	 RIP: 46538f	 Bytes: 0
block_.L_46538f:

  ; Code: jmpq .L_4653cd	 RIP: 46538f	 Bytes: 5
  %loadMem_46538f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46538f = call %struct.Memory* @routine_jmpq_.L_4653cd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46538f, i64 62, i64 5)
  store %struct.Memory* %call_46538f, %struct.Memory** %MEMORY

  br label %block_.L_4653cd

  ; Code: .L_465394:	 RIP: 465394	 Bytes: 0
block_.L_465394:

  ; Code: xorl %eax, %eax	 RIP: 465394	 Bytes: 2
  %loadMem_465394 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465394 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465394)
  store %struct.Memory* %call_465394, %struct.Memory** %MEMORY

  ; Code: movl %eax, %esi	 RIP: 465396	 Bytes: 2
  %loadMem_465396 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465396 = call %struct.Memory* @routine_movl__eax___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465396)
  store %struct.Memory* %call_465396, %struct.Memory** %MEMORY

  ; Code: movl -0x30(%rbp), %edi	 RIP: 465398	 Bytes: 3
  %loadMem_465398 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465398 = call %struct.Memory* @routine_movl_MINUS0x30__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465398)
  store %struct.Memory* %call_465398, %struct.Memory** %MEMORY

  ; Code: movl -0x2e0(%rbp), %edx	 RIP: 46539b	 Bytes: 6
  %loadMem_46539b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46539b = call %struct.Memory* @routine_movl_MINUS0x2e0__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46539b)
  store %struct.Memory* %call_46539b, %struct.Memory** %MEMORY

  ; Code: movl -0x2e4(%rbp), %ecx	 RIP: 4653a1	 Bytes: 6
  %loadMem_4653a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4653a1 = call %struct.Memory* @routine_movl_MINUS0x2e4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4653a1)
  store %struct.Memory* %call_4653a1, %struct.Memory** %MEMORY

  ; Code: callq .do_attack	 RIP: 4653a7	 Bytes: 5
  %loadMem1_4653a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4653a7 = call %struct.Memory* @routine_callq_.do_attack(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4653a7, i64 -30407, i64 5, i64 5)
  store %struct.Memory* %call1_4653a7, %struct.Memory** %MEMORY

  %loadMem2_4653a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4653a7 = load i64, i64* %3
  %call2_4653a7 = call %struct.Memory* @sub_45dce0.do_attack(%struct.State* %0, i64  %loadPC_4653a7, %struct.Memory* %loadMem2_4653a7)
  store %struct.Memory* %call2_4653a7, %struct.Memory** %MEMORY

  ; Code: cmpl $0x5, %eax	 RIP: 4653ac	 Bytes: 3
  %loadMem_4653ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4653ac = call %struct.Memory* @routine_cmpl__0x5___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4653ac)
  store %struct.Memory* %call_4653ac, %struct.Memory** %MEMORY

  ; Code: je .L_4653c8	 RIP: 4653af	 Bytes: 6
  %loadMem_4653af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4653af = call %struct.Memory* @routine_je_.L_4653c8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4653af, i8* %BRANCH_TAKEN, i64 25, i64 6, i64 6)
  store %struct.Memory* %call_4653af, %struct.Memory** %MEMORY

  %loadBr_4653af = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4653af = icmp eq i8 %loadBr_4653af, 1
  br i1 %cmpBr_4653af, label %block_.L_4653c8, label %block_4653b5

block_4653b5:
  ; Code: movl -0x4c(%rbp), %eax	 RIP: 4653b5	 Bytes: 3
  %loadMem_4653b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4653b5 = call %struct.Memory* @routine_movl_MINUS0x4c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4653b5)
  store %struct.Memory* %call_4653b5, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x220(%rbp)	 RIP: 4653b8	 Bytes: 6
  %loadMem_4653b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4653b8 = call %struct.Memory* @routine_movl__eax__MINUS0x220__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4653b8)
  store %struct.Memory* %call_4653b8, %struct.Memory** %MEMORY

  ; Code: movl $0x1, -0x224(%rbp)	 RIP: 4653be	 Bytes: 10
  %loadMem_4653be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4653be = call %struct.Memory* @routine_movl__0x1__MINUS0x224__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4653be)
  store %struct.Memory* %call_4653be, %struct.Memory** %MEMORY

  ; Code: .L_4653c8:	 RIP: 4653c8	 Bytes: 0
  br label %block_.L_4653c8
block_.L_4653c8:

  ; Code: callq .popgo	 RIP: 4653c8	 Bytes: 5
  %loadMem1_4653c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4653c8 = call %struct.Memory* @routine_callq_.popgo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4653c8, i64 -357992, i64 5, i64 5)
  store %struct.Memory* %call1_4653c8, %struct.Memory** %MEMORY

  %loadMem2_4653c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4653c8 = load i64, i64* %3
  %call2_4653c8 = call %struct.Memory* @sub_40dd60.popgo(%struct.State* %0, i64  %loadPC_4653c8, %struct.Memory* %loadMem2_4653c8)
  store %struct.Memory* %call2_4653c8, %struct.Memory** %MEMORY

  ; Code: .L_4653cd:	 RIP: 4653cd	 Bytes: 0
  br label %block_.L_4653cd
block_.L_4653cd:

  ; Code: jmpq .L_4653d2	 RIP: 4653cd	 Bytes: 5
  %loadMem_4653cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4653cd = call %struct.Memory* @routine_jmpq_.L_4653d2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4653cd, i64 5, i64 5)
  store %struct.Memory* %call_4653cd, %struct.Memory** %MEMORY

  br label %block_.L_4653d2

  ; Code: .L_4653d2:	 RIP: 4653d2	 Bytes: 0
block_.L_4653d2:

  ; Code: jmpq .L_4653d7	 RIP: 4653d2	 Bytes: 5
  %loadMem_4653d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4653d2 = call %struct.Memory* @routine_jmpq_.L_4653d7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4653d2, i64 5, i64 5)
  store %struct.Memory* %call_4653d2, %struct.Memory** %MEMORY

  br label %block_.L_4653d7

  ; Code: .L_4653d7:	 RIP: 4653d7	 Bytes: 0
block_.L_4653d7:

  ; Code: movl -0x228(%rbp), %eax	 RIP: 4653d7	 Bytes: 6
  %loadMem_4653d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4653d7 = call %struct.Memory* @routine_movl_MINUS0x228__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4653d7)
  store %struct.Memory* %call_4653d7, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4653dd	 Bytes: 3
  %loadMem_4653dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4653dd = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4653dd)
  store %struct.Memory* %call_4653dd, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x228(%rbp)	 RIP: 4653e0	 Bytes: 6
  %loadMem_4653e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4653e0 = call %struct.Memory* @routine_movl__eax__MINUS0x228__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4653e0)
  store %struct.Memory* %call_4653e0, %struct.Memory** %MEMORY

  ; Code: jmpq .L_46518e	 RIP: 4653e6	 Bytes: 5
  %loadMem_4653e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4653e6 = call %struct.Memory* @routine_jmpq_.L_46518e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4653e6, i64 -600, i64 5)
  store %struct.Memory* %call_4653e6, %struct.Memory** %MEMORY

  br label %block_.L_46518e

  ; Code: .L_4653eb:	 RIP: 4653eb	 Bytes: 0
block_.L_4653eb:

  ; Code: cmpl $0x0, -0x224(%rbp)	 RIP: 4653eb	 Bytes: 7
  %loadMem_4653eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4653eb = call %struct.Memory* @routine_cmpl__0x0__MINUS0x224__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4653eb)
  store %struct.Memory* %call_4653eb, %struct.Memory** %MEMORY

  ; Code: je .L_46549c	 RIP: 4653f2	 Bytes: 6
  %loadMem_4653f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4653f2 = call %struct.Memory* @routine_je_.L_46549c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4653f2, i8* %BRANCH_TAKEN, i64 170, i64 6, i64 6)
  store %struct.Memory* %call_4653f2, %struct.Memory** %MEMORY

  %loadBr_4653f2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4653f2 = icmp eq i8 %loadBr_4653f2, 1
  br i1 %cmpBr_4653f2, label %block_.L_46549c, label %block_4653f8

block_4653f8:
  ; Code: jmpq .L_4653fd	 RIP: 4653f8	 Bytes: 5
  %loadMem_4653f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4653f8 = call %struct.Memory* @routine_jmpq_.L_4653fd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4653f8, i64 5, i64 5)
  store %struct.Memory* %call_4653f8, %struct.Memory** %MEMORY

  br label %block_.L_4653fd

  ; Code: .L_4653fd:	 RIP: 4653fd	 Bytes: 0
block_.L_4653fd:

  ; Code: cmpl $0x0, -0x224(%rbp)	 RIP: 4653fd	 Bytes: 7
  %loadMem_4653fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4653fd = call %struct.Memory* @routine_cmpl__0x0__MINUS0x224__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4653fd)
  store %struct.Memory* %call_4653fd, %struct.Memory** %MEMORY

  ; Code: je .L_46545d	 RIP: 465404	 Bytes: 6
  %loadMem_465404 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465404 = call %struct.Memory* @routine_je_.L_46545d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465404, i8* %BRANCH_TAKEN, i64 89, i64 6, i64 6)
  store %struct.Memory* %call_465404, %struct.Memory** %MEMORY

  %loadBr_465404 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_465404 = icmp eq i8 %loadBr_465404, 1
  br i1 %cmpBr_465404, label %block_.L_46545d, label %block_46540a

block_46540a:
  ; Code: cmpq $0x0, -0x38(%rbp)	 RIP: 46540a	 Bytes: 5
  %loadMem_46540a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46540a = call %struct.Memory* @routine_cmpq__0x0__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46540a)
  store %struct.Memory* %call_46540a, %struct.Memory** %MEMORY

  ; Code: je .L_465421	 RIP: 46540f	 Bytes: 6
  %loadMem_46540f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46540f = call %struct.Memory* @routine_je_.L_465421(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46540f, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_46540f, %struct.Memory** %MEMORY

  %loadBr_46540f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46540f = icmp eq i8 %loadBr_46540f, 1
  br i1 %cmpBr_46540f, label %block_.L_465421, label %block_465415

block_465415:
  ; Code: movl -0x220(%rbp), %eax	 RIP: 465415	 Bytes: 6
  %loadMem_465415 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465415 = call %struct.Memory* @routine_movl_MINUS0x220__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465415)
  store %struct.Memory* %call_465415, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rcx	 RIP: 46541b	 Bytes: 4
  %loadMem_46541b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46541b = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46541b)
  store %struct.Memory* %call_46541b, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx)	 RIP: 46541f	 Bytes: 2
  %loadMem_46541f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46541f = call %struct.Memory* @routine_movl__eax____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46541f)
  store %struct.Memory* %call_46541f, %struct.Memory** %MEMORY

  ; Code: .L_465421:	 RIP: 465421	 Bytes: 0
  br label %block_.L_465421
block_.L_465421:

  ; Code: cmpq $0x0, 0xab0ef8	 RIP: 465421	 Bytes: 9
  %loadMem_465421 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465421 = call %struct.Memory* @routine_cmpq__0x0__0xab0ef8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465421)
  store %struct.Memory* %call_465421, %struct.Memory** %MEMORY

  ; Code: je .L_465458	 RIP: 46542a	 Bytes: 6
  %loadMem_46542a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46542a = call %struct.Memory* @routine_je_.L_465458(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46542a, i8* %BRANCH_TAKEN, i64 46, i64 6, i64 6)
  store %struct.Memory* %call_46542a, %struct.Memory** %MEMORY

  %loadBr_46542a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46542a = icmp eq i8 %loadBr_46542a, 1
  br i1 %cmpBr_46542a, label %block_.L_465458, label %block_465430

block_465430:
  ; Code: movq $0x57f60a, %r8	 RIP: 465430	 Bytes: 10
  %loadMem_465430 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465430 = call %struct.Memory* @routine_movq__0x57f60a___r8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465430)
  store %struct.Memory* %call_465430, %struct.Memory** %MEMORY

  ; Code: movq -0x238(%rbp), %rdi	 RIP: 46543a	 Bytes: 7
  %loadMem_46543a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46543a = call %struct.Memory* @routine_movq_MINUS0x238__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46543a)
  store %struct.Memory* %call_46543a, %struct.Memory** %MEMORY

  ; Code: movl -0x23c(%rbp), %esi	 RIP: 465441	 Bytes: 6
  %loadMem_465441 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465441 = call %struct.Memory* @routine_movl_MINUS0x23c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465441)
  store %struct.Memory* %call_465441, %struct.Memory** %MEMORY

  ; Code: movl -0x220(%rbp), %edx	 RIP: 465447	 Bytes: 6
  %loadMem_465447 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465447 = call %struct.Memory* @routine_movl_MINUS0x220__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465447)
  store %struct.Memory* %call_465447, %struct.Memory** %MEMORY

  ; Code: movl -0x224(%rbp), %ecx	 RIP: 46544d	 Bytes: 6
  %loadMem_46544d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46544d = call %struct.Memory* @routine_movl_MINUS0x224__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46544d)
  store %struct.Memory* %call_46544d, %struct.Memory** %MEMORY

  ; Code: callq .sgf_trace	 RIP: 465453	 Bytes: 5
  %loadMem1_465453 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_465453 = call %struct.Memory* @routine_callq_.sgf_trace(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_465453, i64 -316563, i64 5, i64 5)
  store %struct.Memory* %call1_465453, %struct.Memory** %MEMORY

  %loadMem2_465453 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_465453 = load i64, i64* %3
  %call2_465453 = call %struct.Memory* @sub_417fc0.sgf_trace(%struct.State* %0, i64  %loadPC_465453, %struct.Memory* %loadMem2_465453)
  store %struct.Memory* %call2_465453, %struct.Memory** %MEMORY

  ; Code: .L_465458:	 RIP: 465458	 Bytes: 0
  br label %block_.L_465458
block_.L_465458:

  ; Code: jmpq .L_46548e	 RIP: 465458	 Bytes: 5
  %loadMem_465458 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465458 = call %struct.Memory* @routine_jmpq_.L_46548e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465458, i64 54, i64 5)
  store %struct.Memory* %call_465458, %struct.Memory** %MEMORY

  br label %block_.L_46548e

  ; Code: .L_46545d:	 RIP: 46545d	 Bytes: 0
block_.L_46545d:

  ; Code: cmpq $0x0, 0xab0ef8	 RIP: 46545d	 Bytes: 9
  %loadMem_46545d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46545d = call %struct.Memory* @routine_cmpq__0x0__0xab0ef8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46545d)
  store %struct.Memory* %call_46545d, %struct.Memory** %MEMORY

  ; Code: je .L_465489	 RIP: 465466	 Bytes: 6
  %loadMem_465466 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465466 = call %struct.Memory* @routine_je_.L_465489(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465466, i8* %BRANCH_TAKEN, i64 35, i64 6, i64 6)
  store %struct.Memory* %call_465466, %struct.Memory** %MEMORY

  %loadBr_465466 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_465466 = icmp eq i8 %loadBr_465466, 1
  br i1 %cmpBr_465466, label %block_.L_465489, label %block_46546c

block_46546c:
  ; Code: xorl %eax, %eax	 RIP: 46546c	 Bytes: 2
  %loadMem_46546c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46546c = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46546c)
  store %struct.Memory* %call_46546c, %struct.Memory** %MEMORY

  ; Code: xorl %ecx, %ecx	 RIP: 46546e	 Bytes: 2
  %loadMem_46546e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46546e = call %struct.Memory* @routine_xorl__ecx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46546e)
  store %struct.Memory* %call_46546e, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %r8d	 RIP: 465470	 Bytes: 3
  %loadMem_465470 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465470 = call %struct.Memory* @routine_movl__ecx___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465470)
  store %struct.Memory* %call_465470, %struct.Memory** %MEMORY

  ; Code: movq -0x238(%rbp), %rdi	 RIP: 465473	 Bytes: 7
  %loadMem_465473 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465473 = call %struct.Memory* @routine_movq_MINUS0x238__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465473)
  store %struct.Memory* %call_465473, %struct.Memory** %MEMORY

  ; Code: movl -0x23c(%rbp), %esi	 RIP: 46547a	 Bytes: 6
  %loadMem_46547a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46547a = call %struct.Memory* @routine_movl_MINUS0x23c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46547a)
  store %struct.Memory* %call_46547a, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 465480	 Bytes: 2
  %loadMem_465480 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465480 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465480)
  store %struct.Memory* %call_465480, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 465482	 Bytes: 2
  %loadMem_465482 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465482 = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465482)
  store %struct.Memory* %call_465482, %struct.Memory** %MEMORY

  ; Code: callq .sgf_trace	 RIP: 465484	 Bytes: 5
  %loadMem1_465484 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_465484 = call %struct.Memory* @routine_callq_.sgf_trace(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_465484, i64 -316612, i64 5, i64 5)
  store %struct.Memory* %call1_465484, %struct.Memory** %MEMORY

  %loadMem2_465484 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_465484 = load i64, i64* %3
  %call2_465484 = call %struct.Memory* @sub_417fc0.sgf_trace(%struct.State* %0, i64  %loadPC_465484, %struct.Memory* %loadMem2_465484)
  store %struct.Memory* %call2_465484, %struct.Memory** %MEMORY

  ; Code: .L_465489:	 RIP: 465489	 Bytes: 0
  br label %block_.L_465489
block_.L_465489:

  ; Code: jmpq .L_46548e	 RIP: 465489	 Bytes: 5
  %loadMem_465489 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465489 = call %struct.Memory* @routine_jmpq_.L_46548e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465489, i64 5, i64 5)
  store %struct.Memory* %call_465489, %struct.Memory** %MEMORY

  br label %block_.L_46548e

  ; Code: .L_46548e:	 RIP: 46548e	 Bytes: 0
block_.L_46548e:

  ; Code: movl -0x224(%rbp), %eax	 RIP: 46548e	 Bytes: 6
  %loadMem_46548e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46548e = call %struct.Memory* @routine_movl_MINUS0x224__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46548e)
  store %struct.Memory* %call_46548e, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2c(%rbp)	 RIP: 465494	 Bytes: 3
  %loadMem_465494 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465494 = call %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465494)
  store %struct.Memory* %call_465494, %struct.Memory** %MEMORY

  ; Code: jmpq .L_465536	 RIP: 465497	 Bytes: 5
  %loadMem_465497 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465497 = call %struct.Memory* @routine_jmpq_.L_465536(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465497, i64 159, i64 5)
  store %struct.Memory* %call_465497, %struct.Memory** %MEMORY

  br label %block_.L_465536

  ; Code: .L_46549c:	 RIP: 46549c	 Bytes: 0
block_.L_46549c:

  ; Code: jmpq .L_4654a1	 RIP: 46549c	 Bytes: 5
  %loadMem_46549c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46549c = call %struct.Memory* @routine_jmpq_.L_4654a1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46549c, i64 5, i64 5)
  store %struct.Memory* %call_46549c, %struct.Memory** %MEMORY

  br label %block_.L_4654a1

  ; Code: .L_4654a1:	 RIP: 4654a1	 Bytes: 0
block_.L_4654a1:

  ; Code: cmpl $0x0, -0x224(%rbp)	 RIP: 4654a1	 Bytes: 7
  %loadMem_4654a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4654a1 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x224__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4654a1)
  store %struct.Memory* %call_4654a1, %struct.Memory** %MEMORY

  ; Code: je .L_4654fc	 RIP: 4654a8	 Bytes: 6
  %loadMem_4654a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4654a8 = call %struct.Memory* @routine_je_.L_4654fc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4654a8, i8* %BRANCH_TAKEN, i64 84, i64 6, i64 6)
  store %struct.Memory* %call_4654a8, %struct.Memory** %MEMORY

  %loadBr_4654a8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4654a8 = icmp eq i8 %loadBr_4654a8, 1
  br i1 %cmpBr_4654a8, label %block_.L_4654fc, label %block_4654ae

block_4654ae:
  ; Code: cmpq $0x0, -0x38(%rbp)	 RIP: 4654ae	 Bytes: 5
  %loadMem_4654ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4654ae = call %struct.Memory* @routine_cmpq__0x0__MINUS0x38__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4654ae)
  store %struct.Memory* %call_4654ae, %struct.Memory** %MEMORY

  ; Code: je .L_4654c5	 RIP: 4654b3	 Bytes: 6
  %loadMem_4654b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4654b3 = call %struct.Memory* @routine_je_.L_4654c5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4654b3, i8* %BRANCH_TAKEN, i64 18, i64 6, i64 6)
  store %struct.Memory* %call_4654b3, %struct.Memory** %MEMORY

  %loadBr_4654b3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4654b3 = icmp eq i8 %loadBr_4654b3, 1
  br i1 %cmpBr_4654b3, label %block_.L_4654c5, label %block_4654b9

block_4654b9:
  ; Code: movl -0x220(%rbp), %eax	 RIP: 4654b9	 Bytes: 6
  %loadMem_4654b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4654b9 = call %struct.Memory* @routine_movl_MINUS0x220__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4654b9)
  store %struct.Memory* %call_4654b9, %struct.Memory** %MEMORY

  ; Code: movq -0x38(%rbp), %rcx	 RIP: 4654bf	 Bytes: 4
  %loadMem_4654bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4654bf = call %struct.Memory* @routine_movq_MINUS0x38__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4654bf)
  store %struct.Memory* %call_4654bf, %struct.Memory** %MEMORY

  ; Code: movl %eax, (%rcx)	 RIP: 4654c3	 Bytes: 2
  %loadMem_4654c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4654c3 = call %struct.Memory* @routine_movl__eax____rcx_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4654c3)
  store %struct.Memory* %call_4654c3, %struct.Memory** %MEMORY

  ; Code: .L_4654c5:	 RIP: 4654c5	 Bytes: 0
  br label %block_.L_4654c5
block_.L_4654c5:

  ; Code: cmpq $0x0, 0xab0ef8	 RIP: 4654c5	 Bytes: 9
  %loadMem_4654c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4654c5 = call %struct.Memory* @routine_cmpq__0x0__0xab0ef8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4654c5)
  store %struct.Memory* %call_4654c5, %struct.Memory** %MEMORY

  ; Code: je .L_4654f7	 RIP: 4654ce	 Bytes: 6
  %loadMem_4654ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4654ce = call %struct.Memory* @routine_je_.L_4654f7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4654ce, i8* %BRANCH_TAKEN, i64 41, i64 6, i64 6)
  store %struct.Memory* %call_4654ce, %struct.Memory** %MEMORY

  %loadBr_4654ce = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4654ce = icmp eq i8 %loadBr_4654ce, 1
  br i1 %cmpBr_4654ce, label %block_.L_4654f7, label %block_4654d4

block_4654d4:
  ; Code: xorl %eax, %eax	 RIP: 4654d4	 Bytes: 2
  %loadMem_4654d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4654d4 = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4654d4)
  store %struct.Memory* %call_4654d4, %struct.Memory** %MEMORY

  ; Code: movl %eax, %r8d	 RIP: 4654d6	 Bytes: 3
  %loadMem_4654d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4654d6 = call %struct.Memory* @routine_movl__eax___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4654d6)
  store %struct.Memory* %call_4654d6, %struct.Memory** %MEMORY

  ; Code: movq -0x238(%rbp), %rdi	 RIP: 4654d9	 Bytes: 7
  %loadMem_4654d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4654d9 = call %struct.Memory* @routine_movq_MINUS0x238__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4654d9)
  store %struct.Memory* %call_4654d9, %struct.Memory** %MEMORY

  ; Code: movl -0x23c(%rbp), %esi	 RIP: 4654e0	 Bytes: 6
  %loadMem_4654e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4654e0 = call %struct.Memory* @routine_movl_MINUS0x23c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4654e0)
  store %struct.Memory* %call_4654e0, %struct.Memory** %MEMORY

  ; Code: movl -0x220(%rbp), %edx	 RIP: 4654e6	 Bytes: 6
  %loadMem_4654e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4654e6 = call %struct.Memory* @routine_movl_MINUS0x220__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4654e6)
  store %struct.Memory* %call_4654e6, %struct.Memory** %MEMORY

  ; Code: movl -0x224(%rbp), %ecx	 RIP: 4654ec	 Bytes: 6
  %loadMem_4654ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4654ec = call %struct.Memory* @routine_movl_MINUS0x224__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4654ec)
  store %struct.Memory* %call_4654ec, %struct.Memory** %MEMORY

  ; Code: callq .sgf_trace	 RIP: 4654f2	 Bytes: 5
  %loadMem1_4654f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_4654f2 = call %struct.Memory* @routine_callq_.sgf_trace(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_4654f2, i64 -316722, i64 5, i64 5)
  store %struct.Memory* %call1_4654f2, %struct.Memory** %MEMORY

  %loadMem2_4654f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4654f2 = load i64, i64* %3
  %call2_4654f2 = call %struct.Memory* @sub_417fc0.sgf_trace(%struct.State* %0, i64  %loadPC_4654f2, %struct.Memory* %loadMem2_4654f2)
  store %struct.Memory* %call2_4654f2, %struct.Memory** %MEMORY

  ; Code: .L_4654f7:	 RIP: 4654f7	 Bytes: 0
  br label %block_.L_4654f7
block_.L_4654f7:

  ; Code: jmpq .L_46552d	 RIP: 4654f7	 Bytes: 5
  %loadMem_4654f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4654f7 = call %struct.Memory* @routine_jmpq_.L_46552d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4654f7, i64 54, i64 5)
  store %struct.Memory* %call_4654f7, %struct.Memory** %MEMORY

  br label %block_.L_46552d

  ; Code: .L_4654fc:	 RIP: 4654fc	 Bytes: 0
block_.L_4654fc:

  ; Code: cmpq $0x0, 0xab0ef8	 RIP: 4654fc	 Bytes: 9
  %loadMem_4654fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4654fc = call %struct.Memory* @routine_cmpq__0x0__0xab0ef8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4654fc)
  store %struct.Memory* %call_4654fc, %struct.Memory** %MEMORY

  ; Code: je .L_465528	 RIP: 465505	 Bytes: 6
  %loadMem_465505 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465505 = call %struct.Memory* @routine_je_.L_465528(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465505, i8* %BRANCH_TAKEN, i64 35, i64 6, i64 6)
  store %struct.Memory* %call_465505, %struct.Memory** %MEMORY

  %loadBr_465505 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_465505 = icmp eq i8 %loadBr_465505, 1
  br i1 %cmpBr_465505, label %block_.L_465528, label %block_46550b

block_46550b:
  ; Code: xorl %eax, %eax	 RIP: 46550b	 Bytes: 2
  %loadMem_46550b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46550b = call %struct.Memory* @routine_xorl__eax___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46550b)
  store %struct.Memory* %call_46550b, %struct.Memory** %MEMORY

  ; Code: xorl %ecx, %ecx	 RIP: 46550d	 Bytes: 2
  %loadMem_46550d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46550d = call %struct.Memory* @routine_xorl__ecx___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46550d)
  store %struct.Memory* %call_46550d, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %r8d	 RIP: 46550f	 Bytes: 3
  %loadMem_46550f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46550f = call %struct.Memory* @routine_movl__ecx___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46550f)
  store %struct.Memory* %call_46550f, %struct.Memory** %MEMORY

  ; Code: movq -0x238(%rbp), %rdi	 RIP: 465512	 Bytes: 7
  %loadMem_465512 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465512 = call %struct.Memory* @routine_movq_MINUS0x238__rbp____rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465512)
  store %struct.Memory* %call_465512, %struct.Memory** %MEMORY

  ; Code: movl -0x23c(%rbp), %esi	 RIP: 465519	 Bytes: 6
  %loadMem_465519 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465519 = call %struct.Memory* @routine_movl_MINUS0x23c__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465519)
  store %struct.Memory* %call_465519, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 46551f	 Bytes: 2
  %loadMem_46551f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46551f = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46551f)
  store %struct.Memory* %call_46551f, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 465521	 Bytes: 2
  %loadMem_465521 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465521 = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465521)
  store %struct.Memory* %call_465521, %struct.Memory** %MEMORY

  ; Code: callq .sgf_trace	 RIP: 465523	 Bytes: 5
  %loadMem1_465523 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_465523 = call %struct.Memory* @routine_callq_.sgf_trace(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_465523, i64 -316771, i64 5, i64 5)
  store %struct.Memory* %call1_465523, %struct.Memory** %MEMORY

  %loadMem2_465523 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_465523 = load i64, i64* %3
  %call2_465523 = call %struct.Memory* @sub_417fc0.sgf_trace(%struct.State* %0, i64  %loadPC_465523, %struct.Memory* %loadMem2_465523)
  store %struct.Memory* %call2_465523, %struct.Memory** %MEMORY

  ; Code: .L_465528:	 RIP: 465528	 Bytes: 0
  br label %block_.L_465528
block_.L_465528:

  ; Code: jmpq .L_46552d	 RIP: 465528	 Bytes: 5
  %loadMem_465528 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465528 = call %struct.Memory* @routine_jmpq_.L_46552d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465528, i64 5, i64 5)
  store %struct.Memory* %call_465528, %struct.Memory** %MEMORY

  br label %block_.L_46552d

  ; Code: .L_46552d:	 RIP: 46552d	 Bytes: 0
block_.L_46552d:

  ; Code: movl -0x224(%rbp), %eax	 RIP: 46552d	 Bytes: 6
  %loadMem_46552d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46552d = call %struct.Memory* @routine_movl_MINUS0x224__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46552d)
  store %struct.Memory* %call_46552d, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x2c(%rbp)	 RIP: 465533	 Bytes: 3
  %loadMem_465533 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465533 = call %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465533)
  store %struct.Memory* %call_465533, %struct.Memory** %MEMORY

  ; Code: .L_465536:	 RIP: 465536	 Bytes: 0
  br label %block_.L_465536
block_.L_465536:

  ; Code: movl -0x2c(%rbp), %eax	 RIP: 465536	 Bytes: 3
  %loadMem_465536 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465536 = call %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465536)
  store %struct.Memory* %call_465536, %struct.Memory** %MEMORY

  ; Code: addq $0x3a8, %rsp	 RIP: 465539	 Bytes: 7
  %loadMem_465539 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465539 = call %struct.Memory* @routine_addq__0x3a8___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465539)
  store %struct.Memory* %call_465539, %struct.Memory** %MEMORY

  ; Code: popq %rbx	 RIP: 465540	 Bytes: 1
  %loadMem_465540 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465540 = call %struct.Memory* @routine_popq__rbx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465540)
  store %struct.Memory* %call_465540, %struct.Memory** %MEMORY

  ; Code: popq %r12	 RIP: 465541	 Bytes: 2
  %loadMem_465541 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465541 = call %struct.Memory* @routine_popq__r12(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465541)
  store %struct.Memory* %call_465541, %struct.Memory** %MEMORY

  ; Code: popq %r13	 RIP: 465543	 Bytes: 2
  %loadMem_465543 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465543 = call %struct.Memory* @routine_popq__r13(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465543)
  store %struct.Memory* %call_465543, %struct.Memory** %MEMORY

  ; Code: popq %r14	 RIP: 465545	 Bytes: 2
  %loadMem_465545 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465545 = call %struct.Memory* @routine_popq__r14(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465545)
  store %struct.Memory* %call_465545, %struct.Memory** %MEMORY

  ; Code: popq %r15	 RIP: 465547	 Bytes: 2
  %loadMem_465547 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465547 = call %struct.Memory* @routine_popq__r15(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465547)
  store %struct.Memory* %call_465547, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 465549	 Bytes: 1
  %loadMem_465549 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_465549 = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_465549)
  store %struct.Memory* %call_465549, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 46554a	 Bytes: 1
  %loadMem_46554a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46554a = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46554a)
  store %struct.Memory* %call_46554a, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_46554a
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

define %struct.Memory* @routine_subq__0x3a8___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 936)
  ret %struct.Memory* %12
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0x3___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 3)
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__0x57a739___r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 ptrtoint( %G__0x57a739_type* @G__0x57a739 to i64))
  ret %struct.Memory* %11
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0x0__MINUS0x220__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 544
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x0__MINUS0x224__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 548
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movq__r8__MINUS0x238__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 568
  %14 = load i64, i64* %R8
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


define %struct.Memory* @routine_movl__ecx__MINUS0x23c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 572
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

define %struct.Memory* @routine_subl_MINUS0x44__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = sub i64 %13, 68
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__eax__MINUS0x48__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 72
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

define %struct.Memory* @routine_je_.L_4644a4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jne_.L_4644a9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jmpq_.L_4644d1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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


define %struct.Memory* @routine_movl__0x4a1___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 1185)
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


define %struct.Memory* @routine_jne_.L_4644e7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_46450f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_movl__0x4a2___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 1186)
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_leaq_MINUS0x58__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 88
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


define %struct.Memory* @routine_movl__eax__MINUS0x50__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 80
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

define %struct.Memory* @routine_cmpl__0x2__MINUS0x50__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 2)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_464532(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_4645a3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_movl__0x4a5___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 1189)
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




define %struct.Memory* @routine_movl__eax__MINUS0x2f0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 752
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


define %struct.Memory* @routine_movq__rdx__MINUS0x2f8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 760
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


define %struct.Memory* @routine_movl_MINUS0x2f0__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 752
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

define %struct.Memory* @routine_movq_MINUS0x2f8__rbp____r9(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 760
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R9, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__edx__MINUS0x300__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 768
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


define %struct.Memory* @routine_movl_MINUS0x2fc__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 764
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x300__rbp____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 768
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movl__0x0__MINUS0x228__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 552
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_MINUS0x228__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 552
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

define %struct.Memory* @routine_cmpl_MINUS0x50__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %15 = sub i64 %14, 80
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

define %struct.Memory* @routine_jge_.L_4645fb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movslq_MINUS0x228__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 552
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x58__rbp__rax_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %18 = add i64 %15, -88
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 4
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %19)
  ret %struct.Memory* %22
}




define %struct.Memory* @routine_movl__ecx__MINUS0x218__rbp__rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %18 = add i64 %15, -536
  %19 = add i64 %18, %17
  %20 = load i32, i32* %ECX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %21)
  ret %struct.Memory* %24
}




define %struct.Memory* @routine_movl__0x0__MINUS0x150__rbp__rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %15 = add i64 %12, -336
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 11
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %16, i64 0)
  ret %struct.Memory* %19
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


define %struct.Memory* @routine_movl__eax__MINUS0x228__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 552
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_4645ad(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_leaq_MINUS0x218__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 536
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
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






define %struct.Memory* @routine_callq_.break_chain2_efficient_moves(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_leaq_MINUS0x218__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 536
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_leaq_MINUS0x58__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
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


define %struct.Memory* @routine_movl_MINUS0x44__rbp____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 68
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






define %struct.Memory* @routine_callq_.edge_clamp_moves(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jg_.L_4646ab(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jge_.L_4646a6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_leaq_MINUS0x218__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 536
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movl_MINUS0x58__rbp__rax_4____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %18 = add i64 %15, -88
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 4
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %19)
  ret %struct.Memory* %22
}


define %struct.Memory* @routine_callq_.special_rescue_moves(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jmpq_.L_464669(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_4646ab(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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


define %struct.Memory* @routine_jg_.L_4646d2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_callq_.special_rescue2_moves(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl_MINUS0x44__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 68
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movq_MINUS0x238__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 568
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






define %struct.Memory* @routine_cmpl_MINUS0x88__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %15 = sub i64 %14, 136
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_464955(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movslq_MINUS0x228__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 552
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x218__rbp__rdx_4____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %18 = add i64 %15, -536
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %19)
  ret %struct.Memory* %22
}


define %struct.Memory* @routine_movl__eax__MINUS0x4c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 76
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x4c__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 76
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x44__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 68
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
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


define %struct.Memory* @routine_movl__r9d__MINUS0x304__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 772
  %14 = load i32, i32* %R9D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 7
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__edi__MINUS0x308__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 776
  %14 = load i32, i32* %EDI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__esi__MINUS0x30c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 780
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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


define %struct.Memory* @routine_movl__r8d__MINUS0x314__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 788
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

define %struct.Memory* @routine_movb__cl__MINUS0x315__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 789
  %15 = load i8, i8* %CL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 6
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_jg_.L_46477c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x0__MINUS0x224__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 548
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


define %struct.Memory* @routine_movb__al__MINUS0x315__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 789
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

define %struct.Memory* @routine_movb_MINUS0x315__rbp____al(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 789
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %AL, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__0x57fd49___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G__0x57fd49_type* @G__0x57fd49 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_leaq_MINUS0x240__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 576
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_leaq_MINUS0x244__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 580
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_leaq_MINUS0x248__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 584
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


define %struct.Memory* @routine_movl_MINUS0x308__rbp____r9d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 776
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__rdi__MINUS0x320__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 800
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


define %struct.Memory* @routine_movl_MINUS0x30c__rbp____r10d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 780
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__rsi__MINUS0x328__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 808
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


define %struct.Memory* @routine_movl_MINUS0x310__rbp____r11d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 784
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__rcx__MINUS0x330__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 816
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


define %struct.Memory* @routine_movl_MINUS0x314__rbp____ebx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 788
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RBX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__r8d__MINUS0x334__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 820
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


define %struct.Memory* @routine_movl_MINUS0x304__rbp____r9d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 772
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq_MINUS0x330__rbp____r14(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 816
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


define %struct.Memory* @routine_movq_MINUS0x328__rbp____r15(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 808
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


define %struct.Memory* @routine_movq_MINUS0x320__rbp____r12(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 800
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


define %struct.Memory* @routine_movl_MINUS0x334__rbp____r13d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 820
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


define %struct.Memory* @routine_je_.L_46493c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x0__MINUS0x248__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 584
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_4648fe(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl_MINUS0x240__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 576
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x244__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 580
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movl__eax__MINUS0x24c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 588
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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


define %struct.Memory* @routine_cmpl__0x0__MINUS0x24c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 588
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_4648be(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_je_.L_46487f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_je_.L_4648b2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0x57fc87___r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 ptrtoint( %G__0x57fc87_type* @G__0x57fc87 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq_MINUS0x238__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 568
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x23c__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 572
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x4c__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
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


define %struct.Memory* @routine_jmpq_.L_465536(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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


define %struct.Memory* @routine_subl_MINUS0x24c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = sub i64 %13, 588
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_cmpl_MINUS0x224__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %15 = sub i64 %14, 548
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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

define %struct.Memory* @routine_jle_.L_4648ef(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl_MINUS0x4c__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 76
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__ecx__MINUS0x220__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 544
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movl__eax__MINUS0x224__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 548
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_4648f4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_4648f9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_464937(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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


define %struct.Memory* @routine_je_.L_464932(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl__eax__MINUS0x220__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 544
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__0x1__MINUS0x224__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 548
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}




define %struct.Memory* @routine_jmpq_.L_46493c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_464941(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_4646f8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movl_MINUS0x88__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 136
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__eax__MINUS0x21c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 540
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}








define %struct.Memory* @routine_jge_.L_464c4f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl_MINUS0x58__rbp__rax_4____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %18 = add i64 %15, -88
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 4
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %19)
  ret %struct.Memory* %22
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




define %struct.Memory* @routine_je_.L_464aeb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x6___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 6)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_leaq_MINUS0x80__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 128
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


define %struct.Memory* @routine_movl__0x0__MINUS0x22c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 556
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_MINUS0x22c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 556
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_cmpl_MINUS0x5c__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %15 = sub i64 %14, 92
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_464ae6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movslq_MINUS0x22c__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 556
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x80__rbp__rax_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %18 = add i64 %15, -128
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 4
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %19)
  ret %struct.Memory* %22
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










define %struct.Memory* @routine_je_.L_464a04(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_callq_.has_neighbor(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_je_.L_464acd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_464a09(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movl__0x0__MINUS0x250__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 592
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_MINUS0x250__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 592
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_jge_.L_464a72(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movslq_MINUS0x250__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 592
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x218__rbp__rax_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %18 = add i64 %15, -536
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


define %struct.Memory* @routine_jne_.L_464a59(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl_MINUS0x150__rbp__rax_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %18 = add i64 %15, -336
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


define %struct.Memory* @routine_movl__ecx__MINUS0x150__rbp__rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %18 = add i64 %15, -336
  %19 = add i64 %18, %17
  %20 = load i32, i32* %ECX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %21)
  ret %struct.Memory* %24
}


define %struct.Memory* @routine_jmpq_.L_464a72(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_464a5e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_movl__eax__MINUS0x250__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 592
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_464a13(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_jne_.L_464ac3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x32__MINUS0x88__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 50)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jge_.L_464ac3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movslq_MINUS0x88__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 136
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__eax__MINUS0x218__rbp__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %18 = add i64 %15, -536
  %19 = add i64 %18, %17
  %20 = load i32, i32* %EAX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %21)
  ret %struct.Memory* %24
}




define %struct.Memory* @routine_movl__0x0__MINUS0x150__rbp__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %12, -336
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 11
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %16, i64 0)
  ret %struct.Memory* %19
}








define %struct.Memory* @routine_jmpq_.L_464ac8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_464acd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_464ad2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_movl__eax__MINUS0x22c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 556
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_4649bf(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_464aeb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movl__0x3___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 3)
  ret %struct.Memory* %11
}














define %struct.Memory* @routine_cmpl__0x2__MINUS0x5c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 92
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 2)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jg_.L_464c36(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jge_.L_464c31(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
















define %struct.Memory* @routine_jne_.L_464c18(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_464b54(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movl__0x0__MINUS0x254__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 596
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_MINUS0x254__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 596
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_jge_.L_464bbd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movslq_MINUS0x254__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 596
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_jne_.L_464ba4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_jmpq_.L_464bbd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_464ba9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_movl__eax__MINUS0x254__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 596
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_464b5e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_jne_.L_464c0e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jge_.L_464c0e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


















define %struct.Memory* @routine_jmpq_.L_464c13(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_464c18(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_464c1d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_464b1e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_464c36(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_464c3b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_46496b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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




define %struct.Memory* @routine_movl_MINUS0x21c__rbp____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 540
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movl_MINUS0x21c__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 540
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__edx__MINUS0x228__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 552
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_jge_.L_464ed8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


























define %struct.Memory* @routine_movl__r9d__MINUS0x338__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 824
  %14 = load i32, i32* %R9D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 7
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__edi__MINUS0x33c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 828
  %14 = load i32, i32* %EDI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__esi__MINUS0x340__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 832
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__eax__MINUS0x344__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 836
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__r8d__MINUS0x348__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 840
  %14 = load i32, i32* %R8D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 7
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movb__cl__MINUS0x349__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 841
  %15 = load i8, i8* %CL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 6
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_jg_.L_464cff(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movb__al__MINUS0x349__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 841
  %15 = load i8, i8* %AL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 6
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_movb_MINUS0x349__rbp____al(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 841
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %AL, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__0x57fd53___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G__0x57fd53_type* @G__0x57fd53 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_leaq_MINUS0x258__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 600
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_leaq_MINUS0x25c__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 604
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_leaq_MINUS0x260__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 608
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movl_MINUS0x33c__rbp____r9d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 828
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__rdi__MINUS0x358__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 856
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movl_MINUS0x340__rbp____r10d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 832
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__rsi__MINUS0x360__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 864
  %14 = load i64, i64* %RSI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movl_MINUS0x344__rbp____r11d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 836
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__rcx__MINUS0x368__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 872
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movl_MINUS0x348__rbp____ebx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 840
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RBX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__r8d__MINUS0x36c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 876
  %14 = load i32, i32* %R8D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 7
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movl_MINUS0x338__rbp____r9d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 824
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq_MINUS0x368__rbp____r14(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 872
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R14, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movq_MINUS0x360__rbp____r15(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 864
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R15, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movq_MINUS0x358__rbp____r12(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 856
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R12, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl_MINUS0x36c__rbp____r13d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 876
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}








define %struct.Memory* @routine_je_.L_464ebf(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x0__MINUS0x260__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 608
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_464e81(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_movl_MINUS0x258__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 600
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x25c__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 604
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__eax__MINUS0x264__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 612
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_cmpl__0x0__MINUS0x264__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 612
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_464e41(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_je_.L_464e02(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_je_.L_464e35(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movq__0x57fd5d___r8(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R8, i64 ptrtoint( %G__0x57fd5d_type* @G__0x57fd5d to i64))
  ret %struct.Memory* %11
}
















define %struct.Memory* @routine_subl_MINUS0x264__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = sub i64 %13, 612
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_jle_.L_464e72(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_jmpq_.L_464e77(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_464e7c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_464eba(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}
















define %struct.Memory* @routine_je_.L_464eb5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_jmpq_.L_464ebf(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_464ec4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_464c7b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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


define %struct.Memory* @routine_jg_.L_464f0c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_callq_.superstring_breakchain_moves(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jg_.L_465109(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_leaq_MINUS0x268__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 616
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__0x3___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 3)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_leaq_MINUS0x2d0__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 720
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
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






define %struct.Memory* @routine_cmpl_MINUS0x268__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %15 = sub i64 %14, 616
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_46508f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl_MINUS0x2d0__rbp__rax_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %18 = add i64 %15, -720
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %19)
  ret %struct.Memory* %22
}


define %struct.Memory* @routine_movl__ecx__MINUS0x2d4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 724
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x2d4__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 724
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




define %struct.Memory* @routine_je_.L_464f87(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_46507b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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














define %struct.Memory* @routine_jle_.L_465076(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_464fac(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movl__0x0__MINUS0x2d8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 728
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_MINUS0x2d8__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 728
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_jge_.L_465018(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movslq_MINUS0x2d8__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 728
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_cmpl_MINUS0x2d4__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 724
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jne_.L_464fff(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_jmpq_.L_465018(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_465004(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_movl__eax__MINUS0x2d8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 728
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_464fb6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_jne_.L_46506c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jge_.L_46506c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_MINUS0x2d4__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 724
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}
















define %struct.Memory* @routine_jmpq_.L_465071(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_465076(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}










define %struct.Memory* @routine_jmpq_.L_464f45(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jge_.L_465104(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movl__ecx__MINUS0x2dc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 732
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x2dc__rbp____edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 732
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_je_.L_4650db(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_4650f0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_movl_MINUS0x2dc__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 732
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}










define %struct.Memory* @routine_jmpq_.L_465099(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_465109(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_callq_.break_chain2_defense_moves(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_0xb54ce4___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G_0xb54ce4_type* @G_0xb54ce4 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_cmpl_0xb060b8___edi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 ptrtoint( %G_0xb060b8_type* @G_0xb060b8 to i64))
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jg_.L_46513f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_callq_.special_rescue5_moves(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jg_.L_465162(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_callq_.break_chain3_moves(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






















define %struct.Memory* @routine_jge_.L_4653eb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


























define %struct.Memory* @routine_movl__r9d__MINUS0x370__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 880
  %14 = load i32, i32* %R9D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 7
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__edi__MINUS0x374__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 884
  %14 = load i32, i32* %EDI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__esi__MINUS0x378__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 888
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__eax__MINUS0x37c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 892
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__r8d__MINUS0x380__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 896
  %14 = load i32, i32* %R8D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 7
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movb__cl__MINUS0x381__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 897
  %15 = load i8, i8* %CL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 6
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_jg_.L_465212(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movb__al__MINUS0x381__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 897
  %15 = load i8, i8* %AL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 6
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIhE2RnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_movb_MINUS0x381__rbp____al(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 897
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWIhE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i8* %AL, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__0x57fd73___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G__0x57fd73_type* @G__0x57fd73 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_leaq_MINUS0x2e0__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 736
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_leaq_MINUS0x2e4__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 740
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_leaq_MINUS0x2e8__rbp____rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 744
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %13)
  ret %struct.Memory* %16
}






define %struct.Memory* @routine_movl_MINUS0x374__rbp____r9d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 884
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__rdi__MINUS0x390__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 912
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movl_MINUS0x378__rbp____r10d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 888
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__rsi__MINUS0x398__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 920
  %14 = load i64, i64* %RSI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movl_MINUS0x37c__rbp____r11d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 892
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq__rcx__MINUS0x3a0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 928
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_movl_MINUS0x380__rbp____ebx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 896
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RBX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__r8d__MINUS0x3a4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 932
  %14 = load i32, i32* %R8D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 7
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_movl_MINUS0x370__rbp____r9d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 880
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movq_MINUS0x3a0__rbp____r14(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 928
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R14, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movq_MINUS0x398__rbp____r15(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 920
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R15, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movq_MINUS0x390__rbp____r12(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 912
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %R12, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl_MINUS0x3a4__rbp____r13d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 932
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}








define %struct.Memory* @routine_je_.L_4653d2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x0__MINUS0x2e8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_465394(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_movl_MINUS0x2e0__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 736
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x2e4__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 740
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_movl__eax__MINUS0x2ec__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 748
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_cmpl__0x0__MINUS0x2ec__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 748
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_465354(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_je_.L_465315(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_je_.L_465348(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




















define %struct.Memory* @routine_subl_MINUS0x2ec__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = sub i64 %13, 748
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}




define %struct.Memory* @routine_jle_.L_465385(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_jmpq_.L_46538a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_46538f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_4653cd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}
















define %struct.Memory* @routine_je_.L_4653c8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_jmpq_.L_4653d2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_jmpq_.L_4653d7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}








define %struct.Memory* @routine_jmpq_.L_46518e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_je_.L_46549c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_4653fd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_je_.L_46545d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_je_.L_465421(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_MINUS0x220__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 544
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}








define %struct.Memory* @routine_je_.L_465458(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_movl_MINUS0x220__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 544
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x224__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 548
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}




define %struct.Memory* @routine_jmpq_.L_46548e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_je_.L_465489(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_movl_MINUS0x224__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 548
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




define %struct.Memory* @routine_jmpq_.L_4654a1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_je_.L_4654fc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_je_.L_4654c5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_je_.L_4654f7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
















define %struct.Memory* @routine_jmpq_.L_46552d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_je_.L_465528(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_addq__0x3a8___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 936)
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

