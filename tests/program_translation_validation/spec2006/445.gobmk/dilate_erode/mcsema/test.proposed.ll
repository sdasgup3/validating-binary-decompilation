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

declare %struct.Memory* @sub_46de20.captured_territory(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Data Access Globals
%G__0xb4bd20_type = type <{ [8 x i8] }>
@G__0xb4bd20= global %G__0xb4bd20_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>


define %struct.Memory* @dilate_erode(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .dilate_erode:	 RIP: 46ccd0	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 46ccd0	 Bytes: 1
  %loadMem_46ccd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ccd0 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ccd0)
  store %struct.Memory* %call_46ccd0, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 46ccd1	 Bytes: 3
  %loadMem_46ccd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ccd1 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ccd1)
  store %struct.Memory* %call_46ccd1, %struct.Memory** %MEMORY

  ; Code: subq $0x670, %rsp	 RIP: 46ccd4	 Bytes: 7
  %loadMem_46ccd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ccd4 = call %struct.Memory* @routine_subq__0x670___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ccd4)
  store %struct.Memory* %call_46ccd4, %struct.Memory** %MEMORY

  ; Code: movl %edi, -0x4(%rbp)	 RIP: 46ccdb	 Bytes: 3
  %loadMem_46ccdb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ccdb = call %struct.Memory* @routine_movl__edi__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ccdb)
  store %struct.Memory* %call_46ccdb, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0x8(%rbp)	 RIP: 46ccde	 Bytes: 3
  %loadMem_46ccde = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ccde = call %struct.Memory* @routine_movl__esi__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ccde)
  store %struct.Memory* %call_46ccde, %struct.Memory** %MEMORY

  ; Code: movq %rdx, -0x10(%rbp)	 RIP: 46cce1	 Bytes: 4
  %loadMem_46cce1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46cce1 = call %struct.Memory* @routine_movq__rdx__MINUS0x10__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46cce1)
  store %struct.Memory* %call_46cce1, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x14(%rbp)	 RIP: 46cce5	 Bytes: 3
  %loadMem_46cce5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46cce5 = call %struct.Memory* @routine_movl__ecx__MINUS0x14__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46cce5)
  store %struct.Memory* %call_46cce5, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x668(%rbp)	 RIP: 46cce8	 Bytes: 10
  %loadMem_46cce8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46cce8 = call %struct.Memory* @routine_movl__0x0__MINUS0x668__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46cce8)
  store %struct.Memory* %call_46cce8, %struct.Memory** %MEMORY

  ; Code: movl $0x15, -0x18(%rbp)	 RIP: 46ccf2	 Bytes: 7
  %loadMem_46ccf2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ccf2 = call %struct.Memory* @routine_movl__0x15__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ccf2)
  store %struct.Memory* %call_46ccf2, %struct.Memory** %MEMORY

  ; Code: .L_46ccf9:	 RIP: 46ccf9	 Bytes: 0
  br label %block_.L_46ccf9
block_.L_46ccf9:

  ; Code: cmpl $0x190, -0x18(%rbp)	 RIP: 46ccf9	 Bytes: 7
  %loadMem_46ccf9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ccf9 = call %struct.Memory* @routine_cmpl__0x190__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ccf9)
  store %struct.Memory* %call_46ccf9, %struct.Memory** %MEMORY

  ; Code: jge .L_46cdff	 RIP: 46cd00	 Bytes: 6
  %loadMem_46cd00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46cd00 = call %struct.Memory* @routine_jge_.L_46cdff(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46cd00, i8* %BRANCH_TAKEN, i64 255, i64 6, i64 6)
  store %struct.Memory* %call_46cd00, %struct.Memory** %MEMORY

  %loadBr_46cd00 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46cd00 = icmp eq i8 %loadBr_46cd00, 1
  br i1 %cmpBr_46cd00, label %block_.L_46cdff, label %block_46cd06

block_46cd06:
  ; Code: movslq -0x18(%rbp), %rax	 RIP: 46cd06	 Bytes: 4
  %loadMem_46cd06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46cd06 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46cd06)
  store %struct.Memory* %call_46cd06, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 46cd0a	 Bytes: 8
  %loadMem_46cd0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46cd0a = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46cd0a)
  store %struct.Memory* %call_46cd0a, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %ecx	 RIP: 46cd12	 Bytes: 3
  %loadMem_46cd12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46cd12 = call %struct.Memory* @routine_cmpl__0x3___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46cd12)
  store %struct.Memory* %call_46cd12, %struct.Memory** %MEMORY

  ; Code: jne .L_46cd20	 RIP: 46cd15	 Bytes: 6
  %loadMem_46cd15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46cd15 = call %struct.Memory* @routine_jne_.L_46cd20(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46cd15, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_46cd15, %struct.Memory** %MEMORY

  %loadBr_46cd15 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46cd15 = icmp eq i8 %loadBr_46cd15, 1
  br i1 %cmpBr_46cd15, label %block_.L_46cd20, label %block_46cd1b

block_46cd1b:
  ; Code: jmpq .L_46cdf1	 RIP: 46cd1b	 Bytes: 5
  %loadMem_46cd1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46cd1b = call %struct.Memory* @routine_jmpq_.L_46cdf1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46cd1b, i64 214, i64 5)
  store %struct.Memory* %call_46cd1b, %struct.Memory** %MEMORY

  br label %block_.L_46cdf1

  ; Code: .L_46cd20:	 RIP: 46cd20	 Bytes: 0
block_.L_46cd20:

  ; Code: movslq -0x18(%rbp), %rax	 RIP: 46cd20	 Bytes: 4
  %loadMem_46cd20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46cd20 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46cd20)
  store %struct.Memory* %call_46cd20, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 46cd24	 Bytes: 8
  %loadMem_46cd24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46cd24 = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46cd24)
  store %struct.Memory* %call_46cd24, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %ecx	 RIP: 46cd2c	 Bytes: 3
  %loadMem_46cd2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46cd2c = call %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46cd2c)
  store %struct.Memory* %call_46cd2c, %struct.Memory** %MEMORY

  ; Code: je .L_46cd5e	 RIP: 46cd2f	 Bytes: 6
  %loadMem_46cd2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46cd2f = call %struct.Memory* @routine_je_.L_46cd5e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46cd2f, i8* %BRANCH_TAKEN, i64 47, i64 6, i64 6)
  store %struct.Memory* %call_46cd2f, %struct.Memory** %MEMORY

  %loadBr_46cd2f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46cd2f = icmp eq i8 %loadBr_46cd2f, 1
  br i1 %cmpBr_46cd2f, label %block_.L_46cd5e, label %block_46cd35

block_46cd35:
  ; Code: movq $0xb4bd20, %rax	 RIP: 46cd35	 Bytes: 10
  %loadMem_46cd35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46cd35 = call %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46cd35)
  store %struct.Memory* %call_46cd35, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 46cd3f	 Bytes: 4
  %loadMem_46cd3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46cd3f = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46cd3f)
  store %struct.Memory* %call_46cd3f, %struct.Memory** %MEMORY

  ; Code: imulq $0x4c, %rcx, %rcx	 RIP: 46cd43	 Bytes: 4
  %loadMem_46cd43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46cd43 = call %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46cd43)
  store %struct.Memory* %call_46cd43, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 46cd47	 Bytes: 3
  %loadMem_46cd47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46cd47 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46cd47)
  store %struct.Memory* %call_46cd47, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, 0x40(%rax)	 RIP: 46cd4a	 Bytes: 4
  %loadMem_46cd4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46cd4a = call %struct.Memory* @routine_cmpl__0x2__0x40__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46cd4a)
  store %struct.Memory* %call_46cd4a, %struct.Memory** %MEMORY

  ; Code: jne .L_46cd5e	 RIP: 46cd4e	 Bytes: 6
  %loadMem_46cd4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46cd4e = call %struct.Memory* @routine_jne_.L_46cd5e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46cd4e, i8* %BRANCH_TAKEN, i64 16, i64 6, i64 6)
  store %struct.Memory* %call_46cd4e, %struct.Memory** %MEMORY

  %loadBr_46cd4e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46cd4e = icmp eq i8 %loadBr_46cd4e, 1
  br i1 %cmpBr_46cd4e, label %block_.L_46cd5e, label %block_46cd54

block_46cd54:
  ; Code: movl $0x1, -0x668(%rbp)	 RIP: 46cd54	 Bytes: 10
  %loadMem_46cd54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46cd54 = call %struct.Memory* @routine_movl__0x1__MINUS0x668__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46cd54)
  store %struct.Memory* %call_46cd54, %struct.Memory** %MEMORY

  ; Code: .L_46cd5e:	 RIP: 46cd5e	 Bytes: 0
  br label %block_.L_46cd5e
block_.L_46cd5e:

  ; Code: movslq -0x18(%rbp), %rax	 RIP: 46cd5e	 Bytes: 4
  %loadMem_46cd5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46cd5e = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46cd5e)
  store %struct.Memory* %call_46cd5e, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 46cd62	 Bytes: 8
  %loadMem_46cd62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46cd62 = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46cd62)
  store %struct.Memory* %call_46cd62, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, %ecx	 RIP: 46cd6a	 Bytes: 3
  %loadMem_46cd6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46cd6a = call %struct.Memory* @routine_cmpl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46cd6a)
  store %struct.Memory* %call_46cd6a, %struct.Memory** %MEMORY

  ; Code: jne .L_46cd9b	 RIP: 46cd6d	 Bytes: 6
  %loadMem_46cd6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46cd6d = call %struct.Memory* @routine_jne_.L_46cd9b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46cd6d, i8* %BRANCH_TAKEN, i64 46, i64 6, i64 6)
  store %struct.Memory* %call_46cd6d, %struct.Memory** %MEMORY

  %loadBr_46cd6d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46cd6d = icmp eq i8 %loadBr_46cd6d, 1
  br i1 %cmpBr_46cd6d, label %block_.L_46cd9b, label %block_46cd73

block_46cd73:
  ; Code: movl -0x18(%rbp), %edi	 RIP: 46cd73	 Bytes: 3
  %loadMem_46cd73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46cd73 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46cd73)
  store %struct.Memory* %call_46cd73, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %esi	 RIP: 46cd76	 Bytes: 3
  %loadMem_46cd76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46cd76 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46cd76)
  store %struct.Memory* %call_46cd76, %struct.Memory** %MEMORY

  ; Code: callq .captured_territory	 RIP: 46cd79	 Bytes: 5
  %loadMem1_46cd79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46cd79 = call %struct.Memory* @routine_callq_.captured_territory(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46cd79, i64 4263, i64 5, i64 5)
  store %struct.Memory* %call1_46cd79, %struct.Memory** %MEMORY

  %loadMem2_46cd79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46cd79 = load i64, i64* %3
  %call2_46cd79 = call %struct.Memory* @sub_46de20.captured_territory(%struct.State* %0, i64  %loadPC_46cd79, %struct.Memory* %loadMem2_46cd79)
  store %struct.Memory* %call2_46cd79, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 46cd7e	 Bytes: 3
  %loadMem_46cd7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46cd7e = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46cd7e)
  store %struct.Memory* %call_46cd7e, %struct.Memory** %MEMORY

  ; Code: jne .L_46cd9b	 RIP: 46cd81	 Bytes: 6
  %loadMem_46cd81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46cd81 = call %struct.Memory* @routine_jne_.L_46cd9b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46cd81, i8* %BRANCH_TAKEN, i64 26, i64 6, i64 6)
  store %struct.Memory* %call_46cd81, %struct.Memory** %MEMORY

  %loadBr_46cd81 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46cd81 = icmp eq i8 %loadBr_46cd81, 1
  br i1 %cmpBr_46cd81, label %block_.L_46cd9b, label %block_46cd87

block_46cd87:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 46cd87	 Bytes: 4
  %loadMem_46cd87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46cd87 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46cd87)
  store %struct.Memory* %call_46cd87, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 46cd8b	 Bytes: 4
  %loadMem_46cd8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46cd8b = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46cd8b)
  store %struct.Memory* %call_46cd8b, %struct.Memory** %MEMORY

  ; Code: movl $0x80, (%rax,%rcx,4)	 RIP: 46cd8f	 Bytes: 7
  %loadMem_46cd8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46cd8f = call %struct.Memory* @routine_movl__0x80____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46cd8f)
  store %struct.Memory* %call_46cd8f, %struct.Memory** %MEMORY

  ; Code: jmpq .L_46cdec	 RIP: 46cd96	 Bytes: 5
  %loadMem_46cd96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46cd96 = call %struct.Memory* @routine_jmpq_.L_46cdec(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46cd96, i64 86, i64 5)
  store %struct.Memory* %call_46cd96, %struct.Memory** %MEMORY

  br label %block_.L_46cdec

  ; Code: .L_46cd9b:	 RIP: 46cd9b	 Bytes: 0
block_.L_46cd9b:

  ; Code: movslq -0x18(%rbp), %rax	 RIP: 46cd9b	 Bytes: 4
  %loadMem_46cd9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46cd9b = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46cd9b)
  store %struct.Memory* %call_46cd9b, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 46cd9f	 Bytes: 8
  %loadMem_46cd9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46cd9f = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46cd9f)
  store %struct.Memory* %call_46cd9f, %struct.Memory** %MEMORY

  ; Code: cmpl $0x2, %ecx	 RIP: 46cda7	 Bytes: 3
  %loadMem_46cda7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46cda7 = call %struct.Memory* @routine_cmpl__0x2___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46cda7)
  store %struct.Memory* %call_46cda7, %struct.Memory** %MEMORY

  ; Code: jne .L_46cdd8	 RIP: 46cdaa	 Bytes: 6
  %loadMem_46cdaa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46cdaa = call %struct.Memory* @routine_jne_.L_46cdd8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46cdaa, i8* %BRANCH_TAKEN, i64 46, i64 6, i64 6)
  store %struct.Memory* %call_46cdaa, %struct.Memory** %MEMORY

  %loadBr_46cdaa = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46cdaa = icmp eq i8 %loadBr_46cdaa, 1
  br i1 %cmpBr_46cdaa, label %block_.L_46cdd8, label %block_46cdb0

block_46cdb0:
  ; Code: movl -0x18(%rbp), %edi	 RIP: 46cdb0	 Bytes: 3
  %loadMem_46cdb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46cdb0 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____edi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46cdb0)
  store %struct.Memory* %call_46cdb0, %struct.Memory** %MEMORY

  ; Code: movl -0x14(%rbp), %esi	 RIP: 46cdb3	 Bytes: 3
  %loadMem_46cdb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46cdb3 = call %struct.Memory* @routine_movl_MINUS0x14__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46cdb3)
  store %struct.Memory* %call_46cdb3, %struct.Memory** %MEMORY

  ; Code: callq .captured_territory	 RIP: 46cdb6	 Bytes: 5
  %loadMem1_46cdb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46cdb6 = call %struct.Memory* @routine_callq_.captured_territory(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46cdb6, i64 4202, i64 5, i64 5)
  store %struct.Memory* %call1_46cdb6, %struct.Memory** %MEMORY

  %loadMem2_46cdb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46cdb6 = load i64, i64* %3
  %call2_46cdb6 = call %struct.Memory* @sub_46de20.captured_territory(%struct.State* %0, i64  %loadPC_46cdb6, %struct.Memory* %loadMem2_46cdb6)
  store %struct.Memory* %call2_46cdb6, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 46cdbb	 Bytes: 3
  %loadMem_46cdbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46cdbb = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46cdbb)
  store %struct.Memory* %call_46cdbb, %struct.Memory** %MEMORY

  ; Code: jne .L_46cdd8	 RIP: 46cdbe	 Bytes: 6
  %loadMem_46cdbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46cdbe = call %struct.Memory* @routine_jne_.L_46cdd8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46cdbe, i8* %BRANCH_TAKEN, i64 26, i64 6, i64 6)
  store %struct.Memory* %call_46cdbe, %struct.Memory** %MEMORY

  %loadBr_46cdbe = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46cdbe = icmp eq i8 %loadBr_46cdbe, 1
  br i1 %cmpBr_46cdbe, label %block_.L_46cdd8, label %block_46cdc4

block_46cdc4:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 46cdc4	 Bytes: 4
  %loadMem_46cdc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46cdc4 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46cdc4)
  store %struct.Memory* %call_46cdc4, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 46cdc8	 Bytes: 4
  %loadMem_46cdc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46cdc8 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46cdc8)
  store %struct.Memory* %call_46cdc8, %struct.Memory** %MEMORY

  ; Code: movl $0xffffff80, (%rax,%rcx,4)	 RIP: 46cdcc	 Bytes: 7
  %loadMem_46cdcc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46cdcc = call %struct.Memory* @routine_movl__0xffffff80____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46cdcc)
  store %struct.Memory* %call_46cdcc, %struct.Memory** %MEMORY

  ; Code: jmpq .L_46cde7	 RIP: 46cdd3	 Bytes: 5
  %loadMem_46cdd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46cdd3 = call %struct.Memory* @routine_jmpq_.L_46cde7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46cdd3, i64 20, i64 5)
  store %struct.Memory* %call_46cdd3, %struct.Memory** %MEMORY

  br label %block_.L_46cde7

  ; Code: .L_46cdd8:	 RIP: 46cdd8	 Bytes: 0
block_.L_46cdd8:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 46cdd8	 Bytes: 4
  %loadMem_46cdd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46cdd8 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46cdd8)
  store %struct.Memory* %call_46cdd8, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 46cddc	 Bytes: 4
  %loadMem_46cddc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46cddc = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46cddc)
  store %struct.Memory* %call_46cddc, %struct.Memory** %MEMORY

  ; Code: movl $0x0, (%rax,%rcx,4)	 RIP: 46cde0	 Bytes: 7
  %loadMem_46cde0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46cde0 = call %struct.Memory* @routine_movl__0x0____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46cde0)
  store %struct.Memory* %call_46cde0, %struct.Memory** %MEMORY

  ; Code: .L_46cde7:	 RIP: 46cde7	 Bytes: 0
  br label %block_.L_46cde7
block_.L_46cde7:

  ; Code: jmpq .L_46cdec	 RIP: 46cde7	 Bytes: 5
  %loadMem_46cde7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46cde7 = call %struct.Memory* @routine_jmpq_.L_46cdec(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46cde7, i64 5, i64 5)
  store %struct.Memory* %call_46cde7, %struct.Memory** %MEMORY

  br label %block_.L_46cdec

  ; Code: .L_46cdec:	 RIP: 46cdec	 Bytes: 0
