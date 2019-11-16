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

; Data Access Globals
%G_0xaaf6a0_type = type <{ [4 x i8] }>
@G_0xaaf6a0= global %G_0xaaf6a0_type <{ [4 x i8] c"\00\00\00\00" }>
%G__0x57ad9b_type = type <{ [8 x i8] }>
@G__0x57ad9b= global %G__0x57ad9b_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57b28d_type = type <{ [8 x i8] }>
@G__0x57b28d= global %G__0x57b28d_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0x57b2ac_type = type <{ [8 x i8] }>
@G__0x57b2ac= global %G__0x57b2ac_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0xaaf6b0_type = type <{ [8 x i8] }>
@G__0xaaf6b0= global %G__0xaaf6b0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0xb01180_type = type <{ [8 x i8] }>
@G__0xb01180= global %G__0xb01180_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>
%G__0xb9a0a0_type = type <{ [8 x i8] }>
@G__0xb9a0a0= global %G__0xb9a0a0_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>


define %struct.Memory* @dragon_escape(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .dragon_escape:	 RIP: 420e20	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 420e20	 Bytes: 1
  %loadMem_420e20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420e20 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420e20)
  store %struct.Memory* %call_420e20, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 420e21	 Bytes: 3
  %loadMem_420e21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420e21 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420e21)
  store %struct.Memory* %call_420e21, %struct.Memory** %MEMORY

  ; Code: subq $0x600, %rsp	 RIP: 420e24	 Bytes: 7
  %loadMem_420e24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420e24 = call %struct.Memory* @routine_subq__0x600___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420e24)
  store %struct.Memory* %call_420e24, %struct.Memory** %MEMORY

  ; Code: movl $0x3, %eax	 RIP: 420e2b	 Bytes: 5
  %loadMem_420e2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420e2b = call %struct.Memory* @routine_movl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420e2b)
  store %struct.Memory* %call_420e2b, %struct.Memory** %MEMORY

  ; Code: movq %rdi, -0x8(%rbp)	 RIP: 420e30	 Bytes: 4
  %loadMem_420e30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420e30 = call %struct.Memory* @routine_movq__rdi__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420e30)
  store %struct.Memory* %call_420e30, %struct.Memory** %MEMORY

  ; Code: movl %esi, -0xc(%rbp)	 RIP: 420e34	 Bytes: 3
  %loadMem_420e34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420e34 = call %struct.Memory* @routine_movl__esi__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420e34)
  store %struct.Memory* %call_420e34, %struct.Memory** %MEMORY

  ; Code: movq %rdx, -0x18(%rbp)	 RIP: 420e37	 Bytes: 4
  %loadMem_420e37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420e37 = call %struct.Memory* @routine_movq__rdx__MINUS0x18__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420e37)
  store %struct.Memory* %call_420e37, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x5d4(%rbp)	 RIP: 420e3b	 Bytes: 10
  %loadMem_420e3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420e3b = call %struct.Memory* @routine_movl__0x0__MINUS0x5d4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420e3b)
  store %struct.Memory* %call_420e3b, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x5d8(%rbp)	 RIP: 420e45	 Bytes: 10
  %loadMem_420e45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420e45 = call %struct.Memory* @routine_movl__0x0__MINUS0x5d8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420e45)
  store %struct.Memory* %call_420e45, %struct.Memory** %MEMORY

  ; Code: subl -0xc(%rbp), %eax	 RIP: 420e4f	 Bytes: 3
  %loadMem_420e4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420e4f = call %struct.Memory* @routine_subl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420e4f)
  store %struct.Memory* %call_420e4f, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x5dc(%rbp)	 RIP: 420e52	 Bytes: 6
  %loadMem_420e52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420e52 = call %struct.Memory* @routine_movl__eax__MINUS0x5dc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420e52)
  store %struct.Memory* %call_420e52, %struct.Memory** %MEMORY

  ; Code: movl $0x0, -0x5e4(%rbp)	 RIP: 420e58	 Bytes: 10
  %loadMem_420e58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420e58 = call %struct.Memory* @routine_movl__0x0__MINUS0x5e4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420e58)
  store %struct.Memory* %call_420e58, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, -0xc(%rbp)	 RIP: 420e62	 Bytes: 4
  %loadMem_420e62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420e62 = call %struct.Memory* @routine_cmpl__0x1__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420e62)
  store %struct.Memory* %call_420e62, %struct.Memory** %MEMORY

  ; Code: je .L_420e76	 RIP: 420e66	 Bytes: 6
  %loadMem_420e66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420e66 = call %struct.Memory* @routine_je_.L_420e76(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420e66, i8* %BRANCH_TAKEN, i64 16, i64 6, i64 6)
  store %struct.Memory* %call_420e66, %struct.Memory** %MEMORY

  %loadBr_420e66 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_420e66 = icmp eq i8 %loadBr_420e66, 1
  br i1 %cmpBr_420e66, label %block_.L_420e76, label %block_420e6c

block_420e6c:
  ; Code: cmpl $0x2, -0xc(%rbp)	 RIP: 420e6c	 Bytes: 4
  %loadMem_420e6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420e6c = call %struct.Memory* @routine_cmpl__0x2__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420e6c)
  store %struct.Memory* %call_420e6c, %struct.Memory** %MEMORY

  ; Code: jne .L_420e7b	 RIP: 420e70	 Bytes: 6
  %loadMem_420e70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420e70 = call %struct.Memory* @routine_jne_.L_420e7b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420e70, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_420e70, %struct.Memory** %MEMORY

  %loadBr_420e70 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_420e70 = icmp eq i8 %loadBr_420e70, 1
  br i1 %cmpBr_420e70, label %block_.L_420e7b, label %block_.L_420e76

  ; Code: .L_420e76:	 RIP: 420e76	 Bytes: 0
block_.L_420e76:

  ; Code: jmpq .L_420ea3	 RIP: 420e76	 Bytes: 5
  %loadMem_420e76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420e76 = call %struct.Memory* @routine_jmpq_.L_420ea3(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420e76, i64 45, i64 5)
  store %struct.Memory* %call_420e76, %struct.Memory** %MEMORY

  br label %block_.L_420ea3

  ; Code: .L_420e7b:	 RIP: 420e7b	 Bytes: 0
block_.L_420e7b:

  ; Code: movq $0x57ad9b, %rdi	 RIP: 420e7b	 Bytes: 10
  %loadMem_420e7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420e7b = call %struct.Memory* @routine_movq__0x57ad9b___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420e7b)
  store %struct.Memory* %call_420e7b, %struct.Memory** %MEMORY

  ; Code: movl $0x6b9, %esi	 RIP: 420e85	 Bytes: 5
  %loadMem_420e85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420e85 = call %struct.Memory* @routine_movl__0x6b9___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420e85)
  store %struct.Memory* %call_420e85, %struct.Memory** %MEMORY

  ; Code: movq $0x57b28d, %rdx	 RIP: 420e8a	 Bytes: 10
  %loadMem_420e8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420e8a = call %struct.Memory* @routine_movq__0x57b28d___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420e8a)
  store %struct.Memory* %call_420e8a, %struct.Memory** %MEMORY

  ; Code: movl $0xffffffff, %eax	 RIP: 420e94	 Bytes: 5
  %loadMem_420e94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420e94 = call %struct.Memory* @routine_movl__0xffffffff___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420e94)
  store %struct.Memory* %call_420e94, %struct.Memory** %MEMORY

  ; Code: movl %eax, %ecx	 RIP: 420e99	 Bytes: 2
  %loadMem_420e99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420e99 = call %struct.Memory* @routine_movl__eax___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420e99)
  store %struct.Memory* %call_420e99, %struct.Memory** %MEMORY

  ; Code: movl %eax, %r8d	 RIP: 420e9b	 Bytes: 3
  %loadMem_420e9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420e9b = call %struct.Memory* @routine_movl__eax___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420e9b)
  store %struct.Memory* %call_420e9b, %struct.Memory** %MEMORY

  ; Code: callq .abortgo	 RIP: 420e9e	 Bytes: 5
  %loadMem1_420e9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_420e9e = call %struct.Memory* @routine_callq_.abortgo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_420e9e, i64 201202, i64 5, i64 5)
  store %struct.Memory* %call1_420e9e, %struct.Memory** %MEMORY

  %loadMem2_420e9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_420e9e = load i64, i64* %3
  %call2_420e9e = call %struct.Memory* @sub_452090.abortgo(%struct.State* %0, i64  %loadPC_420e9e, %struct.Memory* %loadMem2_420e9e)
  store %struct.Memory* %call2_420e9e, %struct.Memory** %MEMORY

  ; Code: .L_420ea3:	 RIP: 420ea3	 Bytes: 0
  br label %block_.L_420ea3
block_.L_420ea3:

  ; Code: cmpl $0x0, 0xaaf6a0	 RIP: 420ea3	 Bytes: 8
  %loadMem_420ea3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420ea3 = call %struct.Memory* @routine_cmpl__0x0__0xaaf6a0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420ea3)
  store %struct.Memory* %call_420ea3, %struct.Memory** %MEMORY

  ; Code: jne .L_420ed7	 RIP: 420eab	 Bytes: 6
  %loadMem_420eab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420eab = call %struct.Memory* @routine_jne_.L_420ed7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420eab, i8* %BRANCH_TAKEN, i64 44, i64 6, i64 6)
  store %struct.Memory* %call_420eab, %struct.Memory** %MEMORY

  %loadBr_420eab = load i8, i8* %BRANCH_TAKEN
  %cmpBr_420eab = icmp eq i8 %loadBr_420eab, 1
  br i1 %cmpBr_420eab, label %block_.L_420ed7, label %block_420eb1

block_420eb1:
  ; Code: movq $0xaaf6b0, %rax	 RIP: 420eb1	 Bytes: 10
  %loadMem_420eb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420eb1 = call %struct.Memory* @routine_movq__0xaaf6b0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420eb1)
  store %struct.Memory* %call_420eb1, %struct.Memory** %MEMORY

  ; Code: xorl %esi, %esi	 RIP: 420ebb	 Bytes: 2
  %loadMem_420ebb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420ebb = call %struct.Memory* @routine_xorl__esi___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420ebb)
  store %struct.Memory* %call_420ebb, %struct.Memory** %MEMORY

  ; Code: movl $0x640, %ecx	 RIP: 420ebd	 Bytes: 5
  %loadMem_420ebd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420ebd = call %struct.Memory* @routine_movl__0x640___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420ebd)
  store %struct.Memory* %call_420ebd, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 420ec2	 Bytes: 2
  %loadMem_420ec2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420ec2 = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420ec2)
  store %struct.Memory* %call_420ec2, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 420ec4	 Bytes: 3
  %loadMem_420ec4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420ec4 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420ec4)
  store %struct.Memory* %call_420ec4, %struct.Memory** %MEMORY

  ; Code: callq .memset_plt	 RIP: 420ec7	 Bytes: 5
  %loadMem1_420ec7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_420ec7 = call %struct.Memory* @routine_callq_.memset_plt(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_420ec7, i64 -130647, i64 5, i64 5)
  store %struct.Memory* %call1_420ec7, %struct.Memory** %MEMORY

  %loadMem2_420ec7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_420ec7 = load i64, i64* %3
  %call2_420ec7 = call %struct.Memory* @ext_memset(%struct.State* %0, i64  %loadPC_420ec7, %struct.Memory* %loadMem2_420ec7)
  store %struct.Memory* %call2_420ec7, %struct.Memory** %MEMORY

  ; Code: movl $0x1, 0xaaf6a0	 RIP: 420ecc	 Bytes: 11
  %loadMem_420ecc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420ecc = call %struct.Memory* @routine_movl__0x1__0xaaf6a0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420ecc)
  store %struct.Memory* %call_420ecc, %struct.Memory** %MEMORY

  ; Code: .L_420ed7:	 RIP: 420ed7	 Bytes: 0
  br label %block_.L_420ed7
block_.L_420ed7:

  ; Code: movl $0x15, -0x1c(%rbp)	 RIP: 420ed7	 Bytes: 7
  %loadMem_420ed7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420ed7 = call %struct.Memory* @routine_movl__0x15__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420ed7)
  store %struct.Memory* %call_420ed7, %struct.Memory** %MEMORY

  ; Code: .L_420ede:	 RIP: 420ede	 Bytes: 0
  br label %block_.L_420ede
block_.L_420ede:

  ; Code: cmpl $0x190, -0x1c(%rbp)	 RIP: 420ede	 Bytes: 7
  %loadMem_420ede = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420ede = call %struct.Memory* @routine_cmpl__0x190__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420ede)
  store %struct.Memory* %call_420ede, %struct.Memory** %MEMORY

  ; Code: jge .L_420f55	 RIP: 420ee5	 Bytes: 6
  %loadMem_420ee5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420ee5 = call %struct.Memory* @routine_jge_.L_420f55(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420ee5, i8* %BRANCH_TAKEN, i64 112, i64 6, i64 6)
  store %struct.Memory* %call_420ee5, %struct.Memory** %MEMORY

  %loadBr_420ee5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_420ee5 = icmp eq i8 %loadBr_420ee5, 1
  br i1 %cmpBr_420ee5, label %block_.L_420f55, label %block_420eeb

block_420eeb:
  ; Code: movslq -0x1c(%rbp), %rax	 RIP: 420eeb	 Bytes: 4
  %loadMem_420eeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420eeb = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420eeb)
  store %struct.Memory* %call_420eeb, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rax,1), %ecx	 RIP: 420eef	 Bytes: 8
  %loadMem_420eef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420eef = call %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420eef)
  store %struct.Memory* %call_420eef, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %ecx	 RIP: 420ef7	 Bytes: 3
  %loadMem_420ef7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420ef7 = call %struct.Memory* @routine_cmpl__0x3___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420ef7)
  store %struct.Memory* %call_420ef7, %struct.Memory** %MEMORY

  ; Code: je .L_420f42	 RIP: 420efa	 Bytes: 6
  %loadMem_420efa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420efa = call %struct.Memory* @routine_je_.L_420f42(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420efa, i8* %BRANCH_TAKEN, i64 72, i64 6, i64 6)
  store %struct.Memory* %call_420efa, %struct.Memory** %MEMORY

  %loadBr_420efa = load i8, i8* %BRANCH_TAKEN
  %cmpBr_420efa = icmp eq i8 %loadBr_420efa, 1
  br i1 %cmpBr_420efa, label %block_.L_420f42, label %block_420f00

block_420f00:
  ; Code: movq -0x8(%rbp), %rax	 RIP: 420f00	 Bytes: 4
  %loadMem_420f00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420f00 = call %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420f00)
  store %struct.Memory* %call_420f00, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rcx	 RIP: 420f04	 Bytes: 4
  %loadMem_420f04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420f04 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420f04)
  store %struct.Memory* %call_420f04, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 420f08	 Bytes: 4
  %loadMem_420f08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420f08 = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420f08)
  store %struct.Memory* %call_420f08, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %edx	 RIP: 420f0c	 Bytes: 3
  %loadMem_420f0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420f0c = call %struct.Memory* @routine_cmpl__0x0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420f0c)
  store %struct.Memory* %call_420f0c, %struct.Memory** %MEMORY

  ; Code: je .L_420f42	 RIP: 420f0f	 Bytes: 6
  %loadMem_420f0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420f0f = call %struct.Memory* @routine_je_.L_420f42(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420f0f, i8* %BRANCH_TAKEN, i64 51, i64 6, i64 6)
  store %struct.Memory* %call_420f0f, %struct.Memory** %MEMORY

  %loadBr_420f0f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_420f0f = icmp eq i8 %loadBr_420f0f, 1
  br i1 %cmpBr_420f0f, label %block_.L_420f42, label %block_420f15

block_420f15:
  ; Code: movl -0x1c(%rbp), %eax	 RIP: 420f15	 Bytes: 3
  %loadMem_420f15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420f15 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420f15)
  store %struct.Memory* %call_420f15, %struct.Memory** %MEMORY

  ; Code: movl -0x5d8(%rbp), %ecx	 RIP: 420f18	 Bytes: 6
  %loadMem_420f18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420f18 = call %struct.Memory* @routine_movl_MINUS0x5d8__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420f18)
  store %struct.Memory* %call_420f18, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 420f1e	 Bytes: 2
  %loadMem_420f1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420f1e = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420f1e)
  store %struct.Memory* %call_420f1e, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 420f20	 Bytes: 3
  %loadMem_420f20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420f20 = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420f20)
  store %struct.Memory* %call_420f20, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x5d8(%rbp)	 RIP: 420f23	 Bytes: 6
  %loadMem_420f23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420f23 = call %struct.Memory* @routine_movl__edx__MINUS0x5d8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420f23)
  store %struct.Memory* %call_420f23, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 420f29	 Bytes: 3
  %loadMem_420f29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420f29 = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420f29)
  store %struct.Memory* %call_420f29, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x5d0(%rbp,%rsi,4)	 RIP: 420f2c	 Bytes: 7
  %loadMem_420f2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420f2c = call %struct.Memory* @routine_movl__eax__MINUS0x5d0__rbp__rsi_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420f2c)
  store %struct.Memory* %call_420f2c, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rsi	 RIP: 420f33	 Bytes: 4
  %loadMem_420f33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420f33 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420f33)
  store %struct.Memory* %call_420f33, %struct.Memory** %MEMORY

  ; Code: movl $0x1, 0xaaf6b0(,%rsi,4)	 RIP: 420f37	 Bytes: 11
  %loadMem_420f37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420f37 = call %struct.Memory* @routine_movl__0x1__0xaaf6b0___rsi_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420f37)
  store %struct.Memory* %call_420f37, %struct.Memory** %MEMORY

  ; Code: .L_420f42:	 RIP: 420f42	 Bytes: 0
  br label %block_.L_420f42
block_.L_420f42:

  ; Code: jmpq .L_420f47	 RIP: 420f42	 Bytes: 5
  %loadMem_420f42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420f42 = call %struct.Memory* @routine_jmpq_.L_420f47(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420f42, i64 5, i64 5)
  store %struct.Memory* %call_420f42, %struct.Memory** %MEMORY

  br label %block_.L_420f47

  ; Code: .L_420f47:	 RIP: 420f47	 Bytes: 0
block_.L_420f47:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 420f47	 Bytes: 3
  %loadMem_420f47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420f47 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420f47)
  store %struct.Memory* %call_420f47, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 420f4a	 Bytes: 3
  %loadMem_420f4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420f4a = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420f4a)
  store %struct.Memory* %call_420f4a, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x1c(%rbp)	 RIP: 420f4d	 Bytes: 3
  %loadMem_420f4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420f4d = call %struct.Memory* @routine_movl__eax__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420f4d)
  store %struct.Memory* %call_420f4d, %struct.Memory** %MEMORY

  ; Code: jmpq .L_420ede	 RIP: 420f50	 Bytes: 5
  %loadMem_420f50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420f50 = call %struct.Memory* @routine_jmpq_.L_420ede(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420f50, i64 -114, i64 5)
  store %struct.Memory* %call_420f50, %struct.Memory** %MEMORY

  br label %block_.L_420ede

  ; Code: .L_420f55:	 RIP: 420f55	 Bytes: 0
block_.L_420f55:

  ; Code: movl $0x0, -0x5e0(%rbp)	 RIP: 420f55	 Bytes: 10
  %loadMem_420f55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420f55 = call %struct.Memory* @routine_movl__0x0__MINUS0x5e0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420f55)
  store %struct.Memory* %call_420f55, %struct.Memory** %MEMORY

  ; Code: .L_420f5f:	 RIP: 420f5f	 Bytes: 0
  br label %block_.L_420f5f
block_.L_420f5f:

  ; Code: cmpl $0x4, -0x5e0(%rbp)	 RIP: 420f5f	 Bytes: 7
  %loadMem_420f5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420f5f = call %struct.Memory* @routine_cmpl__0x4__MINUS0x5e0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420f5f)
  store %struct.Memory* %call_420f5f, %struct.Memory** %MEMORY

  ; Code: jg .L_421b00	 RIP: 420f66	 Bytes: 6
  %loadMem_420f66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420f66 = call %struct.Memory* @routine_jg_.L_421b00(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420f66, i8* %BRANCH_TAKEN, i64 2970, i64 6, i64 6)
  store %struct.Memory* %call_420f66, %struct.Memory** %MEMORY

  %loadBr_420f66 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_420f66 = icmp eq i8 %loadBr_420f66, 1
  br i1 %cmpBr_420f66, label %block_.L_421b00, label %block_420f6c

block_420f6c:
  ; Code: movl -0x5d8(%rbp), %eax	 RIP: 420f6c	 Bytes: 6
  %loadMem_420f6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420f6c = call %struct.Memory* @routine_movl_MINUS0x5d8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420f6c)
  store %struct.Memory* %call_420f6c, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x5e8(%rbp)	 RIP: 420f72	 Bytes: 6
  %loadMem_420f72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420f72 = call %struct.Memory* @routine_movl__eax__MINUS0x5e8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420f72)
  store %struct.Memory* %call_420f72, %struct.Memory** %MEMORY

  ; Code: .L_420f78:	 RIP: 420f78	 Bytes: 0
  br label %block_.L_420f78
block_.L_420f78:

  ; Code: movl -0x5d4(%rbp), %eax	 RIP: 420f78	 Bytes: 6
  %loadMem_420f78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420f78 = call %struct.Memory* @routine_movl_MINUS0x5d4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420f78)
  store %struct.Memory* %call_420f78, %struct.Memory** %MEMORY

  ; Code: cmpl -0x5e8(%rbp), %eax	 RIP: 420f7e	 Bytes: 6
  %loadMem_420f7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420f7e = call %struct.Memory* @routine_cmpl_MINUS0x5e8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420f7e)
  store %struct.Memory* %call_420f7e, %struct.Memory** %MEMORY

  ; Code: jge .L_421ae7	 RIP: 420f84	 Bytes: 6
  %loadMem_420f84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420f84 = call %struct.Memory* @routine_jge_.L_421ae7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420f84, i8* %BRANCH_TAKEN, i64 2915, i64 6, i64 6)
  store %struct.Memory* %call_420f84, %struct.Memory** %MEMORY

  %loadBr_420f84 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_420f84 = icmp eq i8 %loadBr_420f84, 1
  br i1 %cmpBr_420f84, label %block_.L_421ae7, label %block_420f8a

block_420f8a:
  ; Code: movslq -0x5d4(%rbp), %rax	 RIP: 420f8a	 Bytes: 7
  %loadMem_420f8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420f8a = call %struct.Memory* @routine_movslq_MINUS0x5d4__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420f8a)
  store %struct.Memory* %call_420f8a, %struct.Memory** %MEMORY

  ; Code: movl -0x5d0(%rbp,%rax,4), %ecx	 RIP: 420f91	 Bytes: 7
  %loadMem_420f91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420f91 = call %struct.Memory* @routine_movl_MINUS0x5d0__rbp__rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420f91)
  store %struct.Memory* %call_420f91, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x1c(%rbp)	 RIP: 420f98	 Bytes: 3
  %loadMem_420f98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420f98 = call %struct.Memory* @routine_movl__ecx__MINUS0x1c__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420f98)
  store %struct.Memory* %call_420f98, %struct.Memory** %MEMORY

  ; Code: movl -0x5d4(%rbp), %ecx	 RIP: 420f9b	 Bytes: 6
  %loadMem_420f9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420f9b = call %struct.Memory* @routine_movl_MINUS0x5d4__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420f9b)
  store %struct.Memory* %call_420f9b, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 420fa1	 Bytes: 3
  %loadMem_420fa1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420fa1 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420fa1)
  store %struct.Memory* %call_420fa1, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x5d4(%rbp)	 RIP: 420fa4	 Bytes: 6
  %loadMem_420fa4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420fa4 = call %struct.Memory* @routine_movl__ecx__MINUS0x5d4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420fa4)
  store %struct.Memory* %call_420fa4, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, -0xc(%rbp)	 RIP: 420faa	 Bytes: 4
  %loadMem_420faa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420faa = call %struct.Memory* @routine_cmpl__0x1__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420faa)
  store %struct.Memory* %call_420faa, %struct.Memory** %MEMORY

  ; Code: jne .L_420ffb	 RIP: 420fae	 Bytes: 6
  %loadMem_420fae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420fae = call %struct.Memory* @routine_jne_.L_420ffb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420fae, i8* %BRANCH_TAKEN, i64 77, i64 6, i64 6)
  store %struct.Memory* %call_420fae, %struct.Memory** %MEMORY

  %loadBr_420fae = load i8, i8* %BRANCH_TAKEN
  %cmpBr_420fae = icmp eq i8 %loadBr_420fae, 1
  br i1 %cmpBr_420fae, label %block_.L_420ffb, label %block_420fb4

