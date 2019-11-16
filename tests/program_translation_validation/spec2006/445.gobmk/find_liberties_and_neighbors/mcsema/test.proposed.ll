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
%G_0x99da04_type = type <{ [4 x i8] }>
@G_0x99da04= global %G_0x99da04_type <{ [4 x i8] c"\00\00\00\00" }>
%G_0x99da08_type = type <{ [4 x i8] }>
@G_0x99da08= global %G_0x99da08_type <{ [4 x i8] c"\00\00\00\00" }>
%G__0xa7f430_type = type <{ [8 x i8] }>
@G__0xa7f430= global %G__0xa7f430_type <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>


define %struct.Memory* @find_liberties_and_neighbors(%struct.State* noalias , i64, %struct.Memory* noalias) alwaysinline  {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8

  ; Code: .find_liberties_and_neighbors:	 RIP: 408450	 Bytes: 0
  ; Code: pushq %rbp	 RIP: 408450	 Bytes: 1
  %loadMem_408450 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408450 = call %struct.Memory* @routine_pushq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408450)
  store %struct.Memory* %call_408450, %struct.Memory** %MEMORY

  ; Code: movq %rsp, %rbp	 RIP: 408451	 Bytes: 3
  %loadMem_408451 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408451 = call %struct.Memory* @routine_movq__rsp___rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408451)
  store %struct.Memory* %call_408451, %struct.Memory** %MEMORY

  ; Code: movq $0xa7f430, %rax	 RIP: 408454	 Bytes: 10
  %loadMem_408454 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408454 = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408454)
  store %struct.Memory* %call_408454, %struct.Memory** %MEMORY

  ; Code: movl $0x3, %ecx	 RIP: 40845e	 Bytes: 5
  %loadMem_40845e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40845e = call %struct.Memory* @routine_movl__0x3___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40845e)
  store %struct.Memory* %call_40845e, %struct.Memory** %MEMORY

  ; Code: movl %edi, -0x4(%rbp)	 RIP: 408463	 Bytes: 3
  %loadMem_408463 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408463 = call %struct.Memory* @routine_movl__edi__MINUS0x4__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408463)
  store %struct.Memory* %call_408463, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rdx	 RIP: 408466	 Bytes: 4
  %loadMem_408466 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408466 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408466)
  store %struct.Memory* %call_408466, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40846a	 Bytes: 7
  %loadMem_40846a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40846a = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40846a)
  store %struct.Memory* %call_40846a, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 408471	 Bytes: 3
  %loadMem_408471 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408471 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408471)
  store %struct.Memory* %call_408471, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rsi	 RIP: 408474	 Bytes: 3
  %loadMem_408474 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408474 = call %struct.Memory* @routine_addq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408474)
  store %struct.Memory* %call_408474, %struct.Memory** %MEMORY

  ; Code: subl (%rsi), %ecx	 RIP: 408477	 Bytes: 2
  %loadMem_408477 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408477 = call %struct.Memory* @routine_subl___rsi____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408477)
  store %struct.Memory* %call_408477, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0xc(%rbp)	 RIP: 408479	 Bytes: 3
  %loadMem_408479 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408479 = call %struct.Memory* @routine_movl__ecx__MINUS0xc__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408479)
  store %struct.Memory* %call_408479, %struct.Memory** %MEMORY

  ; Code: movl 0x99da04, %ecx	 RIP: 40847c	 Bytes: 7
  %loadMem_40847c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40847c = call %struct.Memory* @routine_movl_0x99da04___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40847c)
  store %struct.Memory* %call_40847c, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 408483	 Bytes: 3
  %loadMem_408483 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408483 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408483)
  store %struct.Memory* %call_408483, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x99da04	 RIP: 408486	 Bytes: 7
  %loadMem_408486 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408486 = call %struct.Memory* @routine_movl__ecx__0x99da04(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408486)
  store %struct.Memory* %call_408486, %struct.Memory** %MEMORY

  ; Code: movl 0x99da08, %ecx	 RIP: 40848d	 Bytes: 7
  %loadMem_40848d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40848d = call %struct.Memory* @routine_movl_0x99da08___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40848d)
  store %struct.Memory* %call_40848d, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 408494	 Bytes: 3
  %loadMem_408494 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408494 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408494)
  store %struct.Memory* %call_408494, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x99da08	 RIP: 408497	 Bytes: 7
  %loadMem_408497 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408497 = call %struct.Memory* @routine_movl__ecx__0x99da08(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408497)
  store %struct.Memory* %call_408497, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rdx	 RIP: 40849e	 Bytes: 4
  %loadMem_40849e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40849e = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40849e)
  store %struct.Memory* %call_40849e, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 4084a2	 Bytes: 7
  %loadMem_4084a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4084a2 = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4084a2)
  store %struct.Memory* %call_4084a2, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 4084a9	 Bytes: 3
  %loadMem_4084a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4084a9 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4084a9)
  store %struct.Memory* %call_4084a9, %struct.Memory** %MEMORY

  ; Code: movl 0x8(%rax), %ecx	 RIP: 4084ac	 Bytes: 3
  %loadMem_4084ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4084ac = call %struct.Memory* @routine_movl_0x8__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4084ac)
  store %struct.Memory* %call_4084ac, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x8(%rbp)	 RIP: 4084af	 Bytes: 3
  %loadMem_4084af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4084af = call %struct.Memory* @routine_movl__ecx__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4084af)
  store %struct.Memory* %call_4084af, %struct.Memory** %MEMORY

  ; Code: .L_4084b2:	 RIP: 4084b2	 Bytes: 0
  br label %block_.L_4084b2
block_.L_4084b2:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 4084b2	 Bytes: 3
  %loadMem_4084b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4084b2 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4084b2)
  store %struct.Memory* %call_4084b2, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 4084b5	 Bytes: 3
  %loadMem_4084b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4084b5 = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4084b5)
  store %struct.Memory* %call_4084b5, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 4084b8	 Bytes: 3
  %loadMem_4084b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4084b8 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4084b8)
  store %struct.Memory* %call_4084b8, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 4084bb	 Bytes: 8
  %loadMem_4084bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4084bb = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4084bb)
  store %struct.Memory* %call_4084bb, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 4084c3	 Bytes: 3
  %loadMem_4084c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4084c3 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4084c3)
  store %struct.Memory* %call_4084c3, %struct.Memory** %MEMORY

  ; Code: jne .L_408584	 RIP: 4084c6	 Bytes: 6
  %loadMem_4084c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4084c6 = call %struct.Memory* @routine_jne_.L_408584(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4084c6, i8* %BRANCH_TAKEN, i64 190, i64 6, i64 6)
  store %struct.Memory* %call_4084c6, %struct.Memory** %MEMORY

  %loadBr_4084c6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4084c6 = icmp eq i8 %loadBr_4084c6, 1
  br i1 %cmpBr_4084c6, label %block_.L_408584, label %block_4084cc

block_4084cc:
  ; Code: movl -0x8(%rbp), %eax	 RIP: 4084cc	 Bytes: 3
  %loadMem_4084cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4084cc = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4084cc)
  store %struct.Memory* %call_4084cc, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 4084cf	 Bytes: 3
  %loadMem_4084cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4084cf = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4084cf)
  store %struct.Memory* %call_4084cf, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 4084d2	 Bytes: 3
  %loadMem_4084d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4084d2 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4084d2)
  store %struct.Memory* %call_4084d2, %struct.Memory** %MEMORY

  ; Code: movl 0xaaadb0(,%rcx,4), %eax	 RIP: 4084d5	 Bytes: 7
  %loadMem_4084d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4084d5 = call %struct.Memory* @routine_movl_0xaaadb0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4084d5)
  store %struct.Memory* %call_4084d5, %struct.Memory** %MEMORY

  ; Code: cmpl 0x99da04, %eax	 RIP: 4084dc	 Bytes: 7
  %loadMem_4084dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4084dc = call %struct.Memory* @routine_cmpl_0x99da04___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4084dc)
  store %struct.Memory* %call_4084dc, %struct.Memory** %MEMORY

  ; Code: je .L_408584	 RIP: 4084e3	 Bytes: 6
  %loadMem_4084e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4084e3 = call %struct.Memory* @routine_je_.L_408584(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4084e3, i8* %BRANCH_TAKEN, i64 161, i64 6, i64 6)
  store %struct.Memory* %call_4084e3, %struct.Memory** %MEMORY

  %loadBr_4084e3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4084e3 = icmp eq i8 %loadBr_4084e3, 1
  br i1 %cmpBr_4084e3, label %block_.L_408584, label %block_4084e9

block_4084e9:
  ; Code: jmpq .L_4084ee	 RIP: 4084e9	 Bytes: 5
  %loadMem_4084e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4084e9 = call %struct.Memory* @routine_jmpq_.L_4084ee(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4084e9, i64 5, i64 5)
  store %struct.Memory* %call_4084e9, %struct.Memory** %MEMORY

  br label %block_.L_4084ee

  ; Code: .L_4084ee:	 RIP: 4084ee	 Bytes: 0
block_.L_4084ee:

  ; Code: movq $0xa7f430, %rax	 RIP: 4084ee	 Bytes: 10
  %loadMem_4084ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4084ee = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4084ee)
  store %struct.Memory* %call_4084ee, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rcx	 RIP: 4084f8	 Bytes: 4
  %loadMem_4084f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4084f8 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4084f8)
  store %struct.Memory* %call_4084f8, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rcx, %rcx	 RIP: 4084fc	 Bytes: 7
  %loadMem_4084fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4084fc = call %struct.Memory* @routine_imulq__0x2e8___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4084fc)
  store %struct.Memory* %call_4084fc, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 408503	 Bytes: 3
  %loadMem_408503 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408503 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408503)
  store %struct.Memory* %call_408503, %struct.Memory** %MEMORY

  ; Code: cmpl $0x14, 0xc(%rax)	 RIP: 408506	 Bytes: 4
  %loadMem_408506 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408506 = call %struct.Memory* @routine_cmpl__0x14__0xc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408506)
  store %struct.Memory* %call_408506, %struct.Memory** %MEMORY

  ; Code: jge .L_408547	 RIP: 40850a	 Bytes: 6
  %loadMem_40850a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40850a = call %struct.Memory* @routine_jge_.L_408547(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40850a, i8* %BRANCH_TAKEN, i64 61, i64 6, i64 6)
  store %struct.Memory* %call_40850a, %struct.Memory** %MEMORY

  %loadBr_40850a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40850a = icmp eq i8 %loadBr_40850a, 1
  br i1 %cmpBr_40850a, label %block_.L_408547, label %block_408510

block_408510:
  ; Code: movq $0xa7f430, %rax	 RIP: 408510	 Bytes: 10
  %loadMem_408510 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408510 = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408510)
  store %struct.Memory* %call_408510, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %ecx	 RIP: 40851a	 Bytes: 3
  %loadMem_40851a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40851a = call %struct.Memory* @routine_movl_MINUS0x8__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40851a)
  store %struct.Memory* %call_40851a, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %ecx	 RIP: 40851d	 Bytes: 3
  %loadMem_40851d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40851d = call %struct.Memory* @routine_addl__0x14___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40851d)
  store %struct.Memory* %call_40851d, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rdx	 RIP: 408520	 Bytes: 4
  %loadMem_408520 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408520 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408520)
  store %struct.Memory* %call_408520, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 408524	 Bytes: 7
  %loadMem_408524 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408524 = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408524)
  store %struct.Memory* %call_408524, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 40852b	 Bytes: 3
  %loadMem_40852b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40852b = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40852b)
  store %struct.Memory* %call_40852b, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rsi	 RIP: 40852e	 Bytes: 3
  %loadMem_40852e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40852e = call %struct.Memory* @routine_addq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40852e)
  store %struct.Memory* %call_40852e, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rdx	 RIP: 408531	 Bytes: 4
  %loadMem_408531 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408531 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408531)
  store %struct.Memory* %call_408531, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 408535	 Bytes: 7
  %loadMem_408535 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408535 = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408535)
  store %struct.Memory* %call_408535, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 40853c	 Bytes: 3
  %loadMem_40853c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40853c = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40853c)
  store %struct.Memory* %call_40853c, %struct.Memory** %MEMORY

  ; Code: movslq 0xc(%rax), %rax	 RIP: 40853f	 Bytes: 4
  %loadMem_40853f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40853f = call %struct.Memory* @routine_movslq_0xc__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40853f)
  store %struct.Memory* %call_40853f, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x10(%rsi,%rax,4)	 RIP: 408543	 Bytes: 4
  %loadMem_408543 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408543 = call %struct.Memory* @routine_movl__ecx__0x10__rsi__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408543)
  store %struct.Memory* %call_408543, %struct.Memory** %MEMORY

  ; Code: .L_408547:	 RIP: 408547	 Bytes: 0
  br label %block_.L_408547