block_.L_46cdec:

  ; Code: jmpq .L_46cdf1	 RIP: 46cdec	 Bytes: 5
  %loadMem_46cdec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46cdec = call %struct.Memory* @routine_jmpq_.L_46cdf1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46cdec, i64 5, i64 5)
  store %struct.Memory* %call_46cdec, %struct.Memory** %MEMORY

  br label %block_.L_46cdf1

  ; Code: .L_46cdf1:	 RIP: 46cdf1	 Bytes: 0
block_.L_46cdf1:

  ; Code: movl -0x18(%rbp), %eax	 RIP: 46cdf1	 Bytes: 3
  %loadMem_46cdf1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46cdf1 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46cdf1)
  store %struct.Memory* %call_46cdf1, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 46cdf4	 Bytes: 3
  %loadMem_46cdf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46cdf4 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46cdf4)
  store %struct.Memory* %call_46cdf4, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x18(%rbp)	 RIP: 46cdf7	 Bytes: 3
  %loadMem_46cdf7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46cdf7 = call %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46cdf7)
  store %struct.Memory* %call_46cdf7, %struct.Memory** %MEMORY

  ; Code: jmpq .L_46ccf9	 RIP: 46cdfa	 Bytes: 5
  %loadMem_46cdfa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46cdfa = call %struct.Memory* @routine_jmpq_.L_46ccf9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46cdfa, i64 -257, i64 5)
  store %struct.Memory* %call_46cdfa, %struct.Memory** %MEMORY

  br label %block_.L_46ccf9

  ; Code: .L_46cdff:	 RIP: 46cdff	 Bytes: 0
block_.L_46cdff:

  ; Code: movl $0x640, %eax	 RIP: 46cdff	 Bytes: 5
  %loadMem_46cdff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46cdff = call %struct.Memory* @routine_movl__0x640___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46cdff)
  store %struct.Memory* %call_46cdff, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 46ce04	 Bytes: 2
  %loadMem_46ce04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ce04 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ce04)
  store %struct.Memory* %call_46ce04, %struct.Memory** %MEMORY

  ; Code: leaq -0x660(%rbp), %rcx	 RIP: 46ce06	 Bytes: 7
  %loadMem_46ce06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ce06 = call %struct.Memory* @routine_leaq_MINUS0x660__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ce06)
  store %struct.Memory* %call_46ce06, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rsi	 RIP: 46ce0d	 Bytes: 4
  %loadMem_46ce0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ce0d = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ce0d)
  store %struct.Memory* %call_46ce0d, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdi	 RIP: 46ce11	 Bytes: 3
  %loadMem_46ce11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ce11 = call %struct.Memory* @routine_movq__rcx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ce11)
  store %struct.Memory* %call_46ce11, %struct.Memory** %MEMORY

  ; Code: callq .memcpy_plt	 RIP: 46ce14	 Bytes: 5
  %loadMem1_46ce14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46ce14 = call %struct.Memory* @routine_callq_.memcpy_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46ce14, i64 -441636, i64 5, i64 5)
  store %struct.Memory* %call1_46ce14, %struct.Memory** %MEMORY

  %loadMem2_46ce14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46ce14 = load i64, i64* %3
  %call2_46ce14 = call %struct.Memory* @ext_memcpy(%struct.State* %0, i64  %loadPC_46ce14, %struct.Memory* %loadMem2_46ce14)
  store %struct.Memory* %call2_46ce14, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x664(%rbp)	 RIP: 46ce19	 Bytes: 10
  %loadMem_46ce19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ce19 = call %struct.Memory* @routine_movl__0x0__MINUS0x664__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ce19)
  store %struct.Memory* %call_46ce19, %struct.Memory** %MEMORY

  ; Code: .L_46ce23:	 RIP: 46ce23	 Bytes: 0
  br label %block_.L_46ce23
block_.L_46ce23:

  ; Code: movl -0x664(%rbp), %eax	 RIP: 46ce23	 Bytes: 6
  %loadMem_46ce23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ce23 = call %struct.Memory* @routine_movl_MINUS0x664__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ce23)
  store %struct.Memory* %call_46ce23, %struct.Memory** %MEMORY

  ; Code: cmpl -0x4(%rbp), %eax	 RIP: 46ce29	 Bytes: 3
  %loadMem_46ce29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ce29 = call %struct.Memory* @routine_cmpl_MINUS0x4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ce29)
  store %struct.Memory* %call_46ce29, %struct.Memory** %MEMORY

  ; Code: jge .L_46d28a	 RIP: 46ce2c	 Bytes: 6
  %loadMem_46ce2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ce2c = call %struct.Memory* @routine_jge_.L_46d28a(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ce2c, i8* %BRANCH_TAKEN, i64 1118, i64 6, i64 6)
  store %struct.Memory* %call_46ce2c, %struct.Memory** %MEMORY

  %loadBr_46ce2c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46ce2c = icmp eq i8 %loadBr_46ce2c, 1
  br i1 %cmpBr_46ce2c, label %block_.L_46d28a, label %block_46ce32

block_46ce32:
  ; Code: movl $0x15, -0x18(%rbp)	 RIP: 46ce32	 Bytes: 7
  %loadMem_46ce32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ce32 = call %struct.Memory* @routine_movl__0x15__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ce32)
  store %struct.Memory* %call_46ce32, %struct.Memory** %MEMORY

  ; Code: .L_46ce39:	 RIP: 46ce39	 Bytes: 0
  br label %block_.L_46ce39
block_.L_46ce39:

  ; Code: cmpl $0x190, -0x18(%rbp)	 RIP: 46ce39	 Bytes: 7
  %loadMem_46ce39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ce39 = call %struct.Memory* @routine_cmpl__0x190__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ce39)
  store %struct.Memory* %call_46ce39, %struct.Memory** %MEMORY

  ; Code: jge .L_46d259	 RIP: 46ce40	 Bytes: 6
  %loadMem_46ce40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ce40 = call %struct.Memory* @routine_jge_.L_46d259(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ce40, i8* %BRANCH_TAKEN, i64 1049, i64 6, i64 6)
  store %struct.Memory* %call_46ce40, %struct.Memory** %MEMORY

  %loadBr_46ce40 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46ce40 = icmp eq i8 %loadBr_46ce40, 1
  br i1 %cmpBr_46ce40, label %block_.L_46d259, label %block_46ce46

block_46ce46:
  ; Code: movslq -0x18(%rbp), %rax	 RIP: 46ce46	 Bytes: 4
  %loadMem_46ce46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ce46 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ce46)
  store %struct.Memory* %call_46ce46, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 46ce4a	 Bytes: 8
  %loadMem_46ce4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ce4a = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ce4a)
  store %struct.Memory* %call_46ce4a, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %ecx	 RIP: 46ce52	 Bytes: 3
  %loadMem_46ce52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ce52 = call %struct.Memory* @routine_cmpl__0x3___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ce52)
  store %struct.Memory* %call_46ce52, %struct.Memory** %MEMORY

  ; Code: jne .L_46ce60	 RIP: 46ce55	 Bytes: 6
  %loadMem_46ce55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ce55 = call %struct.Memory* @routine_jne_.L_46ce60(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ce55, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_46ce55, %struct.Memory** %MEMORY

  %loadBr_46ce55 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46ce55 = icmp eq i8 %loadBr_46ce55, 1
  br i1 %cmpBr_46ce55, label %block_.L_46ce60, label %block_46ce5b

block_46ce5b:
  ; Code: jmpq .L_46d24b	 RIP: 46ce5b	 Bytes: 5
  %loadMem_46ce5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ce5b = call %struct.Memory* @routine_jmpq_.L_46d24b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ce5b, i64 1008, i64 5)
  store %struct.Memory* %call_46ce5b, %struct.Memory** %MEMORY

  br label %block_.L_46d24b

  ; Code: .L_46ce60:	 RIP: 46ce60	 Bytes: 0
block_.L_46ce60:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 46ce60	 Bytes: 4
  %loadMem_46ce60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ce60 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ce60)
  store %struct.Memory* %call_46ce60, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 46ce64	 Bytes: 4
  %loadMem_46ce64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ce64 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ce64)
  store %struct.Memory* %call_46ce64, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, (%rax,%rcx,4)	 RIP: 46ce68	 Bytes: 4
  %loadMem_46ce68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ce68 = call %struct.Memory* @routine_cmpl__0x0____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ce68)
  store %struct.Memory* %call_46ce68, %struct.Memory** %MEMORY

  ; Code: jl .L_46d053	 RIP: 46ce6c	 Bytes: 6
  %loadMem_46ce6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ce6c = call %struct.Memory* @routine_jl_.L_46d053(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ce6c, i8* %BRANCH_TAKEN, i64 487, i64 6, i64 6)
  store %struct.Memory* %call_46ce6c, %struct.Memory** %MEMORY

  %loadBr_46ce6c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46ce6c = icmp eq i8 %loadBr_46ce6c, 1
  br i1 %cmpBr_46ce6c, label %block_.L_46d053, label %block_46ce72

block_46ce72:
  ; Code: movl -0x18(%rbp), %eax	 RIP: 46ce72	 Bytes: 3
  %loadMem_46ce72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ce72 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ce72)
  store %struct.Memory* %call_46ce72, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 46ce75	 Bytes: 3
  %loadMem_46ce75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ce75 = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ce75)
  store %struct.Memory* %call_46ce75, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 46ce78	 Bytes: 3
  %loadMem_46ce78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ce78 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ce78)
  store %struct.Memory* %call_46ce78, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 46ce7b	 Bytes: 8
  %loadMem_46ce7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ce7b = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ce7b)
  store %struct.Memory* %call_46ce7b, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %eax	 RIP: 46ce83	 Bytes: 3
  %loadMem_46ce83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ce83 = call %struct.Memory* @routine_cmpl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ce83)
  store %struct.Memory* %call_46ce83, %struct.Memory** %MEMORY

  ; Code: je .L_46cea3	 RIP: 46ce86	 Bytes: 6
  %loadMem_46ce86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ce86 = call %struct.Memory* @routine_je_.L_46cea3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ce86, i8* %BRANCH_TAKEN, i64 29, i64 6, i64 6)
  store %struct.Memory* %call_46ce86, %struct.Memory** %MEMORY

  %loadBr_46ce86 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46ce86 = icmp eq i8 %loadBr_46ce86, 1
  br i1 %cmpBr_46ce86, label %block_.L_46cea3, label %block_46ce8c

block_46ce8c:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 46ce8c	 Bytes: 4
  %loadMem_46ce8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ce8c = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ce8c)
  store %struct.Memory* %call_46ce8c, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %ecx	 RIP: 46ce90	 Bytes: 3
  %loadMem_46ce90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ce90 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ce90)
  store %struct.Memory* %call_46ce90, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %ecx	 RIP: 46ce93	 Bytes: 3
  %loadMem_46ce93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ce93 = call %struct.Memory* @routine_addl__0x14___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ce93)
  store %struct.Memory* %call_46ce93, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 46ce96	 Bytes: 3
  %loadMem_46ce96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ce96 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ce96)
  store %struct.Memory* %call_46ce96, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, (%rax,%rdx,4)	 RIP: 46ce99	 Bytes: 4
  %loadMem_46ce99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ce99 = call %struct.Memory* @routine_cmpl__0x0____rax__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ce99)
  store %struct.Memory* %call_46ce99, %struct.Memory** %MEMORY

  ; Code: jl .L_46d053	 RIP: 46ce9d	 Bytes: 6
  %loadMem_46ce9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ce9d = call %struct.Memory* @routine_jl_.L_46d053(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ce9d, i8* %BRANCH_TAKEN, i64 438, i64 6, i64 6)
  store %struct.Memory* %call_46ce9d, %struct.Memory** %MEMORY

  %loadBr_46ce9d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46ce9d = icmp eq i8 %loadBr_46ce9d, 1
  br i1 %cmpBr_46ce9d, label %block_.L_46d053, label %block_.L_46cea3

  ; Code: .L_46cea3:	 RIP: 46cea3	 Bytes: 0
block_.L_46cea3:

  ; Code: movl -0x18(%rbp), %eax	 RIP: 46cea3	 Bytes: 3
  %loadMem_46cea3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46cea3 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46cea3)
  store %struct.Memory* %call_46cea3, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 46cea6	 Bytes: 3
  %loadMem_46cea6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46cea6 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46cea6)
  store %struct.Memory* %call_46cea6, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 46cea9	 Bytes: 3
  %loadMem_46cea9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46cea9 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46cea9)
  store %struct.Memory* %call_46cea9, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 46ceac	 Bytes: 8
  %loadMem_46ceac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ceac = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ceac)
  store %struct.Memory* %call_46ceac, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %eax	 RIP: 46ceb4	 Bytes: 3
  %loadMem_46ceb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ceb4 = call %struct.Memory* @routine_cmpl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ceb4)
  store %struct.Memory* %call_46ceb4, %struct.Memory** %MEMORY

  ; Code: je .L_46ced4	 RIP: 46ceb7	 Bytes: 6
  %loadMem_46ceb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ceb7 = call %struct.Memory* @routine_je_.L_46ced4(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ceb7, i8* %BRANCH_TAKEN, i64 29, i64 6, i64 6)
  store %struct.Memory* %call_46ceb7, %struct.Memory** %MEMORY

  %loadBr_46ceb7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46ceb7 = icmp eq i8 %loadBr_46ceb7, 1
  br i1 %cmpBr_46ceb7, label %block_.L_46ced4, label %block_46cebd

block_46cebd:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 46cebd	 Bytes: 4
  %loadMem_46cebd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46cebd = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46cebd)
  store %struct.Memory* %call_46cebd, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %ecx	 RIP: 46cec1	 Bytes: 3
  %loadMem_46cec1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46cec1 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46cec1)
  store %struct.Memory* %call_46cec1, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 46cec4	 Bytes: 3
  %loadMem_46cec4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46cec4 = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46cec4)
  store %struct.Memory* %call_46cec4, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 46cec7	 Bytes: 3
  %loadMem_46cec7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46cec7 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46cec7)
  store %struct.Memory* %call_46cec7, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, (%rax,%rdx,4)	 RIP: 46ceca	 Bytes: 4
  %loadMem_46ceca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ceca = call %struct.Memory* @routine_cmpl__0x0____rax__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ceca)
  store %struct.Memory* %call_46ceca, %struct.Memory** %MEMORY

  ; Code: jl .L_46d053	 RIP: 46cece	 Bytes: 6
  %loadMem_46cece = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46cece = call %struct.Memory* @routine_jl_.L_46d053(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46cece, i8* %BRANCH_TAKEN, i64 389, i64 6, i64 6)
  store %struct.Memory* %call_46cece, %struct.Memory** %MEMORY

  %loadBr_46cece = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46cece = icmp eq i8 %loadBr_46cece, 1
  br i1 %cmpBr_46cece, label %block_.L_46d053, label %block_.L_46ced4

  ; Code: .L_46ced4:	 RIP: 46ced4	 Bytes: 0
block_.L_46ced4:

  ; Code: movl -0x18(%rbp), %eax	 RIP: 46ced4	 Bytes: 3
  %loadMem_46ced4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ced4 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ced4)
  store %struct.Memory* %call_46ced4, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 46ced7	 Bytes: 3
  %loadMem_46ced7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ced7 = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ced7)
  store %struct.Memory* %call_46ced7, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 46ceda	 Bytes: 3
  %loadMem_46ceda = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ceda = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ceda)
  store %struct.Memory* %call_46ceda, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 46cedd	 Bytes: 8
  %loadMem_46cedd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46cedd = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46cedd)
  store %struct.Memory* %call_46cedd, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %eax	 RIP: 46cee5	 Bytes: 3
  %loadMem_46cee5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46cee5 = call %struct.Memory* @routine_cmpl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46cee5)
  store %struct.Memory* %call_46cee5, %struct.Memory** %MEMORY

  ; Code: je .L_46cf05	 RIP: 46cee8	 Bytes: 6
  %loadMem_46cee8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46cee8 = call %struct.Memory* @routine_je_.L_46cf05(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46cee8, i8* %BRANCH_TAKEN, i64 29, i64 6, i64 6)
  store %struct.Memory* %call_46cee8, %struct.Memory** %MEMORY

  %loadBr_46cee8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46cee8 = icmp eq i8 %loadBr_46cee8, 1
  br i1 %cmpBr_46cee8, label %block_.L_46cf05, label %block_46ceee

block_46ceee:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 46ceee	 Bytes: 4
  %loadMem_46ceee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ceee = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ceee)
  store %struct.Memory* %call_46ceee, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %ecx	 RIP: 46cef2	 Bytes: 3
  %loadMem_46cef2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46cef2 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46cef2)
  store %struct.Memory* %call_46cef2, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %ecx	 RIP: 46cef5	 Bytes: 3
  %loadMem_46cef5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46cef5 = call %struct.Memory* @routine_subl__0x14___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46cef5)
  store %struct.Memory* %call_46cef5, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 46cef8	 Bytes: 3
  %loadMem_46cef8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46cef8 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46cef8)
  store %struct.Memory* %call_46cef8, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, (%rax,%rdx,4)	 RIP: 46cefb	 Bytes: 4
  %loadMem_46cefb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46cefb = call %struct.Memory* @routine_cmpl__0x0____rax__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46cefb)
  store %struct.Memory* %call_46cefb, %struct.Memory** %MEMORY

  ; Code: jl .L_46d053	 RIP: 46ceff	 Bytes: 6
  %loadMem_46ceff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46ceff = call %struct.Memory* @routine_jl_.L_46d053(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46ceff, i8* %BRANCH_TAKEN, i64 340, i64 6, i64 6)
  store %struct.Memory* %call_46ceff, %struct.Memory** %MEMORY

  %loadBr_46ceff = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46ceff = icmp eq i8 %loadBr_46ceff, 1
  br i1 %cmpBr_46ceff, label %block_.L_46d053, label %block_.L_46cf05

  ; Code: .L_46cf05:	 RIP: 46cf05	 Bytes: 0