block_420fb4:
  ; Code: movq $0xb9a0a0, %rax	 RIP: 420fb4	 Bytes: 10
  %loadMem_420fb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420fb4 = call %struct.Memory* @routine_movq__0xb9a0a0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420fb4)
  store %struct.Memory* %call_420fb4, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rcx	 RIP: 420fbe	 Bytes: 4
  %loadMem_420fbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420fbe = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420fbe)
  store %struct.Memory* %call_420fbe, %struct.Memory** %MEMORY

  ; Code: imulq $0x24, %rcx, %rcx	 RIP: 420fc2	 Bytes: 4
  %loadMem_420fc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420fc2 = call %struct.Memory* @routine_imulq__0x24___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420fc2)
  store %struct.Memory* %call_420fc2, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 420fc6	 Bytes: 3
  %loadMem_420fc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420fc6 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420fc6)
  store %struct.Memory* %call_420fc6, %struct.Memory** %MEMORY

  ; Code: movsbl 0x1d(%rax), %edx	 RIP: 420fc9	 Bytes: 4
  %loadMem_420fc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420fc9 = call %struct.Memory* @routine_movsbl_0x1d__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420fc9)
  store %struct.Memory* %call_420fc9, %struct.Memory** %MEMORY

  ; Code: andl $0x4, %edx	 RIP: 420fcd	 Bytes: 3
  %loadMem_420fcd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420fcd = call %struct.Memory* @routine_andl__0x4___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420fcd)
  store %struct.Memory* %call_420fcd, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %edx	 RIP: 420fd0	 Bytes: 3
  %loadMem_420fd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420fd0 = call %struct.Memory* @routine_cmpl__0x0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420fd0)
  store %struct.Memory* %call_420fd0, %struct.Memory** %MEMORY

  ; Code: jne .L_42104c	 RIP: 420fd3	 Bytes: 6
  %loadMem_420fd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420fd3 = call %struct.Memory* @routine_jne_.L_42104c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420fd3, i8* %BRANCH_TAKEN, i64 121, i64 6, i64 6)
  store %struct.Memory* %call_420fd3, %struct.Memory** %MEMORY

  %loadBr_420fd3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_420fd3 = icmp eq i8 %loadBr_420fd3, 1
  br i1 %cmpBr_420fd3, label %block_.L_42104c, label %block_420fd9

block_420fd9:
  ; Code: movq $0xb9a0a0, %rax	 RIP: 420fd9	 Bytes: 10
  %loadMem_420fd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420fd9 = call %struct.Memory* @routine_movq__0xb9a0a0___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420fd9)
  store %struct.Memory* %call_420fd9, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rcx	 RIP: 420fe3	 Bytes: 4
  %loadMem_420fe3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420fe3 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420fe3)
  store %struct.Memory* %call_420fe3, %struct.Memory** %MEMORY

  ; Code: imulq $0x24, %rcx, %rcx	 RIP: 420fe7	 Bytes: 4
  %loadMem_420fe7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420fe7 = call %struct.Memory* @routine_imulq__0x24___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420fe7)
  store %struct.Memory* %call_420fe7, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 420feb	 Bytes: 3
  %loadMem_420feb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420feb = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420feb)
  store %struct.Memory* %call_420feb, %struct.Memory** %MEMORY

  ; Code: movsbl 0x20(%rax), %edx	 RIP: 420fee	 Bytes: 4
  %loadMem_420fee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420fee = call %struct.Memory* @routine_movsbl_0x20__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420fee)
  store %struct.Memory* %call_420fee, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, %edx	 RIP: 420ff2	 Bytes: 3
  %loadMem_420ff2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420ff2 = call %struct.Memory* @routine_cmpl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420ff2)
  store %struct.Memory* %call_420ff2, %struct.Memory** %MEMORY

  ; Code: je .L_42104c	 RIP: 420ff5	 Bytes: 6
  %loadMem_420ff5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420ff5 = call %struct.Memory* @routine_je_.L_42104c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420ff5, i8* %BRANCH_TAKEN, i64 87, i64 6, i64 6)
  store %struct.Memory* %call_420ff5, %struct.Memory** %MEMORY

  %loadBr_420ff5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_420ff5 = icmp eq i8 %loadBr_420ff5, 1
  br i1 %cmpBr_420ff5, label %block_.L_42104c, label %block_.L_420ffb

  ; Code: .L_420ffb:	 RIP: 420ffb	 Bytes: 0
block_.L_420ffb:

  ; Code: cmpl $0x2, -0xc(%rbp)	 RIP: 420ffb	 Bytes: 4
  %loadMem_420ffb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420ffb = call %struct.Memory* @routine_cmpl__0x2__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420ffb)
  store %struct.Memory* %call_420ffb, %struct.Memory** %MEMORY

  ; Code: jne .L_421051	 RIP: 420fff	 Bytes: 6
  %loadMem_420fff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_420fff = call %struct.Memory* @routine_jne_.L_421051(%struct.State* %0, i64  0, %struct.Memory* %loadMem_420fff, i8* %BRANCH_TAKEN, i64 82, i64 6, i64 6)
  store %struct.Memory* %call_420fff, %struct.Memory** %MEMORY

  %loadBr_420fff = load i8, i8* %BRANCH_TAKEN
  %cmpBr_420fff = icmp eq i8 %loadBr_420fff, 1
  br i1 %cmpBr_420fff, label %block_.L_421051, label %block_421005

block_421005:
  ; Code: movq $0xb01180, %rax	 RIP: 421005	 Bytes: 10
  %loadMem_421005 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421005 = call %struct.Memory* @routine_movq__0xb01180___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421005)
  store %struct.Memory* %call_421005, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rcx	 RIP: 42100f	 Bytes: 4
  %loadMem_42100f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42100f = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42100f)
  store %struct.Memory* %call_42100f, %struct.Memory** %MEMORY

  ; Code: imulq $0x24, %rcx, %rcx	 RIP: 421013	 Bytes: 4
  %loadMem_421013 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421013 = call %struct.Memory* @routine_imulq__0x24___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421013)
  store %struct.Memory* %call_421013, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 421017	 Bytes: 3
  %loadMem_421017 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421017 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421017)
  store %struct.Memory* %call_421017, %struct.Memory** %MEMORY

  ; Code: movsbl 0x1d(%rax), %edx	 RIP: 42101a	 Bytes: 4
  %loadMem_42101a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42101a = call %struct.Memory* @routine_movsbl_0x1d__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42101a)
  store %struct.Memory* %call_42101a, %struct.Memory** %MEMORY

  ; Code: andl $0x4, %edx	 RIP: 42101e	 Bytes: 3
  %loadMem_42101e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42101e = call %struct.Memory* @routine_andl__0x4___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42101e)
  store %struct.Memory* %call_42101e, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %edx	 RIP: 421021	 Bytes: 3
  %loadMem_421021 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421021 = call %struct.Memory* @routine_cmpl__0x0___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421021)
  store %struct.Memory* %call_421021, %struct.Memory** %MEMORY

  ; Code: jne .L_42104c	 RIP: 421024	 Bytes: 6
  %loadMem_421024 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421024 = call %struct.Memory* @routine_jne_.L_42104c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421024, i8* %BRANCH_TAKEN, i64 40, i64 6, i64 6)
  store %struct.Memory* %call_421024, %struct.Memory** %MEMORY

  %loadBr_421024 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421024 = icmp eq i8 %loadBr_421024, 1
  br i1 %cmpBr_421024, label %block_.L_42104c, label %block_42102a

block_42102a:
  ; Code: movq $0xb01180, %rax	 RIP: 42102a	 Bytes: 10
  %loadMem_42102a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42102a = call %struct.Memory* @routine_movq__0xb01180___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42102a)
  store %struct.Memory* %call_42102a, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rcx	 RIP: 421034	 Bytes: 4
  %loadMem_421034 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421034 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421034)
  store %struct.Memory* %call_421034, %struct.Memory** %MEMORY

  ; Code: imulq $0x24, %rcx, %rcx	 RIP: 421038	 Bytes: 4
  %loadMem_421038 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421038 = call %struct.Memory* @routine_imulq__0x24___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421038)
  store %struct.Memory* %call_421038, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 42103c	 Bytes: 3
  %loadMem_42103c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42103c = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42103c)
  store %struct.Memory* %call_42103c, %struct.Memory** %MEMORY

  ; Code: movsbl 0x20(%rax), %edx	 RIP: 42103f	 Bytes: 4
  %loadMem_42103f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42103f = call %struct.Memory* @routine_movsbl_0x20__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42103f)
  store %struct.Memory* %call_42103f, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, %edx	 RIP: 421043	 Bytes: 3
  %loadMem_421043 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421043 = call %struct.Memory* @routine_cmpl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421043)
  store %struct.Memory* %call_421043, %struct.Memory** %MEMORY

  ; Code: jne .L_421051	 RIP: 421046	 Bytes: 6
  %loadMem_421046 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421046 = call %struct.Memory* @routine_jne_.L_421051(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421046, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_421046, %struct.Memory** %MEMORY

  %loadBr_421046 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421046 = icmp eq i8 %loadBr_421046, 1
  br i1 %cmpBr_421046, label %block_.L_421051, label %block_.L_42104c

  ; Code: .L_42104c:	 RIP: 42104c	 Bytes: 0
block_.L_42104c:

  ; Code: jmpq .L_420f78	 RIP: 42104c	 Bytes: 5
  %loadMem_42104c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42104c = call %struct.Memory* @routine_jmpq_.L_420f78(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42104c, i64 -212, i64 5)
  store %struct.Memory* %call_42104c, %struct.Memory** %MEMORY

  br label %block_.L_420f78

  ; Code: .L_421051:	 RIP: 421051	 Bytes: 0
block_.L_421051:

  ; Code: cmpl $0x4, -0x5e0(%rbp)	 RIP: 421051	 Bytes: 7
  %loadMem_421051 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421051 = call %struct.Memory* @routine_cmpl__0x4__MINUS0x5e0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421051)
  store %struct.Memory* %call_421051, %struct.Memory** %MEMORY

  ; Code: jne .L_42107b	 RIP: 421058	 Bytes: 6
  %loadMem_421058 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421058 = call %struct.Memory* @routine_jne_.L_42107b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421058, i8* %BRANCH_TAKEN, i64 35, i64 6, i64 6)
  store %struct.Memory* %call_421058, %struct.Memory** %MEMORY

  %loadBr_421058 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421058 = icmp eq i8 %loadBr_421058, 1
  br i1 %cmpBr_421058, label %block_.L_42107b, label %block_42105e

block_42105e:
  ; Code: movq -0x18(%rbp), %rax	 RIP: 42105e	 Bytes: 4
  %loadMem_42105e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42105e = call %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42105e)
  store %struct.Memory* %call_42105e, %struct.Memory** %MEMORY

  ; Code: movslq -0x1c(%rbp), %rcx	 RIP: 421062	 Bytes: 4
  %loadMem_421062 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421062 = call %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421062)
  store %struct.Memory* %call_421062, %struct.Memory** %MEMORY

  ; Code: movsbl (%rax,%rcx,1), %edx	 RIP: 421066	 Bytes: 4
  %loadMem_421066 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421066 = call %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421066)
  store %struct.Memory* %call_421066, %struct.Memory** %MEMORY

  ; Code: addl -0x5e4(%rbp), %edx	 RIP: 42106a	 Bytes: 6
  %loadMem_42106a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42106a = call %struct.Memory* @routine_addl_MINUS0x5e4__rbp____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42106a)
  store %struct.Memory* %call_42106a, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x5e4(%rbp)	 RIP: 421070	 Bytes: 6
  %loadMem_421070 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421070 = call %struct.Memory* @routine_movl__edx__MINUS0x5e4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421070)
  store %struct.Memory* %call_421070, %struct.Memory** %MEMORY

  ; Code: jmpq .L_421ae2	 RIP: 421076	 Bytes: 5
  %loadMem_421076 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421076 = call %struct.Memory* @routine_jmpq_.L_421ae2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421076, i64 2668, i64 5)
  store %struct.Memory* %call_421076, %struct.Memory** %MEMORY

  br label %block_.L_421ae2

  ; Code: .L_42107b:	 RIP: 42107b	 Bytes: 0
block_.L_42107b:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 42107b	 Bytes: 3
  %loadMem_42107b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42107b = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42107b)
  store %struct.Memory* %call_42107b, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 42107e	 Bytes: 3
  %loadMem_42107e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42107e = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42107e)
  store %struct.Memory* %call_42107e, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 421081	 Bytes: 3
  %loadMem_421081 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421081 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421081)
  store %struct.Memory* %call_421081, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 421084	 Bytes: 8
  %loadMem_421084 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421084 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421084)
  store %struct.Memory* %call_421084, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %eax	 RIP: 42108c	 Bytes: 3
  %loadMem_42108c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42108c = call %struct.Memory* @routine_cmpl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42108c)
  store %struct.Memory* %call_42108c, %struct.Memory** %MEMORY

  ; Code: je .L_4211c6	 RIP: 42108f	 Bytes: 6
  %loadMem_42108f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42108f = call %struct.Memory* @routine_je_.L_4211c6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42108f, i8* %BRANCH_TAKEN, i64 311, i64 6, i64 6)
  store %struct.Memory* %call_42108f, %struct.Memory** %MEMORY

  %loadBr_42108f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42108f = icmp eq i8 %loadBr_42108f, 1
  br i1 %cmpBr_42108f, label %block_.L_4211c6, label %block_421095

block_421095:
  ; Code: movl -0x1c(%rbp), %eax	 RIP: 421095	 Bytes: 3
  %loadMem_421095 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421095 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421095)
  store %struct.Memory* %call_421095, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 421098	 Bytes: 3
  %loadMem_421098 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421098 = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421098)
  store %struct.Memory* %call_421098, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 42109b	 Bytes: 3
  %loadMem_42109b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42109b = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42109b)
  store %struct.Memory* %call_42109b, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0xaaf6b0(,%rcx,4)	 RIP: 42109e	 Bytes: 8
  %loadMem_42109e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42109e = call %struct.Memory* @routine_cmpl__0x0__0xaaf6b0___rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42109e)
  store %struct.Memory* %call_42109e, %struct.Memory** %MEMORY

  ; Code: jne .L_4211c6	 RIP: 4210a6	 Bytes: 6
  %loadMem_4210a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4210a6 = call %struct.Memory* @routine_jne_.L_4211c6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4210a6, i8* %BRANCH_TAKEN, i64 288, i64 6, i64 6)
  store %struct.Memory* %call_4210a6, %struct.Memory** %MEMORY

  %loadBr_4210a6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4210a6 = icmp eq i8 %loadBr_4210a6, 1
  br i1 %cmpBr_4210a6, label %block_.L_4211c6, label %block_4210ac

block_4210ac:
  ; Code: movl -0x1c(%rbp), %eax	 RIP: 4210ac	 Bytes: 3
  %loadMem_4210ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4210ac = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4210ac)
  store %struct.Memory* %call_4210ac, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 4210af	 Bytes: 3
  %loadMem_4210af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4210af = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4210af)
  store %struct.Memory* %call_4210af, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 4210b2	 Bytes: 3
  %loadMem_4210b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4210b2 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4210b2)
  store %struct.Memory* %call_4210b2, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 4210b5	 Bytes: 8
  %loadMem_4210b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4210b5 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4210b5)
  store %struct.Memory* %call_4210b5, %struct.Memory** %MEMORY

  ; Code: cmpl -0xc(%rbp), %eax	 RIP: 4210bd	 Bytes: 3
  %loadMem_4210bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4210bd = call %struct.Memory* @routine_cmpl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4210bd)
  store %struct.Memory* %call_4210bd, %struct.Memory** %MEMORY

  ; Code: je .L_421191	 RIP: 4210c0	 Bytes: 6
  %loadMem_4210c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4210c0 = call %struct.Memory* @routine_je_.L_421191(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4210c0, i8* %BRANCH_TAKEN, i64 209, i64 6, i64 6)
  store %struct.Memory* %call_4210c0, %struct.Memory** %MEMORY

  %loadBr_4210c0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4210c0 = icmp eq i8 %loadBr_4210c0, 1
  br i1 %cmpBr_4210c0, label %block_.L_421191, label %block_4210c6

block_4210c6:
  ; Code: movl -0x1c(%rbp), %eax	 RIP: 4210c6	 Bytes: 3
  %loadMem_4210c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4210c6 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4210c6)
  store %struct.Memory* %call_4210c6, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 4210c9	 Bytes: 3
  %loadMem_4210c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4210c9 = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4210c9)
  store %struct.Memory* %call_4210c9, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 4210cc	 Bytes: 3
  %loadMem_4210cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4210cc = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4210cc)
  store %struct.Memory* %call_4210cc, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 4210cf	 Bytes: 8
  %loadMem_4210cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4210cf = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4210cf)
  store %struct.Memory* %call_4210cf, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 4210d7	 Bytes: 3
  %loadMem_4210d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4210d7 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4210d7)
  store %struct.Memory* %call_4210d7, %struct.Memory** %MEMORY

  ; Code: jne .L_4211c6	 RIP: 4210da	 Bytes: 6
  %loadMem_4210da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4210da = call %struct.Memory* @routine_jne_.L_4211c6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4210da, i8* %BRANCH_TAKEN, i64 236, i64 6, i64 6)
  store %struct.Memory* %call_4210da, %struct.Memory** %MEMORY

  %loadBr_4210da = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4210da = icmp eq i8 %loadBr_4210da, 1
  br i1 %cmpBr_4210da, label %block_.L_4211c6, label %block_4210e0

block_4210e0:
  ; Code: movl -0x1c(%rbp), %eax	 RIP: 4210e0	 Bytes: 3
  %loadMem_4210e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4210e0 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4210e0)
  store %struct.Memory* %call_4210e0, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 4210e3	 Bytes: 3
  %loadMem_4210e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4210e3 = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4210e3)
  store %struct.Memory* %call_4210e3, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4210e6	 Bytes: 3
  %loadMem_4210e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4210e6 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4210e6)
  store %struct.Memory* %call_4210e6, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 4210e9	 Bytes: 3
  %loadMem_4210e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4210e9 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4210e9)
  store %struct.Memory* %call_4210e9, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 4210ec	 Bytes: 8
  %loadMem_4210ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4210ec = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4210ec)
  store %struct.Memory* %call_4210ec, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %eax	 RIP: 4210f4	 Bytes: 3
  %loadMem_4210f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4210f4 = call %struct.Memory* @routine_cmpl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4210f4)
  store %struct.Memory* %call_4210f4, %struct.Memory** %MEMORY

  ; Code: je .L_4211c6	 RIP: 4210f7	 Bytes: 6
  %loadMem_4210f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4210f7 = call %struct.Memory* @routine_je_.L_4211c6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4210f7, i8* %BRANCH_TAKEN, i64 207, i64 6, i64 6)
  store %struct.Memory* %call_4210f7, %struct.Memory** %MEMORY

  %loadBr_4210f7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4210f7 = icmp eq i8 %loadBr_4210f7, 1
  br i1 %cmpBr_4210f7, label %block_.L_4211c6, label %block_4210fd

block_4210fd:
  ; Code: movl -0x1c(%rbp), %eax	 RIP: 4210fd	 Bytes: 3
  %loadMem_4210fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4210fd = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4210fd)
  store %struct.Memory* %call_4210fd, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 421100	 Bytes: 3
  %loadMem_421100 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421100 = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421100)
  store %struct.Memory* %call_421100, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 421103	 Bytes: 3
  %loadMem_421103 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421103 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421103)
  store %struct.Memory* %call_421103, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 421106	 Bytes: 3
  %loadMem_421106 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421106 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421106)
  store %struct.Memory* %call_421106, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 421109	 Bytes: 8
  %loadMem_421109 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421109 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421109)
  store %struct.Memory* %call_421109, %struct.Memory** %MEMORY

  ; Code: cmpl -0x5dc(%rbp), %eax	 RIP: 421111	 Bytes: 6
  %loadMem_421111 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421111 = call %struct.Memory* @routine_cmpl_MINUS0x5dc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421111)
  store %struct.Memory* %call_421111, %struct.Memory** %MEMORY

  ; Code: je .L_4211c6	 RIP: 421117	 Bytes: 6
  %loadMem_421117 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421117 = call %struct.Memory* @routine_je_.L_4211c6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421117, i8* %BRANCH_TAKEN, i64 175, i64 6, i64 6)
  store %struct.Memory* %call_421117, %struct.Memory** %MEMORY

  %loadBr_421117 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421117 = icmp eq i8 %loadBr_421117, 1
  br i1 %cmpBr_421117, label %block_.L_4211c6, label %block_42111d

block_42111d:
  ; Code: movl -0x1c(%rbp), %eax	 RIP: 42111d	 Bytes: 3
  %loadMem_42111d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42111d = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42111d)
  store %struct.Memory* %call_42111d, %struct.Memory** %MEMORY

  ; Code: addl $0x28, %eax	 RIP: 421120	 Bytes: 3
  %loadMem_421120 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421120 = call %struct.Memory* @routine_addl__0x28___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421120)
  store %struct.Memory* %call_421120, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 421123	 Bytes: 3
  %loadMem_421123 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421123 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421123)
  store %struct.Memory* %call_421123, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 421126	 Bytes: 8
  %loadMem_421126 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421126 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421126)
  store %struct.Memory* %call_421126, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %eax	 RIP: 42112e	 Bytes: 3
  %loadMem_42112e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42112e = call %struct.Memory* @routine_cmpl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42112e)
  store %struct.Memory* %call_42112e, %struct.Memory** %MEMORY

  ; Code: je .L_4211c6	 RIP: 421131	 Bytes: 6
  %loadMem_421131 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421131 = call %struct.Memory* @routine_je_.L_4211c6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421131, i8* %BRANCH_TAKEN, i64 149, i64 6, i64 6)
  store %struct.Memory* %call_421131, %struct.Memory** %MEMORY

  %loadBr_421131 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421131 = icmp eq i8 %loadBr_421131, 1
  br i1 %cmpBr_421131, label %block_.L_4211c6, label %block_421137

block_421137:
  ; Code: movl -0x1c(%rbp), %eax	 RIP: 421137	 Bytes: 3
  %loadMem_421137 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421137 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421137)
  store %struct.Memory* %call_421137, %struct.Memory** %MEMORY

  ; Code: addl $0x28, %eax	 RIP: 42113a	 Bytes: 3
  %loadMem_42113a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42113a = call %struct.Memory* @routine_addl__0x28___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42113a)
  store %struct.Memory* %call_42113a, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 42113d	 Bytes: 3
  %loadMem_42113d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42113d = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42113d)
  store %struct.Memory* %call_42113d, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 421140	 Bytes: 8
  %loadMem_421140 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421140 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421140)
  store %struct.Memory* %call_421140, %struct.Memory** %MEMORY

  ; Code: cmpl -0x5dc(%rbp), %eax	 RIP: 421148	 Bytes: 6
  %loadMem_421148 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421148 = call %struct.Memory* @routine_cmpl_MINUS0x5dc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421148)
  store %struct.Memory* %call_421148, %struct.Memory** %MEMORY

  ; Code: je .L_4211c6	 RIP: 42114e	 Bytes: 6
  %loadMem_42114e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42114e = call %struct.Memory* @routine_je_.L_4211c6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42114e, i8* %BRANCH_TAKEN, i64 120, i64 6, i64 6)
  store %struct.Memory* %call_42114e, %struct.Memory** %MEMORY

  %loadBr_42114e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42114e = icmp eq i8 %loadBr_42114e, 1
  br i1 %cmpBr_42114e, label %block_.L_4211c6, label %block_421154

block_421154:
  ; Code: movl -0x1c(%rbp), %eax	 RIP: 421154	 Bytes: 3
  %loadMem_421154 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421154 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421154)
  store %struct.Memory* %call_421154, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 421157	 Bytes: 3
  %loadMem_421157 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421157 = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421157)
  store %struct.Memory* %call_421157, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 42115a	 Bytes: 3
  %loadMem_42115a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42115a = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42115a)
  store %struct.Memory* %call_42115a, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 42115d	 Bytes: 3
  %loadMem_42115d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42115d = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42115d)
  store %struct.Memory* %call_42115d, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 421160	 Bytes: 8
  %loadMem_421160 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421160 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421160)
  store %struct.Memory* %call_421160, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %eax	 RIP: 421168	 Bytes: 3
  %loadMem_421168 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421168 = call %struct.Memory* @routine_cmpl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421168)
  store %struct.Memory* %call_421168, %struct.Memory** %MEMORY

  ; Code: je .L_4211c6	 RIP: 42116b	 Bytes: 6
  %loadMem_42116b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42116b = call %struct.Memory* @routine_je_.L_4211c6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42116b, i8* %BRANCH_TAKEN, i64 91, i64 6, i64 6)
  store %struct.Memory* %call_42116b, %struct.Memory** %MEMORY

  %loadBr_42116b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42116b = icmp eq i8 %loadBr_42116b, 1
  br i1 %cmpBr_42116b, label %block_.L_4211c6, label %block_421171