block_.L_408547:

  ; Code: movq $0xa7f430, %rax	 RIP: 408547	 Bytes: 10
  %loadMem_408547 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408547 = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408547)
  store %struct.Memory* %call_408547, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rcx	 RIP: 408551	 Bytes: 4
  %loadMem_408551 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408551 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408551)
  store %struct.Memory* %call_408551, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rcx, %rcx	 RIP: 408555	 Bytes: 7
  %loadMem_408555 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408555 = call %struct.Memory* @routine_imulq__0x2e8___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408555)
  store %struct.Memory* %call_408555, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 40855c	 Bytes: 3
  %loadMem_40855c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40855c = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40855c)
  store %struct.Memory* %call_40855c, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%rax), %edx	 RIP: 40855f	 Bytes: 3
  %loadMem_40855f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40855f = call %struct.Memory* @routine_movl_0xc__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40855f)
  store %struct.Memory* %call_40855f, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 408562	 Bytes: 3
  %loadMem_408562 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408562 = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408562)
  store %struct.Memory* %call_408562, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0xc(%rax)	 RIP: 408565	 Bytes: 3
  %loadMem_408565 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408565 = call %struct.Memory* @routine_movl__edx__0xc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408565)
  store %struct.Memory* %call_408565, %struct.Memory** %MEMORY

  ; Code: movl 0x99da04, %edx	 RIP: 408568	 Bytes: 7
  %loadMem_408568 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408568 = call %struct.Memory* @routine_movl_0x99da04___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408568)
  store %struct.Memory* %call_408568, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %esi	 RIP: 40856f	 Bytes: 3
  %loadMem_40856f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40856f = call %struct.Memory* @routine_movl_MINUS0x8__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40856f)
  store %struct.Memory* %call_40856f, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %esi	 RIP: 408572	 Bytes: 3
  %loadMem_408572 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408572 = call %struct.Memory* @routine_addl__0x14___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408572)
  store %struct.Memory* %call_408572, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rax	 RIP: 408575	 Bytes: 3
  %loadMem_408575 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408575 = call %struct.Memory* @routine_movslq__esi___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408575)
  store %struct.Memory* %call_408575, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0xaaadb0(,%rax,4)	 RIP: 408578	 Bytes: 7
  %loadMem_408578 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408578 = call %struct.Memory* @routine_movl__edx__0xaaadb0___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408578)
  store %struct.Memory* %call_408578, %struct.Memory** %MEMORY

  ; Code: jmpq .L_408657	 RIP: 40857f	 Bytes: 5
  %loadMem_40857f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40857f = call %struct.Memory* @routine_jmpq_.L_408657(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40857f, i64 216, i64 5)
  store %struct.Memory* %call_40857f, %struct.Memory** %MEMORY

  br label %block_.L_408657

  ; Code: .L_408584:	 RIP: 408584	 Bytes: 0
block_.L_408584:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 408584	 Bytes: 3
  %loadMem_408584 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408584 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408584)
  store %struct.Memory* %call_408584, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %eax	 RIP: 408587	 Bytes: 3
  %loadMem_408587 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408587 = call %struct.Memory* @routine_addl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408587)
  store %struct.Memory* %call_408587, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 40858a	 Bytes: 3
  %loadMem_40858a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40858a = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40858a)
  store %struct.Memory* %call_40858a, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 40858d	 Bytes: 8
  %loadMem_40858d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40858d = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40858d)
  store %struct.Memory* %call_40858d, %struct.Memory** %MEMORY

  ; Code: cmpl -0xc(%rbp), %eax	 RIP: 408595	 Bytes: 3
  %loadMem_408595 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408595 = call %struct.Memory* @routine_cmpl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408595)
  store %struct.Memory* %call_408595, %struct.Memory** %MEMORY

  ; Code: jne .L_408652	 RIP: 408598	 Bytes: 6
  %loadMem_408598 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408598 = call %struct.Memory* @routine_jne_.L_408652(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408598, i8* %BRANCH_TAKEN, i64 186, i64 6, i64 6)
  store %struct.Memory* %call_408598, %struct.Memory** %MEMORY

  %loadBr_408598 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_408598 = icmp eq i8 %loadBr_408598, 1
  br i1 %cmpBr_408598, label %block_.L_408652, label %block_40859e

block_40859e:
  ; Code: movq $0xa7f430, %rax	 RIP: 40859e	 Bytes: 10
  %loadMem_40859e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40859e = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40859e)
  store %struct.Memory* %call_40859e, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %ecx	 RIP: 4085a8	 Bytes: 3
  %loadMem_4085a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4085a8 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4085a8)
  store %struct.Memory* %call_4085a8, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %ecx	 RIP: 4085ab	 Bytes: 3
  %loadMem_4085ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4085ab = call %struct.Memory* @routine_addl__0x14___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4085ab)
  store %struct.Memory* %call_4085ab, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 4085ae	 Bytes: 3
  %loadMem_4085ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4085ae = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4085ae)
  store %struct.Memory* %call_4085ae, %struct.Memory** %MEMORY

  ; Code: movslq 0xaab3f0(,%rdx,4), %rdx	 RIP: 4085b1	 Bytes: 8
  %loadMem_4085b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4085b1 = call %struct.Memory* @routine_movslq_0xaab3f0___rdx_4____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4085b1)
  store %struct.Memory* %call_4085b1, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 4085b9	 Bytes: 7
  %loadMem_4085b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4085b9 = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4085b9)
  store %struct.Memory* %call_4085b9, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 4085c0	 Bytes: 3
  %loadMem_4085c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4085c0 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4085c0)
  store %struct.Memory* %call_4085c0, %struct.Memory** %MEMORY

  ; Code: movl 0x2e4(%rax), %ecx	 RIP: 4085c3	 Bytes: 6
  %loadMem_4085c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4085c3 = call %struct.Memory* @routine_movl_0x2e4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4085c3)
  store %struct.Memory* %call_4085c3, %struct.Memory** %MEMORY

  ; Code: cmpl 0x99da08, %ecx	 RIP: 4085c9	 Bytes: 7
  %loadMem_4085c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4085c9 = call %struct.Memory* @routine_cmpl_0x99da08___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4085c9)
  store %struct.Memory* %call_4085c9, %struct.Memory** %MEMORY

  ; Code: je .L_408652	 RIP: 4085d0	 Bytes: 6
  %loadMem_4085d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4085d0 = call %struct.Memory* @routine_je_.L_408652(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4085d0, i8* %BRANCH_TAKEN, i64 130, i64 6, i64 6)
  store %struct.Memory* %call_4085d0, %struct.Memory** %MEMORY

  %loadBr_4085d0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4085d0 = icmp eq i8 %loadBr_4085d0, 1
  br i1 %cmpBr_4085d0, label %block_.L_408652, label %block_4085d6

block_4085d6:
  ; Code: movq $0xa7f430, %rax	 RIP: 4085d6	 Bytes: 10
  %loadMem_4085d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4085d6 = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4085d6)
  store %struct.Memory* %call_4085d6, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %ecx	 RIP: 4085e0	 Bytes: 3
  %loadMem_4085e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4085e0 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4085e0)
  store %struct.Memory* %call_4085e0, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %ecx	 RIP: 4085e3	 Bytes: 3
  %loadMem_4085e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4085e3 = call %struct.Memory* @routine_addl__0x14___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4085e3)
  store %struct.Memory* %call_4085e3, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 4085e6	 Bytes: 3
  %loadMem_4085e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4085e6 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4085e6)
  store %struct.Memory* %call_4085e6, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rdx,4), %ecx	 RIP: 4085e9	 Bytes: 7
  %loadMem_4085e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4085e9 = call %struct.Memory* @routine_movl_0xaab3f0___rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4085e9)
  store %struct.Memory* %call_4085e9, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rdx	 RIP: 4085f0	 Bytes: 4
  %loadMem_4085f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4085f0 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4085f0)
  store %struct.Memory* %call_4085f0, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 4085f4	 Bytes: 7
  %loadMem_4085f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4085f4 = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4085f4)
  store %struct.Memory* %call_4085f4, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 4085fb	 Bytes: 3
  %loadMem_4085fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4085fb = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4085fb)
  store %struct.Memory* %call_4085fb, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rsi	 RIP: 4085fe	 Bytes: 3
  %loadMem_4085fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4085fe = call %struct.Memory* @routine_addq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4085fe)
  store %struct.Memory* %call_4085fe, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rdx	 RIP: 408601	 Bytes: 4
  %loadMem_408601 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408601 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408601)
  store %struct.Memory* %call_408601, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 408605	 Bytes: 7
  %loadMem_408605 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408605 = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408605)
  store %struct.Memory* %call_408605, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 40860c	 Bytes: 3
  %loadMem_40860c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40860c = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40860c)
  store %struct.Memory* %call_40860c, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rdi	 RIP: 40860f	 Bytes: 3
  %loadMem_40860f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40860f = call %struct.Memory* @routine_addq__rdx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40860f)
  store %struct.Memory* %call_40860f, %struct.Memory** %MEMORY

  ; Code: movl 0x60(%rdi), %r8d	 RIP: 408612	 Bytes: 4
  %loadMem_408612 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408612 = call %struct.Memory* @routine_movl_0x60__rdi____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408612)
  store %struct.Memory* %call_408612, %struct.Memory** %MEMORY

  ; Code: movl %r8d, %r9d	 RIP: 408616	 Bytes: 3
  %loadMem_408616 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408616 = call %struct.Memory* @routine_movl__r8d___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408616)
  store %struct.Memory* %call_408616, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %r9d	 RIP: 408619	 Bytes: 4
  %loadMem_408619 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408619 = call %struct.Memory* @routine_addl__0x1___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408619)
  store %struct.Memory* %call_408619, %struct.Memory** %MEMORY

  ; Code: movl %r9d, 0x60(%rdi)	 RIP: 40861d	 Bytes: 4
  %loadMem_40861d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40861d = call %struct.Memory* @routine_movl__r9d__0x60__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40861d)
  store %struct.Memory* %call_40861d, %struct.Memory** %MEMORY

  ; Code: movslq %r8d, %rdx	 RIP: 408621	 Bytes: 3
  %loadMem_408621 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408621 = call %struct.Memory* @routine_movslq__r8d___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408621)
  store %struct.Memory* %call_408621, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x64(%rsi,%rdx,4)	 RIP: 408624	 Bytes: 4
  %loadMem_408624 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408624 = call %struct.Memory* @routine_movl__ecx__0x64__rsi__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408624)
  store %struct.Memory* %call_408624, %struct.Memory** %MEMORY

  ; Code: movl 0x99da08, %ecx	 RIP: 408628	 Bytes: 7
  %loadMem_408628 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408628 = call %struct.Memory* @routine_movl_0x99da08___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408628)
  store %struct.Memory* %call_408628, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %r8d	 RIP: 40862f	 Bytes: 4
  %loadMem_40862f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40862f = call %struct.Memory* @routine_movl_MINUS0x8__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40862f)
  store %struct.Memory* %call_40862f, %struct.Memory** %MEMORY

  ; Code: addl $0x14, %r8d	 RIP: 408633	 Bytes: 4
  %loadMem_408633 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408633 = call %struct.Memory* @routine_addl__0x14___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408633)
  store %struct.Memory* %call_408633, %struct.Memory** %MEMORY

  ; Code: movslq %r8d, %rdx	 RIP: 408637	 Bytes: 3
  %loadMem_408637 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408637 = call %struct.Memory* @routine_movslq__r8d___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408637)
  store %struct.Memory* %call_408637, %struct.Memory** %MEMORY

  ; Code: movslq 0xaab3f0(,%rdx,4), %rdx	 RIP: 40863a	 Bytes: 8
  %loadMem_40863a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40863a = call %struct.Memory* @routine_movslq_0xaab3f0___rdx_4____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40863a)
  store %struct.Memory* %call_40863a, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 408642	 Bytes: 7
  %loadMem_408642 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408642 = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408642)
  store %struct.Memory* %call_408642, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 408649	 Bytes: 3
  %loadMem_408649 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408649 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408649)
  store %struct.Memory* %call_408649, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x2e4(%rax)	 RIP: 40864c	 Bytes: 6
  %loadMem_40864c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40864c = call %struct.Memory* @routine_movl__ecx__0x2e4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40864c)
  store %struct.Memory* %call_40864c, %struct.Memory** %MEMORY

  ; Code: .L_408652:	 RIP: 408652	 Bytes: 0
  br label %block_.L_408652
block_.L_408652:

  ; Code: jmpq .L_408657	 RIP: 408652	 Bytes: 5
  %loadMem_408652 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408652 = call %struct.Memory* @routine_jmpq_.L_408657(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408652, i64 5, i64 5)
  store %struct.Memory* %call_408652, %struct.Memory** %MEMORY

  br label %block_.L_408657

  ; Code: .L_408657:	 RIP: 408657	 Bytes: 0