block_.L_46cf05:

  ; Code: movl -0x18(%rbp), %eax	 RIP: 46cf05	 Bytes: 3
  %loadMem_46cf05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46cf05 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46cf05)
  store %struct.Memory* %call_46cf05, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 46cf08	 Bytes: 3
  %loadMem_46cf08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46cf08 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46cf08)
  store %struct.Memory* %call_46cf08, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 46cf0b	 Bytes: 3
  %loadMem_46cf0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46cf0b = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46cf0b)
  store %struct.Memory* %call_46cf0b, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 46cf0e	 Bytes: 8
  %loadMem_46cf0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46cf0e = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46cf0e)
  store %struct.Memory* %call_46cf0e, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %eax	 RIP: 46cf16	 Bytes: 3
  %loadMem_46cf16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46cf16 = call %struct.Memory* @routine_cmpl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46cf16)
  store %struct.Memory* %call_46cf16, %struct.Memory** %MEMORY

  ; Code: je .L_46cf36	 RIP: 46cf19	 Bytes: 6
  %loadMem_46cf19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46cf19 = call %struct.Memory* @routine_je_.L_46cf36(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46cf19, i8* %BRANCH_TAKEN, i64 29, i64 6, i64 6)
  store %struct.Memory* %call_46cf19, %struct.Memory** %MEMORY

  %loadBr_46cf19 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46cf19 = icmp eq i8 %loadBr_46cf19, 1
  br i1 %cmpBr_46cf19, label %block_.L_46cf36, label %block_46cf1f

block_46cf1f:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 46cf1f	 Bytes: 4
  %loadMem_46cf1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46cf1f = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46cf1f)
  store %struct.Memory* %call_46cf1f, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %ecx	 RIP: 46cf23	 Bytes: 3
  %loadMem_46cf23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46cf23 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46cf23)
  store %struct.Memory* %call_46cf23, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 46cf26	 Bytes: 3
  %loadMem_46cf26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46cf26 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46cf26)
  store %struct.Memory* %call_46cf26, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 46cf29	 Bytes: 3
  %loadMem_46cf29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46cf29 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46cf29)
  store %struct.Memory* %call_46cf29, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, (%rax,%rdx,4)	 RIP: 46cf2c	 Bytes: 4
  %loadMem_46cf2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46cf2c = call %struct.Memory* @routine_cmpl__0x0____rax__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46cf2c)
  store %struct.Memory* %call_46cf2c, %struct.Memory** %MEMORY

  ; Code: jl .L_46d053	 RIP: 46cf30	 Bytes: 6
  %loadMem_46cf30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46cf30 = call %struct.Memory* @routine_jl_.L_46d053(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46cf30, i8* %BRANCH_TAKEN, i64 291, i64 6, i64 6)
  store %struct.Memory* %call_46cf30, %struct.Memory** %MEMORY

  %loadBr_46cf30 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46cf30 = icmp eq i8 %loadBr_46cf30, 1
  br i1 %cmpBr_46cf30, label %block_.L_46d053, label %block_.L_46cf36

  ; Code: .L_46cf36:	 RIP: 46cf36	 Bytes: 0
block_.L_46cf36:

  ; Code: movl -0x18(%rbp), %eax	 RIP: 46cf36	 Bytes: 3
  %loadMem_46cf36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46cf36 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46cf36)
  store %struct.Memory* %call_46cf36, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 46cf39	 Bytes: 3
  %loadMem_46cf39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46cf39 = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46cf39)
  store %struct.Memory* %call_46cf39, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 46cf3c	 Bytes: 3
  %loadMem_46cf3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46cf3c = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46cf3c)
  store %struct.Memory* %call_46cf3c, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 46cf3f	 Bytes: 8
  %loadMem_46cf3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46cf3f = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46cf3f)
  store %struct.Memory* %call_46cf3f, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %eax	 RIP: 46cf47	 Bytes: 3
  %loadMem_46cf47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46cf47 = call %struct.Memory* @routine_cmpl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46cf47)
  store %struct.Memory* %call_46cf47, %struct.Memory** %MEMORY

  ; Code: je .L_46cf7c	 RIP: 46cf4a	 Bytes: 6
  %loadMem_46cf4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46cf4a = call %struct.Memory* @routine_je_.L_46cf7c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46cf4a, i8* %BRANCH_TAKEN, i64 50, i64 6, i64 6)
  store %struct.Memory* %call_46cf4a, %struct.Memory** %MEMORY

  %loadBr_46cf4a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46cf4a = icmp eq i8 %loadBr_46cf4a, 1
  br i1 %cmpBr_46cf4a, label %block_.L_46cf7c, label %block_46cf50

block_46cf50:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 46cf50	 Bytes: 4
  %loadMem_46cf50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46cf50 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46cf50)
  store %struct.Memory* %call_46cf50, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %ecx	 RIP: 46cf54	 Bytes: 3
  %loadMem_46cf54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46cf54 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46cf54)
  store %struct.Memory* %call_46cf54, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %ecx	 RIP: 46cf57	 Bytes: 3
  %loadMem_46cf57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46cf57 = call %struct.Memory* @routine_addl__0x14___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46cf57)
  store %struct.Memory* %call_46cf57, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 46cf5a	 Bytes: 3
  %loadMem_46cf5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46cf5a = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46cf5a)
  store %struct.Memory* %call_46cf5a, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, (%rax,%rdx,4)	 RIP: 46cf5d	 Bytes: 4
  %loadMem_46cf5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46cf5d = call %struct.Memory* @routine_cmpl__0x0____rax__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46cf5d)
  store %struct.Memory* %call_46cf5d, %struct.Memory** %MEMORY

  ; Code: jle .L_46cf7c	 RIP: 46cf61	 Bytes: 6
  %loadMem_46cf61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46cf61 = call %struct.Memory* @routine_jle_.L_46cf7c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46cf61, i8* %BRANCH_TAKEN, i64 27, i64 6, i64 6)
  store %struct.Memory* %call_46cf61, %struct.Memory** %MEMORY

  %loadBr_46cf61 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46cf61 = icmp eq i8 %loadBr_46cf61, 1
  br i1 %cmpBr_46cf61, label %block_.L_46cf7c, label %block_46cf67

block_46cf67:
  ; Code: movslq -0x18(%rbp), %rax	 RIP: 46cf67	 Bytes: 4
  %loadMem_46cf67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46cf67 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46cf67)
  store %struct.Memory* %call_46cf67, %struct.Memory** %MEMORY

  ; Code: movl -0x660(%rbp,%rax,4), %ecx	 RIP: 46cf6b	 Bytes: 7
  %loadMem_46cf6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46cf6b = call %struct.Memory* @routine_movl_MINUS0x660__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46cf6b)
  store %struct.Memory* %call_46cf6b, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 46cf72	 Bytes: 3
  %loadMem_46cf72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46cf72 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46cf72)
  store %struct.Memory* %call_46cf72, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x660(%rbp,%rax,4)	 RIP: 46cf75	 Bytes: 7
  %loadMem_46cf75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46cf75 = call %struct.Memory* @routine_movl__ecx__MINUS0x660__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46cf75)
  store %struct.Memory* %call_46cf75, %struct.Memory** %MEMORY

  ; Code: .L_46cf7c:	 RIP: 46cf7c	 Bytes: 0
  br label %block_.L_46cf7c
block_.L_46cf7c:

  ; Code: movl -0x18(%rbp), %eax	 RIP: 46cf7c	 Bytes: 3
  %loadMem_46cf7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46cf7c = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46cf7c)
  store %struct.Memory* %call_46cf7c, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 46cf7f	 Bytes: 3
  %loadMem_46cf7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46cf7f = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46cf7f)
  store %struct.Memory* %call_46cf7f, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 46cf82	 Bytes: 3
  %loadMem_46cf82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46cf82 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46cf82)
  store %struct.Memory* %call_46cf82, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 46cf85	 Bytes: 8
  %loadMem_46cf85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46cf85 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46cf85)
  store %struct.Memory* %call_46cf85, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %eax	 RIP: 46cf8d	 Bytes: 3
  %loadMem_46cf8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46cf8d = call %struct.Memory* @routine_cmpl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46cf8d)
  store %struct.Memory* %call_46cf8d, %struct.Memory** %MEMORY

  ; Code: je .L_46cfc2	 RIP: 46cf90	 Bytes: 6
  %loadMem_46cf90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46cf90 = call %struct.Memory* @routine_je_.L_46cfc2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46cf90, i8* %BRANCH_TAKEN, i64 50, i64 6, i64 6)
  store %struct.Memory* %call_46cf90, %struct.Memory** %MEMORY

  %loadBr_46cf90 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46cf90 = icmp eq i8 %loadBr_46cf90, 1
  br i1 %cmpBr_46cf90, label %block_.L_46cfc2, label %block_46cf96

block_46cf96:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 46cf96	 Bytes: 4
  %loadMem_46cf96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46cf96 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46cf96)
  store %struct.Memory* %call_46cf96, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %ecx	 RIP: 46cf9a	 Bytes: 3
  %loadMem_46cf9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46cf9a = call %struct.Memory* @routine_movl_MINUS0x18__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46cf9a)
  store %struct.Memory* %call_46cf9a, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 46cf9d	 Bytes: 3
  %loadMem_46cf9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46cf9d = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46cf9d)
  store %struct.Memory* %call_46cf9d, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 46cfa0	 Bytes: 3
  %loadMem_46cfa0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46cfa0 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46cfa0)
  store %struct.Memory* %call_46cfa0, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, (%rax,%rdx,4)	 RIP: 46cfa3	 Bytes: 4
  %loadMem_46cfa3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46cfa3 = call %struct.Memory* @routine_cmpl__0x0____rax__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46cfa3)
  store %struct.Memory* %call_46cfa3, %struct.Memory** %MEMORY

  ; Code: jle .L_46cfc2	 RIP: 46cfa7	 Bytes: 6
  %loadMem_46cfa7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46cfa7 = call %struct.Memory* @routine_jle_.L_46cfc2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46cfa7, i8* %BRANCH_TAKEN, i64 27, i64 6, i64 6)
  store %struct.Memory* %call_46cfa7, %struct.Memory** %MEMORY

  %loadBr_46cfa7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46cfa7 = icmp eq i8 %loadBr_46cfa7, 1
  br i1 %cmpBr_46cfa7, label %block_.L_46cfc2, label %block_46cfad

block_46cfad:
  ; Code: movslq -0x18(%rbp), %rax	 RIP: 46cfad	 Bytes: 4
  %loadMem_46cfad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46cfad = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46cfad)
  store %struct.Memory* %call_46cfad, %struct.Memory** %MEMORY

  ; Code: movl -0x660(%rbp,%rax,4), %ecx	 RIP: 46cfb1	 Bytes: 7
  %loadMem_46cfb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46cfb1 = call %struct.Memory* @routine_movl_MINUS0x660__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46cfb1)
  store %struct.Memory* %call_46cfb1, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 46cfb8	 Bytes: 3
  %loadMem_46cfb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46cfb8 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46cfb8)
  store %struct.Memory* %call_46cfb8, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x660(%rbp,%rax,4)	 RIP: 46cfbb	 Bytes: 7
  %loadMem_46cfbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46cfbb = call %struct.Memory* @routine_movl__ecx__MINUS0x660__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46cfbb)
  store %struct.Memory* %call_46cfbb, %struct.Memory** %MEMORY

  ; Code: .L_46cfc2:	 RIP: 46cfc2	 Bytes: 0
  br label %block_.L_46cfc2
block_.L_46cfc2:

  ; Code: movl -0x18(%rbp), %eax	 RIP: 46cfc2	 Bytes: 3
  %loadMem_46cfc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46cfc2 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46cfc2)
  store %struct.Memory* %call_46cfc2, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 46cfc5	 Bytes: 3
  %loadMem_46cfc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46cfc5 = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46cfc5)
  store %struct.Memory* %call_46cfc5, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 46cfc8	 Bytes: 3
  %loadMem_46cfc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46cfc8 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46cfc8)
  store %struct.Memory* %call_46cfc8, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 46cfcb	 Bytes: 8
  %loadMem_46cfcb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46cfcb = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46cfcb)
  store %struct.Memory* %call_46cfcb, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %eax	 RIP: 46cfd3	 Bytes: 3
  %loadMem_46cfd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46cfd3 = call %struct.Memory* @routine_cmpl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46cfd3)
  store %struct.Memory* %call_46cfd3, %struct.Memory** %MEMORY

  ; Code: je .L_46d008	 RIP: 46cfd6	 Bytes: 6
  %loadMem_46cfd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46cfd6 = call %struct.Memory* @routine_je_.L_46d008(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46cfd6, i8* %BRANCH_TAKEN, i64 50, i64 6, i64 6)
  store %struct.Memory* %call_46cfd6, %struct.Memory** %MEMORY

  %loadBr_46cfd6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46cfd6 = icmp eq i8 %loadBr_46cfd6, 1
  br i1 %cmpBr_46cfd6, label %block_.L_46d008, label %block_46cfdc

block_46cfdc:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 46cfdc	 Bytes: 4
  %loadMem_46cfdc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46cfdc = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46cfdc)
  store %struct.Memory* %call_46cfdc, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %ecx	 RIP: 46cfe0	 Bytes: 3
  %loadMem_46cfe0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46cfe0 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46cfe0)
  store %struct.Memory* %call_46cfe0, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %ecx	 RIP: 46cfe3	 Bytes: 3
  %loadMem_46cfe3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46cfe3 = call %struct.Memory* @routine_subl__0x14___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46cfe3)
  store %struct.Memory* %call_46cfe3, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 46cfe6	 Bytes: 3
  %loadMem_46cfe6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46cfe6 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46cfe6)
  store %struct.Memory* %call_46cfe6, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, (%rax,%rdx,4)	 RIP: 46cfe9	 Bytes: 4
  %loadMem_46cfe9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46cfe9 = call %struct.Memory* @routine_cmpl__0x0____rax__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46cfe9)
  store %struct.Memory* %call_46cfe9, %struct.Memory** %MEMORY

  ; Code: jle .L_46d008	 RIP: 46cfed	 Bytes: 6
  %loadMem_46cfed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46cfed = call %struct.Memory* @routine_jle_.L_46d008(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46cfed, i8* %BRANCH_TAKEN, i64 27, i64 6, i64 6)
  store %struct.Memory* %call_46cfed, %struct.Memory** %MEMORY

  %loadBr_46cfed = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46cfed = icmp eq i8 %loadBr_46cfed, 1
  br i1 %cmpBr_46cfed, label %block_.L_46d008, label %block_46cff3

block_46cff3:
  ; Code: movslq -0x18(%rbp), %rax	 RIP: 46cff3	 Bytes: 4
  %loadMem_46cff3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46cff3 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46cff3)
  store %struct.Memory* %call_46cff3, %struct.Memory** %MEMORY

  ; Code: movl -0x660(%rbp,%rax,4), %ecx	 RIP: 46cff7	 Bytes: 7
  %loadMem_46cff7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46cff7 = call %struct.Memory* @routine_movl_MINUS0x660__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46cff7)
  store %struct.Memory* %call_46cff7, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 46cffe	 Bytes: 3
  %loadMem_46cffe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46cffe = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46cffe)
  store %struct.Memory* %call_46cffe, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x660(%rbp,%rax,4)	 RIP: 46d001	 Bytes: 7
  %loadMem_46d001 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d001 = call %struct.Memory* @routine_movl__ecx__MINUS0x660__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d001)
  store %struct.Memory* %call_46d001, %struct.Memory** %MEMORY

  ; Code: .L_46d008:	 RIP: 46d008	 Bytes: 0
  br label %block_.L_46d008
block_.L_46d008:

  ; Code: movl -0x18(%rbp), %eax	 RIP: 46d008	 Bytes: 3
  %loadMem_46d008 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d008 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d008)
  store %struct.Memory* %call_46d008, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 46d00b	 Bytes: 3
  %loadMem_46d00b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d00b = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d00b)
  store %struct.Memory* %call_46d00b, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 46d00e	 Bytes: 3
  %loadMem_46d00e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d00e = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d00e)
  store %struct.Memory* %call_46d00e, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 46d011	 Bytes: 8
  %loadMem_46d011 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d011 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d011)
  store %struct.Memory* %call_46d011, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %eax	 RIP: 46d019	 Bytes: 3
  %loadMem_46d019 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d019 = call %struct.Memory* @routine_cmpl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d019)
  store %struct.Memory* %call_46d019, %struct.Memory** %MEMORY

  ; Code: je .L_46d04e	 RIP: 46d01c	 Bytes: 6
  %loadMem_46d01c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d01c = call %struct.Memory* @routine_je_.L_46d04e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d01c, i8* %BRANCH_TAKEN, i64 50, i64 6, i64 6)
  store %struct.Memory* %call_46d01c, %struct.Memory** %MEMORY

  %loadBr_46d01c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46d01c = icmp eq i8 %loadBr_46d01c, 1
  br i1 %cmpBr_46d01c, label %block_.L_46d04e, label %block_46d022

block_46d022:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 46d022	 Bytes: 4
  %loadMem_46d022 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d022 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d022)
  store %struct.Memory* %call_46d022, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %ecx	 RIP: 46d026	 Bytes: 3
  %loadMem_46d026 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d026 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d026)
  store %struct.Memory* %call_46d026, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 46d029	 Bytes: 3
  %loadMem_46d029 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d029 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d029)
  store %struct.Memory* %call_46d029, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 46d02c	 Bytes: 3
  %loadMem_46d02c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d02c = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d02c)
  store %struct.Memory* %call_46d02c, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, (%rax,%rdx,4)	 RIP: 46d02f	 Bytes: 4
  %loadMem_46d02f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d02f = call %struct.Memory* @routine_cmpl__0x0____rax__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d02f)
  store %struct.Memory* %call_46d02f, %struct.Memory** %MEMORY

  ; Code: jle .L_46d04e	 RIP: 46d033	 Bytes: 6
  %loadMem_46d033 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d033 = call %struct.Memory* @routine_jle_.L_46d04e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d033, i8* %BRANCH_TAKEN, i64 27, i64 6, i64 6)
  store %struct.Memory* %call_46d033, %struct.Memory** %MEMORY

  %loadBr_46d033 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46d033 = icmp eq i8 %loadBr_46d033, 1
  br i1 %cmpBr_46d033, label %block_.L_46d04e, label %block_46d039

block_46d039:
  ; Code: movslq -0x18(%rbp), %rax	 RIP: 46d039	 Bytes: 4
  %loadMem_46d039 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d039 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d039)
  store %struct.Memory* %call_46d039, %struct.Memory** %MEMORY

  ; Code: movl -0x660(%rbp,%rax,4), %ecx	 RIP: 46d03d	 Bytes: 7
  %loadMem_46d03d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d03d = call %struct.Memory* @routine_movl_MINUS0x660__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d03d)
  store %struct.Memory* %call_46d03d, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 46d044	 Bytes: 3
  %loadMem_46d044 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d044 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d044)
  store %struct.Memory* %call_46d044, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x660(%rbp,%rax,4)	 RIP: 46d047	 Bytes: 7
  %loadMem_46d047 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d047 = call %struct.Memory* @routine_movl__ecx__MINUS0x660__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d047)
  store %struct.Memory* %call_46d047, %struct.Memory** %MEMORY

  ; Code: .L_46d04e:	 RIP: 46d04e	 Bytes: 0
  br label %block_.L_46d04e