block_421171:
  ; Code: movl -0x1c(%rbp), %eax	 RIP: 421171	 Bytes: 3
  %loadMem_421171 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421171 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421171)
  store %struct.Memory* %call_421171, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 421174	 Bytes: 3
  %loadMem_421174 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421174 = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421174)
  store %struct.Memory* %call_421174, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 421177	 Bytes: 3
  %loadMem_421177 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421177 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421177)
  store %struct.Memory* %call_421177, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 42117a	 Bytes: 3
  %loadMem_42117a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42117a = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42117a)
  store %struct.Memory* %call_42117a, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 42117d	 Bytes: 8
  %loadMem_42117d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42117d = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42117d)
  store %struct.Memory* %call_42117d, %struct.Memory** %MEMORY

  ; Code: cmpl -0x5dc(%rbp), %eax	 RIP: 421185	 Bytes: 6
  %loadMem_421185 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421185 = call %struct.Memory* @routine_cmpl_MINUS0x5dc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421185)
  store %struct.Memory* %call_421185, %struct.Memory** %MEMORY

  ; Code: je .L_4211c6	 RIP: 42118b	 Bytes: 6
  %loadMem_42118b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42118b = call %struct.Memory* @routine_je_.L_4211c6(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42118b, i8* %BRANCH_TAKEN, i64 59, i64 6, i64 6)
  store %struct.Memory* %call_42118b, %struct.Memory** %MEMORY

  %loadBr_42118b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42118b = icmp eq i8 %loadBr_42118b, 1
  br i1 %cmpBr_42118b, label %block_.L_4211c6, label %block_.L_421191

  ; Code: .L_421191:	 RIP: 421191	 Bytes: 0
block_.L_421191:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 421191	 Bytes: 3
  %loadMem_421191 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421191 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421191)
  store %struct.Memory* %call_421191, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 421194	 Bytes: 3
  %loadMem_421194 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421194 = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421194)
  store %struct.Memory* %call_421194, %struct.Memory** %MEMORY

  ; Code: movl -0x5d8(%rbp), %ecx	 RIP: 421197	 Bytes: 6
  %loadMem_421197 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421197 = call %struct.Memory* @routine_movl_MINUS0x5d8__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421197)
  store %struct.Memory* %call_421197, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 42119d	 Bytes: 2
  %loadMem_42119d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42119d = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42119d)
  store %struct.Memory* %call_42119d, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 42119f	 Bytes: 3
  %loadMem_42119f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42119f = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42119f)
  store %struct.Memory* %call_42119f, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x5d8(%rbp)	 RIP: 4211a2	 Bytes: 6
  %loadMem_4211a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4211a2 = call %struct.Memory* @routine_movl__edx__MINUS0x5d8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4211a2)
  store %struct.Memory* %call_4211a2, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 4211a8	 Bytes: 3
  %loadMem_4211a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4211a8 = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4211a8)
  store %struct.Memory* %call_4211a8, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x5d0(%rbp,%rsi,4)	 RIP: 4211ab	 Bytes: 7
  %loadMem_4211ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4211ab = call %struct.Memory* @routine_movl__eax__MINUS0x5d0__rbp__rsi_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4211ab)
  store %struct.Memory* %call_4211ab, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 4211b2	 Bytes: 3
  %loadMem_4211b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4211b2 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4211b2)
  store %struct.Memory* %call_4211b2, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 4211b5	 Bytes: 3
  %loadMem_4211b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4211b5 = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4211b5)
  store %struct.Memory* %call_4211b5, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rsi	 RIP: 4211b8	 Bytes: 3
  %loadMem_4211b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4211b8 = call %struct.Memory* @routine_movslq__eax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4211b8)
  store %struct.Memory* %call_4211b8, %struct.Memory** %MEMORY

  ; Code: movl $0x1, 0xaaf6b0(,%rsi,4)	 RIP: 4211bb	 Bytes: 11
  %loadMem_4211bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4211bb = call %struct.Memory* @routine_movl__0x1__0xaaf6b0___rsi_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4211bb)
  store %struct.Memory* %call_4211bb, %struct.Memory** %MEMORY

  ; Code: .L_4211c6:	 RIP: 4211c6	 Bytes: 0
  br label %block_.L_4211c6
block_.L_4211c6:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 4211c6	 Bytes: 3
  %loadMem_4211c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4211c6 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4211c6)
  store %struct.Memory* %call_4211c6, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 4211c9	 Bytes: 3
  %loadMem_4211c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4211c9 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4211c9)
  store %struct.Memory* %call_4211c9, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 4211cc	 Bytes: 3
  %loadMem_4211cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4211cc = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4211cc)
  store %struct.Memory* %call_4211cc, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 4211cf	 Bytes: 8
  %loadMem_4211cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4211cf = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4211cf)
  store %struct.Memory* %call_4211cf, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %eax	 RIP: 4211d7	 Bytes: 3
  %loadMem_4211d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4211d7 = call %struct.Memory* @routine_cmpl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4211d7)
  store %struct.Memory* %call_4211d7, %struct.Memory** %MEMORY

  ; Code: je .L_421311	 RIP: 4211da	 Bytes: 6
  %loadMem_4211da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4211da = call %struct.Memory* @routine_je_.L_421311(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4211da, i8* %BRANCH_TAKEN, i64 311, i64 6, i64 6)
  store %struct.Memory* %call_4211da, %struct.Memory** %MEMORY

  %loadBr_4211da = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4211da = icmp eq i8 %loadBr_4211da, 1
  br i1 %cmpBr_4211da, label %block_.L_421311, label %block_4211e0

block_4211e0:
  ; Code: movl -0x1c(%rbp), %eax	 RIP: 4211e0	 Bytes: 3
  %loadMem_4211e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4211e0 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4211e0)
  store %struct.Memory* %call_4211e0, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 4211e3	 Bytes: 3
  %loadMem_4211e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4211e3 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4211e3)
  store %struct.Memory* %call_4211e3, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 4211e6	 Bytes: 3
  %loadMem_4211e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4211e6 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4211e6)
  store %struct.Memory* %call_4211e6, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0xaaf6b0(,%rcx,4)	 RIP: 4211e9	 Bytes: 8
  %loadMem_4211e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4211e9 = call %struct.Memory* @routine_cmpl__0x0__0xaaf6b0___rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4211e9)
  store %struct.Memory* %call_4211e9, %struct.Memory** %MEMORY

  ; Code: jne .L_421311	 RIP: 4211f1	 Bytes: 6
  %loadMem_4211f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4211f1 = call %struct.Memory* @routine_jne_.L_421311(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4211f1, i8* %BRANCH_TAKEN, i64 288, i64 6, i64 6)
  store %struct.Memory* %call_4211f1, %struct.Memory** %MEMORY

  %loadBr_4211f1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4211f1 = icmp eq i8 %loadBr_4211f1, 1
  br i1 %cmpBr_4211f1, label %block_.L_421311, label %block_4211f7

block_4211f7:
  ; Code: movl -0x1c(%rbp), %eax	 RIP: 4211f7	 Bytes: 3
  %loadMem_4211f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4211f7 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4211f7)
  store %struct.Memory* %call_4211f7, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 4211fa	 Bytes: 3
  %loadMem_4211fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4211fa = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4211fa)
  store %struct.Memory* %call_4211fa, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 4211fd	 Bytes: 3
  %loadMem_4211fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4211fd = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4211fd)
  store %struct.Memory* %call_4211fd, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 421200	 Bytes: 8
  %loadMem_421200 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421200 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421200)
  store %struct.Memory* %call_421200, %struct.Memory** %MEMORY

  ; Code: cmpl -0xc(%rbp), %eax	 RIP: 421208	 Bytes: 3
  %loadMem_421208 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421208 = call %struct.Memory* @routine_cmpl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421208)
  store %struct.Memory* %call_421208, %struct.Memory** %MEMORY

  ; Code: je .L_4212dc	 RIP: 42120b	 Bytes: 6
  %loadMem_42120b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42120b = call %struct.Memory* @routine_je_.L_4212dc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42120b, i8* %BRANCH_TAKEN, i64 209, i64 6, i64 6)
  store %struct.Memory* %call_42120b, %struct.Memory** %MEMORY

  %loadBr_42120b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42120b = icmp eq i8 %loadBr_42120b, 1
  br i1 %cmpBr_42120b, label %block_.L_4212dc, label %block_421211

block_421211:
  ; Code: movl -0x1c(%rbp), %eax	 RIP: 421211	 Bytes: 3
  %loadMem_421211 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421211 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421211)
  store %struct.Memory* %call_421211, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 421214	 Bytes: 3
  %loadMem_421214 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421214 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421214)
  store %struct.Memory* %call_421214, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 421217	 Bytes: 3
  %loadMem_421217 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421217 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421217)
  store %struct.Memory* %call_421217, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 42121a	 Bytes: 8
  %loadMem_42121a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42121a = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42121a)
  store %struct.Memory* %call_42121a, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 421222	 Bytes: 3
  %loadMem_421222 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421222 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421222)
  store %struct.Memory* %call_421222, %struct.Memory** %MEMORY

  ; Code: jne .L_421311	 RIP: 421225	 Bytes: 6
  %loadMem_421225 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421225 = call %struct.Memory* @routine_jne_.L_421311(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421225, i8* %BRANCH_TAKEN, i64 236, i64 6, i64 6)
  store %struct.Memory* %call_421225, %struct.Memory** %MEMORY

  %loadBr_421225 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421225 = icmp eq i8 %loadBr_421225, 1
  br i1 %cmpBr_421225, label %block_.L_421311, label %block_42122b

block_42122b:
  ; Code: movl -0x1c(%rbp), %eax	 RIP: 42122b	 Bytes: 3
  %loadMem_42122b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42122b = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42122b)
  store %struct.Memory* %call_42122b, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 42122e	 Bytes: 3
  %loadMem_42122e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42122e = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42122e)
  store %struct.Memory* %call_42122e, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 421231	 Bytes: 3
  %loadMem_421231 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421231 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421231)
  store %struct.Memory* %call_421231, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 421234	 Bytes: 3
  %loadMem_421234 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421234 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421234)
  store %struct.Memory* %call_421234, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 421237	 Bytes: 8
  %loadMem_421237 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421237 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421237)
  store %struct.Memory* %call_421237, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %eax	 RIP: 42123f	 Bytes: 3
  %loadMem_42123f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42123f = call %struct.Memory* @routine_cmpl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42123f)
  store %struct.Memory* %call_42123f, %struct.Memory** %MEMORY

  ; Code: je .L_421311	 RIP: 421242	 Bytes: 6
  %loadMem_421242 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421242 = call %struct.Memory* @routine_je_.L_421311(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421242, i8* %BRANCH_TAKEN, i64 207, i64 6, i64 6)
  store %struct.Memory* %call_421242, %struct.Memory** %MEMORY

  %loadBr_421242 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421242 = icmp eq i8 %loadBr_421242, 1
  br i1 %cmpBr_421242, label %block_.L_421311, label %block_421248

block_421248:
  ; Code: movl -0x1c(%rbp), %eax	 RIP: 421248	 Bytes: 3
  %loadMem_421248 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421248 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421248)
  store %struct.Memory* %call_421248, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 42124b	 Bytes: 3
  %loadMem_42124b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42124b = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42124b)
  store %struct.Memory* %call_42124b, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 42124e	 Bytes: 3
  %loadMem_42124e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42124e = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42124e)
  store %struct.Memory* %call_42124e, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 421251	 Bytes: 3
  %loadMem_421251 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421251 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421251)
  store %struct.Memory* %call_421251, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 421254	 Bytes: 8
  %loadMem_421254 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421254 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421254)
  store %struct.Memory* %call_421254, %struct.Memory** %MEMORY

  ; Code: cmpl -0x5dc(%rbp), %eax	 RIP: 42125c	 Bytes: 6
  %loadMem_42125c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42125c = call %struct.Memory* @routine_cmpl_MINUS0x5dc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42125c)
  store %struct.Memory* %call_42125c, %struct.Memory** %MEMORY

  ; Code: je .L_421311	 RIP: 421262	 Bytes: 6
  %loadMem_421262 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421262 = call %struct.Memory* @routine_je_.L_421311(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421262, i8* %BRANCH_TAKEN, i64 175, i64 6, i64 6)
  store %struct.Memory* %call_421262, %struct.Memory** %MEMORY

  %loadBr_421262 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421262 = icmp eq i8 %loadBr_421262, 1
  br i1 %cmpBr_421262, label %block_.L_421311, label %block_421268

block_421268:
  ; Code: movl -0x1c(%rbp), %eax	 RIP: 421268	 Bytes: 3
  %loadMem_421268 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421268 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421268)
  store %struct.Memory* %call_421268, %struct.Memory** %MEMORY

  ; Code: subl $0x2, %eax	 RIP: 42126b	 Bytes: 3
  %loadMem_42126b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42126b = call %struct.Memory* @routine_subl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42126b)
  store %struct.Memory* %call_42126b, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 42126e	 Bytes: 3
  %loadMem_42126e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42126e = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42126e)
  store %struct.Memory* %call_42126e, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 421271	 Bytes: 8
  %loadMem_421271 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421271 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421271)
  store %struct.Memory* %call_421271, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %eax	 RIP: 421279	 Bytes: 3
  %loadMem_421279 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421279 = call %struct.Memory* @routine_cmpl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421279)
  store %struct.Memory* %call_421279, %struct.Memory** %MEMORY

  ; Code: je .L_421311	 RIP: 42127c	 Bytes: 6
  %loadMem_42127c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42127c = call %struct.Memory* @routine_je_.L_421311(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42127c, i8* %BRANCH_TAKEN, i64 149, i64 6, i64 6)
  store %struct.Memory* %call_42127c, %struct.Memory** %MEMORY

  %loadBr_42127c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42127c = icmp eq i8 %loadBr_42127c, 1
  br i1 %cmpBr_42127c, label %block_.L_421311, label %block_421282

block_421282:
  ; Code: movl -0x1c(%rbp), %eax	 RIP: 421282	 Bytes: 3
  %loadMem_421282 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421282 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421282)
  store %struct.Memory* %call_421282, %struct.Memory** %MEMORY

  ; Code: subl $0x2, %eax	 RIP: 421285	 Bytes: 3
  %loadMem_421285 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421285 = call %struct.Memory* @routine_subl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421285)
  store %struct.Memory* %call_421285, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 421288	 Bytes: 3
  %loadMem_421288 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421288 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421288)
  store %struct.Memory* %call_421288, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 42128b	 Bytes: 8
  %loadMem_42128b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42128b = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42128b)
  store %struct.Memory* %call_42128b, %struct.Memory** %MEMORY

  ; Code: cmpl -0x5dc(%rbp), %eax	 RIP: 421293	 Bytes: 6
  %loadMem_421293 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421293 = call %struct.Memory* @routine_cmpl_MINUS0x5dc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421293)
  store %struct.Memory* %call_421293, %struct.Memory** %MEMORY

  ; Code: je .L_421311	 RIP: 421299	 Bytes: 6
  %loadMem_421299 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421299 = call %struct.Memory* @routine_je_.L_421311(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421299, i8* %BRANCH_TAKEN, i64 120, i64 6, i64 6)
  store %struct.Memory* %call_421299, %struct.Memory** %MEMORY

  %loadBr_421299 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421299 = icmp eq i8 %loadBr_421299, 1
  br i1 %cmpBr_421299, label %block_.L_421311, label %block_42129f

block_42129f:
  ; Code: movl -0x1c(%rbp), %eax	 RIP: 42129f	 Bytes: 3
  %loadMem_42129f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42129f = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42129f)
  store %struct.Memory* %call_42129f, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 4212a2	 Bytes: 3
  %loadMem_4212a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4212a2 = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4212a2)
  store %struct.Memory* %call_4212a2, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 4212a5	 Bytes: 3
  %loadMem_4212a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4212a5 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4212a5)
  store %struct.Memory* %call_4212a5, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 4212a8	 Bytes: 3
  %loadMem_4212a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4212a8 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4212a8)
  store %struct.Memory* %call_4212a8, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 4212ab	 Bytes: 8
  %loadMem_4212ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4212ab = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4212ab)
  store %struct.Memory* %call_4212ab, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %eax	 RIP: 4212b3	 Bytes: 3
  %loadMem_4212b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4212b3 = call %struct.Memory* @routine_cmpl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4212b3)
  store %struct.Memory* %call_4212b3, %struct.Memory** %MEMORY

  ; Code: je .L_421311	 RIP: 4212b6	 Bytes: 6
  %loadMem_4212b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4212b6 = call %struct.Memory* @routine_je_.L_421311(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4212b6, i8* %BRANCH_TAKEN, i64 91, i64 6, i64 6)
  store %struct.Memory* %call_4212b6, %struct.Memory** %MEMORY

  %loadBr_4212b6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4212b6 = icmp eq i8 %loadBr_4212b6, 1
  br i1 %cmpBr_4212b6, label %block_.L_421311, label %block_4212bc

block_4212bc:
  ; Code: movl -0x1c(%rbp), %eax	 RIP: 4212bc	 Bytes: 3
  %loadMem_4212bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4212bc = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4212bc)
  store %struct.Memory* %call_4212bc, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 4212bf	 Bytes: 3
  %loadMem_4212bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4212bf = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4212bf)
  store %struct.Memory* %call_4212bf, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 4212c2	 Bytes: 3
  %loadMem_4212c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4212c2 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4212c2)
  store %struct.Memory* %call_4212c2, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 4212c5	 Bytes: 3
  %loadMem_4212c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4212c5 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4212c5)
  store %struct.Memory* %call_4212c5, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 4212c8	 Bytes: 8
  %loadMem_4212c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4212c8 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4212c8)
  store %struct.Memory* %call_4212c8, %struct.Memory** %MEMORY

  ; Code: cmpl -0x5dc(%rbp), %eax	 RIP: 4212d0	 Bytes: 6
  %loadMem_4212d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4212d0 = call %struct.Memory* @routine_cmpl_MINUS0x5dc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4212d0)
  store %struct.Memory* %call_4212d0, %struct.Memory** %MEMORY

  ; Code: je .L_421311	 RIP: 4212d6	 Bytes: 6
  %loadMem_4212d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4212d6 = call %struct.Memory* @routine_je_.L_421311(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4212d6, i8* %BRANCH_TAKEN, i64 59, i64 6, i64 6)
  store %struct.Memory* %call_4212d6, %struct.Memory** %MEMORY

  %loadBr_4212d6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4212d6 = icmp eq i8 %loadBr_4212d6, 1
  br i1 %cmpBr_4212d6, label %block_.L_421311, label %block_.L_4212dc

  ; Code: .L_4212dc:	 RIP: 4212dc	 Bytes: 0
block_.L_4212dc:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 4212dc	 Bytes: 3
  %loadMem_4212dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4212dc = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4212dc)
  store %struct.Memory* %call_4212dc, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 4212df	 Bytes: 3
  %loadMem_4212df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4212df = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4212df)
  store %struct.Memory* %call_4212df, %struct.Memory** %MEMORY

  ; Code: movl -0x5d8(%rbp), %ecx	 RIP: 4212e2	 Bytes: 6
  %loadMem_4212e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4212e2 = call %struct.Memory* @routine_movl_MINUS0x5d8__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4212e2)
  store %struct.Memory* %call_4212e2, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 4212e8	 Bytes: 2
  %loadMem_4212e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4212e8 = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4212e8)
  store %struct.Memory* %call_4212e8, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 4212ea	 Bytes: 3
  %loadMem_4212ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4212ea = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4212ea)
  store %struct.Memory* %call_4212ea, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x5d8(%rbp)	 RIP: 4212ed	 Bytes: 6
  %loadMem_4212ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4212ed = call %struct.Memory* @routine_movl__edx__MINUS0x5d8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4212ed)
  store %struct.Memory* %call_4212ed, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 4212f3	 Bytes: 3
  %loadMem_4212f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4212f3 = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4212f3)
  store %struct.Memory* %call_4212f3, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x5d0(%rbp,%rsi,4)	 RIP: 4212f6	 Bytes: 7
  %loadMem_4212f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4212f6 = call %struct.Memory* @routine_movl__eax__MINUS0x5d0__rbp__rsi_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4212f6)
  store %struct.Memory* %call_4212f6, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 4212fd	 Bytes: 3
  %loadMem_4212fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4212fd = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4212fd)
  store %struct.Memory* %call_4212fd, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 421300	 Bytes: 3
  %loadMem_421300 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421300 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421300)
  store %struct.Memory* %call_421300, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rsi	 RIP: 421303	 Bytes: 3
  %loadMem_421303 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421303 = call %struct.Memory* @routine_movslq__eax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421303)
  store %struct.Memory* %call_421303, %struct.Memory** %MEMORY

  ; Code: movl $0x1, 0xaaf6b0(,%rsi,4)	 RIP: 421306	 Bytes: 11
  %loadMem_421306 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421306 = call %struct.Memory* @routine_movl__0x1__0xaaf6b0___rsi_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421306)
  store %struct.Memory* %call_421306, %struct.Memory** %MEMORY

  ; Code: .L_421311:	 RIP: 421311	 Bytes: 0
  br label %block_.L_421311
block_.L_421311:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 421311	 Bytes: 3
  %loadMem_421311 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421311 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421311)
  store %struct.Memory* %call_421311, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 421314	 Bytes: 3
  %loadMem_421314 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421314 = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421314)
  store %struct.Memory* %call_421314, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 421317	 Bytes: 3
  %loadMem_421317 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421317 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421317)
  store %struct.Memory* %call_421317, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 42131a	 Bytes: 8
  %loadMem_42131a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42131a = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42131a)
  store %struct.Memory* %call_42131a, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %eax	 RIP: 421322	 Bytes: 3
  %loadMem_421322 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421322 = call %struct.Memory* @routine_cmpl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421322)
  store %struct.Memory* %call_421322, %struct.Memory** %MEMORY

  ; Code: je .L_42145c	 RIP: 421325	 Bytes: 6
  %loadMem_421325 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421325 = call %struct.Memory* @routine_je_.L_42145c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421325, i8* %BRANCH_TAKEN, i64 311, i64 6, i64 6)
  store %struct.Memory* %call_421325, %struct.Memory** %MEMORY

  %loadBr_421325 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421325 = icmp eq i8 %loadBr_421325, 1
  br i1 %cmpBr_421325, label %block_.L_42145c, label %block_42132b

block_42132b:
  ; Code: movl -0x1c(%rbp), %eax	 RIP: 42132b	 Bytes: 3
  %loadMem_42132b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42132b = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42132b)
  store %struct.Memory* %call_42132b, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 42132e	 Bytes: 3
  %loadMem_42132e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42132e = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42132e)
  store %struct.Memory* %call_42132e, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 421331	 Bytes: 3
  %loadMem_421331 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421331 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421331)
  store %struct.Memory* %call_421331, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0xaaf6b0(,%rcx,4)	 RIP: 421334	 Bytes: 8
  %loadMem_421334 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421334 = call %struct.Memory* @routine_cmpl__0x0__0xaaf6b0___rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421334)
  store %struct.Memory* %call_421334, %struct.Memory** %MEMORY

  ; Code: jne .L_42145c	 RIP: 42133c	 Bytes: 6
  %loadMem_42133c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42133c = call %struct.Memory* @routine_jne_.L_42145c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42133c, i8* %BRANCH_TAKEN, i64 288, i64 6, i64 6)
  store %struct.Memory* %call_42133c, %struct.Memory** %MEMORY

  %loadBr_42133c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42133c = icmp eq i8 %loadBr_42133c, 1
  br i1 %cmpBr_42133c, label %block_.L_42145c, label %block_421342

block_421342:
  ; Code: movl -0x1c(%rbp), %eax	 RIP: 421342	 Bytes: 3
  %loadMem_421342 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421342 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421342)
  store %struct.Memory* %call_421342, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 421345	 Bytes: 3
  %loadMem_421345 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421345 = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421345)
  store %struct.Memory* %call_421345, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 421348	 Bytes: 3
  %loadMem_421348 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421348 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421348)
  store %struct.Memory* %call_421348, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 42134b	 Bytes: 8
  %loadMem_42134b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42134b = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42134b)
  store %struct.Memory* %call_42134b, %struct.Memory** %MEMORY

  ; Code: cmpl -0xc(%rbp), %eax	 RIP: 421353	 Bytes: 3
  %loadMem_421353 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421353 = call %struct.Memory* @routine_cmpl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421353)
  store %struct.Memory* %call_421353, %struct.Memory** %MEMORY

  ; Code: je .L_421427	 RIP: 421356	 Bytes: 6
  %loadMem_421356 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421356 = call %struct.Memory* @routine_je_.L_421427(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421356, i8* %BRANCH_TAKEN, i64 209, i64 6, i64 6)
  store %struct.Memory* %call_421356, %struct.Memory** %MEMORY

  %loadBr_421356 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421356 = icmp eq i8 %loadBr_421356, 1
  br i1 %cmpBr_421356, label %block_.L_421427, label %block_42135c