block_.L_408657:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 408657	 Bytes: 3
  %loadMem_408657 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408657 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408657)
  store %struct.Memory* %call_408657, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 40865a	 Bytes: 3
  %loadMem_40865a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40865a = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40865a)
  store %struct.Memory* %call_40865a, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 40865d	 Bytes: 3
  %loadMem_40865d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40865d = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40865d)
  store %struct.Memory* %call_40865d, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 408660	 Bytes: 8
  %loadMem_408660 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408660 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408660)
  store %struct.Memory* %call_408660, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 408668	 Bytes: 3
  %loadMem_408668 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408668 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408668)
  store %struct.Memory* %call_408668, %struct.Memory** %MEMORY

  ; Code: jne .L_408729	 RIP: 40866b	 Bytes: 6
  %loadMem_40866b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40866b = call %struct.Memory* @routine_jne_.L_408729(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40866b, i8* %BRANCH_TAKEN, i64 190, i64 6, i64 6)
  store %struct.Memory* %call_40866b, %struct.Memory** %MEMORY

  %loadBr_40866b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40866b = icmp eq i8 %loadBr_40866b, 1
  br i1 %cmpBr_40866b, label %block_.L_408729, label %block_408671

block_408671:
  ; Code: movl -0x8(%rbp), %eax	 RIP: 408671	 Bytes: 3
  %loadMem_408671 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408671 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408671)
  store %struct.Memory* %call_408671, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 408674	 Bytes: 3
  %loadMem_408674 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408674 = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408674)
  store %struct.Memory* %call_408674, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 408677	 Bytes: 3
  %loadMem_408677 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408677 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408677)
  store %struct.Memory* %call_408677, %struct.Memory** %MEMORY

  ; Code: movl 0xaaadb0(,%rcx,4), %eax	 RIP: 40867a	 Bytes: 7
  %loadMem_40867a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40867a = call %struct.Memory* @routine_movl_0xaaadb0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40867a)
  store %struct.Memory* %call_40867a, %struct.Memory** %MEMORY

  ; Code: cmpl 0x99da04, %eax	 RIP: 408681	 Bytes: 7
  %loadMem_408681 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408681 = call %struct.Memory* @routine_cmpl_0x99da04___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408681)
  store %struct.Memory* %call_408681, %struct.Memory** %MEMORY

  ; Code: je .L_408729	 RIP: 408688	 Bytes: 6
  %loadMem_408688 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408688 = call %struct.Memory* @routine_je_.L_408729(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408688, i8* %BRANCH_TAKEN, i64 161, i64 6, i64 6)
  store %struct.Memory* %call_408688, %struct.Memory** %MEMORY

  %loadBr_408688 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_408688 = icmp eq i8 %loadBr_408688, 1
  br i1 %cmpBr_408688, label %block_.L_408729, label %block_40868e

block_40868e:
  ; Code: jmpq .L_408693	 RIP: 40868e	 Bytes: 5
  %loadMem_40868e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40868e = call %struct.Memory* @routine_jmpq_.L_408693(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40868e, i64 5, i64 5)
  store %struct.Memory* %call_40868e, %struct.Memory** %MEMORY

  br label %block_.L_408693

  ; Code: .L_408693:	 RIP: 408693	 Bytes: 0
block_.L_408693:

  ; Code: movq $0xa7f430, %rax	 RIP: 408693	 Bytes: 10
  %loadMem_408693 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408693 = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408693)
  store %struct.Memory* %call_408693, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rcx	 RIP: 40869d	 Bytes: 4
  %loadMem_40869d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40869d = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40869d)
  store %struct.Memory* %call_40869d, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rcx, %rcx	 RIP: 4086a1	 Bytes: 7
  %loadMem_4086a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4086a1 = call %struct.Memory* @routine_imulq__0x2e8___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4086a1)
  store %struct.Memory* %call_4086a1, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4086a8	 Bytes: 3
  %loadMem_4086a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4086a8 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4086a8)
  store %struct.Memory* %call_4086a8, %struct.Memory** %MEMORY

  ; Code: cmpl $0x14, 0xc(%rax)	 RIP: 4086ab	 Bytes: 4
  %loadMem_4086ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4086ab = call %struct.Memory* @routine_cmpl__0x14__0xc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4086ab)
  store %struct.Memory* %call_4086ab, %struct.Memory** %MEMORY

  ; Code: jge .L_4086ec	 RIP: 4086af	 Bytes: 6
  %loadMem_4086af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4086af = call %struct.Memory* @routine_jge_.L_4086ec(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4086af, i8* %BRANCH_TAKEN, i64 61, i64 6, i64 6)
  store %struct.Memory* %call_4086af, %struct.Memory** %MEMORY

  %loadBr_4086af = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4086af = icmp eq i8 %loadBr_4086af, 1
  br i1 %cmpBr_4086af, label %block_.L_4086ec, label %block_4086b5

block_4086b5:
  ; Code: movq $0xa7f430, %rax	 RIP: 4086b5	 Bytes: 10
  %loadMem_4086b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4086b5 = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4086b5)
  store %struct.Memory* %call_4086b5, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %ecx	 RIP: 4086bf	 Bytes: 3
  %loadMem_4086bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4086bf = call %struct.Memory* @routine_movl_MINUS0x8__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4086bf)
  store %struct.Memory* %call_4086bf, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 4086c2	 Bytes: 3
  %loadMem_4086c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4086c2 = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4086c2)
  store %struct.Memory* %call_4086c2, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rdx	 RIP: 4086c5	 Bytes: 4
  %loadMem_4086c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4086c5 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4086c5)
  store %struct.Memory* %call_4086c5, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 4086c9	 Bytes: 7
  %loadMem_4086c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4086c9 = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4086c9)
  store %struct.Memory* %call_4086c9, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 4086d0	 Bytes: 3
  %loadMem_4086d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4086d0 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4086d0)
  store %struct.Memory* %call_4086d0, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rsi	 RIP: 4086d3	 Bytes: 3
  %loadMem_4086d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4086d3 = call %struct.Memory* @routine_addq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4086d3)
  store %struct.Memory* %call_4086d3, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rdx	 RIP: 4086d6	 Bytes: 4
  %loadMem_4086d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4086d6 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4086d6)
  store %struct.Memory* %call_4086d6, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 4086da	 Bytes: 7
  %loadMem_4086da = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4086da = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4086da)
  store %struct.Memory* %call_4086da, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 4086e1	 Bytes: 3
  %loadMem_4086e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4086e1 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4086e1)
  store %struct.Memory* %call_4086e1, %struct.Memory** %MEMORY

  ; Code: movslq 0xc(%rax), %rax	 RIP: 4086e4	 Bytes: 4
  %loadMem_4086e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4086e4 = call %struct.Memory* @routine_movslq_0xc__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4086e4)
  store %struct.Memory* %call_4086e4, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x10(%rsi,%rax,4)	 RIP: 4086e8	 Bytes: 4
  %loadMem_4086e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4086e8 = call %struct.Memory* @routine_movl__ecx__0x10__rsi__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4086e8)
  store %struct.Memory* %call_4086e8, %struct.Memory** %MEMORY

  ; Code: .L_4086ec:	 RIP: 4086ec	 Bytes: 0
  br label %block_.L_4086ec
block_.L_4086ec:

  ; Code: movq $0xa7f430, %rax	 RIP: 4086ec	 Bytes: 10
  %loadMem_4086ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4086ec = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4086ec)
  store %struct.Memory* %call_4086ec, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rcx	 RIP: 4086f6	 Bytes: 4
  %loadMem_4086f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4086f6 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4086f6)
  store %struct.Memory* %call_4086f6, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rcx, %rcx	 RIP: 4086fa	 Bytes: 7
  %loadMem_4086fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4086fa = call %struct.Memory* @routine_imulq__0x2e8___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4086fa)
  store %struct.Memory* %call_4086fa, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 408701	 Bytes: 3
  %loadMem_408701 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408701 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408701)
  store %struct.Memory* %call_408701, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%rax), %edx	 RIP: 408704	 Bytes: 3
  %loadMem_408704 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408704 = call %struct.Memory* @routine_movl_0xc__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408704)
  store %struct.Memory* %call_408704, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 408707	 Bytes: 3
  %loadMem_408707 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408707 = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408707)
  store %struct.Memory* %call_408707, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0xc(%rax)	 RIP: 40870a	 Bytes: 3
  %loadMem_40870a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40870a = call %struct.Memory* @routine_movl__edx__0xc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40870a)
  store %struct.Memory* %call_40870a, %struct.Memory** %MEMORY

  ; Code: movl 0x99da04, %edx	 RIP: 40870d	 Bytes: 7
  %loadMem_40870d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40870d = call %struct.Memory* @routine_movl_0x99da04___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40870d)
  store %struct.Memory* %call_40870d, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %esi	 RIP: 408714	 Bytes: 3
  %loadMem_408714 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408714 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408714)
  store %struct.Memory* %call_408714, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %esi	 RIP: 408717	 Bytes: 3
  %loadMem_408717 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408717 = call %struct.Memory* @routine_subl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408717)
  store %struct.Memory* %call_408717, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rax	 RIP: 40871a	 Bytes: 3
  %loadMem_40871a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40871a = call %struct.Memory* @routine_movslq__esi___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40871a)
  store %struct.Memory* %call_40871a, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0xaaadb0(,%rax,4)	 RIP: 40871d	 Bytes: 7
  %loadMem_40871d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40871d = call %struct.Memory* @routine_movl__edx__0xaaadb0___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40871d)
  store %struct.Memory* %call_40871d, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4087fc	 RIP: 408724	 Bytes: 5
  %loadMem_408724 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408724 = call %struct.Memory* @routine_jmpq_.L_4087fc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408724, i64 216, i64 5)
  store %struct.Memory* %call_408724, %struct.Memory** %MEMORY

  br label %block_.L_4087fc

  ; Code: .L_408729:	 RIP: 408729	 Bytes: 0
block_.L_408729:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 408729	 Bytes: 3
  %loadMem_408729 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408729 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408729)
  store %struct.Memory* %call_408729, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %eax	 RIP: 40872c	 Bytes: 3
  %loadMem_40872c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40872c = call %struct.Memory* @routine_subl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40872c)
  store %struct.Memory* %call_40872c, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 40872f	 Bytes: 3
  %loadMem_40872f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40872f = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40872f)
  store %struct.Memory* %call_40872f, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 408732	 Bytes: 8
  %loadMem_408732 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408732 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408732)
  store %struct.Memory* %call_408732, %struct.Memory** %MEMORY

  ; Code: cmpl -0xc(%rbp), %eax	 RIP: 40873a	 Bytes: 3
  %loadMem_40873a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40873a = call %struct.Memory* @routine_cmpl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40873a)
  store %struct.Memory* %call_40873a, %struct.Memory** %MEMORY

  ; Code: jne .L_4087f7	 RIP: 40873d	 Bytes: 6
  %loadMem_40873d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40873d = call %struct.Memory* @routine_jne_.L_4087f7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40873d, i8* %BRANCH_TAKEN, i64 186, i64 6, i64 6)
  store %struct.Memory* %call_40873d, %struct.Memory** %MEMORY

  %loadBr_40873d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40873d = icmp eq i8 %loadBr_40873d, 1
  br i1 %cmpBr_40873d, label %block_.L_4087f7, label %block_408743

block_408743:
  ; Code: movq $0xa7f430, %rax	 RIP: 408743	 Bytes: 10
  %loadMem_408743 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408743 = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408743)
  store %struct.Memory* %call_408743, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %ecx	 RIP: 40874d	 Bytes: 3
  %loadMem_40874d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40874d = call %struct.Memory* @routine_movl_MINUS0x8__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40874d)
  store %struct.Memory* %call_40874d, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 408750	 Bytes: 3
  %loadMem_408750 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408750 = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408750)
  store %struct.Memory* %call_408750, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 408753	 Bytes: 3
  %loadMem_408753 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408753 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408753)
  store %struct.Memory* %call_408753, %struct.Memory** %MEMORY

  ; Code: movslq 0xaab3f0(,%rdx,4), %rdx	 RIP: 408756	 Bytes: 8
  %loadMem_408756 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408756 = call %struct.Memory* @routine_movslq_0xaab3f0___rdx_4____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408756)
  store %struct.Memory* %call_408756, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40875e	 Bytes: 7
  %loadMem_40875e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40875e = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40875e)
  store %struct.Memory* %call_40875e, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 408765	 Bytes: 3
  %loadMem_408765 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408765 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408765)
  store %struct.Memory* %call_408765, %struct.Memory** %MEMORY

  ; Code: movl 0x2e4(%rax), %ecx	 RIP: 408768	 Bytes: 6
  %loadMem_408768 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408768 = call %struct.Memory* @routine_movl_0x2e4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408768)
  store %struct.Memory* %call_408768, %struct.Memory** %MEMORY

  ; Code: cmpl 0x99da08, %ecx	 RIP: 40876e	 Bytes: 7
  %loadMem_40876e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40876e = call %struct.Memory* @routine_cmpl_0x99da08___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40876e)
  store %struct.Memory* %call_40876e, %struct.Memory** %MEMORY

  ; Code: je .L_4087f7	 RIP: 408775	 Bytes: 6
  %loadMem_408775 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408775 = call %struct.Memory* @routine_je_.L_4087f7(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408775, i8* %BRANCH_TAKEN, i64 130, i64 6, i64 6)
  store %struct.Memory* %call_408775, %struct.Memory** %MEMORY

  %loadBr_408775 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_408775 = icmp eq i8 %loadBr_408775, 1
  br i1 %cmpBr_408775, label %block_.L_4087f7, label %block_40877b