block_.L_46d04e:

  ; Code: jmpq .L_46d053	 RIP: 46d04e	 Bytes: 5
  %loadMem_46d04e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d04e = call %struct.Memory* @routine_jmpq_.L_46d053(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d04e, i64 5, i64 5)
  store %struct.Memory* %call_46d04e, %struct.Memory** %MEMORY

  br label %block_.L_46d053

  ; Code: .L_46d053:	 RIP: 46d053	 Bytes: 0
block_.L_46d053:

  ; Code: movq -0x10(%rbp), %rax	 RIP: 46d053	 Bytes: 4
  %loadMem_46d053 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d053 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d053)
  store %struct.Memory* %call_46d053, %struct.Memory** %MEMORY

  ; Code: movslq -0x18(%rbp), %rcx	 RIP: 46d057	 Bytes: 4
  %loadMem_46d057 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d057 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d057)
  store %struct.Memory* %call_46d057, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, (%rax,%rcx,4)	 RIP: 46d05b	 Bytes: 4
  %loadMem_46d05b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d05b = call %struct.Memory* @routine_cmpl__0x0____rax__rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d05b)
  store %struct.Memory* %call_46d05b, %struct.Memory** %MEMORY

  ; Code: jg .L_46d246	 RIP: 46d05f	 Bytes: 6
  %loadMem_46d05f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d05f = call %struct.Memory* @routine_jg_.L_46d246(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d05f, i8* %BRANCH_TAKEN, i64 487, i64 6, i64 6)
  store %struct.Memory* %call_46d05f, %struct.Memory** %MEMORY

  %loadBr_46d05f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46d05f = icmp eq i8 %loadBr_46d05f, 1
  br i1 %cmpBr_46d05f, label %block_.L_46d246, label %block_46d065

block_46d065:
  ; Code: movl -0x18(%rbp), %eax	 RIP: 46d065	 Bytes: 3
  %loadMem_46d065 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d065 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d065)
  store %struct.Memory* %call_46d065, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 46d068	 Bytes: 3
  %loadMem_46d068 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d068 = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d068)
  store %struct.Memory* %call_46d068, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 46d06b	 Bytes: 3
  %loadMem_46d06b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d06b = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d06b)
  store %struct.Memory* %call_46d06b, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 46d06e	 Bytes: 8
  %loadMem_46d06e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d06e = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d06e)
  store %struct.Memory* %call_46d06e, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %eax	 RIP: 46d076	 Bytes: 3
  %loadMem_46d076 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d076 = call %struct.Memory* @routine_cmpl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d076)
  store %struct.Memory* %call_46d076, %struct.Memory** %MEMORY

  ; Code: je .L_46d096	 RIP: 46d079	 Bytes: 6
  %loadMem_46d079 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d079 = call %struct.Memory* @routine_je_.L_46d096(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d079, i8* %BRANCH_TAKEN, i64 29, i64 6, i64 6)
  store %struct.Memory* %call_46d079, %struct.Memory** %MEMORY

  %loadBr_46d079 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46d079 = icmp eq i8 %loadBr_46d079, 1
  br i1 %cmpBr_46d079, label %block_.L_46d096, label %block_46d07f

block_46d07f:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 46d07f	 Bytes: 4
  %loadMem_46d07f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d07f = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d07f)
  store %struct.Memory* %call_46d07f, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %ecx	 RIP: 46d083	 Bytes: 3
  %loadMem_46d083 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d083 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d083)
  store %struct.Memory* %call_46d083, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %ecx	 RIP: 46d086	 Bytes: 3
  %loadMem_46d086 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d086 = call %struct.Memory* @routine_addl__0x14___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d086)
  store %struct.Memory* %call_46d086, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 46d089	 Bytes: 3
  %loadMem_46d089 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d089 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d089)
  store %struct.Memory* %call_46d089, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, (%rax,%rdx,4)	 RIP: 46d08c	 Bytes: 4
  %loadMem_46d08c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d08c = call %struct.Memory* @routine_cmpl__0x0____rax__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d08c)
  store %struct.Memory* %call_46d08c, %struct.Memory** %MEMORY

  ; Code: jg .L_46d246	 RIP: 46d090	 Bytes: 6
  %loadMem_46d090 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d090 = call %struct.Memory* @routine_jg_.L_46d246(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d090, i8* %BRANCH_TAKEN, i64 438, i64 6, i64 6)
  store %struct.Memory* %call_46d090, %struct.Memory** %MEMORY

  %loadBr_46d090 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46d090 = icmp eq i8 %loadBr_46d090, 1
  br i1 %cmpBr_46d090, label %block_.L_46d246, label %block_.L_46d096

  ; Code: .L_46d096:	 RIP: 46d096	 Bytes: 0
block_.L_46d096:

  ; Code: movl -0x18(%rbp), %eax	 RIP: 46d096	 Bytes: 3
  %loadMem_46d096 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d096 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d096)
  store %struct.Memory* %call_46d096, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 46d099	 Bytes: 3
  %loadMem_46d099 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d099 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d099)
  store %struct.Memory* %call_46d099, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 46d09c	 Bytes: 3
  %loadMem_46d09c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d09c = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d09c)
  store %struct.Memory* %call_46d09c, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 46d09f	 Bytes: 8
  %loadMem_46d09f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d09f = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d09f)
  store %struct.Memory* %call_46d09f, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %eax	 RIP: 46d0a7	 Bytes: 3
  %loadMem_46d0a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d0a7 = call %struct.Memory* @routine_cmpl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d0a7)
  store %struct.Memory* %call_46d0a7, %struct.Memory** %MEMORY

  ; Code: je .L_46d0c7	 RIP: 46d0aa	 Bytes: 6
  %loadMem_46d0aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d0aa = call %struct.Memory* @routine_je_.L_46d0c7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d0aa, i8* %BRANCH_TAKEN, i64 29, i64 6, i64 6)
  store %struct.Memory* %call_46d0aa, %struct.Memory** %MEMORY

  %loadBr_46d0aa = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46d0aa = icmp eq i8 %loadBr_46d0aa, 1
  br i1 %cmpBr_46d0aa, label %block_.L_46d0c7, label %block_46d0b0

block_46d0b0:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 46d0b0	 Bytes: 4
  %loadMem_46d0b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d0b0 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d0b0)
  store %struct.Memory* %call_46d0b0, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %ecx	 RIP: 46d0b4	 Bytes: 3
  %loadMem_46d0b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d0b4 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d0b4)
  store %struct.Memory* %call_46d0b4, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 46d0b7	 Bytes: 3
  %loadMem_46d0b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d0b7 = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d0b7)
  store %struct.Memory* %call_46d0b7, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 46d0ba	 Bytes: 3
  %loadMem_46d0ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d0ba = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d0ba)
  store %struct.Memory* %call_46d0ba, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, (%rax,%rdx,4)	 RIP: 46d0bd	 Bytes: 4
  %loadMem_46d0bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d0bd = call %struct.Memory* @routine_cmpl__0x0____rax__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d0bd)
  store %struct.Memory* %call_46d0bd, %struct.Memory** %MEMORY

  ; Code: jg .L_46d246	 RIP: 46d0c1	 Bytes: 6
  %loadMem_46d0c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d0c1 = call %struct.Memory* @routine_jg_.L_46d246(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d0c1, i8* %BRANCH_TAKEN, i64 389, i64 6, i64 6)
  store %struct.Memory* %call_46d0c1, %struct.Memory** %MEMORY

  %loadBr_46d0c1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46d0c1 = icmp eq i8 %loadBr_46d0c1, 1
  br i1 %cmpBr_46d0c1, label %block_.L_46d246, label %block_.L_46d0c7

  ; Code: .L_46d0c7:	 RIP: 46d0c7	 Bytes: 0
block_.L_46d0c7:

  ; Code: movl -0x18(%rbp), %eax	 RIP: 46d0c7	 Bytes: 3
  %loadMem_46d0c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d0c7 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d0c7)
  store %struct.Memory* %call_46d0c7, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 46d0ca	 Bytes: 3
  %loadMem_46d0ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d0ca = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d0ca)
  store %struct.Memory* %call_46d0ca, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 46d0cd	 Bytes: 3
  %loadMem_46d0cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d0cd = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d0cd)
  store %struct.Memory* %call_46d0cd, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 46d0d0	 Bytes: 8
  %loadMem_46d0d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d0d0 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d0d0)
  store %struct.Memory* %call_46d0d0, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %eax	 RIP: 46d0d8	 Bytes: 3
  %loadMem_46d0d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d0d8 = call %struct.Memory* @routine_cmpl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d0d8)
  store %struct.Memory* %call_46d0d8, %struct.Memory** %MEMORY

  ; Code: je .L_46d0f8	 RIP: 46d0db	 Bytes: 6
  %loadMem_46d0db = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d0db = call %struct.Memory* @routine_je_.L_46d0f8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d0db, i8* %BRANCH_TAKEN, i64 29, i64 6, i64 6)
  store %struct.Memory* %call_46d0db, %struct.Memory** %MEMORY

  %loadBr_46d0db = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46d0db = icmp eq i8 %loadBr_46d0db, 1
  br i1 %cmpBr_46d0db, label %block_.L_46d0f8, label %block_46d0e1

block_46d0e1:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 46d0e1	 Bytes: 4
  %loadMem_46d0e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d0e1 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d0e1)
  store %struct.Memory* %call_46d0e1, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %ecx	 RIP: 46d0e5	 Bytes: 3
  %loadMem_46d0e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d0e5 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d0e5)
  store %struct.Memory* %call_46d0e5, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %ecx	 RIP: 46d0e8	 Bytes: 3
  %loadMem_46d0e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d0e8 = call %struct.Memory* @routine_subl__0x14___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d0e8)
  store %struct.Memory* %call_46d0e8, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 46d0eb	 Bytes: 3
  %loadMem_46d0eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d0eb = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d0eb)
  store %struct.Memory* %call_46d0eb, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, (%rax,%rdx,4)	 RIP: 46d0ee	 Bytes: 4
  %loadMem_46d0ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d0ee = call %struct.Memory* @routine_cmpl__0x0____rax__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d0ee)
  store %struct.Memory* %call_46d0ee, %struct.Memory** %MEMORY

  ; Code: jg .L_46d246	 RIP: 46d0f2	 Bytes: 6
  %loadMem_46d0f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d0f2 = call %struct.Memory* @routine_jg_.L_46d246(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d0f2, i8* %BRANCH_TAKEN, i64 340, i64 6, i64 6)
  store %struct.Memory* %call_46d0f2, %struct.Memory** %MEMORY

  %loadBr_46d0f2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46d0f2 = icmp eq i8 %loadBr_46d0f2, 1
  br i1 %cmpBr_46d0f2, label %block_.L_46d246, label %block_.L_46d0f8

  ; Code: .L_46d0f8:	 RIP: 46d0f8	 Bytes: 0
block_.L_46d0f8:

  ; Code: movl -0x18(%rbp), %eax	 RIP: 46d0f8	 Bytes: 3
  %loadMem_46d0f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d0f8 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d0f8)
  store %struct.Memory* %call_46d0f8, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 46d0fb	 Bytes: 3
  %loadMem_46d0fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d0fb = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d0fb)
  store %struct.Memory* %call_46d0fb, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 46d0fe	 Bytes: 3
  %loadMem_46d0fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d0fe = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d0fe)
  store %struct.Memory* %call_46d0fe, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 46d101	 Bytes: 8
  %loadMem_46d101 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d101 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d101)
  store %struct.Memory* %call_46d101, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %eax	 RIP: 46d109	 Bytes: 3
  %loadMem_46d109 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d109 = call %struct.Memory* @routine_cmpl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d109)
  store %struct.Memory* %call_46d109, %struct.Memory** %MEMORY

  ; Code: je .L_46d129	 RIP: 46d10c	 Bytes: 6
  %loadMem_46d10c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d10c = call %struct.Memory* @routine_je_.L_46d129(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d10c, i8* %BRANCH_TAKEN, i64 29, i64 6, i64 6)
  store %struct.Memory* %call_46d10c, %struct.Memory** %MEMORY

  %loadBr_46d10c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46d10c = icmp eq i8 %loadBr_46d10c, 1
  br i1 %cmpBr_46d10c, label %block_.L_46d129, label %block_46d112

block_46d112:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 46d112	 Bytes: 4
  %loadMem_46d112 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d112 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d112)
  store %struct.Memory* %call_46d112, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %ecx	 RIP: 46d116	 Bytes: 3
  %loadMem_46d116 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d116 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d116)
  store %struct.Memory* %call_46d116, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 46d119	 Bytes: 3
  %loadMem_46d119 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d119 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d119)
  store %struct.Memory* %call_46d119, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 46d11c	 Bytes: 3
  %loadMem_46d11c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d11c = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d11c)
  store %struct.Memory* %call_46d11c, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, (%rax,%rdx,4)	 RIP: 46d11f	 Bytes: 4
  %loadMem_46d11f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d11f = call %struct.Memory* @routine_cmpl__0x0____rax__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d11f)
  store %struct.Memory* %call_46d11f, %struct.Memory** %MEMORY

  ; Code: jg .L_46d246	 RIP: 46d123	 Bytes: 6
  %loadMem_46d123 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d123 = call %struct.Memory* @routine_jg_.L_46d246(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d123, i8* %BRANCH_TAKEN, i64 291, i64 6, i64 6)
  store %struct.Memory* %call_46d123, %struct.Memory** %MEMORY

  %loadBr_46d123 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46d123 = icmp eq i8 %loadBr_46d123, 1
  br i1 %cmpBr_46d123, label %block_.L_46d246, label %block_.L_46d129

  ; Code: .L_46d129:	 RIP: 46d129	 Bytes: 0
block_.L_46d129:

  ; Code: movl -0x18(%rbp), %eax	 RIP: 46d129	 Bytes: 3
  %loadMem_46d129 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d129 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d129)
  store %struct.Memory* %call_46d129, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 46d12c	 Bytes: 3
  %loadMem_46d12c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d12c = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d12c)
  store %struct.Memory* %call_46d12c, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 46d12f	 Bytes: 3
  %loadMem_46d12f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d12f = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d12f)
  store %struct.Memory* %call_46d12f, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 46d132	 Bytes: 8
  %loadMem_46d132 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d132 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d132)
  store %struct.Memory* %call_46d132, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %eax	 RIP: 46d13a	 Bytes: 3
  %loadMem_46d13a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d13a = call %struct.Memory* @routine_cmpl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d13a)
  store %struct.Memory* %call_46d13a, %struct.Memory** %MEMORY

  ; Code: je .L_46d16f	 RIP: 46d13d	 Bytes: 6
  %loadMem_46d13d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d13d = call %struct.Memory* @routine_je_.L_46d16f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d13d, i8* %BRANCH_TAKEN, i64 50, i64 6, i64 6)
  store %struct.Memory* %call_46d13d, %struct.Memory** %MEMORY

  %loadBr_46d13d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46d13d = icmp eq i8 %loadBr_46d13d, 1
  br i1 %cmpBr_46d13d, label %block_.L_46d16f, label %block_46d143

block_46d143:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 46d143	 Bytes: 4
  %loadMem_46d143 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d143 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d143)
  store %struct.Memory* %call_46d143, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %ecx	 RIP: 46d147	 Bytes: 3
  %loadMem_46d147 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d147 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d147)
  store %struct.Memory* %call_46d147, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %ecx	 RIP: 46d14a	 Bytes: 3
  %loadMem_46d14a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d14a = call %struct.Memory* @routine_addl__0x14___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d14a)
  store %struct.Memory* %call_46d14a, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 46d14d	 Bytes: 3
  %loadMem_46d14d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d14d = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d14d)
  store %struct.Memory* %call_46d14d, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, (%rax,%rdx,4)	 RIP: 46d150	 Bytes: 4
  %loadMem_46d150 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d150 = call %struct.Memory* @routine_cmpl__0x0____rax__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d150)
  store %struct.Memory* %call_46d150, %struct.Memory** %MEMORY

  ; Code: jge .L_46d16f	 RIP: 46d154	 Bytes: 6
  %loadMem_46d154 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d154 = call %struct.Memory* @routine_jge_.L_46d16f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d154, i8* %BRANCH_TAKEN, i64 27, i64 6, i64 6)
  store %struct.Memory* %call_46d154, %struct.Memory** %MEMORY

  %loadBr_46d154 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46d154 = icmp eq i8 %loadBr_46d154, 1
  br i1 %cmpBr_46d154, label %block_.L_46d16f, label %block_46d15a

block_46d15a:
  ; Code: movslq -0x18(%rbp), %rax	 RIP: 46d15a	 Bytes: 4
  %loadMem_46d15a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d15a = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d15a)
  store %struct.Memory* %call_46d15a, %struct.Memory** %MEMORY

  ; Code: movl -0x660(%rbp,%rax,4), %ecx	 RIP: 46d15e	 Bytes: 7
  %loadMem_46d15e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d15e = call %struct.Memory* @routine_movl_MINUS0x660__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d15e)
  store %struct.Memory* %call_46d15e, %struct.Memory** %MEMORY

  ; Code: addl $0xffffffff, %ecx	 RIP: 46d165	 Bytes: 3
  %loadMem_46d165 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d165 = call %struct.Memory* @routine_addl__0xffffffff___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d165)
  store %struct.Memory* %call_46d165, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x660(%rbp,%rax,4)	 RIP: 46d168	 Bytes: 7
  %loadMem_46d168 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d168 = call %struct.Memory* @routine_movl__ecx__MINUS0x660__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d168)
  store %struct.Memory* %call_46d168, %struct.Memory** %MEMORY

  ; Code: .L_46d16f:	 RIP: 46d16f	 Bytes: 0
  br label %block_.L_46d16f