block_42135c:
  ; Code: movl -0x1c(%rbp), %eax	 RIP: 42135c	 Bytes: 3
  %loadMem_42135c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42135c = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42135c)
  store %struct.Memory* %call_42135c, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 42135f	 Bytes: 3
  %loadMem_42135f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42135f = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42135f)
  store %struct.Memory* %call_42135f, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 421362	 Bytes: 3
  %loadMem_421362 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421362 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421362)
  store %struct.Memory* %call_421362, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 421365	 Bytes: 8
  %loadMem_421365 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421365 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421365)
  store %struct.Memory* %call_421365, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 42136d	 Bytes: 3
  %loadMem_42136d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42136d = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42136d)
  store %struct.Memory* %call_42136d, %struct.Memory** %MEMORY

  ; Code: jne .L_42145c	 RIP: 421370	 Bytes: 6
  %loadMem_421370 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421370 = call %struct.Memory* @routine_jne_.L_42145c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421370, i8* %BRANCH_TAKEN, i64 236, i64 6, i64 6)
  store %struct.Memory* %call_421370, %struct.Memory** %MEMORY

  %loadBr_421370 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421370 = icmp eq i8 %loadBr_421370, 1
  br i1 %cmpBr_421370, label %block_.L_42145c, label %block_421376

block_421376:
  ; Code: movl -0x1c(%rbp), %eax	 RIP: 421376	 Bytes: 3
  %loadMem_421376 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421376 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421376)
  store %struct.Memory* %call_421376, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 421379	 Bytes: 3
  %loadMem_421379 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421379 = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421379)
  store %struct.Memory* %call_421379, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 42137c	 Bytes: 3
  %loadMem_42137c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42137c = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42137c)
  store %struct.Memory* %call_42137c, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 42137f	 Bytes: 3
  %loadMem_42137f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42137f = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42137f)
  store %struct.Memory* %call_42137f, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 421382	 Bytes: 8
  %loadMem_421382 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421382 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421382)
  store %struct.Memory* %call_421382, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %eax	 RIP: 42138a	 Bytes: 3
  %loadMem_42138a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42138a = call %struct.Memory* @routine_cmpl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42138a)
  store %struct.Memory* %call_42138a, %struct.Memory** %MEMORY

  ; Code: je .L_42145c	 RIP: 42138d	 Bytes: 6
  %loadMem_42138d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42138d = call %struct.Memory* @routine_je_.L_42145c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42138d, i8* %BRANCH_TAKEN, i64 207, i64 6, i64 6)
  store %struct.Memory* %call_42138d, %struct.Memory** %MEMORY

  %loadBr_42138d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42138d = icmp eq i8 %loadBr_42138d, 1
  br i1 %cmpBr_42138d, label %block_.L_42145c, label %block_421393

block_421393:
  ; Code: movl -0x1c(%rbp), %eax	 RIP: 421393	 Bytes: 3
  %loadMem_421393 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421393 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421393)
  store %struct.Memory* %call_421393, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 421396	 Bytes: 3
  %loadMem_421396 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421396 = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421396)
  store %struct.Memory* %call_421396, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 421399	 Bytes: 3
  %loadMem_421399 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421399 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421399)
  store %struct.Memory* %call_421399, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 42139c	 Bytes: 3
  %loadMem_42139c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42139c = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42139c)
  store %struct.Memory* %call_42139c, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 42139f	 Bytes: 8
  %loadMem_42139f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42139f = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42139f)
  store %struct.Memory* %call_42139f, %struct.Memory** %MEMORY

  ; Code: cmpl -0x5dc(%rbp), %eax	 RIP: 4213a7	 Bytes: 6
  %loadMem_4213a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4213a7 = call %struct.Memory* @routine_cmpl_MINUS0x5dc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4213a7)
  store %struct.Memory* %call_4213a7, %struct.Memory** %MEMORY

  ; Code: je .L_42145c	 RIP: 4213ad	 Bytes: 6
  %loadMem_4213ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4213ad = call %struct.Memory* @routine_je_.L_42145c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4213ad, i8* %BRANCH_TAKEN, i64 175, i64 6, i64 6)
  store %struct.Memory* %call_4213ad, %struct.Memory** %MEMORY

  %loadBr_4213ad = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4213ad = icmp eq i8 %loadBr_4213ad, 1
  br i1 %cmpBr_4213ad, label %block_.L_42145c, label %block_4213b3

block_4213b3:
  ; Code: movl -0x1c(%rbp), %eax	 RIP: 4213b3	 Bytes: 3
  %loadMem_4213b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4213b3 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4213b3)
  store %struct.Memory* %call_4213b3, %struct.Memory** %MEMORY

  ; Code: subl $0x28, %eax	 RIP: 4213b6	 Bytes: 3
  %loadMem_4213b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4213b6 = call %struct.Memory* @routine_subl__0x28___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4213b6)
  store %struct.Memory* %call_4213b6, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 4213b9	 Bytes: 3
  %loadMem_4213b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4213b9 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4213b9)
  store %struct.Memory* %call_4213b9, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 4213bc	 Bytes: 8
  %loadMem_4213bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4213bc = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4213bc)
  store %struct.Memory* %call_4213bc, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %eax	 RIP: 4213c4	 Bytes: 3
  %loadMem_4213c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4213c4 = call %struct.Memory* @routine_cmpl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4213c4)
  store %struct.Memory* %call_4213c4, %struct.Memory** %MEMORY

  ; Code: je .L_42145c	 RIP: 4213c7	 Bytes: 6
  %loadMem_4213c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4213c7 = call %struct.Memory* @routine_je_.L_42145c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4213c7, i8* %BRANCH_TAKEN, i64 149, i64 6, i64 6)
  store %struct.Memory* %call_4213c7, %struct.Memory** %MEMORY

  %loadBr_4213c7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4213c7 = icmp eq i8 %loadBr_4213c7, 1
  br i1 %cmpBr_4213c7, label %block_.L_42145c, label %block_4213cd

block_4213cd:
  ; Code: movl -0x1c(%rbp), %eax	 RIP: 4213cd	 Bytes: 3
  %loadMem_4213cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4213cd = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4213cd)
  store %struct.Memory* %call_4213cd, %struct.Memory** %MEMORY

  ; Code: subl $0x28, %eax	 RIP: 4213d0	 Bytes: 3
  %loadMem_4213d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4213d0 = call %struct.Memory* @routine_subl__0x28___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4213d0)
  store %struct.Memory* %call_4213d0, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 4213d3	 Bytes: 3
  %loadMem_4213d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4213d3 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4213d3)
  store %struct.Memory* %call_4213d3, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 4213d6	 Bytes: 8
  %loadMem_4213d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4213d6 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4213d6)
  store %struct.Memory* %call_4213d6, %struct.Memory** %MEMORY

  ; Code: cmpl -0x5dc(%rbp), %eax	 RIP: 4213de	 Bytes: 6
  %loadMem_4213de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4213de = call %struct.Memory* @routine_cmpl_MINUS0x5dc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4213de)
  store %struct.Memory* %call_4213de, %struct.Memory** %MEMORY

  ; Code: je .L_42145c	 RIP: 4213e4	 Bytes: 6
  %loadMem_4213e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4213e4 = call %struct.Memory* @routine_je_.L_42145c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4213e4, i8* %BRANCH_TAKEN, i64 120, i64 6, i64 6)
  store %struct.Memory* %call_4213e4, %struct.Memory** %MEMORY

  %loadBr_4213e4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4213e4 = icmp eq i8 %loadBr_4213e4, 1
  br i1 %cmpBr_4213e4, label %block_.L_42145c, label %block_4213ea

block_4213ea:
  ; Code: movl -0x1c(%rbp), %eax	 RIP: 4213ea	 Bytes: 3
  %loadMem_4213ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4213ea = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4213ea)
  store %struct.Memory* %call_4213ea, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 4213ed	 Bytes: 3
  %loadMem_4213ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4213ed = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4213ed)
  store %struct.Memory* %call_4213ed, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4213f0	 Bytes: 3
  %loadMem_4213f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4213f0 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4213f0)
  store %struct.Memory* %call_4213f0, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 4213f3	 Bytes: 3
  %loadMem_4213f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4213f3 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4213f3)
  store %struct.Memory* %call_4213f3, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 4213f6	 Bytes: 8
  %loadMem_4213f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4213f6 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4213f6)
  store %struct.Memory* %call_4213f6, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %eax	 RIP: 4213fe	 Bytes: 3
  %loadMem_4213fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4213fe = call %struct.Memory* @routine_cmpl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4213fe)
  store %struct.Memory* %call_4213fe, %struct.Memory** %MEMORY

  ; Code: je .L_42145c	 RIP: 421401	 Bytes: 6
  %loadMem_421401 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421401 = call %struct.Memory* @routine_je_.L_42145c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421401, i8* %BRANCH_TAKEN, i64 91, i64 6, i64 6)
  store %struct.Memory* %call_421401, %struct.Memory** %MEMORY

  %loadBr_421401 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421401 = icmp eq i8 %loadBr_421401, 1
  br i1 %cmpBr_421401, label %block_.L_42145c, label %block_421407

block_421407:
  ; Code: movl -0x1c(%rbp), %eax	 RIP: 421407	 Bytes: 3
  %loadMem_421407 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421407 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421407)
  store %struct.Memory* %call_421407, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 42140a	 Bytes: 3
  %loadMem_42140a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42140a = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42140a)
  store %struct.Memory* %call_42140a, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 42140d	 Bytes: 3
  %loadMem_42140d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42140d = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42140d)
  store %struct.Memory* %call_42140d, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 421410	 Bytes: 3
  %loadMem_421410 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421410 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421410)
  store %struct.Memory* %call_421410, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 421413	 Bytes: 8
  %loadMem_421413 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421413 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421413)
  store %struct.Memory* %call_421413, %struct.Memory** %MEMORY

  ; Code: cmpl -0x5dc(%rbp), %eax	 RIP: 42141b	 Bytes: 6
  %loadMem_42141b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42141b = call %struct.Memory* @routine_cmpl_MINUS0x5dc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42141b)
  store %struct.Memory* %call_42141b, %struct.Memory** %MEMORY

  ; Code: je .L_42145c	 RIP: 421421	 Bytes: 6
  %loadMem_421421 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421421 = call %struct.Memory* @routine_je_.L_42145c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421421, i8* %BRANCH_TAKEN, i64 59, i64 6, i64 6)
  store %struct.Memory* %call_421421, %struct.Memory** %MEMORY

  %loadBr_421421 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421421 = icmp eq i8 %loadBr_421421, 1
  br i1 %cmpBr_421421, label %block_.L_42145c, label %block_.L_421427

  ; Code: .L_421427:	 RIP: 421427	 Bytes: 0
block_.L_421427:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 421427	 Bytes: 3
  %loadMem_421427 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421427 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421427)
  store %struct.Memory* %call_421427, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 42142a	 Bytes: 3
  %loadMem_42142a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42142a = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42142a)
  store %struct.Memory* %call_42142a, %struct.Memory** %MEMORY

  ; Code: movl -0x5d8(%rbp), %ecx	 RIP: 42142d	 Bytes: 6
  %loadMem_42142d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42142d = call %struct.Memory* @routine_movl_MINUS0x5d8__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42142d)
  store %struct.Memory* %call_42142d, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 421433	 Bytes: 2
  %loadMem_421433 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421433 = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421433)
  store %struct.Memory* %call_421433, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 421435	 Bytes: 3
  %loadMem_421435 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421435 = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421435)
  store %struct.Memory* %call_421435, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x5d8(%rbp)	 RIP: 421438	 Bytes: 6
  %loadMem_421438 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421438 = call %struct.Memory* @routine_movl__edx__MINUS0x5d8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421438)
  store %struct.Memory* %call_421438, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 42143e	 Bytes: 3
  %loadMem_42143e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42143e = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42143e)
  store %struct.Memory* %call_42143e, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x5d0(%rbp,%rsi,4)	 RIP: 421441	 Bytes: 7
  %loadMem_421441 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421441 = call %struct.Memory* @routine_movl__eax__MINUS0x5d0__rbp__rsi_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421441)
  store %struct.Memory* %call_421441, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 421448	 Bytes: 3
  %loadMem_421448 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421448 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421448)
  store %struct.Memory* %call_421448, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 42144b	 Bytes: 3
  %loadMem_42144b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42144b = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42144b)
  store %struct.Memory* %call_42144b, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rsi	 RIP: 42144e	 Bytes: 3
  %loadMem_42144e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42144e = call %struct.Memory* @routine_movslq__eax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42144e)
  store %struct.Memory* %call_42144e, %struct.Memory** %MEMORY

  ; Code: movl $0x1, 0xaaf6b0(,%rsi,4)	 RIP: 421451	 Bytes: 11
  %loadMem_421451 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421451 = call %struct.Memory* @routine_movl__0x1__0xaaf6b0___rsi_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421451)
  store %struct.Memory* %call_421451, %struct.Memory** %MEMORY

  ; Code: .L_42145c:	 RIP: 42145c	 Bytes: 0
  br label %block_.L_42145c
block_.L_42145c:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 42145c	 Bytes: 3
  %loadMem_42145c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42145c = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42145c)
  store %struct.Memory* %call_42145c, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 42145f	 Bytes: 3
  %loadMem_42145f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42145f = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42145f)
  store %struct.Memory* %call_42145f, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 421462	 Bytes: 3
  %loadMem_421462 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421462 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421462)
  store %struct.Memory* %call_421462, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 421465	 Bytes: 8
  %loadMem_421465 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421465 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421465)
  store %struct.Memory* %call_421465, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %eax	 RIP: 42146d	 Bytes: 3
  %loadMem_42146d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42146d = call %struct.Memory* @routine_cmpl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42146d)
  store %struct.Memory* %call_42146d, %struct.Memory** %MEMORY

  ; Code: je .L_4215a7	 RIP: 421470	 Bytes: 6
  %loadMem_421470 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421470 = call %struct.Memory* @routine_je_.L_4215a7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421470, i8* %BRANCH_TAKEN, i64 311, i64 6, i64 6)
  store %struct.Memory* %call_421470, %struct.Memory** %MEMORY

  %loadBr_421470 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421470 = icmp eq i8 %loadBr_421470, 1
  br i1 %cmpBr_421470, label %block_.L_4215a7, label %block_421476

block_421476:
  ; Code: movl -0x1c(%rbp), %eax	 RIP: 421476	 Bytes: 3
  %loadMem_421476 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421476 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421476)
  store %struct.Memory* %call_421476, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 421479	 Bytes: 3
  %loadMem_421479 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421479 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421479)
  store %struct.Memory* %call_421479, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 42147c	 Bytes: 3
  %loadMem_42147c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42147c = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42147c)
  store %struct.Memory* %call_42147c, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0xaaf6b0(,%rcx,4)	 RIP: 42147f	 Bytes: 8
  %loadMem_42147f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42147f = call %struct.Memory* @routine_cmpl__0x0__0xaaf6b0___rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42147f)
  store %struct.Memory* %call_42147f, %struct.Memory** %MEMORY

  ; Code: jne .L_4215a7	 RIP: 421487	 Bytes: 6
  %loadMem_421487 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421487 = call %struct.Memory* @routine_jne_.L_4215a7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421487, i8* %BRANCH_TAKEN, i64 288, i64 6, i64 6)
  store %struct.Memory* %call_421487, %struct.Memory** %MEMORY

  %loadBr_421487 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421487 = icmp eq i8 %loadBr_421487, 1
  br i1 %cmpBr_421487, label %block_.L_4215a7, label %block_42148d

block_42148d:
  ; Code: movl -0x1c(%rbp), %eax	 RIP: 42148d	 Bytes: 3
  %loadMem_42148d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42148d = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42148d)
  store %struct.Memory* %call_42148d, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 421490	 Bytes: 3
  %loadMem_421490 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421490 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421490)
  store %struct.Memory* %call_421490, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 421493	 Bytes: 3
  %loadMem_421493 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421493 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421493)
  store %struct.Memory* %call_421493, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 421496	 Bytes: 8
  %loadMem_421496 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421496 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421496)
  store %struct.Memory* %call_421496, %struct.Memory** %MEMORY

  ; Code: cmpl -0xc(%rbp), %eax	 RIP: 42149e	 Bytes: 3
  %loadMem_42149e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42149e = call %struct.Memory* @routine_cmpl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42149e)
  store %struct.Memory* %call_42149e, %struct.Memory** %MEMORY

  ; Code: je .L_421572	 RIP: 4214a1	 Bytes: 6
  %loadMem_4214a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4214a1 = call %struct.Memory* @routine_je_.L_421572(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4214a1, i8* %BRANCH_TAKEN, i64 209, i64 6, i64 6)
  store %struct.Memory* %call_4214a1, %struct.Memory** %MEMORY

  %loadBr_4214a1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4214a1 = icmp eq i8 %loadBr_4214a1, 1
  br i1 %cmpBr_4214a1, label %block_.L_421572, label %block_4214a7

block_4214a7:
  ; Code: movl -0x1c(%rbp), %eax	 RIP: 4214a7	 Bytes: 3
  %loadMem_4214a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4214a7 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4214a7)
  store %struct.Memory* %call_4214a7, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4214aa	 Bytes: 3
  %loadMem_4214aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4214aa = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4214aa)
  store %struct.Memory* %call_4214aa, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 4214ad	 Bytes: 3
  %loadMem_4214ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4214ad = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4214ad)
  store %struct.Memory* %call_4214ad, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 4214b0	 Bytes: 8
  %loadMem_4214b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4214b0 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4214b0)
  store %struct.Memory* %call_4214b0, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 4214b8	 Bytes: 3
  %loadMem_4214b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4214b8 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4214b8)
  store %struct.Memory* %call_4214b8, %struct.Memory** %MEMORY

  ; Code: jne .L_4215a7	 RIP: 4214bb	 Bytes: 6
  %loadMem_4214bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4214bb = call %struct.Memory* @routine_jne_.L_4215a7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4214bb, i8* %BRANCH_TAKEN, i64 236, i64 6, i64 6)
  store %struct.Memory* %call_4214bb, %struct.Memory** %MEMORY

  %loadBr_4214bb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4214bb = icmp eq i8 %loadBr_4214bb, 1
  br i1 %cmpBr_4214bb, label %block_.L_4215a7, label %block_4214c1

block_4214c1:
  ; Code: movl -0x1c(%rbp), %eax	 RIP: 4214c1	 Bytes: 3
  %loadMem_4214c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4214c1 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4214c1)
  store %struct.Memory* %call_4214c1, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 4214c4	 Bytes: 3
  %loadMem_4214c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4214c4 = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4214c4)
  store %struct.Memory* %call_4214c4, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4214c7	 Bytes: 3
  %loadMem_4214c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4214c7 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4214c7)
  store %struct.Memory* %call_4214c7, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 4214ca	 Bytes: 3
  %loadMem_4214ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4214ca = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4214ca)
  store %struct.Memory* %call_4214ca, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 4214cd	 Bytes: 8
  %loadMem_4214cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4214cd = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4214cd)
  store %struct.Memory* %call_4214cd, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %eax	 RIP: 4214d5	 Bytes: 3
  %loadMem_4214d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4214d5 = call %struct.Memory* @routine_cmpl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4214d5)
  store %struct.Memory* %call_4214d5, %struct.Memory** %MEMORY

  ; Code: je .L_4215a7	 RIP: 4214d8	 Bytes: 6
  %loadMem_4214d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4214d8 = call %struct.Memory* @routine_je_.L_4215a7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4214d8, i8* %BRANCH_TAKEN, i64 207, i64 6, i64 6)
  store %struct.Memory* %call_4214d8, %struct.Memory** %MEMORY

  %loadBr_4214d8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4214d8 = icmp eq i8 %loadBr_4214d8, 1
  br i1 %cmpBr_4214d8, label %block_.L_4215a7, label %block_4214de

block_4214de:
  ; Code: movl -0x1c(%rbp), %eax	 RIP: 4214de	 Bytes: 3
  %loadMem_4214de = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4214de = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4214de)
  store %struct.Memory* %call_4214de, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 4214e1	 Bytes: 3
  %loadMem_4214e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4214e1 = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4214e1)
  store %struct.Memory* %call_4214e1, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4214e4	 Bytes: 3
  %loadMem_4214e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4214e4 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4214e4)
  store %struct.Memory* %call_4214e4, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 4214e7	 Bytes: 3
  %loadMem_4214e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4214e7 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4214e7)
  store %struct.Memory* %call_4214e7, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 4214ea	 Bytes: 8
  %loadMem_4214ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4214ea = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4214ea)
  store %struct.Memory* %call_4214ea, %struct.Memory** %MEMORY

  ; Code: cmpl -0x5dc(%rbp), %eax	 RIP: 4214f2	 Bytes: 6
  %loadMem_4214f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4214f2 = call %struct.Memory* @routine_cmpl_MINUS0x5dc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4214f2)
  store %struct.Memory* %call_4214f2, %struct.Memory** %MEMORY

  ; Code: je .L_4215a7	 RIP: 4214f8	 Bytes: 6
  %loadMem_4214f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4214f8 = call %struct.Memory* @routine_je_.L_4215a7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4214f8, i8* %BRANCH_TAKEN, i64 175, i64 6, i64 6)
  store %struct.Memory* %call_4214f8, %struct.Memory** %MEMORY

  %loadBr_4214f8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4214f8 = icmp eq i8 %loadBr_4214f8, 1
  br i1 %cmpBr_4214f8, label %block_.L_4215a7, label %block_4214fe

block_4214fe:
  ; Code: movl -0x1c(%rbp), %eax	 RIP: 4214fe	 Bytes: 3
  %loadMem_4214fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4214fe = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4214fe)
  store %struct.Memory* %call_4214fe, %struct.Memory** %MEMORY

  ; Code: addl $0x2, %eax	 RIP: 421501	 Bytes: 3
  %loadMem_421501 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421501 = call %struct.Memory* @routine_addl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421501)
  store %struct.Memory* %call_421501, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 421504	 Bytes: 3
  %loadMem_421504 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421504 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421504)
  store %struct.Memory* %call_421504, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 421507	 Bytes: 8
  %loadMem_421507 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421507 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421507)
  store %struct.Memory* %call_421507, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %eax	 RIP: 42150f	 Bytes: 3
  %loadMem_42150f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42150f = call %struct.Memory* @routine_cmpl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42150f)
  store %struct.Memory* %call_42150f, %struct.Memory** %MEMORY

  ; Code: je .L_4215a7	 RIP: 421512	 Bytes: 6
  %loadMem_421512 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421512 = call %struct.Memory* @routine_je_.L_4215a7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421512, i8* %BRANCH_TAKEN, i64 149, i64 6, i64 6)
  store %struct.Memory* %call_421512, %struct.Memory** %MEMORY

  %loadBr_421512 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421512 = icmp eq i8 %loadBr_421512, 1
  br i1 %cmpBr_421512, label %block_.L_4215a7, label %block_421518

block_421518:
  ; Code: movl -0x1c(%rbp), %eax	 RIP: 421518	 Bytes: 3
  %loadMem_421518 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421518 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421518)
  store %struct.Memory* %call_421518, %struct.Memory** %MEMORY

  ; Code: addl $0x2, %eax	 RIP: 42151b	 Bytes: 3
  %loadMem_42151b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42151b = call %struct.Memory* @routine_addl__0x2___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42151b)
  store %struct.Memory* %call_42151b, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 42151e	 Bytes: 3
  %loadMem_42151e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42151e = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42151e)
  store %struct.Memory* %call_42151e, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 421521	 Bytes: 8
  %loadMem_421521 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421521 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421521)
  store %struct.Memory* %call_421521, %struct.Memory** %MEMORY

  ; Code: cmpl -0x5dc(%rbp), %eax	 RIP: 421529	 Bytes: 6
  %loadMem_421529 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421529 = call %struct.Memory* @routine_cmpl_MINUS0x5dc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421529)
  store %struct.Memory* %call_421529, %struct.Memory** %MEMORY

  ; Code: je .L_4215a7	 RIP: 42152f	 Bytes: 6
  %loadMem_42152f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42152f = call %struct.Memory* @routine_je_.L_4215a7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42152f, i8* %BRANCH_TAKEN, i64 120, i64 6, i64 6)
  store %struct.Memory* %call_42152f, %struct.Memory** %MEMORY

  %loadBr_42152f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42152f = icmp eq i8 %loadBr_42152f, 1
  br i1 %cmpBr_42152f, label %block_.L_4215a7, label %block_421535