block_40877b:
  ; Code: movq $0xa7f430, %rax	 RIP: 40877b	 Bytes: 10
  %loadMem_40877b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40877b = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40877b)
  store %struct.Memory* %call_40877b, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %ecx	 RIP: 408785	 Bytes: 3
  %loadMem_408785 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408785 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408785)
  store %struct.Memory* %call_408785, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %ecx	 RIP: 408788	 Bytes: 3
  %loadMem_408788 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408788 = call %struct.Memory* @routine_subl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408788)
  store %struct.Memory* %call_408788, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 40878b	 Bytes: 3
  %loadMem_40878b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40878b = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40878b)
  store %struct.Memory* %call_40878b, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rdx,4), %ecx	 RIP: 40878e	 Bytes: 7
  %loadMem_40878e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40878e = call %struct.Memory* @routine_movl_0xaab3f0___rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40878e)
  store %struct.Memory* %call_40878e, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rdx	 RIP: 408795	 Bytes: 4
  %loadMem_408795 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408795 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408795)
  store %struct.Memory* %call_408795, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 408799	 Bytes: 7
  %loadMem_408799 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408799 = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408799)
  store %struct.Memory* %call_408799, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 4087a0	 Bytes: 3
  %loadMem_4087a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4087a0 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4087a0)
  store %struct.Memory* %call_4087a0, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rsi	 RIP: 4087a3	 Bytes: 3
  %loadMem_4087a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4087a3 = call %struct.Memory* @routine_addq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4087a3)
  store %struct.Memory* %call_4087a3, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rdx	 RIP: 4087a6	 Bytes: 4
  %loadMem_4087a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4087a6 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4087a6)
  store %struct.Memory* %call_4087a6, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 4087aa	 Bytes: 7
  %loadMem_4087aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4087aa = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4087aa)
  store %struct.Memory* %call_4087aa, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 4087b1	 Bytes: 3
  %loadMem_4087b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4087b1 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4087b1)
  store %struct.Memory* %call_4087b1, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rdi	 RIP: 4087b4	 Bytes: 3
  %loadMem_4087b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4087b4 = call %struct.Memory* @routine_addq__rdx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4087b4)
  store %struct.Memory* %call_4087b4, %struct.Memory** %MEMORY

  ; Code: movl 0x60(%rdi), %r8d	 RIP: 4087b7	 Bytes: 4
  %loadMem_4087b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4087b7 = call %struct.Memory* @routine_movl_0x60__rdi____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4087b7)
  store %struct.Memory* %call_4087b7, %struct.Memory** %MEMORY

  ; Code: movl %r8d, %r9d	 RIP: 4087bb	 Bytes: 3
  %loadMem_4087bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4087bb = call %struct.Memory* @routine_movl__r8d___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4087bb)
  store %struct.Memory* %call_4087bb, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %r9d	 RIP: 4087be	 Bytes: 4
  %loadMem_4087be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4087be = call %struct.Memory* @routine_addl__0x1___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4087be)
  store %struct.Memory* %call_4087be, %struct.Memory** %MEMORY

  ; Code: movl %r9d, 0x60(%rdi)	 RIP: 4087c2	 Bytes: 4
  %loadMem_4087c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4087c2 = call %struct.Memory* @routine_movl__r9d__0x60__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4087c2)
  store %struct.Memory* %call_4087c2, %struct.Memory** %MEMORY

  ; Code: movslq %r8d, %rdx	 RIP: 4087c6	 Bytes: 3
  %loadMem_4087c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4087c6 = call %struct.Memory* @routine_movslq__r8d___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4087c6)
  store %struct.Memory* %call_4087c6, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x64(%rsi,%rdx,4)	 RIP: 4087c9	 Bytes: 4
  %loadMem_4087c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4087c9 = call %struct.Memory* @routine_movl__ecx__0x64__rsi__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4087c9)
  store %struct.Memory* %call_4087c9, %struct.Memory** %MEMORY

  ; Code: movl 0x99da08, %ecx	 RIP: 4087cd	 Bytes: 7
  %loadMem_4087cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4087cd = call %struct.Memory* @routine_movl_0x99da08___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4087cd)
  store %struct.Memory* %call_4087cd, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %r8d	 RIP: 4087d4	 Bytes: 4
  %loadMem_4087d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4087d4 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4087d4)
  store %struct.Memory* %call_4087d4, %struct.Memory** %MEMORY

  ; Code: subl $0x1, %r8d	 RIP: 4087d8	 Bytes: 4
  %loadMem_4087d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4087d8 = call %struct.Memory* @routine_subl__0x1___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4087d8)
  store %struct.Memory* %call_4087d8, %struct.Memory** %MEMORY

  ; Code: movslq %r8d, %rdx	 RIP: 4087dc	 Bytes: 3
  %loadMem_4087dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4087dc = call %struct.Memory* @routine_movslq__r8d___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4087dc)
  store %struct.Memory* %call_4087dc, %struct.Memory** %MEMORY

  ; Code: movslq 0xaab3f0(,%rdx,4), %rdx	 RIP: 4087df	 Bytes: 8
  %loadMem_4087df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4087df = call %struct.Memory* @routine_movslq_0xaab3f0___rdx_4____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4087df)
  store %struct.Memory* %call_4087df, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 4087e7	 Bytes: 7
  %loadMem_4087e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4087e7 = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4087e7)
  store %struct.Memory* %call_4087e7, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 4087ee	 Bytes: 3
  %loadMem_4087ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4087ee = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4087ee)
  store %struct.Memory* %call_4087ee, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x2e4(%rax)	 RIP: 4087f1	 Bytes: 6
  %loadMem_4087f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4087f1 = call %struct.Memory* @routine_movl__ecx__0x2e4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4087f1)
  store %struct.Memory* %call_4087f1, %struct.Memory** %MEMORY

  ; Code: .L_4087f7:	 RIP: 4087f7	 Bytes: 0
  br label %block_.L_4087f7
block_.L_4087f7:

  ; Code: jmpq .L_4087fc	 RIP: 4087f7	 Bytes: 5
  %loadMem_4087f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4087f7 = call %struct.Memory* @routine_jmpq_.L_4087fc(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4087f7, i64 5, i64 5)
  store %struct.Memory* %call_4087f7, %struct.Memory** %MEMORY

  br label %block_.L_4087fc

  ; Code: .L_4087fc:	 RIP: 4087fc	 Bytes: 0
block_.L_4087fc:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 4087fc	 Bytes: 3
  %loadMem_4087fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4087fc = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4087fc)
  store %struct.Memory* %call_4087fc, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 4087ff	 Bytes: 3
  %loadMem_4087ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4087ff = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4087ff)
  store %struct.Memory* %call_4087ff, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 408802	 Bytes: 3
  %loadMem_408802 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408802 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408802)
  store %struct.Memory* %call_408802, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 408805	 Bytes: 8
  %loadMem_408805 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408805 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408805)
  store %struct.Memory* %call_408805, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 40880d	 Bytes: 3
  %loadMem_40880d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40880d = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40880d)
  store %struct.Memory* %call_40880d, %struct.Memory** %MEMORY

  ; Code: jne .L_4088ce	 RIP: 408810	 Bytes: 6
  %loadMem_408810 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408810 = call %struct.Memory* @routine_jne_.L_4088ce(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408810, i8* %BRANCH_TAKEN, i64 190, i64 6, i64 6)
  store %struct.Memory* %call_408810, %struct.Memory** %MEMORY

  %loadBr_408810 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_408810 = icmp eq i8 %loadBr_408810, 1
  br i1 %cmpBr_408810, label %block_.L_4088ce, label %block_408816

block_408816:
  ; Code: movl -0x8(%rbp), %eax	 RIP: 408816	 Bytes: 3
  %loadMem_408816 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408816 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408816)
  store %struct.Memory* %call_408816, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 408819	 Bytes: 3
  %loadMem_408819 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408819 = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408819)
  store %struct.Memory* %call_408819, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 40881c	 Bytes: 3
  %loadMem_40881c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40881c = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40881c)
  store %struct.Memory* %call_40881c, %struct.Memory** %MEMORY

  ; Code: movl 0xaaadb0(,%rcx,4), %eax	 RIP: 40881f	 Bytes: 7
  %loadMem_40881f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40881f = call %struct.Memory* @routine_movl_0xaaadb0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40881f)
  store %struct.Memory* %call_40881f, %struct.Memory** %MEMORY

  ; Code: cmpl 0x99da04, %eax	 RIP: 408826	 Bytes: 7
  %loadMem_408826 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408826 = call %struct.Memory* @routine_cmpl_0x99da04___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408826)
  store %struct.Memory* %call_408826, %struct.Memory** %MEMORY

  ; Code: je .L_4088ce	 RIP: 40882d	 Bytes: 6
  %loadMem_40882d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40882d = call %struct.Memory* @routine_je_.L_4088ce(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40882d, i8* %BRANCH_TAKEN, i64 161, i64 6, i64 6)
  store %struct.Memory* %call_40882d, %struct.Memory** %MEMORY

  %loadBr_40882d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40882d = icmp eq i8 %loadBr_40882d, 1
  br i1 %cmpBr_40882d, label %block_.L_4088ce, label %block_408833

block_408833:
  ; Code: jmpq .L_408838	 RIP: 408833	 Bytes: 5
  %loadMem_408833 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408833 = call %struct.Memory* @routine_jmpq_.L_408838(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408833, i64 5, i64 5)
  store %struct.Memory* %call_408833, %struct.Memory** %MEMORY

  br label %block_.L_408838

  ; Code: .L_408838:	 RIP: 408838	 Bytes: 0
block_.L_408838:

  ; Code: movq $0xa7f430, %rax	 RIP: 408838	 Bytes: 10
  %loadMem_408838 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408838 = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408838)
  store %struct.Memory* %call_408838, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rcx	 RIP: 408842	 Bytes: 4
  %loadMem_408842 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408842 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408842)
  store %struct.Memory* %call_408842, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rcx, %rcx	 RIP: 408846	 Bytes: 7
  %loadMem_408846 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408846 = call %struct.Memory* @routine_imulq__0x2e8___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408846)
  store %struct.Memory* %call_408846, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 40884d	 Bytes: 3
  %loadMem_40884d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40884d = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40884d)
  store %struct.Memory* %call_40884d, %struct.Memory** %MEMORY

  ; Code: cmpl $0x14, 0xc(%rax)	 RIP: 408850	 Bytes: 4
  %loadMem_408850 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408850 = call %struct.Memory* @routine_cmpl__0x14__0xc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408850)
  store %struct.Memory* %call_408850, %struct.Memory** %MEMORY

  ; Code: jge .L_408891	 RIP: 408854	 Bytes: 6
  %loadMem_408854 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408854 = call %struct.Memory* @routine_jge_.L_408891(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408854, i8* %BRANCH_TAKEN, i64 61, i64 6, i64 6)
  store %struct.Memory* %call_408854, %struct.Memory** %MEMORY

  %loadBr_408854 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_408854 = icmp eq i8 %loadBr_408854, 1
  br i1 %cmpBr_408854, label %block_.L_408891, label %block_40885a

block_40885a:
  ; Code: movq $0xa7f430, %rax	 RIP: 40885a	 Bytes: 10
  %loadMem_40885a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40885a = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40885a)
  store %struct.Memory* %call_40885a, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %ecx	 RIP: 408864	 Bytes: 3
  %loadMem_408864 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408864 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408864)
  store %struct.Memory* %call_408864, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %ecx	 RIP: 408867	 Bytes: 3
  %loadMem_408867 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408867 = call %struct.Memory* @routine_subl__0x14___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408867)
  store %struct.Memory* %call_408867, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rdx	 RIP: 40886a	 Bytes: 4
  %loadMem_40886a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40886a = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40886a)
  store %struct.Memory* %call_40886a, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40886e	 Bytes: 7
  %loadMem_40886e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40886e = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40886e)
  store %struct.Memory* %call_40886e, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 408875	 Bytes: 3
  %loadMem_408875 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408875 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408875)
  store %struct.Memory* %call_408875, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rsi	 RIP: 408878	 Bytes: 3
  %loadMem_408878 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408878 = call %struct.Memory* @routine_addq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408878)
  store %struct.Memory* %call_408878, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rdx	 RIP: 40887b	 Bytes: 4
  %loadMem_40887b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40887b = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40887b)
  store %struct.Memory* %call_40887b, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40887f	 Bytes: 7
  %loadMem_40887f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40887f = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40887f)
  store %struct.Memory* %call_40887f, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 408886	 Bytes: 3
  %loadMem_408886 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408886 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408886)
  store %struct.Memory* %call_408886, %struct.Memory** %MEMORY

  ; Code: movslq 0xc(%rax), %rax	 RIP: 408889	 Bytes: 4
  %loadMem_408889 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408889 = call %struct.Memory* @routine_movslq_0xc__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408889)
  store %struct.Memory* %call_408889, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x10(%rsi,%rax,4)	 RIP: 40888d	 Bytes: 4
  %loadMem_40888d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40888d = call %struct.Memory* @routine_movl__ecx__0x10__rsi__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40888d)
  store %struct.Memory* %call_40888d, %struct.Memory** %MEMORY

  ; Code: .L_408891:	 RIP: 408891	 Bytes: 0
  br label %block_.L_408891