block_.L_46d16f:

  ; Code: movl -0x18(%rbp), %eax	 RIP: 46d16f	 Bytes: 3
  %loadMem_46d16f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d16f = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d16f)
  store %struct.Memory* %call_46d16f, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 46d172	 Bytes: 3
  %loadMem_46d172 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d172 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d172)
  store %struct.Memory* %call_46d172, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 46d175	 Bytes: 3
  %loadMem_46d175 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d175 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d175)
  store %struct.Memory* %call_46d175, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 46d178	 Bytes: 8
  %loadMem_46d178 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d178 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d178)
  store %struct.Memory* %call_46d178, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %eax	 RIP: 46d180	 Bytes: 3
  %loadMem_46d180 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d180 = call %struct.Memory* @routine_cmpl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d180)
  store %struct.Memory* %call_46d180, %struct.Memory** %MEMORY

  ; Code: je .L_46d1b5	 RIP: 46d183	 Bytes: 6
  %loadMem_46d183 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d183 = call %struct.Memory* @routine_je_.L_46d1b5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d183, i8* %BRANCH_TAKEN, i64 50, i64 6, i64 6)
  store %struct.Memory* %call_46d183, %struct.Memory** %MEMORY

  %loadBr_46d183 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46d183 = icmp eq i8 %loadBr_46d183, 1
  br i1 %cmpBr_46d183, label %block_.L_46d1b5, label %block_46d189

block_46d189:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 46d189	 Bytes: 4
  %loadMem_46d189 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d189 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d189)
  store %struct.Memory* %call_46d189, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %ecx	 RIP: 46d18d	 Bytes: 3
  %loadMem_46d18d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d18d = call %struct.Memory* @routine_movl_MINUS0x18__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d18d)
  store %struct.Memory* %call_46d18d, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 46d190	 Bytes: 3
  %loadMem_46d190 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d190 = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d190)
  store %struct.Memory* %call_46d190, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 46d193	 Bytes: 3
  %loadMem_46d193 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d193 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d193)
  store %struct.Memory* %call_46d193, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, (%rax,%rdx,4)	 RIP: 46d196	 Bytes: 4
  %loadMem_46d196 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d196 = call %struct.Memory* @routine_cmpl__0x0____rax__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d196)
  store %struct.Memory* %call_46d196, %struct.Memory** %MEMORY

  ; Code: jge .L_46d1b5	 RIP: 46d19a	 Bytes: 6
  %loadMem_46d19a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d19a = call %struct.Memory* @routine_jge_.L_46d1b5(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d19a, i8* %BRANCH_TAKEN, i64 27, i64 6, i64 6)
  store %struct.Memory* %call_46d19a, %struct.Memory** %MEMORY

  %loadBr_46d19a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46d19a = icmp eq i8 %loadBr_46d19a, 1
  br i1 %cmpBr_46d19a, label %block_.L_46d1b5, label %block_46d1a0

block_46d1a0:
  ; Code: movslq -0x18(%rbp), %rax	 RIP: 46d1a0	 Bytes: 4
  %loadMem_46d1a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d1a0 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d1a0)
  store %struct.Memory* %call_46d1a0, %struct.Memory** %MEMORY

  ; Code: movl -0x660(%rbp,%rax,4), %ecx	 RIP: 46d1a4	 Bytes: 7
  %loadMem_46d1a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d1a4 = call %struct.Memory* @routine_movl_MINUS0x660__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d1a4)
  store %struct.Memory* %call_46d1a4, %struct.Memory** %MEMORY

  ; Code: addl $0xffffffff, %ecx	 RIP: 46d1ab	 Bytes: 3
  %loadMem_46d1ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d1ab = call %struct.Memory* @routine_addl__0xffffffff___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d1ab)
  store %struct.Memory* %call_46d1ab, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x660(%rbp,%rax,4)	 RIP: 46d1ae	 Bytes: 7
  %loadMem_46d1ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d1ae = call %struct.Memory* @routine_movl__ecx__MINUS0x660__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d1ae)
  store %struct.Memory* %call_46d1ae, %struct.Memory** %MEMORY

  ; Code: .L_46d1b5:	 RIP: 46d1b5	 Bytes: 0
  br label %block_.L_46d1b5
block_.L_46d1b5:

  ; Code: movl -0x18(%rbp), %eax	 RIP: 46d1b5	 Bytes: 3
  %loadMem_46d1b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d1b5 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d1b5)
  store %struct.Memory* %call_46d1b5, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 46d1b8	 Bytes: 3
  %loadMem_46d1b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d1b8 = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d1b8)
  store %struct.Memory* %call_46d1b8, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 46d1bb	 Bytes: 3
  %loadMem_46d1bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d1bb = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d1bb)
  store %struct.Memory* %call_46d1bb, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 46d1be	 Bytes: 8
  %loadMem_46d1be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d1be = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d1be)
  store %struct.Memory* %call_46d1be, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %eax	 RIP: 46d1c6	 Bytes: 3
  %loadMem_46d1c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d1c6 = call %struct.Memory* @routine_cmpl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d1c6)
  store %struct.Memory* %call_46d1c6, %struct.Memory** %MEMORY

  ; Code: je .L_46d1fb	 RIP: 46d1c9	 Bytes: 6
  %loadMem_46d1c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d1c9 = call %struct.Memory* @routine_je_.L_46d1fb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d1c9, i8* %BRANCH_TAKEN, i64 50, i64 6, i64 6)
  store %struct.Memory* %call_46d1c9, %struct.Memory** %MEMORY

  %loadBr_46d1c9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46d1c9 = icmp eq i8 %loadBr_46d1c9, 1
  br i1 %cmpBr_46d1c9, label %block_.L_46d1fb, label %block_46d1cf

block_46d1cf:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 46d1cf	 Bytes: 4
  %loadMem_46d1cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d1cf = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d1cf)
  store %struct.Memory* %call_46d1cf, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %ecx	 RIP: 46d1d3	 Bytes: 3
  %loadMem_46d1d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d1d3 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d1d3)
  store %struct.Memory* %call_46d1d3, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %ecx	 RIP: 46d1d6	 Bytes: 3
  %loadMem_46d1d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d1d6 = call %struct.Memory* @routine_subl__0x14___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d1d6)
  store %struct.Memory* %call_46d1d6, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 46d1d9	 Bytes: 3
  %loadMem_46d1d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d1d9 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d1d9)
  store %struct.Memory* %call_46d1d9, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, (%rax,%rdx,4)	 RIP: 46d1dc	 Bytes: 4
  %loadMem_46d1dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d1dc = call %struct.Memory* @routine_cmpl__0x0____rax__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d1dc)
  store %struct.Memory* %call_46d1dc, %struct.Memory** %MEMORY

  ; Code: jge .L_46d1fb	 RIP: 46d1e0	 Bytes: 6
  %loadMem_46d1e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d1e0 = call %struct.Memory* @routine_jge_.L_46d1fb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d1e0, i8* %BRANCH_TAKEN, i64 27, i64 6, i64 6)
  store %struct.Memory* %call_46d1e0, %struct.Memory** %MEMORY

  %loadBr_46d1e0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46d1e0 = icmp eq i8 %loadBr_46d1e0, 1
  br i1 %cmpBr_46d1e0, label %block_.L_46d1fb, label %block_46d1e6

block_46d1e6:
  ; Code: movslq -0x18(%rbp), %rax	 RIP: 46d1e6	 Bytes: 4
  %loadMem_46d1e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d1e6 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d1e6)
  store %struct.Memory* %call_46d1e6, %struct.Memory** %MEMORY

  ; Code: movl -0x660(%rbp,%rax,4), %ecx	 RIP: 46d1ea	 Bytes: 7
  %loadMem_46d1ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d1ea = call %struct.Memory* @routine_movl_MINUS0x660__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d1ea)
  store %struct.Memory* %call_46d1ea, %struct.Memory** %MEMORY

  ; Code: addl $0xffffffff, %ecx	 RIP: 46d1f1	 Bytes: 3
  %loadMem_46d1f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d1f1 = call %struct.Memory* @routine_addl__0xffffffff___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d1f1)
  store %struct.Memory* %call_46d1f1, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x660(%rbp,%rax,4)	 RIP: 46d1f4	 Bytes: 7
  %loadMem_46d1f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d1f4 = call %struct.Memory* @routine_movl__ecx__MINUS0x660__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d1f4)
  store %struct.Memory* %call_46d1f4, %struct.Memory** %MEMORY

  ; Code: .L_46d1fb:	 RIP: 46d1fb	 Bytes: 0
  br label %block_.L_46d1fb
block_.L_46d1fb:

  ; Code: movl -0x18(%rbp), %eax	 RIP: 46d1fb	 Bytes: 3
  %loadMem_46d1fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d1fb = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d1fb)
  store %struct.Memory* %call_46d1fb, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 46d1fe	 Bytes: 3
  %loadMem_46d1fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d1fe = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d1fe)
  store %struct.Memory* %call_46d1fe, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 46d201	 Bytes: 3
  %loadMem_46d201 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d201 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d201)
  store %struct.Memory* %call_46d201, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 46d204	 Bytes: 8
  %loadMem_46d204 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d204 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d204)
  store %struct.Memory* %call_46d204, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %eax	 RIP: 46d20c	 Bytes: 3
  %loadMem_46d20c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d20c = call %struct.Memory* @routine_cmpl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d20c)
  store %struct.Memory* %call_46d20c, %struct.Memory** %MEMORY

  ; Code: je .L_46d241	 RIP: 46d20f	 Bytes: 6
  %loadMem_46d20f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d20f = call %struct.Memory* @routine_je_.L_46d241(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d20f, i8* %BRANCH_TAKEN, i64 50, i64 6, i64 6)
  store %struct.Memory* %call_46d20f, %struct.Memory** %MEMORY

  %loadBr_46d20f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46d20f = icmp eq i8 %loadBr_46d20f, 1
  br i1 %cmpBr_46d20f, label %block_.L_46d241, label %block_46d215

block_46d215:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 46d215	 Bytes: 4
  %loadMem_46d215 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d215 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d215)
  store %struct.Memory* %call_46d215, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %ecx	 RIP: 46d219	 Bytes: 3
  %loadMem_46d219 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d219 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d219)
  store %struct.Memory* %call_46d219, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 46d21c	 Bytes: 3
  %loadMem_46d21c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d21c = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d21c)
  store %struct.Memory* %call_46d21c, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 46d21f	 Bytes: 3
  %loadMem_46d21f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d21f = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d21f)
  store %struct.Memory* %call_46d21f, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, (%rax,%rdx,4)	 RIP: 46d222	 Bytes: 4
  %loadMem_46d222 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d222 = call %struct.Memory* @routine_cmpl__0x0____rax__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d222)
  store %struct.Memory* %call_46d222, %struct.Memory** %MEMORY

  ; Code: jge .L_46d241	 RIP: 46d226	 Bytes: 6
  %loadMem_46d226 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d226 = call %struct.Memory* @routine_jge_.L_46d241(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d226, i8* %BRANCH_TAKEN, i64 27, i64 6, i64 6)
  store %struct.Memory* %call_46d226, %struct.Memory** %MEMORY

  %loadBr_46d226 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46d226 = icmp eq i8 %loadBr_46d226, 1
  br i1 %cmpBr_46d226, label %block_.L_46d241, label %block_46d22c

block_46d22c:
  ; Code: movslq -0x18(%rbp), %rax	 RIP: 46d22c	 Bytes: 4
  %loadMem_46d22c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d22c = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d22c)
  store %struct.Memory* %call_46d22c, %struct.Memory** %MEMORY

  ; Code: movl -0x660(%rbp,%rax,4), %ecx	 RIP: 46d230	 Bytes: 7
  %loadMem_46d230 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d230 = call %struct.Memory* @routine_movl_MINUS0x660__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d230)
  store %struct.Memory* %call_46d230, %struct.Memory** %MEMORY

  ; Code: addl $0xffffffff, %ecx	 RIP: 46d237	 Bytes: 3
  %loadMem_46d237 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d237 = call %struct.Memory* @routine_addl__0xffffffff___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d237)
  store %struct.Memory* %call_46d237, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x660(%rbp,%rax,4)	 RIP: 46d23a	 Bytes: 7
  %loadMem_46d23a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d23a = call %struct.Memory* @routine_movl__ecx__MINUS0x660__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d23a)
  store %struct.Memory* %call_46d23a, %struct.Memory** %MEMORY

  ; Code: .L_46d241:	 RIP: 46d241	 Bytes: 0
  br label %block_.L_46d241
block_.L_46d241:

  ; Code: jmpq .L_46d246	 RIP: 46d241	 Bytes: 5
  %loadMem_46d241 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d241 = call %struct.Memory* @routine_jmpq_.L_46d246(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d241, i64 5, i64 5)
  store %struct.Memory* %call_46d241, %struct.Memory** %MEMORY

  br label %block_.L_46d246

  ; Code: .L_46d246:	 RIP: 46d246	 Bytes: 0
block_.L_46d246:

  ; Code: jmpq .L_46d24b	 RIP: 46d246	 Bytes: 5
  %loadMem_46d246 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d246 = call %struct.Memory* @routine_jmpq_.L_46d24b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d246, i64 5, i64 5)
  store %struct.Memory* %call_46d246, %struct.Memory** %MEMORY

  br label %block_.L_46d24b

  ; Code: .L_46d24b:	 RIP: 46d24b	 Bytes: 0
block_.L_46d24b:

  ; Code: movl -0x18(%rbp), %eax	 RIP: 46d24b	 Bytes: 3
  %loadMem_46d24b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d24b = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d24b)
  store %struct.Memory* %call_46d24b, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 46d24e	 Bytes: 3
  %loadMem_46d24e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d24e = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d24e)
  store %struct.Memory* %call_46d24e, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x18(%rbp)	 RIP: 46d251	 Bytes: 3
  %loadMem_46d251 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d251 = call %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d251)
  store %struct.Memory* %call_46d251, %struct.Memory** %MEMORY

  ; Code: jmpq .L_46ce39	 RIP: 46d254	 Bytes: 5
  %loadMem_46d254 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d254 = call %struct.Memory* @routine_jmpq_.L_46ce39(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d254, i64 -1051, i64 5)
  store %struct.Memory* %call_46d254, %struct.Memory** %MEMORY

  br label %block_.L_46ce39

  ; Code: .L_46d259:	 RIP: 46d259	 Bytes: 0
block_.L_46d259:

  ; Code: movl $0x640, %eax	 RIP: 46d259	 Bytes: 5
  %loadMem_46d259 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d259 = call %struct.Memory* @routine_movl__0x640___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d259)
  store %struct.Memory* %call_46d259, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 46d25e	 Bytes: 2
  %loadMem_46d25e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d25e = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d25e)
  store %struct.Memory* %call_46d25e, %struct.Memory** %MEMORY

  ; Code: leaq -0x660(%rbp), %rcx	 RIP: 46d260	 Bytes: 7
  %loadMem_46d260 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d260 = call %struct.Memory* @routine_leaq_MINUS0x660__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d260)
  store %struct.Memory* %call_46d260, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rsi	 RIP: 46d267	 Bytes: 4
  %loadMem_46d267 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d267 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d267)
  store %struct.Memory* %call_46d267, %struct.Memory** %MEMORY

  ; Code: movq %rsi, %rdi	 RIP: 46d26b	 Bytes: 3
  %loadMem_46d26b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d26b = call %struct.Memory* @routine_movq__rsi___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d26b)
  store %struct.Memory* %call_46d26b, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rsi	 RIP: 46d26e	 Bytes: 3
  %loadMem_46d26e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d26e = call %struct.Memory* @routine_movq__rcx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d26e)
  store %struct.Memory* %call_46d26e, %struct.Memory** %MEMORY

  ; Code: callq .memcpy_plt	 RIP: 46d271	 Bytes: 5
  %loadMem1_46d271 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46d271 = call %struct.Memory* @routine_callq_.memcpy_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46d271, i64 -442753, i64 5, i64 5)
  store %struct.Memory* %call1_46d271, %struct.Memory** %MEMORY

  %loadMem2_46d271 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46d271 = load i64, i64* %3
  %call2_46d271 = call %struct.Memory* @ext_memcpy(%struct.State* %0, i64  %loadPC_46d271, %struct.Memory* %loadMem2_46d271)
  store %struct.Memory* %call2_46d271, %struct.Memory** %MEMORY

  ; Code: movl -0x664(%rbp), %eax	 RIP: 46d276	 Bytes: 6
  %loadMem_46d276 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d276 = call %struct.Memory* @routine_movl_MINUS0x664__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d276)
  store %struct.Memory* %call_46d276, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 46d27c	 Bytes: 3
  %loadMem_46d27c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d27c = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d27c)
  store %struct.Memory* %call_46d27c, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x664(%rbp)	 RIP: 46d27f	 Bytes: 6
  %loadMem_46d27f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d27f = call %struct.Memory* @routine_movl__eax__MINUS0x664__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d27f)
  store %struct.Memory* %call_46d27f, %struct.Memory** %MEMORY

  ; Code: jmpq .L_46ce23	 RIP: 46d285	 Bytes: 5
  %loadMem_46d285 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d285 = call %struct.Memory* @routine_jmpq_.L_46ce23(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d285, i64 -1122, i64 5)
  store %struct.Memory* %call_46d285, %struct.Memory** %MEMORY

  br label %block_.L_46ce23

  ; Code: .L_46d28a:	 RIP: 46d28a	 Bytes: 0
block_.L_46d28a:

  ; Code: movl $0x0, -0x664(%rbp)	 RIP: 46d28a	 Bytes: 10
  %loadMem_46d28a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d28a = call %struct.Memory* @routine_movl__0x0__MINUS0x664__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d28a)
  store %struct.Memory* %call_46d28a, %struct.Memory** %MEMORY

  ; Code: .L_46d294:	 RIP: 46d294	 Bytes: 0
  br label %block_.L_46d294
block_.L_46d294:

  ; Code: movl -0x664(%rbp), %eax	 RIP: 46d294	 Bytes: 6
  %loadMem_46d294 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d294 = call %struct.Memory* @routine_movl_MINUS0x664__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d294)
  store %struct.Memory* %call_46d294, %struct.Memory** %MEMORY

  ; Code: cmpl -0x8(%rbp), %eax	 RIP: 46d29a	 Bytes: 3
  %loadMem_46d29a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d29a = call %struct.Memory* @routine_cmpl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d29a)
  store %struct.Memory* %call_46d29a, %struct.Memory** %MEMORY

  ; Code: jge .L_46d5df	 RIP: 46d29d	 Bytes: 6
  %loadMem_46d29d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d29d = call %struct.Memory* @routine_jge_.L_46d5df(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d29d, i8* %BRANCH_TAKEN, i64 834, i64 6, i64 6)
  store %struct.Memory* %call_46d29d, %struct.Memory** %MEMORY

  %loadBr_46d29d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46d29d = icmp eq i8 %loadBr_46d29d, 1
  br i1 %cmpBr_46d29d, label %block_.L_46d5df, label %block_46d2a3