block_421535:
  ; Code: movl -0x1c(%rbp), %eax	 RIP: 421535	 Bytes: 3
  %loadMem_421535 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421535 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421535)
  store %struct.Memory* %call_421535, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 421538	 Bytes: 3
  %loadMem_421538 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421538 = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421538)
  store %struct.Memory* %call_421538, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 42153b	 Bytes: 3
  %loadMem_42153b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42153b = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42153b)
  store %struct.Memory* %call_42153b, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 42153e	 Bytes: 3
  %loadMem_42153e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42153e = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42153e)
  store %struct.Memory* %call_42153e, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 421541	 Bytes: 8
  %loadMem_421541 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421541 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421541)
  store %struct.Memory* %call_421541, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %eax	 RIP: 421549	 Bytes: 3
  %loadMem_421549 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421549 = call %struct.Memory* @routine_cmpl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421549)
  store %struct.Memory* %call_421549, %struct.Memory** %MEMORY

  ; Code: je .L_4215a7	 RIP: 42154c	 Bytes: 6
  %loadMem_42154c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42154c = call %struct.Memory* @routine_je_.L_4215a7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42154c, i8* %BRANCH_TAKEN, i64 91, i64 6, i64 6)
  store %struct.Memory* %call_42154c, %struct.Memory** %MEMORY

  %loadBr_42154c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42154c = icmp eq i8 %loadBr_42154c, 1
  br i1 %cmpBr_42154c, label %block_.L_4215a7, label %block_421552

block_421552:
  ; Code: movl -0x1c(%rbp), %eax	 RIP: 421552	 Bytes: 3
  %loadMem_421552 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421552 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421552)
  store %struct.Memory* %call_421552, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 421555	 Bytes: 3
  %loadMem_421555 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421555 = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421555)
  store %struct.Memory* %call_421555, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 421558	 Bytes: 3
  %loadMem_421558 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421558 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421558)
  store %struct.Memory* %call_421558, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 42155b	 Bytes: 3
  %loadMem_42155b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42155b = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42155b)
  store %struct.Memory* %call_42155b, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 42155e	 Bytes: 8
  %loadMem_42155e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42155e = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42155e)
  store %struct.Memory* %call_42155e, %struct.Memory** %MEMORY

  ; Code: cmpl -0x5dc(%rbp), %eax	 RIP: 421566	 Bytes: 6
  %loadMem_421566 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421566 = call %struct.Memory* @routine_cmpl_MINUS0x5dc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421566)
  store %struct.Memory* %call_421566, %struct.Memory** %MEMORY

  ; Code: je .L_4215a7	 RIP: 42156c	 Bytes: 6
  %loadMem_42156c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42156c = call %struct.Memory* @routine_je_.L_4215a7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42156c, i8* %BRANCH_TAKEN, i64 59, i64 6, i64 6)
  store %struct.Memory* %call_42156c, %struct.Memory** %MEMORY

  %loadBr_42156c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42156c = icmp eq i8 %loadBr_42156c, 1
  br i1 %cmpBr_42156c, label %block_.L_4215a7, label %block_.L_421572

  ; Code: .L_421572:	 RIP: 421572	 Bytes: 0
block_.L_421572:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 421572	 Bytes: 3
  %loadMem_421572 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421572 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421572)
  store %struct.Memory* %call_421572, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 421575	 Bytes: 3
  %loadMem_421575 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421575 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421575)
  store %struct.Memory* %call_421575, %struct.Memory** %MEMORY

  ; Code: movl -0x5d8(%rbp), %ecx	 RIP: 421578	 Bytes: 6
  %loadMem_421578 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421578 = call %struct.Memory* @routine_movl_MINUS0x5d8__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421578)
  store %struct.Memory* %call_421578, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 42157e	 Bytes: 2
  %loadMem_42157e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42157e = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42157e)
  store %struct.Memory* %call_42157e, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 421580	 Bytes: 3
  %loadMem_421580 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421580 = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421580)
  store %struct.Memory* %call_421580, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x5d8(%rbp)	 RIP: 421583	 Bytes: 6
  %loadMem_421583 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421583 = call %struct.Memory* @routine_movl__edx__MINUS0x5d8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421583)
  store %struct.Memory* %call_421583, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 421589	 Bytes: 3
  %loadMem_421589 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421589 = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421589)
  store %struct.Memory* %call_421589, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x5d0(%rbp,%rsi,4)	 RIP: 42158c	 Bytes: 7
  %loadMem_42158c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42158c = call %struct.Memory* @routine_movl__eax__MINUS0x5d0__rbp__rsi_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42158c)
  store %struct.Memory* %call_42158c, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 421593	 Bytes: 3
  %loadMem_421593 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421593 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421593)
  store %struct.Memory* %call_421593, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 421596	 Bytes: 3
  %loadMem_421596 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421596 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421596)
  store %struct.Memory* %call_421596, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rsi	 RIP: 421599	 Bytes: 3
  %loadMem_421599 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421599 = call %struct.Memory* @routine_movslq__eax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421599)
  store %struct.Memory* %call_421599, %struct.Memory** %MEMORY

  ; Code: movl $0x1, 0xaaf6b0(,%rsi,4)	 RIP: 42159c	 Bytes: 11
  %loadMem_42159c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42159c = call %struct.Memory* @routine_movl__0x1__0xaaf6b0___rsi_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42159c)
  store %struct.Memory* %call_42159c, %struct.Memory** %MEMORY

  ; Code: .L_4215a7:	 RIP: 4215a7	 Bytes: 0
  br label %block_.L_4215a7
block_.L_4215a7:

  ; Code: cmpl $0x0, -0x5e0(%rbp)	 RIP: 4215a7	 Bytes: 7
  %loadMem_4215a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4215a7 = call %struct.Memory* @routine_cmpl__0x0__MINUS0x5e0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4215a7)
  store %struct.Memory* %call_4215a7, %struct.Memory** %MEMORY

  ; Code: jne .L_421add	 RIP: 4215ae	 Bytes: 6
  %loadMem_4215ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4215ae = call %struct.Memory* @routine_jne_.L_421add(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4215ae, i8* %BRANCH_TAKEN, i64 1327, i64 6, i64 6)
  store %struct.Memory* %call_4215ae, %struct.Memory** %MEMORY

  %loadBr_4215ae = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4215ae = icmp eq i8 %loadBr_4215ae, 1
  br i1 %cmpBr_4215ae, label %block_.L_421add, label %block_4215b4

block_4215b4:
  ; Code: movl -0x1c(%rbp), %eax	 RIP: 4215b4	 Bytes: 3
  %loadMem_4215b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4215b4 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4215b4)
  store %struct.Memory* %call_4215b4, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 4215b7	 Bytes: 3
  %loadMem_4215b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4215b7 = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4215b7)
  store %struct.Memory* %call_4215b7, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 4215ba	 Bytes: 3
  %loadMem_4215ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4215ba = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4215ba)
  store %struct.Memory* %call_4215ba, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 4215bd	 Bytes: 8
  %loadMem_4215bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4215bd = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4215bd)
  store %struct.Memory* %call_4215bd, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 4215c5	 Bytes: 3
  %loadMem_4215c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4215c5 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4215c5)
  store %struct.Memory* %call_4215c5, %struct.Memory** %MEMORY

  ; Code: jne .L_4216fd	 RIP: 4215c8	 Bytes: 6
  %loadMem_4215c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4215c8 = call %struct.Memory* @routine_jne_.L_4216fd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4215c8, i8* %BRANCH_TAKEN, i64 309, i64 6, i64 6)
  store %struct.Memory* %call_4215c8, %struct.Memory** %MEMORY

  %loadBr_4215c8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4215c8 = icmp eq i8 %loadBr_4215c8, 1
  br i1 %cmpBr_4215c8, label %block_.L_4216fd, label %block_4215ce

block_4215ce:
  ; Code: movl -0x1c(%rbp), %eax	 RIP: 4215ce	 Bytes: 3
  %loadMem_4215ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4215ce = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4215ce)
  store %struct.Memory* %call_4215ce, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 4215d1	 Bytes: 3
  %loadMem_4215d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4215d1 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4215d1)
  store %struct.Memory* %call_4215d1, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 4215d4	 Bytes: 3
  %loadMem_4215d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4215d4 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4215d4)
  store %struct.Memory* %call_4215d4, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 4215d7	 Bytes: 8
  %loadMem_4215d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4215d7 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4215d7)
  store %struct.Memory* %call_4215d7, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 4215df	 Bytes: 3
  %loadMem_4215df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4215df = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4215df)
  store %struct.Memory* %call_4215df, %struct.Memory** %MEMORY

  ; Code: jne .L_4216fd	 RIP: 4215e2	 Bytes: 6
  %loadMem_4215e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4215e2 = call %struct.Memory* @routine_jne_.L_4216fd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4215e2, i8* %BRANCH_TAKEN, i64 283, i64 6, i64 6)
  store %struct.Memory* %call_4215e2, %struct.Memory** %MEMORY

  %loadBr_4215e2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4215e2 = icmp eq i8 %loadBr_4215e2, 1
  br i1 %cmpBr_4215e2, label %block_.L_4216fd, label %block_4215e8

block_4215e8:
  ; Code: movl -0x1c(%rbp), %eax	 RIP: 4215e8	 Bytes: 3
  %loadMem_4215e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4215e8 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4215e8)
  store %struct.Memory* %call_4215e8, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 4215eb	 Bytes: 3
  %loadMem_4215eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4215eb = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4215eb)
  store %struct.Memory* %call_4215eb, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 4215ee	 Bytes: 3
  %loadMem_4215ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4215ee = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4215ee)
  store %struct.Memory* %call_4215ee, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 4215f1	 Bytes: 3
  %loadMem_4215f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4215f1 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4215f1)
  store %struct.Memory* %call_4215f1, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0xaaf6b0(,%rcx,4)	 RIP: 4215f4	 Bytes: 8
  %loadMem_4215f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4215f4 = call %struct.Memory* @routine_cmpl__0x0__0xaaf6b0___rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4215f4)
  store %struct.Memory* %call_4215f4, %struct.Memory** %MEMORY

  ; Code: jne .L_4216fd	 RIP: 4215fc	 Bytes: 6
  %loadMem_4215fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4215fc = call %struct.Memory* @routine_jne_.L_4216fd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4215fc, i8* %BRANCH_TAKEN, i64 257, i64 6, i64 6)
  store %struct.Memory* %call_4215fc, %struct.Memory** %MEMORY

  %loadBr_4215fc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4215fc = icmp eq i8 %loadBr_4215fc, 1
  br i1 %cmpBr_4215fc, label %block_.L_4216fd, label %block_421602

block_421602:
  ; Code: movl -0x1c(%rbp), %eax	 RIP: 421602	 Bytes: 3
  %loadMem_421602 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421602 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421602)
  store %struct.Memory* %call_421602, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 421605	 Bytes: 3
  %loadMem_421605 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421605 = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421605)
  store %struct.Memory* %call_421605, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 421608	 Bytes: 3
  %loadMem_421608 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421608 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421608)
  store %struct.Memory* %call_421608, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 42160b	 Bytes: 3
  %loadMem_42160b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42160b = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42160b)
  store %struct.Memory* %call_42160b, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 42160e	 Bytes: 8
  %loadMem_42160e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42160e = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42160e)
  store %struct.Memory* %call_42160e, %struct.Memory** %MEMORY

  ; Code: cmpl -0xc(%rbp), %eax	 RIP: 421616	 Bytes: 3
  %loadMem_421616 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421616 = call %struct.Memory* @routine_cmpl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421616)
  store %struct.Memory* %call_421616, %struct.Memory** %MEMORY

  ; Code: je .L_4216c2	 RIP: 421619	 Bytes: 6
  %loadMem_421619 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421619 = call %struct.Memory* @routine_je_.L_4216c2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421619, i8* %BRANCH_TAKEN, i64 169, i64 6, i64 6)
  store %struct.Memory* %call_421619, %struct.Memory** %MEMORY

  %loadBr_421619 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421619 = icmp eq i8 %loadBr_421619, 1
  br i1 %cmpBr_421619, label %block_.L_4216c2, label %block_42161f

block_42161f:
  ; Code: movl -0x1c(%rbp), %eax	 RIP: 42161f	 Bytes: 3
  %loadMem_42161f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42161f = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42161f)
  store %struct.Memory* %call_42161f, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 421622	 Bytes: 3
  %loadMem_421622 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421622 = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421622)
  store %struct.Memory* %call_421622, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 421625	 Bytes: 3
  %loadMem_421625 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421625 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421625)
  store %struct.Memory* %call_421625, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 421628	 Bytes: 3
  %loadMem_421628 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421628 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421628)
  store %struct.Memory* %call_421628, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 42162b	 Bytes: 8
  %loadMem_42162b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42162b = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42162b)
  store %struct.Memory* %call_42162b, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 421633	 Bytes: 3
  %loadMem_421633 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421633 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421633)
  store %struct.Memory* %call_421633, %struct.Memory** %MEMORY

  ; Code: jne .L_4216fd	 RIP: 421636	 Bytes: 6
  %loadMem_421636 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421636 = call %struct.Memory* @routine_jne_.L_4216fd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421636, i8* %BRANCH_TAKEN, i64 199, i64 6, i64 6)
  store %struct.Memory* %call_421636, %struct.Memory** %MEMORY

  %loadBr_421636 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421636 = icmp eq i8 %loadBr_421636, 1
  br i1 %cmpBr_421636, label %block_.L_4216fd, label %block_42163c

block_42163c:
  ; Code: movl -0x1c(%rbp), %eax	 RIP: 42163c	 Bytes: 3
  %loadMem_42163c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42163c = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42163c)
  store %struct.Memory* %call_42163c, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 42163f	 Bytes: 3
  %loadMem_42163f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42163f = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42163f)
  store %struct.Memory* %call_42163f, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 421642	 Bytes: 3
  %loadMem_421642 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421642 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421642)
  store %struct.Memory* %call_421642, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 421645	 Bytes: 3
  %loadMem_421645 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421645 = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421645)
  store %struct.Memory* %call_421645, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 421648	 Bytes: 3
  %loadMem_421648 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421648 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421648)
  store %struct.Memory* %call_421648, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 42164b	 Bytes: 8
  %loadMem_42164b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42164b = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42164b)
  store %struct.Memory* %call_42164b, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %eax	 RIP: 421653	 Bytes: 3
  %loadMem_421653 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421653 = call %struct.Memory* @routine_cmpl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421653)
  store %struct.Memory* %call_421653, %struct.Memory** %MEMORY

  ; Code: je .L_4216fd	 RIP: 421656	 Bytes: 6
  %loadMem_421656 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421656 = call %struct.Memory* @routine_je_.L_4216fd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421656, i8* %BRANCH_TAKEN, i64 167, i64 6, i64 6)
  store %struct.Memory* %call_421656, %struct.Memory** %MEMORY

  %loadBr_421656 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421656 = icmp eq i8 %loadBr_421656, 1
  br i1 %cmpBr_421656, label %block_.L_4216fd, label %block_42165c

block_42165c:
  ; Code: movl -0x1c(%rbp), %eax	 RIP: 42165c	 Bytes: 3
  %loadMem_42165c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42165c = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42165c)
  store %struct.Memory* %call_42165c, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 42165f	 Bytes: 3
  %loadMem_42165f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42165f = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42165f)
  store %struct.Memory* %call_42165f, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 421662	 Bytes: 3
  %loadMem_421662 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421662 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421662)
  store %struct.Memory* %call_421662, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 421665	 Bytes: 3
  %loadMem_421665 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421665 = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421665)
  store %struct.Memory* %call_421665, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 421668	 Bytes: 3
  %loadMem_421668 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421668 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421668)
  store %struct.Memory* %call_421668, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 42166b	 Bytes: 8
  %loadMem_42166b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42166b = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42166b)
  store %struct.Memory* %call_42166b, %struct.Memory** %MEMORY

  ; Code: cmpl -0x5dc(%rbp), %eax	 RIP: 421673	 Bytes: 6
  %loadMem_421673 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421673 = call %struct.Memory* @routine_cmpl_MINUS0x5dc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421673)
  store %struct.Memory* %call_421673, %struct.Memory** %MEMORY

  ; Code: je .L_4216fd	 RIP: 421679	 Bytes: 6
  %loadMem_421679 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421679 = call %struct.Memory* @routine_je_.L_4216fd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421679, i8* %BRANCH_TAKEN, i64 132, i64 6, i64 6)
  store %struct.Memory* %call_421679, %struct.Memory** %MEMORY

  %loadBr_421679 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421679 = icmp eq i8 %loadBr_421679, 1
  br i1 %cmpBr_421679, label %block_.L_4216fd, label %block_42167f

block_42167f:
  ; Code: movl -0x1c(%rbp), %eax	 RIP: 42167f	 Bytes: 3
  %loadMem_42167f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42167f = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42167f)
  store %struct.Memory* %call_42167f, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 421682	 Bytes: 3
  %loadMem_421682 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421682 = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421682)
  store %struct.Memory* %call_421682, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 421685	 Bytes: 3
  %loadMem_421685 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421685 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421685)
  store %struct.Memory* %call_421685, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 421688	 Bytes: 3
  %loadMem_421688 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421688 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421688)
  store %struct.Memory* %call_421688, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 42168b	 Bytes: 3
  %loadMem_42168b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42168b = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42168b)
  store %struct.Memory* %call_42168b, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 42168e	 Bytes: 8
  %loadMem_42168e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42168e = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42168e)
  store %struct.Memory* %call_42168e, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %eax	 RIP: 421696	 Bytes: 3
  %loadMem_421696 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421696 = call %struct.Memory* @routine_cmpl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421696)
  store %struct.Memory* %call_421696, %struct.Memory** %MEMORY

  ; Code: je .L_4216fd	 RIP: 421699	 Bytes: 6
  %loadMem_421699 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421699 = call %struct.Memory* @routine_je_.L_4216fd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421699, i8* %BRANCH_TAKEN, i64 100, i64 6, i64 6)
  store %struct.Memory* %call_421699, %struct.Memory** %MEMORY

  %loadBr_421699 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421699 = icmp eq i8 %loadBr_421699, 1
  br i1 %cmpBr_421699, label %block_.L_4216fd, label %block_42169f

block_42169f:
  ; Code: movl -0x1c(%rbp), %eax	 RIP: 42169f	 Bytes: 3
  %loadMem_42169f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42169f = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42169f)
  store %struct.Memory* %call_42169f, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 4216a2	 Bytes: 3
  %loadMem_4216a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4216a2 = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4216a2)
  store %struct.Memory* %call_4216a2, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 4216a5	 Bytes: 3
  %loadMem_4216a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4216a5 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4216a5)
  store %struct.Memory* %call_4216a5, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 4216a8	 Bytes: 3
  %loadMem_4216a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4216a8 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4216a8)
  store %struct.Memory* %call_4216a8, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 4216ab	 Bytes: 3
  %loadMem_4216ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4216ab = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4216ab)
  store %struct.Memory* %call_4216ab, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 4216ae	 Bytes: 8
  %loadMem_4216ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4216ae = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4216ae)
  store %struct.Memory* %call_4216ae, %struct.Memory** %MEMORY

  ; Code: cmpl -0x5dc(%rbp), %eax	 RIP: 4216b6	 Bytes: 6
  %loadMem_4216b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4216b6 = call %struct.Memory* @routine_cmpl_MINUS0x5dc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4216b6)
  store %struct.Memory* %call_4216b6, %struct.Memory** %MEMORY

  ; Code: je .L_4216fd	 RIP: 4216bc	 Bytes: 6
  %loadMem_4216bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4216bc = call %struct.Memory* @routine_je_.L_4216fd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4216bc, i8* %BRANCH_TAKEN, i64 65, i64 6, i64 6)
  store %struct.Memory* %call_4216bc, %struct.Memory** %MEMORY

  %loadBr_4216bc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4216bc = icmp eq i8 %loadBr_4216bc, 1
  br i1 %cmpBr_4216bc, label %block_.L_4216fd, label %block_.L_4216c2

  ; Code: .L_4216c2:	 RIP: 4216c2	 Bytes: 0
block_.L_4216c2:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 4216c2	 Bytes: 3
  %loadMem_4216c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4216c2 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4216c2)
  store %struct.Memory* %call_4216c2, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 4216c5	 Bytes: 3
  %loadMem_4216c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4216c5 = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4216c5)
  store %struct.Memory* %call_4216c5, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 4216c8	 Bytes: 3
  %loadMem_4216c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4216c8 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4216c8)
  store %struct.Memory* %call_4216c8, %struct.Memory** %MEMORY

  ; Code: movl -0x5d8(%rbp), %ecx	 RIP: 4216cb	 Bytes: 6
  %loadMem_4216cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4216cb = call %struct.Memory* @routine_movl_MINUS0x5d8__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4216cb)
  store %struct.Memory* %call_4216cb, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 4216d1	 Bytes: 2
  %loadMem_4216d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4216d1 = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4216d1)
  store %struct.Memory* %call_4216d1, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 4216d3	 Bytes: 3
  %loadMem_4216d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4216d3 = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4216d3)
  store %struct.Memory* %call_4216d3, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x5d8(%rbp)	 RIP: 4216d6	 Bytes: 6
  %loadMem_4216d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4216d6 = call %struct.Memory* @routine_movl__edx__MINUS0x5d8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4216d6)
  store %struct.Memory* %call_4216d6, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 4216dc	 Bytes: 3
  %loadMem_4216dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4216dc = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4216dc)
  store %struct.Memory* %call_4216dc, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x5d0(%rbp,%rsi,4)	 RIP: 4216df	 Bytes: 7
  %loadMem_4216df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4216df = call %struct.Memory* @routine_movl__eax__MINUS0x5d0__rbp__rsi_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4216df)
  store %struct.Memory* %call_4216df, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 4216e6	 Bytes: 3
  %loadMem_4216e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4216e6 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4216e6)
  store %struct.Memory* %call_4216e6, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 4216e9	 Bytes: 3
  %loadMem_4216e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4216e9 = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4216e9)
  store %struct.Memory* %call_4216e9, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 4216ec	 Bytes: 3
  %loadMem_4216ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4216ec = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4216ec)
  store %struct.Memory* %call_4216ec, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rsi	 RIP: 4216ef	 Bytes: 3
  %loadMem_4216ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4216ef = call %struct.Memory* @routine_movslq__eax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4216ef)
  store %struct.Memory* %call_4216ef, %struct.Memory** %MEMORY

  ; Code: movl $0x1, 0xaaf6b0(,%rsi,4)	 RIP: 4216f2	 Bytes: 11
  %loadMem_4216f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4216f2 = call %struct.Memory* @routine_movl__0x1__0xaaf6b0___rsi_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4216f2)
  store %struct.Memory* %call_4216f2, %struct.Memory** %MEMORY

  ; Code: .L_4216fd:	 RIP: 4216fd	 Bytes: 0
  br label %block_.L_4216fd
block_.L_4216fd:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 4216fd	 Bytes: 3
  %loadMem_4216fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4216fd = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4216fd)
  store %struct.Memory* %call_4216fd, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 421700	 Bytes: 3
  %loadMem_421700 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421700 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421700)
  store %struct.Memory* %call_421700, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 421703	 Bytes: 3
  %loadMem_421703 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421703 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421703)
  store %struct.Memory* %call_421703, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 421706	 Bytes: 8
  %loadMem_421706 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421706 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421706)
  store %struct.Memory* %call_421706, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 42170e	 Bytes: 3
  %loadMem_42170e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42170e = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42170e)
  store %struct.Memory* %call_42170e, %struct.Memory** %MEMORY

  ; Code: jne .L_421846	 RIP: 421711	 Bytes: 6
  %loadMem_421711 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421711 = call %struct.Memory* @routine_jne_.L_421846(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421711, i8* %BRANCH_TAKEN, i64 309, i64 6, i64 6)
  store %struct.Memory* %call_421711, %struct.Memory** %MEMORY

  %loadBr_421711 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421711 = icmp eq i8 %loadBr_421711, 1
  br i1 %cmpBr_421711, label %block_.L_421846, label %block_421717

block_421717:
  ; Code: movl -0x1c(%rbp), %eax	 RIP: 421717	 Bytes: 3
  %loadMem_421717 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421717 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421717)
  store %struct.Memory* %call_421717, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 42171a	 Bytes: 3
  %loadMem_42171a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42171a = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42171a)
  store %struct.Memory* %call_42171a, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 42171d	 Bytes: 3
  %loadMem_42171d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42171d = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42171d)
  store %struct.Memory* %call_42171d, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 421720	 Bytes: 8
  %loadMem_421720 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421720 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421720)
  store %struct.Memory* %call_421720, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 421728	 Bytes: 3
  %loadMem_421728 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421728 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421728)
  store %struct.Memory* %call_421728, %struct.Memory** %MEMORY

  ; Code: jne .L_421846	 RIP: 42172b	 Bytes: 6
  %loadMem_42172b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42172b = call %struct.Memory* @routine_jne_.L_421846(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42172b, i8* %BRANCH_TAKEN, i64 283, i64 6, i64 6)
  store %struct.Memory* %call_42172b, %struct.Memory** %MEMORY

  %loadBr_42172b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42172b = icmp eq i8 %loadBr_42172b, 1
  br i1 %cmpBr_42172b, label %block_.L_421846, label %block_421731