block_.L_408891:

  ; Code: movq $0xa7f430, %rax	 RIP: 408891	 Bytes: 10
  %loadMem_408891 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408891 = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408891)
  store %struct.Memory* %call_408891, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rcx	 RIP: 40889b	 Bytes: 4
  %loadMem_40889b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40889b = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40889b)
  store %struct.Memory* %call_40889b, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rcx, %rcx	 RIP: 40889f	 Bytes: 7
  %loadMem_40889f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40889f = call %struct.Memory* @routine_imulq__0x2e8___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40889f)
  store %struct.Memory* %call_40889f, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4088a6	 Bytes: 3
  %loadMem_4088a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4088a6 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4088a6)
  store %struct.Memory* %call_4088a6, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%rax), %edx	 RIP: 4088a9	 Bytes: 3
  %loadMem_4088a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4088a9 = call %struct.Memory* @routine_movl_0xc__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4088a9)
  store %struct.Memory* %call_4088a9, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 4088ac	 Bytes: 3
  %loadMem_4088ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4088ac = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4088ac)
  store %struct.Memory* %call_4088ac, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0xc(%rax)	 RIP: 4088af	 Bytes: 3
  %loadMem_4088af = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4088af = call %struct.Memory* @routine_movl__edx__0xc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4088af)
  store %struct.Memory* %call_4088af, %struct.Memory** %MEMORY

  ; Code: movl 0x99da04, %edx	 RIP: 4088b2	 Bytes: 7
  %loadMem_4088b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4088b2 = call %struct.Memory* @routine_movl_0x99da04___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4088b2)
  store %struct.Memory* %call_4088b2, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %esi	 RIP: 4088b9	 Bytes: 3
  %loadMem_4088b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4088b9 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4088b9)
  store %struct.Memory* %call_4088b9, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %esi	 RIP: 4088bc	 Bytes: 3
  %loadMem_4088bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4088bc = call %struct.Memory* @routine_subl__0x14___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4088bc)
  store %struct.Memory* %call_4088bc, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rax	 RIP: 4088bf	 Bytes: 3
  %loadMem_4088bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4088bf = call %struct.Memory* @routine_movslq__esi___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4088bf)
  store %struct.Memory* %call_4088bf, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0xaaadb0(,%rax,4)	 RIP: 4088c2	 Bytes: 7
  %loadMem_4088c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4088c2 = call %struct.Memory* @routine_movl__edx__0xaaadb0___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4088c2)
  store %struct.Memory* %call_4088c2, %struct.Memory** %MEMORY

  ; Code: jmpq .L_4089a1	 RIP: 4088c9	 Bytes: 5
  %loadMem_4088c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4088c9 = call %struct.Memory* @routine_jmpq_.L_4089a1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4088c9, i64 216, i64 5)
  store %struct.Memory* %call_4088c9, %struct.Memory** %MEMORY

  br label %block_.L_4089a1

  ; Code: .L_4088ce:	 RIP: 4088ce	 Bytes: 0
block_.L_4088ce:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 4088ce	 Bytes: 3
  %loadMem_4088ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4088ce = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4088ce)
  store %struct.Memory* %call_4088ce, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %eax	 RIP: 4088d1	 Bytes: 3
  %loadMem_4088d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4088d1 = call %struct.Memory* @routine_subl__0x14___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4088d1)
  store %struct.Memory* %call_4088d1, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 4088d4	 Bytes: 3
  %loadMem_4088d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4088d4 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4088d4)
  store %struct.Memory* %call_4088d4, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 4088d7	 Bytes: 8
  %loadMem_4088d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4088d7 = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4088d7)
  store %struct.Memory* %call_4088d7, %struct.Memory** %MEMORY

  ; Code: cmpl -0xc(%rbp), %eax	 RIP: 4088df	 Bytes: 3
  %loadMem_4088df = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4088df = call %struct.Memory* @routine_cmpl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4088df)
  store %struct.Memory* %call_4088df, %struct.Memory** %MEMORY

  ; Code: jne .L_40899c	 RIP: 4088e2	 Bytes: 6
  %loadMem_4088e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4088e2 = call %struct.Memory* @routine_jne_.L_40899c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4088e2, i8* %BRANCH_TAKEN, i64 186, i64 6, i64 6)
  store %struct.Memory* %call_4088e2, %struct.Memory** %MEMORY

  %loadBr_4088e2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4088e2 = icmp eq i8 %loadBr_4088e2, 1
  br i1 %cmpBr_4088e2, label %block_.L_40899c, label %block_4088e8

block_4088e8:
  ; Code: movq $0xa7f430, %rax	 RIP: 4088e8	 Bytes: 10
  %loadMem_4088e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4088e8 = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4088e8)
  store %struct.Memory* %call_4088e8, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %ecx	 RIP: 4088f2	 Bytes: 3
  %loadMem_4088f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4088f2 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4088f2)
  store %struct.Memory* %call_4088f2, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %ecx	 RIP: 4088f5	 Bytes: 3
  %loadMem_4088f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4088f5 = call %struct.Memory* @routine_subl__0x14___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4088f5)
  store %struct.Memory* %call_4088f5, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 4088f8	 Bytes: 3
  %loadMem_4088f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4088f8 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4088f8)
  store %struct.Memory* %call_4088f8, %struct.Memory** %MEMORY

  ; Code: movslq 0xaab3f0(,%rdx,4), %rdx	 RIP: 4088fb	 Bytes: 8
  %loadMem_4088fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4088fb = call %struct.Memory* @routine_movslq_0xaab3f0___rdx_4____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4088fb)
  store %struct.Memory* %call_4088fb, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 408903	 Bytes: 7
  %loadMem_408903 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408903 = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408903)
  store %struct.Memory* %call_408903, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 40890a	 Bytes: 3
  %loadMem_40890a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40890a = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40890a)
  store %struct.Memory* %call_40890a, %struct.Memory** %MEMORY

  ; Code: movl 0x2e4(%rax), %ecx	 RIP: 40890d	 Bytes: 6
  %loadMem_40890d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40890d = call %struct.Memory* @routine_movl_0x2e4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40890d)
  store %struct.Memory* %call_40890d, %struct.Memory** %MEMORY

  ; Code: cmpl 0x99da08, %ecx	 RIP: 408913	 Bytes: 7
  %loadMem_408913 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408913 = call %struct.Memory* @routine_cmpl_0x99da08___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408913)
  store %struct.Memory* %call_408913, %struct.Memory** %MEMORY

  ; Code: je .L_40899c	 RIP: 40891a	 Bytes: 6
  %loadMem_40891a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40891a = call %struct.Memory* @routine_je_.L_40899c(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40891a, i8* %BRANCH_TAKEN, i64 130, i64 6, i64 6)
  store %struct.Memory* %call_40891a, %struct.Memory** %MEMORY

  %loadBr_40891a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40891a = icmp eq i8 %loadBr_40891a, 1
  br i1 %cmpBr_40891a, label %block_.L_40899c, label %block_408920

block_408920:
  ; Code: movq $0xa7f430, %rax	 RIP: 408920	 Bytes: 10
  %loadMem_408920 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408920 = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408920)
  store %struct.Memory* %call_408920, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %ecx	 RIP: 40892a	 Bytes: 3
  %loadMem_40892a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40892a = call %struct.Memory* @routine_movl_MINUS0x8__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40892a)
  store %struct.Memory* %call_40892a, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %ecx	 RIP: 40892d	 Bytes: 3
  %loadMem_40892d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40892d = call %struct.Memory* @routine_subl__0x14___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40892d)
  store %struct.Memory* %call_40892d, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 408930	 Bytes: 3
  %loadMem_408930 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408930 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408930)
  store %struct.Memory* %call_408930, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rdx,4), %ecx	 RIP: 408933	 Bytes: 7
  %loadMem_408933 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408933 = call %struct.Memory* @routine_movl_0xaab3f0___rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408933)
  store %struct.Memory* %call_408933, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rdx	 RIP: 40893a	 Bytes: 4
  %loadMem_40893a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40893a = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40893a)
  store %struct.Memory* %call_40893a, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40893e	 Bytes: 7
  %loadMem_40893e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40893e = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40893e)
  store %struct.Memory* %call_40893e, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 408945	 Bytes: 3
  %loadMem_408945 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408945 = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408945)
  store %struct.Memory* %call_408945, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rsi	 RIP: 408948	 Bytes: 3
  %loadMem_408948 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408948 = call %struct.Memory* @routine_addq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408948)
  store %struct.Memory* %call_408948, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rdx	 RIP: 40894b	 Bytes: 4
  %loadMem_40894b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40894b = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40894b)
  store %struct.Memory* %call_40894b, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40894f	 Bytes: 7
  %loadMem_40894f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40894f = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40894f)
  store %struct.Memory* %call_40894f, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 408956	 Bytes: 3
  %loadMem_408956 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408956 = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408956)
  store %struct.Memory* %call_408956, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rdi	 RIP: 408959	 Bytes: 3
  %loadMem_408959 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408959 = call %struct.Memory* @routine_addq__rdx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408959)
  store %struct.Memory* %call_408959, %struct.Memory** %MEMORY

  ; Code: movl 0x60(%rdi), %r8d	 RIP: 40895c	 Bytes: 4
  %loadMem_40895c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40895c = call %struct.Memory* @routine_movl_0x60__rdi____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40895c)
  store %struct.Memory* %call_40895c, %struct.Memory** %MEMORY

  ; Code: movl %r8d, %r9d	 RIP: 408960	 Bytes: 3
  %loadMem_408960 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408960 = call %struct.Memory* @routine_movl__r8d___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408960)
  store %struct.Memory* %call_408960, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %r9d	 RIP: 408963	 Bytes: 4
  %loadMem_408963 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408963 = call %struct.Memory* @routine_addl__0x1___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408963)
  store %struct.Memory* %call_408963, %struct.Memory** %MEMORY

  ; Code: movl %r9d, 0x60(%rdi)	 RIP: 408967	 Bytes: 4
  %loadMem_408967 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408967 = call %struct.Memory* @routine_movl__r9d__0x60__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408967)
  store %struct.Memory* %call_408967, %struct.Memory** %MEMORY

  ; Code: movslq %r8d, %rdx	 RIP: 40896b	 Bytes: 3
  %loadMem_40896b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40896b = call %struct.Memory* @routine_movslq__r8d___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40896b)
  store %struct.Memory* %call_40896b, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x64(%rsi,%rdx,4)	 RIP: 40896e	 Bytes: 4
  %loadMem_40896e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40896e = call %struct.Memory* @routine_movl__ecx__0x64__rsi__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40896e)
  store %struct.Memory* %call_40896e, %struct.Memory** %MEMORY

  ; Code: movl 0x99da08, %ecx	 RIP: 408972	 Bytes: 7
  %loadMem_408972 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408972 = call %struct.Memory* @routine_movl_0x99da08___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408972)
  store %struct.Memory* %call_408972, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %r8d	 RIP: 408979	 Bytes: 4
  %loadMem_408979 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408979 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408979)
  store %struct.Memory* %call_408979, %struct.Memory** %MEMORY

  ; Code: subl $0x14, %r8d	 RIP: 40897d	 Bytes: 4
  %loadMem_40897d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40897d = call %struct.Memory* @routine_subl__0x14___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40897d)
  store %struct.Memory* %call_40897d, %struct.Memory** %MEMORY

  ; Code: movslq %r8d, %rdx	 RIP: 408981	 Bytes: 3
  %loadMem_408981 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408981 = call %struct.Memory* @routine_movslq__r8d___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408981)
  store %struct.Memory* %call_408981, %struct.Memory** %MEMORY

  ; Code: movslq 0xaab3f0(,%rdx,4), %rdx	 RIP: 408984	 Bytes: 8
  %loadMem_408984 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408984 = call %struct.Memory* @routine_movslq_0xaab3f0___rdx_4____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408984)
  store %struct.Memory* %call_408984, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 40898c	 Bytes: 7
  %loadMem_40898c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40898c = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40898c)
  store %struct.Memory* %call_40898c, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 408993	 Bytes: 3
  %loadMem_408993 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408993 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408993)
  store %struct.Memory* %call_408993, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x2e4(%rax)	 RIP: 408996	 Bytes: 6
  %loadMem_408996 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408996 = call %struct.Memory* @routine_movl__ecx__0x2e4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408996)
  store %struct.Memory* %call_408996, %struct.Memory** %MEMORY

  ; Code: .L_40899c:	 RIP: 40899c	 Bytes: 0
  br label %block_.L_40899c