block_46d2a3:
  ; Code: movl $0x15, -0x18(%rbp)	 RIP: 46d2a3	 Bytes: 7
  %loadMem_46d2a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d2a3 = call %struct.Memory* @routine_movl__0x15__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d2a3)
  store %struct.Memory* %call_46d2a3, %struct.Memory** %MEMORY

  ; Code: .L_46d2aa:	 RIP: 46d2aa	 Bytes: 0
  br label %block_.L_46d2aa
block_.L_46d2aa:

  ; Code: cmpl $0x190, -0x18(%rbp)	 RIP: 46d2aa	 Bytes: 7
  %loadMem_46d2aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d2aa = call %struct.Memory* @routine_cmpl__0x190__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d2aa)
  store %struct.Memory* %call_46d2aa, %struct.Memory** %MEMORY

  ; Code: jge .L_46d5ae	 RIP: 46d2b1	 Bytes: 6
  %loadMem_46d2b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d2b1 = call %struct.Memory* @routine_jge_.L_46d5ae(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d2b1, i8* %BRANCH_TAKEN, i64 765, i64 6, i64 6)
  store %struct.Memory* %call_46d2b1, %struct.Memory** %MEMORY

  %loadBr_46d2b1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46d2b1 = icmp eq i8 %loadBr_46d2b1, 1
  br i1 %cmpBr_46d2b1, label %block_.L_46d5ae, label %block_46d2b7

block_46d2b7:
  ; Code: movslq -0x18(%rbp), %rax	 RIP: 46d2b7	 Bytes: 4
  %loadMem_46d2b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d2b7 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d2b7)
  store %struct.Memory* %call_46d2b7, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 46d2bb	 Bytes: 8
  %loadMem_46d2bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d2bb = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d2bb)
  store %struct.Memory* %call_46d2bb, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %ecx	 RIP: 46d2c3	 Bytes: 3
  %loadMem_46d2c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d2c3 = call %struct.Memory* @routine_cmpl__0x3___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d2c3)
  store %struct.Memory* %call_46d2c3, %struct.Memory** %MEMORY

  ; Code: jne .L_46d2d1	 RIP: 46d2c6	 Bytes: 6
  %loadMem_46d2c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d2c6 = call %struct.Memory* @routine_jne_.L_46d2d1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d2c6, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_46d2c6, %struct.Memory** %MEMORY

  %loadBr_46d2c6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46d2c6 = icmp eq i8 %loadBr_46d2c6, 1
  br i1 %cmpBr_46d2c6, label %block_.L_46d2d1, label %block_46d2cc

block_46d2cc:
  ; Code: jmpq .L_46d5a0	 RIP: 46d2cc	 Bytes: 5
  %loadMem_46d2cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d2cc = call %struct.Memory* @routine_jmpq_.L_46d5a0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d2cc, i64 724, i64 5)
  store %struct.Memory* %call_46d2cc, %struct.Memory** %MEMORY

  br label %block_.L_46d5a0

  ; Code: .L_46d2d1:	 RIP: 46d2d1	 Bytes: 0
block_.L_46d2d1:

  ; Code: movslq -0x18(%rbp), %rax	 RIP: 46d2d1	 Bytes: 4
  %loadMem_46d2d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d2d1 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d2d1)
  store %struct.Memory* %call_46d2d1, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0x660(%rbp,%rax,4)	 RIP: 46d2d5	 Bytes: 8
  %loadMem_46d2d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d2d5 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x660__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d2d5)
  store %struct.Memory* %call_46d2d5, %struct.Memory** %MEMORY

  ; Code: jle .L_46d436	 RIP: 46d2dd	 Bytes: 6
  %loadMem_46d2dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d2dd = call %struct.Memory* @routine_jle_.L_46d436(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d2dd, i8* %BRANCH_TAKEN, i64 345, i64 6, i64 6)
  store %struct.Memory* %call_46d2dd, %struct.Memory** %MEMORY

  %loadBr_46d2dd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46d2dd = icmp eq i8 %loadBr_46d2dd, 1
  br i1 %cmpBr_46d2dd, label %block_.L_46d436, label %block_46d2e3

block_46d2e3:
  ; Code: movl -0x18(%rbp), %eax	 RIP: 46d2e3	 Bytes: 3
  %loadMem_46d2e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d2e3 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d2e3)
  store %struct.Memory* %call_46d2e3, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 46d2e6	 Bytes: 3
  %loadMem_46d2e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d2e6 = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d2e6)
  store %struct.Memory* %call_46d2e6, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 46d2e9	 Bytes: 3
  %loadMem_46d2e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d2e9 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d2e9)
  store %struct.Memory* %call_46d2e9, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 46d2ec	 Bytes: 8
  %loadMem_46d2ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d2ec = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d2ec)
  store %struct.Memory* %call_46d2ec, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %eax	 RIP: 46d2f4	 Bytes: 3
  %loadMem_46d2f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d2f4 = call %struct.Memory* @routine_cmpl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d2f4)
  store %struct.Memory* %call_46d2f4, %struct.Memory** %MEMORY

  ; Code: je .L_46d329	 RIP: 46d2f7	 Bytes: 6
  %loadMem_46d2f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d2f7 = call %struct.Memory* @routine_je_.L_46d329(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d2f7, i8* %BRANCH_TAKEN, i64 50, i64 6, i64 6)
  store %struct.Memory* %call_46d2f7, %struct.Memory** %MEMORY

  %loadBr_46d2f7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46d2f7 = icmp eq i8 %loadBr_46d2f7, 1
  br i1 %cmpBr_46d2f7, label %block_.L_46d329, label %block_46d2fd

block_46d2fd:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 46d2fd	 Bytes: 4
  %loadMem_46d2fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d2fd = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d2fd)
  store %struct.Memory* %call_46d2fd, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %ecx	 RIP: 46d301	 Bytes: 3
  %loadMem_46d301 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d301 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d301)
  store %struct.Memory* %call_46d301, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %ecx	 RIP: 46d304	 Bytes: 3
  %loadMem_46d304 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d304 = call %struct.Memory* @routine_addl__0x14___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d304)
  store %struct.Memory* %call_46d304, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 46d307	 Bytes: 3
  %loadMem_46d307 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d307 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d307)
  store %struct.Memory* %call_46d307, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, (%rax,%rdx,4)	 RIP: 46d30a	 Bytes: 4
  %loadMem_46d30a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d30a = call %struct.Memory* @routine_cmpl__0x0____rax__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d30a)
  store %struct.Memory* %call_46d30a, %struct.Memory** %MEMORY

  ; Code: jg .L_46d329	 RIP: 46d30e	 Bytes: 6
  %loadMem_46d30e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d30e = call %struct.Memory* @routine_jg_.L_46d329(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d30e, i8* %BRANCH_TAKEN, i64 27, i64 6, i64 6)
  store %struct.Memory* %call_46d30e, %struct.Memory** %MEMORY

  %loadBr_46d30e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46d30e = icmp eq i8 %loadBr_46d30e, 1
  br i1 %cmpBr_46d30e, label %block_.L_46d329, label %block_46d314

block_46d314:
  ; Code: movslq -0x18(%rbp), %rax	 RIP: 46d314	 Bytes: 4
  %loadMem_46d314 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d314 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d314)
  store %struct.Memory* %call_46d314, %struct.Memory** %MEMORY

  ; Code: movl -0x660(%rbp,%rax,4), %ecx	 RIP: 46d318	 Bytes: 7
  %loadMem_46d318 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d318 = call %struct.Memory* @routine_movl_MINUS0x660__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d318)
  store %struct.Memory* %call_46d318, %struct.Memory** %MEMORY

  ; Code: addl $0xffffffff, %ecx	 RIP: 46d31f	 Bytes: 3
  %loadMem_46d31f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d31f = call %struct.Memory* @routine_addl__0xffffffff___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d31f)
  store %struct.Memory* %call_46d31f, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x660(%rbp,%rax,4)	 RIP: 46d322	 Bytes: 7
  %loadMem_46d322 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d322 = call %struct.Memory* @routine_movl__ecx__MINUS0x660__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d322)
  store %struct.Memory* %call_46d322, %struct.Memory** %MEMORY

  ; Code: .L_46d329:	 RIP: 46d329	 Bytes: 0
  br label %block_.L_46d329
block_.L_46d329:

  ; Code: movl -0x18(%rbp), %eax	 RIP: 46d329	 Bytes: 3
  %loadMem_46d329 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d329 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d329)
  store %struct.Memory* %call_46d329, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 46d32c	 Bytes: 3
  %loadMem_46d32c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d32c = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d32c)
  store %struct.Memory* %call_46d32c, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 46d32f	 Bytes: 3
  %loadMem_46d32f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d32f = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d32f)
  store %struct.Memory* %call_46d32f, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 46d332	 Bytes: 8
  %loadMem_46d332 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d332 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d332)
  store %struct.Memory* %call_46d332, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %eax	 RIP: 46d33a	 Bytes: 3
  %loadMem_46d33a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d33a = call %struct.Memory* @routine_cmpl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d33a)
  store %struct.Memory* %call_46d33a, %struct.Memory** %MEMORY

  ; Code: je .L_46d381	 RIP: 46d33d	 Bytes: 6
  %loadMem_46d33d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d33d = call %struct.Memory* @routine_je_.L_46d381(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d33d, i8* %BRANCH_TAKEN, i64 68, i64 6, i64 6)
  store %struct.Memory* %call_46d33d, %struct.Memory** %MEMORY

  %loadBr_46d33d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46d33d = icmp eq i8 %loadBr_46d33d, 1
  br i1 %cmpBr_46d33d, label %block_.L_46d381, label %block_46d343

block_46d343:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 46d343	 Bytes: 4
  %loadMem_46d343 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d343 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d343)
  store %struct.Memory* %call_46d343, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %ecx	 RIP: 46d347	 Bytes: 3
  %loadMem_46d347 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d347 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d347)
  store %struct.Memory* %call_46d347, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 46d34a	 Bytes: 3
  %loadMem_46d34a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d34a = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d34a)
  store %struct.Memory* %call_46d34a, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 46d34d	 Bytes: 3
  %loadMem_46d34d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d34d = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d34d)
  store %struct.Memory* %call_46d34d, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, (%rax,%rdx,4)	 RIP: 46d350	 Bytes: 4
  %loadMem_46d350 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d350 = call %struct.Memory* @routine_cmpl__0x0____rax__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d350)
  store %struct.Memory* %call_46d350, %struct.Memory** %MEMORY

  ; Code: jg .L_46d381	 RIP: 46d354	 Bytes: 6
  %loadMem_46d354 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d354 = call %struct.Memory* @routine_jg_.L_46d381(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d354, i8* %BRANCH_TAKEN, i64 45, i64 6, i64 6)
  store %struct.Memory* %call_46d354, %struct.Memory** %MEMORY

  %loadBr_46d354 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46d354 = icmp eq i8 %loadBr_46d354, 1
  br i1 %cmpBr_46d354, label %block_.L_46d381, label %block_46d35a

block_46d35a:
  ; Code: movslq -0x18(%rbp), %rax	 RIP: 46d35a	 Bytes: 4
  %loadMem_46d35a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d35a = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d35a)
  store %struct.Memory* %call_46d35a, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0x660(%rbp,%rax,4)	 RIP: 46d35e	 Bytes: 8
  %loadMem_46d35e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d35e = call %struct.Memory* @routine_cmpl__0x0__MINUS0x660__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d35e)
  store %struct.Memory* %call_46d35e, %struct.Memory** %MEMORY

  ; Code: jle .L_46d381	 RIP: 46d366	 Bytes: 6
  %loadMem_46d366 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d366 = call %struct.Memory* @routine_jle_.L_46d381(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d366, i8* %BRANCH_TAKEN, i64 27, i64 6, i64 6)
  store %struct.Memory* %call_46d366, %struct.Memory** %MEMORY

  %loadBr_46d366 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46d366 = icmp eq i8 %loadBr_46d366, 1
  br i1 %cmpBr_46d366, label %block_.L_46d381, label %block_46d36c

block_46d36c:
  ; Code: movslq -0x18(%rbp), %rax	 RIP: 46d36c	 Bytes: 4
  %loadMem_46d36c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d36c = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d36c)
  store %struct.Memory* %call_46d36c, %struct.Memory** %MEMORY

  ; Code: movl -0x660(%rbp,%rax,4), %ecx	 RIP: 46d370	 Bytes: 7
  %loadMem_46d370 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d370 = call %struct.Memory* @routine_movl_MINUS0x660__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d370)
  store %struct.Memory* %call_46d370, %struct.Memory** %MEMORY

  ; Code: addl $0xffffffff, %ecx	 RIP: 46d377	 Bytes: 3
  %loadMem_46d377 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d377 = call %struct.Memory* @routine_addl__0xffffffff___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d377)
  store %struct.Memory* %call_46d377, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x660(%rbp,%rax,4)	 RIP: 46d37a	 Bytes: 7
  %loadMem_46d37a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d37a = call %struct.Memory* @routine_movl__ecx__MINUS0x660__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d37a)
  store %struct.Memory* %call_46d37a, %struct.Memory** %MEMORY

  ; Code: .L_46d381:	 RIP: 46d381	 Bytes: 0
  br label %block_.L_46d381
block_.L_46d381:

  ; Code: movl -0x18(%rbp), %eax	 RIP: 46d381	 Bytes: 3
  %loadMem_46d381 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d381 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d381)
  store %struct.Memory* %call_46d381, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 46d384	 Bytes: 3
  %loadMem_46d384 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d384 = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d384)
  store %struct.Memory* %call_46d384, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 46d387	 Bytes: 3
  %loadMem_46d387 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d387 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d387)
  store %struct.Memory* %call_46d387, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 46d38a	 Bytes: 8
  %loadMem_46d38a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d38a = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d38a)
  store %struct.Memory* %call_46d38a, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %eax	 RIP: 46d392	 Bytes: 3
  %loadMem_46d392 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d392 = call %struct.Memory* @routine_cmpl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d392)
  store %struct.Memory* %call_46d392, %struct.Memory** %MEMORY

  ; Code: je .L_46d3d9	 RIP: 46d395	 Bytes: 6
  %loadMem_46d395 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d395 = call %struct.Memory* @routine_je_.L_46d3d9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d395, i8* %BRANCH_TAKEN, i64 68, i64 6, i64 6)
  store %struct.Memory* %call_46d395, %struct.Memory** %MEMORY

  %loadBr_46d395 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46d395 = icmp eq i8 %loadBr_46d395, 1
  br i1 %cmpBr_46d395, label %block_.L_46d3d9, label %block_46d39b

block_46d39b:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 46d39b	 Bytes: 4
  %loadMem_46d39b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d39b = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d39b)
  store %struct.Memory* %call_46d39b, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %ecx	 RIP: 46d39f	 Bytes: 3
  %loadMem_46d39f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d39f = call %struct.Memory* @routine_movl_MINUS0x18__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d39f)
  store %struct.Memory* %call_46d39f, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %ecx	 RIP: 46d3a2	 Bytes: 3
  %loadMem_46d3a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d3a2 = call %struct.Memory* @routine_subl__0x14___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d3a2)
  store %struct.Memory* %call_46d3a2, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 46d3a5	 Bytes: 3
  %loadMem_46d3a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d3a5 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d3a5)
  store %struct.Memory* %call_46d3a5, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, (%rax,%rdx,4)	 RIP: 46d3a8	 Bytes: 4
  %loadMem_46d3a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d3a8 = call %struct.Memory* @routine_cmpl__0x0____rax__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d3a8)
  store %struct.Memory* %call_46d3a8, %struct.Memory** %MEMORY

  ; Code: jg .L_46d3d9	 RIP: 46d3ac	 Bytes: 6
  %loadMem_46d3ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d3ac = call %struct.Memory* @routine_jg_.L_46d3d9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d3ac, i8* %BRANCH_TAKEN, i64 45, i64 6, i64 6)
  store %struct.Memory* %call_46d3ac, %struct.Memory** %MEMORY

  %loadBr_46d3ac = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46d3ac = icmp eq i8 %loadBr_46d3ac, 1
  br i1 %cmpBr_46d3ac, label %block_.L_46d3d9, label %block_46d3b2

block_46d3b2:
  ; Code: movslq -0x18(%rbp), %rax	 RIP: 46d3b2	 Bytes: 4
  %loadMem_46d3b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d3b2 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d3b2)
  store %struct.Memory* %call_46d3b2, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0x660(%rbp,%rax,4)	 RIP: 46d3b6	 Bytes: 8
  %loadMem_46d3b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d3b6 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x660__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d3b6)
  store %struct.Memory* %call_46d3b6, %struct.Memory** %MEMORY

  ; Code: jle .L_46d3d9	 RIP: 46d3be	 Bytes: 6
  %loadMem_46d3be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d3be = call %struct.Memory* @routine_jle_.L_46d3d9(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d3be, i8* %BRANCH_TAKEN, i64 27, i64 6, i64 6)
  store %struct.Memory* %call_46d3be, %struct.Memory** %MEMORY

  %loadBr_46d3be = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46d3be = icmp eq i8 %loadBr_46d3be, 1
  br i1 %cmpBr_46d3be, label %block_.L_46d3d9, label %block_46d3c4

block_46d3c4:
  ; Code: movslq -0x18(%rbp), %rax	 RIP: 46d3c4	 Bytes: 4
  %loadMem_46d3c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d3c4 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d3c4)
  store %struct.Memory* %call_46d3c4, %struct.Memory** %MEMORY

  ; Code: movl -0x660(%rbp,%rax,4), %ecx	 RIP: 46d3c8	 Bytes: 7
  %loadMem_46d3c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d3c8 = call %struct.Memory* @routine_movl_MINUS0x660__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d3c8)
  store %struct.Memory* %call_46d3c8, %struct.Memory** %MEMORY

  ; Code: addl $0xffffffff, %ecx	 RIP: 46d3cf	 Bytes: 3
  %loadMem_46d3cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d3cf = call %struct.Memory* @routine_addl__0xffffffff___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d3cf)
  store %struct.Memory* %call_46d3cf, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x660(%rbp,%rax,4)	 RIP: 46d3d2	 Bytes: 7
  %loadMem_46d3d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d3d2 = call %struct.Memory* @routine_movl__ecx__MINUS0x660__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d3d2)
  store %struct.Memory* %call_46d3d2, %struct.Memory** %MEMORY

  ; Code: .L_46d3d9:	 RIP: 46d3d9	 Bytes: 0
  br label %block_.L_46d3d9