block_421731:
  ; Code: movl -0x1c(%rbp), %eax	 RIP: 421731	 Bytes: 3
  %loadMem_421731 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421731 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421731)
  store %struct.Memory* %call_421731, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 421734	 Bytes: 3
  %loadMem_421734 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421734 = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421734)
  store %struct.Memory* %call_421734, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 421737	 Bytes: 3
  %loadMem_421737 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421737 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421737)
  store %struct.Memory* %call_421737, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 42173a	 Bytes: 3
  %loadMem_42173a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42173a = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42173a)
  store %struct.Memory* %call_42173a, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0xaaf6b0(,%rcx,4)	 RIP: 42173d	 Bytes: 8
  %loadMem_42173d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42173d = call %struct.Memory* @routine_cmpl__0x0__0xaaf6b0___rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42173d)
  store %struct.Memory* %call_42173d, %struct.Memory** %MEMORY

  ; Code: jne .L_421846	 RIP: 421745	 Bytes: 6
  %loadMem_421745 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421745 = call %struct.Memory* @routine_jne_.L_421846(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421745, i8* %BRANCH_TAKEN, i64 257, i64 6, i64 6)
  store %struct.Memory* %call_421745, %struct.Memory** %MEMORY

  %loadBr_421745 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421745 = icmp eq i8 %loadBr_421745, 1
  br i1 %cmpBr_421745, label %block_.L_421846, label %block_42174b

block_42174b:
  ; Code: movl -0x1c(%rbp), %eax	 RIP: 42174b	 Bytes: 3
  %loadMem_42174b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42174b = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42174b)
  store %struct.Memory* %call_42174b, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 42174e	 Bytes: 3
  %loadMem_42174e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42174e = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42174e)
  store %struct.Memory* %call_42174e, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 421751	 Bytes: 3
  %loadMem_421751 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421751 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421751)
  store %struct.Memory* %call_421751, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 421754	 Bytes: 3
  %loadMem_421754 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421754 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421754)
  store %struct.Memory* %call_421754, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 421757	 Bytes: 8
  %loadMem_421757 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421757 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421757)
  store %struct.Memory* %call_421757, %struct.Memory** %MEMORY

  ; Code: cmpl -0xc(%rbp), %eax	 RIP: 42175f	 Bytes: 3
  %loadMem_42175f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42175f = call %struct.Memory* @routine_cmpl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42175f)
  store %struct.Memory* %call_42175f, %struct.Memory** %MEMORY

  ; Code: je .L_42180b	 RIP: 421762	 Bytes: 6
  %loadMem_421762 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421762 = call %struct.Memory* @routine_je_.L_42180b(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421762, i8* %BRANCH_TAKEN, i64 169, i64 6, i64 6)
  store %struct.Memory* %call_421762, %struct.Memory** %MEMORY

  %loadBr_421762 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421762 = icmp eq i8 %loadBr_421762, 1
  br i1 %cmpBr_421762, label %block_.L_42180b, label %block_421768

block_421768:
  ; Code: movl -0x1c(%rbp), %eax	 RIP: 421768	 Bytes: 3
  %loadMem_421768 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421768 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421768)
  store %struct.Memory* %call_421768, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 42176b	 Bytes: 3
  %loadMem_42176b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42176b = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42176b)
  store %struct.Memory* %call_42176b, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 42176e	 Bytes: 3
  %loadMem_42176e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42176e = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42176e)
  store %struct.Memory* %call_42176e, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 421771	 Bytes: 3
  %loadMem_421771 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421771 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421771)
  store %struct.Memory* %call_421771, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 421774	 Bytes: 8
  %loadMem_421774 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421774 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421774)
  store %struct.Memory* %call_421774, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 42177c	 Bytes: 3
  %loadMem_42177c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42177c = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42177c)
  store %struct.Memory* %call_42177c, %struct.Memory** %MEMORY

  ; Code: jne .L_421846	 RIP: 42177f	 Bytes: 6
  %loadMem_42177f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42177f = call %struct.Memory* @routine_jne_.L_421846(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42177f, i8* %BRANCH_TAKEN, i64 199, i64 6, i64 6)
  store %struct.Memory* %call_42177f, %struct.Memory** %MEMORY

  %loadBr_42177f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42177f = icmp eq i8 %loadBr_42177f, 1
  br i1 %cmpBr_42177f, label %block_.L_421846, label %block_421785

block_421785:
  ; Code: movl -0x1c(%rbp), %eax	 RIP: 421785	 Bytes: 3
  %loadMem_421785 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421785 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421785)
  store %struct.Memory* %call_421785, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 421788	 Bytes: 3
  %loadMem_421788 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421788 = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421788)
  store %struct.Memory* %call_421788, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 42178b	 Bytes: 3
  %loadMem_42178b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42178b = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42178b)
  store %struct.Memory* %call_42178b, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 42178e	 Bytes: 3
  %loadMem_42178e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42178e = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42178e)
  store %struct.Memory* %call_42178e, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 421791	 Bytes: 3
  %loadMem_421791 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421791 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421791)
  store %struct.Memory* %call_421791, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 421794	 Bytes: 8
  %loadMem_421794 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421794 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421794)
  store %struct.Memory* %call_421794, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %eax	 RIP: 42179c	 Bytes: 3
  %loadMem_42179c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42179c = call %struct.Memory* @routine_cmpl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42179c)
  store %struct.Memory* %call_42179c, %struct.Memory** %MEMORY

  ; Code: je .L_421846	 RIP: 42179f	 Bytes: 6
  %loadMem_42179f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42179f = call %struct.Memory* @routine_je_.L_421846(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42179f, i8* %BRANCH_TAKEN, i64 167, i64 6, i64 6)
  store %struct.Memory* %call_42179f, %struct.Memory** %MEMORY

  %loadBr_42179f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42179f = icmp eq i8 %loadBr_42179f, 1
  br i1 %cmpBr_42179f, label %block_.L_421846, label %block_4217a5

block_4217a5:
  ; Code: movl -0x1c(%rbp), %eax	 RIP: 4217a5	 Bytes: 3
  %loadMem_4217a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4217a5 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4217a5)
  store %struct.Memory* %call_4217a5, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 4217a8	 Bytes: 3
  %loadMem_4217a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4217a8 = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4217a8)
  store %struct.Memory* %call_4217a8, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 4217ab	 Bytes: 3
  %loadMem_4217ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4217ab = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4217ab)
  store %struct.Memory* %call_4217ab, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 4217ae	 Bytes: 3
  %loadMem_4217ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4217ae = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4217ae)
  store %struct.Memory* %call_4217ae, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 4217b1	 Bytes: 3
  %loadMem_4217b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4217b1 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4217b1)
  store %struct.Memory* %call_4217b1, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 4217b4	 Bytes: 8
  %loadMem_4217b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4217b4 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4217b4)
  store %struct.Memory* %call_4217b4, %struct.Memory** %MEMORY

  ; Code: cmpl -0x5dc(%rbp), %eax	 RIP: 4217bc	 Bytes: 6
  %loadMem_4217bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4217bc = call %struct.Memory* @routine_cmpl_MINUS0x5dc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4217bc)
  store %struct.Memory* %call_4217bc, %struct.Memory** %MEMORY

  ; Code: je .L_421846	 RIP: 4217c2	 Bytes: 6
  %loadMem_4217c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4217c2 = call %struct.Memory* @routine_je_.L_421846(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4217c2, i8* %BRANCH_TAKEN, i64 132, i64 6, i64 6)
  store %struct.Memory* %call_4217c2, %struct.Memory** %MEMORY

  %loadBr_4217c2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4217c2 = icmp eq i8 %loadBr_4217c2, 1
  br i1 %cmpBr_4217c2, label %block_.L_421846, label %block_4217c8

block_4217c8:
  ; Code: movl -0x1c(%rbp), %eax	 RIP: 4217c8	 Bytes: 3
  %loadMem_4217c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4217c8 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4217c8)
  store %struct.Memory* %call_4217c8, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 4217cb	 Bytes: 3
  %loadMem_4217cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4217cb = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4217cb)
  store %struct.Memory* %call_4217cb, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 4217ce	 Bytes: 3
  %loadMem_4217ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4217ce = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4217ce)
  store %struct.Memory* %call_4217ce, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 4217d1	 Bytes: 3
  %loadMem_4217d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4217d1 = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4217d1)
  store %struct.Memory* %call_4217d1, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 4217d4	 Bytes: 3
  %loadMem_4217d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4217d4 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4217d4)
  store %struct.Memory* %call_4217d4, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 4217d7	 Bytes: 8
  %loadMem_4217d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4217d7 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4217d7)
  store %struct.Memory* %call_4217d7, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %eax	 RIP: 4217df	 Bytes: 3
  %loadMem_4217df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4217df = call %struct.Memory* @routine_cmpl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4217df)
  store %struct.Memory* %call_4217df, %struct.Memory** %MEMORY

  ; Code: je .L_421846	 RIP: 4217e2	 Bytes: 6
  %loadMem_4217e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4217e2 = call %struct.Memory* @routine_je_.L_421846(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4217e2, i8* %BRANCH_TAKEN, i64 100, i64 6, i64 6)
  store %struct.Memory* %call_4217e2, %struct.Memory** %MEMORY

  %loadBr_4217e2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4217e2 = icmp eq i8 %loadBr_4217e2, 1
  br i1 %cmpBr_4217e2, label %block_.L_421846, label %block_4217e8

block_4217e8:
  ; Code: movl -0x1c(%rbp), %eax	 RIP: 4217e8	 Bytes: 3
  %loadMem_4217e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4217e8 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4217e8)
  store %struct.Memory* %call_4217e8, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 4217eb	 Bytes: 3
  %loadMem_4217eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4217eb = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4217eb)
  store %struct.Memory* %call_4217eb, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 4217ee	 Bytes: 3
  %loadMem_4217ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4217ee = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4217ee)
  store %struct.Memory* %call_4217ee, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 4217f1	 Bytes: 3
  %loadMem_4217f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4217f1 = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4217f1)
  store %struct.Memory* %call_4217f1, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 4217f4	 Bytes: 3
  %loadMem_4217f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4217f4 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4217f4)
  store %struct.Memory* %call_4217f4, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 4217f7	 Bytes: 8
  %loadMem_4217f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4217f7 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4217f7)
  store %struct.Memory* %call_4217f7, %struct.Memory** %MEMORY

  ; Code: cmpl -0x5dc(%rbp), %eax	 RIP: 4217ff	 Bytes: 6
  %loadMem_4217ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4217ff = call %struct.Memory* @routine_cmpl_MINUS0x5dc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4217ff)
  store %struct.Memory* %call_4217ff, %struct.Memory** %MEMORY

  ; Code: je .L_421846	 RIP: 421805	 Bytes: 6
  %loadMem_421805 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421805 = call %struct.Memory* @routine_je_.L_421846(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421805, i8* %BRANCH_TAKEN, i64 65, i64 6, i64 6)
  store %struct.Memory* %call_421805, %struct.Memory** %MEMORY

  %loadBr_421805 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421805 = icmp eq i8 %loadBr_421805, 1
  br i1 %cmpBr_421805, label %block_.L_421846, label %block_.L_42180b

  ; Code: .L_42180b:	 RIP: 42180b	 Bytes: 0
block_.L_42180b:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 42180b	 Bytes: 3
  %loadMem_42180b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42180b = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42180b)
  store %struct.Memory* %call_42180b, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 42180e	 Bytes: 3
  %loadMem_42180e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42180e = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42180e)
  store %struct.Memory* %call_42180e, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 421811	 Bytes: 3
  %loadMem_421811 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421811 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421811)
  store %struct.Memory* %call_421811, %struct.Memory** %MEMORY

  ; Code: movl -0x5d8(%rbp), %ecx	 RIP: 421814	 Bytes: 6
  %loadMem_421814 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421814 = call %struct.Memory* @routine_movl_MINUS0x5d8__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421814)
  store %struct.Memory* %call_421814, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 42181a	 Bytes: 2
  %loadMem_42181a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42181a = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42181a)
  store %struct.Memory* %call_42181a, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 42181c	 Bytes: 3
  %loadMem_42181c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42181c = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42181c)
  store %struct.Memory* %call_42181c, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x5d8(%rbp)	 RIP: 42181f	 Bytes: 6
  %loadMem_42181f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42181f = call %struct.Memory* @routine_movl__edx__MINUS0x5d8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42181f)
  store %struct.Memory* %call_42181f, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 421825	 Bytes: 3
  %loadMem_421825 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421825 = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421825)
  store %struct.Memory* %call_421825, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x5d0(%rbp,%rsi,4)	 RIP: 421828	 Bytes: 7
  %loadMem_421828 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421828 = call %struct.Memory* @routine_movl__eax__MINUS0x5d0__rbp__rsi_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421828)
  store %struct.Memory* %call_421828, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 42182f	 Bytes: 3
  %loadMem_42182f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42182f = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42182f)
  store %struct.Memory* %call_42182f, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 421832	 Bytes: 3
  %loadMem_421832 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421832 = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421832)
  store %struct.Memory* %call_421832, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 421835	 Bytes: 3
  %loadMem_421835 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421835 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421835)
  store %struct.Memory* %call_421835, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rsi	 RIP: 421838	 Bytes: 3
  %loadMem_421838 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421838 = call %struct.Memory* @routine_movslq__eax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421838)
  store %struct.Memory* %call_421838, %struct.Memory** %MEMORY

  ; Code: movl $0x1, 0xaaf6b0(,%rsi,4)	 RIP: 42183b	 Bytes: 11
  %loadMem_42183b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42183b = call %struct.Memory* @routine_movl__0x1__0xaaf6b0___rsi_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42183b)
  store %struct.Memory* %call_42183b, %struct.Memory** %MEMORY

  ; Code: .L_421846:	 RIP: 421846	 Bytes: 0
  br label %block_.L_421846
block_.L_421846:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 421846	 Bytes: 3
  %loadMem_421846 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421846 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421846)
  store %struct.Memory* %call_421846, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 421849	 Bytes: 3
  %loadMem_421849 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421849 = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421849)
  store %struct.Memory* %call_421849, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 42184c	 Bytes: 3
  %loadMem_42184c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42184c = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42184c)
  store %struct.Memory* %call_42184c, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 42184f	 Bytes: 8
  %loadMem_42184f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42184f = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42184f)
  store %struct.Memory* %call_42184f, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 421857	 Bytes: 3
  %loadMem_421857 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421857 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421857)
  store %struct.Memory* %call_421857, %struct.Memory** %MEMORY

  ; Code: jne .L_42198f	 RIP: 42185a	 Bytes: 6
  %loadMem_42185a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42185a = call %struct.Memory* @routine_jne_.L_42198f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42185a, i8* %BRANCH_TAKEN, i64 309, i64 6, i64 6)
  store %struct.Memory* %call_42185a, %struct.Memory** %MEMORY

  %loadBr_42185a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42185a = icmp eq i8 %loadBr_42185a, 1
  br i1 %cmpBr_42185a, label %block_.L_42198f, label %block_421860

block_421860:
  ; Code: movl -0x1c(%rbp), %eax	 RIP: 421860	 Bytes: 3
  %loadMem_421860 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421860 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421860)
  store %struct.Memory* %call_421860, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 421863	 Bytes: 3
  %loadMem_421863 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421863 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421863)
  store %struct.Memory* %call_421863, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 421866	 Bytes: 3
  %loadMem_421866 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421866 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421866)
  store %struct.Memory* %call_421866, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 421869	 Bytes: 8
  %loadMem_421869 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421869 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421869)
  store %struct.Memory* %call_421869, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 421871	 Bytes: 3
  %loadMem_421871 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421871 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421871)
  store %struct.Memory* %call_421871, %struct.Memory** %MEMORY

  ; Code: jne .L_42198f	 RIP: 421874	 Bytes: 6
  %loadMem_421874 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421874 = call %struct.Memory* @routine_jne_.L_42198f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421874, i8* %BRANCH_TAKEN, i64 283, i64 6, i64 6)
  store %struct.Memory* %call_421874, %struct.Memory** %MEMORY

  %loadBr_421874 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421874 = icmp eq i8 %loadBr_421874, 1
  br i1 %cmpBr_421874, label %block_.L_42198f, label %block_42187a

block_42187a:
  ; Code: movl -0x1c(%rbp), %eax	 RIP: 42187a	 Bytes: 3
  %loadMem_42187a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42187a = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42187a)
  store %struct.Memory* %call_42187a, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 42187d	 Bytes: 3
  %loadMem_42187d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42187d = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42187d)
  store %struct.Memory* %call_42187d, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 421880	 Bytes: 3
  %loadMem_421880 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421880 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421880)
  store %struct.Memory* %call_421880, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 421883	 Bytes: 3
  %loadMem_421883 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421883 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421883)
  store %struct.Memory* %call_421883, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0xaaf6b0(,%rcx,4)	 RIP: 421886	 Bytes: 8
  %loadMem_421886 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421886 = call %struct.Memory* @routine_cmpl__0x0__0xaaf6b0___rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421886)
  store %struct.Memory* %call_421886, %struct.Memory** %MEMORY

  ; Code: jne .L_42198f	 RIP: 42188e	 Bytes: 6
  %loadMem_42188e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42188e = call %struct.Memory* @routine_jne_.L_42198f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42188e, i8* %BRANCH_TAKEN, i64 257, i64 6, i64 6)
  store %struct.Memory* %call_42188e, %struct.Memory** %MEMORY

  %loadBr_42188e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42188e = icmp eq i8 %loadBr_42188e, 1
  br i1 %cmpBr_42188e, label %block_.L_42198f, label %block_421894

block_421894:
  ; Code: movl -0x1c(%rbp), %eax	 RIP: 421894	 Bytes: 3
  %loadMem_421894 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421894 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421894)
  store %struct.Memory* %call_421894, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 421897	 Bytes: 3
  %loadMem_421897 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421897 = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421897)
  store %struct.Memory* %call_421897, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 42189a	 Bytes: 3
  %loadMem_42189a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42189a = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42189a)
  store %struct.Memory* %call_42189a, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 42189d	 Bytes: 3
  %loadMem_42189d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42189d = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42189d)
  store %struct.Memory* %call_42189d, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 4218a0	 Bytes: 8
  %loadMem_4218a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4218a0 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4218a0)
  store %struct.Memory* %call_4218a0, %struct.Memory** %MEMORY

  ; Code: cmpl -0xc(%rbp), %eax	 RIP: 4218a8	 Bytes: 3
  %loadMem_4218a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4218a8 = call %struct.Memory* @routine_cmpl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4218a8)
  store %struct.Memory* %call_4218a8, %struct.Memory** %MEMORY

  ; Code: je .L_421954	 RIP: 4218ab	 Bytes: 6
  %loadMem_4218ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4218ab = call %struct.Memory* @routine_je_.L_421954(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4218ab, i8* %BRANCH_TAKEN, i64 169, i64 6, i64 6)
  store %struct.Memory* %call_4218ab, %struct.Memory** %MEMORY

  %loadBr_4218ab = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4218ab = icmp eq i8 %loadBr_4218ab, 1
  br i1 %cmpBr_4218ab, label %block_.L_421954, label %block_4218b1

block_4218b1:
  ; Code: movl -0x1c(%rbp), %eax	 RIP: 4218b1	 Bytes: 3
  %loadMem_4218b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4218b1 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4218b1)
  store %struct.Memory* %call_4218b1, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 4218b4	 Bytes: 3
  %loadMem_4218b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4218b4 = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4218b4)
  store %struct.Memory* %call_4218b4, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4218b7	 Bytes: 3
  %loadMem_4218b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4218b7 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4218b7)
  store %struct.Memory* %call_4218b7, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 4218ba	 Bytes: 3
  %loadMem_4218ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4218ba = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4218ba)
  store %struct.Memory* %call_4218ba, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 4218bd	 Bytes: 8
  %loadMem_4218bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4218bd = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4218bd)
  store %struct.Memory* %call_4218bd, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 4218c5	 Bytes: 3
  %loadMem_4218c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4218c5 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4218c5)
  store %struct.Memory* %call_4218c5, %struct.Memory** %MEMORY

  ; Code: jne .L_42198f	 RIP: 4218c8	 Bytes: 6
  %loadMem_4218c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4218c8 = call %struct.Memory* @routine_jne_.L_42198f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4218c8, i8* %BRANCH_TAKEN, i64 199, i64 6, i64 6)
  store %struct.Memory* %call_4218c8, %struct.Memory** %MEMORY

  %loadBr_4218c8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4218c8 = icmp eq i8 %loadBr_4218c8, 1
  br i1 %cmpBr_4218c8, label %block_.L_42198f, label %block_4218ce

block_4218ce:
  ; Code: movl -0x1c(%rbp), %eax	 RIP: 4218ce	 Bytes: 3
  %loadMem_4218ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4218ce = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4218ce)
  store %struct.Memory* %call_4218ce, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 4218d1	 Bytes: 3
  %loadMem_4218d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4218d1 = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4218d1)
  store %struct.Memory* %call_4218d1, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4218d4	 Bytes: 3
  %loadMem_4218d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4218d4 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4218d4)
  store %struct.Memory* %call_4218d4, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 4218d7	 Bytes: 3
  %loadMem_4218d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4218d7 = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4218d7)
  store %struct.Memory* %call_4218d7, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 4218da	 Bytes: 3
  %loadMem_4218da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4218da = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4218da)
  store %struct.Memory* %call_4218da, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 4218dd	 Bytes: 8
  %loadMem_4218dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4218dd = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4218dd)
  store %struct.Memory* %call_4218dd, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %eax	 RIP: 4218e5	 Bytes: 3
  %loadMem_4218e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4218e5 = call %struct.Memory* @routine_cmpl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4218e5)
  store %struct.Memory* %call_4218e5, %struct.Memory** %MEMORY

  ; Code: je .L_42198f	 RIP: 4218e8	 Bytes: 6
  %loadMem_4218e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4218e8 = call %struct.Memory* @routine_je_.L_42198f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4218e8, i8* %BRANCH_TAKEN, i64 167, i64 6, i64 6)
  store %struct.Memory* %call_4218e8, %struct.Memory** %MEMORY

  %loadBr_4218e8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4218e8 = icmp eq i8 %loadBr_4218e8, 1
  br i1 %cmpBr_4218e8, label %block_.L_42198f, label %block_4218ee

block_4218ee:
  ; Code: movl -0x1c(%rbp), %eax	 RIP: 4218ee	 Bytes: 3
  %loadMem_4218ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4218ee = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4218ee)
  store %struct.Memory* %call_4218ee, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 4218f1	 Bytes: 3
  %loadMem_4218f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4218f1 = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4218f1)
  store %struct.Memory* %call_4218f1, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4218f4	 Bytes: 3
  %loadMem_4218f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4218f4 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4218f4)
  store %struct.Memory* %call_4218f4, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 4218f7	 Bytes: 3
  %loadMem_4218f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4218f7 = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4218f7)
  store %struct.Memory* %call_4218f7, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 4218fa	 Bytes: 3
  %loadMem_4218fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4218fa = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4218fa)
  store %struct.Memory* %call_4218fa, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 4218fd	 Bytes: 8
  %loadMem_4218fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4218fd = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4218fd)
  store %struct.Memory* %call_4218fd, %struct.Memory** %MEMORY

  ; Code: cmpl -0x5dc(%rbp), %eax	 RIP: 421905	 Bytes: 6
  %loadMem_421905 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421905 = call %struct.Memory* @routine_cmpl_MINUS0x5dc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421905)
  store %struct.Memory* %call_421905, %struct.Memory** %MEMORY

  ; Code: je .L_42198f	 RIP: 42190b	 Bytes: 6
  %loadMem_42190b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42190b = call %struct.Memory* @routine_je_.L_42198f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42190b, i8* %BRANCH_TAKEN, i64 132, i64 6, i64 6)
  store %struct.Memory* %call_42190b, %struct.Memory** %MEMORY

  %loadBr_42190b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42190b = icmp eq i8 %loadBr_42190b, 1
  br i1 %cmpBr_42190b, label %block_.L_42198f, label %block_421911