block_.L_40899c:

  ; Code: jmpq .L_4089a1	 RIP: 40899c	 Bytes: 5
  %loadMem_40899c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_40899c = call %struct.Memory* @routine_jmpq_.L_4089a1(%struct.State* %0, i64  0, %struct.Memory* %loadMem_40899c, i64 5, i64 5)
  store %struct.Memory* %call_40899c, %struct.Memory** %MEMORY

  br label %block_.L_4089a1

  ; Code: .L_4089a1:	 RIP: 4089a1	 Bytes: 0
block_.L_4089a1:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 4089a1	 Bytes: 3
  %loadMem_4089a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4089a1 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4089a1)
  store %struct.Memory* %call_4089a1, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4089a4	 Bytes: 3
  %loadMem_4089a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4089a4 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4089a4)
  store %struct.Memory* %call_4089a4, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 4089a7	 Bytes: 3
  %loadMem_4089a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4089a7 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4089a7)
  store %struct.Memory* %call_4089a7, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 4089aa	 Bytes: 8
  %loadMem_4089aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4089aa = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4089aa)
  store %struct.Memory* %call_4089aa, %struct.Memory** %MEMORY

  ; Code: cmpl $0x0, %eax	 RIP: 4089b2	 Bytes: 3
  %loadMem_4089b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4089b2 = call %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4089b2)
  store %struct.Memory* %call_4089b2, %struct.Memory** %MEMORY

  ; Code: jne .L_408a73	 RIP: 4089b5	 Bytes: 6
  %loadMem_4089b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4089b5 = call %struct.Memory* @routine_jne_.L_408a73(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4089b5, i8* %BRANCH_TAKEN, i64 190, i64 6, i64 6)
  store %struct.Memory* %call_4089b5, %struct.Memory** %MEMORY

  %loadBr_4089b5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4089b5 = icmp eq i8 %loadBr_4089b5, 1
  br i1 %cmpBr_4089b5, label %block_.L_408a73, label %block_4089bb

block_4089bb:
  ; Code: movl -0x8(%rbp), %eax	 RIP: 4089bb	 Bytes: 3
  %loadMem_4089bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4089bb = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4089bb)
  store %struct.Memory* %call_4089bb, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 4089be	 Bytes: 3
  %loadMem_4089be = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4089be = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4089be)
  store %struct.Memory* %call_4089be, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 4089c1	 Bytes: 3
  %loadMem_4089c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4089c1 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4089c1)
  store %struct.Memory* %call_4089c1, %struct.Memory** %MEMORY

  ; Code: movl 0xaaadb0(,%rcx,4), %eax	 RIP: 4089c4	 Bytes: 7
  %loadMem_4089c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4089c4 = call %struct.Memory* @routine_movl_0xaaadb0___rcx_4____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4089c4)
  store %struct.Memory* %call_4089c4, %struct.Memory** %MEMORY

  ; Code: cmpl 0x99da04, %eax	 RIP: 4089cb	 Bytes: 7
  %loadMem_4089cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4089cb = call %struct.Memory* @routine_cmpl_0x99da04___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4089cb)
  store %struct.Memory* %call_4089cb, %struct.Memory** %MEMORY

  ; Code: je .L_408a73	 RIP: 4089d2	 Bytes: 6
  %loadMem_4089d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4089d2 = call %struct.Memory* @routine_je_.L_408a73(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4089d2, i8* %BRANCH_TAKEN, i64 161, i64 6, i64 6)
  store %struct.Memory* %call_4089d2, %struct.Memory** %MEMORY

  %loadBr_4089d2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4089d2 = icmp eq i8 %loadBr_4089d2, 1
  br i1 %cmpBr_4089d2, label %block_.L_408a73, label %block_4089d8

block_4089d8:
  ; Code: jmpq .L_4089dd	 RIP: 4089d8	 Bytes: 5
  %loadMem_4089d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4089d8 = call %struct.Memory* @routine_jmpq_.L_4089dd(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4089d8, i64 5, i64 5)
  store %struct.Memory* %call_4089d8, %struct.Memory** %MEMORY

  br label %block_.L_4089dd

  ; Code: .L_4089dd:	 RIP: 4089dd	 Bytes: 0
block_.L_4089dd:

  ; Code: movq $0xa7f430, %rax	 RIP: 4089dd	 Bytes: 10
  %loadMem_4089dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4089dd = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4089dd)
  store %struct.Memory* %call_4089dd, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rcx	 RIP: 4089e7	 Bytes: 4
  %loadMem_4089e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4089e7 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4089e7)
  store %struct.Memory* %call_4089e7, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rcx, %rcx	 RIP: 4089eb	 Bytes: 7
  %loadMem_4089eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4089eb = call %struct.Memory* @routine_imulq__0x2e8___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4089eb)
  store %struct.Memory* %call_4089eb, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 4089f2	 Bytes: 3
  %loadMem_4089f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4089f2 = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4089f2)
  store %struct.Memory* %call_4089f2, %struct.Memory** %MEMORY

  ; Code: cmpl $0x14, 0xc(%rax)	 RIP: 4089f5	 Bytes: 4
  %loadMem_4089f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4089f5 = call %struct.Memory* @routine_cmpl__0x14__0xc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4089f5)
  store %struct.Memory* %call_4089f5, %struct.Memory** %MEMORY

  ; Code: jge .L_408a36	 RIP: 4089f9	 Bytes: 6
  %loadMem_4089f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4089f9 = call %struct.Memory* @routine_jge_.L_408a36(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4089f9, i8* %BRANCH_TAKEN, i64 61, i64 6, i64 6)
  store %struct.Memory* %call_4089f9, %struct.Memory** %MEMORY

  %loadBr_4089f9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4089f9 = icmp eq i8 %loadBr_4089f9, 1
  br i1 %cmpBr_4089f9, label %block_.L_408a36, label %block_4089ff

block_4089ff:
  ; Code: movq $0xa7f430, %rax	 RIP: 4089ff	 Bytes: 10
  %loadMem_4089ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_4089ff = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_4089ff)
  store %struct.Memory* %call_4089ff, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %ecx	 RIP: 408a09	 Bytes: 3
  %loadMem_408a09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408a09 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408a09)
  store %struct.Memory* %call_408a09, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 408a0c	 Bytes: 3
  %loadMem_408a0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408a0c = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408a0c)
  store %struct.Memory* %call_408a0c, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rdx	 RIP: 408a0f	 Bytes: 4
  %loadMem_408a0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408a0f = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408a0f)
  store %struct.Memory* %call_408a0f, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 408a13	 Bytes: 7
  %loadMem_408a13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408a13 = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408a13)
  store %struct.Memory* %call_408a13, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 408a1a	 Bytes: 3
  %loadMem_408a1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408a1a = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408a1a)
  store %struct.Memory* %call_408a1a, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rsi	 RIP: 408a1d	 Bytes: 3
  %loadMem_408a1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408a1d = call %struct.Memory* @routine_addq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408a1d)
  store %struct.Memory* %call_408a1d, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rdx	 RIP: 408a20	 Bytes: 4
  %loadMem_408a20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408a20 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408a20)
  store %struct.Memory* %call_408a20, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 408a24	 Bytes: 7
  %loadMem_408a24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408a24 = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408a24)
  store %struct.Memory* %call_408a24, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 408a2b	 Bytes: 3
  %loadMem_408a2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408a2b = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408a2b)
  store %struct.Memory* %call_408a2b, %struct.Memory** %MEMORY

  ; Code: movslq 0xc(%rax), %rax	 RIP: 408a2e	 Bytes: 4
  %loadMem_408a2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408a2e = call %struct.Memory* @routine_movslq_0xc__rax____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408a2e)
  store %struct.Memory* %call_408a2e, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x10(%rsi,%rax,4)	 RIP: 408a32	 Bytes: 4
  %loadMem_408a32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408a32 = call %struct.Memory* @routine_movl__ecx__0x10__rsi__rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408a32)
  store %struct.Memory* %call_408a32, %struct.Memory** %MEMORY

  ; Code: .L_408a36:	 RIP: 408a36	 Bytes: 0
  br label %block_.L_408a36
block_.L_408a36:

  ; Code: movq $0xa7f430, %rax	 RIP: 408a36	 Bytes: 10
  %loadMem_408a36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408a36 = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408a36)
  store %struct.Memory* %call_408a36, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rcx	 RIP: 408a40	 Bytes: 4
  %loadMem_408a40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408a40 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408a40)
  store %struct.Memory* %call_408a40, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rcx, %rcx	 RIP: 408a44	 Bytes: 7
  %loadMem_408a44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408a44 = call %struct.Memory* @routine_imulq__0x2e8___rcx___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408a44)
  store %struct.Memory* %call_408a44, %struct.Memory** %MEMORY

  ; Code: addq %rcx, %rax	 RIP: 408a4b	 Bytes: 3
  %loadMem_408a4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408a4b = call %struct.Memory* @routine_addq__rcx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408a4b)
  store %struct.Memory* %call_408a4b, %struct.Memory** %MEMORY

  ; Code: movl 0xc(%rax), %edx	 RIP: 408a4e	 Bytes: 3
  %loadMem_408a4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408a4e = call %struct.Memory* @routine_movl_0xc__rax____edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408a4e)
  store %struct.Memory* %call_408a4e, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %edx	 RIP: 408a51	 Bytes: 3
  %loadMem_408a51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408a51 = call %struct.Memory* @routine_addl__0x1___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408a51)
  store %struct.Memory* %call_408a51, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0xc(%rax)	 RIP: 408a54	 Bytes: 3
  %loadMem_408a54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408a54 = call %struct.Memory* @routine_movl__edx__0xc__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408a54)
  store %struct.Memory* %call_408a54, %struct.Memory** %MEMORY

  ; Code: movl 0x99da04, %edx	 RIP: 408a57	 Bytes: 7
  %loadMem_408a57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408a57 = call %struct.Memory* @routine_movl_0x99da04___edx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408a57)
  store %struct.Memory* %call_408a57, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %esi	 RIP: 408a5e	 Bytes: 3
  %loadMem_408a5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408a5e = call %struct.Memory* @routine_movl_MINUS0x8__rbp____esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408a5e)
  store %struct.Memory* %call_408a5e, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %esi	 RIP: 408a61	 Bytes: 3
  %loadMem_408a61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408a61 = call %struct.Memory* @routine_addl__0x1___esi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408a61)
  store %struct.Memory* %call_408a61, %struct.Memory** %MEMORY

  ; Code: movslq %esi, %rax	 RIP: 408a64	 Bytes: 3
  %loadMem_408a64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408a64 = call %struct.Memory* @routine_movslq__esi___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408a64)
  store %struct.Memory* %call_408a64, %struct.Memory** %MEMORY

  ; Code: movl %edx, 0xaaadb0(,%rax,4)	 RIP: 408a67	 Bytes: 7
  %loadMem_408a67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408a67 = call %struct.Memory* @routine_movl__edx__0xaaadb0___rax_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408a67)
  store %struct.Memory* %call_408a67, %struct.Memory** %MEMORY

  ; Code: jmpq .L_408b46	 RIP: 408a6e	 Bytes: 5
  %loadMem_408a6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408a6e = call %struct.Memory* @routine_jmpq_.L_408b46(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408a6e, i64 216, i64 5)
  store %struct.Memory* %call_408a6e, %struct.Memory** %MEMORY

  br label %block_.L_408b46

  ; Code: .L_408a73:	 RIP: 408a73	 Bytes: 0