block_.L_46d3d9:

  ; Code: movl -0x18(%rbp), %eax	 RIP: 46d3d9	 Bytes: 3
  %loadMem_46d3d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d3d9 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d3d9)
  store %struct.Memory* %call_46d3d9, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 46d3dc	 Bytes: 3
  %loadMem_46d3dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d3dc = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d3dc)
  store %struct.Memory* %call_46d3dc, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 46d3df	 Bytes: 3
  %loadMem_46d3df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d3df = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d3df)
  store %struct.Memory* %call_46d3df, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 46d3e2	 Bytes: 8
  %loadMem_46d3e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d3e2 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d3e2)
  store %struct.Memory* %call_46d3e2, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %eax	 RIP: 46d3ea	 Bytes: 3
  %loadMem_46d3ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d3ea = call %struct.Memory* @routine_cmpl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d3ea)
  store %struct.Memory* %call_46d3ea, %struct.Memory** %MEMORY

  ; Code: je .L_46d431	 RIP: 46d3ed	 Bytes: 6
  %loadMem_46d3ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d3ed = call %struct.Memory* @routine_je_.L_46d431(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d3ed, i8* %BRANCH_TAKEN, i64 68, i64 6, i64 6)
  store %struct.Memory* %call_46d3ed, %struct.Memory** %MEMORY

  %loadBr_46d3ed = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46d3ed = icmp eq i8 %loadBr_46d3ed, 1
  br i1 %cmpBr_46d3ed, label %block_.L_46d431, label %block_46d3f3

block_46d3f3:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 46d3f3	 Bytes: 4
  %loadMem_46d3f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d3f3 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d3f3)
  store %struct.Memory* %call_46d3f3, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %ecx	 RIP: 46d3f7	 Bytes: 3
  %loadMem_46d3f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d3f7 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d3f7)
  store %struct.Memory* %call_46d3f7, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 46d3fa	 Bytes: 3
  %loadMem_46d3fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d3fa = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d3fa)
  store %struct.Memory* %call_46d3fa, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 46d3fd	 Bytes: 3
  %loadMem_46d3fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d3fd = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d3fd)
  store %struct.Memory* %call_46d3fd, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, (%rax,%rdx,4)	 RIP: 46d400	 Bytes: 4
  %loadMem_46d400 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d400 = call %struct.Memory* @routine_cmpl__0x0____rax__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d400)
  store %struct.Memory* %call_46d400, %struct.Memory** %MEMORY

  ; Code: jg .L_46d431	 RIP: 46d404	 Bytes: 6
  %loadMem_46d404 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d404 = call %struct.Memory* @routine_jg_.L_46d431(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d404, i8* %BRANCH_TAKEN, i64 45, i64 6, i64 6)
  store %struct.Memory* %call_46d404, %struct.Memory** %MEMORY

  %loadBr_46d404 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46d404 = icmp eq i8 %loadBr_46d404, 1
  br i1 %cmpBr_46d404, label %block_.L_46d431, label %block_46d40a

block_46d40a:
  ; Code: movslq -0x18(%rbp), %rax	 RIP: 46d40a	 Bytes: 4
  %loadMem_46d40a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d40a = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d40a)
  store %struct.Memory* %call_46d40a, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0x660(%rbp,%rax,4)	 RIP: 46d40e	 Bytes: 8
  %loadMem_46d40e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d40e = call %struct.Memory* @routine_cmpl__0x0__MINUS0x660__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d40e)
  store %struct.Memory* %call_46d40e, %struct.Memory** %MEMORY

  ; Code: jle .L_46d431	 RIP: 46d416	 Bytes: 6
  %loadMem_46d416 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d416 = call %struct.Memory* @routine_jle_.L_46d431(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d416, i8* %BRANCH_TAKEN, i64 27, i64 6, i64 6)
  store %struct.Memory* %call_46d416, %struct.Memory** %MEMORY

  %loadBr_46d416 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46d416 = icmp eq i8 %loadBr_46d416, 1
  br i1 %cmpBr_46d416, label %block_.L_46d431, label %block_46d41c

block_46d41c:
  ; Code: movslq -0x18(%rbp), %rax	 RIP: 46d41c	 Bytes: 4
  %loadMem_46d41c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d41c = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d41c)
  store %struct.Memory* %call_46d41c, %struct.Memory** %MEMORY

  ; Code: movl -0x660(%rbp,%rax,4), %ecx	 RIP: 46d420	 Bytes: 7
  %loadMem_46d420 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d420 = call %struct.Memory* @routine_movl_MINUS0x660__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d420)
  store %struct.Memory* %call_46d420, %struct.Memory** %MEMORY

  ; Code: addl $0xffffffff, %ecx	 RIP: 46d427	 Bytes: 3
  %loadMem_46d427 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d427 = call %struct.Memory* @routine_addl__0xffffffff___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d427)
  store %struct.Memory* %call_46d427, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x660(%rbp,%rax,4)	 RIP: 46d42a	 Bytes: 7
  %loadMem_46d42a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d42a = call %struct.Memory* @routine_movl__ecx__MINUS0x660__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d42a)
  store %struct.Memory* %call_46d42a, %struct.Memory** %MEMORY

  ; Code: .L_46d431:	 RIP: 46d431	 Bytes: 0
  br label %block_.L_46d431
block_.L_46d431:

  ; Code: jmpq .L_46d436	 RIP: 46d431	 Bytes: 5
  %loadMem_46d431 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d431 = call %struct.Memory* @routine_jmpq_.L_46d436(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d431, i64 5, i64 5)
  store %struct.Memory* %call_46d431, %struct.Memory** %MEMORY

  br label %block_.L_46d436

  ; Code: .L_46d436:	 RIP: 46d436	 Bytes: 0
block_.L_46d436:

  ; Code: movslq -0x18(%rbp), %rax	 RIP: 46d436	 Bytes: 4
  %loadMem_46d436 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d436 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d436)
  store %struct.Memory* %call_46d436, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0x660(%rbp,%rax,4)	 RIP: 46d43a	 Bytes: 8
  %loadMem_46d43a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d43a = call %struct.Memory* @routine_cmpl__0x0__MINUS0x660__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d43a)
  store %struct.Memory* %call_46d43a, %struct.Memory** %MEMORY

  ; Code: jge .L_46d59b	 RIP: 46d442	 Bytes: 6
  %loadMem_46d442 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d442 = call %struct.Memory* @routine_jge_.L_46d59b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d442, i8* %BRANCH_TAKEN, i64 345, i64 6, i64 6)
  store %struct.Memory* %call_46d442, %struct.Memory** %MEMORY

  %loadBr_46d442 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46d442 = icmp eq i8 %loadBr_46d442, 1
  br i1 %cmpBr_46d442, label %block_.L_46d59b, label %block_46d448

block_46d448:
  ; Code: movl -0x18(%rbp), %eax	 RIP: 46d448	 Bytes: 3
  %loadMem_46d448 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d448 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d448)
  store %struct.Memory* %call_46d448, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 46d44b	 Bytes: 3
  %loadMem_46d44b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d44b = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d44b)
  store %struct.Memory* %call_46d44b, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 46d44e	 Bytes: 3
  %loadMem_46d44e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d44e = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d44e)
  store %struct.Memory* %call_46d44e, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 46d451	 Bytes: 8
  %loadMem_46d451 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d451 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d451)
  store %struct.Memory* %call_46d451, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %eax	 RIP: 46d459	 Bytes: 3
  %loadMem_46d459 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d459 = call %struct.Memory* @routine_cmpl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d459)
  store %struct.Memory* %call_46d459, %struct.Memory** %MEMORY

  ; Code: je .L_46d48e	 RIP: 46d45c	 Bytes: 6
  %loadMem_46d45c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d45c = call %struct.Memory* @routine_je_.L_46d48e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d45c, i8* %BRANCH_TAKEN, i64 50, i64 6, i64 6)
  store %struct.Memory* %call_46d45c, %struct.Memory** %MEMORY

  %loadBr_46d45c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46d45c = icmp eq i8 %loadBr_46d45c, 1
  br i1 %cmpBr_46d45c, label %block_.L_46d48e, label %block_46d462

block_46d462:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 46d462	 Bytes: 4
  %loadMem_46d462 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d462 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d462)
  store %struct.Memory* %call_46d462, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %ecx	 RIP: 46d466	 Bytes: 3
  %loadMem_46d466 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d466 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d466)
  store %struct.Memory* %call_46d466, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %ecx	 RIP: 46d469	 Bytes: 3
  %loadMem_46d469 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d469 = call %struct.Memory* @routine_addl__0x14___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d469)
  store %struct.Memory* %call_46d469, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 46d46c	 Bytes: 3
  %loadMem_46d46c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d46c = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d46c)
  store %struct.Memory* %call_46d46c, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, (%rax,%rdx,4)	 RIP: 46d46f	 Bytes: 4
  %loadMem_46d46f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d46f = call %struct.Memory* @routine_cmpl__0x0____rax__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d46f)
  store %struct.Memory* %call_46d46f, %struct.Memory** %MEMORY

  ; Code: jl .L_46d48e	 RIP: 46d473	 Bytes: 6
  %loadMem_46d473 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d473 = call %struct.Memory* @routine_jl_.L_46d48e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d473, i8* %BRANCH_TAKEN, i64 27, i64 6, i64 6)
  store %struct.Memory* %call_46d473, %struct.Memory** %MEMORY

  %loadBr_46d473 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46d473 = icmp eq i8 %loadBr_46d473, 1
  br i1 %cmpBr_46d473, label %block_.L_46d48e, label %block_46d479

block_46d479:
  ; Code: movslq -0x18(%rbp), %rax	 RIP: 46d479	 Bytes: 4
  %loadMem_46d479 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d479 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d479)
  store %struct.Memory* %call_46d479, %struct.Memory** %MEMORY

  ; Code: movl -0x660(%rbp,%rax,4), %ecx	 RIP: 46d47d	 Bytes: 7
  %loadMem_46d47d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d47d = call %struct.Memory* @routine_movl_MINUS0x660__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d47d)
  store %struct.Memory* %call_46d47d, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 46d484	 Bytes: 3
  %loadMem_46d484 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d484 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d484)
  store %struct.Memory* %call_46d484, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x660(%rbp,%rax,4)	 RIP: 46d487	 Bytes: 7
  %loadMem_46d487 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d487 = call %struct.Memory* @routine_movl__ecx__MINUS0x660__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d487)
  store %struct.Memory* %call_46d487, %struct.Memory** %MEMORY

  ; Code: .L_46d48e:	 RIP: 46d48e	 Bytes: 0
  br label %block_.L_46d48e
block_.L_46d48e:

  ; Code: movl -0x18(%rbp), %eax	 RIP: 46d48e	 Bytes: 3
  %loadMem_46d48e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d48e = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d48e)
  store %struct.Memory* %call_46d48e, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 46d491	 Bytes: 3
  %loadMem_46d491 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d491 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d491)
  store %struct.Memory* %call_46d491, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 46d494	 Bytes: 3
  %loadMem_46d494 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d494 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d494)
  store %struct.Memory* %call_46d494, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 46d497	 Bytes: 8
  %loadMem_46d497 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d497 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d497)
  store %struct.Memory* %call_46d497, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %eax	 RIP: 46d49f	 Bytes: 3
  %loadMem_46d49f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d49f = call %struct.Memory* @routine_cmpl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d49f)
  store %struct.Memory* %call_46d49f, %struct.Memory** %MEMORY

  ; Code: je .L_46d4e6	 RIP: 46d4a2	 Bytes: 6
  %loadMem_46d4a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d4a2 = call %struct.Memory* @routine_je_.L_46d4e6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d4a2, i8* %BRANCH_TAKEN, i64 68, i64 6, i64 6)
  store %struct.Memory* %call_46d4a2, %struct.Memory** %MEMORY

  %loadBr_46d4a2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46d4a2 = icmp eq i8 %loadBr_46d4a2, 1
  br i1 %cmpBr_46d4a2, label %block_.L_46d4e6, label %block_46d4a8

block_46d4a8:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 46d4a8	 Bytes: 4
  %loadMem_46d4a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d4a8 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d4a8)
  store %struct.Memory* %call_46d4a8, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %ecx	 RIP: 46d4ac	 Bytes: 3
  %loadMem_46d4ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d4ac = call %struct.Memory* @routine_movl_MINUS0x18__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d4ac)
  store %struct.Memory* %call_46d4ac, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 46d4af	 Bytes: 3
  %loadMem_46d4af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d4af = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d4af)
  store %struct.Memory* %call_46d4af, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 46d4b2	 Bytes: 3
  %loadMem_46d4b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d4b2 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d4b2)
  store %struct.Memory* %call_46d4b2, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, (%rax,%rdx,4)	 RIP: 46d4b5	 Bytes: 4
  %loadMem_46d4b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d4b5 = call %struct.Memory* @routine_cmpl__0x0____rax__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d4b5)
  store %struct.Memory* %call_46d4b5, %struct.Memory** %MEMORY

  ; Code: jl .L_46d4e6	 RIP: 46d4b9	 Bytes: 6
  %loadMem_46d4b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d4b9 = call %struct.Memory* @routine_jl_.L_46d4e6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d4b9, i8* %BRANCH_TAKEN, i64 45, i64 6, i64 6)
  store %struct.Memory* %call_46d4b9, %struct.Memory** %MEMORY

  %loadBr_46d4b9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46d4b9 = icmp eq i8 %loadBr_46d4b9, 1
  br i1 %cmpBr_46d4b9, label %block_.L_46d4e6, label %block_46d4bf

block_46d4bf:
  ; Code: movslq -0x18(%rbp), %rax	 RIP: 46d4bf	 Bytes: 4
  %loadMem_46d4bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d4bf = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d4bf)
  store %struct.Memory* %call_46d4bf, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0x660(%rbp,%rax,4)	 RIP: 46d4c3	 Bytes: 8
  %loadMem_46d4c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d4c3 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x660__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d4c3)
  store %struct.Memory* %call_46d4c3, %struct.Memory** %MEMORY

  ; Code: jge .L_46d4e6	 RIP: 46d4cb	 Bytes: 6
  %loadMem_46d4cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d4cb = call %struct.Memory* @routine_jge_.L_46d4e6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d4cb, i8* %BRANCH_TAKEN, i64 27, i64 6, i64 6)
  store %struct.Memory* %call_46d4cb, %struct.Memory** %MEMORY

  %loadBr_46d4cb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46d4cb = icmp eq i8 %loadBr_46d4cb, 1
  br i1 %cmpBr_46d4cb, label %block_.L_46d4e6, label %block_46d4d1

block_46d4d1:
  ; Code: movslq -0x18(%rbp), %rax	 RIP: 46d4d1	 Bytes: 4
  %loadMem_46d4d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d4d1 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d4d1)
  store %struct.Memory* %call_46d4d1, %struct.Memory** %MEMORY

  ; Code: movl -0x660(%rbp,%rax,4), %ecx	 RIP: 46d4d5	 Bytes: 7
  %loadMem_46d4d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d4d5 = call %struct.Memory* @routine_movl_MINUS0x660__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d4d5)
  store %struct.Memory* %call_46d4d5, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 46d4dc	 Bytes: 3
  %loadMem_46d4dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d4dc = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d4dc)
  store %struct.Memory* %call_46d4dc, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x660(%rbp,%rax,4)	 RIP: 46d4df	 Bytes: 7
  %loadMem_46d4df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d4df = call %struct.Memory* @routine_movl__ecx__MINUS0x660__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d4df)
  store %struct.Memory* %call_46d4df, %struct.Memory** %MEMORY

  ; Code: .L_46d4e6:	 RIP: 46d4e6	 Bytes: 0
  br label %block_.L_46d4e6
block_.L_46d4e6:

  ; Code: movl -0x18(%rbp), %eax	 RIP: 46d4e6	 Bytes: 3
  %loadMem_46d4e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d4e6 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d4e6)
  store %struct.Memory* %call_46d4e6, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 46d4e9	 Bytes: 3
  %loadMem_46d4e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d4e9 = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d4e9)
  store %struct.Memory* %call_46d4e9, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 46d4ec	 Bytes: 3
  %loadMem_46d4ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d4ec = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d4ec)
  store %struct.Memory* %call_46d4ec, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 46d4ef	 Bytes: 8
  %loadMem_46d4ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d4ef = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d4ef)
  store %struct.Memory* %call_46d4ef, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %eax	 RIP: 46d4f7	 Bytes: 3
  %loadMem_46d4f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d4f7 = call %struct.Memory* @routine_cmpl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d4f7)
  store %struct.Memory* %call_46d4f7, %struct.Memory** %MEMORY

  ; Code: je .L_46d53e	 RIP: 46d4fa	 Bytes: 6
  %loadMem_46d4fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d4fa = call %struct.Memory* @routine_je_.L_46d53e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d4fa, i8* %BRANCH_TAKEN, i64 68, i64 6, i64 6)
  store %struct.Memory* %call_46d4fa, %struct.Memory** %MEMORY

  %loadBr_46d4fa = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46d4fa = icmp eq i8 %loadBr_46d4fa, 1
  br i1 %cmpBr_46d4fa, label %block_.L_46d53e, label %block_46d500

block_46d500:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 46d500	 Bytes: 4
  %loadMem_46d500 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d500 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d500)
  store %struct.Memory* %call_46d500, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %ecx	 RIP: 46d504	 Bytes: 3
  %loadMem_46d504 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d504 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d504)
  store %struct.Memory* %call_46d504, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %ecx	 RIP: 46d507	 Bytes: 3
  %loadMem_46d507 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d507 = call %struct.Memory* @routine_subl__0x14___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d507)
  store %struct.Memory* %call_46d507, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 46d50a	 Bytes: 3
  %loadMem_46d50a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d50a = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d50a)
  store %struct.Memory* %call_46d50a, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, (%rax,%rdx,4)	 RIP: 46d50d	 Bytes: 4
  %loadMem_46d50d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d50d = call %struct.Memory* @routine_cmpl__0x0____rax__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d50d)
  store %struct.Memory* %call_46d50d, %struct.Memory** %MEMORY

  ; Code: jl .L_46d53e	 RIP: 46d511	 Bytes: 6
  %loadMem_46d511 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d511 = call %struct.Memory* @routine_jl_.L_46d53e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d511, i8* %BRANCH_TAKEN, i64 45, i64 6, i64 6)
  store %struct.Memory* %call_46d511, %struct.Memory** %MEMORY

  %loadBr_46d511 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46d511 = icmp eq i8 %loadBr_46d511, 1
  br i1 %cmpBr_46d511, label %block_.L_46d53e, label %block_46d517