block_421911:
  ; Code: movl -0x1c(%rbp), %eax	 RIP: 421911	 Bytes: 3
  %loadMem_421911 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421911 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421911)
  store %struct.Memory* %call_421911, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 421914	 Bytes: 3
  %loadMem_421914 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421914 = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421914)
  store %struct.Memory* %call_421914, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 421917	 Bytes: 3
  %loadMem_421917 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421917 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421917)
  store %struct.Memory* %call_421917, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 42191a	 Bytes: 3
  %loadMem_42191a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42191a = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42191a)
  store %struct.Memory* %call_42191a, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 42191d	 Bytes: 3
  %loadMem_42191d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42191d = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42191d)
  store %struct.Memory* %call_42191d, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 421920	 Bytes: 8
  %loadMem_421920 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421920 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421920)
  store %struct.Memory* %call_421920, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %eax	 RIP: 421928	 Bytes: 3
  %loadMem_421928 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421928 = call %struct.Memory* @routine_cmpl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421928)
  store %struct.Memory* %call_421928, %struct.Memory** %MEMORY

  ; Code: je .L_42198f	 RIP: 42192b	 Bytes: 6
  %loadMem_42192b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42192b = call %struct.Memory* @routine_je_.L_42198f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42192b, i8* %BRANCH_TAKEN, i64 100, i64 6, i64 6)
  store %struct.Memory* %call_42192b, %struct.Memory** %MEMORY

  %loadBr_42192b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42192b = icmp eq i8 %loadBr_42192b, 1
  br i1 %cmpBr_42192b, label %block_.L_42198f, label %block_421931

block_421931:
  ; Code: movl -0x1c(%rbp), %eax	 RIP: 421931	 Bytes: 3
  %loadMem_421931 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421931 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421931)
  store %struct.Memory* %call_421931, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 421934	 Bytes: 3
  %loadMem_421934 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421934 = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421934)
  store %struct.Memory* %call_421934, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 421937	 Bytes: 3
  %loadMem_421937 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421937 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421937)
  store %struct.Memory* %call_421937, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 42193a	 Bytes: 3
  %loadMem_42193a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42193a = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42193a)
  store %struct.Memory* %call_42193a, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 42193d	 Bytes: 3
  %loadMem_42193d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42193d = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42193d)
  store %struct.Memory* %call_42193d, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 421940	 Bytes: 8
  %loadMem_421940 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421940 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421940)
  store %struct.Memory* %call_421940, %struct.Memory** %MEMORY

  ; Code: cmpl -0x5dc(%rbp), %eax	 RIP: 421948	 Bytes: 6
  %loadMem_421948 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421948 = call %struct.Memory* @routine_cmpl_MINUS0x5dc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421948)
  store %struct.Memory* %call_421948, %struct.Memory** %MEMORY

  ; Code: je .L_42198f	 RIP: 42194e	 Bytes: 6
  %loadMem_42194e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42194e = call %struct.Memory* @routine_je_.L_42198f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42194e, i8* %BRANCH_TAKEN, i64 65, i64 6, i64 6)
  store %struct.Memory* %call_42194e, %struct.Memory** %MEMORY

  %loadBr_42194e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42194e = icmp eq i8 %loadBr_42194e, 1
  br i1 %cmpBr_42194e, label %block_.L_42198f, label %block_.L_421954

  ; Code: .L_421954:	 RIP: 421954	 Bytes: 0
block_.L_421954:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 421954	 Bytes: 3
  %loadMem_421954 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421954 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421954)
  store %struct.Memory* %call_421954, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 421957	 Bytes: 3
  %loadMem_421957 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421957 = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421957)
  store %struct.Memory* %call_421957, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 42195a	 Bytes: 3
  %loadMem_42195a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42195a = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42195a)
  store %struct.Memory* %call_42195a, %struct.Memory** %MEMORY

  ; Code: movl -0x5d8(%rbp), %ecx	 RIP: 42195d	 Bytes: 6
  %loadMem_42195d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42195d = call %struct.Memory* @routine_movl_MINUS0x5d8__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42195d)
  store %struct.Memory* %call_42195d, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 421963	 Bytes: 2
  %loadMem_421963 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421963 = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421963)
  store %struct.Memory* %call_421963, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 421965	 Bytes: 3
  %loadMem_421965 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421965 = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421965)
  store %struct.Memory* %call_421965, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x5d8(%rbp)	 RIP: 421968	 Bytes: 6
  %loadMem_421968 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421968 = call %struct.Memory* @routine_movl__edx__MINUS0x5d8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421968)
  store %struct.Memory* %call_421968, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 42196e	 Bytes: 3
  %loadMem_42196e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42196e = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42196e)
  store %struct.Memory* %call_42196e, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x5d0(%rbp,%rsi,4)	 RIP: 421971	 Bytes: 7
  %loadMem_421971 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421971 = call %struct.Memory* @routine_movl__eax__MINUS0x5d0__rbp__rsi_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421971)
  store %struct.Memory* %call_421971, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 421978	 Bytes: 3
  %loadMem_421978 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421978 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421978)
  store %struct.Memory* %call_421978, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 42197b	 Bytes: 3
  %loadMem_42197b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42197b = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42197b)
  store %struct.Memory* %call_42197b, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 42197e	 Bytes: 3
  %loadMem_42197e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42197e = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42197e)
  store %struct.Memory* %call_42197e, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rsi	 RIP: 421981	 Bytes: 3
  %loadMem_421981 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421981 = call %struct.Memory* @routine_movslq__eax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421981)
  store %struct.Memory* %call_421981, %struct.Memory** %MEMORY

  ; Code: movl $0x1, 0xaaf6b0(,%rsi,4)	 RIP: 421984	 Bytes: 11
  %loadMem_421984 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421984 = call %struct.Memory* @routine_movl__0x1__0xaaf6b0___rsi_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421984)
  store %struct.Memory* %call_421984, %struct.Memory** %MEMORY

  ; Code: .L_42198f:	 RIP: 42198f	 Bytes: 0
  br label %block_.L_42198f
block_.L_42198f:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 42198f	 Bytes: 3
  %loadMem_42198f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_42198f = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_42198f)
  store %struct.Memory* %call_42198f, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 421992	 Bytes: 3
  %loadMem_421992 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421992 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421992)
  store %struct.Memory* %call_421992, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 421995	 Bytes: 3
  %loadMem_421995 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421995 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421995)
  store %struct.Memory* %call_421995, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 421998	 Bytes: 8
  %loadMem_421998 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421998 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421998)
  store %struct.Memory* %call_421998, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 4219a0	 Bytes: 3
  %loadMem_4219a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4219a0 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4219a0)
  store %struct.Memory* %call_4219a0, %struct.Memory** %MEMORY

  ; Code: jne .L_421ad8	 RIP: 4219a3	 Bytes: 6
  %loadMem_4219a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4219a3 = call %struct.Memory* @routine_jne_.L_421ad8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4219a3, i8* %BRANCH_TAKEN, i64 309, i64 6, i64 6)
  store %struct.Memory* %call_4219a3, %struct.Memory** %MEMORY

  %loadBr_4219a3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4219a3 = icmp eq i8 %loadBr_4219a3, 1
  br i1 %cmpBr_4219a3, label %block_.L_421ad8, label %block_4219a9

block_4219a9:
  ; Code: movl -0x1c(%rbp), %eax	 RIP: 4219a9	 Bytes: 3
  %loadMem_4219a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4219a9 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4219a9)
  store %struct.Memory* %call_4219a9, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 4219ac	 Bytes: 3
  %loadMem_4219ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4219ac = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4219ac)
  store %struct.Memory* %call_4219ac, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 4219af	 Bytes: 3
  %loadMem_4219af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4219af = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4219af)
  store %struct.Memory* %call_4219af, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 4219b2	 Bytes: 8
  %loadMem_4219b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4219b2 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4219b2)
  store %struct.Memory* %call_4219b2, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 4219ba	 Bytes: 3
  %loadMem_4219ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4219ba = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4219ba)
  store %struct.Memory* %call_4219ba, %struct.Memory** %MEMORY

  ; Code: jne .L_421ad8	 RIP: 4219bd	 Bytes: 6
  %loadMem_4219bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4219bd = call %struct.Memory* @routine_jne_.L_421ad8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4219bd, i8* %BRANCH_TAKEN, i64 283, i64 6, i64 6)
  store %struct.Memory* %call_4219bd, %struct.Memory** %MEMORY

  %loadBr_4219bd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4219bd = icmp eq i8 %loadBr_4219bd, 1
  br i1 %cmpBr_4219bd, label %block_.L_421ad8, label %block_4219c3

block_4219c3:
  ; Code: movl -0x1c(%rbp), %eax	 RIP: 4219c3	 Bytes: 3
  %loadMem_4219c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4219c3 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4219c3)
  store %struct.Memory* %call_4219c3, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 4219c6	 Bytes: 3
  %loadMem_4219c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4219c6 = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4219c6)
  store %struct.Memory* %call_4219c6, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4219c9	 Bytes: 3
  %loadMem_4219c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4219c9 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4219c9)
  store %struct.Memory* %call_4219c9, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 4219cc	 Bytes: 3
  %loadMem_4219cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4219cc = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4219cc)
  store %struct.Memory* %call_4219cc, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, 0xaaf6b0(,%rcx,4)	 RIP: 4219cf	 Bytes: 8
  %loadMem_4219cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4219cf = call %struct.Memory* @routine_cmpl__0x0__0xaaf6b0___rcx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4219cf)
  store %struct.Memory* %call_4219cf, %struct.Memory** %MEMORY

  ; Code: jne .L_421ad8	 RIP: 4219d7	 Bytes: 6
  %loadMem_4219d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4219d7 = call %struct.Memory* @routine_jne_.L_421ad8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4219d7, i8* %BRANCH_TAKEN, i64 257, i64 6, i64 6)
  store %struct.Memory* %call_4219d7, %struct.Memory** %MEMORY

  %loadBr_4219d7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4219d7 = icmp eq i8 %loadBr_4219d7, 1
  br i1 %cmpBr_4219d7, label %block_.L_421ad8, label %block_4219dd

block_4219dd:
  ; Code: movl -0x1c(%rbp), %eax	 RIP: 4219dd	 Bytes: 3
  %loadMem_4219dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4219dd = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4219dd)
  store %struct.Memory* %call_4219dd, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 4219e0	 Bytes: 3
  %loadMem_4219e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4219e0 = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4219e0)
  store %struct.Memory* %call_4219e0, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4219e3	 Bytes: 3
  %loadMem_4219e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4219e3 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4219e3)
  store %struct.Memory* %call_4219e3, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 4219e6	 Bytes: 3
  %loadMem_4219e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4219e6 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4219e6)
  store %struct.Memory* %call_4219e6, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 4219e9	 Bytes: 8
  %loadMem_4219e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4219e9 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4219e9)
  store %struct.Memory* %call_4219e9, %struct.Memory** %MEMORY

  ; Code: cmpl -0xc(%rbp), %eax	 RIP: 4219f1	 Bytes: 3
  %loadMem_4219f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4219f1 = call %struct.Memory* @routine_cmpl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4219f1)
  store %struct.Memory* %call_4219f1, %struct.Memory** %MEMORY

  ; Code: je .L_421a9d	 RIP: 4219f4	 Bytes: 6
  %loadMem_4219f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4219f4 = call %struct.Memory* @routine_je_.L_421a9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4219f4, i8* %BRANCH_TAKEN, i64 169, i64 6, i64 6)
  store %struct.Memory* %call_4219f4, %struct.Memory** %MEMORY

  %loadBr_4219f4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4219f4 = icmp eq i8 %loadBr_4219f4, 1
  br i1 %cmpBr_4219f4, label %block_.L_421a9d, label %block_4219fa

block_4219fa:
  ; Code: movl -0x1c(%rbp), %eax	 RIP: 4219fa	 Bytes: 3
  %loadMem_4219fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4219fa = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4219fa)
  store %struct.Memory* %call_4219fa, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 4219fd	 Bytes: 3
  %loadMem_4219fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4219fd = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4219fd)
  store %struct.Memory* %call_4219fd, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 421a00	 Bytes: 3
  %loadMem_421a00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421a00 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421a00)
  store %struct.Memory* %call_421a00, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 421a03	 Bytes: 3
  %loadMem_421a03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421a03 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421a03)
  store %struct.Memory* %call_421a03, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 421a06	 Bytes: 8
  %loadMem_421a06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421a06 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421a06)
  store %struct.Memory* %call_421a06, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 421a0e	 Bytes: 3
  %loadMem_421a0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421a0e = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421a0e)
  store %struct.Memory* %call_421a0e, %struct.Memory** %MEMORY

  ; Code: jne .L_421ad8	 RIP: 421a11	 Bytes: 6
  %loadMem_421a11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421a11 = call %struct.Memory* @routine_jne_.L_421ad8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421a11, i8* %BRANCH_TAKEN, i64 199, i64 6, i64 6)
  store %struct.Memory* %call_421a11, %struct.Memory** %MEMORY

  %loadBr_421a11 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421a11 = icmp eq i8 %loadBr_421a11, 1
  br i1 %cmpBr_421a11, label %block_.L_421ad8, label %block_421a17

block_421a17:
  ; Code: movl -0x1c(%rbp), %eax	 RIP: 421a17	 Bytes: 3
  %loadMem_421a17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421a17 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421a17)
  store %struct.Memory* %call_421a17, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 421a1a	 Bytes: 3
  %loadMem_421a1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421a1a = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421a1a)
  store %struct.Memory* %call_421a1a, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 421a1d	 Bytes: 3
  %loadMem_421a1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421a1d = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421a1d)
  store %struct.Memory* %call_421a1d, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 421a20	 Bytes: 3
  %loadMem_421a20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421a20 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421a20)
  store %struct.Memory* %call_421a20, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 421a23	 Bytes: 3
  %loadMem_421a23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421a23 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421a23)
  store %struct.Memory* %call_421a23, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 421a26	 Bytes: 8
  %loadMem_421a26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421a26 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421a26)
  store %struct.Memory* %call_421a26, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %eax	 RIP: 421a2e	 Bytes: 3
  %loadMem_421a2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421a2e = call %struct.Memory* @routine_cmpl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421a2e)
  store %struct.Memory* %call_421a2e, %struct.Memory** %MEMORY

  ; Code: je .L_421ad8	 RIP: 421a31	 Bytes: 6
  %loadMem_421a31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421a31 = call %struct.Memory* @routine_je_.L_421ad8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421a31, i8* %BRANCH_TAKEN, i64 167, i64 6, i64 6)
  store %struct.Memory* %call_421a31, %struct.Memory** %MEMORY

  %loadBr_421a31 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421a31 = icmp eq i8 %loadBr_421a31, 1
  br i1 %cmpBr_421a31, label %block_.L_421ad8, label %block_421a37

block_421a37:
  ; Code: movl -0x1c(%rbp), %eax	 RIP: 421a37	 Bytes: 3
  %loadMem_421a37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421a37 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421a37)
  store %struct.Memory* %call_421a37, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 421a3a	 Bytes: 3
  %loadMem_421a3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421a3a = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421a3a)
  store %struct.Memory* %call_421a3a, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 421a3d	 Bytes: 3
  %loadMem_421a3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421a3d = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421a3d)
  store %struct.Memory* %call_421a3d, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 421a40	 Bytes: 3
  %loadMem_421a40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421a40 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421a40)
  store %struct.Memory* %call_421a40, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 421a43	 Bytes: 3
  %loadMem_421a43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421a43 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421a43)
  store %struct.Memory* %call_421a43, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 421a46	 Bytes: 8
  %loadMem_421a46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421a46 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421a46)
  store %struct.Memory* %call_421a46, %struct.Memory** %MEMORY

  ; Code: cmpl -0x5dc(%rbp), %eax	 RIP: 421a4e	 Bytes: 6
  %loadMem_421a4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421a4e = call %struct.Memory* @routine_cmpl_MINUS0x5dc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421a4e)
  store %struct.Memory* %call_421a4e, %struct.Memory** %MEMORY

  ; Code: je .L_421ad8	 RIP: 421a54	 Bytes: 6
  %loadMem_421a54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421a54 = call %struct.Memory* @routine_je_.L_421ad8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421a54, i8* %BRANCH_TAKEN, i64 132, i64 6, i64 6)
  store %struct.Memory* %call_421a54, %struct.Memory** %MEMORY

  %loadBr_421a54 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421a54 = icmp eq i8 %loadBr_421a54, 1
  br i1 %cmpBr_421a54, label %block_.L_421ad8, label %block_421a5a

block_421a5a:
  ; Code: movl -0x1c(%rbp), %eax	 RIP: 421a5a	 Bytes: 3
  %loadMem_421a5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421a5a = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421a5a)
  store %struct.Memory* %call_421a5a, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 421a5d	 Bytes: 3
  %loadMem_421a5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421a5d = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421a5d)
  store %struct.Memory* %call_421a5d, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 421a60	 Bytes: 3
  %loadMem_421a60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421a60 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421a60)
  store %struct.Memory* %call_421a60, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 421a63	 Bytes: 3
  %loadMem_421a63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421a63 = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421a63)
  store %struct.Memory* %call_421a63, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 421a66	 Bytes: 3
  %loadMem_421a66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421a66 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421a66)
  store %struct.Memory* %call_421a66, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 421a69	 Bytes: 8
  %loadMem_421a69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421a69 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421a69)
  store %struct.Memory* %call_421a69, %struct.Memory** %MEMORY

  ; Code: cmpl $0x3, %eax	 RIP: 421a71	 Bytes: 3
  %loadMem_421a71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421a71 = call %struct.Memory* @routine_cmpl__0x3___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421a71)
  store %struct.Memory* %call_421a71, %struct.Memory** %MEMORY

  ; Code: je .L_421ad8	 RIP: 421a74	 Bytes: 6
  %loadMem_421a74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421a74 = call %struct.Memory* @routine_je_.L_421ad8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421a74, i8* %BRANCH_TAKEN, i64 100, i64 6, i64 6)
  store %struct.Memory* %call_421a74, %struct.Memory** %MEMORY

  %loadBr_421a74 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421a74 = icmp eq i8 %loadBr_421a74, 1
  br i1 %cmpBr_421a74, label %block_.L_421ad8, label %block_421a7a

block_421a7a:
  ; Code: movl -0x1c(%rbp), %eax	 RIP: 421a7a	 Bytes: 3
  %loadMem_421a7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421a7a = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421a7a)
  store %struct.Memory* %call_421a7a, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 421a7d	 Bytes: 3
  %loadMem_421a7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421a7d = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421a7d)
  store %struct.Memory* %call_421a7d, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 421a80	 Bytes: 3
  %loadMem_421a80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421a80 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421a80)
  store %struct.Memory* %call_421a80, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 421a83	 Bytes: 3
  %loadMem_421a83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421a83 = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421a83)
  store %struct.Memory* %call_421a83, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 421a86	 Bytes: 3
  %loadMem_421a86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421a86 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421a86)
  store %struct.Memory* %call_421a86, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 421a89	 Bytes: 8
  %loadMem_421a89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421a89 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421a89)
  store %struct.Memory* %call_421a89, %struct.Memory** %MEMORY

  ; Code: cmpl -0x5dc(%rbp), %eax	 RIP: 421a91	 Bytes: 6
  %loadMem_421a91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421a91 = call %struct.Memory* @routine_cmpl_MINUS0x5dc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421a91)
  store %struct.Memory* %call_421a91, %struct.Memory** %MEMORY

  ; Code: je .L_421ad8	 RIP: 421a97	 Bytes: 6
  %loadMem_421a97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421a97 = call %struct.Memory* @routine_je_.L_421ad8(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421a97, i8* %BRANCH_TAKEN, i64 65, i64 6, i64 6)
  store %struct.Memory* %call_421a97, %struct.Memory** %MEMORY

  %loadBr_421a97 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421a97 = icmp eq i8 %loadBr_421a97, 1
  br i1 %cmpBr_421a97, label %block_.L_421ad8, label %block_.L_421a9d

  ; Code: .L_421a9d:	 RIP: 421a9d	 Bytes: 0
block_.L_421a9d:

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 421a9d	 Bytes: 3
  %loadMem_421a9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421a9d = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421a9d)
  store %struct.Memory* %call_421a9d, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 421aa0	 Bytes: 3
  %loadMem_421aa0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421aa0 = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421aa0)
  store %struct.Memory* %call_421aa0, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 421aa3	 Bytes: 3
  %loadMem_421aa3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421aa3 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421aa3)
  store %struct.Memory* %call_421aa3, %struct.Memory** %MEMORY

  ; Code: movl -0x5d8(%rbp), %ecx	 RIP: 421aa6	 Bytes: 6
  %loadMem_421aa6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421aa6 = call %struct.Memory* @routine_movl_MINUS0x5d8__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421aa6)
  store %struct.Memory* %call_421aa6, %struct.Memory** %MEMORY

  ; Code: movl %ecx, %edx	 RIP: 421aac	 Bytes: 2
  %loadMem_421aac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421aac = call %struct.Memory* @routine_movl__ecx___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421aac)
  store %struct.Memory* %call_421aac, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 421aae	 Bytes: 3
  %loadMem_421aae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421aae = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421aae)
  store %struct.Memory* %call_421aae, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x5d8(%rbp)	 RIP: 421ab1	 Bytes: 6
  %loadMem_421ab1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421ab1 = call %struct.Memory* @routine_movl__edx__MINUS0x5d8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421ab1)
  store %struct.Memory* %call_421ab1, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rsi	 RIP: 421ab7	 Bytes: 3
  %loadMem_421ab7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421ab7 = call %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421ab7)
  store %struct.Memory* %call_421ab7, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x5d0(%rbp,%rsi,4)	 RIP: 421aba	 Bytes: 7
  %loadMem_421aba = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421aba = call %struct.Memory* @routine_movl__eax__MINUS0x5d0__rbp__rsi_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421aba)
  store %struct.Memory* %call_421aba, %struct.Memory** %MEMORY

  ; Code: movl -0x1c(%rbp), %eax	 RIP: 421ac1	 Bytes: 3
  %loadMem_421ac1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421ac1 = call %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421ac1)
  store %struct.Memory* %call_421ac1, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 421ac4	 Bytes: 3
  %loadMem_421ac4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421ac4 = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421ac4)
  store %struct.Memory* %call_421ac4, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 421ac7	 Bytes: 3
  %loadMem_421ac7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421ac7 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421ac7)
  store %struct.Memory* %call_421ac7, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rsi	 RIP: 421aca	 Bytes: 3
  %loadMem_421aca = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421aca = call %struct.Memory* @routine_movslq__eax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421aca)
  store %struct.Memory* %call_421aca, %struct.Memory** %MEMORY

  ; Code: movl $0x1, 0xaaf6b0(,%rsi,4)	 RIP: 421acd	 Bytes: 11
  %loadMem_421acd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421acd = call %struct.Memory* @routine_movl__0x1__0xaaf6b0___rsi_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421acd)
  store %struct.Memory* %call_421acd, %struct.Memory** %MEMORY

  ; Code: .L_421ad8:	 RIP: 421ad8	 Bytes: 0
  br label %block_.L_421ad8
block_.L_421ad8:

  ; Code: jmpq .L_421add	 RIP: 421ad8	 Bytes: 5
  %loadMem_421ad8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421ad8 = call %struct.Memory* @routine_jmpq_.L_421add(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421ad8, i64 5, i64 5)
  store %struct.Memory* %call_421ad8, %struct.Memory** %MEMORY

  br label %block_.L_421add

  ; Code: .L_421add:	 RIP: 421add	 Bytes: 0
block_.L_421add:

  ; Code: jmpq .L_421ae2	 RIP: 421add	 Bytes: 5
  %loadMem_421add = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421add = call %struct.Memory* @routine_jmpq_.L_421ae2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421add, i64 5, i64 5)
  store %struct.Memory* %call_421add, %struct.Memory** %MEMORY

  br label %block_.L_421ae2

  ; Code: .L_421ae2:	 RIP: 421ae2	 Bytes: 0
block_.L_421ae2:

  ; Code: jmpq .L_420f78	 RIP: 421ae2	 Bytes: 5
  %loadMem_421ae2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421ae2 = call %struct.Memory* @routine_jmpq_.L_420f78(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421ae2, i64 -2922, i64 5)
  store %struct.Memory* %call_421ae2, %struct.Memory** %MEMORY

  br label %block_.L_420f78

  ; Code: .L_421ae7:	 RIP: 421ae7	 Bytes: 0
block_.L_421ae7:

  ; Code: jmpq .L_421aec	 RIP: 421ae7	 Bytes: 5
  %loadMem_421ae7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421ae7 = call %struct.Memory* @routine_jmpq_.L_421aec(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421ae7, i64 5, i64 5)
  store %struct.Memory* %call_421ae7, %struct.Memory** %MEMORY

  br label %block_.L_421aec

  ; Code: .L_421aec:	 RIP: 421aec	 Bytes: 0