block_.L_408a73:

  ; Code: movl -0x8(%rbp), %eax	 RIP: 408a73	 Bytes: 3
  %loadMem_408a73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408a73 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408a73)
  store %struct.Memory* %call_408a73, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %eax	 RIP: 408a76	 Bytes: 3
  %loadMem_408a76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408a76 = call %struct.Memory* @routine_addl__0x1___eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408a76)
  store %struct.Memory* %call_408a76, %struct.Memory** %MEMORY

  ; Code: movslq %eax, %rcx	 RIP: 408a79	 Bytes: 3
  %loadMem_408a79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408a79 = call %struct.Memory* @routine_movslq__eax___rcx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408a79)
  store %struct.Memory* %call_408a79, %struct.Memory** %MEMORY

  ; Code: movzbl 0xb89e60(,%rcx,1), %eax	 RIP: 408a7c	 Bytes: 8
  %loadMem_408a7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408a7c = call %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408a7c)
  store %struct.Memory* %call_408a7c, %struct.Memory** %MEMORY

  ; Code: cmpl -0xc(%rbp), %eax	 RIP: 408a84	 Bytes: 3
  %loadMem_408a84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408a84 = call %struct.Memory* @routine_cmpl_MINUS0xc__rbp____eax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408a84)
  store %struct.Memory* %call_408a84, %struct.Memory** %MEMORY

  ; Code: jne .L_408b41	 RIP: 408a87	 Bytes: 6
  %loadMem_408a87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408a87 = call %struct.Memory* @routine_jne_.L_408b41(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408a87, i8* %BRANCH_TAKEN, i64 186, i64 6, i64 6)
  store %struct.Memory* %call_408a87, %struct.Memory** %MEMORY

  %loadBr_408a87 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_408a87 = icmp eq i8 %loadBr_408a87, 1
  br i1 %cmpBr_408a87, label %block_.L_408b41, label %block_408a8d

block_408a8d:
  ; Code: movq $0xa7f430, %rax	 RIP: 408a8d	 Bytes: 10
  %loadMem_408a8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408a8d = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408a8d)
  store %struct.Memory* %call_408a8d, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %ecx	 RIP: 408a97	 Bytes: 3
  %loadMem_408a97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408a97 = call %struct.Memory* @routine_movl_MINUS0x8__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408a97)
  store %struct.Memory* %call_408a97, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 408a9a	 Bytes: 3
  %loadMem_408a9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408a9a = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408a9a)
  store %struct.Memory* %call_408a9a, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 408a9d	 Bytes: 3
  %loadMem_408a9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408a9d = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408a9d)
  store %struct.Memory* %call_408a9d, %struct.Memory** %MEMORY

  ; Code: movslq 0xaab3f0(,%rdx,4), %rdx	 RIP: 408aa0	 Bytes: 8
  %loadMem_408aa0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408aa0 = call %struct.Memory* @routine_movslq_0xaab3f0___rdx_4____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408aa0)
  store %struct.Memory* %call_408aa0, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 408aa8	 Bytes: 7
  %loadMem_408aa8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408aa8 = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408aa8)
  store %struct.Memory* %call_408aa8, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 408aaf	 Bytes: 3
  %loadMem_408aaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408aaf = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408aaf)
  store %struct.Memory* %call_408aaf, %struct.Memory** %MEMORY

  ; Code: movl 0x2e4(%rax), %ecx	 RIP: 408ab2	 Bytes: 6
  %loadMem_408ab2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408ab2 = call %struct.Memory* @routine_movl_0x2e4__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408ab2)
  store %struct.Memory* %call_408ab2, %struct.Memory** %MEMORY

  ; Code: cmpl 0x99da08, %ecx	 RIP: 408ab8	 Bytes: 7
  %loadMem_408ab8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408ab8 = call %struct.Memory* @routine_cmpl_0x99da08___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408ab8)
  store %struct.Memory* %call_408ab8, %struct.Memory** %MEMORY

  ; Code: je .L_408b41	 RIP: 408abf	 Bytes: 6
  %loadMem_408abf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408abf = call %struct.Memory* @routine_je_.L_408b41(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408abf, i8* %BRANCH_TAKEN, i64 130, i64 6, i64 6)
  store %struct.Memory* %call_408abf, %struct.Memory** %MEMORY

  %loadBr_408abf = load i8, i8* %BRANCH_TAKEN
  %cmpBr_408abf = icmp eq i8 %loadBr_408abf, 1
  br i1 %cmpBr_408abf, label %block_.L_408b41, label %block_408ac5

block_408ac5:
  ; Code: movq $0xa7f430, %rax	 RIP: 408ac5	 Bytes: 10
  %loadMem_408ac5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408ac5 = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408ac5)
  store %struct.Memory* %call_408ac5, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %ecx	 RIP: 408acf	 Bytes: 3
  %loadMem_408acf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408acf = call %struct.Memory* @routine_movl_MINUS0x8__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408acf)
  store %struct.Memory* %call_408acf, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %ecx	 RIP: 408ad2	 Bytes: 3
  %loadMem_408ad2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408ad2 = call %struct.Memory* @routine_addl__0x1___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408ad2)
  store %struct.Memory* %call_408ad2, %struct.Memory** %MEMORY

  ; Code: movslq %ecx, %rdx	 RIP: 408ad5	 Bytes: 3
  %loadMem_408ad5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408ad5 = call %struct.Memory* @routine_movslq__ecx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408ad5)
  store %struct.Memory* %call_408ad5, %struct.Memory** %MEMORY

  ; Code: movl 0xaab3f0(,%rdx,4), %ecx	 RIP: 408ad8	 Bytes: 7
  %loadMem_408ad8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408ad8 = call %struct.Memory* @routine_movl_0xaab3f0___rdx_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408ad8)
  store %struct.Memory* %call_408ad8, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rdx	 RIP: 408adf	 Bytes: 4
  %loadMem_408adf = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408adf = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408adf)
  store %struct.Memory* %call_408adf, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 408ae3	 Bytes: 7
  %loadMem_408ae3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408ae3 = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408ae3)
  store %struct.Memory* %call_408ae3, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rsi	 RIP: 408aea	 Bytes: 3
  %loadMem_408aea = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408aea = call %struct.Memory* @routine_movq__rax___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408aea)
  store %struct.Memory* %call_408aea, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rsi	 RIP: 408aed	 Bytes: 3
  %loadMem_408aed = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408aed = call %struct.Memory* @routine_addq__rdx___rsi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408aed)
  store %struct.Memory* %call_408aed, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rdx	 RIP: 408af0	 Bytes: 4
  %loadMem_408af0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408af0 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408af0)
  store %struct.Memory* %call_408af0, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 408af4	 Bytes: 7
  %loadMem_408af4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408af4 = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408af4)
  store %struct.Memory* %call_408af4, %struct.Memory** %MEMORY

  ; Code: movq %rax, %rdi	 RIP: 408afb	 Bytes: 3
  %loadMem_408afb = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408afb = call %struct.Memory* @routine_movq__rax___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408afb)
  store %struct.Memory* %call_408afb, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rdi	 RIP: 408afe	 Bytes: 3
  %loadMem_408afe = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408afe = call %struct.Memory* @routine_addq__rdx___rdi(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408afe)
  store %struct.Memory* %call_408afe, %struct.Memory** %MEMORY

  ; Code: movl 0x60(%rdi), %r8d	 RIP: 408b01	 Bytes: 4
  %loadMem_408b01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408b01 = call %struct.Memory* @routine_movl_0x60__rdi____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408b01)
  store %struct.Memory* %call_408b01, %struct.Memory** %MEMORY

  ; Code: movl %r8d, %r9d	 RIP: 408b05	 Bytes: 3
  %loadMem_408b05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408b05 = call %struct.Memory* @routine_movl__r8d___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408b05)
  store %struct.Memory* %call_408b05, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %r9d	 RIP: 408b08	 Bytes: 4
  %loadMem_408b08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408b08 = call %struct.Memory* @routine_addl__0x1___r9d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408b08)
  store %struct.Memory* %call_408b08, %struct.Memory** %MEMORY

  ; Code: movl %r9d, 0x60(%rdi)	 RIP: 408b0c	 Bytes: 4
  %loadMem_408b0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408b0c = call %struct.Memory* @routine_movl__r9d__0x60__rdi_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408b0c)
  store %struct.Memory* %call_408b0c, %struct.Memory** %MEMORY

  ; Code: movslq %r8d, %rdx	 RIP: 408b10	 Bytes: 3
  %loadMem_408b10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408b10 = call %struct.Memory* @routine_movslq__r8d___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408b10)
  store %struct.Memory* %call_408b10, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x64(%rsi,%rdx,4)	 RIP: 408b13	 Bytes: 4
  %loadMem_408b13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408b13 = call %struct.Memory* @routine_movl__ecx__0x64__rsi__rdx_4_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408b13)
  store %struct.Memory* %call_408b13, %struct.Memory** %MEMORY

  ; Code: movl 0x99da08, %ecx	 RIP: 408b17	 Bytes: 7
  %loadMem_408b17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408b17 = call %struct.Memory* @routine_movl_0x99da08___ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408b17)
  store %struct.Memory* %call_408b17, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %r8d	 RIP: 408b1e	 Bytes: 4
  %loadMem_408b1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408b1e = call %struct.Memory* @routine_movl_MINUS0x8__rbp____r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408b1e)
  store %struct.Memory* %call_408b1e, %struct.Memory** %MEMORY

  ; Code: addl $0x1, %r8d	 RIP: 408b22	 Bytes: 4
  %loadMem_408b22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408b22 = call %struct.Memory* @routine_addl__0x1___r8d(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408b22)
  store %struct.Memory* %call_408b22, %struct.Memory** %MEMORY

  ; Code: movslq %r8d, %rdx	 RIP: 408b26	 Bytes: 3
  %loadMem_408b26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408b26 = call %struct.Memory* @routine_movslq__r8d___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408b26)
  store %struct.Memory* %call_408b26, %struct.Memory** %MEMORY

  ; Code: movslq 0xaab3f0(,%rdx,4), %rdx	 RIP: 408b29	 Bytes: 8
  %loadMem_408b29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408b29 = call %struct.Memory* @routine_movslq_0xaab3f0___rdx_4____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408b29)
  store %struct.Memory* %call_408b29, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 408b31	 Bytes: 7
  %loadMem_408b31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408b31 = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408b31)
  store %struct.Memory* %call_408b31, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 408b38	 Bytes: 3
  %loadMem_408b38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408b38 = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408b38)
  store %struct.Memory* %call_408b38, %struct.Memory** %MEMORY

  ; Code: movl %ecx, 0x2e4(%rax)	 RIP: 408b3b	 Bytes: 6
  %loadMem_408b3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408b3b = call %struct.Memory* @routine_movl__ecx__0x2e4__rax_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408b3b)
  store %struct.Memory* %call_408b3b, %struct.Memory** %MEMORY

  ; Code: .L_408b41:	 RIP: 408b41	 Bytes: 0
  br label %block_.L_408b41
block_.L_408b41:

  ; Code: jmpq .L_408b46	 RIP: 408b41	 Bytes: 5
  %loadMem_408b41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408b41 = call %struct.Memory* @routine_jmpq_.L_408b46(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408b41, i64 5, i64 5)
  store %struct.Memory* %call_408b41, %struct.Memory** %MEMORY

  br label %block_.L_408b46

  ; Code: .L_408b46:	 RIP: 408b46	 Bytes: 0
block_.L_408b46:

  ; Code: movslq -0x8(%rbp), %rax	 RIP: 408b46	 Bytes: 4
  %loadMem_408b46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408b46 = call %struct.Memory* @routine_movslq_MINUS0x8__rbp____rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408b46)
  store %struct.Memory* %call_408b46, %struct.Memory** %MEMORY

  ; Code: movl 0xaaba30(,%rax,4), %ecx	 RIP: 408b4a	 Bytes: 7
  %loadMem_408b4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408b4a = call %struct.Memory* @routine_movl_0xaaba30___rax_4____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408b4a)
  store %struct.Memory* %call_408b4a, %struct.Memory** %MEMORY

  ; Code: movl %ecx, -0x8(%rbp)	 RIP: 408b51	 Bytes: 3
  %loadMem_408b51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408b51 = call %struct.Memory* @routine_movl__ecx__MINUS0x8__rbp_(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408b51)
  store %struct.Memory* %call_408b51, %struct.Memory** %MEMORY

  ; Code: movq $0xa7f430, %rax	 RIP: 408b54	 Bytes: 10
  %loadMem_408b54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408b54 = call %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408b54)
  store %struct.Memory* %call_408b54, %struct.Memory** %MEMORY

  ; Code: movl -0x8(%rbp), %ecx	 RIP: 408b5e	 Bytes: 3
  %loadMem_408b5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408b5e = call %struct.Memory* @routine_movl_MINUS0x8__rbp____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408b5e)
  store %struct.Memory* %call_408b5e, %struct.Memory** %MEMORY

  ; Code: movslq -0x4(%rbp), %rdx	 RIP: 408b61	 Bytes: 4
  %loadMem_408b61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408b61 = call %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408b61)
  store %struct.Memory* %call_408b61, %struct.Memory** %MEMORY

  ; Code: imulq $0x2e8, %rdx, %rdx	 RIP: 408b65	 Bytes: 7
  %loadMem_408b65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408b65 = call %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408b65)
  store %struct.Memory* %call_408b65, %struct.Memory** %MEMORY

  ; Code: addq %rdx, %rax	 RIP: 408b6c	 Bytes: 3
  %loadMem_408b6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408b6c = call %struct.Memory* @routine_addq__rdx___rax(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408b6c)
  store %struct.Memory* %call_408b6c, %struct.Memory** %MEMORY

  ; Code: cmpl 0x8(%rax), %ecx	 RIP: 408b6f	 Bytes: 3
  %loadMem_408b6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408b6f = call %struct.Memory* @routine_cmpl_0x8__rax____ecx(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408b6f)
  store %struct.Memory* %call_408b6f, %struct.Memory** %MEMORY

  ; Code: sete %sil	 RIP: 408b72	 Bytes: 4
  %loadMem_408b72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408b72 = call %struct.Memory* @routine_sete__sil(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408b72)
  store %struct.Memory* %call_408b72, %struct.Memory** %MEMORY

  ; Code: xorb $0xff, %sil	 RIP: 408b76	 Bytes: 4
  %loadMem_408b76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408b76 = call %struct.Memory* @routine_xorb__0xff___sil(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408b76)
  store %struct.Memory* %call_408b76, %struct.Memory** %MEMORY

  ; Code: testb $0x1, %sil	 RIP: 408b7a	 Bytes: 4
  %loadMem_408b7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408b7a = call %struct.Memory* @routine_testb__0x1___sil(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408b7a)
  store %struct.Memory* %call_408b7a, %struct.Memory** %MEMORY

  ; Code: jne .L_4084b2	 RIP: 408b7e	 Bytes: 6
  %loadMem_408b7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408b7e = call %struct.Memory* @routine_jne_.L_4084b2(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408b7e, i8* %BRANCH_TAKEN, i64 -1740, i64 6, i64 6)
  store %struct.Memory* %call_408b7e, %struct.Memory** %MEMORY

  %loadBr_408b7e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_408b7e = icmp eq i8 %loadBr_408b7e, 1
  br i1 %cmpBr_408b7e, label %block_.L_4084b2, label %block_408b84