block_46d517:
  ; Code: movslq -0x18(%rbp), %rax	 RIP: 46d517	 Bytes: 4
  %loadMem_46d517 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d517 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d517)
  store %struct.Memory* %call_46d517, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0x660(%rbp,%rax,4)	 RIP: 46d51b	 Bytes: 8
  %loadMem_46d51b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d51b = call %struct.Memory* @routine_cmpl__0x0__MINUS0x660__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d51b)
  store %struct.Memory* %call_46d51b, %struct.Memory** %MEMORY

  ; Code: jge .L_46d53e	 RIP: 46d523	 Bytes: 6
  %loadMem_46d523 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d523 = call %struct.Memory* @routine_jge_.L_46d53e(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d523, i8* %BRANCH_TAKEN, i64 27, i64 6, i64 6)
  store %struct.Memory* %call_46d523, %struct.Memory** %MEMORY

  %loadBr_46d523 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46d523 = icmp eq i8 %loadBr_46d523, 1
  br i1 %cmpBr_46d523, label %block_.L_46d53e, label %block_46d529

block_46d529:
  ; Code: movslq -0x18(%rbp), %rax	 RIP: 46d529	 Bytes: 4
  %loadMem_46d529 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d529 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d529)
  store %struct.Memory* %call_46d529, %struct.Memory** %MEMORY

  ; Code: movl -0x660(%rbp,%rax,4), %ecx	 RIP: 46d52d	 Bytes: 7
  %loadMem_46d52d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d52d = call %struct.Memory* @routine_movl_MINUS0x660__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d52d)
  store %struct.Memory* %call_46d52d, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 46d534	 Bytes: 3
  %loadMem_46d534 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d534 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d534)
  store %struct.Memory* %call_46d534, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x660(%rbp,%rax,4)	 RIP: 46d537	 Bytes: 7
  %loadMem_46d537 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d537 = call %struct.Memory* @routine_movl__ecx__MINUS0x660__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d537)
  store %struct.Memory* %call_46d537, %struct.Memory** %MEMORY

  ; Code: .L_46d53e:	 RIP: 46d53e	 Bytes: 0
  br label %block_.L_46d53e
block_.L_46d53e:

  ; Code: movl -0x18(%rbp), %eax	 RIP: 46d53e	 Bytes: 3
  %loadMem_46d53e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d53e = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d53e)
  store %struct.Memory* %call_46d53e, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 46d541	 Bytes: 3
  %loadMem_46d541 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d541 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d541)
  store %struct.Memory* %call_46d541, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 46d544	 Bytes: 3
  %loadMem_46d544 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d544 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d544)
  store %struct.Memory* %call_46d544, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 46d547	 Bytes: 8
  %loadMem_46d547 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d547 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d547)
  store %struct.Memory* %call_46d547, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %eax	 RIP: 46d54f	 Bytes: 3
  %loadMem_46d54f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d54f = call %struct.Memory* @routine_cmpl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d54f)
  store %struct.Memory* %call_46d54f, %struct.Memory** %MEMORY

  ; Code: je .L_46d596	 RIP: 46d552	 Bytes: 6
  %loadMem_46d552 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d552 = call %struct.Memory* @routine_je_.L_46d596(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d552, i8* %BRANCH_TAKEN, i64 68, i64 6, i64 6)
  store %struct.Memory* %call_46d552, %struct.Memory** %MEMORY

  %loadBr_46d552 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46d552 = icmp eq i8 %loadBr_46d552, 1
  br i1 %cmpBr_46d552, label %block_.L_46d596, label %block_46d558

block_46d558:
  ; Code: movq -0x10(%rbp), %rax	 RIP: 46d558	 Bytes: 4
  %loadMem_46d558 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d558 = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d558)
  store %struct.Memory* %call_46d558, %struct.Memory** %MEMORY

  ; Code: movl -0x18(%rbp), %ecx	 RIP: 46d55c	 Bytes: 3
  %loadMem_46d55c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d55c = call %struct.Memory* @routine_movl_MINUS0x18__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d55c)
  store %struct.Memory* %call_46d55c, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 46d55f	 Bytes: 3
  %loadMem_46d55f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d55f = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d55f)
  store %struct.Memory* %call_46d55f, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 46d562	 Bytes: 3
  %loadMem_46d562 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d562 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d562)
  store %struct.Memory* %call_46d562, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, (%rax,%rdx,4)	 RIP: 46d565	 Bytes: 4
  %loadMem_46d565 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d565 = call %struct.Memory* @routine_cmpl__0x0____rax__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d565)
  store %struct.Memory* %call_46d565, %struct.Memory** %MEMORY

  ; Code: jl .L_46d596	 RIP: 46d569	 Bytes: 6
  %loadMem_46d569 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d569 = call %struct.Memory* @routine_jl_.L_46d596(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d569, i8* %BRANCH_TAKEN, i64 45, i64 6, i64 6)
  store %struct.Memory* %call_46d569, %struct.Memory** %MEMORY

  %loadBr_46d569 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46d569 = icmp eq i8 %loadBr_46d569, 1
  br i1 %cmpBr_46d569, label %block_.L_46d596, label %block_46d56f

block_46d56f:
  ; Code: movslq -0x18(%rbp), %rax	 RIP: 46d56f	 Bytes: 4
  %loadMem_46d56f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d56f = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d56f)
  store %struct.Memory* %call_46d56f, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, -0x660(%rbp,%rax,4)	 RIP: 46d573	 Bytes: 8
  %loadMem_46d573 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d573 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x660__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d573)
  store %struct.Memory* %call_46d573, %struct.Memory** %MEMORY

  ; Code: jge .L_46d596	 RIP: 46d57b	 Bytes: 6
  %loadMem_46d57b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d57b = call %struct.Memory* @routine_jge_.L_46d596(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d57b, i8* %BRANCH_TAKEN, i64 27, i64 6, i64 6)
  store %struct.Memory* %call_46d57b, %struct.Memory** %MEMORY

  %loadBr_46d57b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46d57b = icmp eq i8 %loadBr_46d57b, 1
  br i1 %cmpBr_46d57b, label %block_.L_46d596, label %block_46d581

block_46d581:
  ; Code: movslq -0x18(%rbp), %rax	 RIP: 46d581	 Bytes: 4
  %loadMem_46d581 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d581 = call %struct.Memory* @routine_movslq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d581)
  store %struct.Memory* %call_46d581, %struct.Memory** %MEMORY

  ; Code: movl -0x660(%rbp,%rax,4), %ecx	 RIP: 46d585	 Bytes: 7
  %loadMem_46d585 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d585 = call %struct.Memory* @routine_movl_MINUS0x660__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d585)
  store %struct.Memory* %call_46d585, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 46d58c	 Bytes: 3
  %loadMem_46d58c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d58c = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d58c)
  store %struct.Memory* %call_46d58c, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x660(%rbp,%rax,4)	 RIP: 46d58f	 Bytes: 7
  %loadMem_46d58f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d58f = call %struct.Memory* @routine_movl__ecx__MINUS0x660__rbp__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d58f)
  store %struct.Memory* %call_46d58f, %struct.Memory** %MEMORY

  ; Code: .L_46d596:	 RIP: 46d596	 Bytes: 0
  br label %block_.L_46d596
block_.L_46d596:

  ; Code: jmpq .L_46d59b	 RIP: 46d596	 Bytes: 5
  %loadMem_46d596 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d596 = call %struct.Memory* @routine_jmpq_.L_46d59b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d596, i64 5, i64 5)
  store %struct.Memory* %call_46d596, %struct.Memory** %MEMORY

  br label %block_.L_46d59b

  ; Code: .L_46d59b:	 RIP: 46d59b	 Bytes: 0
block_.L_46d59b:

  ; Code: jmpq .L_46d5a0	 RIP: 46d59b	 Bytes: 5
  %loadMem_46d59b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d59b = call %struct.Memory* @routine_jmpq_.L_46d5a0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d59b, i64 5, i64 5)
  store %struct.Memory* %call_46d59b, %struct.Memory** %MEMORY

  br label %block_.L_46d5a0

  ; Code: .L_46d5a0:	 RIP: 46d5a0	 Bytes: 0
block_.L_46d5a0:

  ; Code: movl -0x18(%rbp), %eax	 RIP: 46d5a0	 Bytes: 3
  %loadMem_46d5a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d5a0 = call %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d5a0)
  store %struct.Memory* %call_46d5a0, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 46d5a3	 Bytes: 3
  %loadMem_46d5a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d5a3 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d5a3)
  store %struct.Memory* %call_46d5a3, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x18(%rbp)	 RIP: 46d5a6	 Bytes: 3
  %loadMem_46d5a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d5a6 = call %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d5a6)
  store %struct.Memory* %call_46d5a6, %struct.Memory** %MEMORY

  ; Code: jmpq .L_46d2aa	 RIP: 46d5a9	 Bytes: 5
  %loadMem_46d5a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d5a9 = call %struct.Memory* @routine_jmpq_.L_46d2aa(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d5a9, i64 -767, i64 5)
  store %struct.Memory* %call_46d5a9, %struct.Memory** %MEMORY

  br label %block_.L_46d2aa

  ; Code: .L_46d5ae:	 RIP: 46d5ae	 Bytes: 0
block_.L_46d5ae:

  ; Code: movl $0x640, %eax	 RIP: 46d5ae	 Bytes: 5
  %loadMem_46d5ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d5ae = call %struct.Memory* @routine_movl__0x640___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d5ae)
  store %struct.Memory* %call_46d5ae, %struct.Memory** %MEMORY

  ; Code: movl %eax, %edx	 RIP: 46d5b3	 Bytes: 2
  %loadMem_46d5b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d5b3 = call %struct.Memory* @routine_movl__eax___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d5b3)
  store %struct.Memory* %call_46d5b3, %struct.Memory** %MEMORY

  ; Code: leaq -0x660(%rbp), %rcx	 RIP: 46d5b5	 Bytes: 7
  %loadMem_46d5b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d5b5 = call %struct.Memory* @routine_leaq_MINUS0x660__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d5b5)
  store %struct.Memory* %call_46d5b5, %struct.Memory** %MEMORY

  ; Code: movq -0x10(%rbp), %rsi	 RIP: 46d5bc	 Bytes: 4
  %loadMem_46d5bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d5bc = call %struct.Memory* @routine_movq_MINUS0x10__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d5bc)
  store %struct.Memory* %call_46d5bc, %struct.Memory** %MEMORY

  ; Code: movq %rsi, %rdi	 RIP: 46d5c0	 Bytes: 3
  %loadMem_46d5c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d5c0 = call %struct.Memory* @routine_movq__rsi___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d5c0)
  store %struct.Memory* %call_46d5c0, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rsi	 RIP: 46d5c3	 Bytes: 3
  %loadMem_46d5c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d5c3 = call %struct.Memory* @routine_movq__rcx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d5c3)
  store %struct.Memory* %call_46d5c3, %struct.Memory** %MEMORY

  ; Code: callq .memcpy_plt	 RIP: 46d5c6	 Bytes: 5
  %loadMem1_46d5c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_46d5c6 = call %struct.Memory* @routine_callq_.memcpy_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_46d5c6, i64 -443606, i64 5, i64 5)
  store %struct.Memory* %call1_46d5c6, %struct.Memory** %MEMORY

  %loadMem2_46d5c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46d5c6 = load i64, i64* %3
  %call2_46d5c6 = call %struct.Memory* @ext_memcpy(%struct.State* %0, i64  %loadPC_46d5c6, %struct.Memory* %loadMem2_46d5c6)
  store %struct.Memory* %call2_46d5c6, %struct.Memory** %MEMORY

  ; Code: movl -0x664(%rbp), %eax	 RIP: 46d5cb	 Bytes: 6
  %loadMem_46d5cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d5cb = call %struct.Memory* @routine_movl_MINUS0x664__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d5cb)
  store %struct.Memory* %call_46d5cb, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 46d5d1	 Bytes: 3
  %loadMem_46d5d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d5d1 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d5d1)
  store %struct.Memory* %call_46d5d1, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x664(%rbp)	 RIP: 46d5d4	 Bytes: 6
  %loadMem_46d5d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d5d4 = call %struct.Memory* @routine_movl__eax__MINUS0x664__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d5d4)
  store %struct.Memory* %call_46d5d4, %struct.Memory** %MEMORY

  ; Code: jmpq .L_46d294	 RIP: 46d5da	 Bytes: 5
  %loadMem_46d5da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d5da = call %struct.Memory* @routine_jmpq_.L_46d294(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d5da, i64 -838, i64 5)
  store %struct.Memory* %call_46d5da, %struct.Memory** %MEMORY

  br label %block_.L_46d294

  ; Code: .L_46d5df:	 RIP: 46d5df	 Bytes: 0
block_.L_46d5df:

  ; Code: movl -0x668(%rbp), %eax	 RIP: 46d5df	 Bytes: 6
  %loadMem_46d5df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d5df = call %struct.Memory* @routine_movl_MINUS0x668__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d5df)
  store %struct.Memory* %call_46d5df, %struct.Memory** %MEMORY

  ; Code: addq $0x670, %rsp	 RIP: 46d5e5	 Bytes: 7
  %loadMem_46d5e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d5e5 = call %struct.Memory* @routine_addq__0x670___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d5e5)
  store %struct.Memory* %call_46d5e5, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 46d5ec	 Bytes: 1
  %loadMem_46d5ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d5ec = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d5ec)
  store %struct.Memory* %call_46d5ec, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 46d5ed	 Bytes: 1
  %loadMem_46d5ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_46d5ed = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_46d5ed)
  store %struct.Memory* %call_46d5ed, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_46d5ed
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


define %struct.Memory* @routine_movl__esi__MINUS0x8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 8
  %14 = load i32, i32* %ESI
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

define %struct.Memory* @routine_movq__rdx__MINUS0x10__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %14)
  ret %struct.Memory* %17
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0x0__MINUS0x668__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 1640
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x15__MINUS0x18__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 21)
  ret %struct.Memory* %13
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

define %struct.Memory* @routine_cmpl__0x190__MINUS0x18__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 7
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

define %struct.Memory* @routine_jge_.L_46cdff(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jne_.L_46cd20(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jmpq_.L_46cdf1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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

define %struct.Memory* @routine_je_.L_46cd5e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0xb4bd20_type* @G__0xb4bd20 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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

define %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 76)
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


define %struct.Memory* @routine_cmpl__0x2__0x40__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 2)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_46cd5e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl__0x1__MINUS0x668__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 1640
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
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


define %struct.Memory* @routine_jne_.L_46cd9b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
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


define %struct.Memory* @routine_movl_MINUS0x14__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
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

define %struct.Memory* @routine_callq_.captured_territory(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i64*
  %6 = load i64, i64* %5
  store i64 %6, i64* %2, align 8
  ret %struct.Memory* %0
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




define %struct.Memory* @routine_movl__0x80____rax__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %15, i64 128)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_46cdec(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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


define %struct.Memory* @routine_jne_.L_46cdd8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
















define %struct.Memory* @routine_movl__0xffffff80____rax__rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %15, i64 -128)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_46cde7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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


define %struct.Memory* @routine_jmpq_.L_46ccf9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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

define %struct.Memory* @routine_leaq_MINUS0x660__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1632
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3LEAI3RnWImE2MnIhEmEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
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


define %struct.Memory* @routine_callq_.memcpy_plt(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_cmpl_MINUS0x4__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %15 = sub i64 %14, 4
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_46d28a(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jge_.L_46d259(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jne_.L_46ce60(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_46d24b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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

define %struct.Memory* @routine_jl_.L_46d053(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_je_.L_46cea3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_je_.L_46ced4(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_je_.L_46cf05(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


















define %struct.Memory* @routine_je_.L_46cf36(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


















define %struct.Memory* @routine_je_.L_46cf7c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jle_.L_46cf7c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl_MINUS0x660__rbp__rax_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %18 = add i64 %15, -1632
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %19)
  ret %struct.Memory* %22
}




define %struct.Memory* @routine_movl__ecx__MINUS0x660__rbp__rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %18 = add i64 %15, -1632
  %19 = add i64 %18, %17
  %20 = load i32, i32* %ECX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %21)
  ret %struct.Memory* %24
}












define %struct.Memory* @routine_je_.L_46cfc2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_jle_.L_46cfc2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




















define %struct.Memory* @routine_je_.L_46d008(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_jle_.L_46d008(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




















define %struct.Memory* @routine_je_.L_46d04e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_jle_.L_46d04e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_jmpq_.L_46d053(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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

define %struct.Memory* @routine_jg_.L_46d246(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_je_.L_46d096(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
























define %struct.Memory* @routine_je_.L_46d0c7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
























define %struct.Memory* @routine_je_.L_46d0f8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
























define %struct.Memory* @routine_je_.L_46d129(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
























define %struct.Memory* @routine_je_.L_46d16f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_jge_.L_46d16f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_addl__0xffffffff___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 -1)
  ret %struct.Memory* %12
}














define %struct.Memory* @routine_je_.L_46d1b5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_jge_.L_46d1b5(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




















define %struct.Memory* @routine_je_.L_46d1fb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_jge_.L_46d1fb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




















define %struct.Memory* @routine_je_.L_46d241(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_jge_.L_46d241(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_jmpq_.L_46d246(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}










define %struct.Memory* @routine_jmpq_.L_46ce39(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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


define %struct.Memory* @routine_jmpq_.L_46ce23(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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


define %struct.Memory* @routine_jge_.L_46d5df(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jge_.L_46d5ae(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_jne_.L_46d2d1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_46d5a0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_cmpl__0x0__MINUS0x660__rbp__rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %15 = add i64 %12, -1632
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 8
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %16, i64 0)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_jle_.L_46d436(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_je_.L_46d329(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_jg_.L_46d329(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




















define %struct.Memory* @routine_je_.L_46d381(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_jg_.L_46d381(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jle_.L_46d381(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




















define %struct.Memory* @routine_je_.L_46d3d9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_jg_.L_46d3d9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jle_.L_46d3d9(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




















define %struct.Memory* @routine_je_.L_46d431(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_jg_.L_46d431(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jle_.L_46d431(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_jmpq_.L_46d436(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_jge_.L_46d59b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_je_.L_46d48e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_jl_.L_46d48e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




















define %struct.Memory* @routine_je_.L_46d4e6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_jl_.L_46d4e6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jge_.L_46d4e6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




















define %struct.Memory* @routine_je_.L_46d53e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_jl_.L_46d53e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jge_.L_46d53e(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




















define %struct.Memory* @routine_je_.L_46d596(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_jl_.L_46d596(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jge_.L_46d596(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_jmpq_.L_46d59b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}










define %struct.Memory* @routine_jmpq_.L_46d2aa(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






















define %struct.Memory* @routine_jmpq_.L_46d294(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movl_MINUS0x668__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 1640
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
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