block_.L_421aec:

  ; Code: movl -0x5e0(%rbp), %eax	 RIP: 421aec	 Bytes: 6
  %loadMem_421aec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421aec = call %struct.Memory* @routine_movl_MINUS0x5e0__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421aec)
  store %struct.Memory* %call_421aec, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 421af2	 Bytes: 3
  %loadMem_421af2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421af2 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421af2)
  store %struct.Memory* %call_421af2, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x5e0(%rbp)	 RIP: 421af5	 Bytes: 6
  %loadMem_421af5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421af5 = call %struct.Memory* @routine_movl__eax__MINUS0x5e0__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421af5)
  store %struct.Memory* %call_421af5, %struct.Memory** %MEMORY

  ; Code: jmpq .L_420f5f	 RIP: 421afb	 Bytes: 5
  %loadMem_421afb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421afb = call %struct.Memory* @routine_jmpq_.L_420f5f(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421afb, i64 -2972, i64 5)
  store %struct.Memory* %call_421afb, %struct.Memory** %MEMORY

  br label %block_.L_420f5f

  ; Code: .L_421b00:	 RIP: 421b00	 Bytes: 0
block_.L_421b00:

  ; Code: movl $0x0, -0x20(%rbp)	 RIP: 421b00	 Bytes: 7
  %loadMem_421b00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421b00 = call %struct.Memory* @routine_movl__0x0__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421b00)
  store %struct.Memory* %call_421b00, %struct.Memory** %MEMORY

  ; Code: .L_421b07:	 RIP: 421b07	 Bytes: 0
  br label %block_.L_421b07
block_.L_421b07:

  ; Code: movl -0x20(%rbp), %eax	 RIP: 421b07	 Bytes: 3
  %loadMem_421b07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421b07 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421b07)
  store %struct.Memory* %call_421b07, %struct.Memory** %MEMORY

  ; Code: cmpl -0x5d8(%rbp), %eax	 RIP: 421b0a	 Bytes: 6
  %loadMem_421b0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421b0a = call %struct.Memory* @routine_cmpl_MINUS0x5d8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421b0a)
  store %struct.Memory* %call_421b0a, %struct.Memory** %MEMORY

  ; Code: jge .L_421be0	 RIP: 421b10	 Bytes: 6
  %loadMem_421b10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421b10 = call %struct.Memory* @routine_jge_.L_421be0(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421b10, i8* %BRANCH_TAKEN, i64 208, i64 6, i64 6)
  store %struct.Memory* %call_421b10, %struct.Memory** %MEMORY

  %loadBr_421b10 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421b10 = icmp eq i8 %loadBr_421b10, 1
  br i1 %cmpBr_421b10, label %block_.L_421be0, label %block_421b16

block_421b16:
  ; Code: movslq -0x20(%rbp), %rax	 RIP: 421b16	 Bytes: 4
  %loadMem_421b16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421b16 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421b16)
  store %struct.Memory* %call_421b16, %struct.Memory** %MEMORY

  ; Code: movslq -0x5d0(%rbp,%rax,4), %rax	 RIP: 421b1a	 Bytes: 8
  %loadMem_421b1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421b1a = call %struct.Memory* @routine_movslq_MINUS0x5d0__rbp__rax_4____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421b1a)
  store %struct.Memory* %call_421b1a, %struct.Memory** %MEMORY

  ; Code: cmpl $0x1, 0xaaf6b0(,%rax,4)	 RIP: 421b22	 Bytes: 8
  %loadMem_421b22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421b22 = call %struct.Memory* @routine_cmpl__0x1__0xaaf6b0___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421b22)
  store %struct.Memory* %call_421b22, %struct.Memory** %MEMORY

  ; Code: jne .L_421b35	 RIP: 421b2a	 Bytes: 6
  %loadMem_421b2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421b2a = call %struct.Memory* @routine_jne_.L_421b35(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421b2a, i8* %BRANCH_TAKEN, i64 11, i64 6, i64 6)
  store %struct.Memory* %call_421b2a, %struct.Memory** %MEMORY

  %loadBr_421b2a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_421b2a = icmp eq i8 %loadBr_421b2a, 1
  br i1 %cmpBr_421b2a, label %block_.L_421b35, label %block_421b30

block_421b30:
  ; Code: jmpq .L_421bbb	 RIP: 421b30	 Bytes: 5
  %loadMem_421b30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421b30 = call %struct.Memory* @routine_jmpq_.L_421bbb(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421b30, i64 139, i64 5)
  store %struct.Memory* %call_421b30, %struct.Memory** %MEMORY

  br label %block_.L_421bbb

  ; Code: .L_421b35:	 RIP: 421b35	 Bytes: 0
block_.L_421b35:

  ; Code: movq $0x57ad9b, %rdi	 RIP: 421b35	 Bytes: 10
  %loadMem_421b35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421b35 = call %struct.Memory* @routine_movq__0x57ad9b___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421b35)
  store %struct.Memory* %call_421b35, %struct.Memory** %MEMORY

  ; Code: movl $0x73d, %esi	 RIP: 421b3f	 Bytes: 5
  %loadMem_421b3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421b3f = call %struct.Memory* @routine_movl__0x73d___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421b3f)
  store %struct.Memory* %call_421b3f, %struct.Memory** %MEMORY

  ; Code: movq $0x57b2ac, %rdx	 RIP: 421b44	 Bytes: 10
  %loadMem_421b44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421b44 = call %struct.Memory* @routine_movq__0x57b2ac___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421b44)
  store %struct.Memory* %call_421b44, %struct.Memory** %MEMORY

  ; Code: movl $0x14, %eax	 RIP: 421b4e	 Bytes: 5
  %loadMem_421b4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421b4e = call %struct.Memory* @routine_movl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421b4e)
  store %struct.Memory* %call_421b4e, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rcx	 RIP: 421b53	 Bytes: 4
  %loadMem_421b53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421b53 = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421b53)
  store %struct.Memory* %call_421b53, %struct.Memory** %MEMORY

  ; Code: movl -0x5d0(%rbp,%rcx,4), %r8d	 RIP: 421b57	 Bytes: 8
  %loadMem_421b57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421b57 = call %struct.Memory* @routine_movl_MINUS0x5d0__rbp__rcx_4____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421b57)
  store %struct.Memory* %call_421b57, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x5ec(%rbp)	 RIP: 421b5f	 Bytes: 6
  %loadMem_421b5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421b5f = call %struct.Memory* @routine_movl__eax__MINUS0x5ec__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421b5f)
  store %struct.Memory* %call_421b5f, %struct.Memory** %MEMORY

  ; Code: movl %r8d, %eax	 RIP: 421b65	 Bytes: 3
  %loadMem_421b65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421b65 = call %struct.Memory* @routine_movl__r8d___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421b65)
  store %struct.Memory* %call_421b65, %struct.Memory** %MEMORY

  ; Code: movq %rdx, -0x5f8(%rbp)	 RIP: 421b68	 Bytes: 7
  %loadMem_421b68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421b68 = call %struct.Memory* @routine_movq__rdx__MINUS0x5f8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421b68)
  store %struct.Memory* %call_421b68, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 421b6f	 Bytes: 1
  %loadMem_421b6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421b6f = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421b6f)
  store %struct.Memory* %call_421b6f, %struct.Memory** %MEMORY

  ; Code: movl -0x5ec(%rbp), %r8d	 RIP: 421b70	 Bytes: 7
  %loadMem_421b70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421b70 = call %struct.Memory* @routine_movl_MINUS0x5ec__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421b70)
  store %struct.Memory* %call_421b70, %struct.Memory** %MEMORY

  ; Code: idivl %r8d	 RIP: 421b77	 Bytes: 3
  %loadMem_421b77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421b77 = call %struct.Memory* @routine_idivl__r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421b77)
  store %struct.Memory* %call_421b77, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 421b7a	 Bytes: 3
  %loadMem_421b7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421b7a = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421b7a)
  store %struct.Memory* %call_421b7a, %struct.Memory** %MEMORY

  ; Code: movslq -0x20(%rbp), %rcx	 RIP: 421b7d	 Bytes: 4
  %loadMem_421b7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421b7d = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421b7d)
  store %struct.Memory* %call_421b7d, %struct.Memory** %MEMORY

  ; Code: movl -0x5d0(%rbp,%rcx,4), %r9d	 RIP: 421b81	 Bytes: 8
  %loadMem_421b81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421b81 = call %struct.Memory* @routine_movl_MINUS0x5d0__rbp__rcx_4____r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421b81)
  store %struct.Memory* %call_421b81, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x5fc(%rbp)	 RIP: 421b89	 Bytes: 6
  %loadMem_421b89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421b89 = call %struct.Memory* @routine_movl__eax__MINUS0x5fc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421b89)
  store %struct.Memory* %call_421b89, %struct.Memory** %MEMORY

  ; Code: movl %r9d, %eax	 RIP: 421b8f	 Bytes: 3
  %loadMem_421b8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421b8f = call %struct.Memory* @routine_movl__r9d___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421b8f)
  store %struct.Memory* %call_421b8f, %struct.Memory** %MEMORY

  ; Code: cltd	 RIP: 421b92	 Bytes: 1
  %loadMem_421b92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421b92 = call %struct.Memory* @routine_cltd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421b92)
  store %struct.Memory* %call_421b92, %struct.Memory** %MEMORY

  ; Code: idivl %r8d	 RIP: 421b93	 Bytes: 3
  %loadMem_421b93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421b93 = call %struct.Memory* @routine_idivl__r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421b93)
  store %struct.Memory* %call_421b93, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %edx	 RIP: 421b96	 Bytes: 3
  %loadMem_421b96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421b96 = call %struct.Memory* @routine_subl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421b96)
  store %struct.Memory* %call_421b96, %struct.Memory** %MEMORY

  ; Code: movq -0x5f8(%rbp), %rcx	 RIP: 421b99	 Bytes: 7
  %loadMem_421b99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421b99 = call %struct.Memory* @routine_movq_MINUS0x5f8__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421b99)
  store %struct.Memory* %call_421b99, %struct.Memory** %MEMORY

  ; Code: movl %edx, -0x600(%rbp)	 RIP: 421ba0	 Bytes: 6
  %loadMem_421ba0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421ba0 = call %struct.Memory* @routine_movl__edx__MINUS0x600__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421ba0)
  store %struct.Memory* %call_421ba0, %struct.Memory** %MEMORY

  ; Code: movq %rcx, %rdx	 RIP: 421ba6	 Bytes: 3
  %loadMem_421ba6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421ba6 = call %struct.Memory* @routine_movq__rcx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421ba6)
  store %struct.Memory* %call_421ba6, %struct.Memory** %MEMORY

  ; Code: movl -0x5fc(%rbp), %ecx	 RIP: 421ba9	 Bytes: 6
  %loadMem_421ba9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421ba9 = call %struct.Memory* @routine_movl_MINUS0x5fc__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421ba9)
  store %struct.Memory* %call_421ba9, %struct.Memory** %MEMORY

  ; Code: movl -0x600(%rbp), %r8d	 RIP: 421baf	 Bytes: 7
  %loadMem_421baf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421baf = call %struct.Memory* @routine_movl_MINUS0x600__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421baf)
  store %struct.Memory* %call_421baf, %struct.Memory** %MEMORY

  ; Code: callq .abortgo	 RIP: 421bb6	 Bytes: 5
  %loadMem1_421bb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call1_421bb6 = call %struct.Memory* @routine_callq_.abortgo(%struct.State* %0, i64  0, %struct.Memory* %loadMem1_421bb6, i64 197850, i64 5, i64 5)
  store %struct.Memory* %call1_421bb6, %struct.Memory** %MEMORY

  %loadMem2_421bb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_421bb6 = load i64, i64* %3
  %call2_421bb6 = call %struct.Memory* @sub_452090.abortgo(%struct.State* %0, i64  %loadPC_421bb6, %struct.Memory* %loadMem2_421bb6)
  store %struct.Memory* %call2_421bb6, %struct.Memory** %MEMORY

  ; Code: .L_421bbb:	 RIP: 421bbb	 Bytes: 0
  br label %block_.L_421bbb
block_.L_421bbb:

  ; Code: movslq -0x20(%rbp), %rax	 RIP: 421bbb	 Bytes: 4
  %loadMem_421bbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421bbb = call %struct.Memory* @routine_movslq_MINUS0x20__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421bbb)
  store %struct.Memory* %call_421bbb, %struct.Memory** %MEMORY

  ; Code: movslq -0x5d0(%rbp,%rax,4), %rax	 RIP: 421bbf	 Bytes: 8
  %loadMem_421bbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421bbf = call %struct.Memory* @routine_movslq_MINUS0x5d0__rbp__rax_4____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421bbf)
  store %struct.Memory* %call_421bbf, %struct.Memory** %MEMORY

  ; Code: movl $0x0, 0xaaf6b0(,%rax,4)	 RIP: 421bc7	 Bytes: 11
  %loadMem_421bc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421bc7 = call %struct.Memory* @routine_movl__0x0__0xaaf6b0___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421bc7)
  store %struct.Memory* %call_421bc7, %struct.Memory** %MEMORY

  ; Code: movl -0x20(%rbp), %eax	 RIP: 421bd2	 Bytes: 3
  %loadMem_421bd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421bd2 = call %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421bd2)
  store %struct.Memory* %call_421bd2, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 421bd5	 Bytes: 3
  %loadMem_421bd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421bd5 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421bd5)
  store %struct.Memory* %call_421bd5, %struct.Memory** %MEMORY

  ; Code: movl %eax, -0x20(%rbp)	 RIP: 421bd8	 Bytes: 3
  %loadMem_421bd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421bd8 = call %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421bd8)
  store %struct.Memory* %call_421bd8, %struct.Memory** %MEMORY

  ; Code: jmpq .L_421b07	 RIP: 421bdb	 Bytes: 5
  %loadMem_421bdb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421bdb = call %struct.Memory* @routine_jmpq_.L_421b07(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421bdb, i64 -212, i64 5)
  store %struct.Memory* %call_421bdb, %struct.Memory** %MEMORY

  br label %block_.L_421b07

  ; Code: .L_421be0:	 RIP: 421be0	 Bytes: 0
block_.L_421be0:

  ; Code: movl -0x5e4(%rbp), %eax	 RIP: 421be0	 Bytes: 6
  %loadMem_421be0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421be0 = call %struct.Memory* @routine_movl_MINUS0x5e4__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421be0)
  store %struct.Memory* %call_421be0, %struct.Memory** %MEMORY

  ; Code: addq $0x600, %rsp	 RIP: 421be6	 Bytes: 7
  %loadMem_421be6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421be6 = call %struct.Memory* @routine_addq__0x600___rsp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421be6)
  store %struct.Memory* %call_421be6, %struct.Memory** %MEMORY

  ; Code: popq %rbp	 RIP: 421bed	 Bytes: 1
  %loadMem_421bed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421bed = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421bed)
  store %struct.Memory* %call_421bed, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 421bee	 Bytes: 1
  %loadMem_421bee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_421bee = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_421bee)
  store %struct.Memory* %call_421bee, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_421bee
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

define %struct.Memory* @routine_subq__0x600___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 1536)
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__esi__MINUS0xc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone, %struct.State* nocapture readnone dereferenceable(3376), i64, i64) #8 {
  %5 = trunc i64 %3 to i32
  %6 = inttoptr i64 %2 to i32*
  store i32 %5, i32* %6
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__0x0__MINUS0x5d4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 1492
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__0x0__MINUS0x5d8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 1496
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
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

define %struct.Memory* @routine_subl_MINUS0xc__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = sub i64 %13, 12
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__eax__MINUS0x5dc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1500
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__0x0__MINUS0x5e4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 1508
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
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

define %struct.Memory* @routine_cmpl__0x1__MINUS0xc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
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

define %struct.Memory* @routine_je_.L_420e76(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_cmpl__0x2__MINUS0xc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 2)
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

define %struct.Memory* @routine_jne_.L_420e7b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_jmpq_.L_420ea3(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__0x57ad9b___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 ptrtoint( %G__0x57ad9b_type* @G__0x57ad9b to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl__0x6b9___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 1721)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__0x57b28d___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G__0x57b28d_type* @G__0x57b28d to i64))
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


define %struct.Memory* @routine_cmpl__0x0__0xaaf6a0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0xaaf6a0_type* @G_0xaaf6a0 to i64), i64 0)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_jne_.L_420ed7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0xaaf6b0___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0xaaf6b0_type* @G__0xaaf6b0 to i64))
  ret %struct.Memory* %11
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


define %struct.Memory* @routine_movl__0x640___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 1600)
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


define %struct.Memory* @routine_movq__rax___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %12)
  ret %struct.Memory* %15
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


define %struct.Memory* @routine_movl__0x1__0xaaf6a0(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC
  %8 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0xaaf6a0_type* @G_0xaaf6a0 to i64), i64 1)
  ret %struct.Memory* %8
}


define %struct.Memory* @routine_movl__0x15__MINUS0x1c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 21)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_cmpl__0x190__MINUS0x1c__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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

define %struct.Memory* @routine_jge_.L_420f55(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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


define %struct.Memory* @routine_je_.L_420f42(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIhEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i8*
  %6 = load i8, i8* %5
  %7 = sext i8 %6 to i64
  %8 = and i64 %7, 4294967295
  store i64 %8, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %17 = add i64 %16, %15
  %18 = load i64, i64* %PC
  %19 = add i64 %18, 4
  store i64 %19, i64* %PC
  %20 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIhEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %17)
  ret %struct.Memory* %20
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



define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
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


define %struct.Memory* @routine_movl_MINUS0x5d8__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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


define %struct.Memory* @routine_movl__edx__MINUS0x5d8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1496
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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


define %struct.Memory* @routine_movl__eax__MINUS0x5d0__rbp__rsi_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RSI
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -1488
  %19 = add i64 %18, %17
  %20 = load i32, i32* %EAX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %21)
  ret %struct.Memory* %24
}


define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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


define %struct.Memory* @routine_movl__0x1__0xaaf6b0___rsi_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = mul i64 %9, 4
  %11 = add i64 %10, 11204272
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 11
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %11, i64 1)
  ret %struct.Memory* %14
}


define %struct.Memory* @routine_jmpq_.L_420f47(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
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


define %struct.Memory* @routine_jmpq_.L_420ede(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movl__0x0__MINUS0x5e0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 1504
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_cmpl__0x4__MINUS0x5e0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 1504
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 4)
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

define %struct.Memory* @routine_jg_.L_421b00(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movl_MINUS0x5d8__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 1496
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__eax__MINUS0x5e8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1512
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_MINUS0x5d4__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 1492
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

define %struct.Memory* @routine_cmpl_MINUS0x5e8__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 1512
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_421ae7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movslq_MINUS0x5d4__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 1492
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x5d0__rbp__rax_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %18 = add i64 %15, -1488
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %19)
  ret %struct.Memory* %22
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


define %struct.Memory* @routine_movl_MINUS0x5d4__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1492
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movl__ecx__MINUS0x5d4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1492
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}




define %struct.Memory* @routine_jne_.L_420ffb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0xb9a0a0___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0xb9a0a0_type* @G__0xb9a0a0 to i64))
  ret %struct.Memory* %11
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

define %struct.Memory* @routine_imulq__0x24___rcx___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 36)
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


define %struct.Memory* @routine_movsbl_0x1d__rax____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 29
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIhEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64* nocapture, i64, i64) #0 {
  %6 = and i64 %4, %3
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

define %struct.Memory* @routine_andl__0x4___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ANDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 4)
  ret %struct.Memory* %12
}




define %struct.Memory* @routine_jne_.L_42104c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_movsbl_0x20__rax____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 32
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIhEiEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_cmpl__0x1___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 1)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_42104c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_jne_.L_421051(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movq__0xb01180___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0xb01180_type* @G__0xb01180 to i64))
  ret %struct.Memory* %11
}






























define %struct.Memory* @routine_jmpq_.L_420f78(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_jne_.L_42107b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define %struct.Memory* @routine_addl_MINUS0x5e4__rbp____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 1508
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 6
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_movl__edx__MINUS0x5e4__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1508
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jmpq_.L_421ae2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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


define %struct.Memory* @routine_je_.L_4211c6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_cmpl__0x0__0xaaf6b0___rcx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = mul i64 %9, 4
  %11 = add i64 %10, 11204272
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 8
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %11, i64 0)
  ret %struct.Memory* %14
}


define %struct.Memory* @routine_jne_.L_4211c6(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_cmpl_MINUS0xc__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_je_.L_421191(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




























define %struct.Memory* @routine_cmpl_MINUS0x5dc__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 1500
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}






define %struct.Memory* @routine_addl__0x28___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 40)
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












































define %struct.Memory* @routine_movslq__eax___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}














define %struct.Memory* @routine_je_.L_421311(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_jne_.L_421311(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_je_.L_4212dc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












































define %struct.Memory* @routine_subl__0x2___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 2)
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




























































define %struct.Memory* @routine_je_.L_42145c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_jne_.L_42145c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_je_.L_421427(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












































define %struct.Memory* @routine_subl__0x28___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 40)
  ret %struct.Memory* %12
}




















































































define %struct.Memory* @routine_je_.L_4215a7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_jne_.L_4215a7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_je_.L_421572(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












































define %struct.Memory* @routine_addl__0x2___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %9, i64 2)
  ret %struct.Memory* %12
}










































































define %struct.Memory* @routine_cmpl__0x0__MINUS0x5e0__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = sub i64 %9, 1504
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_jne_.L_421add(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_jne_.L_4216fd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






































define %struct.Memory* @routine_je_.L_4216c2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






























define %struct.Memory* @routine_je_.L_4216fd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
























































































define %struct.Memory* @routine_jne_.L_421846(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






































define %struct.Memory* @routine_je_.L_42180b(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






























define %struct.Memory* @routine_je_.L_421846(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
























































































define %struct.Memory* @routine_jne_.L_42198f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






































define %struct.Memory* @routine_je_.L_421954(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






























define %struct.Memory* @routine_je_.L_42198f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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
























































































define %struct.Memory* @routine_jne_.L_421ad8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






































define %struct.Memory* @routine_je_.L_421a9d(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






























define %struct.Memory* @routine_je_.L_421ad8(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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














































































define %struct.Memory* @routine_jmpq_.L_421add(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}






define %struct.Memory* @routine_jmpq_.L_421aec(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movl_MINUS0x5e0__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 1504
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
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


define %struct.Memory* @routine_jmpq_.L_420f5f(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movl__0x0__MINUS0x20__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 0)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_MINUS0x20__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_cmpl_MINUS0x5d8__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = sub i64 %14, 1496
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_jge_.L_421be0(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movslq_MINUS0x20__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movslq_MINUS0x5d0__rbp__rax_4____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %15 = add i64 %12, -1488
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 8
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_cmpl__0x1__0xaaf6b0___rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = mul i64 %9, 4
  %11 = add i64 %10, 11204272
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 8
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %11, i64 1)
  ret %struct.Memory* %14
}


define %struct.Memory* @routine_jne_.L_421b35(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_421bbb(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_movl__0x73d___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 1853)
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movq__0x57b2ac___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G__0x57b2ac_type* @G__0x57b2ac to i64))
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


define %struct.Memory* @routine_movslq_MINUS0x20__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x5d0__rbp__rcx_4____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = bitcast i32* %R8D to i64*
  %16 = load i64, i64* %RBP
  %17 = load i64, i64* %RCX
  %18 = mul i64 %17, 4
  %19 = add i64 %16, -1488
  %20 = add i64 %19, %18
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 8
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %15, i64 %20)
  ret %struct.Memory* %23
}


define %struct.Memory* @routine_movl__eax__MINUS0x5ec__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1516
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


define %struct.Memory* @routine_movq__rdx__MINUS0x5f8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1528
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


define %struct.Memory* @routine_movl_MINUS0x5ec__rbp____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 1516
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
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

define %struct.Memory* @routine_idivl__r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R8D = bitcast %union.anon* %8 to i32*
  %9 = load i32, i32* %R8D
  %10 = zext i32 %9 to i64
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 3
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %10)
  ret %struct.Memory* %13
}






define %struct.Memory* @routine_movl_MINUS0x5d0__rbp__rcx_4____r9d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = bitcast i32* %R9D to i64*
  %16 = load i64, i64* %RBP
  %17 = load i64, i64* %RCX
  %18 = mul i64 %17, 4
  %19 = add i64 %16, -1488
  %20 = add i64 %19, %18
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 8
  store i64 %22, i64* %PC
  %23 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %15, i64 %20)
  ret %struct.Memory* %23
}


define %struct.Memory* @routine_movl__eax__MINUS0x5fc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1532
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl__r9d___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RAX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %R9D
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


define %struct.Memory* @routine_movq_MINUS0x5f8__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1528
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__edx__MINUS0x600__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1536
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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


define %struct.Memory* @routine_movl_MINUS0x5fc__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 1532
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_MINUS0x600__rbp____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 1536
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}








define %struct.Memory* @routine_movl__0x0__0xaaf6b0___rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = mul i64 %9, 4
  %11 = add i64 %10, 11204272
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 11
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %11, i64 0)
  ret %struct.Memory* %14
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


define %struct.Memory* @routine_jmpq_.L_421b07(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}


define %struct.Memory* @routine_movl_MINUS0x5e4__rbp____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = sub i64 %12, 1508
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

define %struct.Memory* @routine_addq__0x600___rsp(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSP, i64 %9, i64 1536)
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