block_408b84:
  ; Code: popq %rbp	 RIP: 408b84	 Bytes: 1
  %loadMem_408b84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408b84 = call %struct.Memory* @routine_popq__rbp(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408b84)
  store %struct.Memory* %call_408b84, %struct.Memory** %MEMORY

  ; Code: retq	 RIP: 408b85	 Bytes: 1
  %loadMem_408b85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %call_408b85 = call %struct.Memory* @routine_retq(%struct.State* %0, i64  0, %struct.Memory* %loadMem_408b85)
  store %struct.Memory* %call_408b85, %struct.Memory** %MEMORY

  ret %struct.Memory* %call_408b85
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  store i64 %3, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 ptrtoint( %G__0xa7f430_type* @G__0xa7f430 to i64))
  ret %struct.Memory* %11
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = sext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
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

define %struct.Memory* @routine_imulq__0x2e8___rdx___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %9, i64 744)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movq__rax___rsi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %15 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnImEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %12)
  ret %struct.Memory* %15
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

define %struct.Memory* @routine_subl___rsi____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = load i64, i64* %RSI
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2MnIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__ecx__MINUS0xc__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 12
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i32*
  %6 = load i32, i32* %5
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl_0x99da04___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G_0x99da04_type* @G_0x99da04 to i64))
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


define %struct.Memory* @routine_movl__ecx__0x99da04(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x99da04_type* @G_0x99da04 to i64), i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl_0x99da08___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 ptrtoint( %G_0x99da08_type* @G_0x99da08 to i64))
  ret %struct.Memory* %11
}




define %struct.Memory* @routine_movl__ecx__0x99da08(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 ptrtoint( %G_0x99da08_type* @G_0x99da08 to i64), i64 %10)
  ret %struct.Memory* %13
}






define %struct.Memory* @routine_addq__rdx___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %12, i64 %13)
  ret %struct.Memory* %16
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


define %struct.Memory* @routine_movl__ecx__MINUS0x8__rbp_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 8
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVZXI3RnWImE2MnIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #0 {
  %5 = inttoptr i64 %3 to i8*
  %6 = load i8, i8* %5
  %7 = zext i8 %6 to i64
  store i64 %7, i64* %2, align 8
  ret %struct.Memory* %0
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

define %struct.Memory* @routine_jne_.L_408584(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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








define %struct.Memory* @routine_movl_0xaaadb0___rcx_4____eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 11185584
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %14)
  ret %struct.Memory* %17
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

define %struct.Memory* @routine_cmpl_0x99da04___eax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 ptrtoint( %G_0x99da04_type* @G_0x99da04 to i64))
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

define %struct.Memory* @routine_je_.L_408584(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i64) #2 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %1, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2, i64* %4, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_jmpq_.L_4084ee(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}




define %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_imulq__0x2e8___rcx___rcx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4IMULI3RnWImE2RnImE2InImEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %9, i64 744)
  ret %struct.Memory* %12
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

define %struct.Memory* @routine_cmpl__0x14__0xc__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 12
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2MnIjE2InIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 20)
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

define %struct.Memory* @routine_jge_.L_408547(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




define %struct.Memory* @routine_movl_MINUS0x8__rbp____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 8
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
















define %struct.Memory* @routine_movslq_0xc__rax____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = add i64 %9, 12
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %10)
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_movl__ecx__0x10__rsi__rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 9
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RSI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RSI
  %16 = load i64, i64* %RAX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, 16
  %19 = add i64 %18, %17
  %20 = load i32, i32* %ECX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 4
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %21)
  ret %struct.Memory* %24
}










define %struct.Memory* @routine_movl_0xc__rax____edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
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


define %struct.Memory* @routine_movl__edx__0xc__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 12
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movl_0x99da04___edx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %11 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 ptrtoint( %G_0x99da04_type* @G_0x99da04 to i64))
  ret %struct.Memory* %11
}


define %struct.Memory* @routine_movl_MINUS0x8__rbp____esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = sub i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_addl__0x14___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 20)
  ret %struct.Memory* %12
}


define %struct.Memory* @routine_movslq__esi___rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__edx__0xaaadb0___rax_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 11185584
  %15 = load i32, i32* %EDX
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 7
  store i64 %18, i64* %PC
  %19 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %14, i64 %16)
  ret %struct.Memory* %19
}


define %struct.Memory* @routine_jmpq_.L_408657(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
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


define %struct.Memory* @routine_jne_.L_408652(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_movslq_0xaab3f0___rdx_4____rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = mul i64 %9, 4
  %11 = add i64 %10, 11187184
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 8
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %11)
  ret %struct.Memory* %14
}






define %struct.Memory* @routine_movl_0x2e4__rax____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = add i64 %12, 740
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_cmpl_0x99da08___ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3CMPI2RnIjE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %10, i64 ptrtoint( %G_0x99da08_type* @G_0x99da08 to i64))
  ret %struct.Memory* %13
}


define %struct.Memory* @routine_je_.L_408652(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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










define %struct.Memory* @routine_movl_0xaab3f0___rdx_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 11187184
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %14)
  ret %struct.Memory* %17
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


define %struct.Memory* @routine_addq__rdx___rdi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDI
  %13 = load i64, i64* %RDX
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnImES4_EEP6MemoryS6_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RDI, i64 %12, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_0x60__rdi____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = bitcast i32* %R8D to i64*
  %13 = load i64, i64* %RDI
  %14 = add i64 %13, 96
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* readnone returned, %struct.State* nocapture readnone dereferenceable(3376), i64* nocapture, i64) #2 {
  %5 = and i64 %3, 4294967295
  store i64 %5, i64* %2, align 8
  ret %struct.Memory* %0
}

define %struct.Memory* @routine_movl__r8d___r9d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9D = bitcast %union.anon* %11 to i32*
  %12 = bitcast i32* %R9D to i64*
  %13 = load i32, i32* %R8D
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_addl__0x1___r9d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 19
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R9D = bitcast %union.anon* %8 to i32*
  %9 = bitcast i32* %R9D to i64*
  %10 = load i32, i32* %R9D
  %11 = zext i32 %10 to i64
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %9, i64 %11, i64 1)
  ret %struct.Memory* %14
}


define %struct.Memory* @routine_movl__r9d__0x60__rdi_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %RDI
  %13 = add i64 %12, 96
  %14 = load i32, i32* %R9D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
  ret %struct.Memory* %18
}


define %struct.Memory* @routine_movslq__r8d___rdx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %R8D
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2RnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RDX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl__ecx__0x64__rsi__rdx_4_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 9
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RSI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RSI
  %16 = load i64, i64* %RDX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, 100
  %19 = add i64 %18, %17
  %20 = load i32, i32* %ECX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 4
  store i64 %23, i64* %PC
  %24 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %19, i64 %21)
  ret %struct.Memory* %24
}




define %struct.Memory* @routine_movl_MINUS0x8__rbp____r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %14 = sub i64 %13, 8
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %12, i64 %14)
  ret %struct.Memory* %17
}


define %struct.Memory* @routine_addl__0x14___r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %9, i64 %11, i64 20)
  ret %struct.Memory* %14
}










define %struct.Memory* @routine_movl__ecx__0x2e4__rax_(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %13 = add i64 %12, 740
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3MnWIjE2RnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %13, i64 %15)
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








define %struct.Memory* @routine_jne_.L_408729(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_je_.L_408729(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_408693(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}












define %struct.Memory* @routine_jge_.L_4086ec(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






































define %struct.Memory* @routine_subl__0x1___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 1)
  ret %struct.Memory* %12
}






define %struct.Memory* @routine_jmpq_.L_4087fc(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}












define %struct.Memory* @routine_jne_.L_4087f7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




















define %struct.Memory* @routine_je_.L_4087f7(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












































define %struct.Memory* @routine_subl__0x1___r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %9, i64 %11, i64 1)
  ret %struct.Memory* %14
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








define %struct.Memory* @routine_jne_.L_4088ce(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_je_.L_4088ce(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_408838(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}












define %struct.Memory* @routine_jge_.L_408891(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






































define %struct.Memory* @routine_subl__0x14___esi(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %RSI, i64 %9, i64 20)
  ret %struct.Memory* %12
}






define %struct.Memory* @routine_jmpq_.L_4089a1(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}












define %struct.Memory* @routine_jne_.L_40899c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




















define %struct.Memory* @routine_je_.L_40899c(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












































define %struct.Memory* @routine_subl__0x14___r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3SUBI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %9, i64 %11, i64 20)
  ret %struct.Memory* %14
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








define %struct.Memory* @routine_jne_.L_408a73(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












define %struct.Memory* @routine_je_.L_408a73(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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


define %struct.Memory* @routine_jmpq_.L_4089dd(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}












define %struct.Memory* @routine_jge_.L_408a36(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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






define %struct.Memory* @routine_jmpq_.L_408b46(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, %rel_off1
  %8 = load i64, i64* %PC
  %9 = add i64 %8, %rel_off2
  store i64 %9, i64* %PC
  %10 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3JMPI2InImEEEP6MemoryS4_R5StateT_(%struct.Memory* %2, %struct.State* %0, i64 %7)
  ret %struct.Memory* %10
}












define %struct.Memory* @routine_jne_.L_408b41(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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




















define %struct.Memory* @routine_je_.L_408b41(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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












































define %struct.Memory* @routine_addl__0x1___r8d(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3ADDI3RnWImE2RnIjE2InIjEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i64* %9, i64 %11, i64 1)
  ret %struct.Memory* %14
}














define %struct.Memory* @routine_movslq_MINUS0x8__rbp____rax(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %16 = call %struct.Memory* @_ZN12_GLOBAL__N_1L5MOVSXI3RnWImE2MnIjElEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RAX, i64 %13)
  ret %struct.Memory* %16
}


define %struct.Memory* @routine_movl_0xaaba30___rax_4____ecx(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
block_400488:
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 11188784
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3MOVI3RnWImE2MnIjEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64* %RCX, i64 %14)
  ret %struct.Memory* %17
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

define internal %struct.Memory* @_ZN12_GLOBAL__N_1L3XORI3RnWIhE2RnIhE2InIhEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* readnone returned, %struct.State* nocapture dereferenceable(3376), i8* nocapture, i64, i64) #0 {
  %6 = xor i64 %4, %3
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

define %struct.Memory* @routine_xorb__0xff___sil(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = load i8, i8* %SIL
  %11 = zext i8 %10 to i64
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L3XORI3RnWIhE2RnIhE2InIhEEEP6MemoryS8_R5StateT_T0_T1_(%struct.Memory* %2, %struct.State* %0, i8* %SIL, i64 %11, i64 255)
  ret %struct.Memory* %14
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

define %struct.Memory* @routine_testb__0x1___sil(%struct.State*  dereferenceable(3376), i64, %struct.Memory* ) #19 {
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
  %10 = load i8, i8* %SIL
  %11 = zext i8 %10 to i64
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = call %struct.Memory* @_ZN12_GLOBAL__N_1L4TESTI2RnIhE2InIhEEEP6MemoryS6_R5StateT_T0_(%struct.Memory* %2, %struct.State* %0, i64 %11, i64 1)
  ret %struct.Memory* %14
}


define %struct.Memory* @routine_jne_.L_4084b2(%struct.State*  dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
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

